Return-Path: <joseph.maniaci@seagate.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 535D4C83030
	for <webhook@archiver.kernel.org>; Mon, 30 Jun 2025 21:32:33 +0000 (UTC)
Subject: CMake + native devtool recipe seems lost #cmake #devtool
To: yocto@lists.yoctoproject.org
From: joseph.maniaci@seagate.com
X-Originating-Location: Minnesota, US (134.204.180.68)
X-Originating-Platform: Windows Firefox 128
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 30 Jun 2025 14:32:32 -0700
Message-ID: <XvTD.1751319152243986321.2PNW@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="6XCRR8JhGVE2Ch96dqQZ"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 30 Jun 2025 21:32:33 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65569

--6XCRR8JhGVE2Ch96dqQZ
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Here is my recipe, configured to build natively with cmake

# We only need to build langLookupUtil natively
BBCLASSEXTEND =3D "native"
# We want to do 'make' in a cmake-style
inherit cmake
LICENSE =3D "Apache-2.0 & Unknown"
SRC_URI =3D "git://git@somewhere/Joseph-Maniaci/mclinux_yocto.git;protocol=
=3Dssh;branch=3Dmain"
# Modify these as desired
PV =3D "1.0+git"
SRCREV =3D "${AUTOREV}"
S =3D "${WORKDIR}/git"
do_compile () {
echo "FIRST" && ls -l && echo "SECOND" && ls -l .. && . sourceme.env ${MC_A=
PP_ARGS} && oe_runmake langLookup
}

OUTPUT:

DEBUG: Executing shell function do_compile
| FIRST
| total 0
| SECOND
| total 40
| drwxr-xr-x 2 user user =C2=A04096 Jun 30 20:44 deploy-source-date-epoch
| drwxr-xr-x 2 user user =C2=A04096 Jun 30 21:11 lang-lookup-util-1.0+git
| drwxr-xr-x 4 user user =C2=A04096 Jun 30 21:11 recipe-sysroot
| drwxr-xr-x 8 user user =C2=A04096 Jun 30 21:03 recipe-sysroot-native
| drwxr-xr-x 2 user user =C2=A04096 Jun 30 20:44 source-date-epoch
| drwxr-xr-x 2 user user =C2=A04096 Jun 30 21:20 temp
| -rw-r--r-- 1 user user 12529 Jun 30 20:44 toolchain.cmake
| /home/user/eps-yocto/build/exos-x-vanadium-bmc/tmp/work/armv7ahf-vfpv4d16=
-openbmc-linux-gnueabi/lang-lookup-util-native/1.0+git/temp/run.do_compile.=
213836: line 141: .: sourceme.env: file not found
| WARNING: /home/user/eps-yocto/build/exos-x-vanadium-bmc/tmp/work/armv7ahf=
-vfpv4d16-openbmc-linux-gnueabi/lang-lookup-util-native/1.0+git/temp/run.do=
_compile.213836:141 exit 1 from '. sourceme.env -t ARM -v VAN000'
| WARNING: Backtrace (BB generated script):
| =C2=A0 =C2=A0 =C2=A0 #1: do_compile, /home/user/eps-yocto/build/exos-x-va=
nadium-bmc/tmp/work/armv7ahf-vfpv4d16-openbmc-linux-gnueabi/lang-lookup-uti=
l-native/1.0+git/temp/run.do_compile.213836, line 141
| =C2=A0 =C2=A0 =C2=A0 #2: main, /home/user/eps-yocto/build/exos-x-vanadium=
-bmc/tmp/work/armv7ahf-vfpv4d16-openbmc-linux-gnueabi/lang-lookup-util-nati=
ve/1.0+git/temp/run.do_compile.213836, line 180
ERROR: Task (/home/user/eps-yocto/build/exos-x-vanadium-bmc/workspace/recip=
es/lang-lookup-util-native/lang-lookup-util-native_git.bb:do_compile) faile=
d with exit code '1'
NOTE: Tasks Summary: Attempted 449 tasks of which 448 didn't need to be rer=
un and 1 failed.

Earlier today cmake was definitely in the right directory, I was playing ar=
ound with AUTOREV/PV=C2=A0 being broken(I can only use the code repo as it =
existed when the recipe was created) and now I got myself in this pickle. I=
 saw the 'toolchain.cmake' file and thought, "Well at least I can see if na=
tive-related flags are being set right" and that doesn't appear to be the c=
ase either. I even deleted my entire workspace and build directory and rege=
nerated the recipe with 'devtool add', hasn't made a difference. sourceme.e=
nv is just a legacy thing I'm hoping to get rid of later. Can confirm that =
from the source directory of the repo, I can target this...target with cmak=
e and successfully build.

