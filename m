Subject: Re: #sdk -Standard SDK build with cmake and meta-clang gives error when I attempt topull in compiler-rt
To: yocto@lists.yoctoproject.org
From: "Monsees, Steven C (US)" <steven.monsees@baesystems.com>
X-Originating-Location: US (149.32.192.43)
X-Originating-Platform: Windows IE 11
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 25 Aug 2020 03:47:40 -0700
References: <CAMKF1so3=f3tCEHNdCHS2iKU_NxdX4ciqKFEKtnqcO_33Vz-Bg@mail.gmail.com>
In-Reply-To: <CAMKF1so3=f3tCEHNdCHS2iKU_NxdX4ciqKFEKtnqcO_33Vz-Bg@mail.gmail.com>
Message-ID: <12084.1598352460742733934@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="hKq1XwQKY4QPipGFGsIH"

--hKq1XwQKY4QPipGFGsIH
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I think there is a problem with compiler-rt component and cmake=E2=80=A6

Doing bitbake compiler-rt produces:

Initialising tasks: 100% |################################################=
#####| Time: 0:00:00

NOTE: Executing SetScene Tasks

NOTE: Executing RunQueue Tasks

ERROR: compiler-rt-5.0.1+gitAUTOINC+4b38c4038a-r0 do_configure: Function f=
ailed: do_configure (log file is located at /disk0/scratch/smonsees/yocto/w=
orkspace_2/meta-bae/meta-limws/builds/sbcb-default/tmp/work/corei7-64-poky-=
linux/compiler-rt/5.0.1+gitAUTOINC+4b38c4038a-r0/temp/log.do_configure.1753=
4)

ERROR: Logfile of failure stored in: /disk0/scratch/smonsees/yocto/workspa=
ce_2/meta-bae/meta-limws/builds/sbcb-default/tmp/work/corei7-64-poky-linux/=
compiler-rt/5.0.1+gitAUTOINC+4b38c4038a-r0/temp/log.do_configure.17534

Log data follows:

| DEBUG: Executing shell function do_configure

| -- The C compiler identification is GNU 7.3.0

| -- The CXX compiler identification is GNU 7.3.0

| -- The ASM compiler identification is GNU

| -- Found assembler: /disk0/scratch/smonsees/yocto/workspace_2/meta-bae/m=
eta-limws/builds/sbcb-default/tmp/work/corei7-64-poky-linux/compiler-rt/5.0=
.1+gitAUTOINC+4b38c4038a-r0/recipe-sysroot-native/usr/bin/x86_64-poky-linux=
/x86_64-poky-linux-gcc

| -- Check for working C compiler: /disk0/scratch/smonsees/yocto/workspace=
_2/meta-bae/meta-limws/builds/sbcb-default/tmp/work/corei7-64-poky-linux/co=
mpiler-rt/5.0.1+gitAUTOINC+4b38c4038a-r0/recipe-sysroot-native/usr/bin/x86_=
64-poky-linux/x86_64-poky-linux-gcc

| -- Check for working C compiler: /disk0/scratch/smonsees/yocto/workspace=
_2/meta-bae/meta-limws/builds/sbcb-default/tmp/work/corei7-64-poky-linux/co=
mpiler-rt/5.0.1+gitAUTOINC+4b38c4038a-r0/recipe-sysroot-native/usr/bin/x86_=
64-poky-linux/x86_64-poky-linux-gcc -- works

| -- Detecting C compiler ABI info

| -- Detecting C compiler ABI info - done

| -- Detecting C compile features

| -- Detecting C compile features - done

| -- Check for working CXX compiler: /disk0/scratch/smonsees/yocto/workspa=
ce_2/meta-bae/meta-limws/builds/sbcb-default/tmp/work/corei7-64-poky-linux/=
compiler-rt/5.0.1+gitAUTOINC+4b38c4038a-r0/recipe-sysroot-native/usr/bin/x8=
6_64-poky-linux/x86_64-poky-linux-g++

