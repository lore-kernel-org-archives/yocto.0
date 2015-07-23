Return-Path: <schnitzeltony@googlemail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B3C0AE009EB; Thu, 23 Jul 2015 09:39:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (schnitzeltony[at]googlemail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.47 listed in list.dnswl.org]
Received: from mail-pa0-f47.google.com (mail-pa0-f47.google.com
	[209.85.220.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9066AE009B2
	for <yocto@yoctoproject.org>; Thu, 23 Jul 2015 09:38:56 -0700 (PDT)
Received: by pacan13 with SMTP id an13so162025533pac.1
	for <yocto@yoctoproject.org>; Thu, 23 Jul 2015 09:38:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=8Na4Y6Bwc8UIALruxJlIDozAsvXufylgFkkmiINpUR8=;
	b=J1lH0he1PvvVUr7QodcRWJdjeKcTJsNLjsPOnmepFiogCVDPQIzH0QtSUU71dwc9JH
	G6QypgJwGQ6ZOojOXyfHdau/eoxm7gyBOCkIC7U769Na6X+06rKHNr+xhZza2htXUQJR
	8snwxBEwbcY6Gk8ygmjqO1qPVgL6AKh+JsPTKwfqATckaPTjiVWk064jjlFfA4Zi64+p
	ZFInJYI5OtVWEebYU8ECmlN1IawXZ6N53gL+q38ne1iAYmX5LuiruYlxGG6UIhwBKJww
	FAP223b7vu07vIFDp6Xx4jb1c7/jxam0QpxMnub8p+rWzgouX8/XJVox8M6z/sUY9K+/
	1vOg==
MIME-Version: 1.0
X-Received: by 10.66.65.142 with SMTP id x14mr20258308pas.135.1437669535821;
	Thu, 23 Jul 2015 09:38:55 -0700 (PDT)
Received: by 10.70.65.4 with HTTP; Thu, 23 Jul 2015 09:38:55 -0700 (PDT)
In-Reply-To: <004101d0c55c$d068da20$713a8e60$@neuf.fr>
References: <004101d0c55c$d068da20$713a8e60$@neuf.fr>
Date: Thu, 23 Jul 2015 18:38:55 +0200
Message-ID: <CALbNGRRgRKX0Rh08gWPJ496oc9AY9e5XEJ6foN9m6fKcrpUgGw@mail.gmail.com>
From: =?UTF-8?Q?Andreas_M=C3=BCller?= <schnitzeltony@googlemail.com>
To: Herve Jourdain <herve.jourdain@neuf.fr>
Cc: Yocto Project <yocto@yoctoproject.org>
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
X-List-Received-Date: Thu, 23 Jul 2015 16:39:00 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Thu, Jul 23, 2015 at 5:32 PM, Herve Jourdain <herve.jourdain@neuf.fr> wr=
ote:
> This patch adds systemd-networkd for RaspberryPi in the meta-raspberrypi
> layer, in order to have Ethernet and Networking work out of the box.
>
>
>
> This said, I=E2=80=99m not 100% sure if it should be enabled in meta-rasp=
berrypi,
> instead of another custom layer.
>
> But something similar needs to be added somewhere, and with the current
> version of Yocto on RaspberryPi, without this patch, network just doesn=
=E2=80=99t
> start=E2=80=A6
>
>
>
> Signed-off-by: Herve Jourdain <herve.jourdain@neuf.fr>
>
> ---
>
> diff -Naur meta-raspberrypi.orig/recipes-core/systemd/files/eth.network
> meta-raspberrypi/recipes-core/systemd/files/eth.network
>
> --- meta-raspberrypi.orig/recipes-core/systemd/files/eth.network
> 1970-01-01 08:00:00.000000000 +0800
>
> +++ meta-raspberrypi/recipes-core/systemd/files/eth.network    2015-07-22
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
> diff -Naur meta-raspberrypi.orig/recipes-core/systemd/systemd_%.bbappend
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
> +    install -m 0644 ${WORKDIR}/*.network ${D}${sysconfdir}/systemd/netwo=
rk/
>
> +}
>
> +
Please don't modify these kind of settings in a BSP. Even worse by
doing it as suggested all machines will get this modification. This
for sake that you have no network. Why not add networkmanager or
whatever and being fine?

Andreas

