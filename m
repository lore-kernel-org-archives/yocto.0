Return-Path: <jguittet.opensource@witekio.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE4C5C4707B
	for <webhook@archiver.kernel.org>; Thu, 18 Jan 2024 08:30:43 +0000 (UTC)
Subject: Re: [yocto] initramfs and system logs
To: Mauro <m.salvini@koansoftware.com>,yocto@lists.yoctoproject.org
From: "Joel GUITTET" <jguittet.opensource@witekio.com>
X-Originating-Location: =?UTF-8?B?Q2jDonRlYXVyb3V4LCBDZW50cmUtVmFsIGRlIExvaXJlLCBGUg==?= (78.114.34.160)
X-Originating-Platform: Linux Chrome 120
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 18 Jan 2024 00:30:42 -0800
References: <82bc0af4-830e-4533-953b-057618c54df5@koansoftware.com>
In-Reply-To: <82bc0af4-830e-4533-953b-057618c54df5@koansoftware.com>
Message-ID: <31915.1705566642857353178@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="O1jmDhjfZEWsXrTdQBIA"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 18 Jan 2024 08:30:43 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62186

--O1jmDhjfZEWsXrTdQBIA
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Thanks for the answers.

- /sbin/init is a symlink to /sbin/init.sysvinit and it's a binary file, no=
t a script. Maybe I should look at the sources that build this ? Will do in=
 parallel.

- console=3D arguments is the same for both my images, eg "console=3DttyS0,=
115200n8".
The difference between the 2 images on the cmdline are only the options rel=
ated to the rootfs:
* distro with the rootfs on the sdcard: "mem=3D128M console=3DttyS0,115200n=
8 root=3D/dev/mmcblk0p4 rw rootfstype=3Dext4 rootwait"
* distro with the initramfs: "mem=3D128M console=3DttyS0,115200n8"

I have done a check of /proc/consoles for both (don't know if this is reall=
y important, this returns "ttyS0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 -W- (EC p a)=C2=A0 =C2=A0 4:64" for both distro.

Joel

--O1jmDhjfZEWsXrTdQBIA
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Thanks for the answers.<br /><br />- /sbin/init is a symlink to /sbin/init.=
sysvinit and it's a binary file, not a script. Maybe I should look at the s=
ources that build this ? Will do in parallel.<br /><br />- console=3D argum=
ents is the same for both my images, eg "console=3DttyS0,115200n8".<br />Th=
e difference between the 2 images on the cmdline are only the options relat=
ed to the rootfs:<br />* distro with the rootfs on the sdcard: "mem=3D128M =
console=3DttyS0,115200n8 root=3D/dev/mmcblk0p4 rw rootfstype=3Dext4 rootwai=
t"<br />* distro with the initramfs: "mem=3D128M console=3DttyS0,115200n8"<=
br /><br />I have done a check of /proc/consoles for both (don't know if th=
is is really important, this returns "ttyS0&nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; -W- (EC p a)&nbsp; &nbsp; 4:64" for both distro.<br=
 /><br />Joel

--O1jmDhjfZEWsXrTdQBIA--

