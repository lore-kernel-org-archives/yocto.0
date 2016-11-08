Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 87704E009C9; Tue,  8 Nov 2016 01:06:29 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_WEB autolearn=no version=3.3.1
X-Spam-HAM-Report: * 2.8 RCVD_IN_SORBS_WEB RBL: SORBS: sender is an abusable
	web server *      [46.198.0.251 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.68 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f68.google.com (mail-wm0-f68.google.com [74.125.82.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 236DFE00571
	for <yocto@yoctoproject.org>; Tue,  8 Nov 2016 01:06:24 -0800 (PST)
Received: by mail-wm0-f68.google.com with SMTP id a20so10381798wme.2
	for <yocto@yoctoproject.org>; Tue, 08 Nov 2016 01:06:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=kr0e5MzHAFy0F+/pIIG1hCkITdSRgeBwYBPL4XQN6FY=;
	b=hvK6Hut6/WJdMPFykvmG5RA5HxDEi4pwjMLaj/a3tQV0KBi/leO9Yj7I+snmD0UgUW
	JMauc8kDbOswz1T1T/7qcbKpmOB6UikzX1hLj3Ie8OfkFj8UHLOfRN2ah46zPnxlx7g1
	GDdb+fWoH2vliaplx3CVQ26NevfYk3mwr0kSJe48SkhGee5QDSbnYEmcqXQm2nRkN+LN
	wfPFNUDVL/zelqPgG2tSY3aixMexjMaltIFB3ZjlbAYAzANWqOZGsTQUAUYNYIp8tME3
	D0ptdu5IasolQms/HduP0zx14BGpIbqopQABDc6YfBVNVjVfz8hM9Kgg9+VVZ/YGO+BS
	DFoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=kr0e5MzHAFy0F+/pIIG1hCkITdSRgeBwYBPL4XQN6FY=;
	b=P31nE9rlkogSP/NEEcZlk1nZ76zVL6jSqng/qGrZAYkFrgT8GiUpvkwVWFZbCbJnK3
	T067pzTVM/oW7NjqTTwpJB2fPcgD+GmlV1v8O+btg6eruGxUL6pTPbDC6ZX6sFr9i+Km
	RfI7EOoCdmO0p9KJKegA9dT0gHPnsOPAgG8ui3MURz1dQvX47jlM2diRryHjXGeaTDcO
	m+PsY4N9ojtH4tB1aO1rgdBycL9WwdEEm9tX3/n3rhuQhb6TAuMqgDLt8sTLLtW8ncdE
	GAguG+0FtoNcLcDbvrGASPKP3QKQTSgVTWMszM+iRF+7suelZqY/GNiXjE7uBp9Eg0Xl
	e8cg==
X-Gm-Message-State: ABUngvdftN43ImYV1GsVl7rpVhjlv3kgzbStnbgNSpBXGKtP2+wGO0DZb8AdmlF/qxqFRA==
X-Received: by 10.28.31.65 with SMTP id f62mr12529722wmf.108.1478595982208;
	Tue, 08 Nov 2016 01:06:22 -0800 (PST)
Received: from carbonA.lan (46-198-0-251.adsl.cyta.gr. [46.198.0.251])
	by smtp.gmail.com with ESMTPSA id q7sm35821739wjh.9.2016.11.08.01.06.20
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 08 Nov 2016 01:06:21 -0800 (PST)
Date: Tue, 8 Nov 2016 09:06:14 +0000
From: Andrei Gherzan <andrei@gherzan.ro>
To: Jonathan Liu <net147@gmail.com>
Message-ID: <20161108090557.GA16047@carbonA.lan>
References: <20161105035658.9590-1-net147@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20161105035658.9590-1-net147@gmail.com>
User-Agent: Mutt/1.7.1 (2016-10-04)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH] rpi-base.inc: Include pi3-disable-bt-overlay.dtb
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
X-List-Received-Date: Tue, 08 Nov 2016 09:06:29 -0000
X-Groupsio-MsgNum: 32903
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="lCAWRPmW1mITcIfM"
Content-Disposition: inline

--lCAWRPmW1mITcIfM
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Sat, Nov 05, 2016 at 02:56:58PM +1100, Jonathan Liu wrote:
> This is used to disable Bluetooth and restore the serial console.
>
> Signed-off-by: Jonathan Liu <net147@gmail.com>
> ---
>  conf/machine/include/rpi-base.inc | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/conf/machine/include/rpi-base.inc b/conf/machine/include/rpi-base.inc
> index 3364516..6657aff 100644
> --- a/conf/machine/include/rpi-base.inc
> +++ b/conf/machine/include/rpi-base.inc
> @@ -36,6 +36,7 @@ KERNEL_DEVICETREE ?= " \
>      overlays/rpi-ft5406.dtbo \
>      overlays/w1-gpio.dtbo \
>      overlays/w1-gpio-pullup.dtbo \
> +    overlays/pi3-disable-bt.dtbo \
>      overlays/pi3-miniuart-bt.dtbo \
>      overlays/vc4-kms-v3d.dtbo \
>      "
> --
> 2.10.1
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

Merged to master. Thanks.

--
Andrei Gherzan

--lCAWRPmW1mITcIfM
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIcBAEBCAAGBQJYIZWGAAoJEHO76Gt+erfPkwEQALpXOW8OF/xlvso/M09DNvrH
cboDSpKrHvQEg7wKcOWjK36/MfC3LZMqguXCtknIwYCWspTVu5AYH+f87apZp1j1
E5swOeUmqkc70cfG7TK+w5JpEUtmxCkF3kBS98wI3tFmYjDI9yJGdJMu/cLoldgx
P6PaxtTzjE+4gcNd5R0GaBy2M2XaR9FaPKa8R7Q0Sh/DPrMmmp4ap/qixuUUFAUc
mm0rLlJG0WMTAA1vGXFpqm5hsZeweR8JJJJ1ihW4y3bgJfAeBTrjauoClUIPhAYX
8mDj8UvlDoUu6yhmvilBni/3VgJ7DgiRGUjabDIq9FkKoDBAYyYDg7zUyfossVvo
cghJtaBtM3G1PwhLQxdY4UxGUL5sYBAQaZm4HgH7QrkJdcKtI9tdsvohk3C34uPQ
e+fUnjk6+tHMAqXnc+YDyQwucMFEXMEEpwEAF25+/fvNt+GRXJt/JGzSVrnb/B1b
wVKDE5YmtRLUgiA1yvsuFGLiHHcVg9txjLcH9Oq5okKMOeVDcBWBobn/lVlpojhq
3c1J2+CoWCKn+6yegSYJdE04xznVhqlycCmgE9lMvhXwXqkWaSh37260WRLgAFN9
NThF6cFJuDNEH0M4HpZ1a0u1f8BpPVvn8TSHIujmEgdnaVRJPvxNy6ATcd4YBZLm
2FssqSFtvgkX7ZB0a02M
=/Itj
-----END PGP SIGNATURE-----

--lCAWRPmW1mITcIfM--
