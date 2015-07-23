Return-Path: <herve.jourdain@neuf.fr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 73617E009B3; Thu, 23 Jul 2015 15:50:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [93.17.128.1 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp21.services.sfr.fr (smtp21.services.sfr.fr [93.17.128.1])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0A808E0087F
	for <yocto@yoctoproject.org>; Thu, 23 Jul 2015 15:50:21 -0700 (PDT)
Received: from filter.sfr.fr (localhost [1.169.170.132])
	by msfrf2109.sfr.fr (SMTP Server) with ESMTP id EBDA77000094;
	Fri, 24 Jul 2015 00:50:20 +0200 (CEST)
Authentication-Results: sfrmc.priv.atos.fr; dkim=none (no signature);
	dkim-adsp=none (no policy) header.from=herve.jourdain@neuf.fr
Received: from hjo-pc (1-169-170-132.dynamic.hinet.net [1.169.170.132])	(using
	TLSv1 with cipher AES128-SHA (128/128 bits))	(No client certificate
	requested)
	by msfrf2109.sfr.fr (SMTP Server) with ESMTP id 4FC407000081;
	Fri, 24 Jul 2015 00:50:19 +0200 (CEST)
X-SFR-UUID: 20150723225019326.4FC407000081@msfrf2109.sfr.fr
Received: from hjopc
	by hjo-pc (PGP Universal service);  Fri, 24 Jul 2015 00:50:19 +0100
X-PGP-Universal: processed;	by hjo-pc on Fri, 24 Jul 2015 00:50:19 +0100
From: Herve Jourdain <herve.jourdain@neuf.fr>
To: 'Andreas =?iso-8859-1?q?M=FCller=27?= <schnitzeltony@googlemail.com>
References: <004101d0c55c$d068da20$713a8e60$@neuf.fr>
	<CALbNGRRgRKX0Rh08gWPJ496oc9AY9e5XEJ6foN9m6fKcrpUgGw@mail.gmail.com>
In-Reply-To: <CALbNGRRgRKX0Rh08gWPJ496oc9AY9e5XEJ6foN9m6fKcrpUgGw@mail.gmail.com>
Date: Fri, 24 Jul 2015 00:50:14 +0200
Message-ID: <021f01d0c599$f338f9d0$d9aaed70$@neuf.fr>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AQFnXKxyRAcEzfeDEFvGsDtkXP+9rgHxjRycnqztJ4A=
Cc: 'Yocto Project' <yocto@yoctoproject.org>
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
X-List-Received-Date: Thu, 23 Jul 2015 22:50:24 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Content-Language: fr

Indeed, it's a valid point, and I should probably be more cautious in =
the naming of the bbappend.
This said, I - maybe wrongfully - assumed that anyone including the =
meta-raspberrypi layer would actually want to run on a raspberrypi, =
which does have an Ethernet interface I believe on all machines - I only =
have a RaspberryPi 2, so I didn't check all other devices, so might =
assumption might be wrong there.
Is there any version of raspberrypi without an Ethernet interface?

BR,

Herve

-----Original Message-----
From: Andreas M=C3=BCller [mailto:schnitzeltony@googlemail.com]=20
Sent: jeudi 23 juillet 2015 18:39
To: Herve Jourdain
Cc: Andrei Gherzan; Petter Mab=C3=A4cker; Yocto Project
Subject: Re: [yocto] [meta-raspberrypi][PATCH] Add networkd as default =
for RaspberryPi

On Thu, Jul 23, 2015 at 5:32 PM, Herve Jourdain <herve.jourdain@neuf.fr> =
wrote:
> This patch adds systemd-networkd for RaspberryPi in the=20
> meta-raspberrypi layer, in order to have Ethernet and Networking work =
out of the box.
>
>
>
> This said, I=E2=80=99m not 100% sure if it should be enabled in=20
> meta-raspberrypi, instead of another custom layer.
>
> But something similar needs to be added somewhere, and with the=20
> current version of Yocto on RaspberryPi, without this patch, network=20
> just doesn=E2=80=99t start=E2=80=A6
>
>
>
> Signed-off-by: Herve Jourdain <herve.jourdain@neuf.fr>
>
> ---
>
> diff -Naur=20
> meta-raspberrypi.orig/recipes-core/systemd/files/eth.network
> meta-raspberrypi/recipes-core/systemd/files/eth.network
>
> --- meta-raspberrypi.orig/recipes-core/systemd/files/eth.network
> 1970-01-01 08:00:00.000000000 +0800
>
> +++ meta-raspberrypi/recipes-core/systemd/files/eth.network    =
2015-07-22
> 12:01:53.587830690 +0800
>
> @@ -0,0 +1,6 @@
>
> +[Match]
>
> +Name=3Deth*
>
> +
>
> +[Network]
>
> +DHCP=3Dv4
>
> +
>
> diff -Naur=20
> meta-raspberrypi.orig/recipes-core/systemd/systemd_%.bbappend
> meta-raspberrypi/recipes-core/systemd/systemd_%.bbappend
>
> --- meta-raspberrypi.orig/recipes-core/systemd/systemd_%.bbappend
> 1970-01-01 08:00:00.000000000 +0800
>
> +++ meta-raspberrypi/recipes-core/systemd/systemd_%.bbappend
> 2015-07-22 12:05:07.307838546 +0800
>
> @@ -0,0 +1,17 @@
>
> +FILESEXTRAPATHS_prepend :=3D "${THISDIR}/files:"
>
> +
>
> +EXTRA_OECONF +=3D "--disable-ldconfig"
>
> +
>
> +PACKAGECONFIG +=3D "networkd resolved"
>
> +
>
> +CFLAGS_append_arm =3D " -fno-lto"
>
> +
>
> +SRC_URI +=3D "file://eth.network"
>
> +
>
> +FILES_${PN} +=3D "{sysconfdir}/systemd/network/*"
>
> +
>
> +do_install_append() {
>
> +    install -d ${D}${sysconfdir}/systemd/network/
>
> +    install -m 0644 ${WORKDIR}/*.network=20
> + ${D}${sysconfdir}/systemd/network/
>
> +}
>
> +
Please don't modify these kind of settings in a BSP. Even worse by doing =
it as suggested all machines will get this modification. This for sake =
that you have no network. Why not add networkmanager or whatever and =
being fine?

Andreas


