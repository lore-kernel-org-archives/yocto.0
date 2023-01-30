Return-Path: <lukma@denx.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACC71C63797
	for <webhook@archiver.kernel.org>; Mon, 30 Jan 2023 22:59:37 +0000 (UTC)
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
 by mx.groups.io with SMTP id smtpd.web10.755.1675119572194328654
 for <yocto@lists.yoctoproject.org>;
 Mon, 30 Jan 2023 14:59:33 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@denx.de header.s=phobos-20191101 header.b=k6C4zp95;
 spf=pass (domain: denx.de, ip: 85.214.62.61, mailfrom: lukma@denx.de)
Received: from wsk (85-222-111-42.dynamic.chello.pl [85.222.111.42])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: lukma@denx.de)
	by phobos.denx.de (Postfix) with ESMTPSA id CC7EC8579E;
	Mon, 30 Jan 2023 23:59:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
	s=phobos-20191101; t=1675119570;
	bh=wp/r/K4KmJjfrWG9O0DMvQsD7sduRPpg8tRGvKNzCC4=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=k6C4zp95R8OHd9aw/jw4fl5nMduYgvd2o9EeK0tcuvzrcY57PUao5aqcir6tckEpV
	 IEZusJeBGQr2HGzRXNkU+seiW78Q5tPG33tTy73SkBew/R8Js9oIX8TGfkrwA/NjoD
	 YTDwNh8PbRIKS4WM5QbiVn48icN0MBe18GRc2PgH6rgRsi2kzb9VrpXeryRs1QS4g/
	 wLXK3PzUId57tBn9MzRPR14t6YPdfk7mvcmEpFn6vPIEW1mu3GgkSVLaUeQy4OC1NS
	 dFdDfaOtsn8Ab/9akBexRrOGTt0ga5+oC5Wxhgxml1+HiRdg3unZzqIIcthXXXc8ad
	 7SiGB9UXStBGA==
Date: Mon, 30 Jan 2023 23:59:23 +0100
From: Lukasz Majewski <lukma@denx.de>
To: "Carles Sole via lists.yoctoproject.org"
 <Carles.SoleMendi=de.bosch.com@lists.yoctoproject.org>
Cc: Carles.SoleMendi@de.bosch.com, yocto@lists.yoctoproject.org
Subject: Re: [yocto] [meta-raspberrypi] Is Preempt-rt still supported in
 master / latest releases?
Message-ID: <20230130235923.4264ca0b@wsk>
In-Reply-To: <20057.1674650953536874663@lists.yoctoproject.org>
References: <Y86v7Z+p68WpY13k@qwirkle>
	<20057.1674650953536874663@lists.yoctoproject.org>
Organization: denx.de
X-Mailer: Claws Mail 3.19.0 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="Sig_/SvwaZ7aZ/+quYZE7hHquWSS";
 protocol="application/pgp-signature"; micalg=pgp-sha512
X-Virus-Scanned: clamav-milter 0.103.6 at phobos.denx.de
X-Virus-Status: Clean
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 30 Jan 2023 22:59:37 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59105

--Sig_/SvwaZ7aZ/+quYZE7hHquWSS
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

Hi Carles

> Hi Alex, Andrei,
>=20
> thanks for your reply. Based on your feedback I've tried the
> following:
> - I have downloaded the patch patch-5.15.86-rt56.patch from
> https://cdn.kernel.org/pub/linux/kernel/projects/rt/5.15/ and stored
> in ./meta-raspberrypi/recipes-kernel/linux/files
> - I have created a file linux-raspberrypi_%.bbappend in
> ./meta-raspberrypi/recipes-kernel/linux
> - I have created a .cfg file with CONFIG_PREEMPT_RT_FULL =3D y in
> ./meta-raspberrypi/recipes-kernel/linux/files
> - I have added both patch and cfg file in bbappend using
> SRC_URI:append:rpi.
>=20
> I can observe the following:
> - patch and cfg files are available in
> ./build/tmp/work/raspberrypi4_64-agl-linux/linux-raspberrypi/1_5.15.34+gi=
tAUTOINC+e1b976ee4f_0086da6acd-r0
> - new folder linux-raspberrypi4_64-preempt-rt-build is available
> inside the folder above. But the problem seems to be that
> CONFIG_PREEMPT_RT =3D y is not applied to the .config file. So it seems
> the preempt-rt kernel is built but without the full preempt-rt
> support.
> - When I do bitbake linux-raspberrypi -c menuconfig I cannot select
> the full real time preempt kernel, only preemptible option available
> is --> Preemptible Kernel (Low-Latency Desktop). Fully Preemptible
> Kernel (Real-Time) is not available.
> - When I flash the image in the Rpi4 and run uname -r I see that the
> rt kernel has been built --> 5.15.34.rt56.v8
> - but only with PREEMPT option but without RT when I do uname -v -->
> #1 SMP PREEMPT Tue Aug 9 21:20:00 UTC 2022 (without RT).
>=20
> I have tried building linux-yocto-rt for qemu and there I see that
> CONFIG_PREEMP_RT =3D y is available in the .config file. Also if I open
> menuconfig I have the option to select in General setup -->
> Preemption Model --> Fully Preemptible Kernel (Real-Time)
>=20
> If you can provide any hints on what am I missing it would be highly
> appreciated.
>=20

Have you managed to go any further with your investigation regarding
PREEMPT-RT on RPi4-64?

> Best Regards,
> Carles




Best regards,

Lukasz Majewski

--

DENX Software Engineering GmbH,      Managing Director: Erika Unter
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
Phone: (+49)-8142-66989-59 Fax: (+49)-8142-66989-80 Email: lukma@denx.de

--Sig_/SvwaZ7aZ/+quYZE7hHquWSS
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCgAdFiEEgAyFJ+N6uu6+XupJAR8vZIA0zr0FAmPYS8sACgkQAR8vZIA0
zr2+BAgArEnmsohZmvLHDVn4V5ErKL3TSfUhunKPun6A6R5NeVcTAfcdPuJOzb+Y
o0FAWq/j31CdpxEfAsI78oJePbJXjX1rS6Vz74ODmeqH1OM42tuOWBe7+AbBdmrw
QY+q+yy6eZzEeEsJoZBy99XPupFwudBv30D7AdRXjfurQJS2sCmvP5F0dJ2Yx2aK
ZM8TDVkQpeUy0yi2WPCaK3Jsk/+JVKtEm8SykdAiQRoDUwOhWylE/0aJR6XvTPsS
Fn4YUMz0/4XeM+TUY7pNITMDFFdadptd1k8KlboXsrASqExpq4clXAwKwO5gXgzs
5S81oSQ7MMFtc3oXVug2YPwn8JfFlg==
=VGEW
-----END PGP SIGNATURE-----

--Sig_/SvwaZ7aZ/+quYZE7hHquWSS--

