Return-Path: <Ankita.AN@exaleapsemi.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0A275C3600D
	for <webhook@archiver.kernel.org>; Wed, 26 Mar 2025 07:07:27 +0000 (UTC)
Subject: mesa 22.3.5 build with custom patches  #kirkstone
To: yocto@lists.yoctoproject.org
From: Ankita.AN@exaleapsemi.com
X-Originating-Location: IN (49.249.95.238)
X-Originating-Platform: Linux Chrome 134
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 26 Mar 2025 00:07:22 -0700
Message-ID: <Dr9J.1742972842547375612.OugW@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="KEY9XD6DdabIAyc2SJp3"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 26 Mar 2025 07:07:27 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65019

--KEY9XD6DdabIAyc2SJp3
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,
I am trying to build mesa 22.3.5 with custom patches. I am getting issue as

>=20
> Message: libdrm 2.4.110 needed because amdgpu has the highest requirement
> | Run-time dependency libdrm_amdgpu found: YES 2.4.110
> | Run-time dependency libdrm_radeon found: YES 2.4.110
> | Run-time dependency libdrm_nouveau found: YES 2.4.110
> | Run-time dependency libdrm found: YES 2.4.110
> | *Run-time dependency libudev found: NO (tried pkgconfig and cmake)*
> | ../mesa-22.3.5/meson.build:1803: WARNING: shared_llvm option "true"
> deprecated, please use "enabled" instead.
> | ../mesa-22.3.5/meson.build:1816: WARNING: llvm option "true" deprecated=
,
> please use "enabled" instead.
> | WARNING: Ignoring LLVM CMake dependency because dynamic was requested
> | llvm-config found: YES
> (/home/ankita/Workspace/MArch/sources/build/tmp-glibc/work/riscv64-oe-lin=
ux/mesa/22.3.5-r0/recipe-sysroot-native/usr/bin/llvm-config13.0.1)
> 13.0.1
> | Run-time dependency LLVM (modules: amdgpu, asmparser, bitreader,
> bitwriter, core, engine, executionengine, instcombine, ipo,
> mcdisassembler, mcjit, native, scalaropts, transformutils, coroutines,
> lto) found: NO (tried cmake and config-tool)
> | Looking for a fallback subproject for the dependency llvm (modules:
> bitwriter, engine, mcdisassembler, mcjit, core, executionengine,
> scalaropts, transformutils, instcombine, amdgpu, bitreader, ipo,
> asmparser, native)
> | Building fallback subproject with default_library=3Dshared
> |
> *| ../mesa-22.3.5/meson.build:1835:2: ERROR: Neither a subproject
> directory nor a llvm.wrap file was found.*
> |
> | A full log can be found at
> /home/ankita/Workspace/MArch/sources/build/tmp-glibc/work/riscv64-oe-linu=
x/mesa/22.3.5-r0/build/meson-logs/meson-log.txt
>=20
> | ERROR: meson failed
> | WARNING:
> /home/ankita/Workspace/MArch/sources/build/tmp-glibc/work/riscv64-oe-linu=
x/mesa/22.3.5-r0/temp/run.do_configure.497608:191
> exit 1 from 'exit 1'
> | WARNING: Backtrace (BB generated script):
> | =C2=A0 =C2=A0 #1: bbfatal_log,
> /home/ankita/Workspace/MArch/sources/build/tmp-glibc/work/riscv64-oe-linu=
x/mesa/22.3.5-r0/temp/run.do_configure.497608,
> line 191
> | =C2=A0 =C2=A0 #2: meson_do_configure,
> /home/ankita/Workspace/MArch/sources/build/tmp-glibc/work/riscv64-oe-linu=
x/mesa/22.3.5-r0/temp/run.do_configure.497608,
> line 180
> | =C2=A0 =C2=A0 #3: do_configure,
> /home/ankita/Workspace/MArch/sources/build/tmp-glibc/work/riscv64-oe-linu=
x/mesa/22.3.5-r0/temp/run.do_configure.497608,
> line 156
> | =C2=A0 =C2=A0 #4: main,
> /home/ankita/Workspace/MArch/sources/build/tmp-glibc/work/riscv64-oe-linu=
x/mesa/22.3.5-r0/temp/run.do_configure.497608,
> line 204
> ERROR: Task
> (/home/ankita/Workspace/MArch/sources/meta-exaleap-nb2-private/recipes-gr=
aphics/mesa_22.3.5/mesa_22.3.5.bb:do_configure)
> failed with exit code '1'
> NOTE: Tasks Summary: Attempted 1376 tasks of which 1375 didn't need to be
> rerun and 1 failed.
> NOTE: Writing buildhistory
> NOTE: Writing buildhistory took: 5 seconds
> Summary: 1 task failed:
> /home/ankita/Workspace/MArch/sources/meta-exaleap-nb2-private/recipes-gra=
phics/mesa_22.3.5/mesa_22.3.5.bb:do_configure
>=20
> Summary: There were 138 WARNING messages.
> Summary: There were 2 ERROR messages, returning a non-zero exit code.
>=20

