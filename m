Return-Path: <philip.dawson@datapath.co.uk>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65C8AC3600C
	for <webhook@archiver.kernel.org>; Thu,  3 Apr 2025 15:37:02 +0000 (UTC)
Subject: nativesdk-mesa do_configure fails with PACKAGECONFIG:append=" gallium gallium-llvm"
To: yocto@lists.yoctoproject.org
From: philip.dawson@datapath.co.uk
X-Originating-Location: Paddington, England, GB (212.69.51.233)
X-Originating-Platform: Windows Firefox 136
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 03 Apr 2025 08:37:01 -0700
Message-ID: <Z8Dt.1743694621655020425.miUC@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="tFn3sWNzk9ELoTpXDTw9"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 03 Apr 2025 15:37:02 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65087

--tFn3sWNzk9ELoTpXDTw9
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

We're trying to enable gallium-llvm for mesa 22.2.3 build in our langdale b=
ased project.
(We're using Petalinux tooling but I don't think that's making a difference=
 here - meta-xilinx does have a mesa_%.bbappend but it seems only concerned=
 with mali/libmali)

The target build works fine, but if we try to run the nativesdk-mali build =
(as part of bitbake petalinux-image-minimal -c do_populate_sdk run by the p=
etalinux tools) then it fails on the do_configure step with the following m=
eson error:

| WARNING: Ignoring LLVM CMake dependency because dynamic was requested
| llvm-config found: YES (/home/phil-wsl2-u2204/build/dgc219_nsg/dgc219/bui=
ld/tmp/work/x86_64-nativesdk-petalinux-linux/nativesdk-mesa/2_22.2.3-r0/rec=
ipe-sysroot-native/usr/bin/llvm-config14.0.6) 14.0.6
| Run-time dependency LLVM (modules: bitwriter, core, engine, executionengi=
ne, instcombine, mcdisassembler, mcjit, native, scalaropts, transformutils,=
 coroutines) found: NO (tried cmake and config-tool)
| Looking for a fallback subproject for the dependency llvm (modules: bitwr=
iter, engine, mcdisassembler, mcjit, core, executionengine, scalaropts, tra=
nsformutils, instcombine, native)
| Building fallback subproject with default_library=3Dshared
|
| ../mesa-22.2.3/meson.build:1782:2: ERROR: Neither a subproject directory =
nor a llvm.wrap file was found.
|
| A full log can be found at /home/phil-wsl2-u2204/build/dgc219_nsg/dgc219/=
build/tmp/work/x86_64-nativesdk-petalinux-linux/nativesdk-mesa/2_22.2.3-r0/=
build/meson-logs/meson-log.txt
| ERROR: meson failed
| WARNING: /home/phil-wsl2-u2204/build/dgc219_nsg/dgc219/build/tmp/work/x86=
_64-nativesdk-petalinux-linux/nativesdk-mesa/2_22.2.3-r0/temp/run.do_config=
ure.3927848:173 exit 1 from 'exit 1'
| WARNING: Backtrace (BB generated script):
| =C2=A0 =C2=A0 =C2=A0 #1: bbfatal_log, /home/phil-wsl2-u2204/build/dgc219_=
nsg/dgc219/build/tmp/work/x86_64-nativesdk-petalinux-linux/nativesdk-mesa/2=
_22.2.3-r0/temp/run.do_configure.3927848, line 173
| =C2=A0 =C2=A0 =C2=A0 #2: meson_do_configure, /home/phil-wsl2-u2204/build/=
dgc219_nsg/dgc219/build/tmp/work/x86_64-nativesdk-petalinux-linux/nativesdk=
-mesa/2_22.2.3-r0/temp/run.do_configure.3927848, line 162
| =C2=A0 =C2=A0 =C2=A0 #3: do_configure, /home/phil-wsl2-u2204/build/dgc219=
_nsg/dgc219/build/tmp/work/x86_64-nativesdk-petalinux-linux/nativesdk-mesa/=
2_22.2.3-r0/temp/run.do_configure.3927848, line 148
| =C2=A0 =C2=A0 =C2=A0 #4: main, /home/phil-wsl2-u2204/build/dgc219_nsg/dgc=
219/build/tmp/work/x86_64-nativesdk-petalinux-linux/nativesdk-mesa/2_22.2.3=
-r0/temp/run.do_configure.3927848, line 186
ERROR: Task (virtual:nativesdk:/home/phil-wsl2-u2204/build/dgc219_nsg/dgc21=
9/components/yocto/layers/poky/meta/recipes-graphics/mesa/mesa_22.2.3.bb:do=
_configure) failed with exit code '1'
NOTE: Tasks Summary: Attempted 6558 tasks of which 6549 didn't need to be r=
erun and 1 failed.
Summary: 1 task failed:
virtual:nativesdk:/home/phil-wsl2-u2204/build/dgc219_nsg/dgc219/components/=
yocto/layers/poky/meta/recipes-graphics/mesa/mesa_22.2.3.bb:do_configure
Summary: There were 2 ERROR messages, returning a non-zero exit code.
ERROR: Failed to build project. Check the /home/phil-wsl2-u2204/build/dgc21=
9_nsg/dgc219/build/build.log file for more details...

