Subject: Building zeek 3.1.1 in Sumo
To: yocto@lists.yoctoproject.org
From: gary@missionsecure.com
X-Originating-Location: Charlottesville, Virginia, US (216.197.64.240)
X-Originating-Platform: Mac Safari 13.1
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Sat, 18 Apr 2020 09:57:41 -0700
Message-ID: <HeE2.1587229061546388823.8CVI@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="AXQBaw3l3tDTLfU1xsFm"

--AXQBaw3l3tDTLfU1xsFm
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I'm trying to create a recipe in Sumo for zeek (zeek.org) which uses cmake.=
 =C2=A0I'm getting a sed not found error:

Initialising tasks: 100% |################################################=
###########################################################################=
############################| Time: 0:00:01
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
ERROR: zeek-3.1.1-r0 do_configure: Function failed: do_configure (log file=
 is located at /opt/PHYTEC_BSPs19/yocto_imx7/build-msi1/tmp/work/cortexa7hf=
-neon-poky-linux-gnueabi/zeek/3.1.1-r0/temp/log.do_configure.18009)
ERROR: Logfile of failure stored in: /opt/PHYTEC_BSPs19/yocto_imx7/build-m=
si1/tmp/work/cortexa7hf-neon-poky-linux-gnueabi/zeek/3.1.1-r0/temp/log.do_c=
onfigure.18009
Log data follows:
| DEBUG: Executing shell function do_configure
| -- The C compiler identification is GNU 7.3.0
| -- The CXX compiler identification is GNU 7.3.0
| -- Check for working C compiler: /opt/PHYTEC_BSPs19/yocto_imx7/build-msi=
1/tmp/work/cortexa7hf-neon-poky-linux-gnueabi/zeek/3.1.1-r0/recipe-sysroot-=
native/usr/bin/arm-poky-linux-gnueabi/arm-poky-linux-gnueabi-gcc
| -- Check for working C compiler: /opt/PHYTEC_BSPs19/yocto_imx7/build-msi=
1/tmp/work/cortexa7hf-neon-poky-linux-gnueabi/zeek/3.1.1-r0/recipe-sysroot-=
native/usr/bin/arm-poky-linux-gnueabi/arm-poky-linux-gnueabi-gcc -- works
| -- Detecting C compiler ABI info
| -- Detecting C compiler ABI info - done
| -- Detecting C compile features
| -- Detecting C compile features - done
| -- Check for working CXX compiler: /opt/PHYTEC_BSPs19/yocto_imx7/build-m=
si1/tmp/work/cortexa7hf-neon-poky-linux-gnueabi/zeek/3.1.1-r0/recipe-sysroo=
t-native/usr/bin/arm-poky-linux-gnueabi/arm-poky-linux-gnueabi-g++
| -- Check for working CXX compiler: /opt/PHYTEC_BSPs19/yocto_imx7/build-m=
si1/tmp/work/cortexa7hf-neon-poky-linux-gnueabi/zeek/3.1.1-r0/recipe-sysroo=
t-native/usr/bin/arm-poky-linux-gnueabi/arm-poky-linux-gnueabi-g++ -- works
| -- Detecting CXX compiler ABI info
| -- Detecting CXX compiler ABI info - done
| -- Detecting CXX compile features
| -- Detecting CXX compile features - done
| CMake Error at CMakeLists.txt:170 (message):
| =C2=A0 Could not find required dependency: sed

I tracked this down to the cmake find_program(), here's the lines in CMake=
Lists.txt:

########################################################################
## Dependency Configuration

include(FindRequiredPackage)

# Check cache value first to avoid displaying "Found sed" messages everyti=
me
if (NOT SED_EXE)
find_program(SED_EXE sed)
if (NOT SED_EXE)
message(FATAL_ERROR "Could not find required dependency: sed")
else ()
message(STATUS "Found sed: ${SED_EXE}")
endif ()
endif ()

Any ideas how to fix this?

--AXQBaw3l3tDTLfU1xsFm
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I'm trying to create a recipe in Sumo for zeek (zeek.org) which uses cmake.=
 &nbsp;I'm getting a sed not found error:<br /><br />
