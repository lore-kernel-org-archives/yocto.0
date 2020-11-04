Subject: Cmake CROSS COMPILE problem [PLEASE HELP, URGENT] #yocto #toolchain #sdk
To: yocto@lists.yoctoproject.org
From: "Bel Hadj Salem Talel" <bhstalel@gmail.com>
X-Originating-Location: TN (197.27.106.84)
X-Originating-Platform: Linux Firefox 82
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 04 Nov 2020 09:03:35 -0800
Message-ID: <35SW.1604509415488140085.romI@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="kKJIOMaTRFgqTimCrYDt"

--kKJIOMaTRFgqTimCrYDt
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi All,

I'm in serious task here and I need to cross compile a Cmake project.
I need to send an SDK to a client with steps to cross compile the project.
This project is compiling successfully via a Yocto recipe that inherits cm=
ake.
I extracted an SDK from the main image adding TOOLCHAIN_HOST_TASK_append=
=3D" nativesdk-cmake" to add the Toolchain cmake file which is located und=
er: /home/talel/Documents/sensesdk/sysroots/x86_64-pokysdk-linux/usr/share/=
cmake/OEToolchainConfig.cmake :
Here is its content:

*set( CMAKE_SYSTEM_NAME Linux )*
*set( CMAKE_C_FLAGS $ENV{CFLAGS} CACHE STRING "" FORCE )*
*set( CMAKE_CXX_FLAGS $ENV{CXXFLAGS}=C2=A0 CACHE STRING "" FORCE )*
*set( CMAKE_ASM_FLAGS ${CMAKE_C_FLAGS} CACHE STRING "" FORCE )*
*set( CMAKE_LDFLAGS_FLAGS ${CMAKE_CXX_FLAGS} CACHE STRING "" FORCE )*
*set( CMAKE_SYSROOT $ENV{OECORE_TARGET_SYSROOT} )*
*set( CMAKE_FIND_ROOT_PATH $ENV{OECORE_TARGET_SYSROOT} )*
*set( CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER )*
*set( CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY )*
*set( CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY )*
*set( CMAKE_FIND_ROOT_PATH_MODE_PACKAGE ONLY )*
*set(CMAKE_FIND_LIBRARY_CUSTOM_LIB_SUFFIX "$ENV{OE_CMAKE_FIND_LIBRARY_CUST=
OM_LIB_SUFFIX}")*
*# Set CMAKE_SYSTEM_PROCESSOR from the sysroot name (assuming processor-di=
stro-os).*
*if ($ENV{SDKTARGETSYSROOT} MATCHES "/sysroots/([a-zA-Z0-9_-]+)-.+-.+")*
*set(CMAKE_SYSTEM_PROCESSOR ${CMAKE_MATCH_1})*
*endif()*
*# Include the toolchain configuration subscripts*
*file( GLOB toolchain_config_files "${CMAKE_TOOLCHAIN_FILE}.d/*.cmake" )*
*foreach(config ${toolchain_config_files})*
*include(${config})*
*endforeach()*

The project is working with gRPC and Protobuf. There is a .cmake files tha=
t are responsible for searching for gRPC and Protobuf libs

Here is what I tried after sourcing the SDK environment:
1) A simple "cmake .." with no options:

