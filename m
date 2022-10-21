Return-Path: <edmundwatson@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 927EFC433FE
	for <webhook@archiver.kernel.org>; Fri, 21 Oct 2022 08:56:56 +0000 (UTC)
Subject: Raspberry Pi 4 h264 encoder
To: yocto@lists.yoctoproject.org
From: "Ed Watson" <edmundwatson@gmail.com>
X-Originating-Location: Skondal, Stockholm County, SE (79.136.21.82)
X-Originating-Platform: Windows Chrome 106
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 21 Oct 2022 01:56:53 -0700
Message-ID: <SzSq.1666342613164866500.rC1v@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="nxCrtxs5VzLkZIWkNURI"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 21 Oct 2022 08:56:56 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58390

--nxCrtxs5VzLkZIWkNURI
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I want to increase the performance streaming from a rpi4 via an rtsp stream=
er.

I am using ffmpeg to do the encoding however it is using CPU encoding.

What is the right options for using the hardware in 264 encoding?
I assume it is=C2=A0=C2=A0-c:v h264_omx

That is not compiled it.

I added to=C2=A0ffmpeg_%.bbappend

>=20
>=20
>=20
> PACKAGECONFIG +=3D " omx omx-rpi "
>=20
>=20
>=20
>=20
>=20
>=20
>=20
> PACKAGECONFIG[omx] =3D "--enable-omx"
>=20
>=20
>=20
> PACKAGECONFIG[omi-rpi] =3D "--enable-omx-rpi"
>=20
>=20
>=20
>=20
> DEPENDS =3D+ "virtual/libomxil"
>=20
>=20
>=20
> RDEPENDS_${PN} =3D "${VIRTUAL-RUNTIME_libomxil}"
>=20
>=20

I get the error.

ERROR: OMX_Core.h not found

Am I braking up the wrong tree here?

Thanks

--nxCrtxs5VzLkZIWkNURI
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p>I want to increase the performance streaming from a rpi4 via an rtsp str=
eamer.<br /><br />I am using ffmpeg to do the encoding however it is using =
CPU encoding.</p>
<p>What is the right options for using the hardware in 264 encoding?<br />I=
 assume it is&nbsp;&nbsp;-c:v h264_omx</p>
<p>That is not compiled it.&nbsp;<br /><br />I added to&nbsp;ffmpeg_%.bbapp=
end</p>
<blockquote>
<p>PACKAGECONFIG +=3D " omx omx-rpi "</p>
<p>&nbsp;</p>
<p>PACKAGECONFIG[omx] =3D "--enable-omx"</p>
<p>PACKAGECONFIG[omi-rpi] =3D "--enable-omx-rpi"</p>
<div>&nbsp;</div>
<p>DEPENDS =3D+ "virtual/libomxil"</p>
<p>RDEPENDS_${PN} =3D "${VIRTUAL-RUNTIME_libomxil}"</p>
</blockquote>
<p>I get the error.</p>
<p>ERROR: OMX_Core.h not found</p>
<p>&nbsp;</p>
<p>Am I braking up the wrong tree here?<br /><br />Thanks</p>

--nxCrtxs5VzLkZIWkNURI--

