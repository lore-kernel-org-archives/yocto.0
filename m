Return-Path: <sateesh0457@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4ED43D609A2
	for <webhook@archiver.kernel.org>; Wed, 27 Nov 2024 06:25:38 +0000 (UTC)
Subject: Disabling unused service to reduce boot time  (Krikstone version)
To: yocto@lists.yoctoproject.org
From: "sateesh m" <sateesh0457@gmail.com>
X-Originating-Location: SG (163.116.193.117)
X-Originating-Platform: Linux Chrome 129
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 26 Nov 2024 22:25:30 -0800
Message-ID: <JHN1.1732688730575421161.q61g@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="N7GkCxrjsFajLOnqoUFW"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 27 Nov 2024 06:25:38 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64353

--N7GkCxrjsFajLOnqoUFW
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Team,

I want to improve my boot time so for that I want to disable few services w=
hich is running during boot up. I want to disable below mentioned services.

avahi,iptables6,iptable, zeroconf,polkit,drm,

services

6.242s=C2=A0 user@0.service
2.01s ldconfig.service
2.359s iptables.service
2.293s ip6tables.service
1.434s systemd-userdbd.service
1.463s avahi-daemon.service
1.231s modprobe@drm.service
1.170s sys-kernel-debug.mount
1.163s sys-kernel-tracing.mount
1.161s modprobe@configfs.service
1.160s tmp.mount
1.157s kmod-static-nodes.servic

I have followed below steps but not working this

SYSTEMD_AUTO_ENABLE_avahi =3D "disable"
SYSTEMD_SERVICE:avahi =3D "avahi-daemon.service"
IMAGE_INSTALL:remove =3D "avahi"
SYSTEMD_AUTO_ENABLE_tx-powermon =3D "disable"
SYSTEMD_SERVICE:tx-powermon =3D "tx-powermon.service"
SYSTEMD_AUTO_ENABLE_polkit =3D "disable"
PACKAGECONFIG:remove =3D "polkit"
SYSTEMD_AUTO_ENABLE_ip6tables =3D "disable"
PACKAGECONFIG:remove =3D "ip6tables"
SYSTEMD_SERVICE:ip6tables =3D "ip6tables.service"
IMAGE_INSTALL:remove =3D "ip6tables drm"
DISTRO_FEATURES:remove =3D "zeroconf"

--N7GkCxrjsFajLOnqoUFW
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Hi Team,</div>
<div>&nbsp;</div>
<div>I want to improve my boot time so for that I want to disable few servi=
ces which is running during boot up. I want to disable below mentioned serv=
ices.</div>
<div>&nbsp;</div>
<div>avahi,iptables6,iptable, zeroconf,polkit,drm,</div>
<div>&nbsp;</div>
<div>&nbsp;services</div>
<div>&nbsp;</div>
<div>6.242s&nbsp; user@0.service</div>
<div>2.01s ldconfig.service</div>
<div>2.359s iptables.service<br />2.293s ip6tables.service</div>
<div>1.434s systemd-userdbd.service</div>
<div>1.463s avahi-daemon.service</div>
<div>&nbsp;1.231s <a href=3D"mailto:modprobe@drm.service" target=3D"_blank"=
 rel=3D"noopener">modprobe@drm.service</a></div>
<div>&nbsp;1.170s sys-kernel-debug.mount<br />&nbsp;1.163s sys-kernel-traci=
ng.mount<br />&nbsp;1.161s modprobe@configfs.service<br />&nbsp;1.160s tmp.=
mount<br />&nbsp;1.157s kmod-static-nodes.servic</div>
<div>&nbsp;</div>
<div>I have followed below steps but not working this&nbsp;</div>
<div>&nbsp;</div>
<div>SYSTEMD_AUTO_ENABLE_avahi =3D "disable"<br />SYSTEMD_SERVICE:avahi =3D=
 "avahi-daemon.service"<br />IMAGE_INSTALL:remove =3D "avahi"<br />SYSTEMD_=
AUTO_ENABLE_tx-powermon =3D "disable"<br />SYSTEMD_SERVICE:tx-powermon =3D =
"tx-powermon.service"<br />SYSTEMD_AUTO_ENABLE_polkit =3D "disable"<br />PA=
CKAGECONFIG:remove =3D "polkit"<br />SYSTEMD_AUTO_ENABLE_ip6tables =3D "dis=
able"<br />PACKAGECONFIG:remove =3D "ip6tables"<br />SYSTEMD_SERVICE:ip6tab=
les =3D "ip6tables.service"<br />IMAGE_INSTALL:remove =3D "ip6tables drm"<b=
r />DISTRO_FEATURES:remove =3D "zeroconf"</div>

--N7GkCxrjsFajLOnqoUFW--