*Setting build type to 'RelWithDebInfo' as none was specified.*
*-- Toolchain file defaulted to '/home/talel/Documents/sensesdk/sysroots/x=
86_64-pokysdk-linux/usr/share/cmake/OEToolchainConfig.cmake'*
*-- The C compiler identification is GNU 7.3.0*
*-- The CXX compiler identification is GNU 7.3.0*
*-- Check for working C compiler: /home/talel/Documents/sensesdk/sysroots/=
x86_64-pokysdk-linux/usr/bin/aarch64-poky-linux/aarch64-poky-linux-gcc*
*-- Check for working C compiler: /home/talel/Documents/sensesdk/sysroots/=
x86_64-pokysdk-linux/usr/bin/aarch64-poky-linux/aarch64-poky-linux-gcc -- w=
orks*
*-- Detecting C compiler ABI info*
*-- Detecting C compiler ABI info - done*
*-- Detecting C compile features*
*-- Detecting C compile features - done*
*-- Check for working CXX compiler: /home/talel/Documents/sensesdk/sysroot=
s/x86_64-pokysdk-linux/usr/bin/aarch64-poky-linux/aarch64-poky-linux-g++*
*-- Check for working CXX compiler: /home/talel/Documents/sensesdk/sysroot=
s/x86_64-pokysdk-linux/usr/bin/aarch64-poky-linux/aarch64-poky-linux-g++ --=
 works*
*-- Detecting CXX compiler ABI info*
*-- Detecting CXX compiler ABI info - done*
*-- Detecting CXX compile features*
*-- Detecting CXX compile features - done*
*CMake Warning at /home/talel/Documents/sensesdk/sysroots/x86_64-pokysdk-l=
inux/usr/share/cmake-3.16/Modules/FindProtobuf.cmake:499 (message):*
*Protobuf compiler version 3.12.3 doesn't match library version 3.11.4*
*Call Stack (most recent call first):*
*CMakeLists.txt:23 (find_package)*
*-- Found Protobuf: /home/talel/Documents/sensesdk/sysroots/aarch64-poky-l=
inux/usr/lib/libprotobuf.so;-lpthread (found version "3.11.4")*
*-- Could NOT find gRPC (missing: GRPC_CPP_PLUGIN)*
*-- Configuring done*
*-- Generating done*
*-- Build files have been written to: /home/talel/Desktop/sense_software_2=
/build*

protobuf is found, but not gRPC, now when I make:
*make[2]: *** No rule to make target 'GRPC_CPP_PLUGIN-NOTFOUND', needed by=
 'protos/sense_api_settings.grpc.pb.cc'.=C2=A0 Stop.*
*CMakeFiles/Makefile2:734: recipe for target 'protos/CMakeFiles/sense_api_=
settings_grpc.dir/all' failed*
*make[1]: *** [protos/CMakeFiles/sense_api_settings_grpc.dir/all] Error 2*
*Makefile:129: recipe for target 'all' failed*
*make: *** [all] Error 2

* I searched for a solution and I added the *-DCMAKE_PREFIX_PATH=3D/home/t=
alel/Documents/sensesdk/sysroots/aarch64-poky-linux/usr* option to my SDK r=
ootfs
Here is the result of cmake..:

*-- Check for working C compiler: /home/talel/Documents/sensesdk/sysroots/=
x86_64-pokysdk-linux/usr/bin/aarch64-poky-linux/aarch64-poky-linux-gcc -- b=
roken*
*CMake Error at /home/talel/Documents/sensesdk/sysroots/x86_64-pokysdk-lin=
ux/usr/share/cmake-3.16/Modules/CMakeTestCCompiler.cmake:60 (message):*
*The C compiler*
*"/home/talel/Documents/sensesdk/sysroots/x86_64-pokysdk-linux/usr/bin/aar=
ch64-poky-linux/aarch64-poky-linux-gcc"*
*is not able to compile a simple test program.*
*It fails with the following output:*
*Change Dir: /home/talel/Desktop/sense_software_2/build/CMakeFiles/CMakeTm=
p*
*Run Build Command(s):/home/talel/Documents/sensesdk/sysroots/aarch64-poky=
-linux/usr/bin/make cmTC_2a27c/fast && /home/talel/Documents/sensesdk/sysro=
ots/aarch64-poky-linux/usr/bin/make: 1: /home/talel/Documents/sensesdk/sysr=
oots/aarch64-poky-linux/usr/bin/make: Syntax error: word unexpected (expect=
ing ")")*

I tried to add C and CXX options : *-DCMAKE_C_COMPILER_WORKS=3D1 -DCMAKE_C=
XX_COMPILER_WORKS=3D1* :
Now it shows this:

*/home/talel/Documents/sensesdk/sysroots/aarch64-poky-linux/usr/bin/protoc=
: 1: /home/talel/Documents/sensesdk/sysroots/aarch64-poky-linux/usr/bin/pro=
toc: ELF=02=01=01=02=EF=BF=BD=01=14=12@2@8: not found*
*/home/talel/Documents/sensesdk/sysroots/aarch64-poky-linux/usr/bin/protoc=
: 2: /home/talel/Documents/sensesdk/sysroots/aarch64-poky-linux/usr/bin/pro=
toc: Syntax error: ")" unexpected*
*CMake Warning at /home/talel/Documents/sensesdk/sysroots/x86_64-pokysdk-l=
inux/usr/share/cmake-3.16/Modules/FindProtobuf.cmake:499 (message):*
*Protobuf compiler version doesn't match library version 3.11.4*

and now when I make same error ; syntax error in protobuf

Here is the main CMakeLists:
cmake_minimum_required (VERSION 3.5)

set (ex_ver "01" )

# Set a default build type if none was specified
if ( NOT CMAKE_BUILD_TYPE AND NOT CMAKE_CONFIGURATION_TYPES)
message ( "Setting build type to 'RelWithDebInfo' as none was specified." =
)
set (CMAKE_BUILD_TYPE RelWithDebInfo CACHE STRING "Choose the type of buil=
d." FORCE)
# Set the possible values of build type for cmake-gui
set_property ( CACHE CMAKE_BUILD_TYPE PROPERTY STRINGS "Debug" "Release"
"MinSizeRel" "RelWithDebInfo" )
endif ()

project (ex VERSION ${ ex_ver })

# set the C++ standard to C++ 11
set (CMAKE_CXX_STANDARD 11)

list (APPEND CMAKE_MODULE_PATH ${PROJECT_SOURCE_DIR}/cmake)

include (CompileProtos)
set (protobuf_MODULE_COMPATIBLE TRUE )
find_package (Protobuf REQUIRED)
#find_package(gRPC REQUIRED)

set (_PROTOBUF_LIBPROTOBUF protobuf::libprotobuf)
if (CMAKE_CROSSCOMPILING)
find_program (_PROTOBUF_PROTOC protoc)
find_program (_gRPC_CPP_PLUGIN grpc_cpp_plugin)
else ()
set (_PROTOBUF_PROTOC $<TARGET_FILE:protobuf::protoc>)
endif ()
#message(STATUS "Using protobuf ${protobuf_VERSION}")

# Find gRPC installation
# Looks for gRPCConfig.cmake file installed by gRPC's cmake installation.
find_package (GRPC REQUIRED)

set (_GRPC_GRPCPP_REFLECTION gRPC::grpc++_reflection)
if (CMAKE_CROSSCOMPILING)
find_program (_GRPC_CPP_PLUGIN_EXECUTABLE grpc_cpp_plugin)
else ()
set (_GRPC_CPP_PLUGIN_EXECUTABLE $<TARGET_FILE:gRPC::grpc_cpp_plugin>)
endif ()

# uncomment for PC
#find_package(fmt REQUIRED)
#add_compile_definitions(SPDLOG_FMT_EXTERNAL)

#Add sub-directories
add_subdirectory (protos)
add_subdirectory (systemd)
add_subdirectory (certs)
add_subdirectory (services)
add_subdirectory (lib)
add_subdirectory (tools)
add_subdirectory (core)

Help me please on this. It is really urgent, I tried a lot.
Thanks, Talel

--kKJIOMaTRFgqTimCrYDt
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi All,<br /><br />I'm in serious task here and I need to cross compile a C=
make project.<br />I need to send an SDK to a client with steps to cross co=
mpile the project.<br />This project is compiling successfully via a Yocto =
recipe that inherits cmake.<br />I extracted an SDK from the main image add=
ing TOOLCHAIN_HOST_TASK_append=3D" nativesdk-cmake" to add the Toolchain cm=
ake file which is located under: /home/talel/Documents/sensesdk/sysroots/x8=
6_64-pokysdk-linux/usr/share/cmake/OEToolchainConfig.cmake :<br />Here is i=
ts content:<br /><br /><strong>set( CMAKE_SYSTEM_NAME Linux )</strong><br /=
><strong>set( CMAKE_C_FLAGS $ENV{CFLAGS} CACHE STRING "" FORCE )</strong><b=
r /><strong>set( CMAKE_CXX_FLAGS $ENV{CXXFLAGS}&nbsp; CACHE STRING "" FORCE=
 )</strong><br /><strong>set( CMAKE_ASM_FLAGS ${CMAKE_C_FLAGS} CACHE STRING=
 "" FORCE )</strong><br /><strong>set( CMAKE_LDFLAGS_FLAGS ${CMAKE_CXX_FLAG=
S} CACHE STRING "" FORCE )</strong><br /><strong>set( CMAKE_SYSROOT $ENV{OE=
CORE_TARGET_SYSROOT} )</strong><br /><strong>set( CMAKE_FIND_ROOT_PATH $ENV=
{OECORE_TARGET_SYSROOT} )</strong><br /><strong>set( CMAKE_FIND_ROOT_PATH_M=
ODE_PROGRAM NEVER )</strong><br /><strong>set( CMAKE_FIND_ROOT_PATH_MODE_LI=
BRARY ONLY )</strong><br /><strong>set( CMAKE_FIND_ROOT_PATH_MODE_INCLUDE O=
NLY )</strong><br /><strong>set( CMAKE_FIND_ROOT_PATH_MODE_PACKAGE ONLY )</=
strong><br /><strong>set(CMAKE_FIND_LIBRARY_CUSTOM_LIB_SUFFIX "$ENV{OE_CMAK=
E_FIND_LIBRARY_CUSTOM_LIB_SUFFIX}")</strong><br /><strong># Set CMAKE_SYSTE=
M_PROCESSOR from the sysroot name (assuming processor-distro-os).</strong><=
br /><strong>if ($ENV{SDKTARGETSYSROOT} MATCHES "/sysroots/([a-zA-Z0-9_-]+)=
-.+-.+")</strong><br /><strong>&nbsp; set(CMAKE_SYSTEM_PROCESSOR ${CMAKE_MA=
TCH_1})</strong><br /><strong>endif()</strong><br /><strong># Include the t=
oolchain configuration subscripts</strong><br /><strong>file( GLOB toolchai=
n_config_files "${CMAKE_TOOLCHAIN_FILE}.d/*.cmake" )</strong><br /><strong>=
foreach(config ${toolchain_config_files})</strong><br /><strong>&nbsp;&nbsp=
;&nbsp; include(${config})</strong><br /><strong>endforeach()</strong><br /=
><br /><br />The project is working with gRPC and Protobuf. There is a .cma=
ke files that are responsible for searching for gRPC and Protobuf libs<br /=
><br />Here is what I tried after sourcing the SDK environment:<br />1) A s=
imple "cmake .." with no options:<br /><br /><strong>Setting build type to =
'RelWithDebInfo' as none was specified.</strong><br /><strong>-- Toolchain =
file defaulted to '/home/talel/Documents/sensesdk/sysroots/x86_64-pokysdk-l=
inux/usr/share/cmake/OEToolchainConfig.cmake'</strong><br /><strong>-- The =
C compiler identification is GNU 7.3.0</strong><br /><strong>-- The CXX com=
piler identification is GNU 7.3.0</strong><br /><strong>-- Check for workin=
g C compiler: /home/talel/Documents/sensesdk/sysroots/x86_64-pokysdk-linux/=
usr/bin/aarch64-poky-linux/aarch64-poky-linux-gcc</strong><br /><strong>-- =
Check for working C compiler: /home/talel/Documents/sensesdk/sysroots/x86_6=
4-pokysdk-linux/usr/bin/aarch64-poky-linux/aarch64-poky-linux-gcc -- works<=
/strong><br /><strong>-- Detecting C compiler ABI info</strong><br /><stron=
g>-- Detecting C compiler ABI info - done</strong><br /><strong>-- Detectin=
g C compile features</strong><br /><strong>-- Detecting C compile features =
- done</strong><br /><strong>-- Check for working CXX compiler: /home/talel=
/Documents/sensesdk/sysroots/x86_64-pokysdk-linux/usr/bin/aarch64-poky-linu=
x/aarch64-poky-linux-g++</strong><br /><strong>-- Check for working CXX com=
piler: /home/talel/Documents/sensesdk/sysroots/x86_64-pokysdk-linux/usr/bin=
/aarch64-poky-linux/aarch64-poky-linux-g++ -- works</strong><br /><strong>-=
- Detecting CXX compiler ABI info</strong><br /><strong>-- Detecting CXX co=
mpiler ABI info - done</strong><br /><strong>-- Detecting CXX compile featu=
res</strong><br /><strong>-- Detecting CXX compile features - done</strong>=
<br /><strong>CMake Warning at /home/talel/Documents/sensesdk/sysroots/x86_=
64-pokysdk-linux/usr/share/cmake-3.16/Modules/FindProtobuf.cmake:499 (messa=
ge):</strong><br /><strong>&nbsp; Protobuf compiler version 3.12.3 doesn't =
match library version 3.11.4</strong><br /><strong>Call Stack (most recent =
call first):</strong><br /><strong>&nbsp; CMakeLists.txt:23 (find_package)<=
/strong><br /><strong>-- Found Protobuf: /home/talel/Documents/sensesdk/sys=
roots/aarch64-poky-linux/usr/lib/libprotobuf.so;-lpthread (found version "3=
.11.4") </strong><br /><strong>-- Could NOT find gRPC (missing: GRPC_CPP_PL=
UGIN) </strong><br /><strong>-- Configuring done</strong><br /><strong>-- G=
enerating done</strong><br /><strong>-- Build files have been written to: /=
home/talel/Desktop/sense_software_2/build</strong><br /><br />protobuf is f=
ound, but not gRPC, now when I make: <br /><strong>make[2]: *** No rule to =
make target 'GRPC_CPP_PLUGIN-NOTFOUND', needed by 'protos/sense_api_setting=
s.grpc.pb.cc'.&nbsp; Stop.</strong><br /><strong>CMakeFiles/Makefile2:734: =
recipe for target 'protos/CMakeFiles/sense_api_settings_grpc.dir/all' faile=
d</strong><br /><strong>make[1]: *** [protos/CMakeFiles/sense_api_settings_=
grpc.dir/all] Error 2</strong><br /><strong>Makefile:129: recipe for target=
 'all' failed</strong><br /><strong>make: *** [all] Error 2<br /><br /></st=