(It looks like someone had a similar error for target mesa build in a Mar 2=
6 message but they haven't posted details to get any assistance yet).

As far as I can tell nativesdk-llvm14.0.6 and nativesdk-llvm are in the nat=
ivesdk-mesa recipe-sysroot providers and llvm-native and llvm14.0.6-native =
are in the nativesdk-mesa receipe-sysroot-native providers. I get a bit mix=
ed up when dealing with native/nativesdk builds and the vairous sysroots an=
d I have no idea how meson detects llvm and why it's failing here. The meso=
n-log.txt doesn't seem provide any illumination (at least to my untrained e=
ye).

Do you have any idea how I can get this build working? Are there any more d=
ebug options I can enable to work out what meson is looking for exactly and=
 why it can't find it?

Best Regards,
Phil Dawson

--tFn3sWNzk9ELoTpXDTw9
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Hi,</div>
<div>&nbsp;</div>
<div>We're trying to enable gallium-llvm for mesa 22.2.3 build in our langd=
ale based project.</div>
<div>(We're using Petalinux tooling but I don't think that's making a diffe=
rence here - meta-xilinx does have a mesa_%.bbappend but it seems only conc=
erned with mali/libmali)</div>
<div>&nbsp;</div>
<div>The target build works fine, but if we try to run the nativesdk-mali b=
uild (as part of bitbake petalinux-image-minimal -c do_populate_sdk run by =
the petalinux tools) then it fails on the do_configure step with the follow=
ing meson error:</div>
<div>&nbsp;</div>
<div>| WARNING: Ignoring LLVM CMake dependency because dynamic was requeste=
d<br />| llvm-config found: YES (/home/phil-wsl2-u2204/build/dgc219_nsg/dgc=
219/build/tmp/work/x86_64-nativesdk-petalinux-linux/nativesdk-mesa/2_22.2.3=
-r0/recipe-sysroot-native/usr/bin/llvm-config14.0.6) 14.0.6<br />| Run-time=
 dependency LLVM (modules: bitwriter, core, engine, executionengine, instco=
mbine, mcdisassembler, mcjit, native, scalaropts, transformutils, coroutine=
s) found: NO (tried cmake and config-tool)<br />| Looking for a fallback su=
bproject for the dependency llvm (modules: bitwriter, engine, mcdisassemble=
r, mcjit, core, executionengine, scalaropts, transformutils, instcombine, n=
ative)<br />| Building fallback subproject with default_library=3Dshared<br=
 />|<br />| ../mesa-22.2.3/meson.build:1782:2: ERROR: Neither a subproject =
