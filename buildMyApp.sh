cd myapp
#clean
rm myapp
rm -rf build
mkdir build
#build
emcc -c myapp.c -o build/myapp.o -I../mylib
emcc build/myapp.o -L../mylib -lmylib -o myapp
#report size to generate meta data for build report
emsize myapp
