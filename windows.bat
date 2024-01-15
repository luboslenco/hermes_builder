git clone https://github.com/facebook/hermes -b static_h
cd hermes
git checkout 5713c8a
cd ..

cmake -S hermes -B build -G "Visual Studio 17 2022" -T ClangCL -A x64 -DCMAKE_BUILD_TYPE=Release -DHERMES_UNICODE_LITE=1 -DHERMES_ENABLE_TEST_SUITE=0
cmake --build ./build --config Release
