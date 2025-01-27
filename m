Return-Path: <ganesh.manoj.mahajan@signify.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EAFFCC02188
	for <webhook@archiver.kernel.org>; Mon, 27 Jan 2025 11:30:39 +0000 (UTC)
Subject: [scarthgap]- unable to build image due to Nothing Provides error
To: yocto@lists.yoctoproject.org
From: "Ganesh Mahajan" <ganesh.manoj.mahajan@signify.com>
X-Originating-Location: IN (165.225.124.181)
X-Originating-Platform: Windows Chrome 131
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 27 Jan 2025 03:30:30 -0800
Message-ID: <4UEu.1737977430670649281.aO8G@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="rhCVpHalHIz8FTWDAEUT"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 27 Jan 2025 11:30:39 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64636

--rhCVpHalHIz8FTWDAEUT
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Team,
I am migrating from dunfell to scarthgap when i try to build image face bel=
ow error.

ERROR: Nothing RPROVIDES 'packagegroup-base-ext2' (but /home/build/project/=
meta/recipes-core/packagegroups/packagegroup-base.bb RDEPENDS on or otherwi=
se requires it)
No eligible RPROVIDERs exist for 'packagegroup-base-ext2'
NOTE: Runtime target 'packagegroup-base-ext2' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['packagegroup-base-ext2']

Command to build: =C2=A0bitbake -k wac-core-image
above error is for multiple packages in packagegroups/packagegroup-base.bb
packagegroup-base-( bluetooth, keyboard, ipv6, wifi, usbhost, zeroconf, nfs=
, distro-base, vfat

In systemd
ERROR: Nothing RPROVIDES 'util-linux-swaponoff' (but /home/build/project/me=
ta/recipes-core/systemd/systemd_255.4.bb RDEPENDS on or otherwise requires =
it)
No eligible RPROVIDERs exist for 'util-linux-swaponoff'

udev-hwdb, systemd-journal-gatewayd, pam-plugin-unix, pam-plugin-unix many =
more.

I went through the packagegroup-base.bb of dunfell and scarthgap PROVIDES =
=3D "${PACKAGES}" is missing in scarthgap(But that might have no issue)
I am mission something in case of syntax or configuration.

For syntax change i did execute the convert script on my custom layer.
Any help is appreciated.

Ganesh Mahajan

--rhCVpHalHIz8FTWDAEUT
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Hi Team,<br />I am migrating from dunfell to scarthgap when i try to b=
uild image face below error.<br /><br />ERROR: Nothing RPROVIDES 'packagegr=
oup-base-ext2' (but /home/build/project/meta/recipes-core/packagegroups/pac=
kagegroup-base.bb RDEPENDS on or otherwise requires it)<br />No eligible RP=
ROVIDERs exist for 'packagegroup-base-ext2'<br />NOTE: Runtime target 'pack=
agegroup-base-ext2' is unbuildable, removing...<br />Missing or unbuildable=
 dependency chain was: ['packagegroup-base-ext2']<br /><br />Command to bui=
ld: &nbsp;bitbake -k wac-core-image&nbsp;<br />above error is for multiple =
packages in packagegroups/packagegroup-base.bb&nbsp;<br />packagegroup-base=
-( bluetooth, keyboard, ipv6, wifi, usbhost, zeroconf, nfs, distro-base, vf=
at<br /><br />In systemd&nbsp;<br />ERROR: Nothing RPROVIDES 'util-linux-sw=
aponoff' (but /home/build/project/meta/recipes-core/systemd/systemd_255.4.b=
b RDEPENDS on or otherwise requires it)<br />No eligible RPROVIDERs exist f=
or 'util-linux-swaponoff'<br /><br />udev-hwdb, systemd-journal-gatewayd, p=
am-plugin-unix, pam-plugin-unix many more.<br /><br />I went through the pa=
ckagegroup-base.bb of dunfell and scarthgap PROVIDES =3D "${PACKAGES}" is m=
issing in scarthgap(But that might have no issue)<br />I am mission somethi=
ng in case of syntax or configuration.<br /><br />For syntax change i did e=
xecute the convert script on my custom layer.&nbsp;<br />Any help is apprec=
iated.<br /><br />Ganesh Mahajan</div>

--rhCVpHalHIz8FTWDAEUT--

