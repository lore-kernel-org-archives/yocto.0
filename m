Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E126CE00CB4; Mon, 25 Apr 2016 00:18:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.47 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f47.google.com (mail-wm0-f47.google.com [74.125.82.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 39E21E00C86
	for <yocto@yoctoproject.org>; Mon, 25 Apr 2016 00:18:11 -0700 (PDT)
Received: by mail-wm0-f47.google.com with SMTP id n3so112160544wmn.0
	for <yocto@yoctoproject.org>; Mon, 25 Apr 2016 00:18:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=OwSrqs02UM0AACo66ltlt1zuDSuEk+roRtGrtnpqShU=;
	b=uJt9qu1WfrV1hRom5PkaFGoCG0B7WUcu57iq7TTu331X1x9AqfSKAgnY8PEyOr7tMd
	yIkEr5j0wPz76zGG6F/wC7XYACfaCkkDRkoX54ENSLojMFAfF+fzJFSUxZQCVTWUD8U1
	d5Dk2NDlL2uyE69zzhdk7d2uvnOdkQJR6Tc6Q/H1kO+J+5mxKbq053LyS6/iFkz2r1df
	vNpXXRNCMp5U8RTi4Qm8kSwxHl0QWvuv0eRVEpMSZv6CmQHaraQmiPekY7lqVYv0IWrv
	fQ2qZhu4396CWCvGzBGTJh5BYsYqOcOXCXbBdU/8IcHfuJVlK6+F4REE3CfZVKrTY21i
	luJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=OwSrqs02UM0AACo66ltlt1zuDSuEk+roRtGrtnpqShU=;
	b=a3PdkNSixgb1L+laxVRAe4dMQG3mzts55v2/M1vFYiwVFql9mNd4z4twD67sVNxO9G
	wQ5I2iVL/VYrLLEcQ7q+4lW2ycSElnR+cKszSmaCW6ToyjEpVOnf/aVro8UrGficCZVj
	WIAMMlboB9tqypz7x1SEvP5vspYpyOWN+WOC5OyMMBaKtjPAx5YW/b7sX8mOUcobZRod
	ModeMQfeoEOVPlmmLGNXoC48b+P2KIvh4h5vP14CM3sfz7U6bK5PRW+QVLl1tQIKnenu
	zYSQdG0Rm8bSaD2zDGYs/qsZsjQ8ulPcvvCMntD79fIFvU2TcE/AhZ/TtMfsirJ2Fk5E
	euDQ==
X-Gm-Message-State: AOPr4FXD2tD9lclFrKCkuMlfWdNsOJMhch52lQeuhaCDa7jHG9fW2g9WH4y3+8/zNiQnug==
X-Received: by 10.194.175.70 with SMTP id by6mr9519069wjc.19.1461568691000;
	Mon, 25 Apr 2016 00:18:11 -0700 (PDT)
Received: from resin ([2a02:8108:9b40:1710:5ee0:c5ff:fec8:435d])
	by smtp.gmail.com with ESMTPSA id
	r204sm17200551wmg.20.2016.04.25.00.18.10
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 25 Apr 2016 00:18:10 -0700 (PDT)
Date: Mon, 25 Apr 2016 09:18:08 +0200
From: Andrei Gherzan <andrei@gherzan.ro>
To: Jonathan Liu <net147@gmail.com>
Message-ID: <20160425071808.GB26977@resin>
References: <1460534995-21747-1-git-send-email-net147@gmail.com>
MIME-Version: 1.0
In-Reply-To: <1460534995-21747-1-git-send-email-net147@gmail.com>
User-Agent: Mutt/1.6.0 (2016-04-01)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH] userland: fix wayland PACKAGECONFIG
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
X-List-Received-Date: Mon, 25 Apr 2016 07:18:14 -0000
X-Groupsio-MsgNum: 29609
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="3lcZGd9BuhuYXNfi"
Content-Disposition: inline

--3lcZGd9BuhuYXNfi
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Jonathan,

On Wed, Apr 13, 2016 at 06:09:55PM +1000, Jonathan Liu wrote:
> The wayland-native dependency was not added correctly.
>
> Signed-off-by: Jonathan Liu <net147@gmail.com>
> ---
>  recipes-graphics/userland/userland_git.bb | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/recipes-graphics/userland/userland_git.bb b/recipes-graphics/userland/userland_git.bb
> index ef06b12..2fdfeed 100644
> --- a/recipes-graphics/userland/userland_git.bb
> +++ b/recipes-graphics/userland/userland_git.bb
> @@ -45,7 +45,7 @@ EXTRA_OECMAKE = "-DCMAKE_BUILD_TYPE=Release -DCMAKE_EXE_LINKER_FLAGS='-Wl,--no-a
>
>  PACKAGECONFIG ?= "${@bb.utils.contains('DISTRO_FEATURES', 'wayland', 'wayland', '', d)}"
>
> -PACKAGECONFIG[wayland] = "-DBUILD_WAYLAND=TRUE -DWAYLAND_SCANNER_EXECUTABLE:FILEPATH=${STAGING_BINDIR_NATIVE}/wayland-scanner,wayland-native,wayland"
> +PACKAGECONFIG[wayland] = "-DBUILD_WAYLAND=TRUE -DWAYLAND_SCANNER_EXECUTABLE:FILEPATH=${STAGING_BINDIR_NATIVE}/wayland-scanner,,wayland wayland-native"
>
>  CFLAGS_append = " -fPIC"

Master has a similar commit merged. Thanks.

--
Andrei Gherzan

--3lcZGd9BuhuYXNfi
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJXHcSwAAoJEHO76Gt+erfPIvEP/Ao2uBorV6BftUxrJacCoVnR
LR3ByFAPKdZqGHjVxaZG6bIcbNBqshK5VAJ7c7NPtF9aXF208PJbY1X9kBjgxR9d
/S0z7QwLjzJih6MvVLni4lZ41t8+o1h0cNTuYbmg3EVtBpCEUQfsDUTKBc9JqR8D
zVSOJ6ypfi01KzIxx1uSAcxd+chcsodd6YNDpFe5vix80FPJvuJCYk1FIB/3ovrh
T7YIdFWmQZngMvjfkCe4tkYzXwrI7Uf6lqCdaRdI8wXeFf5Gad355a0AdDikOsR4
8nusr2x8I0oaLWR76zGdTkEqd3bD366qokpeqOu5E4U+9zI4ZEA4/7kJ8YPmxmKp
VUvko3ihgUqzVT5+ILShqhLSSgXdzUBY/mJ4+PPgN7eIioW0Sxvg3VBPR7EyS4+Q
pMNdg8R1OSLWj9pj5cSRiegNqVB1jAUb4jS5dSU+LmYi07k0zlEopqS2Dd87VLce
cyUWY/bEwHltcsdHwXIilAqF53e1tidfEu8xmZqoM1KBA0qokIuxjIWOSg46pRv6
WWsPE61+RkGCqreCP9LYgptkV8T861UpTma2M6sgSgaLwct5SRz/S8N6GFOCuX54
ei4V4ICTfm4Bkxk/7fWr1lSqtEZ3Nd3qBqmPqfCDnxKr5HmQOO2PhYyGJL9HuRA3
Z4gCVvwUoKbWiqpgZ5XV
=gafp
-----END PGP SIGNATURE-----

--3lcZGd9BuhuYXNfi--