| -- Check for working CXX compiler: /disk0/scratch/smonsees/yocto/workspa=
ce_2/meta-bae/meta-limws/builds/sbcb-default/tmp/work/corei7-64-poky-linux/=
compiler-rt/5.0.1+gitAUTOINC+4b38c4038a-r0/recipe-sysroot-native/usr/bin/x8=
6_64-poky-linux/x86_64-poky-linux-g++ -- works

| -- Detecting CXX compiler ABI info

| -- Detecting CXX compiler ABI info - done

| -- Detecting CXX compile features

| -- Detecting CXX compile features - done

| -- Looking for unwind.h

| -- Looking for unwind.h - found

| CMake Error at CMakeLists.txt:38 (find_package):

|=C2=A0=C2=A0 By not providing "FindLLVM.cmake" in CMAKE_MODULE_PATH this =
project has

|=C2=A0=C2=A0 asked CMake to find a package configuration file provided by=
 "LLVM", but

|=C2=A0=C2=A0 CMake did not find one.

|

|=C2=A0=C2=A0 Could not find a package configuration file provided by "LLV=
M" with any of

|=C2=A0=C2=A0 the following names:

|

|=C2=A0=C2=A0=C2=A0=C2=A0 LLVMConfig.cmake

|=C2=A0=C2=A0=C2=A0=C2=A0 llvm-config.cmake

|

|=C2=A0=C2=A0 Add the installation prefix of "LLVM" to CMAKE_PREFIX_PATH o=
r set

|=C2=A0=C2=A0 "LLVM_DIR" to a directory containing one of the above files.=
=
=C2=A0 If "LLVM"

|=C2=A0=C2=A0 provides a separate development package or SDK, be sure it h=
as been

|=C2=A0=C2=A0 installed.

|

|

| -- Configuring incomplete, errors occurred!

| See also "/disk0/scratch/smonsees/yocto/workspace_2/meta-bae/meta-limws/=
builds/sbcb-default/tmp/work/corei7-64-poky-linux/compiler-rt/5.0.1+gitAUTO=
INC+4b38c4038a-r0/build/CMakeFiles/CMakeOutput.log".

| WARNING: /disk0/scratch/smonsees/yocto/workspace_2/meta-bae/meta-limws/b=
uilds/sbcb-default/tmp/work/corei7-64-poky-linux/compiler-rt/5.0.1+gitAUTOI=
NC+4b38c4038a-r0/temp/run.do_configure.17534:1 exit 1 from 'cmake $oecmake_=
sitefile /disk0/scratch/smonsees/yocto/workspace_2/meta-bae/meta-limws/buil=
ds/sbcb-default/tmp/work/corei7-64-poky-linux/compiler-rt/5.0.1+gitAUTOINC+=
4b38c4038a-r0/git -DCMAKE_INSTALL_PREFIX:PATH=3D/usr -DCMAKE_INSTALL_BINDIR=
:PATH=3Dbin -DCMAKE_INSTALL_SBINDIR:PATH=3Dsbin -DCMAKE_INSTALL_LIBEXECDIR:=
PATH=3Dlibexec -DCMAKE_INSTALL_SYSCONFDIR:PATH=3D/etc -DCMAKE_INSTALL_SHARE=
DSTATEDIR:PATH=3D../com -DCMAKE_INSTALL_LOCALSTATEDIR:PATH=3D/var -DCMAKE_I=
NSTALL_LIBDIR:PATH=3Dlib -DCMAKE_INSTALL_INCLUDEDIR:PATH=3Dinclude -DCMAKE_=
INSTALL_DATAROOTDIR:PATH=3Dshare -DCMAKE_INSTALL_SO_NO_EXE=3D0 -DCMAKE_TOOL=
CHAIN_FILE=3D/disk0/scratch/smonsees/yocto/workspace_2/meta-bae/meta-limws/=
builds/sbcb-default/tmp/work/corei7-64-poky-linux/compiler-rt/5.0.1+gitAUTO=
INC+4b38c4038a-r0/toolchain.cmake -DCMAKE_VERBOSE_MAKEFILE=3D1 -DCMAKE_NO_S=
YSTEM_FROM_IMPORTED=3D1 -DCOMPILER_RT_STANDALONE_BUILD=3DON -DCOMPILER_RT_D=
EFAULT_TARGET_TRIPLE=3Dx86_64-poky-linux -DCOMPILER_RT_BUILD_XRAY=3DOFF -G =
Ninja ${PACKAGECONFIG_CONFARGS} -Wno-dev'