Upper portion of ../exos-x-vanadium-bmc/tmp/work/armv7ahf-vfpv4d16-openbmc-=
linux-gnueabi/lang-lookup-util-native/1.0+git/toolchain.cmake

# CMake system name must be something like "Linux".
# This is important for cross-compiling.

set ( CMAKE_SYSTEM_NAME Linux )
set ( CMAKE_SYSTEM_PROCESSOR arm )
set ( CMAKE_C_COMPILER arm-openbmc-linux-gnueabi-gcc )
set ( CMAKE_CXX_COMPILER arm-openbmc-linux-gnueabi-g++ )
set ( CMAKE_C_COMPILER_LAUNCHER =C2=A0)
set ( CMAKE_CXX_COMPILER_LAUNCHER =C2=A0)
set ( CMAKE_ASM_COMPILER arm-openbmc-linux-gnueabi-gcc )
find_program ( CMAKE_AR arm-openbmc-linux-gnueabi-gcc-ar DOC "Archiver" REQ=
UIRED )

set ( CMAKE_C_FLAGS " -march=3Darmv7-a -mfpu=3Dvfpv4-d16 -mfloat-abi=3Dhard=
 -fstack-protector-strong......
....

--6XCRR8JhGVE2Ch96dqQZ
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Here is my recipe, configured to build natively with cmake</div>
<div>&nbsp;</div>
<div>
<div><em># We only need to build langLookupUtil natively</em><br /><em>BBCL=
ASSEXTEND =3D "native"</em><br /><em># We want to do 'make' in a cmake-styl=
e</em><br /><em>inherit cmake</em></div>
<div><em>LICENSE =3D "Apache-2.0 &amp; Unknown"</em></div>
<div><em>SRC_URI =3D "git://git@somewhere/Joseph-Maniaci/mclinux_yocto.git;=
protocol=3Dssh;branch=3Dmain"</em></div>
<div><em># Modify these as desired</em><br /><em>PV =3D "1.0+git"</em><br /=
><em>SRCREV =3D "${AUTOREV}"</em></div>
<div><em>S =3D "${WORKDIR}/git"</em></div>
<div><em>do_compile () {</em><br /><em>&nbsp; &nbsp; echo "FIRST" &amp;&amp=
; ls -l &amp;&amp; echo "SECOND" &amp;&amp; ls -l .. &amp;&amp; . sourceme.=
env ${MC_APP_ARGS} &amp;&amp; oe_runmake langLookup</em><br /><em>}</em><br=
 /><br />OUTPUT:</div>
<div>&nbsp;</div>
<div><em>DEBUG: Executing shell function do_compile</em><br /><em>| FIRST</=
em><br /><em>| total 0</em><br /><em>| SECOND</em><br /><em>| total 40</em>=
<br /><em>| drwxr-xr-x 2 user user &nbsp;4096 Jun 30 20:44 deploy-source-da=
te-epoch</em><br /><em>| drwxr-xr-x 2 user user &nbsp;4096 Jun 30 21:11 lan=
g-lookup-util-1.0+git</em><br /><em>| drwxr-xr-x 4 user user &nbsp;4096 Jun=
 30 21:11 recipe-sysroot</em><br /><em>| drwxr-xr-x 8 user user &nbsp;4096 =
Jun 30 21:03 recipe-sysroot-native</em><br /><em>| drwxr-xr-x 2 user user &=
nbsp;4096 Jun 30 20:44 source-date-epoch</em><br /><em>| drwxr-xr-x 2 user =
user &nbsp;4096 Jun 30 21:20 temp</em><br /><em>| -rw-r--r-- 1 user user 12=
529 Jun 30 20:44 toolchain.cmake</em><br /><em>| /home/user/eps-yocto/build=
/exos-x-vanadium-bmc/tmp/work/armv7ahf-vfpv4d16-openbmc-linux-gnueabi/lang-=
lookup-util-native/1.0+git/temp/run.do_compile.213836: line 141: .: sourcem=
e.env: file not found</em><br /><em>| WARNING: /home/user/eps-yocto/build/e=
xos-x-vanadium-bmc/tmp/work/armv7ahf-vfpv4d16-openbmc-linux-gnueabi/lang-lo=
okup-util-native/1.0+git/temp/run.do_compile.213836:141 exit 1 from '. sour=
ceme.env -t ARM -v VAN000'</em><br /><em>| WARNING: Backtrace (BB generated=
 script):</em><br /><em>| &nbsp; &nbsp; &nbsp; #1: do_compile, /home/user/e=
