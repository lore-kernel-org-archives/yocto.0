Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DE718E009F4; Thu, 10 May 2018 15:50:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (martin.jansa[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.54 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f54.google.com (mail-wm0-f54.google.com [74.125.82.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A45D0E00831
	for <yocto@yoctoproject.org>; Thu, 10 May 2018 15:50:18 -0700 (PDT)
Received: by mail-wm0-f54.google.com with SMTP id f8-v6so6983764wmc.4
	for <yocto@yoctoproject.org>; Thu, 10 May 2018 15:50:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:date:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=9S/VWjff82ZjEIo/2I8/OfenodzB7MsHUtDaal5uZx4=;
	b=YQUB0yo5t4cRmXeevF2Zulwwx0nlJHGWHFPQVscWOQBeVnh3YAkKuoyVLG2TiX79Vp
	smAHiyQbXwLR94NKbx88lYplhVWSn8hC2HnWv2SEWpVE0M8PpZACaW03yMnvTzHv5hoy
	a1eIyFOpgdYwVJl6IpiPnGvbWJOCgSzTAS8tOrs9A68vcbJCP1EDZmdjFgPdBZ4d4yqu
	ojeL95AGistXy6VH8umojLBmzQJjDJQsBDiuiyNM1TvW5jjgrsQMBcOy7L2XY84telcR
	CAHoyACrIAwa5pRVBxJcidAuwD2NxSlDJjRiNn2TCzHPsLbqymW0/LDjn7Wp8/ZQHcFq
	i+eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:date:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=9S/VWjff82ZjEIo/2I8/OfenodzB7MsHUtDaal5uZx4=;
	b=Nq0+/gLFMnUKCJITnBAp1GI6iTvTAznSmfQTYdeSDoV0mCoXXoAIYak99Uj73+Ddn8
	yrCVBSGCcLcT7AIbhuq5UnPPlTiWyYUwuPLai5+dtGTWKfDT15qRilQod0E4G6t70jPk
	Di27WvDpCXgEI/Z7q1IgCkzpA3ytpxw/UiUegzEei7ssU7cM6VYIbASCkauY/ycy9Ah6
	3F+F6pVu7A7vLxXy40C00i1qr4UFQ8hNT8BRoC7XnyLf10Yg5ujon78zdiyxNBoR02KH
	9/hCO6C75qcLQP8TvE4gFEJp1suxCIGshZtCdSfXlRSvbeadQlCVdhXEr5npFsmOHHe3
	Po/g==
X-Gm-Message-State: ALKqPwesMq7fTdkiasw36wqcHNvUWoA8uBcEdzwsNO5J+vD/QYtjoBWg
	aRJtX5L+qroWFWuCpx70ceuSHA==
X-Google-Smtp-Source: AB8JxZrfEdqS4rTxDDFWzesHlSZ1lCvQOVh+hGMq+Bxzb3lpbdHE3OnJJKTVT8JjOl/PrxoOom9tTw==
X-Received: by 2002:a1c:d212:: with SMTP id j18-v6mr437008wmg.29.1525992617412;
	Thu, 10 May 2018 15:50:17 -0700 (PDT)
Received: from localhost ([217.30.68.212]) by smtp.gmail.com with ESMTPSA id
	x81-v6sm2677216wrb.23.2018.05.10.15.50.16
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Thu, 10 May 2018 15:50:16 -0700 (PDT)
From: Martin Jansa <martin.jansa@gmail.com>
X-Google-Original-From: Martin Jansa <Martin.Jansa@gmail.com>
Date: Fri, 11 May 2018 00:50:17 +0200
To: Andre McCurdy <armccurdy@gmail.com>
Message-ID: <20180510225017.GE1954@jama>
References: <CAMKF1spa1bbrUjQWbhdUw3C4Cxu99fU=Be3sEm+SYFNq_oxEKw@mail.gmail.com>
	<CA+chaQcUU=Dew1cATDBpuA2_f_eh1=DAyEMaDHfVx7kY88rZhg@mail.gmail.com>
	<8d962430-ac63-5e97-fd32-2c0464c62acb@gmail.com>
	<20180510191145.GA1954@jama>
	<CAJ86T=Xz+2neJPBw41_sFxd977xp=zznsgzFdbeHJ-aysJNk+g@mail.gmail.com>
	<20180510214325.GC1954@jama> <20180510220735.GD1954@jama>
	<CAJ86T=UpZ0+HTqre2Z4eAPM9LY_eH1EUO=e1v0sz7FPe4+8aRw@mail.gmail.com>
	<CA+chaQcTPwJy+dL6GvBKJTcZuiVUiztVqEDXmSwZ==b53m_mcQ@mail.gmail.com>
	<CAJ86T=XkBkKhK6mwqxnFA1CkaV5swjGKsdNv_7E9fgFa=qhdCw@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAJ86T=XkBkKhK6mwqxnFA1CkaV5swjGKsdNv_7E9fgFa=qhdCw@mail.gmail.com>
User-Agent: Mutt/1.9.5 (2018-04-13)
Cc: Yocto Project <yocto@yoctoproject.org>,
	Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>,
	openembedded-devel <Openembedded-devel@lists.openembedded.org>
Subject: Re: [OE-core] [RFT] GCC 8.1
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
X-List-Received-Date: Thu, 10 May 2018 22:50:20 -0000
X-Groupsio-MsgNum: 41105
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="ep0oHQY+/Gbo/zt0"
Content-Disposition: inline

--ep0oHQY+/Gbo/zt0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, May 10, 2018 at 03:40:53PM -0700, Andre McCurdy wrote:
> On Thu, May 10, 2018 at 3:38 PM, Martin Jansa <martin.jansa@gmail.com> wr=
ote:
> > see
> > http://lists.openembedded.org/pipermail/openembedded-core/2018-May/1506=
54.html
>=20
> Removing -fno-omit-frame-pointer isn't the same as adding
> -fomit-frame-pointer. Frame pointers may get enabled depending on the
> optimisation level etc (ie not only by -fno-omit-frame-pointer).

Should I send v2 adding -fomit-frame-pointer instead of removing
-fno-omit-frame-pointer?

The v1 fixes the issue for me with default config + DEBUG_BUILD.

> > On Fri, May 11, 2018 at 12:38 AM Andre McCurdy <armccurdy@gmail.com> wr=
ote:
> >>
> >> On Thu, May 10, 2018 at 3:07 PM, Martin Jansa <martin.jansa@gmail.com>
> >> wrote:
> >> > On Thu, May 10, 2018 at 11:43:25PM +0200, Martin Jansa wrote:
> >> >> On Thu, May 10, 2018 at 12:27:50PM -0700, Andre McCurdy wrote:
> >> >> > On Thu, May 10, 2018 at 12:11 PM, Martin Jansa
> >> >> > <martin.jansa@gmail.com> wrote:
> >> >> > > On Thu, May 10, 2018 at 11:50:02AM -0700, Khem Raj wrote:
> >> >> > >> Hi Martin
> >> >> > >>
> >> >> > >> Thanks for testing and reporting back
> >> >> > >>
> >> >> > >> On 5/9/18 2:38 AM, Martin Jansa wrote:
> >> >> > >> > My initial tests show couple issues, but usually caused by o=
ther
> >> >> > >> > changes
> >> >> > >> > in that branch, not the gcc-8 itself.
> >> >> > >> >
> >> >> > >> > 1) strace-4.22 from
> >> >> > >> >
> >> >> > >> > http://git.openembedded.org/openembedded-core-contrib/commit=
/?h=3Dkraj/gcc-8&id=3Daf33a8b721cc9caebd3f5226b4c5903f666ab654
> >> >> > >> > fails to build with ptest enabled (it builds with 4.20 versi=
on
> >> >> > >> > if I
> >> >> > >> > revert this change)
> >> >> > >> > ../../strace-4.22/tests/inject-nf.c: In function 'main':
> >> >> > >> > ../../strace-4.22/tests/inject-nf.c:86:1: error: r7 cannot be
> >> >> > >> > used in
> >> >> > >> > asm here
> >> >> > >> >   }
> >> >> > >> >   ^
> >> >> > >>
> >> >> > >> are you targeting thumb1 ? how can I reproduce it ?
> >> >> > >
> >> >> > > I'm trying to find out what's different in the builds where it =
was
> >> >> > > failing, will provide more info later.
> >> >> >
> >> >> > This is probably due to making an inline syscall from Thumb (does=
n't
> >> >> > a
> >> >> > matter Thumb1 or Thumb2) with frame pointers enabled.
> >> >> >
> >> >> > Does adding -fomit-frame-pointer to CFLAGS fix it?
> >> >>
> >> >> It was with raspberrypi3, thumb (Thumb2) enabled in DISTRO, there is
> >> >> already -fno-omit-frame-pointer in the default command line for it,
> >> >> adding -fomit-frame-pointer at the end fixes it:
> >> >>
> >> >> docker-lge @
> >> >> ~/build/build-webos-master/BUILD/work/raspberrypi3-webos-linux-gnue=
abi/strace/4.22-r0/build/tests
> >> >> $ arm-webos-linux-gnueabi-gcc  -march=3Darmv7ve -mthumb -mfpu=3Dneo=
n-vfpv4
> >> >> -mfloat-abi=3Dhard -mcpu=3Dcortex-a7
> >> >> --sysroot=3D/OE/webos/build/build-webos-master/BUILD/work/raspberry=
pi3-webos-linux-gnueabi/strace/4.22-r0/recipe-sysroot
> >> >> -DHAVE_CONFIG_H    -I. -I../linux/arm -I../../strace-4.22/linux/arm
> >> >> -I../linux -I../../strace-4.22/linux -I.. -I../../strace-4.22
> >> >> -DTESTS_SIZEOF_KERNEL_LONG_T=3D4 -DTESTS_SIZEOF_LONG=3D4  -Wall -We=
mpty-body
> >> >> -Wformat-security -Wignored-qualifiers -Wimplicit-fallthrough=3D5 -=
Winit-self
> >> >> -Wlogical-op -Wmissing-parameter-type -Wnested-externs
> >> >> -Wold-style-declaration -Wold-style-definition -Wsign-compare -Wtyp=
e-limits
> >> >> -Wwrite-strings -O -fno-omit-frame-pointer -g -feliminate-unused-de=
bug-types
> >> >> -fdebug-prefix-map=3D/OE/webos/build/build-webos-master/BUILD/work/=
raspberrypi3-webos-linux-gnueabi/strace/4.22-r0=3D/usr/src/debug/strace/4.2=
2-r0
> >> >> -fdebug-prefix-map=3D/OE/webos/build/build-webos-master/BUILD/work/=
raspberrypi3-webos-linux-gnueabi/strace/4.22-r0/recipe-sysroot=3D
> >> >> -fdebug-prefix-map=3D/OE/webos/build/build-webos-master/BUILD/work/=
raspberrypi3-webos-linux-gnueabi/strace/4.22-r0/recipe-sysroot-native=3D
> >> >> -pipe  -c -o inject-nf.o ../../strace-4.22/tests/inject-nf.c
> >> >> -fomit-frame-pointer
> >> >>
> >> >> This might come from:
> >> >> meta/conf/bitbake.conf:DEBUG_OPTIMIZATION =3D "-O -fno-omit-frame-p=
ointer
> >> >> ${DEBUG_FLAGS} -pipe"
> >> >> because in this build I had DEBUG_BUILD enabled.
> >> >>
> >> >> Will retest with 4.20 version + DEBUG_BUILD to see if it fails ther=
e as
> >> >> well now.
> >> >
> >> > 4.20 doesn't fail with DEBUG_BUILD, because inject-nf.c test is new =
in
> >> > 4.22:
> >> >
> >> >
> >> > https://github.com/strace/strace/commit/58598cd7f6e23e531d71bfe5a4e3=
5f898a4f3b2d#diff-dc01d20c1e55f8adf7536cb46d4481e1
> >> >
> >> > What is preferred fix for this? Is adding -fomit-frame-pointer to CF=
LAGS
> >> > when ptest is in DISTRO_FEATURES acceptable solution?
> >>
> >> I would say unconditionally adding -fomit-frame-pointer to CFLAGS for
> >> all builds is OK (strace is a debug tool - not something that
> >> generally needs to be debugged and frame pointers aren't essential for
> >> debugging anyway).

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--ep0oHQY+/Gbo/zt0
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----

iF0EARECAB0WIQRU+ejDffEzV2Je2oc3VSO3ZXaAHAUCWvTMqAAKCRA3VSO3ZXaA
HLhHAJ90nWfy0yTZ7ir3rtSKTCn7AD93vQCeJqRikKMiv3c7+JOUbvWgzItvRw4=
=swE6
-----END PGP SIGNATURE-----

--ep0oHQY+/Gbo/zt0--
