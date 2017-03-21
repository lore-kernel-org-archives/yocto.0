Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8262DE00ACE; Tue, 21 Mar 2017 09:34:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.128.193 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.193 listed in list.dnswl.org]
Received: from mail-wr0-f193.google.com (mail-wr0-f193.google.com
	[209.85.128.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 66A2BE00AD8
	for <yocto@yoctoproject.org>; Tue, 21 Mar 2017 09:34:25 -0700 (PDT)
Received: by mail-wr0-f193.google.com with SMTP id u48so23268921wrc.1
	for <yocto@yoctoproject.org>; Tue, 21 Mar 2017 09:34:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=TUnDPUXX0O20tj9itfov9Rg0CFQxO/eiIMoq21I6RXg=;
	b=IbLrn6q+9IXa7eGVLbZs6kVQl830QpWN2Q/LJ8KKziSXMyYG39gz2HxM9jyXCe/NoB
	vZTCnwSNR5WhXddJTLS5/gOCKhP8PukXTECwXs1dCk4MU5W/np05Gnpkof1uipW/g3kE
	cGdy8tVQjH/EHkzRprUFozXFTeUG5UO0euwZ3XEZb0aabblt6l/IBEZXMkBFMOS5Vbf3
	aH6rjKzjmtjohvoatfo6qrqP75L3wX96z64CPeixQ8P6uBRvsG/Z2Ql0pamDW9PgT6Bo
	DacEJSw4W31qhNxm1YdHTikdqkjiBPkPuq2ob++CiWbt3mK9FjKM9cFJgll1mEt/qMEY
	jGCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=TUnDPUXX0O20tj9itfov9Rg0CFQxO/eiIMoq21I6RXg=;
	b=IfRBpoFJ6mIyIUyaIRGWQoIR0WNy8zXA8SszfhHBf+gphzaY2kwzSRQOkhxMqjCUDk
	0baDki2VKyjP930WbuJE/7sBaw6z3nuZqPU5FTSqd/sRMo9aTL/vkyVWAh2F8QSTgdCt
	zktXQA7X9uhBGfCBjM7R5La+FDvWcY9uzrwj4dIdGfAg03HRs2c2nKCy/uRGoAaMzfmp
	+F1tbjgZl+DvuPpbjgUyisRRWU4NZtHe0IUZvlZY0IdKqKc+EDwLAXJwUYzFxFbqJupj
	mcPWGVOKAiTiJHxre45Vg6GgTsh1qYU8L83toCKR4FgRHebgCQ8HudyF5SM/Vltz6rgj
	lqqg==
X-Gm-Message-State: AFeK/H1LDSKmNOURe3ikuX3l6MDe+V5VlgIQ1hgvIGQdeUd0gMlVasKBue/v+zlhHUqBKw==
X-Received: by 10.223.134.229 with SMTP id 34mr31278643wry.104.1490114064690; 
	Tue, 21 Mar 2017 09:34:24 -0700 (PDT)
Received: from carbonA (cpc96910-walt25-2-0-cust629.13-2.cable.virginm.net.
	[82.22.166.118]) by smtp.gmail.com with ESMTPSA id
	k43sm25552060wrk.42.2017.03.21.09.34.23 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 21 Mar 2017 09:34:24 -0700 (PDT)
Date: Tue, 21 Mar 2017 16:34:22 +0000
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Message-ID: <20170321163422.GB21801@carbonA>
References: <20170321161804.21347-1-andrei@gherzan.ro>
MIME-Version: 1.0
In-Reply-To: <20170321161804.21347-1-andrei@gherzan.ro>
User-Agent: Mutt/1.8.0 (2017-02-23)
Subject: Re: [meta-raspberrypi][PATCH 1/1] omxplayer: Add dependency on coreutils-native
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
X-List-Received-Date: Tue, 21 Mar 2017 16:34:35 -0000
X-Groupsio-MsgNum: 35150
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="1UWUbFP1cBYEclgG"
Content-Disposition: inline

--1UWUbFP1cBYEclgG
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Mar 21, 2017 at 04:18:04PM +0000, Andrei Gherzan wrote:
> Internal ffmpeg configure uses pr which is provided by coreutils-native:
> | ./configure: line 471: pr: command not found
>
> Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
> ---
>  recipes-multimedia/omxplayer/omxplayer_git.bb | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/recipes-multimedia/omxplayer/omxplayer_git.bb b/recipes-multimedia/omxplayer/omxplayer_git.bb
> index c196fbf..72297d0 100644
> --- a/recipes-multimedia/omxplayer/omxplayer_git.bb
> +++ b/recipes-multimedia/omxplayer/omxplayer_git.bb
> @@ -7,7 +7,7 @@ SECTION = "console/utils"
>  LICENSE = "GPLv2"
>  LIC_FILES_CHKSUM = "file://COPYING;md5=94d55d512a9ba36caa9b7df079bae19f"
>
> -DEPENDS = "libpcre libav virtual/egl boost freetype dbus openssl samba libssh libomxil"
> +DEPENDS = "libpcre libav virtual/egl boost freetype dbus openssl samba libssh libomxil coreutils-native"
>  PR = "r4"
>
>  SRCREV = "62fb580260adb9b01e5694bb4374fb9a5f6f1021"
> --
> 2.12.0
>

Merged to master.

--
Andrei Gherzan
gpg: rsa4096/D4D94F67AD0E9640 | t: @agherzan

--1UWUbFP1cBYEclgG
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEE90oi/MnVCYFbB1m0Jrqo2vaxFPYFAljRVg4ACgkQJrqo2vax
FPZowg/+NJmDyg0kd3/n1huF0U2VOE69VeRdSsFcXp0ctnn83rGAqAaNRbRrI5dq
5k7Km9x5e4/vsmm+qSKVLjcBcpPBPTtQupc4Gbc42EN+wiqXr1ptoo/v4E2Cb+NX
Y95YEzoRip9qobaOVKSUFO96TRyh55qkbJWkEKxDjf6duCMTgZw+YRJ4tvM+o3aC
IdiscRFNQSyxDOUea2w6iwVunC4jru+adlXnJCVjZ8NWp3R07YQ5h/E3lozJ3rUY
GdlAeZnel+iA4bPcuIJUJVinAJj0kVHokkjWDlC8UiwIbRccB7WIIIeeLr829pO+
c2Bayd5DKMxqi0FbuSpZgnJcoy7cFVmHYLqUk8AQcd+UDRC7WG4Z57edJtOKlOJC
PNyZKWPvv8LeWMBp3Hdo3OXcRc8yYRshszhTUJloBYZH0Z6hZV3+PWRIGKVMjnZy
GpdYexukTvuvXTSaDM5ylJJCz/KVSPmZJEsxTPJ0rCHparfJL+62kme4bA8LCnuI
wvLJr1GardXOUdJi/wfCseVSAwAGJ3pT72vaSArWrJELyINpzusuOb5Ko74GZUev
l/Lxaqim/sx+50Mz317RzxZ/Wt6Nuhd5eGnDBafyfgC2lkh3tUARvF/ppiu/4y0b
xzdeaBZuWQjQZ3/iFKU3tEAh7SRgEPpftppNpDsxBBfKi6+XkkY=
=jJ9L
-----END PGP SIGNATURE-----

--1UWUbFP1cBYEclgG--
