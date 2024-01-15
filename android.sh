git clone https://github.com/facebook/hermes -b static_h
cd hermes
git checkout 5713c8a
cd ..

cmake -S hermes -B build -G Ninja -DCMAKE_BUILD_TYPE=Release -DHERMES_ENABLE_TEST_SUITE=0
cmake --build ./build

cd hermes/android
./gradlew githubRelease
