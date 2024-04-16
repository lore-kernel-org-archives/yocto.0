Return-Path: <jguittet.opensource@witekio.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 41834C4345F
	for <webhook@archiver.kernel.org>; Tue, 16 Apr 2024 14:50:42 +0000 (UTC)
Subject: Implicit RPROVIDES somewhere ?
To: yocto@lists.yoctoproject.org
From: "Joel GUITTET" <jguittet.opensource@witekio.com>
X-Originating-Location: FR (37.66.58.207)
X-Originating-Platform: Linux Chrome 123
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 16 Apr 2024 07:50:34 -0700
Message-ID: <vH8o.1713279034521726163.thkx@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="wA2BadUp59aGJQkshq5B"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 16 Apr 2024 14:50:42 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62937

--wA2BadUp59aGJQkshq5B
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello,

I have a target with multilib aarch64+arm.
I'm building a library "foo" that DEPENDS of library "bar". I need the libr=
ary "foo" to be installed in the rootfs, but not the library "bar" (for spe=
cific reason in my project).
The recipe of library "foo" DEPENDS of "bar" but no RDEPENDS is used.

arm arch: I observe that the library "foo" is installed in "/usr/lib", and =
library "bar" is not installed, as expected.
aarch64 arch:=C2=A0I observe that the library "foo" is installed in "/usr/l=
ib64", and library "bar" is installed in "/usr/lib64" as well, which is not=
 what I want !!

It seems there is like an implicit RDEPENDS there, but only for the aarch64=
 architecture.

I'm looking to the right configuration to do here and will appreciate any i=
nputs/topics to be checked in my project to progress on this.

Thanks
Joel

--wA2BadUp59aGJQkshq5B
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello,<br /><br />I have a target with multilib aarch64+arm.<br />I'm build=
ing a library "foo" that DEPENDS of library "bar". I need the library "foo"=
 to be installed in the rootfs, but not the library "bar" (for specific rea=
son in my project).<br />The recipe of library "foo" DEPENDS of "bar" but n=
o RDEPENDS is used.<br /><br />arm arch: I observe that the library "foo" i=
s installed in "/usr/lib", and library "bar" is not installed, as expected.=
<br />aarch64 arch:&nbsp;I observe that the library "foo" is installed in "=
/usr/lib64", and library "bar" is installed in "/usr/lib64" as well, which =
is not what I want !!<br /><br />It seems there is like an implicit RDEPEND=
S there, but only for the aarch64 architecture.<br /><br />I'm looking to t=
he right configuration to do here and will appreciate any inputs/topics to =
be checked in my project to progress on this.<br /><br />Thanks<br />Joel

--wA2BadUp59aGJQkshq5B--

