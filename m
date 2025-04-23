Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D2BBC369CB
	for <webhook@archiver.kernel.org>; Wed, 23 Apr 2025 09:23:15 +0000 (UTC)
Subject: [selinux] can't start Kernel Logging Service when enable SELinux on sytemd
To: yocto@lists.yoctoproject.org
From: bxchen@ambarella.com
X-Originating-Location: Shanghai, CN (180.169.129.163)
X-Originating-Platform: Windows Chrome 135
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 22 Apr 2025 22:08:05 -0700
Message-ID: <Aq4V.1745384885522710707.FhR5@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="R7tVdyPnhIrcIDV0RPXX"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 23 Apr 2025 09:23:15 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65232

--R7tVdyPnhIrcIDV0RPXX
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi
I build an image with SELinux enabled and use systemd as an init manager.
On kernel boot stage,=C2=A0 I receive the following errors:
[FAILED] Failed to start Kernel Logging Service.
[FAILED] Failed to start System Logging Service.

I search the audit log and find that it was denied by SELinux:
type=3DAVC msg=3Daudit(1651167746.923:54): avc: =C2=A0denied =C2=A0{ map } =
for =C2=A0pid=3D234 comm=3D"klogd" path=3D"/bin/busybox.nosuid" dev=3D"mmcb=
lk0p7" ino=3D19 scontext=3Dsystem_u:system_r:klogd_t:s0 tcontext=3Dsystem_u=
:object_r:bin_t:s0 tclass=3Dfile permissive=3D0
type=3DAVC msg=3Daudit(1651167746.936:57): avc: =C2=A0denied =C2=A0{ map } =
for =C2=A0pid=3D235 comm=3D"syslogd" path=3D"/bin/busybox.nosuid" dev=3D"mm=
cblk0p7" ino=3D19 scontext=3Dsystem_u:system_r:syslogd_t:s0 tcontext=3Dsyst=
em_u:object_r:bin_t:s0 tclass=3Dfile permissive=3D0

I know that busybox use sh wrappers instead of links to get the correct sec=
urity labels when SELinux enabled, but this seems not work.

Do you have any adivce?

--R7tVdyPnhIrcIDV0RPXX
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Hi</div>
<div>I build an image with SELinux enabled and use systemd as an init manag=
er.</div>
<div>On kernel boot stage,&nbsp; I receive the following errors:</div>
<div>[FAILED] Failed to start Kernel Logging Service.</div>
<div>[FAILED] Failed to start System Logging Service.</div>
<div>&nbsp;</div>
<div>I search the audit log and find that it was denied by SELinux:</div>
<div>type=3DAVC msg=3Daudit(1651167746.923:54): avc: &nbsp;denied &nbsp;{ m=
ap } for &nbsp;pid=3D234 comm=3D"klogd" path=3D"/bin/busybox.nosuid" dev=3D=
"mmcblk0p7" ino=3D19 scontext=3Dsystem_u:system_r:klogd_t:s0 tcontext=3Dsys=
tem_u:object_r:bin_t:s0 tclass=3Dfile permissive=3D0<br />type=3DAVC msg=3D=
audit(1651167746.936:57): avc: &nbsp;denied &nbsp;{ map } for &nbsp;pid=3D2=
35 comm=3D"syslogd" path=3D"/bin/busybox.nosuid" dev=3D"mmcblk0p7" ino=3D19=
 scontext=3Dsystem_u:system_r:syslogd_t:s0 tcontext=3Dsystem_u:object_r:bin=
_t:s0 tclass=3Dfile permissive=3D0</div>
<div>&nbsp;</div>
<div>I know that busybox use sh wrappers instead of links to get the correc=
t security labels when SELinux enabled, but this seems not work.</div>
<div>&nbsp;</div>
<div>Do you have any adivce?</div>

--R7tVdyPnhIrcIDV0RPXX--

