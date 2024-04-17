Return-Path: <ndivecha@granitenet.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EA9DAC4345F
	for <webhook@archiver.kernel.org>; Wed, 17 Apr 2024 11:56:12 +0000 (UTC)
Subject: Issue with Installing openssh Package  #kirkstone #systemd #yocto
To: yocto@lists.yoctoproject.org
From: "Nitesh D" <ndivecha@granitenet.com>
X-Originating-Location: Troy, Michigan, US (143.59.9.147)
X-Originating-Platform: Mac Chrome 123
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 17 Apr 2024 04:56:12 -0700
Message-ID: <T7mZ.1713354972062709907.bIGS@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="Evraltel4FbBq3oExmWT"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 17 Apr 2024 11:56:12 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62946

--Evraltel4FbBq3oExmWT
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello All,

This is my first time posting in the Yocto forum, so please bear with me (I=
'm a rookie).

One of my projects requires "openssh" to be installed in the image, but wit=
h all services disabled except for keeping sshdgenkeys.service running. I s=
plit it into two packages, but for some odd reason, "sshdgenkeys.service" i=
s not getting installed on the image.

Here's my .bbappend file for openssh:

```
FILESEXTRAPATHS:prepend :=3D "${THISDIR}/${BPN}:"

SYSTEMD_AUTO_ENABLE:${PN}-sshd =3D "disable"

PACKAGES =3D+ "${PN}-sshdgenkeys"
SYSTEMD_PACKAGES =3D "${PN}-sshdgenkeys"
SYSTEMD_SERVICE:${PN}-sshdgenkeys =3D "sshdgenkeys.service"
SYSTEMD_AUTO_ENABLE:${PN}-sshdgenkeys =3D "enable"

SRC_URI:append =3D " \
file://sshd_config \
"

do_install:append () {
install -d ${D}${sysconfdir}/ssh
install -m 0644 ${WORKDIR}/sshd_config ${D}${sysconfdir}/ssh/
install -m 0644 ${D}${sysconfdir}/ssh/sshd_config ${D}${sysconfdir}/ssh/ssh=
d_config_readonly
}

FILES:${PN}-sshd =3D " \
${sbindir}/sshd ${sysconfdir}/init.d/sshd \
${systemd_system_unitdir}/sshd.socket \
${systemd_system_unitdir}/sshd@.service \
"
FILES:${PN}-sshdgenkeys =3D " \
${systemd_system_unitdir}/sshdgenkeys.service \
"
```
When I flash the image on my device, only the "${PN}-sshd" package is getti=
ng installed, and not "${PN}-sshdgenkeys".

I would appreciate a second pair of eyes on what I might be missing here.

Thanking you in advance.

Cheers,
Nitesh

--Evraltel4FbBq3oExmWT
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Hello All,</div>
<div>&nbsp;</div>
<div>This is my first time posting in the Yocto forum, so please bear with =
me (I'm a rookie).</div>
<div>&nbsp;</div>
<div>One of my projects requires "openssh" to be installed in the image, bu=
t with all services disabled except for keeping sshdgenkeys.service running=
. I split it into two packages, but for some odd reason, "sshdgenkeys.servi=
ce" is not getting installed on the image.</div>
<div>&nbsp;</div>
<div>Here's my .bbappend file for openssh:</div>
<br />```<br />
<div>FILESEXTRAPATHS:prepend :=3D "${THISDIR}/${BPN}:"</div>
<div>&nbsp;</div>
<div>SYSTEMD_AUTO_ENABLE:${PN}-sshd =3D "disable"</div>
<div><br />
<div style=3D"line-height: 1.42857;">PACKAGES =3D+ "${PN}-sshdgenkeys"</div=
>
<div style=3D"line-height: 1.42857;">SYSTEMD_PACKAGES =3D "${PN}-sshdgenkey=
s"<br />
<div style=3D"line-height: 1.42857;">SYSTEMD_SERVICE:${PN}-sshdgenkeys =3D =
"sshdgenkeys.service"</div>
<div style=3D"line-height: 1.42857;">SYSTEMD_AUTO_ENABLE:${PN}-sshdgenkeys =
=3D "enable"<br /><br /></div>
</div>
</div>
<div>SRC_URI:append =3D " \</div>
<div><span style=3D"white-space: normal;"><span style=3D"white-space: pre;"=
> </span>file://sshd_config \</span></div>
<div>"</div>
<div>&nbsp;</div>
<div>do_install:append () {</div>
<div>&nbsp; &nbsp; install -d ${D}${sysconfdir}/ssh</div>
<div>&nbsp; &nbsp; install -m 0644 ${WORKDIR}/sshd_config ${D}${sysconfdir}=
/ssh/</div>
<div>&nbsp; &nbsp; install -m 0644 ${D}${sysconfdir}/ssh/sshd_config ${D}${=
sysconfdir}/ssh/sshd_config_readonly</div>
<div>}</div>
<div>&nbsp;</div>
<div>FILES:${PN}-sshd =3D " \</div>
<div><span style=3D"white-space: normal;"><span style=3D"white-space: pre;"=
> </span>${sbindir}/sshd ${sysconfdir}/init.d/sshd \</span></div>
<div><span style=3D"white-space: normal;"><span style=3D"white-space: pre;"=
> </span>${systemd_system_unitdir}/sshd.socket \</span></div>
<div><span style=3D"white-space: normal;"><span style=3D"white-space: pre;"=
> </span>${systemd_system_unitdir}/sshd@.service \</span></div>
<div>"</div>
<div>FILES:${PN}-sshdgenkeys =3D " \</div>
<div><span style=3D"white-space: normal;"><span style=3D"white-space: pre;"=
> </span>${systemd_system_unitdir}/sshdgenkeys.service \</span></div>
<div>"<br />```<br />
<div>When I flash the image on my device, only the "${PN}-sshd" package is =
getting installed, and not "${PN}-sshdgenkeys".</div>
<div>&nbsp;</div>
<div>I would appreciate a second pair of eyes on what I might be missing he=
re.</div>
<div>&nbsp;</div>
<div>Thanking you in advance.</div>
<div>&nbsp;</div>
<div>Cheers,</div>
<div>Nitesh</div>
</div>

--Evraltel4FbBq3oExmWT--

