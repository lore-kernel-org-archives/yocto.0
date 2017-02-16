Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D2E61E00510; Thu, 16 Feb 2017 11:54:41 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.83.67 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.83.67 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f67.google.com (mail-pg0-f67.google.com [74.125.83.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2D424E004A0
	for <yocto@yoctoproject.org>; Thu, 16 Feb 2017 11:54:38 -0800 (PST)
Received: by mail-pg0-f67.google.com with SMTP id 13so1838973pgd.3
	for <yocto@yoctoproject.org>; Thu, 16 Feb 2017 11:54:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=obvmYHokLKkQr9htHqSMyxYNI+nYsNXcmo0fXkuEOLQ=;
	b=eZDaW3lQzMJD/eT6Li8iBZmYUylvOPF7q61Gmi/z4ZdiCb9Ttl2zy4BfYWWzmlZjhE
	45eY4ONQ+srT0C8IHaMZVuSyzQwEp6zrhwYj5inKnq52MTcnxGXmuM7aC0Am1eIrJiWZ
	BwDi4+eGTsnTO/hfKrzhl94P3u8JhFzReZ7RzVQmfO8lK28tDgRTHHfOp1Rb4BZ/BGwD
	zOKW0O6gNPgdFpGYer2m+gkd1N5VYI6mSX2PhbRi0rKcFwxyILqyQKJw6iXfHa/SNHQU
	5kySyhf3CNCAcrwtdwYnJKIAq5SOsY9dJJJLNbc4OWKCoZTYHV+Qyxbx4+YfEAY7MNgu
	2WxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=obvmYHokLKkQr9htHqSMyxYNI+nYsNXcmo0fXkuEOLQ=;
	b=juzzlrdRKFjAg12iQer7rE3R925KHqa1AfDr+UW8xamvyPRv3a874Arv0UDoeD/72K
	xrg0vrYeTdBCi8Oq5Ngklf4SnHJYZzZ+EFZEseWsJez4yQ6ZZCDrQOOVBOf7d/VSeh4H
	RcsmIsiO+Dssr8GgfocYA9BU4r9TlhYGtWeBth6KiSIA6BoU6IDmLhSgC8zyPpyEycye
	zc8Z6UkyGdrjABlccNppGubH4vjtC1uIwwkAzWKuCvFulVeL3kNznmvcWUvyvTvbAjtm
	BajL+H8MmiLfGm7UNrqHuvazo26s1jn3AleXkDxiIBaLOFQtCH/sUkk+pMxD9UPhOLRT
	1Tpg==
X-Gm-Message-State: AMke39kv981i/6vSHy67+fNk86hcp7QdBC4AiYchXbU223yvTCdC/RtXjjUbOFdDxd51qg==
X-Received: by 10.98.74.84 with SMTP id x81mr4611904pfa.172.1487274878664;
	Thu, 16 Feb 2017 11:54:38 -0800 (PST)
Received: from carbonA ([2603:3023:807:fbe0:ab77:6fd:9c01:1923])
	by smtp.gmail.com with ESMTPSA id
	m6sm15094413pfg.126.2017.02.16.11.54.37
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 16 Feb 2017 11:54:38 -0800 (PST)
Date: Thu, 16 Feb 2017 11:54:36 -0800
From: Andrei Gherzan <andrei@gherzan.ro>
To: Khem Raj <raj.khem@gmail.com>
Message-ID: <20170216195436.GB29416@carbonA>
References: <20170212052655.12342-1-raj.khem@gmail.com>
	<20170212052655.12342-3-raj.khem@gmail.com>
	<20170216020918.GE31588@carbonA>
	<CAMKF1srjMUswSDM8eUUd1jLT_knfKhRjtde88pwt7H22X+z6ZQ@mail.gmail.com>
	<CAMKF1so5J-hMdxUPp15c+xgpnZRpcAikiuRMhzQ12MGFOsWWSg@mail.gmail.com>
	<20170216060129.GA25376@carbonA>
	<CAMKF1sr=Du497sPqQBHK+wSKKdzsLmbqE+TneMuf0LeYRDN1BA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAMKF1sr=Du497sPqQBHK+wSKKdzsLmbqE+TneMuf0LeYRDN1BA@mail.gmail.com>
User-Agent: Mutt/1.7.2 (2016-11-26)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH V2 03/11] raspberrypi3-64.conf: Use 4.9 as default kernel
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
X-List-Received-Date: Thu, 16 Feb 2017 19:54:41 -0000
X-Groupsio-MsgNum: 34544
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="3lcZGd9BuhuYXNfi"
Content-Disposition: inline

--3lcZGd9BuhuYXNfi
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Feb 16, 2017 at 06:52:23AM -0800, Khem Raj wrote:
> On Wed, Feb 15, 2017 at 10:01 PM, Andrei Gherzan <andrei@gherzan.ro> wrote:
> > On Wed, Feb 15, 2017 at 06:47:17PM -0800, Khem Raj wrote:
> >> On Wed, Feb 15, 2017 at 6:34 PM, Khem Raj <raj.khem@gmail.com> wrote:
> >> > On Wed, Feb 15, 2017 at 6:09 PM, Andrei Gherzan <andrei@gherzan.ro> wrote:
> >> >> On Sat, Feb 11, 2017 at 09:26:47PM -0800, Khem Raj wrote:
> >> >>> Signed-off-by: Khem Raj <raj.khem@gmail.com>
> >> >>> ---
> >> >>>  conf/machine/raspberrypi3-64.conf | 2 ++
> >> >>>  1 file changed, 2 insertions(+)
> >> >>>
> >> >>> diff --git a/conf/machine/raspberrypi3-64.conf b/conf/machine/raspberrypi3-64.conf
> >> >>> index 5598e50..cdcd726 100644
> >> >>> --- a/conf/machine/raspberrypi3-64.conf
> >> >>> +++ b/conf/machine/raspberrypi3-64.conf
> >> >>> @@ -13,3 +13,5 @@ SERIAL_CONSOLE = "115200 ttyS0"
> >> >>>  VC4_CMA_SIZE ?= "cma-256"
> >> >>>
> >> >>>  UBOOT_MACHINE = "rpi_3_config"
> >> >>> +
> >> >>> +PREFERRED_VERSION_linux-raspberrypi ?= "4.9.%"
> >> >>
> >> >> This doesn't really work as rpi-default-versions.inc already sets the
> >> >> version and this will not overwrite. Maybe have this before including
> >> >> rpi-base.inc?
> >> >
> >> > actually I realized that I set the PREFERRED_VERSION_linux-raspberrypi
> >> > in my local.conf and that overrides all. I will send a followup for
> >> > this.
> >> >
> >>
> >> just sent a series of 3 patches which should take care of this problem
> >> please apply it on top of this series.
> >
> > As well omxplayer compilation fails on this machine:
> >
> > | ERROR: oe_runmake failed
> > | aarch64-poky-linux-gcc is unable to create an executable file.
> > | C compiler test failed.
> >
> > Can you take a look on this?
>
> sure, as I said so far I have booted rpi-hwup-image and
> core-image-weston builds and boots into console, no graphics yet. so
> not all packages may yet build but we have a start.

Uh OK. I haven't caught this detail.

--
Andrei Gherzan
gpg: rsa4096/D4D94F67AD0E9640 | t: @agherzan

--3lcZGd9BuhuYXNfi
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEE90oi/MnVCYFbB1m0Jrqo2vaxFPYFAlimA3wACgkQJrqo2vax
FPZ1lw/+N0INRWROeG6Xs5YoHi2RQc8AUEsPxbkRw+fM72TTInNWelSYnBv3tHv4
qRK96u4YJ5YCoFJ17uADo++wzmdr45SaNDL9cqpLubWDs+ptsKEEzqMZ2tgITIoC
dYQMk/MYGWT7g6XE7+7YGrlOKEN7UQ+IZ9ueBaeAbgC6THqYkXhOf12JjAufbyrp
fCR+haVZRn2b9ddvwn8cnoYOCVw3KiZ/ArrDoMEdGz3wTbS77Lgb4un12GOsJ1wE
0M4vWtOK4NY7XqoEEJJ5p9Eyz9n3k4R48iSZ+Z/N3pmBi9TfFju24w30PsrWNrKS
HER5YK1I6kFd+9s5PStGxlgcxeT0ZmO7rpvmzqGxSn+0ettz2Am37c5xfBxK/FBd
kBoEF6jTpMhukgipYOzeL8zTUfLBMfdpJvaTqbwcEyoXiScwAGwvrt/vzbr4GSmZ
B04/F3TaxxaPkpyxdqJysAsVqYS2K5U4Vd6EFFXxwCRE27/aVPDm4T0Sw0oqVaUH
lbaY5DLLAIXZUgnRaSUU6v3Igsma9lRbkS0tksWll5J3IMqC69JZYkmKVChBvOqF
qz/WeoLl6SMWQAuOxBCh9HeQKCymNfyBg8lDp8C9H+oW90AptCeI8md5fsaIK9U3
CARmRgXUjxTaXvl6cKuArPMxR24mhPMObP5LA1P5B79NmsoqmzA=
=6lBd
-----END PGP SIGNATURE-----

--3lcZGd9BuhuYXNfi--