rong>I searched for a solution and I added the<strong> -DCMAKE_PREFIX_PATH=
=3D/home/talel/Documents/sensesdk/sysroots/aarch64-poky-linux/usr</strong>=
 option to my SDK rootfs<br />Here is the result of cmake..:<br /><br /><st=
rong>-- Check for working C compiler: /home/talel/Documents/sensesdk/sysroo=
ts/x86_64-pokysdk-linux/usr/bin/aarch64-poky-linux/aarch64-poky-linux-gcc -=
- broken</strong><br /><strong>CMake Error at /home/talel/Documents/sensesd=
k/sysroots/x86_64-pokysdk-linux/usr/share/cmake-3.16/Modules/CMakeTestCComp=
iler.cmake:60 (message):</strong><br /><strong>&nbsp; The C compiler</stron=
g><br /><strong>&nbsp;&nbsp;&nbsp; "/home/talel/Documents/sensesdk/sysroots=
/x86_64-pokysdk-linux/usr/bin/aarch64-poky-linux/aarch64-poky-linux-gcc"</s=
trong><br /><strong>&nbsp; is not able to compile a simple test program.</s=
trong><br /><strong>&nbsp; It fails with the following output:</strong><br =
/><strong>&nbsp;&nbsp;&nbsp; Change Dir: /home/talel/Desktop/sense_software=
_2/build/CMakeFiles/CMakeTmp</strong><br /><strong>&nbsp;&nbsp;&nbsp; Run B=
uild Command(s):/home/talel/Documents/sensesdk/sysroots/aarch64-poky-linux/=
usr/bin/make cmTC_2a27c/fast &amp;&amp; /home/talel/Documents/sensesdk/sysr=
oots/aarch64-poky-linux/usr/bin/make: 1: /home/talel/Documents/sensesdk/sys=
roots/aarch64-poky-linux/usr/bin/make: Syntax error: word unexpected (expec=
ting ")")</strong><br /><br />I tried to add C and CXX options : <strong>-D=
CMAKE_C_COMPILER_WORKS=3D1 -DCMAKE_CXX_COMPILER_WORKS=3D1</strong>:<br />No=
w it shows this:<br /><br /><strong>/home/talel/Documents/sensesdk/sysroots=
/aarch64-poky-linux/usr/bin/protoc: 1: /home/talel/Documents/sensesdk/sysro=
ots/aarch64-poky-linux/usr/bin/protoc: ELF=02=01=01=02=EF=BF=BD=01=14=12@2@=
8: not found</strong><br /><strong>/home/talel/Documents/sensesdk/sysroots/=
aarch64-poky-linux/usr/bin/protoc: 2: /home/talel/Documents/sensesdk/sysroo=
ts/aarch64-poky-linux/usr/bin/protoc: Syntax error: ")" unexpected</strong>=
<br /><strong>CMake Warning at /home/talel/Documents/sensesdk/sysroots/x86_=
64-pokysdk-linux/usr/share/cmake-3.16/Modules/FindProtobuf.cmake:499 (messa=
ge):</strong><br /><strong>&nbsp; Protobuf compiler version doesn't match l=
ibrary version 3.11.4</strong><br /><br />and now when I make same error ; =
syntax error in protobuf<br /><br />Here is the main CMakeLists:<br />
<div style=3D"color: #eeffff; background-color: #263238; font-family: ''Ca=
scadia Code','Fantasque Sans Mono','Droid Sans Mono', 'monospace', monospac=
e, 'Droid Sans Fallback'', 'Droid Sans Mono', 'monospace', monospace, 'Droi=
d Sans Fallback'; font-weight: normal; font-size: 20px; line-height: 27px; =
white-space: pre;">
<div><span style=3D"color: #c792ea;">cmake_minimum_required</span><span st=
yle=3D"color: #eeffff;"> (VERSION 3.5)</span></div>
<br />
<div><span style=3D"color: #c792ea;">set</span><span style=3D"color: #eeff=
ff;">(ex_ver </span><span style=3D"color: #c3e88d;">"01"</span><span style=
=3D"color: #eeffff;">)</span></div>
<br />
<div><span style=3D"color: #546e7a; font-style: italic;"># Set a default b=
uild type if none was specified</span></div>
<div><span style=3D"color: #c792ea;">if</span><span style=3D"color: #eefff=
f;">(</span><span style=3D"color: #c792ea;">NOT</span><span style=3D"color:=
 #eeffff;"> CMAKE_BUILD_TYPE </span><span style=3D"color: #c792ea;">AND</sp=
