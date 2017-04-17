Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 02381E0053A; Sun, 16 Apr 2017 18:27:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.128.195 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.128.195 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr0-f195.google.com (mail-wr0-f195.google.com
	[209.85.128.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 683E2E003E1
	for <yocto@yoctoproject.org>; Sun, 16 Apr 2017 18:27:03 -0700 (PDT)
Received: by mail-wr0-f195.google.com with SMTP id l28so18727068wre.0
	for <yocto@yoctoproject.org>; Sun, 16 Apr 2017 18:27:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=8abUoxtudrdJdsf8VWScYmKgLr4g06wC6f5DXi65jcA=;
	b=YZWPOedUb1Ri/ISjhd8Sdwc5cqSww8fAUnHAVHM/ESYcgFGpdbBXFSI/SYMCc7uYv4
	pCJknnu4dcRcJBALPeTT9GUdwIE4+/la4euRHPkjBYDBlp3nvUvlqMb8NUO5DwKz36b5
	QNudb6WUWzqSbwzuRcqzFTWafCneTS5fp6I2DFK/FXB8MdY2tBCKwWARR24aYEvAM8ZM
	9bCjqPsb8kX9ECr4i2J9DIMRi0AIybZS2Dct/0raiYyZeQ9PI44hOtisuqh9Fi1KSyfE
	b2X/oV17zfXELo/qQlnP7rDYjOdTE4LHVwY5yL1YM69Uj+Rlae8lXGE/Azp3biKqpVqS
	fjZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=8abUoxtudrdJdsf8VWScYmKgLr4g06wC6f5DXi65jcA=;
	b=iF9m1naKq6RfCPeLP3TT2BJrK3dAkj1UVzrrTtkEsNJT8UzZQ9jk1RC570CLRYnd1D
	PHF+ou88WBJi6QmmXZmBXytZD9xtBGtoqzDf5dVnTh2CLspPhtYgtulJQkbvasFjCoit
	bLUOc6QMXeXt4rtLsXdhOUFRo/Wab6BIqw6kzFz71NYy0FVgPdQE2fJZL5TUyo38wvzZ
	ofXAECBtAyD4nUymwL+ciloZs5q4yd+ThOcF/KwuZLzo8rWnINS5i+iw80Hd5hfSFoGK
	ZjoaUuRwGm/9fQsxXAd0GIF8Q+jYujbhOEy4DK5OtvUwAXKI21yR7x+djhLmW0P931Mp
	fAIA==
X-Gm-Message-State: AN3rC/4OhHkikDz8oEroS8+1Uf6LLslLktqLC1TkuXCCMXHU0OoS7K4g
	6PuxlDLGwHvFLirT6Lo=
X-Received: by 10.223.174.130 with SMTP id y2mr12492074wrc.79.1492392423044;
	Sun, 16 Apr 2017 18:27:03 -0700 (PDT)
Received: from carbonA (host86-158-8-191.range86-158.btcentralplus.com.
	[86.158.8.191]) by smtp.gmail.com with ESMTPSA id
	o77sm12272954wrc.38.2017.04.16.18.27.02
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 16 Apr 2017 18:27:02 -0700 (PDT)
Date: Mon, 17 Apr 2017 02:27:00 +0100
From: Andrei Gherzan <andrei@gherzan.ro>
To: Andrei Gherzan <andrei@resin.io>
Message-ID: <20170417012700.GC16624@carbonA>
References: <20170417011206.29137-1-andrei@resin.io>
MIME-Version: 1.0
In-Reply-To: <20170417011206.29137-1-andrei@resin.io>
User-Agent: Mutt/1.8.0 (2017-02-23)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH 1/2] omxplayer: Bump to head and fix missing native dependency
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
X-List-Received-Date: Mon, 17 Apr 2017 01:27:05 -0000
X-Groupsio-MsgNum: 35592
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="Clx92ZfkiYIKRjnr"
Content-Disposition: inline

--Clx92ZfkiYIKRjnr
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Apr 17, 2017 at 02:12:05AM +0100, Andrei Gherzan wrote:
> Signed-off-by: Andrei Gherzan <andrei@resin.io>
> ---
>  recipes-multimedia/omxplayer/omxplayer_git.bb | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/recipes-multimedia/omxplayer/omxplayer_git.bb b/recipes-multimedia/omxplayer/omxplayer_git.bb
> index 72297d0..0e0f9ba 100644
> --- a/recipes-multimedia/omxplayer/omxplayer_git.bb
> +++ b/recipes-multimedia/omxplayer/omxplayer_git.bb
> @@ -7,10 +7,10 @@ SECTION = "console/utils"
>  LICENSE = "GPLv2"
>  LIC_FILES_CHKSUM = "file://COPYING;md5=94d55d512a9ba36caa9b7df079bae19f"
>
> -DEPENDS = "libpcre libav virtual/egl boost freetype dbus openssl samba libssh libomxil coreutils-native"
> +DEPENDS = "libpcre libav virtual/egl boost freetype dbus openssl samba libssh libomxil coreutils-native curl-native"
>  PR = "r4"
>
> -SRCREV = "62fb580260adb9b01e5694bb4374fb9a5f6f1021"
> +SRCREV = "061425a5eabf6e9ee43229911c073a863d144038"
>  SRC_URI = "git://github.com/popcornmix/omxplayer.git;protocol=git;branch=master \
>             file://0001-Remove-Makefile.include-which-includes-hardcoded.patch \
>             file://0002-Libraries-and-headers-from-ffmpeg-are-installed-in-u.patch \
> --
> 2.12.2
>

Merged to master.

--
Andrei Gherzan
gpg: rsa4096/D4D94F67AD0E9640 | t: @agherzan

--Clx92ZfkiYIKRjnr
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEE90oi/MnVCYFbB1m0Jrqo2vaxFPYFAlj0GeQACgkQJrqo2vax
FPb1gQ/7Bqezy2QyxmdyFwLIsE7D+3jFNU4095wwP5dDpce5ZyGjHgUQYV91MCXy
6W5D5JW+FpCYUjG4c3JbmfUx2pS2DsjOF+mzxEHZveXaszrXSwzaaw2js7NEgSVh
8KGWrzfgysAmXLtHxqlGP1Uvggkp0pLoR39Tht4s7bvJluiD9xJwPaqFj0G/3uCO
1vd/c5sEbgxkR3KaVvdXT9JCx2ZZqApZbiCS3KEOqlxP3Tmop4q1c28POE3eU506
hNTPXQvtabeQBFutR5p6YE8ukG0Z+pId0JKeirJQ8GxWOpdtDDiGb0WYPXubMdUb
x8TXIhr8Mhx86IWnErjE2JoVZlpXqK+8TegxtOAjlK/7b0mdMtm0FofyWo+7sXGc
wSDfUzSRuTD/0BFPTzZK631VQiM2h7M55YVXa5xMa+i2/ZRaVsT4L1s6CTQeqqNp
Af8ayNIVfq2uXzstuOX+8JAvYDaSe+WmKsCaNxwxbOp+rFUzRuCo6ctFIXkAjQcv
mFsL/uyGyEUxhU4WF+zUM9mCn1qm4W++wBtfX15MuhIqpabUjE1o8EqIDaqEkAic
bqTrB3gb8C/uihOeHLpBPmSgsthC+4LVN+VJLeYamzdhZNElZaarZ6cktty/qp6C
4iK3TcyKbOiZ0YpkNw278R26cO/uJfLl8UTY7CDiCAp6DR7Ldkc=
=QCfp
-----END PGP SIGNATURE-----

--Clx92ZfkiYIKRjnr--
