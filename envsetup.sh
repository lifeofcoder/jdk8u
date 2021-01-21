#!/usr/bin/env bash

NEW_INCLUDE=/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/include/c++/v1
export CFLAGS="-I$NEW_INCLUDE"
export CXXFLAGS="-I$NEW_INCLUDE"
 
NEW_LIB=/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/lib
export LDFLAGS="-L${NEW_LIB}" 
export LIBRARY_PATH=$NEW_LIB:$LIBRARY_PATH


##############变量，必须执行#############
export LANG=C
export CC=clang #mac平台，c编译器不再是GCC,而是clang
 
export COMPILER_WARNINGS_FATAL=false #跳过clang一些严格的语法检查
 
#允许自动下载依赖
export ALLOW_DOWNLOADS=true
export LFLAGS='-Xlinker -lc++ -lstdc++'
 
#并行编译的线程数，设置为和cpu内核数量一致即可
export HOTSPOT_BUILD_JOBS=4
export ALT_PARALLEL_COMPILE_JOBS=4
export SKIP_COMPARE_IMAGES=true
export USE_PRECOMPILED_HEADER=true
#要编译的内容
export BUILD_LANGTOOLS=true
#export BUILD_JAXP=false
#export BUILD_JAXWS=false
#export BUILD_CORBA=false
export BUILD_HOTSPOT=true
export BUILD_JDK=true
 
BUILD_DEPLOY=false
 
BUILD_INSTALL=false
 
unset JAVA_HOME
unset CLASSPATH