an><span style=3D"color: #eeffff;"> </span><span style=3D"color: #c792ea;">=
NOT</span><span style=3D"color: #eeffff;"> CMAKE_CONFIGURATION_TYPES)</span=
></div>
<div><span style=3D"color: #c792ea;"> message</span><span style=3D"color: =
#eeffff;">(</span><span style=3D"color: #c3e88d;">"Setting build type to 'R=
elWithDebInfo' as none was specified."</span><span style=3D"color: #eeffff;=
">)</span></div>
<div><span style=3D"color: #c792ea;"> set</span><span style=3D"color: #eef=
fff;">(CMAKE_BUILD_TYPE RelWithDebInfo </span><span style=3D"color: #c792ea=
;">CACHE</span><span style=3D"color: #eeffff;"> </span><span style=3D"color=
: #c792ea;">STRING</span><span style=3D"color: #eeffff;"> </span><span styl=
e=3D"color: #c3e88d;">"Choose the type of build."</span><span style=3D"colo=
r: #eeffff;"> FORCE)</span></div>
<div><span style=3D"color: #eeffff;"> </span><span style=3D"color: #546e7a=
; font-style: italic;"># Set the possible values of build type for cmake-gu=
i</span></div>
<div><span style=3D"color: #c792ea;"> set_property</span><span style=3D"co=
lor: #eeffff;">(</span><span style=3D"color: #c792ea;">CACHE</span><span st=
yle=3D"color: #eeffff;"> CMAKE_BUILD_TYPE PROPERTY STRINGS </span><span sty=
le=3D"color: #c3e88d;">"Debug"</span><span style=3D"color: #eeffff;"> </spa=
n><span style=3D"color: #c3e88d;">"Release"</span></div>
<div><span style=3D"color: #eeffff;"> </span><span style=3D"color: #c3e88d=
;">"MinSizeRel"</span><span style=3D"color: #eeffff;"> </span><span style=
=3D"color: #c3e88d;">"RelWithDebInfo"</span><span style=3D"color: #eeffff;=
">)</span></div>
<div><span style=3D"color: #c792ea;">endif</span><span style=3D"color: #ee=
ffff;">()</span></div>
<br />
<div><span style=3D"color: #c792ea;">project</span><span style=3D"color: #=
eeffff;">(ex VERSION ${</span><span style=3D"color: #eeffff;"><span style=
=3D"color: #eeffff;">ex_ver</span>})</span></div>
<br />
<div><span style=3D"color: #546e7a; font-style: italic;"># set the C++ sta=
ndard to C++ 11</span></div>
<div><span style=3D"color: #c792ea;">set</span><span style=3D"color: #eeff=
ff;">(CMAKE_CXX_STANDARD 11)</span></div>
<br />
<div><span style=3D"color: #c792ea;">list</span><span style=3D"color: #eef=
fff;">(APPEND CMAKE_MODULE_PATH ${PROJECT_SOURCE_DIR}/cmake)</span></div>
<br />
<div><span style=3D"color: #c792ea;">include</span><span style=3D"color: #=
eeffff;">(CompileProtos)</span></div>
<div><span style=3D"color: #c792ea;">set</span><span style=3D"color: #eeff=
ff;">(protobuf_MODULE_COMPATIBLE </span><span style=3D"color: #c792ea;">TRU=
E</span><span style=3D"color: #eeffff;">)</span></div>
<div><span style=3D"color: #c792ea;">find_package</span><span style=3D"col=
or: #eeffff;">(Protobuf REQUIRED)</span></div>
<div><span style=3D"color: #546e7a; font-style: italic;">#find_package(gRP=
C REQUIRED)</span></div>
<br />
<div><span style=3D"color: #c792ea;"> set</span><span style=3D"color: #eef=
fff;">(_PROTOBUF_LIBPROTOBUF protobuf::libprotobuf)</span></div>
<div><span style=3D"color: #c792ea;">if</span><span style=3D"color: #eefff=
f;">(CMAKE_CROSSCOMPILING)</span></div>
<div><span style=3D"color: #c792ea;"> find_program</span><span style=3D"co=
lor: #eeffff;">(_PROTOBUF_PROTOC protoc)</span></div>
<div><span style=3D"color: #c792ea;"> find_program</span><span style=3D"co=
lor: #eeffff;">(_gRPC_CPP_PLUGIN grpc_cpp_plugin)</span></div>
<div><span style=3D"color: #c792ea;">else</span><span style=3D"color: #eef=
fff;">()</span></div>
<div><span style=3D"color: #c792ea;"> set</span><span style=3D"color: #eef=
fff;">(_PROTOBUF_PROTOC $&lt;TARGET_FILE:protobuf::protoc&gt;)</span></div>
<div><span style=3D"color: #c792ea;">endif</span><span style=3D"color: #ee=
ffff;">()</span></div>
<div><span style=3D"color: #546e7a; font-style: italic;">#message(STATUS "=
Using protobuf ${protobuf_VERSION}")</span></div>
<br />
<div><span style=3D"color: #eeffff;"> </span><span style=3D"color: #546e7a=
; font-style: italic;"># Find gRPC installation</span></div>
<div><span style=3D"color: #546e7a; font-style: italic;"># Looks for gRPCC=
onfig.cmake file installed by gRPC's cmake installation.</span></div>
<div><span style=3D"color: #c792ea;">find_package</span><span style=3D"col=
or: #eeffff;">(GRPC REQUIRED)</span></div>
<br />
<div><span style=3D"color: #c792ea;">set</span><span style=3D"color: #eeff=
ff;">(_GRPC_GRPCPP_REFLECTION gRPC::grpc++_reflection)</span></div>
<div><span style=3D"color: #c792ea;">if</span><span style=3D"color: #eefff=
f;">(CMAKE_CROSSCOMPILING)</span></div>
<div><span style=3D"color: #c792ea;"> find_program</span><span style=3D"co=
lor: #eeffff;">(_GRPC_CPP_PLUGIN_EXECUTABLE grpc_cpp_plugin)</span></div>
<div><span style=3D"color: #c792ea;">else</span><span style=3D"color: #eef=
fff;">()</span></div>
<div><span style=3D"color: #c792ea;"> set</span><span style=3D"color: #eef=
fff;">(_GRPC_CPP_PLUGIN_EXECUTABLE $&lt;TARGET_FILE:gRPC::grpc_cpp_plugin&g=
t;)</span></div>
<div><span style=3D"color: #c792ea;">endif</span><span style=3D"color: #ee=
ffff;">()</span></div>
<br />
<div><span style=3D"color: #546e7a; font-style: italic;"># uncomment for P=
C</span></div>
<div><span style=3D"color: #546e7a; font-style: italic;">#find_package(fmt=
 REQUIRED)</span></div>
