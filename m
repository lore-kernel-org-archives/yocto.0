Return-Path: <sateesh0457@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 10E34C28B20
	for <webhook@archiver.kernel.org>; Wed,  2 Apr 2025 03:45:37 +0000 (UTC)
Subject: GLIBCXX_3.4.30' not found 
To: yocto@lists.yoctoproject.org
From: "sateesh m" <sateesh0457@gmail.com>
X-Originating-Location: Hyderabad, Telangana, IN (14.98.167.76)
X-Originating-Platform: Linux Firefox 113
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 01 Apr 2025 20:45:28 -0700
Message-ID: <CcNo.1743565528100991148.iVuz@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="mT8huB5JCzPs7xgjyf01"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 02 Apr 2025 03:45:37 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65052

--mT8huB5JCzPs7xgjyf01
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Team,

I am facing an issue with 'GLIBCXX_3.4.30' not found. I am using Ubuntu 18.=
04 with GCC and G++ version 7.5. Previously, my build included BusyBox vers=
ion 1.31, but I now want to upgrade to version 1.35. I manually integrated =
the latest version using BitBake, and it compiled successfully. However, wh=
ile building the entire image, I encountered the mentioned issue. Before up=
grading BusyBox, my build was successful, but after upgrading, I see this i=
ssue during compilation. What could be the reason, and how can I fix this?

/hdd/c_Basic/subcore/build/tcc8030-sub/tmp/work/x86_64-linux/cmake-native/3=
.16.5-r0/cmake-3.16.5/Tests/CMakeLib /home/p_6012115/hdd/c_Basic/subcore/bu=
ild/tcc8030-sub/tmp/work/x86_64-linux/cmake-native/3.16.5-r0/build /home/p_=
6012115/hdd/c_Basic/subcore/build/tcc8030-sub/tmp/work/x86_64-linux/cmake-n=
ative/3.16.5-r0/build/Tests/CMakeLib /home/p_6012115/hdd/c_Basic/subcore/bu=
ild/tcc8030-sub/tmp/work/x86_64-linux/cmake-native/3.16.5-r0/build/Tests/CM=
akeLib/CMakeFiles/CMakeLibTests.dir/DependInfo.cmake --color=3D
| make[2]: Leaving directory '/home/p_6012115/hdd/c_Basic/subcore/build/tcc=
8030-sub/tmp/work/x86_64-linux/cmake-native/3.16.5-r0/build'
| make -f Source/CMakeFiles/ctest.dir/build.make Source/CMakeFiles/ctest.di=
r/build
| make[2]: Leaving directory '/home/p_6012115/hdd/c_Basic/subcore/build/tcc=
8030-sub/tmp/work/x86_64-linux/cmake-native/3.16.5-r0/build'
| make -f Tests/CMakeLib/CMakeFiles/CMakeLibTests.dir/build.make Tests/CMak=
eLib/CMakeFiles/CMakeLibTests.dir/build
| make[2]: Leaving directory '/home/p_6012115/hdd/c_Basic/subcore/build/tcc=
8030-sub/tmp/work/x86_64-linux/cmake-native/3.16.5-r0/build'
| make -f Tests/RunCMake/CMakeFiles/ctresalloc.dir/build.make Tests/RunCMak=
e/CMakeFiles/ctresalloc.dir/build
| make[2]: Entering directory '/home/p_6012115/hdd/c_Basic/subcore/build/tc=
c8030-sub/tmp/work/x86_64-linux/cmake-native/3.16.5-r0/build'
| make[2]: Nothing to be done for 'Source/CMakeFiles/ctest.dir/build'.
| make[2]: Leaving directory '/home/p_6012115/hdd/c_Basic/subcore/build/tcc=
8030-sub/tmp/work/x86_64-linux/cmake-native/3.16.5-r0/build'
| make[2]: Entering directory '/home/p_6012115/hdd/c_Basic/subcore/build/tc=
c8030-sub/tmp/work/x86_64-linux/cmake-native/3.16.5-r0/build'
| make[2]: Nothing to be done for 'Tests/CMakeLib/CMakeFiles/CMakeLibTests.=
dir/build'.
| make[2]: Leaving directory '/home/p_6012115/hdd/c_Basic/subcore/build/tcc=
8030-sub/tmp/work/x86_64-linux/cmake-native/3.16.5-r0/build'
| make[2]: Entering directory '/home/p_6012115/hdd/c_Basic/subcore/build/tc=
c8030-sub/tmp/work/x86_64-linux/cmake-native/3.16.5-r0/build'
| make[2]: Nothing to be done for 'Tests/RunCMake/CMakeFiles/ctresalloc.dir=
/build'.
| make[2]: Leaving directory '/home/p_6012115/hdd/c_Basic/subcore/build/tcc=
8030-sub/tmp/work/x86_64-linux/cmake-native/3.16.5-r0/build'
| [ 96%] Built target ctest
| [ 97%] Built target ctresalloc
| [100%] Built target CMakeLibTests
| make[1]: Leaving directory '/home/p_6012115/hdd/c_Basic/subcore/build/tcc=
8030-sub/tmp/work/x86_64-linux/cmake-native/3.16.5-r0/build'
| /home/p_6012115/hdd/c_Basic/subcore/build/tcc8030-sub/tmp/work/x86_64-lin=
ux/cmake-native/3.16.5-r0/build/Bootstrap.cmk/cmake -E cmake_progress_start=
 /home/p_6012115/hdd/ccNC_Basic/subcore/build/tcc8030-sub/tmp/work/x86_64-l=
