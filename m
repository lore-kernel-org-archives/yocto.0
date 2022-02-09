Return-Path: <hrsourabh011@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF5C6C433EF
	for <webhook@archiver.kernel.org>; Wed,  9 Feb 2022 14:54:22 +0000 (UTC)
Subject: Error: Transaction check error: while doing do_rootfs task
To: yocto@lists.yoctoproject.org
From: "Sourabh Hegde" <hrsourabh011@gmail.com>
X-Originating-Location: Sesslach, Bavaria, DE (217.24.55.250)
X-Originating-Platform: Windows Firefox 91
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 09 Feb 2022 06:54:22 -0800
Message-ID: <Q8ra.1644418462082229338.hNo2@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0EA8yWZxIq2E3wrhisny"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 09 Feb 2022 14:54:22 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56118

--0EA8yWZxIq2E3wrhisny
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello All,

While bitbaking an image recipe with systemd configured in "local.conf", I =
am facing an error while doing do_rootfs task.

In the local.conf :

DISTRO_FEATURES_append =3D " systemd"
#DISTRO_FEATURES_BACKFILL_CONSIDERED +=3D "sysvinit"
VIRTUAL-RUNTIME_init_manager =3D "systemd"
VIRTUAL-RUNTIME_initscripts =3D "systemd-compat-units"

Bitbake error:
.
.
Transaction check succeeded.
Running transaction test
Error: Transaction check error:
file /sbin/telinit conflicts between attempted installs of sysvinit-2.96-r0=
.cortexa7t2hf_neon_vfpv4 and systemd-1:244.5-r0.cortexa7t2hf_neon_vfpv4

I was not facing this error before without systemd.

Can anyone please let me know how to resolve this error and what does this =
error mean?

Your help will be much appreciated.

Thanks in advance

P.S: If I uncomment DISTRO_FEATURES_BACKFILL_CONSIDERED +=3D "sysvinit" in =
local.conf I get below error:

ERROR: Nothing RPROVIDES 'sysvinit' (but [...]/core-image-swupdate.bb RDEPE=
NDS on or otherwise requires it)
sysvinit was skipped: missing required distro feature 'sysvinit' (not in DI=
STRO_FEATURES)

--0EA8yWZxIq2E3wrhisny
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello All,<br /><br />While bitbaking an image recipe with systemd configur=
ed in "local.conf", I am facing an error while doing do_rootfs task.<br /><=
br />In the local.conf :<br /><br />DISTRO_FEATURES_append =3D " systemd"<b=
r />#DISTRO_FEATURES_BACKFILL_CONSIDERED +=3D "sysvinit"<br />VIRTUAL-RUNTI=
ME_init_manager =3D "systemd"<br />VIRTUAL-RUNTIME_initscripts =3D "systemd=
-compat-units"<br /><br />Bitbake error:<br />.<br />.<br />Transaction che=
ck succeeded.<br />Running transaction test<br />Error: Transaction check e=
rror:<br />&nbsp; file /sbin/telinit conflicts between attempted installs o=
f sysvinit-2.96-r0.cortexa7t2hf_neon_vfpv4 and systemd-1:244.5-r0.cortexa7t=
2hf_neon_vfpv4<br /><br />I was not facing this error before without system=
d. <br /><br />Can anyone please let me know how to resolve this error and =
what does this error mean?<br /><br />Your help will be much appreciated.<b=
r /><br />Thanks in advance<br /><br />P.S: If I uncomment DISTRO_FEATURES_=
BACKFILL_CONSIDERED +=3D "sysvinit" in local.conf I get below error:<br /><=
br />ERROR: Nothing RPROVIDES 'sysvinit' (but [...]/core-image-swupdate.bb =
RDEPENDS on or otherwise requires it)<br />sysvinit was skipped: missing re=
quired distro feature 'sysvinit' (not in DISTRO_FEATURES)

--0EA8yWZxIq2E3wrhisny--