<div><span style=3D"color: #546e7a; font-style: italic;">#add_compile_defi=
nitions(SPDLOG_FMT_EXTERNAL)</span></div>
<br />
<div><span style=3D"color: #546e7a; font-style: italic;">#Add sub-director=
ies</span></div>
<div><span style=3D"color: #c792ea;">add_subdirectory</span><span style=3D=
"color: #eeffff;">(protos)</span></div>
<div><span style=3D"color: #c792ea;">add_subdirectory</span><span style=3D=
"color: #eeffff;">(systemd)</span></div>
<div><span style=3D"color: #c792ea;">add_subdirectory</span><span style=3D=
"color: #eeffff;">(certs)</span></div>
<div><span style=3D"color: #c792ea;">add_subdirectory</span><span style=3D=
"color: #eeffff;">(services)</span></div>
<div><span style=3D"color: #c792ea;">add_subdirectory</span><span style=3D=
"color: #eeffff;">(lib)</span></div>
<div><span style=3D"color: #c792ea;">add_subdirectory</span><span style=3D=
"color: #eeffff;">(tools)</span></div>
<div><span style=3D"color: #c792ea;">add_subdirectory</span><span style=3D=
"color: #eeffff;">(core)</span></div>
<br /><br /></div>
<br />Help me please on this. It is really urgent, I tried a lot.<br />Tha=
nks, Talel

--kKJIOMaTRFgqTimCrYDt--