| ERROR: Function failed: do_configure (log file is located at /disk0/scra=
tch/smonsees/yocto/workspace_2/meta-bae/meta-limws/builds/sbcb-default/tmp/=
work/corei7-64-poky-linux/compiler-rt/5.0.1+gitAUTOINC+4b38c4038a-r0/temp/l=
og.do_configure.17534)

ERROR: Task (/disk0/scratch/smonsees/yocto/workspace_2/poky/../meta-clang/=
recipes-devtools/clang/compiler-rt_git.bb:do_configure) failed with exit co=
de '1'

NOTE: Tasks Summary: Attempted 495 tasks of which 488 didn't need to be re=
run and 1 failed.

Summary: 1 task failed:

/disk0/scratch/smonsees/yocto/workspace_2/poky/../meta-clang/recipes-devto=
ols/clang/compiler-rt_git.bb:do_configure

--hKq1XwQKY4QPipGFGsIH
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p style=3D"margin: 0in 0in 0pt;"><span style=3D"color: #1f497d; font-famil=
y: 'Calibri',sans-serif; font-size: 11pt;">&nbsp;</span></p>
<p style=3D"margin: 0in 0in 0pt;"><span style=3D"color: #1f497d; font-fami=
ly: 'Calibri',sans-serif; font-size: 11pt;">I think there is a problem with=
 compiler-rt component and cmake&hellip;</span></p>