<div>Initialising tasks: 100% |###########################################=
###########################################################################=
#################################| Time: 0:00:01</div>
<div>NOTE: Executing SetScene Tasks</div>
<div>NOTE: Executing RunQueue Tasks</div>
<div>ERROR: zeek-3.1.1-r0 do_configure: Function failed: do_configure (log=
 file is located at /opt/PHYTEC_BSPs19/yocto_imx7/build-msi1/tmp/work/corte=
xa7hf-neon-poky-linux-gnueabi/zeek/3.1.1-r0/temp/log.do_configure.18009)</d=
iv>
<div>ERROR: Logfile of failure stored in: /opt/PHYTEC_BSPs19/yocto_imx7/bu=
ild-msi1/tmp/work/cortexa7hf-neon-poky-linux-gnueabi/zeek/3.1.1-r0/temp/log=
.do_configure.18009</div>
<div>Log data follows:</div>
<div>| DEBUG: Executing shell function do_configure</div>
<div>| -- The C compiler identification is GNU 7.3.0</div>
<div>| -- The CXX compiler identification is GNU 7.3.0</div>
<div>| -- Check for working C compiler: /opt/PHYTEC_BSPs19/yocto_imx7/buil=
d-msi1/tmp/work/cortexa7hf-neon-poky-linux-gnueabi/zeek/3.1.1-r0/recipe-sys=
root-native/usr/bin/arm-poky-linux-gnueabi/arm-poky-linux-gnueabi-gcc</div>
<div>| -- Check for working C compiler: /opt/PHYTEC_BSPs19/yocto_imx7/buil=
d-msi1/tmp/work/cortexa7hf-neon-poky-linux-gnueabi/zeek/3.1.1-r0/recipe-sys=
root-native/usr/bin/arm-poky-linux-gnueabi/arm-poky-linux-gnueabi-gcc -- wo=
rks</div>
<div>| -- Detecting C compiler ABI info</div>
<div>| -- Detecting C compiler ABI info - done</div>
<div>| -- Detecting C compile features</div>
<div>| -- Detecting C compile features - done</div>
<div>| -- Check for working CXX compiler: /opt/PHYTEC_BSPs19/yocto_imx7/bu=
ild-msi1/tmp/work/cortexa7hf-neon-poky-linux-gnueabi/zeek/3.1.1-r0/recipe-s=
ysroot-native/usr/bin/arm-poky-linux-gnueabi/arm-poky-linux-gnueabi-g++</di=
v>
<div>| -- Check for working CXX compiler: /opt/PHYTEC_BSPs19/yocto_imx7/bu=
ild-msi1/tmp/work/cortexa7hf-neon-poky-linux-gnueabi/zeek/3.1.1-r0/recipe-s=
ysroot-native/usr/bin/arm-poky-linux-gnueabi/arm-poky-linux-gnueabi-g++ -- =
works</div>
<div>| -- Detecting CXX compiler ABI info</div>
<div>| -- Detecting CXX compiler ABI info - done</div>
<div>| -- Detecting CXX compile features</div>
<div>| -- Detecting CXX compile features - done</div>
<div>| CMake Error at CMakeLists.txt:170 (message):</div>
<div>| &nbsp; Could not find required dependency: sed<br /><br />I tracked=
 this down to the cmake find_program(), here's the lines in CMakeLists.txt:=
<br /><br />
<div>#####################################################################=
###</div>
<div>## Dependency Configuration</div>
<div>&nbsp;</div>
<div>include(FindRequiredPackage)</div>
<div>&nbsp;</div>
<div># Check cache value first to avoid displaying "Found sed" messages ev=
erytime</div>
<div>if (NOT SED_EXE)</div>
<div>&nbsp; &nbsp; find_program(SED_EXE sed)</div>
<div>&nbsp; &nbsp; if (NOT SED_EXE)</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; message(FATAL_ERROR "Could not find requi=
red dependency: sed")</div>
<div>&nbsp; &nbsp; else ()</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; message(STATUS "Found sed: ${SED_EXE}")</=
div>
<div>&nbsp; &nbsp; endif ()</div>
<div>endif ()<br /><br />Any ideas how to fix this?</div>
</div>

--AXQBaw3l3tDTLfU1xsFm--
