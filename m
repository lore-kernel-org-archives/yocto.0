Return-Path: <jared_terry@dell.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7D4C8C7EE23
	for <webhook@archiver.kernel.org>; Wed,  1 Mar 2023 22:19:21 +0000 (UTC)
Subject: systemd service shows missing when installed from default recipe #dunfell
To: yocto@lists.yoctoproject.org
From: jared_terry@dell.com
X-Originating-Location: Cedar Park, Texas, US (70.124.160.59)
X-Originating-Platform: Windows Chrome 110
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 01 Mar 2023 14:19:16 -0800
Message-ID: <pVar.1677709156192404342.z2I2@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="S5pty69GxRMn6KyLiy1f"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 01 Mar 2023 22:19:21 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59328

--S5pty69GxRMn6KyLiy1f
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

systemd seems to be missing a service.

systemd-sysusers.service

now it appears based on the bitbake that its removed because of musl. =C2=
=A0However it remains in some service files... causing an error to be liste=
d in the service report.

systemd-sysusers.service not-found inactive dead systemd-sysusers.service

and this is why...

systemd-networkd.service:After=3Dsystemd-udevd.service network-pre.target s=
ystemd-sysusers.service systemd-sysctl.service
systemd-resolved.service:After=3Dsystemd-sysusers.service systemd-networkd.=
service
systemd-tmpfiles-setup-dev.service:After=3Dsystemd-sysusers.service
systemd-tmpfiles-setup-mnt.service:After=3Dlocal-fs.target systemd-sysusers=
.service systemd-tmpfiles-setup.service
systemd-udevd.service:After=3Dsystemd-sysusers.service systemd-hwdb-update.=
service

can this be cleaned up.

--S5pty69GxRMn6KyLiy1f
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p>systemd seems to be missing a service.</p>
<p>&nbsp;</p>
<p>systemd-sysusers.service</p>
<p>&nbsp;</p>
<p>now it appears based on the bitbake that its removed because of musl. &n=
bsp;However it remains in some service files... causing an error to be list=
ed in the service report.</p>
<p>&nbsp;</p>
<p>systemd-sysusers.service not-found inactive dead systemd-sysusers.servic=
e</p>
<p>&nbsp;</p>
<p>and this is why...</p>
<p>&nbsp;</p>
<p>systemd-networkd.service:After=3Dsystemd-udevd.service network-pre.targe=
t systemd-sysusers.service systemd-sysctl.service<br />systemd-resolved.ser=
vice:After=3Dsystemd-sysusers.service systemd-networkd.service<br />systemd=
-tmpfiles-setup-dev.service:After=3Dsystemd-sysusers.service<br />systemd-t=
mpfiles-setup-mnt.service:After=3Dlocal-fs.target systemd-sysusers.service =
systemd-tmpfiles-setup.service<br />systemd-udevd.service:After=3Dsystemd-s=
ysusers.service systemd-hwdb-update.service<br /><br />can this be cleaned =
up.</p>

--S5pty69GxRMn6KyLiy1f--