directory nor a llvm.wrap file was found.</div>
<div>
<div>|<br />| A full log can be found at /home/phil-wsl2-u2204/build/dgc219=
_nsg/dgc219/build/tmp/work/x86_64-nativesdk-petalinux-linux/nativesdk-mesa/=
2_22.2.3-r0/build/meson-logs/meson-log.txt<br />| ERROR: meson failed<br />=
| WARNING: /home/phil-wsl2-u2204/build/dgc219_nsg/dgc219/build/tmp/work/x86=
_64-nativesdk-petalinux-linux/nativesdk-mesa/2_22.2.3-r0/temp/run.do_config=
ure.3927848:173 exit 1 from 'exit 1'<br />| WARNING: Backtrace (BB generate=
d script):<br />| &nbsp; &nbsp; &nbsp; #1: bbfatal_log, /home/phil-wsl2-u22=
04/build/dgc219_nsg/dgc219/build/tmp/work/x86_64-nativesdk-petalinux-linux/=
nativesdk-mesa/2_22.2.3-r0/temp/run.do_configure.3927848, line 173<br />| &=
nbsp; &nbsp; &nbsp; #2: meson_do_configure, /home/phil-wsl2-u2204/build/dgc=
219_nsg/dgc219/build/tmp/work/x86_64-nativesdk-petalinux-linux/nativesdk-me=
sa/2_22.2.3-r0/temp/run.do_configure.3927848, line 162<br />| &nbsp; &nbsp;=
 &nbsp; #3: do_configure, /home/phil-wsl2-u2204/build/dgc219_nsg/dgc219/bui=
ld/tmp/work/x86_64-nativesdk-petalinux-linux/nativesdk-mesa/2_22.2.3-r0/tem=
p/run.do_configure.3927848, line 148<br />| &nbsp; &nbsp; &nbsp; #4: main, =
/home/phil-wsl2-u2204/build/dgc219_nsg/dgc219/build/tmp/work/x86_64-natives=
dk-petalinux-linux/nativesdk-mesa/2_22.2.3-r0/temp/run.do_configure.3927848=
, line 186<br />ERROR: Task (virtual:nativesdk:/home/phil-wsl2-u2204/build/=
dgc219_nsg/dgc219/components/yocto/layers/poky/meta/recipes-graphics/mesa/m=
esa_22.2.3.bb:do_configure) failed with exit code '1'<br />NOTE: Tasks Summ=
ary: Attempted 6558 tasks of which 6549 didn't need to be rerun and 1 faile=
d.</div>
<div>Summary: 1 task failed:<br />&nbsp; virtual:nativesdk:/home/phil-wsl2-=
u2204/build/dgc219_nsg/dgc219/components/yocto/layers/poky/meta/recipes-gra=
phics/mesa/mesa_22.2.3.bb:do_configure<br />Summary: There were 2 ERROR mes=
sages, returning a non-zero exit code.<br />ERROR: Failed to build project.=
 Check the /home/phil-wsl2-u2204/build/dgc219_nsg/dgc219/build/build.log fi=
le for more details...</div>
</div>
<div>&nbsp;</div>
<div>&nbsp;</div>
<div>(It looks like someone had a similar error for target mesa build in a =
Mar 26 message but they haven't posted details to get any assistance yet).<=
/div>
<div>&nbsp;</div>
<div>As far as I can tell nativesdk-llvm14.0.6 and nativesdk-llvm are in th=
e nativesdk-mesa recipe-sysroot providers and llvm-native and llvm14.0.6-na=
tive are in the nativesdk-mesa receipe-sysroot-native providers. I get a bi=
t mixed up when dealing with native/nativesdk builds and the vairous sysroo=
ts and I have no idea how meson detects llvm and why it's failing here. The=
 meson-log.txt doesn't seem provide any illumination (at least to my untrai=
ned eye).</div>
<div>&nbsp;</div>
<div>Do you have any idea how I can get this build working? Are there any m=
ore debug options I can enable to work out what meson is looking for exactl=
y and why it can't find it?</div>
<div>&nbsp;</div>
<div>Best Regards,</div>
<div>Phil Dawson</div>

--tFn3sWNzk9ELoTpXDTw9--

