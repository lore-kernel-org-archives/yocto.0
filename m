Return-Path: <daniel_herrmann22@web.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1E4EBC001DE
	for <webhook@archiver.kernel.org>; Sun, 30 Jul 2023 11:00:20 +0000 (UTC)
Subject: systemd service not enabled #kirkstone #systemd
To: yocto@lists.yoctoproject.org
From: daniel_herrmann22@web.de
X-Originating-Location: Tholey, Saarland, DE (188.210.57.220)
X-Originating-Platform: Linux Firefox 114
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Sun, 30 Jul 2023 04:00:18 -0700
Message-ID: <4aNV.1690714818067144121.s3Nh@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="fhJz6N99WEuzXp24TmwX"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 30 Jul 2023 11:00:20 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60681

--fhJz6N99WEuzXp24TmwX
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello,

I have a problem enabling a simple systemd service.

I need a manual "systemctl enable" once after boot to enable my service.

If anybody has an idea, it would be very cool.

Here are my files.

*distro conf:*

DISTRO_FEATURES:append =3D " systemd"
DISTRO_FEATURES_BACKFILL_CONSIDERED +=3D "sysvinit"
VIRTUAL-RUNTIME_init_manager =3D "systemd"
VIRTUAL-RUNTIME_initscripts =3D "systemd-compat-units"

*schedulingrealtime.bb:*

DESCRIPTION =3D "Setup a realtime sheduling"
LICENSE =3D "CLOSED"

inherit systemd
NATIVE_SYSTEMD_SUPPORT =3D "1"
SYSTEMD_PACKAGES =3D "${PN}"
SYSTEMD_AUTO_ENABLE =3D "enable"
SYSTEMD_SERVICE_${PN} =3D "schedulingrealtime.service"

FILESEXTRAPATHS:prepend :=3D "${THISDIR}:"
SRC_URI =3D " \
file://schedulingrealtime.service \
"

do_install () {
install -d ${D}${systemd_system_unitdir}

install -m 0755 ${WORKDIR}/schedulingrealtime.service ${D}${systemd_system_=
unitdir}
}

FILES:${PN} +=3D "\
${systemd_system_unitdir}/schedulingrealtime.service \

*schedulingrealtime.service*

[Unit]
Description=3Dmodify scheduling parameter for realtime threads

[Service]
Type=3Doneshot
ExecStart=3D/bin/bash -c "echo -1 > /proc/sys/kernel/sched_rt_runtime_us &&=
 echo -1 > /proc/sys/kernel/sched_rt_period_us"

[Install]
WantedBy=3Dmulti-user.target *
*

--fhJz6N99WEuzXp24TmwX
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p>Hello,</p>
<p>I have a problem enabling a simple systemd service. </p>
<p>I need a manual "systemctl enable" once after boot to enable my service.=
</p>
<p>If anybody has an idea, it would be very cool.</p>
<p>Here are my files.</p>
<p><strong>distro conf:</strong></p>
<p>DISTRO_FEATURES:append =3D " systemd"<br />DISTRO_FEATURES_BACKFILL_CONS=
IDERED +=3D "sysvinit"<br />VIRTUAL-RUNTIME_init_manager =3D "systemd"<br /=
>VIRTUAL-RUNTIME_initscripts =3D "systemd-compat-units"</p>
<p><strong>schedulingrealtime.bb:</strong></p>
<p>DESCRIPTION =3D "Setup a realtime sheduling"<br />LICENSE =3D "CLOSED"<b=
r /><br />inherit systemd<br />NATIVE_SYSTEMD_SUPPORT =3D "1"<br />SYSTEMD_=
PACKAGES =3D "${PN}"<br />SYSTEMD_AUTO_ENABLE =3D "enable"<br />SYSTEMD_SER=
VICE_${PN} =3D "schedulingrealtime.service"<br /><br /><br />FILESEXTRAPATH=
S:prepend :=3D "${THISDIR}:"<br />SRC_URI =3D " \<br />&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp; file://schedulingrealtime.service \<br />&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; "<br /><br />do_install () {<br />&nbsp;&nb=
sp;&nbsp; install -d ${D}${systemd_system_unitdir}<br /><br />&nbsp;&nbsp;&=
nbsp; install -m 0755 ${WORKDIR}/schedulingrealtime.service ${D}${systemd_s=
ystem_unitdir}<br />}<br /><br />FILES:${PN} +=3D "\<br />&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp; ${systemd_system_unitdir}/schedulingrealtime.serv=
ice \</p>
<p><strong>schedulingrealtime.service</strong></p>
<p>[Unit]<br />Description=3Dmodify scheduling parameter for realtime threa=
ds<br /><br />[Service]<br />Type=3Doneshot<br />ExecStart=3D/bin/bash -c "=
echo -1 &gt; /proc/sys/kernel/sched_rt_runtime_us &amp;&amp; echo -1 &gt; /=
proc/sys/kernel/sched_rt_period_us"<br /><br />[Install]<br />WantedBy=3Dmu=
lti-user.target<strong><br /></strong></p>

--fhJz6N99WEuzXp24TmwX--

