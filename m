Return-Path: <herve.jourdain@neuf.fr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0A14BE009D7; Thu, 23 Jul 2015 09:25:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [93.17.128.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp22.services.sfr.fr (smtp22.services.sfr.fr [93.17.128.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 90711E009B2
	for <yocto@yoctoproject.org>; Thu, 23 Jul 2015 09:25:41 -0700 (PDT)
Received: from filter.sfr.fr (localhost [1.169.170.132])
	by msfrf2207.sfr.fr (SMTP Server) with ESMTP id 453EC70000B8;
	Thu, 23 Jul 2015 18:25:40 +0200 (CEST)
Authentication-Results: sfrmc.priv.atos.fr; dkim=none (no signature);
	dkim-adsp=none (no policy) header.from=herve.jourdain@neuf.fr
Received: from hjo-pc (1-169-170-132.dynamic.hinet.net [1.169.170.132])	(using
	TLSv1 with cipher AES128-SHA (128/128 bits))	(No client certificate
	requested)
	by msfrf2207.sfr.fr (SMTP Server) with ESMTP id 1036E7000086;
	Thu, 23 Jul 2015 18:25:36 +0200 (CEST)
X-SFR-UUID: 20150723162537665.1036E7000086@msfrf2207.sfr.fr
Received: from hjopc
	by hjo-pc (PGP Universal service);  Thu, 23 Jul 2015 18:25:38 +0100
X-PGP-Universal: processed;	by hjo-pc on Thu, 23 Jul 2015 18:25:38 +0100
From: Herve Jourdain <herve.jourdain@neuf.fr>
To: 'Mauro Carvalho Chehab' <mchehab@osg.samsung.com>
References: <004101d0c55c$d068da20$713a8e60$@neuf.fr>
	<20150723130029.1268067b@recife.lan>
In-Reply-To: <20150723130029.1268067b@recife.lan>
Date: Thu, 23 Jul 2015 18:25:29 +0200
Message-ID: <007301d0c564$360d30e0$a22792a0$@neuf.fr>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AQFnXKxyRAcEzfeDEFvGsDtkXP+9rgCtpmStnraeM+A=
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH] Add networkd as default for RaspberryPi
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 23 Jul 2015 16:25:47 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Content-Language: fr

Hi Mauro,

Well, that's precisely one of my concerns. I believe that one of the =
Tizen layers might do just that. Maybe it should be at the Yocto layer.
But it seems not to be with the one I'm using. And just enabling system =
- which can be done at distro level - is not enough, there is a need for =
a bbappend and a config file.
So honestly, since I was experimenting with system, I stumbled on this =
one, and I had initially put that patch in another layer - custom one.

The question that remains is how do we make sure that Poky on raspberry =
pi has network enabled by default when people switch to system? Since I =
don't know where else to put it, I decided to propose the patch for the =
raspberrypi layer, knowing it probably makes more sense to put it =
somewhere else.

BR,

Herve

-----Original Message-----
From: Mauro Carvalho Chehab [mailto:mchehab@osg.samsung.com]=20
Sent: jeudi 23 juillet 2015 18:00
To: Herve Jourdain
Cc: 'Andrei Gherzan'; 'Petter Mab=C3=A4cker'; yocto@yoctoproject.org
Subject: Re: [yocto] [meta-raspberrypi][PATCH] Add networkd as default =
for RaspberryPi

Em Thu, 23 Jul 2015 17:32:35 +0200
Herve Jourdain <herve.jourdain@neuf.fr> escreveu:

> This patch adds systemd-networkd for RaspberryPi in the=20
> meta-raspberrypi layer, in order to have Ethernet and Networking work =
out of the box.
>=20
> =20
>=20
> This said, I=E2=80=99m not 100% sure if it should be enabled in=20
> meta-raspberrypi, instead of another custom layer.
>=20
> But something similar needs to be added somewhere, and with the=20
> current version of Yocto on RaspberryPi, without this patch, network=20
> just doesn=E2=80=99t start=E2=80=A6

I guess putting it at BSP is not right. Ethernet network does work on =
Tizen on Yocto:
	http://blogs.s-osg.org/tizen-rpi2-now-supporting-3d-acceleration/

Regards,
Mauro


>=20
> =20
>=20
> Signed-off-by: Herve Jourdain <herve.jourdain@neuf.fr=20
> <mailto:herve.jourdain@neuf.fr> >
>=20
> ---
>=20
> diff -Naur=20
> meta-raspberrypi.orig/recipes-core/systemd/files/eth.network
> meta-raspberrypi/recipes-core/systemd/files/eth.network
>=20
> --- meta-raspberrypi.orig/recipes-core/systemd/files/eth.network
> 1970-01-01 08:00:00.000000000 +0800
>=20
> +++ meta-raspberrypi/recipes-core/systemd/files/eth.network    =
2015-07-22
> 12:01:53.587830690 +0800
>=20
> @@ -0,0 +1,6 @@
>=20
> +[Match]
>=20
> +Name=3Deth*
>=20
> +
>=20
> +[Network]
>=20
> +DHCP=3Dv4
>=20
> +
>=20
> diff -Naur=20
> meta-raspberrypi.orig/recipes-core/systemd/systemd_%.bbappend
> meta-raspberrypi/recipes-core/systemd/systemd_%.bbappend
>=20
> --- meta-raspberrypi.orig/recipes-core/systemd/systemd_%.bbappend
> 1970-01-01 08:00:00.000000000 +0800
>=20
> +++ meta-raspberrypi/recipes-core/systemd/systemd_%.bbappend
> 2015-07-22 12:05:07.307838546 +0800
>=20
> @@ -0,0 +1,17 @@
>=20
> +FILESEXTRAPATHS_prepend :=3D "${THISDIR}/files:"
>=20
> +
>=20
> +EXTRA_OECONF +=3D "--disable-ldconfig"
>=20
> +
>=20
> +PACKAGECONFIG +=3D "networkd resolved"
>=20
> +
>=20
> +CFLAGS_append_arm =3D " -fno-lto"
>=20
> +
>=20
> +SRC_URI +=3D "file://eth.network"
>=20
> +
>=20
> +FILES_${PN} +=3D "{sysconfdir}/systemd/network/*"
>=20
> +
>=20
> +do_install_append() {
>=20
> +    install -d ${D}${sysconfdir}/systemd/network/
>=20
> +    install -m 0644 ${WORKDIR}/*.network=20
> + ${D}${sysconfdir}/systemd/network/
>=20
> +}
>=20
> +
>=20
> =20
>=20


