Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 62A0EE009D8; Tue,  8 Nov 2016 02:30:39 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.67 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.67 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f67.google.com (mail-wm0-f67.google.com [74.125.82.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B8E85E007E8
	for <yocto@yoctoproject.org>; Tue,  8 Nov 2016 02:30:37 -0800 (PST)
Received: by mail-wm0-f67.google.com with SMTP id a20so10823910wme.2
	for <yocto@yoctoproject.org>; Tue, 08 Nov 2016 02:30:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=nKZVXH+L9maUD5Cb5ctnE78o9R26MgUVPOZNeOMjZ7k=;
	b=giM3Oibk8D1GVB373xTL9KaxuWTaGOrph9tublQQfDmlxMEZ8kRPn1GEGTj2gbdFMp
	icW6eDX4/uHb+59Ih1KQp1fjerhVw2Ps+vrRSLaiZE/IJTVXRjAFUACqj4pAjFIxYKWn
	l/9zWwExdBV6qECLm9n/kWaQOtcKhSRNyJztFUS0UtPb0fhk8uLG7f3sGcNC74xPeJIR
	shtxmZN6LImZ6g63mHft1cwTD6JWjpQLr+NrW2XPoiK659BxVvv60+QGfJ0vGBkMp0h3
	jtVUCRJBEZU1dpxQRab4aDnTYDpnxxHevC3ufBXe9HJLHneVue23QMjIGk4u2j62snhQ
	id7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=nKZVXH+L9maUD5Cb5ctnE78o9R26MgUVPOZNeOMjZ7k=;
	b=DyScFIwryOPaKaqYCm08lR6kWda7XULDvbLE8nHebyHsaWhxMxpU7+7lLRI8aWPRk+
	Q600Uf0Ws+kXaDbvhGQdTaoYbeVDXhlVixEEAiiuvoGZWvvptVYepnbZp0Yjp1AVxIMG
	el5v+ORj/4IKah42b3oxLLGniTDC9csrQWPCeTqMKYCpoD5KqaC15uQKf9K4D68pez0T
	mZsG0wlpwin18mwtW5Co71uS0SDcrzuTLRkFHkyexJbAq++OMESYkBgZ+Mb/6k9oXBqQ
	9RYQWYSMmMGYI8DlMtP8xbm/1lTYRtJ/JU/9N/95//aRxYkiNgPwETSnZodENFnOJVwp
	OBUg==
X-Gm-Message-State: ABUngveGQuxhTRHnGffz3ga34dFpbKTlhqh7qajKyHAvujh+upkED93ogRNQ8hBRu2PZCw==
X-Received: by 10.28.27.208 with SMTP id b199mr12527039wmb.82.1478601036298;
	Tue, 08 Nov 2016 02:30:36 -0800 (PST)
Received: from carbonA (adsl-191.109.242.150.tellas.gr. [109.242.150.191])
	by smtp.gmail.com with ESMTPSA id
	m194sm18799682wmg.11.2016.11.08.02.30.34
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 08 Nov 2016 02:30:35 -0800 (PST)
Date: Tue, 8 Nov 2016 10:30:18 +0000
From: Andrei Gherzan <andrei@gherzan.ro>
To: Khem Raj <raj.khem@gmail.com>
Message-ID: <20161108103018.GA19465@carbonA>
References: <20161103205709.32535-1-raj.khem@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20161103205709.32535-1-raj.khem@gmail.com>
User-Agent: Mutt/1.7.1 (2016-10-04)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH V2] gstreamer1.0-plugins-bad_%.bbappend: Set PACKAGECONFIG_GL for RPi
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
X-List-Received-Date: Tue, 08 Nov 2016 10:30:39 -0000
X-Groupsio-MsgNum: 32905
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="lrZ03NoBR/3+SXJZ"
Content-Disposition: inline

--lrZ03NoBR/3+SXJZ
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Nov 03, 2016 at 01:57:09PM -0700, Khem Raj wrote:
> Enable dispmanx support if using bcm driver
>
> Signed-off-by: Khem Raj <raj.khem@gmail.com>
> ---
> Changes from V1->V2:
> - Remove spurious "
> - Rearrange code
> - Remove duplicate packageconfig for dispmanx
>
>  .../gstreamer/gstreamer1.0-plugins-bad_%.bbappend          | 14 ++++++++++++--
>  1 file changed, 12 insertions(+), 2 deletions(-)
>
> diff --git a/recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad_%.bbappend b/recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad_%.bbappend
> index ab0280e..7292f90 100644
> --- a/recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad_%.bbappend
> +++ b/recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad_%.bbappend
> @@ -1,2 +1,12 @@
> -EXTRA_OECONF_append_rpi = " CPPFLAGS='-I${STAGING_DIR_TARGET}/usr/include/interface/vcos/pthreads \
> -                                   -I${STAGING_DIR_TARGET}/usr/include/interface/vmcs_host/linux'"
> +EXTRA_OECONF_append_rpi = " CPPFLAGS='-I${STAGING_INCDIR}/interface/vcos/pthreads \
> +                                   -I${STAGING_INCDIR}/interface/vmcs_host/linux'"
> +
> +# if using bcm driver enable dispmanx not when using VC4 driver
> +
> +PACKAGECONFIG_append_rpi = "${@bb.utils.contains('MACHINE_FEATURES', 'vc4graphics', '', ' dispmanx', d)}"
> +
> +PACKAGECONFIG_GL_rpi = "egl gles2"
> +
> +PACKAGECONFIG_append_rpi = " hls libmms faad"
> +
> +PACKAGECONFIG[dispmanx] = "--enable-dispmanx,--disable-dispmanx,userland"
> --
> 2.10.2
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

Merged to master. Thanks.

--
Andrei Gherzan

--lrZ03NoBR/3+SXJZ
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIcBAEBCAAGBQJYIak6AAoJEHO76Gt+erfPutIP/R3+dX8UiALgH4LfZF8s24tx
vkxjvZ7MB4q2BgxiCJgYDxi2eLskz0qrnTBIx9LnC68tukX0n7cJFt90Cd8p2kiY
7IgWYkETSuf1HPt4YzSP/thMR+YexWPnK+xXr37oAnl+bDoS7MkA6oT1Rv6ni79m
8JV6fZ6pPE6f8Oju5aMI7IxC4WGizXapaQB4/4hJzWl5EiLgxRWND7gMXDUmLkYo
da/56KIZMC37sRjYq5l4QOaRW9v3R3wOuoRnVJkh6pSxHbW9Jp21BMXnPyfJ5Qx5
z+HNtNi3XBvp8w8AmmY0t6zRAjcUaOj4F+begD3VD64d2n5BSUhI3gj7C8iJpv+X
IkPasOEKp1n4W5/fPEO0HfwFwMFCbkuGsdj9E1hf6/wFQiliVlTMDDDIzXptrL/E
LObZk6BwvK4Oqr+7iClDqL/gWPgCC8xgXL77aupfwfsFtAsVLK+JwIknePL5xYAY
fYWhkyvzky9j6oLsZ5RyDti4I9Iw7/OWbB+EqGTvvHydgn2LTNJ0k08LtPXabDNy
5NPC7v39larMbWrb5PFsm9H3xlfGXCXlhedj3aHxIC6leacelwdzMQ9jg9pRDb4Z
nV+VRIvzt1rBv+Wxxca7KIZW1Z8Fqc47VPn7Y0zLpLQvD5EdS5LAMN+IDlKsPvmJ
QttbqH7kQIOhPPCzS5Pn
=2FZr
-----END PGP SIGNATURE-----

--lrZ03NoBR/3+SXJZ--