<p style=3D"margin: 0in 0in 0pt;"><span style=3D"color: #1f497d; font-fami=
ly: 'Calibri',sans-serif; font-size: 11pt;">&nbsp;</span></p>
<p style=3D"margin: 0in 0in 0pt;"><span style=3D"color: #000000; font-fami=
ly: Times New Roman; font-size: medium;">Doing bitbake compiler-rt produces=
:</span></p>
<p style=3D"margin: 0in 0in 0pt;"><span style=3D"color: #1f497d; font-fami=
ly: 'Calibri',sans-serif; font-size: 11pt;">&nbsp;</span></p>
<p style=3D"margin: 0in 0in 0pt;"><span style=3D"color: #1f497d; font-fami=
ly: 'Calibri',sans-serif; font-size: 11pt;">Initialising tasks: 100% |#####=
################################################| Time: 0:00:00</span></p>
<p style=3D"margin: 0in 0in 0pt;"><span style=3D"color: #1f497d; font-fami=
ly: 'Calibri',sans-serif; font-size: 11pt;">NOTE: Executing SetScene Tasks<=
/span></p>
<p style=3D"margin: 0in 0in 0pt;"><span style=3D"color: #1f497d; font-fami=
ly: 'Calibri',sans-serif; font-size: 11pt;">NOTE: Executing RunQueue Tasks<=
/span></p>
<p style=3D"margin: 0in 0in 0pt;"><span style=3D"color: #1f497d; font-fami=
ly: 'Calibri',sans-serif; font-size: 11pt;">ERROR: compiler-rt-5.0.1+gitAUT=
OINC+4b38c4038a-r0 do_configure: Function failed: do_configure (log file is=
 located at /disk0/scratch/smonsees/yocto/workspace_2/meta-bae/meta-limws/b=
uilds/sbcb-default/tmp/work/corei7-64-poky-linux/compiler-rt/5.0.1+gitAUTOI=
NC+4b38c4038a-r0/temp/log.do_configure.17534)</span></p>
<p style=3D"margin: 0in 0in 0pt;"><span style=3D"color: #1f497d; font-fami=
ly: 'Calibri',sans-serif; font-size: 11pt;">ERROR: Logfile of failure store=
d in: /disk0/scratch/smonsees/yocto/workspace_2/meta-bae/meta-limws/builds/=
sbcb-default/tmp/work/corei7-64-poky-linux/compiler-rt/5.0.1+gitAUTOINC+4b3=
8c4038a-r0/temp/log.do_configure.17534</span></p>
<p style=3D"margin: 0in 0in 0pt;"><span style=3D"color: #1f497d; font-fami=
ly: 'Calibri',sans-serif; font-size: 11pt;">Log data follows:</span></p>
<p style=3D"margin: 0in 0in 0pt;"><span style=3D"color: #1f497d; font-fami=
ly: 'Calibri',sans-serif; font-size: 11pt;">| DEBUG: Executing shell functi=
on do_configure</span></p>
<p style=3D"margin: 0in 0in 0pt;"><span style=3D"color: #1f497d; font-fami=
ly: 'Calibri',sans-serif; font-size: 11pt;">| -- The C compiler identificat=
ion is GNU 7.3.0</span></p>
<p style=3D"margin: 0in 0in 0pt;"><span style=3D"color: #1f497d; font-fami=
ly: 'Calibri',sans-serif; font-size: 11pt;">| -- The CXX compiler identific=
ation is GNU 7.3.0</span></p>
<p style=3D"margin: 0in 0in 0pt;"><span style=3D"color: #1f497d; font-fami=
ly: 'Calibri',sans-serif; font-size: 11pt;">| -- The ASM compiler identific=
ation is GNU</span></p>
<p style=3D"margin: 0in 0in 0pt;"><span style=3D"color: #1f497d; font-fami=
ly: 'Calibri',sans-serif; font-size: 11pt;">| -- Found assembler: /disk0/sc=
ratch/smonsees/yocto/workspace_2/meta-bae/meta-limws/builds/sbcb-default/tm=
p/work/corei7-64-poky-linux/compiler-rt/5.0.1+gitAUTOINC+4b38c4038a-r0/reci=
pe-sysroot-native/usr/bin/x86_64-poky-linux/x86_64-poky-linux-gcc</span></p=
>
<p style=3D"margin: 0in 0in 0pt;"><span style=3D"color: #1f497d; font-fami=
ly: 'Calibri',sans-serif; font-size: 11pt;">| -- Check for working C compil=
er: /disk0/scratch/smonsees/yocto/workspace_2/meta-bae/meta-limws/builds/sb=
cb-default/tmp/work/corei7-64-poky-linux/compiler-rt/5.0.1+gitAUTOINC+4b38c=
4038a-r0/recipe-sysroot-native/usr/bin/x86_64-poky-linux/x86_64-poky-linux-=
gcc</span></p>
<p style=3D"margin: 0in 0in 0pt;"><span style=3D"color: #1f497d; font-fami=
ly: 'Calibri',sans-serif; font-size: 11pt;">| -- Check for working C compil=
er: /disk0/scratch/smonsees/yocto/workspace_2/meta-bae/meta-limws/builds/sb=
cb-default/tmp/work/corei7-64-poky-linux/compiler-rt/5.0.1+gitAUTOINC+4b38c=
4038a-r0/recipe-sysroot-native/usr/bin/x86_64-poky-linux/x86_64-poky-linux-=
gcc -- works</span></p>
<p style=3D"margin: 0in 0in 0pt;"><span style=3D"color: #1f497d; font-fami=
ly: 'Calibri',sans-serif; font-size: 11pt;">| -- Detecting C compiler ABI i=
nfo</span></p>
<p style=3D"margin: 0in 0in 0pt;"><span style=3D"color: #1f497d; font-fami=
ly: 'Calibri',sans-serif; font-size: 11pt;">| -- Detecting C compiler ABI i=
nfo - done</span></p>
<p style=3D"margin: 0in 0in 0pt;"><span style=3D"color: #1f497d; font-fami=
ly: 'Calibri',sans-serif; font-size: 11pt;">| -- Detecting C compile featur=
es</span></p>
<p style=3D"margin: 0in 0in 0pt;"><span style=3D"color: #1f497d; font-fami=
ly: 'Calibri',sans-serif; font-size: 11pt;">| -- Detecting C compile featur=
es - done</span></p>
<p style=3D"margin: 0in 0in 0pt;"><span style=3D"color: #1f497d; font-fami=
ly: 'Calibri',sans-serif; font-size: 11pt;">| -- Check for working CXX comp=
iler: /disk0/scratch/smonsees/yocto/workspace_2/meta-bae/meta-limws/builds/=
sbcb-default/tmp/work/corei7-64-poky-linux/compiler-rt/5.0.1+gitAUTOINC+4b3=
8c4038a-r0/recipe-sysroot-native/usr/bin/x86_64-poky-linux/x86_64-poky-linu=
x-g++</span></p>
<p style=3D"margin: 0in 0in 0pt;"><span style=3D"color: #1f497d; font-fami=
ly: 'Calibri',sans-serif; font-size: 11pt;">| -- Check for working CXX comp=
iler: /disk0/scratch/smonsees/yocto/workspace_2/meta-bae/meta-limws/builds/=
sbcb-default/tmp/work/corei7-64-poky-linux/compiler-rt/5.0.1+gitAUTOINC+4b3=
8c4038a-r0/recipe-sysroot-native/usr/bin/x86_64-poky-linux/x86_64-poky-linu=
x-g++ -- works</span></p>
<p style=3D"margin: 0in 0in 0pt;"><span style=3D"color: #1f497d; font-fami=
ly: 'Calibri',sans-serif; font-size: 11pt;">| -- Detecting CXX compiler ABI=
 info</span></p>
