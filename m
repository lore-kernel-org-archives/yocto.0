Return-Path: <hrsourabh011@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 08DABC433EF
	for <webhook@archiver.kernel.org>; Mon, 21 Feb 2022 13:14:13 +0000 (UTC)
Subject: coreutils-native-8.32-r0 do_configure: configure failed
To: yocto@lists.yoctoproject.org
From: "Sourabh Hegde" <hrsourabh011@gmail.com>
X-Originating-Location: Sesslach, Bavaria, DE (217.24.55.250)
X-Originating-Platform: Windows Firefox 91
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 21 Feb 2022 05:14:12 -0800
Message-ID: <FtDJ.1645449252258283472.8QNX@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="Q8helbnUWOBU5JgyE67V"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 21 Feb 2022 13:14:13 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56221

--Q8helbnUWOBU5JgyE67V
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello All,

I am facing an issue while building images for Raspberry Pi CM4. Earlier I =
was working with Dunfell release and now upgraded to Honister. And now I am=
 getting an error like:

.
.
checking whether mkdir handles trailing slash... yes
checking whether mkdir handles trailing dot... yes
checking for mkfifo... yes
checking whether mkfifo rejects trailing slashes... yes
checking whether mknod can create fifo without root privileges... configure=
: error: in `/home/raspcm4/build-rauc/tmp-glibc/work/x86_64-linux/coreutils=
-native/8.32-r0/build':
configure: error: you should not run configure as root (set FORCE_UNSAFE_CO=
NFIGURE=3D1 in environment to bypass this check)
See `config.log' for more details
NOTE: The following config.log files may provide further information.
NOTE: /home/raspcm4/build-rauc/tmp-glibc/work/x86_64-linux/coreutils-native=
/8.32-r0/build/config.log
ERROR: configure failed
WARNING: exit code 1 from a shell command.
.
.

I have set "export FORCE_UNSAFE_CONFIGURE=3D1" but still getting same error=
.

I am building from "/home/ dir and not "/root/" dir.

Can someone please let me know how to resolve this issue?

Your help will be much appreciated.

Thanks in advance.

--Q8helbnUWOBU5JgyE67V
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello All,<br /><br />I am facing an issue while building images for Raspbe=
rry Pi CM4. Earlier I was working with Dunfell release and now upgraded to =
Honister. And now I am getting an error like:<br /><br />.<br />.<br />chec=
king whether mkdir handles trailing slash... yes<br />checking whether mkdi=
r handles trailing dot... yes<br />checking for mkfifo... yes<br />checking=
 whether mkfifo rejects trailing slashes... yes<br />checking whether mknod=
 can create fifo without root privileges... configure: error: in `/home/ras=
pcm4/build-rauc/tmp-glibc/work/x86_64-linux/coreutils-native/8.32-r0/build'=
:<br />configure: error: you should not run configure as root (set FORCE_UN=
SAFE_CONFIGURE=3D1 in environment to bypass this check)<br />See `config.lo=
g' for more details<br />NOTE: The following config.log files may provide f=
urther information.<br />NOTE: /home/raspcm4/build-rauc/tmp-glibc/work/x86_=
64-linux/coreutils-native/8.32-r0/build/config.log<br />ERROR: configure fa=
iled<br />WARNING: exit code 1 from a shell command.<br />.<br />.<br /><br=
 />I have set "export FORCE_UNSAFE_CONFIGURE=3D1" but still getting same er=
ror.<br /><br />I am building from "/home/ dir and not "/root/" dir.<br /><=
br />Can someone please let me know how to resolve this issue?<br /><br />Y=
our help will be much appreciated.<br /><br />Thanks in advance.

--Q8helbnUWOBU5JgyE67V--

