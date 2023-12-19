Return-Path: <an010@live.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E516BC41535
	for <webhook@archiver.kernel.org>; Tue, 19 Dec 2023 14:14:29 +0000 (UTC)
Subject: QEMU core-image-minimal cannot login
To: yocto@lists.yoctoproject.org
From: "Aleksandar Nikolic" <an010@live.com>
X-Originating-Location: CH (147.161.250.119)
X-Originating-Platform: Windows Chrome 120
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 19 Dec 2023 06:14:28 -0800
Message-ID: <njnq.1702995268044494142.UDY1@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="BLv7TIDFceFEdtGQNOVR"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 19 Dec 2023 14:14:29 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61985

--BLv7TIDFceFEdtGQNOVR
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi guys,

I built the core-image-minimal image provided by poky for the QEMU machine =
(no changes, built as provided).
However, I am not able to log in with the root user (getting "Login incorre=
ct" immediately), for more see [1].
Any help is appreciated.

Thanks and cheers.
Aleksandar

[1]
Starting udev
[=C2=A0 =C2=A0 2.900576] udevd[157]: starting version 3.2.10
[=C2=A0 =C2=A0 2.968761] udevd[158]: starting eudev-3.2.10
[=C2=A0 =C2=A0 3.544379] EXT4-fs (vda): re-mounted. Opts: (null). Quota mod=
e: disabled.
INIT: Entering runlevel: 5
Configuring network interfaces... ip: RTNETLINK answers: File exists
Starting syslogd/klogd: done

Poky (Yocto Project Reference Distro) 4.0.11 qemux86-64 /dev/ttyS0

qemux86-64 login: root
Login incorrect
qemux86-64 login:

--BLv7TIDFceFEdtGQNOVR
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Hi guys,<br /><br />I built the core-image-minimal image provided by p=
oky for the QEMU machine (no changes, built as provided).<br />However, I a=
m not able to log in with the root user (getting "Login incorrect" immediat=
ely), for more see [1].<br />Any help is appreciated.<br /><br />Thanks and=
 cheers.<br />Aleksandar<br /><br />[1]<br />Starting udev</div>
<div>[&nbsp; &nbsp; 2.900576] udevd[157]: starting version 3.2.10</div>
<div>[&nbsp; &nbsp; 2.968761] udevd[158]: starting eudev-3.2.10</div>
<div>[&nbsp; &nbsp; 3.544379] EXT4-fs (vda): re-mounted. Opts: (null). Quot=
a mode: disabled.</div>
<div>INIT: Entering runlevel: 5</div>
<div>Configuring network interfaces... ip: RTNETLINK answers: File exists</=
div>
<div>Starting syslogd/klogd: done</div>
<div>&nbsp;</div>
<div>Poky (Yocto Project Reference Distro) 4.0.11 qemux86-64 /dev/ttyS0</di=
v>
<div>&nbsp;</div>
<div>qemux86-64 login: root</div>
<div>Login incorrect</div>
<div>qemux86-64 login:</div>
<div>&nbsp;</div>

--BLv7TIDFceFEdtGQNOVR--