<p style=3D"margin: 0in 0in 0pt;"><span style=3D"color: #1f497d; font-fami=
ly: 'Calibri',sans-serif; font-size: 11pt;">| -- Detecting CXX compiler ABI=
 info - done</span></p>
<p style=3D"margin: 0in 0in 0pt;"><span style=3D"color: #1f497d; font-fami=
ly: 'Calibri',sans-serif; font-size: 11pt;">| -- Detecting CXX compile feat=
ures</span></p>
<p style=3D"margin: 0in 0in 0pt;"><span style=3D"color: #1f497d; font-fami=
ly: 'Calibri',sans-serif; font-size: 11pt;">| -- Detecting CXX compile feat=
ures - done</span></p>
<p style=3D"margin: 0in 0in 0pt;"><span style=3D"color: #1f497d; font-fami=
ly: 'Calibri',sans-serif; font-size: 11pt;">| -- Looking for unwind.h</span=
></p>
<p style=3D"margin: 0in 0in 0pt;"><span style=3D"color: #1f497d; font-fami=
ly: 'Calibri',sans-serif; font-size: 11pt;">| -- Looking for unwind.h - fou=
nd</span></p>
<p style=3D"margin: 0in 0in 0pt;"><span style=3D"color: #1f497d; font-fami=
ly: 'Calibri',sans-serif; font-size: 11pt;">| CMake Error at CMakeLists.txt=
:38 (find_package):</span></p>
<p style=3D"margin: 0in 0in 0pt;"><span style=3D"color: #1f497d; font-fami=
ly: 'Calibri',sans-serif; font-size: 11pt;">|&nbsp;&nbsp; By not providing =
"FindLLVM.cmake" in CMAKE_MODULE_PATH this project has</span></p>
<p style=3D"margin: 0in 0in 0pt;"><span style=3D"color: #1f497d; font-fami=
ly: 'Calibri',sans-serif; font-size: 11pt;">|&nbsp;&nbsp; asked CMake to fi=
nd a package configuration file provided by "LLVM", but</span></p>
<p style=3D"margin: 0in 0in 0pt;"><span style=3D"color: #1f497d; font-fami=
ly: 'Calibri',sans-serif; font-size: 11pt;">|&nbsp;&nbsp; CMake did not fin=
d one.</span></p>
<p style=3D"margin: 0in 0in 0pt;"><span style=3D"color: #1f497d; font-fami=
ly: 'Calibri',sans-serif; font-size: 11pt;">|</span></p>
<p style=3D"margin: 0in 0in 0pt;"><span style=3D"color: #1f497d; font-fami=
ly: 'Calibri',sans-serif; font-size: 11pt;">|&nbsp;&nbsp; Could not find a =
package configuration file provided by "LLVM" with any of</span></p>
<p style=3D"margin: 0in 0in 0pt;"><span style=3D"color: #1f497d; font-fami=
ly: 'Calibri',sans-serif; font-size: 11pt;">|&nbsp;&nbsp; the following nam=
es:</span></p>
<p style=3D"margin: 0in 0in 0pt;"><span style=3D"color: #1f497d; font-fami=
ly: 'Calibri',sans-serif; font-size: 11pt;">|</span></p>
<p style=3D"margin: 0in 0in 0pt;"><span style=3D"color: #1f497d; font-fami=
ly: 'Calibri',sans-serif; font-size: 11pt;">|&nbsp;&nbsp;&nbsp;&nbsp; LLVMC=
onfig.cmake</span></p>
<p style=3D"margin: 0in 0in 0pt;"><span style=3D"color: #1f497d; font-fami=
ly: 'Calibri',sans-serif; font-size: 11pt;">|&nbsp;&nbsp;&nbsp;&nbsp; llvm-=
config.cmake</span></p>
<p style=3D"margin: 0in 0in 0pt;"><span style=3D"color: #1f497d; font-fami=
ly: 'Calibri',sans-serif; font-size: 11pt;">|</span></p>
<p style=3D"margin: 0in 0in 0pt;"><span style=3D"color: #1f497d; font-fami=
ly: 'Calibri',sans-serif; font-size: 11pt;">|&nbsp;&nbsp; Add the installat=
ion prefix of "LLVM" to CMAKE_PREFIX_PATH or set</span></p>
<p style=3D"margin: 0in 0in 0pt;"><span style=3D"color: #1f497d; font-fami=
ly: 'Calibri',sans-serif; font-size: 11pt;">|&nbsp;&nbsp; "LLVM_DIR" to a d=
irectory containing one of the above files.&nbsp; If "LLVM"</span></p>
<p style=3D"margin: 0in 0in 0pt;"><span style=3D"color: #1f497d; font-fami=
ly: 'Calibri',sans-serif; font-size: 11pt;">|&nbsp;&nbsp; provides a separa=
te development package or SDK, be sure it has been</span></p>
<p style=3D"margin: 0in 0in 0pt;"><span style=3D"color: #1f497d; font-fami=
ly: 'Calibri',sans-serif; font-size: 11pt;">|&nbsp;&nbsp; installed.</span>=
</p>
<p style=3D"margin: 0in 0in 0pt;"><span style=3D"color: #1f497d; font-fami=
ly: 'Calibri',sans-serif; font-size: 11pt;">|</span></p>
<p style=3D"margin: 0in 0in 0pt;"><span style=3D"color: #1f497d; font-fami=
ly: 'Calibri',sans-serif; font-size: 11pt;">|</span></p>
<p style=3D"margin: 0in 0in 0pt;"><span style=3D"color: #1f497d; font-fami=
ly: 'Calibri',sans-serif; font-size: 11pt;">| -- Configuring incomplete, er=
rors occurred!</span></p>
<p style=3D"margin: 0in 0in 0pt;"><span style=3D"color: #1f497d; font-fami=
ly: 'Calibri',sans-serif; font-size: 11pt;">| See also "/disk0/scratch/smon=
sees/yocto/workspace_2/meta-bae/meta-limws/builds/sbcb-default/tmp/work/cor=
ei7-64-poky-linux/compiler-rt/5.0.1+gitAUTOINC+4b38c4038a-r0/build/CMakeFil=
es/CMakeOutput.log".</span></p>
<p style=3D"margin: 0in 0in 0pt;"><span style=3D"color: #1f497d; font-fami=
ly: 'Calibri',sans-serif; font-size: 11pt;">| WARNING: /disk0/scratch/smons=
ees/yocto/workspace_2/meta-bae/meta-limws/builds/sbcb-default/tmp/work/core=
i7-64-poky-linux/compiler-rt/5.0.1+gitAUTOINC+4b38c4038a-r0/temp/run.do_con=
figure.17534:1 exit 1 from 'cmake $oecmake_sitefile /disk0/scratch/smonsees=
/yocto/workspace_2/meta-bae/meta-limws/builds/sbcb-default/tmp/work/corei7-=
64-poky-linux/compiler-rt/5.0.1+gitAUTOINC+4b38c4038a-r0/git -DCMAKE_INSTAL=
L_PREFIX:PATH=3D/usr -DCMAKE_INSTALL_BINDIR:PATH=3Dbin -DCMAKE_INSTALL_SBIN=
DIR:PATH=3Dsbin -DCMAKE_INSTALL_LIBEXECDIR:PATH=3Dlibexec -DCMAKE_INSTALL_S=
YSCONFDIR:PATH=3D/etc -DCMAKE_INSTALL_SHAREDSTATEDIR:PATH=3D../com -DCMAKE_=
INSTALL_LOCALSTATEDIR:PATH=3D/var -DCMAKE_INSTALL_LIBDIR:PATH=3Dlib -DCMAKE=
_INSTALL_INCLUDEDIR:PATH=3Dinclude -DCMAKE_INSTALL_DATAROOTDIR:PATH=3Dshare=
 -DCMAKE_INSTALL_SO_NO_EXE=3D0 -DCMAKE_TOOLCHAIN_FILE=3D/disk0/scratch/smon=