How can fix this isuue?

Thanks

--KEY9XD6DdabIAyc2SJp3
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Hi,</div>
<div>I am trying to build mesa 22.3.5 with custom patches. I am getting iss=
ue as&nbsp;</div>
<blockquote>
<div>
<div>Message: libdrm 2.4.110 needed because amdgpu has the highest requirem=
ent<br />| Run-time dependency libdrm_amdgpu found: YES 2.4.110<br />| Run-=
time dependency libdrm_radeon found: YES 2.4.110<br />| Run-time dependency=
 libdrm_nouveau found: YES 2.4.110<br />| Run-time dependency libdrm found:=
 YES 2.4.110<br />|<strong> Run-time dependency libudev found: NO (tried pk=
gconfig and cmake)</strong><br />| ../mesa-22.3.5/meson.build:1803: WARNING=
: shared_llvm option "true" deprecated, please use "enabled" instead.<br />=
| ../mesa-22.3.5/meson.build:1816: WARNING: llvm option "true" deprecated, =
please use "enabled" instead.<br />| WARNING: Ignoring LLVM CMake dependenc=
y because dynamic was requested<br />| llvm-config found: YES (/home/ankita=
/Workspace/MArch/sources/build/tmp-glibc/work/riscv64-oe-linux/mesa/22.3.5-=
r0/recipe-sysroot-native/usr/bin/llvm-config13.0.1) 13.0.1<br />| Run-time =
dependency LLVM (modules: amdgpu, asmparser, bitreader, bitwriter, core, en=
gine, executionengine, instcombine, ipo, mcdisassembler, mcjit, native, sca=
laropts, transformutils, coroutines, lto) found: NO (tried cmake and config=
-tool)<br />| Looking for a fallback subproject for the dependency llvm (mo=
dules: bitwriter, engine, mcdisassembler, mcjit, core, executionengine, sca=
laropts, transformutils, instcombine, amdgpu, bitreader, ipo, asmparser, na=
tive)<br />| Building fallback subproject with default_library=3Dshared<br =
/>|&nbsp;<br /><strong>| ../mesa-22.3.5/meson.build:1835:2: ERROR: Neither =
a subproject directory nor a llvm.wrap file was found.</strong><br />|&nbsp=
;<br />| A full log can be found at /home/ankita/Workspace/MArch/sources/bu=
ild/tmp-glibc/work/riscv64-oe-linux/mesa/22.3.5-r0/build/meson-logs/meson-l=
og.txt<br />| ERROR: meson failed<br />| WARNING: /home/ankita/Workspace/MA=
rch/sources/build/tmp-glibc/work/riscv64-oe-linux/mesa/22.3.5-r0/temp/run.d=
o_configure.497608:191 exit 1 from 'exit 1'<br />| WARNING: Backtrace (BB g=
enerated script):<br />| &nbsp; &nbsp; #1: bbfatal_log, /home/ankita/Worksp=
ace/MArch/sources/build/tmp-glibc/work/riscv64-oe-linux/mesa/22.3.5-r0/temp=
/run.do_configure.497608, line 191<br />| &nbsp; &nbsp; #2: meson_do_config=
ure, /home/ankita/Workspace/MArch/sources/build/tmp-glibc/work/riscv64-oe-l=
inux/mesa/22.3.5-r0/temp/run.do_configure.497608, line 180<br />| &nbsp; &n=
bsp; #3: do_configure, /home/ankita/Workspace/MArch/sources/build/tmp-glibc=
/work/riscv64-oe-linux/mesa/22.3.5-r0/temp/run.do_configure.497608, line 15=
6<br />| &nbsp; &nbsp; #4: main, /home/ankita/Workspace/MArch/sources/build=
/tmp-glibc/work/riscv64-oe-linux/mesa/22.3.5-r0/temp/run.do_configure.49760=
8, line 204<br />ERROR: Task (/home/ankita/Workspace/MArch/sources/meta-exa=
leap-nb2-private/recipes-graphics/mesa_22.3.5/mesa_22.3.5.bb:do_configure) =
failed with exit code '1'<br />NOTE: Tasks Summary: Attempted 1376 tasks of=
 which 1375 didn't need to be rerun and 1 failed.<br />NOTE: Writing buildh=
istory<br />NOTE: Writing buildhistory took: 5 seconds</div>
<div>Summary: 1 task failed:<br />&nbsp; /home/ankita/Workspace/MArch/sourc=
es/meta-exaleap-nb2-private/recipes-graphics/mesa_22.3.5/mesa_22.3.5.bb:do_=
configure<br />Summary: There were 138 WARNING messages.<br />Summary: Ther=
e were 2 ERROR messages, returning a non-zero exit code.</div>
</div>
</blockquote>
<div>&nbsp;</div>
<div><span data-teams=3D"true">How can fix this isuue?</span></div>
<div>&nbsp;</div>
<div>&nbsp;</div>
<div>&nbsp;</div>
<div><span data-teams=3D"true">Thanks</span></div>

--KEY9XD6DdabIAyc2SJp3--

