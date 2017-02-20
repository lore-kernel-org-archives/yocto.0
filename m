Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8FBEDE00867; Sun, 19 Feb 2017 22:28:47 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.192.193 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.192.193 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f193.google.com (mail-pf0-f193.google.com
	[209.85.192.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 41296E007BA
	for <yocto@yoctoproject.org>; Sun, 19 Feb 2017 22:28:45 -0800 (PST)
Received: by mail-pf0-f193.google.com with SMTP id c193so3663637pfb.3
	for <yocto@yoctoproject.org>; Sun, 19 Feb 2017 22:28:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:in-reply-to:user-agent;
	bh=NtxbpVAKd12CgMl58ud6qAPfMxNTsGf1pY/I5NrPe5k=;
	b=e4m873MYWovWfcmmLr5K2NRPe/SdbXtEuqKtKfewD/yFitH7+88a/KkVMdnBBjGsYy
	eQabQ3DdVWBSmb+u7KrSMpizPPMlNv80RJ02Kh0nK0315ajS331Aw0MScSgrPXFwzdrz
	76ovq7FBtsNAQrjfC0o6UNf7rVlLVhHSedesJto8ulrq02K1lhOpXY2zB4LTcn3uVm+B
	efq6LjtH2Lytlui0kkX+KCjXPgo5hd4OHBuo345mN4xBtDbu5mgdioMkd0FwbO5tx12N
	4f13Ppbi4y9aEQjrdl21eLWa7bUriVu61oTnJuYgLOCKXHRlm2vQ30amxHr04MHWWjPy
	vN8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:in-reply-to:user-agent;
	bh=NtxbpVAKd12CgMl58ud6qAPfMxNTsGf1pY/I5NrPe5k=;
	b=nN+4LN74Dis9RpfkZEqLk06y4Yrdr35+NyeMjr2hp0IaIv4gguEgLAtBKsdd0Ijlwu
	BytuQjRKC9OB9u1Pk6wxTmLgqv696wV7FIbtbrWqpTNrLVDakG5BNi0s8GJecTMTUEmX
	SohOXUwW02KmFc1KRYXnuk32cdSl9Siwc5nsucuE7/snB+wCQEXuJ1l3lVrTj1GM5x5g
	bIV8kAIG9M8DBhKyw8KvnekPb9msg5L+zkar4CtVUJGfQk6Sux8gT8Kmgzl66t3pXag2
	FiHBiXhDz6hpkCMvtpsJaAROBjNwjXzceLI+Ju8M/JirEJ9ciBdTtZmJ2/U7EHRHOmnu
	PENg==
X-Gm-Message-State: AMke39luwp8PQ4HayuRVVEV55/kODJWEz29fGBxz9BvRvhzkLfLg51Pn6qv3EMA/nNdo/Q==
X-Received: by 10.98.192.25 with SMTP id x25mr6788619pff.158.1487572125409;
	Sun, 19 Feb 2017 22:28:45 -0800 (PST)
Received: from carbonA (c-73-109-7-33.hsd1.wa.comcast.net. [73.109.7.33])
	by smtp.gmail.com with ESMTPSA id
	199sm32382778pfu.91.2017.02.19.22.28.44
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 19 Feb 2017 22:28:44 -0800 (PST)
Date: Sun, 19 Feb 2017 22:28:40 -0800
From: Andrei Gherzan <andrei@gherzan.ro>
To: Paul Barker <paul@paulbarker.me.uk>
Message-ID: <20170220062840.GB15017@carbonA>
References: <20170219111804.20566-1-paul@paulbarker.me.uk>
MIME-Version: 1.0
In-Reply-To: <20170219111804.20566-1-paul@paulbarker.me.uk>
User-Agent: Mutt/1.7.2 (2016-11-26)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][morty][PATCH 0/2] Stable branch kernel upgrades
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
X-List-Received-Date: Mon, 20 Feb 2017 06:28:47 -0000
Content-Type: text/plain; charset=us-ascii; x-action=pgp-signed

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

On Sun, Feb 19, 2017 at 11:18:02AM +0000, Paul Barker wrote:
> I'm not 100% sure what the current policy is for upgrading the kernel in
> meta-raspberrypi on a stable branch. I think it's a good idea to pull in
> upgrades from the stable kernel series when available though so that we can
> incorporate any upstream bugfixes. I'm also only considering backporting
> upgrades we've already made on master.
>
> I've also picked up the upgrade to the 4.9 kernel recipe as the old git hash
> no longer exists upstream.
>
> I've built & boot tested both 4.4 and 4.9 kernels on a rpi3 using morty plus
> these patches.
>
> Let me know if this is wanted for stable branches or not. If it is wanted, I'll
> try to do this once a month or so for morty (and pyro when it's released) until
> the end of the 12-month support period for each release.
>
> Khem Raj (1):
>   linux-raspberrypi_4.9.bb: Upgrade to 4.9.10
>
> Paul Barker (1):
>   linux-raspberrypi_4.4: Update to 4.4.48
>
>  ...-Add-rules-for-.dtbo-files-for-dts-overla.patch | 29 ++++++++++++++++++++++
>  recipes-kernel/linux/linux-raspberrypi_4.4.bb      |  4 +--
>  recipes-kernel/linux/linux-raspberrypi_4.9.bb      |  5 ++--
>  3 files changed, 34 insertions(+), 4 deletions(-)
>  create mode 100644 recipes-kernel/linux/linux-raspberrypi-4.9/0001-build-arm64-Add-rules-for-.dtbo-files-for-dts-overla.patch
>
> --
> 2.11.0
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

Merged both to morty branch. Thanks.

- --
Andrei Gherzan
gpg: rsa4096/D4D94F67AD0E9640 | t: @agherzan
-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEE90oi/MnVCYFbB1m0Jrqo2vaxFPYFAliqjJcACgkQJrqo2vax
FPZfZw//cP6SM6UNz2D/r2AVirGhmdQcJwdXzkVhaS9D1MFZlCMCdxixj/RCedXP
x9VDjYhqu+xWYssCz9fgCq9Sdx4VCe0TLdIA9zbq3EFx7jLRzmO5QCz+F4ZcKgwJ
NzY6VRjxSKf2fFWRIDUiQ0PB9IYSdbYr4g4Vkjed+peC5t1UENnhmTAF6OpBycK5
Bb70MTpCWAKgyNlNi8hX2Q/Xd9fdC1NQc6sO8qWDSWqWC5itDZ2EPqMPWzsbjtSv
9KKP0D4RKYUQ0vt/Rzg6YuGv2PujM/JB/TCn/uRiVDeFJEvwOKOLMZhmnYRLlZa6
syaroZSGpB+Me7ams+UBZiyCa+uq2Eqtd/uxn7mmrgnfyamwbOibvIcooB/At1iX
mON+g5SlV3BCf0QCVpoo1YS9moLjfxt9WCos2J1ZLhM+tFC3rRryuYYgrLLus/CR
cRPXTvOURx/iX4o1he/RYzQQ1yi23POBzzVVRM14Y0BvnPtfX6rmAVlR6wY+08CF
br3ez2xEZWkA0Raoo1WaDyZ4yvoMX+2fMUObbYtYinJaMhHY5wntEUIvmKHr23x5
8vZxWrRABJ3X9tFHwLJIP9Vg52tsYvzB/eQfrRMuwjfxTrrql0fUMuKh0mwi5XPU
cLu/k8Ha5O8C2NFJGXiplblbG690kYQM8Txoh/D7JKc1IKdRyTs=
=+Md4
-----END PGP SIGNATURE-----

