Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 323C2E00E96; Fri,  8 Jul 2016 06:23:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.68 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f68.google.com (mail-wm0-f68.google.com [74.125.82.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C9E63E00E8F
	for <yocto@yoctoproject.org>; Fri,  8 Jul 2016 06:23:19 -0700 (PDT)
Received: by mail-wm0-f68.google.com with SMTP id x83so5870197wma.3
	for <yocto@yoctoproject.org>; Fri, 08 Jul 2016 06:23:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=khOd552P+JoTme1LqfVM8WR+R563J3x0j4LEpruhf74=;
	b=r7hbwja8SWUDLXrLE/iaj19hDfFI15sIkE4B7j79EEgnijmnS2NxZlpXz24HBYqHdH
	iE07eEenj34672ojFSg7TIdHHvDuOz2z2HsBhDBRyRCGvFiPPWhxhUa0RLDHLw7UOtGt
	CkI0CyeYXc3ardxZx7F+0n/EE4FBjk0Tv1shhnX6kHNiE/9q/0e620xYRgMqAsECBJ2W
	Gpra+z39NDNJMzrxZEf2MAQ2DXmtRaflaO5FwSt+5uHa1t7ccVg5SKQR+TF6iQms+zg8
	HmpnhIhsimR6gbGd0JurR3HEnuKHEcjIIjuBs/N9N13j3Xu2TYZ91jRcAVauBp17XXLb
	ZdEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=khOd552P+JoTme1LqfVM8WR+R563J3x0j4LEpruhf74=;
	b=caDCNUSNQtlqj47m4R6r7l4yT9eeyjSfbFXebcBsZi7GDLduPptLxePQF52CWbLlL9
	aTdsa8PwEL/yM6tfHX2xxrbHrLez8jVG565Q+/GlA2kQWnw2L4Yav6UcUEgZi8Eknt7E
	sXHlZibHFPwgZT2y5SgOglMNZ2YFjz31GsKolIWvV5R5oQJ1/XeLn/RQGUPKY8Lss9kO
	2+67omwWcobf33wlXQ36vwd/rb34SRxSfu+IikPVCxaFXgLcY0fB3C2er7yu9vqENP+2
	V34MRdVGA+XwTfpPR+AvQonrHK/Xn4hsczM6MOaim4/C8XHKKcFRzJ+WX4pD9k4L7Gve
	AYIg==
X-Gm-Message-State: ALyK8tLLZU2REpIttR9R8lZQ8tDRJF9IQvhKEdmzWlpdaUJLykgZiLIwk2V1glcKZ5Z/OQ==
X-Received: by 10.28.199.139 with SMTP id x133mr3242858wmf.45.1467984198325;
	Fri, 08 Jul 2016 06:23:18 -0700 (PDT)
Received: from resin.home (host86-179-71-94.range86-179.btcentralplus.com.
	[86.179.71.94]) by smtp.gmail.com with ESMTPSA id
	qf7sm1396134wjc.41.2016.07.08.06.23.16
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 08 Jul 2016 06:23:17 -0700 (PDT)
Date: Fri, 8 Jul 2016 14:23:15 +0100
From: Andrei Gherzan <andrei@gherzan.ro>
To: Khem Raj <raj.khem@gmail.com>
Message-ID: <20160708132315.GC20442@resin.home>
References: <1465948220-31466-1-git-send-email-andrei@gherzan.ro>
	<1465948220-31466-2-git-send-email-andrei@gherzan.ro>
	<B8ABF74A-BFC7-4623-86BB-187DDA582ADF@gmail.com>
MIME-Version: 1.0
In-Reply-To: <B8ABF74A-BFC7-4623-86BB-187DDA582ADF@gmail.com>
User-Agent: Mutt/1.6.1 (2016-04-27)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH 2/2] linux-raspberrypi: Fix v4.1 with GCC6
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
X-List-Received-Date: Fri, 08 Jul 2016 13:23:24 -0000
X-Groupsio-MsgNum: 30957
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="p2kqVDKq5asng8Dg"
Content-Disposition: inline

--p2kqVDKq5asng8Dg
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Jun 15, 2016 at 01:43:23PM -0700, Khem Raj wrote:
>
>
> On Tue, Jun 14, 2016 at 4:50 PM, Andrei Gherzan <andrei@gherzan.ro> wrote:
> > Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
> > ---
> > ...ove-unused-sm_cache_map_vector-definition.patch | 31 +++++++++
> > .../linux-raspberrypi-4.1/0003-fix-gcc6.patch      | 78 ++++++++++++++++++++++
> > recipes-kernel/linux/linux-raspberrypi_4.1.bb      |  2 +
> > 3 files changed, 111 insertions(+)
> > create mode 100644 recipes-kernel/linux/linux-raspberrypi-4.1/0002-vmcs-Remove-unused-sm_cache_map_vector-definition.patch
> > create mode 100644 recipes-kernel/linux/linux-raspberrypi-4.1/0003-fix-gcc6.patch
> >
> > diff --git a/recipes-kernel/linux/linux-raspberrypi-4.1/0002-vmcs-Remove-unused-sm_cache_map_vector-definition.patch b/recipes-kernel/linux/linux-raspberrypi-4.1/0002-vmcs-Remove-unused-sm_cache_map_vector-definition.patch
> > new file mode 100644
> > index 0000000..8d4a900
> > --- /dev/null
> > +++ b/recipes-kernel/linux/linux-raspberrypi-4.1/0002-vmcs-Remove-unused-sm_cache_map_vector-definition.patch
> > @@ -0,0 +1,31 @@
> > +The code using it also ifdef'ed with 0, anyyd gcc 6
> > +complains
> > +
> > +error: 'sm_cache_map_vector' defined but not used
> > +
> > +The code using it also ifdef'ed out
> > +
> > +Upstream-status: Denied [https://github.com/raspberrypi/linux/pull/1528]
> > +
> > +Signed-off-by: Khem Raj <raj.khem@gmail.com>
> > +---
> > + drivers/char/broadcom/vc_sm/vmcs_sm.c | 2 ++
> > + 1 file changed, 2 insertions(+)
> > +
> > +--- a/drivers/char/broadcom/vc_sm/vmcs_sm.c
> > ++++ b/drivers/char/broadcom/vc_sm/vmcs_sm.c
> > +@@ -197,12 +197,14 @@ struct SM_STATE_T {
> > + static struct SM_STATE_T *sm_state;
> > + static int sm_inited;
> > +
> > ++#if 0
> > + static const char *const sm_cache_map_vector[] = {
> > +       "(null)",
> > +       "host",
> > +       "videocore",
> > +       "host+videocore",
> > + };
> > ++#endif
> > +
> > + /* ---- Private Function Prototypes -------------------------------------- */
> > +
> > diff --git a/recipes-kernel/linux/linux-raspberrypi-4.1/0003-fix-gcc6.patch b/recipes-kernel/linux/linux-raspberrypi-4.1/0003-fix-gcc6.patch
> > new file mode 100644
> > index 0000000..61ec2fb
> > --- /dev/null
> > +++ b/recipes-kernel/linux/linux-raspberrypi-4.1/0003-fix-gcc6.patch
> > @@ -0,0 +1,78 @@
> > +Fix compile with GCC6
> > +
> > +Upstream-status: Denied [https://github.com/raspberrypi/linux/pull/1528]
> > +
> > +Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
> > +
> > +Index: source/include/linux/compiler-gcc6.h
> > +===================================================================
> > +--- /dev/null
> > ++++ source/include/linux/compiler-gcc6.h
> > +@@ -0,0 +1,67 @@
> > ++#ifndef __LINUX_COMPILER_H
> > ++#error "Please don't include <linux/compiler-gcc5.h> directly, include <linux/compiler.h> instead."
> > ++#endif
> > ++
> > ++#define __used                                __attribute__((__used__))
> > ++#define __must_check                  __attribute__((warn_unused_result))
> > ++#define __compiler_offsetof(a, b)     __builtin_offsetof(a, b)
> > ++
> > ++/* Mark functions as cold. gcc will assume any path leading to a call
> > ++   to them will be unlikely.  This means a lot of manual unlikely()s
> > ++   are unnecessary now for any paths leading to the usual suspects
> > ++   like BUG(), printk(), panic() etc. [but let's keep them for now for
> > ++   older compilers]
> > ++
> > ++   Early snapshots of gcc 4.3 don't support this and we can't detect this
> > ++   in the preprocessor, but we can live with this because they're unreleased.
> > ++   Maketime probing would be overkill here.
> > ++
> > ++   gcc also has a __attribute__((__hot__)) to move hot functions into
> > ++   a special section, but I don't see any sense in this right now in
> > ++   the kernel context */
> > ++#define __cold                        __attribute__((__cold__))
> > ++
> > ++#define __UNIQUE_ID(prefix) __PASTE(__PASTE(__UNIQUE_ID_, prefix), __COUNTER__)
> > ++
> > ++#ifndef __CHECKER__
> > ++# define __compiletime_warning(message) __attribute__((warning(message)))
> > ++# define __compiletime_error(message) __attribute__((error(message)))
> > ++#endif /* __CHECKER__ */
> > ++
> > ++/*
> > ++ * Mark a position in code as unreachable.  This can be used to
> > ++ * suppress control flow warnings after asm blocks that transfer
> > ++ * control elsewhere.
> > ++ *
> > ++ * Early snapshots of gcc 4.5 don't support this and we can't detect
> > ++ * this in the preprocessor, but we can live with this because they're
> > ++ * unreleased.  Really, we need to have autoconf for the kernel.
> > ++ */
> > ++#define unreachable() __builtin_unreachable()
> > ++
> > ++/* Mark a function definition as prohibited from being cloned. */
> > ++#define __noclone     __attribute__((__noclone__))
> > ++
> > ++/*
> > ++ * Tell the optimizer that something else uses this function or variable.
> > ++ */
> > ++#define __visible __attribute__((externally_visible))
> > ++
> > ++/*
> > ++ * GCC 'asm goto' miscompiles certain code sequences:
> > ++ *
> > ++ *   http://gcc.gnu.org/bugzilla/show_bug.cgi?id=58670
> > ++ *
> > ++ * Work it around via a compiler barrier quirk suggested by Jakub Jelinek.
> > ++ *
> > ++ * (asm goto is automatically volatile - the naming reflects this.)
> > ++ */
> > ++#define asm_volatile_goto(x...)       do { asm goto(x); asm (""); } while (0)
> > ++
> > ++#ifdef CONFIG_ARCH_USE_BUILTIN_BSWAP
> > ++#define __HAVE_BUILTIN_BSWAP32__
> > ++#define __HAVE_BUILTIN_BSWAP64__
> > ++#define __HAVE_BUILTIN_BSWAP16__
> > ++#endif /* CONFIG_ARCH_USE_BUILTIN_BSWAP */
> > ++
>
> should you back port below commit from upstream instead ?
>
> From cb984d101b30eb7478d32df56a0023e4603cba7f Mon Sep 17 00:00:00 2001
> From: Joe Perches <joe@perches.com <mailto:joe@perches.com>>
> Date: Thu, 25 Jun 2015 15:01:02 -0700
> Subject: [PATCH] compiler-gcc: integrate the various compiler-gcc[345].h files
>
> As gcc major version numbers are going to advance rather rapidly in the
> future, there's no real value in separate files for each compiler
> version.
>
> Deduplicate some of the macros #defined in each file too.
>
> Neaten comments using normal kernel commenting style.
>

Shoot. I've seen your email after I merged this. I leave it like this
for now but indeed this would have been a better solution.

I'll keep this in mind if this bites again.

>
> > ++#define KASAN_ABI_VERSION 4
> > diff --git a/recipes-kernel/linux/linux-raspberrypi_4.1.bb b/recipes-kernel/linux/linux-raspberrypi_4.1.bb
> > index 79fac66..87c77b8 100644
> > --- a/recipes-kernel/linux/linux-raspberrypi_4.1.bb
> > +++ b/recipes-kernel/linux/linux-raspberrypi_4.1.bb
> > @@ -5,6 +5,8 @@ LINUX_VERSION ?= "4.1.21"
> > SRCREV = "ff45bc0e8917c77461b2901e2743e6339bb70413"
> > SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-4.1.y \
> >            file://0001-dts-add-overlay-for-pitft22.patch \
> > +           file://0002-vmcs-Remove-unused-sm_cache_map_vector-definition.patch \
> > +           file://0003-fix-gcc6.patch \
> >           "
> >
> > require linux-raspberrypi.inc
> > --
> > 2.8.2
> >
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto



--
Andrei Gherzan

--p2kqVDKq5asng8Dg
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJXf6k+AAoJEHO76Gt+erfPo20P/RNk+ankjnTnFwnjH6azMxgm
vEYs2RdAbBNYokdPPfmj+8xPBkX3Mz7pg89eH3m7eyFx6+UWE5pqb6lrjjCiQEV6
N/9AVBRW07k3uxhnYSBo3dpZC5SSNcHoxZR2FxFPu5PP3Vfr7TEBOa+X82xI75uD
/9D+rg3bCas2sLNCe4MlRqBc/eZo2h3PUMh0gECU21ILGGed6VhXIMWDIiyU/1Iw
JrtCH71D0hqCPzC5vI7lmqxn7VdVeEb1eW17i89DUrO44xS7uW8X9PgzpbFR/4zl
Xaf3NbGHtCddrSweY/aI2d+TVf8YnrqN9UlX8iKsog7TU4NBPMuSTDdqOluES0nH
651zHkcOJMhQL60aU4ffCOymSBPL47ePwZJG+lqqmjBnHq3DMnBnVQeOmQiK50zJ
w+roW/zLQy11OuoIoNUAclDkLkCbKHpNKed+XHkzAk3t0AvODCX1q98b5CbHyaPE
54n1LyA70ljiLa037B/uuy/opJqQFDhyUqbfN4f8Iz3hNcfk4eV9ueRLk09IgqrW
djZiM8KUPenMKuDOsluZvR01SRmMHYjXKsaGxWfqgTJugcQbsTZDOnz3xsJUJE5i
Xk2bieS0XJaKZ8BMxH1zrEHDsF36pvfafeCoNM9n0WFBN22TWaqK0wIkr4N1ltQs
IZtoJfgDVwx21K/USu93
=gRO5
-----END PGP SIGNATURE-----

--p2kqVDKq5asng8Dg--