sees/yocto/workspace_2/meta-bae/meta-limws/builds/sbcb-default/tmp/work/cor=
ei7-64-poky-linux/compiler-rt/5.0.1+gitAUTOINC+4b38c4038a-r0/toolchain.cmak=
e -DCMAKE_VERBOSE_MAKEFILE=3D1 -DCMAKE_NO_SYSTEM_FROM_IMPORTED=3D1 -DCOMPIL=
ER_RT_STANDALONE_BUILD=3DON -DCOMPILER_RT_DEFAULT_TARGET_TRIPLE=3Dx86_64-po=
ky-linux -DCOMPILER_RT_BUILD_XRAY=3DOFF -G Ninja ${PACKAGECONFIG_CONFARGS} =
-Wno-dev'</span></p>
<p style=3D"margin: 0in 0in 0pt;"><span style=3D"color: #1f497d; font-fami=
ly: 'Calibri',sans-serif; font-size: 11pt;">| ERROR: Function failed: do_co=
nfigure (log file is located at /disk0/scratch/smonsees/yocto/workspace_2/m=
eta-bae/meta-limws/builds/sbcb-default/tmp/work/corei7-64-poky-linux/compil=
er-rt/5.0.1+gitAUTOINC+4b38c4038a-r0/temp/log.do_configure.17534)</span></p=
>
<p style=3D"margin: 0in 0in 0pt;"><span style=3D"color: #1f497d; font-fami=
ly: 'Calibri',sans-serif; font-size: 11pt;">ERROR: Task (/disk0/scratch/smo=
nsees/yocto/workspace_2/poky/../meta-clang/recipes-devtools/clang/compiler-=
rt_git.bb:do_configure) failed with exit code '1'</span></p>
<p style=3D"margin: 0in 0in 0pt;"><span style=3D"color: #1f497d; font-fami=
ly: 'Calibri',sans-serif; font-size: 11pt;">NOTE: Tasks Summary: Attempted =
495 tasks of which 488 didn't need to be rerun and 1 failed.</span></p>
<p style=3D"margin: 0in 0in 0pt;"><span style=3D"color: #1f497d; font-fami=
ly: 'Calibri',sans-serif; font-size: 11pt;">&nbsp;</span></p>
<p style=3D"margin: 0in 0in 0pt;"><span style=3D"color: #1f497d; font-fami=
ly: 'Calibri',sans-serif; font-size: 11pt;">Summary: 1 task failed:</span><=
/p>
<p style=3D"margin: 0in 0in 0pt;"><span style=3D"color: #1f497d; font-fami=
ly: 'Calibri',sans-serif; font-size: 11pt;">&nbsp; /disk0/scratch/smonsees/=
yocto/workspace_2/poky/../meta-clang/recipes-devtools/clang/compiler-rt_git=
.bb:do_configure</span></p>
<p style=3D"margin: 0in 0in 0pt;"><span style=3D"color: #1f497d; font-fami=
ly: 'Calibri',sans-serif; font-size: 11pt;">&nbsp;</span></p>

--hKq1XwQKY4QPipGFGsIH--
