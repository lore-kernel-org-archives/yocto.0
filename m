Return-Path: <mahendrasondagar08@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 196BBC77B73
	for <webhook@archiver.kernel.org>; Wed, 24 May 2023 12:04:35 +0000 (UTC)
Subject: libstdc++.so.6: version `GLIBCXX_3.4.30' not found (required by bin/cmake) #hardknott
To: yocto@lists.yoctoproject.org
From: "Mahendra Sondagar" <mahendrasondagar08@gmail.com>
X-Originating-Location: Surat, Gujarat, IN (103.238.13.196)
X-Originating-Platform: Linux Chrome 112
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 24 May 2023 05:04:30 -0700
Message-ID: <FdMa.1684929870726192226.1anj@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="G7Qsm2URR0Eq0PihiSen"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 24 May 2023 12:04:35 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60109

--G7Qsm2URR0Eq0PihiSen
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi.. community

Hope all are doing well

I'm dealing with the Yocto hardknott with my Ubuntu host

The Ubuntu version is=C2=A0Ubuntu 22.04.2 LTS

During the building of the custom image, everything goes well until the bui=
ld process hits the below error message

| make=C2=A0 -f CMakeFiles/Makefile2 preinstall

| make[1]: Entering directory '/home/aio/AIO_Systems_Yocto/var-fslc-yocto/b=
uild_aio/tmp/work/x86_64-linux/cmake-native/3.19.5-r0/build'

| make[1]: Nothing to be done for 'preinstall'.

| make[1]: Leaving directory '/home/aio/AIO_Systems_Yocto/var-fslc-yocto/bu=
ild_aio/tmp/work/x86_64-linux/cmake-native/3.19.5-r0/build'

| ERROR: oe_runmake failed

| Install the project...

| bin/cmake -P cmake_install.cmake

| WARNING: exit code 1 from a shell command.

| bin/cmake: /home/aio/AIO_Systems_Yocto/var-fslc-yocto/build_aio/tmp/sysro=
ots-uninative/x86_64-linux/usr/lib/libstdc++.so.6: version `GLIBCXX_3.4.30'=
 not found (required by bin/cmake)

| make: *** [Makefile:162: install] Error 1

| ERROR: ExecutionError('/home/aio/AIO_Systems_Yocto/var-fslc-yocto/build_a=
io/tmp/work/x86_64-linux/cmake-native/3.19.5-r0/temp/run.do_install.194605'=
, 1, None, None)

for instance, I have also verified the installed version of the GLIBC via t=
he below command

strings /usr/lib/x86_64-linux-gnu/libstdc++.so.6 | grep GLIBCXX

From where I got to know that, it's already installed!

Can anyone help me here to resolve the issue?

All comments and suggestions welcome

Thanks
Mahendra

--G7Qsm2URR0Eq0PihiSen
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p>Hi.. community&nbsp;</p>
<p>Hope all are doing well&nbsp;</p>
<p>&nbsp;</p>
<p>I'm dealing with the Yocto hardknott with my Ubuntu host&nbsp;</p>
<p>The Ubuntu version is&nbsp;Ubuntu 22.04.2 LTS</p>
<p>&nbsp;</p>
<p>During the building of the custom image, everything goes well until the =
build process hits the below error message&nbsp;</p>
<p>&nbsp;</p>
<p>| make&nbsp; -f CMakeFiles/Makefile2 preinstall</p>
<p>| make[1]: Entering directory '/home/aio/AIO_Systems_Yocto/var-fslc-yoct=
o/build_aio/tmp/work/x86_64-linux/cmake-native/3.19.5-r0/build'</p>
<p>| make[1]: Nothing to be done for 'preinstall'.</p>
<p>| make[1]: Leaving directory '/home/aio/AIO_Systems_Yocto/var-fslc-yocto=
/build_aio/tmp/work/x86_64-linux/cmake-native/3.19.5-r0/build'</p>
<p>| ERROR: oe_runmake failed</p>
<p>| Install the project...</p>
<p>| bin/cmake -P cmake_install.cmake</p>
<p>| WARNING: exit code 1 from a shell command.</p>
<p>| bin/cmake: /home/aio/AIO_Systems_Yocto/var-fslc-yocto/build_aio/tmp/sy=
sroots-uninative/x86_64-linux/usr/lib/libstdc++.so.6: version `GLIBCXX_3.4.=
30' not found (required by bin/cmake)</p>
<p>| make: *** [Makefile:162: install] Error 1</p>
<p>| ERROR: ExecutionError('/home/aio/AIO_Systems_Yocto/var-fslc-yocto/buil=
d_aio/tmp/work/x86_64-linux/cmake-native/3.19.5-r0/temp/run.do_install.1946=
05', 1, None, None)</p>
<p>&nbsp;</p>
<p>for instance, I have also verified the installed version of the GLIBC vi=
a the below command&nbsp;</p>
<p><span style=3D"color: #232629; font-family: ui-monospace, 'Cascadia Mono=
', 'Segoe UI Mono', 'Liberation Mono', Menlo, Monaco, Consolas, monospace; =
font-size: 13px; white-space: pre-wrap; background-color: #e3e6e8;">strings=
 /usr/lib/x86_64-linux-gnu/libstdc++.so.6 | grep GLIBCXX</span></p>
<p>&nbsp;</p>
<p><span style=3D"color: #232629; font-family: ui-monospace, 'Cascadia Mono=
', 'Segoe UI Mono', 'Liberation Mono', Menlo, Monaco, Consolas, monospace; =
font-size: 13px; white-space: pre-wrap; background-color: #e3e6e8;">From wh=
ere I got to know that, it's already installed!</span></p>
<p>&nbsp;</p>
<p>Can anyone help me here to resolve the issue?</p>
<p>All comments and suggestions welcome&nbsp;&nbsp;</p>
<p>&nbsp;</p>
<p>Thanks&nbsp;<br />Mahendra&nbsp;</p>

--G7Qsm2URR0Eq0PihiSen--

