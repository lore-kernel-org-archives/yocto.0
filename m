Return-Path: <email@matthias-proske.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C89C6E67489
	for <webhook@archiver.kernel.org>; Thu, 31 Oct 2024 22:14:00 +0000 (UTC)
Subject: qemu-system-native fails to build with buildtools and certain host packages installed
To: yocto@lists.yoctoproject.org
From: email@matthias-proske.de
X-Originating-Location: IN (113.30.220.108)
X-Originating-Platform: Linux Firefox 132
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 31 Oct 2024 15:13:51 -0700
Message-ID: <yEk0.1730412831404429463.HAFQ@lists.yoctoproject.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 31 Oct 2024 22:14:00 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64197

Hi everyone,

I have stumbled upon a build error when trying to build qemu-system-native =
when using buildtools.
I first saw it on an Arch Linux (I know, not supported architecture), but I=
 have also been able to reproduce it on Debian Bookworm, but only if the fo=
llowing packages have been installed on Debian

- pkg-config
- libkeyutils-dev

# . buildtools/environment-setup-x86_64-pokysdk-linux
[..]
# bitbake qemu-system-native
[..]
cryptodev-lkcf.c.o -MF libcommon.fa.p/backends_cryptodev-lkcf.c.o.d -o libc=
ommon.fa.p/backends_cryptodev-lkcf.c.o -c ../qemu-9.0.2/backends/cryptodev-=
lkcf.c
| ../qemu-9.0.2/backends/cryptodev-lkcf.c:36:10: fatal error: keyutils.h: N=
o such file or directory
|    36 | #include <keyutils.h>
|       |          ^~~~~~~~~~~~
| compilation terminated.

# $ ls /usr/include/keyutils.h=20
/usr/include/keyutils.h

If I build qemu-system-native without use of the buildtools, qemu-system-na=
tive builds. By the looks of it, it will also include keyutils, but will ha=
ppily take it from /usr/include.

From all that I could find, it is "normal" that qemu-system-native is a bit=
 special as it "needs to interface with host graphics".

For me the question is how to fix that:

Should the buildtools behave the same way as when using the normal GCC?
Should the recipe for qemu-system-native be adapted to include the system i=
nclude path? If you look at the recipe at qemu.inc, then the native pkg-con=
fig will be used if it exists.
Should the recipe for qemu-system-native be adapted to filter out libkeyuti=
ls? This doesn't seem to be straightforward as it is not an existing config=
ure switch.
Any other thoughts on that?

Thanks

Matthias

