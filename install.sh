dir=..

# Build Catch2
rm $dir/Catch2 -rf
git clone https://github.com/catchorg/Catch2 $dir/Catch2

rm $dir/build-Catch2 -rf
cmake -S $dir/Catch2 -B $dir/build-Catch2 \
  -DCMAKE_INSTALL_PREFIX=$dir/build-Catch2/install/
cmake --build $dir/build-Catch2 -j8 --target install

CMAKE_PREFIX_PATH=$CMAKE_PREFIX_PATH:$dir/build-Catch2/install

# Build Class
rm $dir/build-class -rf
cmake . -B $dir/build-class \
  -DCMAKE_BUILD_TYPE=Debug
cmake --build $dir/build-class -j8

# Run Tests
cd $dir/build-class
ctest