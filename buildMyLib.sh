cd mylib
#clean
rm libmylib.a
rm -rf build
mkdir build
#build
emcc -c mylib.c -o build/mylib.o
emar rcs libmylib.a build/mylib.o
#report size to generate meta data for build report
emsize libmylib.a
