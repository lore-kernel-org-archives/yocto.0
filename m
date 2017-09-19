Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B39B5E00C2B; Tue, 19 Sep 2017 06:56:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (martin.jansa[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.68 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.68 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f68.google.com (mail-wm0-f68.google.com [74.125.82.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 07372E00BB1
	for <yocto@yoctoproject.org>; Tue, 19 Sep 2017 06:56:02 -0700 (PDT)
Received: by mail-wm0-f68.google.com with SMTP id e64so3989029wmi.2
	for <yocto@yoctoproject.org>; Tue, 19 Sep 2017 06:56:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:date:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=hSB0r/hzfOK/ZfIN/OE1l1Kj/OAL1lq36aH9f3dhqMA=;
	b=E8vVwu8B3dDQ2ckOCuRCHU+EAkzBT7TwM2WUwwgOGvoaAQgQM6PXsG3pGkdVgbJi9Q
	NZmokOIDsvIcfCSCoixQnliNSYxy5q1OrH5o4/++SS5XwsqHe98YdzQnv+5bNdZLOII8
	p3dEriqL0ymF8wY7iA3z9IS1Jmm+zwP5gImJ6fA/1BVwz7hgLilVAWNvVK6ih+6SkN55
	LR7oxmvEh5/9O/8X8RTTGdPQjacaIb9ab/Pwm7nMOVrbn6x0v+zN/isREoEeyJ8STuj5
	21b6gbqvbNX8isvagMxhp5nMXYs/JbmCZRMT81Lda3EiZXwqEw60FjztxU0yrMC/QP9H
	P+7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:date:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=hSB0r/hzfOK/ZfIN/OE1l1Kj/OAL1lq36aH9f3dhqMA=;
	b=Clow/vQfbJFbNfq+6TWGFra/40vHR/PeddSMkOev9zvXINxGd+Zfp0EFM6w7eSIbB5
	JI2pd3q65SO0SEXD8TfbkZ8TbV+uLLeKnPW/nFK3XUraq780vTsXaxk0J2ZoItxxY20J
	kjAhHc3OIvhmlUQbTDFKEB7B/yHH2ywHz/JOKagEVCwTzEKy1dIP2A69TF3foP5x8Tgo
	AD5hE39v28JFaNh5fbGPiOb6YY2gRWAYmYFf07ESNWSDQBjZEpIDi2oZSUmpskjBgDO8
	99x97g0kCTFjQSxWIFWLGe1aanaS9/TNmc46++UW3OsWgL75eReMHNjxxMhtD6h68UXo
	sRfw==
X-Gm-Message-State: AHPjjUgIle3QQrdC3hmJYYfYO0acJPa3/8BdOpNvhStKWsnjemoN4OAW
	emsDqQGvzE3MLF/Ou5gB5ec=
X-Google-Smtp-Source: AOwi7QBwD6EgrtiuRy3aVbP4AreKrfslxiaJFnybViOblhmARWY1Ih9WjtNXENGMC4htWSn2CWEA5A==
X-Received: by 10.28.104.67 with SMTP id d64mr1257222wmc.15.1505829361969;
	Tue, 19 Sep 2017 06:56:01 -0700 (PDT)
Received: from localhost ([217.30.68.212]) by smtp.gmail.com with ESMTPSA id
	d9sm10413181wrd.37.2017.09.19.06.56.00
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Tue, 19 Sep 2017 06:56:00 -0700 (PDT)
From: Martin Jansa <martin.jansa@gmail.com>
X-Google-Original-From: Martin Jansa <Martin.Jansa@gmail.com>
Date: Tue, 19 Sep 2017 15:58:29 +0200
To: Khem Raj <raj.khem@gmail.com>
Message-ID: <20170919135829.GA3797@jama>
References: <20170918054137.33583-1-raj.khem@gmail.com>
	<CA+chaQc8ZLh=hOmr+iecg1EZUM+vORLV0=ej8eJefB0GubFSpQ@mail.gmail.com>
	<CAMKF1srPjVO5Ep5ZCsxWozpzzbQxO69sderkgWfnEhg8et4RWA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAMKF1srPjVO5Ep5ZCsxWozpzzbQxO69sderkgWfnEhg8et4RWA@mail.gmail.com>
User-Agent: Mutt/1.9.0 (2017-09-02)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH 1/3] linux-raspberrypi_4.9.bb: Upgrade to 4.9.50
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
X-List-Received-Date: Tue, 19 Sep 2017 13:56:03 -0000
X-Groupsio-MsgNum: 37953
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="lrZ03NoBR/3+SXJZ"
Content-Disposition: inline

--lrZ03NoBR/3+SXJZ
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Sep 18, 2017 at 12:29:44PM -0700, Khem Raj wrote:
> On Mon, Sep 18, 2017 at 11:48 AM, Martin Jansa <martin.jansa@gmail.com> w=
rote:
> > With these 3 changes included I see following failure with raspberrypi3=
-64,
> > it might be something caused by last oe-core upgrade, but I haven't not=
iced
> > anything suspicious there.
> >
> > Looks familiar?
>=20
> havent seen it here. I would say unbolt these changes and try out see
> if it goes away or not.

The last one "linux-raspberrypi: Build dtbs with dtbs make target for
rpi64" is causing this error.

>=20
> >
> > |   VDSOL   arch/arm64/kernel/vdso/vdso.so.dbg
> > |
> > /OE/build/owpb/webos-ports/tmp-glibc/work/raspberrypi3_64-webos-linux/l=
inux-raspberrypi/1_4.9.50+gitAUTOINC+46e2d4d1bd-r0/recipe-sysroot-native/us=
r/bin/aarch64-webos-linux/../../libexec/aarch64-webos-linux/gcc/aarch64-web=
os-linux/7.2.0/ld:
> > fatal error: -shared and -static are incompatible
> > | collect2: error: ld returned 1 exit status
> > | make[3]: ***
> > [/OE/build/owpb/webos-ports/tmp-glibc/work-shared/raspberrypi3-64/kerne=
l-source/arch/arm64/kernel/vdso/Makefile:34:
> > arch/arm64/kernel/vdso/vdso.so.dbg] Error 1
> > | make[2]: *** [arch/arm64/Makefile:144: vdso_prepare] Error 2
> > | make[1]: *** [Makefile:150: sub-make] Error 2
> > | make: *** [Makefile:24: __sub-make] Error 2
> > | ERROR: oe_runmake failed
> > | WARNING:
> > /OE/build/owpb/webos-ports/tmp-glibc/work/raspberrypi3_64-webos-linux/l=
inux-raspberrypi/1_4.9.50+gitAUTOINC+46e2d4d1bd-r0/temp/run.do_compile.2934=
1:1
> > exit 1 from 'exit 1'
> >
> >
> > On Mon, Sep 18, 2017 at 7:41 AM, Khem Raj <raj.khem@gmail.com> wrote:
> >>
> >> Signed-off-by: Khem Raj <raj.khem@gmail.com>
> >> ---
> >>  recipes-kernel/linux/linux-raspberrypi_4.9.bb | 4 ++--
> >>  1 file changed, 2 insertions(+), 2 deletions(-)
> >>
> >> diff --git a/recipes-kernel/linux/linux-raspberrypi_4.9.bb
> >> b/recipes-kernel/linux/linux-raspberrypi_4.9.bb
> >> index ba17020..068965f 100644
> >> --- a/recipes-kernel/linux/linux-raspberrypi_4.9.bb
> >> +++ b/recipes-kernel/linux/linux-raspberrypi_4.9.bb
> >> @@ -1,8 +1,8 @@
> >>  FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}-${PV}:"
> >>
> >> -LINUX_VERSION ?=3D "4.9.41"
> >> +LINUX_VERSION ?=3D "4.9.50"
> >>
> >> -SRCREV =3D "4153f509b449f1c1c816cf124c314975c3daa824"
> >> +SRCREV =3D "46e2d4d1bd2c17e2f84dd90768321ee0bbaa6b8a"
> >>  SRC_URI =3D "git://github.com/raspberrypi/linux.git;branch=3Drpi-4.9.=
y"
> >>
> >>  require linux-raspberrypi.inc
> >> --
> >> 2.14.1
> >>
> >> --
> >> _______________________________________________
> >> yocto mailing list
> >> yocto@yoctoproject.org
> >> https://lists.yoctoproject.org/listinfo/yocto
> >
> >

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--lrZ03NoBR/3+SXJZ
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----

iF0EARECAB0WIQRU+ejDffEzV2Je2oc3VSO3ZXaAHAUCWcEigwAKCRA3VSO3ZXaA
HJ/8AJkBj6DtfN1VDtXd4g9bRK3ljcnoWwCeMZ1KjAiKEo06vfF9fDF9PoDRUhQ=
=k+bc
-----END PGP SIGNATURE-----

--lrZ03NoBR/3+SXJZ--
