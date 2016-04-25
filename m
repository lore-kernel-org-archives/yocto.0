Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 31ED1E00D86; Mon, 25 Apr 2016 01:34:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.54 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f54.google.com (mail-wm0-f54.google.com [74.125.82.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2A3B1E00D61
	for <yocto@yoctoproject.org>; Mon, 25 Apr 2016 01:34:19 -0700 (PDT)
Received: by mail-wm0-f54.google.com with SMTP id n3so115150088wmn.0
	for <yocto@yoctoproject.org>; Mon, 25 Apr 2016 01:34:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=X/Lg1c+D9ewxY+y0ND+OLpumVnqEy3lrCGkGFuoPjRo=;
	b=Y1MkByfFji03krk+w4a/aEUR0pH3wz+waPTOg9i0bYJg451mzKA2Ma27qxs8/pd6y4
	/oYVqiNHoaxORGENaaACDZRAMCRwlRTaTM6wTSSdi7Z79cJSpA0J1iRCx30J+x8Ga361
	U4tza21cIPTSQyU5RUc83oiE2y46OYav9y75ZspFLYNcZiSy8n1aFdarnrk78Lsk0k+C
	/PvnETdY83J8HC9REZm9eUSNisyCVVnY8ZxhtL6SD0cRn8wlM1gF68a7vhHCYpId+7cH
	BYQx6xCKfWKg42vLyD22d7xDY/TJOay8Sp9L+bttBZerNPCb60HKSOjiNOVQC26FA+ZR
	fncQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=X/Lg1c+D9ewxY+y0ND+OLpumVnqEy3lrCGkGFuoPjRo=;
	b=BkKEtXsPaYFKXHGtpCtuGrSrE4ZC2H7vo9U8CWCbakx2Iy4qjlfr5ZGeoACknPzkAV
	vNVL8aqfyrkv+2QMIaPDZsTO0iSw/ziVfcswN+BKukVYfHrgVMc4KY4AIN2cK9DBG+6T
	IkIihsR+qFDfpgR6hxxvR8gtq8t0cfVk5IX5hNCReaz0wYEtGj1GhxDY7I5fJNqup5uw
	8bs1dQW77wcG7sgnnh4WXxCuVsF7MuLlCRIJ+3oW1Qr0HJinnQxiexsmWSqV4812o0Zn
	A3CDoaw2S+wFthucY02c3Ko+tQ/Hszcn9krnsEzucGwz8G2ls6Z188xa7BDwq5422Jyl
	c4rQ==
X-Gm-Message-State: AOPr4FV/GUQb1qIL66rHZxofc2RBpvn6vyYrAY0HxGDnaFaz438lSks0AMKrV3BQI82TAg==
X-Received: by 10.28.73.66 with SMTP id w63mr11062837wma.53.1461573259192;
	Mon, 25 Apr 2016 01:34:19 -0700 (PDT)
Received: from resin ([2a02:8108:9b40:1710:5ee0:c5ff:fec8:435d])
	by smtp.gmail.com with ESMTPSA id
	u187sm6376802wmu.21.2016.04.25.01.34.18 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 25 Apr 2016 01:34:18 -0700 (PDT)
Date: Mon, 25 Apr 2016 10:34:16 +0200
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Message-ID: <20160425083416.GH26977@resin>
References: <1461571840-23939-1-git-send-email-andrei@gherzan.ro>
MIME-Version: 1.0
In-Reply-To: <1461571840-23939-1-git-send-email-andrei@gherzan.ro>
User-Agent: Mutt/1.6.0 (2016-04-01)
Subject: Re: [meta-raspberrypi][PATCH] README: Switch from redmine to github issues
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
X-List-Received-Date: Mon, 25 Apr 2016 08:34:34 -0000
X-Groupsio-MsgNum: 29614
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="Dx9iWuMxHO1cCoFc"
Content-Disposition: inline

--Dx9iWuMxHO1cCoFc
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Apr 25, 2016 at 10:10:40AM +0200, Andrei Gherzan wrote:
> Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
> ---
>  README | 15 ++++++---------
>  1 file changed, 6 insertions(+), 9 deletions(-)
>
> diff --git a/README b/README
> index 5a6a0d9..c39f9ed 100644
> --- a/README
> +++ b/README
> @@ -332,18 +332,15 @@ When sending patches to mailing list, please use something like:
>
>      git send-email --to yocto@yoctoproject.org <generated patch>
>
> -7.B. Redmine
> -============
> -In order to manage and trace the meta-raspberrypi issues, we use redmine:
> -    http://redmine.gherzan.ro/projects/meta-raspberrypi
> -
> -Here we report, trace and develop bugs, features or support tickets for this
> -yocto BSP later.
> +7.B. Github issues
> +==================
> +In order to manage and trace the meta-raspberrypi issues, we use github issues:
> +    https://github.com/agherzan/meta-raspberrypi/issues
>
> -If you push patches which have a redmine issue associated, please provide the
> +If you push patches which have a github issue associated, please provide the
>  issue number in the commit log just before "Signed-off-by" line(s). Example line
>  for a bug:
> -    [Bug #13]
> +    [Issue #13]
>
>
>  8. Maintainers
> --
> 2.8.0
>

Merged to master.

--
Andrei Gherzan

--Dx9iWuMxHO1cCoFc
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJXHdaIAAoJEHO76Gt+erfPyWQQAJnYPMeNeY1TBBVGuQDdWjj7
Pgq+OMk7B2S3KtLd2wkM45BsAqUc+KOcq9MoYZjlCBHk1kIzlHKs2ehasfcsiI8c
BLYvXufIDGn2uTQw2OwBNhX+0xUzC9v983yS/y1eMehN+OgXAsYsPthjKk4mvt8b
1XDkrsudaGX9baOBbcpkKLNCwHSBGC+qzJBGhCMR1QY1j9onbLZqbu84ZLlimrfL
rGUdyi1GJC4yHEwI7FCUEu/EW2sYoQYUnFT8t/h72rr9e+Ly71gO2dMRiMtfHceX
A55d7K9kICRPYLnWUZetXSWl2DAvq9Y4Yfrkeu5AyWN61EQ9DGPfswvc7ZLcSZ6u
0rgee9OzriG2gdM1rrmo9p4EcyBX2MOQppfSlllZNBxM/0OpSSrO4q2ep5100ULv
5N06oE3Xwh17JvCxGxWsy121eYqzxnkaQkhgYqJEjjcjiPfqFATi48cm4iChm+12
TPUm2jqbArjW5FvZnafGtmHR5cKf5QrlEzll5UmnSWfErat3016Q1sJZYBYoLmET
U3SEX4bkK6/9cM8tSQMuRaPiSh5ZrmWAiF/dRIYvtZyWkyV6IXiaUog6GkWY0yVn
9PDjij0RuaM/4UFHqfOZZBaHggg+W6tXf4eP0/Q0z8vI8XE6yzR7Rcw9b1UcLss7
vefJ9sjiDGHDdhHcqXxS
=Igvh
-----END PGP SIGNATURE-----

--Dx9iWuMxHO1cCoFc--