inux/cmake-native/3.16.5-r0/build/CMakeFiles 0
| make -f CMakeFiles/Makefile2 preinstall
| make[1]: Entering directory '/home/p_6012115/hdd/c_Basic/subcore/build/tc=
c8030-sub/tmp/work/x86_64-linux/cmake-native/3.16.5-r0/build'
| make[1]: Nothing to be done for 'preinstall'.
| make[1]: Leaving directory '/home/p_6012115/hdd/c_Basic/subcore/build/tcc=
8030-sub/tmp/work/x86_64-linux/cmake-native/3.16.5-r0/build'
| Install the project...
| bin/cmake -P cmake_install.cmake
*| bin/cmake: /home/p_6012115/hdd/c_Basic/subcore/build/tcc8030-sub/tmp/sys=
roots-uninative/x86_64-linux/usr/lib/libstdc++.so.6: version `GLIBCXX_3.4.3=
0' not found (required by bin/cmake)*
*| Makefile:142: recipe for target 'install' failed*
| make: *** [install] Error 1
| WARNING: /home/p_6012115/hdd/c_Basic/subcore/build/tcc8030-sub/tmp/work/x=
86_64-linux/cmake-native/3.16.5-r0/temp/run.do_install.24788:1 exit 1 from =
'exit 1'
|
ERROR: Task (/home/p_6012115/hdd/c_Basic/subcore/poky/meta/recipes-devtools=
/cmake/cmake-native_3.16.5.bb:do_install) failed with exit code '1'
NOTE: Tasks Summary: Attempted 1314 tasks of which 1309 didn't need to be r=
erun and 1 failed.
NOTE: Writing buildhistory
NOTE: Writing buildhistory took: 0 seconds
Summary: 1 task failed:
/home/p_6012115/hdd/c_Basic/subcore/poky/meta/recipes-devtools/cmake/cmake-=
native_3.16.5.bb:do_install

Thanks in advance.

Regards,
Sateesh

--mT8huB5JCzPs7xgjyf01
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Hi Team,</div>
<div>&nbsp;</div>
<div>I am facing an issue with 'GLIBCXX_3.4.30' not found. I am using Ubunt=
u 18.04 with GCC and G++ version 7.5. Previously, my build included BusyBox=
 version 1.31, but I now want to upgrade to version 1.35. I manually integr=
ated the latest version using BitBake, and it compiled successfully. Howeve=
r, while building the entire image, I encountered the mentioned issue. Befo=
re upgrading BusyBox, my build was successful, but after upgrading, I see t=
his issue during compilation. What could be the reason, and how can I fix t=
his?</div>
<div>&nbsp;</div>
<div>
<div>/hdd/c_Basic/subcore/build/tcc8030-sub/tmp/work/x86_64-linux/cmake-nat=
ive/3.16.5-r0/cmake-3.16.5/Tests/CMakeLib /home/p_6012115/hdd/c_Basic/subco=
re/build/tcc8030-sub/tmp/work/x86_64-linux/cmake-native/3.16.5-r0/build /ho=
me/p_6012115/hdd/c_Basic/subcore/build/tcc8030-sub/tmp/work/x86_64-linux/cm=
ake-native/3.16.5-r0/build/Tests/CMakeLib /home/p_6012115/hdd/c_Basic/subco=
re/build/tcc8030-sub/tmp/work/x86_64-linux/cmake-native/3.16.5-r0/build/Tes=
ts/CMakeLib/CMakeFiles/CMakeLibTests.dir/DependInfo.cmake --color=3D<br />|=
 make[2]: Leaving directory '/home/p_6012115/hdd/c_Basic/subcore/build/tcc8=
030-sub/tmp/work/x86_64-linux/cmake-native/3.16.5-r0/build'<br />| make -f =
Source/CMakeFiles/ctest.dir/build.make Source/CMakeFiles/ctest.dir/build<br=
 />| make[2]: Leaving directory '/home/p_6012115/hdd/c_Basic/subcore/build/=
tcc8030-sub/tmp/work/x86_64-linux/cmake-native/3.16.5-r0/build'<br />| make=
 -f Tests/CMakeLib/CMakeFiles/CMakeLibTests.dir/build.make Tests/CMakeLib/C=
MakeFiles/CMakeLibTests.dir/build<br />| make[2]: Leaving directory '/home/=
p_6012115/hdd/c_Basic/subcore/build/tcc8030-sub/tmp/work/x86_64-linux/cmake=
-native/3.16.5-r0/build'<br />| make -f Tests/RunCMake/CMakeFiles/ctresallo=
c.dir/build.make Tests/RunCMake/CMakeFiles/ctresalloc.dir/build<br />| make=
[2]: Entering directory '/home/p_6012115/hdd/c_Basic/subcore/build/tcc8030-=
sub/tmp/work/x86_64-linux/cmake-native/3.16.5-r0/build'<br />| make[2]: Not=
hing to be done for 'Source/CMakeFiles/ctest.dir/build'.<br />| make[2]: Le=
aving directory '/home/p_6012115/hdd/c_Basic/subcore/build/tcc8030-sub/tmp/=
work/x86_64-linux/cmake-native/3.16.5-r0/build'<br />| make[2]: Entering di=
rectory '/home/p_6012115/hdd/c_Basic/subcore/build/tcc8030-sub/tmp/work/x86=
_64-linux/cmake-native/3.16.5-r0/build'<br />| make[2]: Nothing to be done =
for 'Tests/CMakeLib/CMakeFiles/CMakeLibTests.dir/build'.<br />| make[2]: Le=
aving directory '/home/p_6012115/hdd/c_Basic/subcore/build/tcc8030-sub/tmp/=
work/x86_64-linux/cmake-native/3.16.5-r0/build'<br />| make[2]: Entering di=
rectory '/home/p_6012115/hdd/c_Basic/subcore/build/tcc8030-sub/tmp/work/x86=
_64-linux/cmake-native/3.16.5-r0/build'<br />| make[2]: Nothing to be done =
for 'Tests/RunCMake/CMakeFiles/ctresalloc.dir/build'.<br />| make[2]: Leavi=
ng directory '/home/p_6012115/hdd/c_Basic/subcore/build/tcc8030-sub/tmp/wor=
k/x86_64-linux/cmake-native/3.16.5-r0/build'<br />| [ 96%] Built target cte=
st<br />| [ 97%] Built target ctresalloc<br />| [100%] Built target CMakeLi=
bTests<br />| make[1]: Leaving directory '/home/p_6012115/hdd/c_Basic/subco=
re/build/tcc8030-sub/tmp/work/x86_64-linux/cmake-native/3.16.5-r0/build'<br=
 />| /home/p_6012115/hdd/c_Basic/subcore/build/tcc8030-sub/tmp/work/x86_64-=
linux/cmake-native/3.16.5-r0/build/Bootstrap.cmk/cmake -E cmake_progress_st=
art /home/p_6012115/hdd/ccNC_Basic/subcore/build/tcc8030-sub/tmp/work/x86_6=
4-linux/cmake-native/3.16.5-r0/build/CMakeFiles 0<br />| make -f CMakeFiles=
/Makefile2 preinstall<br />| make[1]: Entering directory '/home/p_6012115/h=
dd/c_Basic/subcore/build/tcc8030-sub/tmp/work/x86_64-linux/cmake-native/3.1=
6.5-r0/build'<br />| make[1]: Nothing to be done for 'preinstall'.<br />| m=
ake[1]: Leaving directory '/home/p_6012115/hdd/c_Basic/subcore/build/tcc803=
0-sub/tmp/work/x86_64-linux/cmake-native/3.16.5-r0/build'<br />| Install th=
e project...<br />| bin/cmake -P cmake_install.cmake<br /><strong>| bin/cma=
ke: /home/p_6012115/hdd/c_Basic/subcore/build/tcc8030-sub/tmp/sysroots-unin=
ative/x86_64-linux/usr/lib/libstdc++.so.6: version `GLIBCXX_3.4.30' not fou=
nd (required by bin/cmake)</strong><br /><strong>| Makefile:142: recipe for=
 target 'install' failed</strong><br />| make: *** [install] Error 1<br />|=
 WARNING: /home/p_6012115/hdd/c_Basic/subcore/build/tcc8030-sub/tmp/work/x8=
6_64-linux/cmake-native/3.16.5-r0/temp/run.do_install.24788:1 exit 1 from '=
exit 1'<br />|&nbsp;<br />ERROR: Task (/home/p_6012115/hdd/c_Basic/subcore/=
poky/meta/recipes-devtools/cmake/cmake-native_3.16.5.bb:do_install) failed =
with exit code '1'<br />NOTE: Tasks Summary: Attempted 1314 tasks of which =
1309 didn't need to be rerun and 1 failed.<br />NOTE: Writing buildhistory<=
br />NOTE: Writing buildhistory took: 0 seconds</div>
<div>Summary: 1 task failed:<br />&nbsp; /home/p_6012115/hdd/c_Basic/subcor=
e/poky/meta/recipes-devtools/cmake/cmake-native_3.16.5.bb:do_install</div>
<div>&nbsp;</div>
<div>Thanks in advance.</div>
<div>&nbsp;</div>
<div>Regards,</div>
<div>Sateesh</div>
</div>

--mT8huB5JCzPs7xgjyf01--

