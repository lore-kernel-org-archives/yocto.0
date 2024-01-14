Return-Path: <crane2018@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2499CC4707B
	for <webhook@archiver.kernel.org>; Sun, 14 Jan 2024 19:10:00 +0000 (UTC)
Subject: do_install_append syntax error
To: yocto@lists.yoctoproject.org
From: "Crane" <crane2018@gmail.com>
X-Originating-Location: Mississauga, Ontario, CA (135.0.213.201)
X-Originating-Platform: Windows Chrome 120
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Sun, 14 Jan 2024 11:09:56 -0800
Message-ID: <A6D9.1705259396053544966.8HTs@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="qOG55T7cxINjzSFPvpd3"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 14 Jan 2024 19:10:00 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62142

--qOG55T7cxINjzSFPvpd3
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello,

I am adding a systemd service. It always complains
>=20
>=20
>> Variable do_install_append contains an operation using the old override
>> syntax. Please convert this layer/metadata before attempting to use with=
 a
>> newer bitbake.
>=20
>=20

Already changed _ to :. Anyone can help with this?

Thanks!
Crane

The recipe is like this:
>=20
>=20
>=20
> SUMMARY =3D " init service at boot"
>=20
>=20
>=20
> LICENSE =3D "CLOSED"
>=20
>=20
>=20
>=20
>=20
>=20
>=20
> inherit systemd
>=20
>=20
>=20
>=20
>=20
>=20
>=20
> SRC_URI +=3D "file://farview.service"
>=20
>=20
>=20
> S =3D "${WORKDIR}"
>=20
>=20
>=20
>=20
>=20
>=20
>=20
> SYSTEMD_AUTO_ENABLE:${PN} =3D "enable"
>=20
>=20
>=20
> SYSTEMD_PACKAGES =3D "${PN}"
>=20
>=20
>=20
> SYSTEDD_SERVICE:${PN} =3D "farview.service"
>=20
>=20
>=20
>=20
>=20
>=20
>=20
> do_install_append() {
>=20
>=20
>=20
> install -d ${D}${systemd_system_unitdir}
>=20
>=20
>=20
> install -m 0644 ${WORKDIR}/farview.service ${D}${systemd_system_unitdir}
>=20
>=20
>=20
> }
>=20
>=20
>=20
>=20
>=20
>=20
>=20
> FILES:{PN} +=3D "${systemd_system_unitdir}/farview.service"
>=20
>=20
>=20
> REQUIRED_DISTRO_FEATURES =3D " systemd "
>=20
>=20
>

--qOG55T7cxINjzSFPvpd3
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello,<br /><br />I am adding a systemd service. It always complains&nbsp;
<blockquote>
<blockquote>Variable do_install_append contains an operation using the old =
override syntax. Please convert this layer/metadata before attempting to us=
e with a newer bitbake.</blockquote>
</blockquote>
Already changed _ to :. Anyone can help with this?<br /><br />Thanks!<br />=
Crane<br /><br />The recipe is like this:
<blockquote>
<div style=3D"background-color: #2f2f2f; padding: 0px 0px 0px 2px;">
<div style=3D"color: #aaaaaa; font-family: Monospace; font-size: 10pt; whit=
e-space: pre;">
<p style=3D"margin-bottom: 0px;">SUMMARY =3D "<span style=3D"text-decoratio=
n-line: underline; text-decoration-color: #fdaad3; text-decoration-style: w=
avy;">init</span> service at boot"</p>
<p style=3D"margin-bottom: 0px;">LICENSE =3D "CLOSED"</p>
<p style=3D"margin-bottom: 0px;">&nbsp;</p>
<p style=3D"margin-bottom: 0px;">inherit <span style=3D"text-decoration-lin=
e: underline; text-decoration-color: #fdaad3; text-decoration-style: wavy;"=
>systemd</span></p>
<p style=3D"margin-bottom: 0px;">&nbsp;</p>
<p style=3D"margin-bottom: 0px;">SRC_URI +=3D "file://farview.service"</p>
<p style=3D"margin-bottom: 0px;">S =3D "${WORKDIR}"</p>
<p style=3D"margin-bottom: 0px;">&nbsp;</p>
<p style=3D"margin-bottom: 0px;">SYSTEMD_AUTO_ENABLE:${PN} =3D "enable"</p>
<p style=3D"margin-bottom: 0px;">SYSTEMD_PACKAGES =3D "${PN}"</p>
<p style=3D"margin-bottom: 0px;">SYSTEDD_SERVICE:${PN} =3D "farview.service=
"</p>
<p style=3D"margin-bottom: 0px;">&nbsp;</p>
<p style=3D"margin-bottom: 0px;">do_install_append() {</p>
<p style=3D"margin-bottom: 0px;">install -d ${D}${systemd_system_unitdir}</=
p>
<p style=3D"margin-bottom: 0px;">install -m 0644 ${WORKDIR}/farview.service=
 ${D}${systemd_system_unitdir}</p>
<p style=3D"margin-bottom: 0px;">}</p>
<p style=3D"margin-bottom: 0px;">&nbsp;</p>
<p style=3D"margin-bottom: 0px;">FILES:{PN} +=3D "${systemd_system_unitdir}=
/farview.service"</p>
<p>REQUIRED_DISTRO_FEATURES =3D " <span style=3D"text-decoration-line: unde=
rline; text-decoration-color: #fdaad3; text-decoration-style: wavy;">system=
d</span>"</p>
</div>
</div>
</blockquote>

--qOG55T7cxINjzSFPvpd3--

