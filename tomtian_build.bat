@echo off

set "cmake_path=E:\window_project_acc\cmake-3.24.0-rc1-windows-x86_64\bin"
set "ninjia_path=E:\window_project_acc"
set "python_path=E:\window_project_acc\python-3.10.5-embed-amd64"
set "project_path=E:\source\include-what-you-use"
set PATH=%project_path%;%cmake_path%;%ninjia_path%;%python_path%;%PATH%


set "old_dir=%cd%"
rem 全量编译
set "cur_dir=%cd%"
rd /S /Q %cur_dir%\build 
mkdir %cur_dir%\build
cd %cur_dir%\build

cmake -G "Ninja" -DLLVM_DIR=E:/window_project_acc/llvm-project-llvmorg-14.0.5/build/lib/cmake/llvm -DClang_DIR=E:/window_project_acc/llvm-project-llvmorg-14.0.5/build/lib/cmake/clang -DCMAKE_BUILD_TYPE=Release ../

ninja

cd /d %old_dir%