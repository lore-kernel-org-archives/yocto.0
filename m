Return-Path: <mchehab@osg.samsung.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4AE11E009D7; Thu, 23 Jul 2015 09:10:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [54.187.51.154 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 599 seconds by postgrey-1.32 at yocto-www;
	Thu, 23 Jul 2015 09:10:34 PDT
Received: from lists.s-osg.org (lists.s-osg.org [54.187.51.154])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DE124E009B2
	for <yocto@yoctoproject.org>; Thu, 23 Jul 2015 09:10:34 -0700 (PDT)
Received: from recife.lan (177.18.21.249.dynamic.adsl.gvt.net.br
	[177.18.21.249])
	by lists.s-osg.org (Postfix) with ESMTPSA id 60087462B3;
	Thu, 23 Jul 2015 09:00:32 -0700 (PDT)
Date: Thu, 23 Jul 2015 13:00:29 -0300
From: Mauro Carvalho Chehab <mchehab@osg.samsung.com>
To: Herve Jourdain <herve.jourdain@neuf.fr>
Message-ID: <20150723130029.1268067b@recife.lan>
In-Reply-To: <004101d0c55c$d068da20$713a8e60$@neuf.fr>
References: <004101d0c55c$d068da20$713a8e60$@neuf.fr>
Organization: Samsung
X-Mailer: Claws Mail 3.11.1 (GTK+ 2.24.28; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
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
X-List-Received-Date: Thu, 23 Jul 2015 16:10:37 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Em Thu, 23 Jul 2015 17:32:35 +0200
Herve Jourdain <herve.jourdain@neuf.fr> escreveu:

> This patch adds systemd-networkd for RaspberryPi in the meta-raspberrypi
> layer, in order to have Ethernet and Networking work out of the box.
>=20
> =20
>=20
> This said, I=E2=80=99m not 100% sure if it should be enabled in meta-rasp=
berrypi,
> instead of another custom layer.
>=20
> But something similar needs to be added somewhere, and with the current
> version of Yocto on RaspberryPi, without this patch, network just doesn=
=E2=80=99t
> start=E2=80=A6

I guess putting it at BSP is not right. Ethernet network does work on Tizen
on Yocto:
	http://blogs.s-osg.org/tizen-rpi2-now-supporting-3d-acceleration/

Regards,
Mauro


>=20
> =20
>=20
> Signed-off-by: Herve Jourdain <herve.jourdain@neuf.fr
> <mailto:herve.jourdain@neuf.fr> >
>=20
> ---
>=20
> diff -Naur meta-raspberrypi.orig/recipes-core/systemd/files/eth.network
> meta-raspberrypi/recipes-core/systemd/files/eth.network
>=20
> --- meta-raspberrypi.orig/recipes-core/systemd/files/eth.network
> 1970-01-01 08:00:00.000000000 +0800
>=20
> +++ meta-raspberrypi/recipes-core/systemd/files/eth.network    2015-07-22
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
> diff -Naur meta-raspberrypi.orig/recipes-core/systemd/systemd_%.bbappend
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
> +    install -m 0644 ${WORKDIR}/*.network ${D}${sysconfdir}/systemd/netwo=
rk/
>=20
> +}
>=20
> +
>=20
> =20
>=20

