Return-Path: <ganesh.manoj.mahajan@signify.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A99AC0218D
	for <webhook@archiver.kernel.org>; Tue, 28 Jan 2025 05:30:15 +0000 (UTC)
Subject: [scarthgap] Package group error synaptics-killswitch' which is not listed in your LICENSE_FLAGS_ACCEPTED.  #scarthgap #yocto
To: yocto@lists.yoctoproject.org
From: "Ganesh Mahajan" <ganesh.manoj.mahajan@signify.com>
X-Originating-Location: IN (165.225.124.177)
X-Originating-Platform: Windows Chrome 131
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 27 Jan 2025 21:30:05 -0800
Message-ID: <SaLs.1738042205514213819.y6WO@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="gbud2iZ6N8ydbFitaLFj"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 28 Jan 2025 05:30:15 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64655

--gbud2iZ6N8ydbFitaLFj
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

When tried to build image for scarthgap facing below error

ERROR: Nothing RPROVIDES 'linux-firmware-rpidistro-bcm43455' (but /home/bui=
ld/project/meta/recipes-core/packagegroups/packagegroup-base.bb RDEPENDS on=
 or otherwise requires it)
linux-firmware-rpidistro RPROVIDES linux-firmware-rpidistro-bcm43455 but wa=
s skipped: Has a restricted license 'synaptics-killswitch' which is not lis=
ted in your LICENSE_FLAGS_ACCEPTED.
NOTE: Runtime target 'linux-firmware-rpidistro-bcm43455' is unbuildable, re=
moving...
Missing or unbuildable dependency chain was: ['linux-firmware-rpidistro-bcm=
43455']
NOTE: Runtime target 'packagegroup-base-extended' is unbuildable, removing.=
..
Missing or unbuildable dependency chain was: ['packagegroup-base-extended',=
 'linux-firmware-rpidistro-bcm43455']
NOTE: Runtime target 'wac-core-image' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['wac-core-image', 'packagegro=
up-base-extended', 'linux-firmware-rpidistro-bcm43455']
NOTE: Runtime target 'packagegroup-base-ext2' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['packagegroup-base-ext2', 'li=
nux-firmware-rpidistro-bcm43455']
NOTE: Runtime target 'packagegroup-distro-base' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['packagegroup-distro-base', '=
linux-firmware-rpidistro-bcm43455']
NOTE: Runtime target 'packagegroup-base-vfat' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['packagegroup-base-vfat', 'li=
nux-firmware-rpidistro-bcm43455']
NOTE: Runtime target 'packagegroup-base-nfs' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['packagegroup-base-nfs', 'lin=
ux-firmware-rpidistro-bcm43455']
NOTE: Runtime target 'packagegroup-base-wifi' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['packagegroup-base-wifi', 'li=
nux-firmware-rpidistro-bcm43455']
NOTE: Runtime target 'packagegroup-base-bluetooth' is unbuildable, removing=
...
Missing or unbuildable dependency chain was: ['packagegroup-base-bluetooth'=
, 'linux-firmware-rpidistro-bcm43455']

When tried to find the error came across a doc. https://meta-raspberrypi.re=
adthedocs.io/en/latest/ipcompliance.html#linux-firmware-rpidistro
which says it may be riskier if we go ahead with synaptics-killswitch=C2=A0=
 which may lead to leagal issues ahead.

Ganesh Mahajan

--gbud2iZ6N8ydbFitaLFj
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>When tried to build image for scarthgap facing below error<br /><br />=
ERROR: Nothing RPROVIDES 'linux-firmware-rpidistro-bcm43455' (but /home/bui=
ld/project/meta/recipes-core/packagegroups/packagegroup-base.bb RDEPENDS on=
 or otherwise requires it)<br />linux-firmware-rpidistro RPROVIDES linux-fi=
rmware-rpidistro-bcm43455 but was skipped: Has a restricted license 'synapt=
ics-killswitch' which is not listed in your LICENSE_FLAGS_ACCEPTED.<br />NO=
TE: Runtime target 'linux-firmware-rpidistro-bcm43455' is unbuildable, remo=
ving...<br />Missing or unbuildable dependency chain was: ['linux-firmware-=
rpidistro-bcm43455']<br />NOTE: Runtime target 'packagegroup-base-extended'=
 is unbuildable, removing...<br />Missing or unbuildable dependency chain w=
as: ['packagegroup-base-extended', 'linux-firmware-rpidistro-bcm43455']<br =
/>NOTE: Runtime target 'wac-core-image' is unbuildable, removing...<br />Mi=
ssing or unbuildable dependency chain was: ['wac-core-image', 'packagegroup=
-base-extended', 'linux-firmware-rpidistro-bcm43455']<br />NOTE: Runtime ta=
rget 'packagegroup-base-ext2' is unbuildable, removing...<br />Missing or u=
nbuildable dependency chain was: ['packagegroup-base-ext2', 'linux-firmware=
-rpidistro-bcm43455']<br />NOTE: Runtime target 'packagegroup-distro-base' =
is unbuildable, removing...<br />Missing or unbuildable dependency chain wa=
s: ['packagegroup-distro-base', 'linux-firmware-rpidistro-bcm43455']<br />N=
OTE: Runtime target 'packagegroup-base-vfat' is unbuildable, removing...<br=
 />Missing or unbuildable dependency chain was: ['packagegroup-base-vfat', =
'linux-firmware-rpidistro-bcm43455']<br />NOTE: Runtime target 'packagegrou=
p-base-nfs' is unbuildable, removing...<br />Missing or unbuildable depende=
ncy chain was: ['packagegroup-base-nfs', 'linux-firmware-rpidistro-bcm43455=
']<br />NOTE: Runtime target 'packagegroup-base-wifi' is unbuildable, remov=
ing...<br />Missing or unbuildable dependency chain was: ['packagegroup-bas=
e-wifi', 'linux-firmware-rpidistro-bcm43455']<br />NOTE: Runtime target 'pa=
ckagegroup-base-bluetooth' is unbuildable, removing...<br />Missing or unbu=
ildable dependency chain was: ['packagegroup-base-bluetooth', 'linux-firmwa=
re-rpidistro-bcm43455']<br /><br />When tried to find the error came across=
 a doc. <a href=3D"https://meta-raspberrypi.readthedocs.io/en/latest/ipcomp=
liance.html#linux-firmware-rpidistro" target=3D"_blank" rel=3D"noopener">ht=
tps://meta-raspberrypi.readthedocs.io/en/latest/ipcompliance.html#linux-fir=
mware-rpidistro</a><br />which says it may be riskier if we go ahead with s=
ynaptics-killswitch&nbsp; which may lead to leagal issues ahead.<br /><br /=
>Ganesh Mahajan<br /><br /></div>

--gbud2iZ6N8ydbFitaLFj--