ps-yocto/build/exos-x-vanadium-bmc/tmp/work/armv7ahf-vfpv4d16-openbmc-linux=
-gnueabi/lang-lookup-util-native/1.0+git/temp/run.do_compile.213836, line 1=
41</em><br /><em>| &nbsp; &nbsp; &nbsp; #2: main, /home/user/eps-yocto/buil=
d/exos-x-vanadium-bmc/tmp/work/armv7ahf-vfpv4d16-openbmc-linux-gnueabi/lang=
-lookup-util-native/1.0+git/temp/run.do_compile.213836, line 180</em><br />=
<em>ERROR: Task (/home/user/eps-yocto/build/exos-x-vanadium-bmc/workspace/r=
ecipes/lang-lookup-util-native/lang-lookup-util-native_git.bb:do_compile) f=
ailed with exit code '1'</em><br /><em>NOTE: Tasks Summary: Attempted 449 t=
asks of which 448 didn't need to be rerun and 1 failed.</em></div>
<div>&nbsp;</div>
<div>&nbsp;</div>
<div>Earlier today cmake was definitely in the right directory, I was playi=
ng around with AUTOREV/PV&nbsp; being broken(I can only use the code repo a=
s it existed when the recipe was created) and now I got myself in this pick=
le. I saw the 'toolchain.cmake' file and thought, "Well at least I can see =
if native-related flags are being set right" and that doesn't appear to be =
the case either. I even deleted my entire workspace and build directory and=
 regenerated the recipe with 'devtool add', hasn't made a difference. sourc=
eme.env is just a legacy thing I'm hoping to get rid of later. Can confirm =
that from the source directory of the repo, I can target this...target with=
 cmake and successfully build.</div>
<div>&nbsp;</div>
<div>Upper portion of ../exos-x-vanadium-bmc/tmp/work/armv7ahf-vfpv4d16-ope=
nbmc-linux-gnueabi/lang-lookup-util-native/1.0+git/toolchain.cmake<br /><br=
 /><br />
<div style=3D"color: #cccccc; background-color: #1f1f1f; font-family: Conso=
las, 'Courier New', monospace; font-weight: normal; font-size: 14px; line-h=
eight: 19px; white-space: pre;">
<div><em><span style=3D"color: #6a9955;"># CMake system name must be someth=
ing like "Linux".</span></em></div>
<div><em><span style=3D"color: #6a9955;"># This is important for cross-comp=
iling.</span></em></div>
<br />
<div><em><span style=3D"color: #569cd6;">set</span><span style=3D"color: #c=
ccccc;">( CMAKE_SYSTEM_NAME Linux )</span></em></div>
<div><em><span style=3D"color: #569cd6;">set</span><span style=3D"color: #c=
ccccc;">( CMAKE_SYSTEM_PROCESSOR arm )</span></em></div>
<div><em><span style=3D"color: #569cd6;">set</span><span style=3D"color: #c=
ccccc;">( CMAKE_C_COMPILER arm-openbmc-linux-gnueabi-gcc )</span></em></div=
>
<div><em><span style=3D"color: #569cd6;">set</span><span style=3D"color: #c=
ccccc;">( CMAKE_CXX_COMPILER arm-openbmc-linux-gnueabi-g++ )</span></em></d=
iv>
<div><em><span style=3D"color: #569cd6;">set</span><span style=3D"color: #c=
ccccc;">( CMAKE_C_COMPILER_LAUNCHER &nbsp;)</span></em></div>
<div><em><span style=3D"color: #569cd6;">set</span><span style=3D"color: #c=
ccccc;">( CMAKE_CXX_COMPILER_LAUNCHER &nbsp;)</span></em></div>
<div><em><span style=3D"color: #569cd6;">set</span><span style=3D"color: #c=
ccccc;">( CMAKE_ASM_COMPILER arm-openbmc-linux-gnueabi-gcc )</span></em></d=
iv>
<div><em><span style=3D"color: #569cd6;">find_program</span><span style=3D"=
color: #cccccc;">( </span><span style=3D"color: #9cdcfe;">CMAKE_AR</span><s=
pan style=3D"color: #cccccc;"> arm-openbmc-linux-gnueabi-gcc-ar </span><spa=
n style=3D"color: #569cd6;">DOC</span><span style=3D"color: #cccccc;"> </sp=
an><span style=3D"color: #ce9178;">"Archiver"</span><span style=3D"color: #=
cccccc;"> REQUIRED )</span></em></div>
<br />
<div><em><span style=3D"color: #569cd6;">set</span><span style=3D"color: #c=
ccccc;">( CMAKE_C_FLAGS </span><span style=3D"color: #ce9178;">" -march=3Da=
rmv7-a -mfpu=3Dvfpv4-d16 -mfloat-abi=3Dhard -fstack-protector-strong......<=
/span></em></div>
<div><em><span style=3D"color: #ce9178;">....</span></em></div>
</div>
</div>
</div>

--6XCRR8JhGVE2Ch96dqQZ--

