Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3283CE00E8A; Fri,  8 Jul 2016 04:09:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.67 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f67.google.com (mail-wm0-f67.google.com [74.125.82.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 31EF9E00D52
	for <yocto@yoctoproject.org>; Fri,  8 Jul 2016 04:09:31 -0700 (PDT)
Received: by mail-wm0-f67.google.com with SMTP id k123so5513316wme.2
	for <yocto@yoctoproject.org>; Fri, 08 Jul 2016 04:09:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=v82cKRdoHVgOABtmrf9aiXmB2Aau9g6pcKawHeWrvBg=;
	b=JJ+VYKy5a8+x0QIp4DJgWIeX01en5asqaeledM8oTkzzVvdjMDXeLIqpgdyZd9lRaw
	LJIcmyOrqKUX3B8nUhjuV/p891blLA9Yw9IoxCwL3LLP7RIcn0DxKrsAxmDEzxH5acea
	ZM2wJzOz6huX9uReSbnUKAbOz5KsHp22JjqcMxyFm+W2zkpm0AuatcaLOjJZLm4oLMue
	W4qeCyMc0OH01XfilsGOLYIS/QSTa2F9bpoccPU8ab1p0D4Gw608BOouyIcO4JhOBzQb
	K25kykXgebhuFhxrOri+7LPjOGW2MRMBNaJiV4IeFIdSJzJA1q9Ja7+ApEa0siWJgila
	yCVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=v82cKRdoHVgOABtmrf9aiXmB2Aau9g6pcKawHeWrvBg=;
	b=ir/ljRW4qTejdH6GcAxh/iaMRU5H1gBtxT48S7xPoHBHgzeT/irkyqph+npen6DTtN
	M2XPC1CLIB7iwVfK+d9cnAVwue5Dz7MHiFqxx2mFv/Qq/UEhzHrUfqhJolqUlhBMBtB9
	vHpkOv40FrDPR8uFJ1904b84ryouR1AnoZ5TDpk9Gamd6ByB9IXhRl1i9RV1mDsSF7cy
	0NzTG1nBPKQbsdMZGlabYY0lmhXdUJizVDzAY7NWa7eC83LV/rilZneQgKGThHCc199z
	5rAzAsILaySerCAFhMW8yKpf3ldfMnN12/4sAl+uMzoBsZKCCVwehHgDpNzdZof7QLkg
	g4ng==
X-Gm-Message-State: ALyK8tIHQpmLJu5P7pWwEJqRbe2Q8+aFWc2ysFEureeKSq76a6I/XMFUWm+zZPlPKiit3A==
X-Received: by 10.28.155.196 with SMTP id d187mr2956904wme.30.1467976170566;
	Fri, 08 Jul 2016 04:09:30 -0700 (PDT)
Received: from resin.home (host86-179-71-94.range86-179.btcentralplus.com.
	[86.179.71.94])
	by smtp.gmail.com with ESMTPSA id bb4sm61865wjb.32.2016.07.08.04.09.30
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 08 Jul 2016 04:09:30 -0700 (PDT)
Date: Fri, 8 Jul 2016 12:09:28 +0100
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Message-ID: <20160708110928.GB14479@resin.home>
References: <1465948220-31466-1-git-send-email-andrei@gherzan.ro>
	<1465948220-31466-2-git-send-email-andrei@gherzan.ro>
MIME-Version: 1.0
In-Reply-To: <1465948220-31466-2-git-send-email-andrei@gherzan.ro>
User-Agent: Mutt/1.6.1 (2016-04-27)
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
X-List-Received-Date: Fri, 08 Jul 2016 11:09:35 -0000
X-Groupsio-MsgNum: 30952
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="zx4FCpZtqtKETZ7O"
Content-Disposition: inline

--zx4FCpZtqtKETZ7O
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Jun 15, 2016 at 12:50:20AM +0100, Andrei Gherzan wrote:
> Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
> ---
>  ...ove-unused-sm_cache_map_vector-definition.patch | 31 +++++++++
>  .../linux-raspberrypi-4.1/0003-fix-gcc6.patch      | 78 ++++++++++++++++++++++
>  recipes-kernel/linux/linux-raspberrypi_4.1.bb      |  2 +
>  3 files changed, 111 insertions(+)
>  create mode 100644 recipes-kernel/linux/linux-raspberrypi-4.1/0002-vmcs-Remove-unused-sm_cache_map_vector-definition.patch
>  create mode 100644 recipes-kernel/linux/linux-raspberrypi-4.1/0003-fix-gcc6.patch
>
> diff --git a/recipes-kernel/linux/linux-raspberrypi-4.1/0002-vmcs-Remove-unused-sm_cache_map_vector-definition.patch b/recipes-kernel/linux/linux-raspberrypi-4.1/0002-vmcs-Remove-unused-sm_cache_map_vector-definition.patch
> new file mode 100644
> index 0000000..8d4a900
> --- /dev/null
> +++ b/recipes-kernel/linux/linux-raspberrypi-4.1/0002-vmcs-Remove-unused-sm_cache_map_vector-definition.patch
> @@ -0,0 +1,31 @@
> +The code using it also ifdef'ed with 0, anyyd gcc 6
> +complains
> +
> +error: 'sm_cache_map_vector' defined but not used
> +
> +The code using it also ifdef'ed out
> +
> +Upstream-status: Denied [https://github.com/raspberrypi/linux/pull/1528]
> +
> +Signed-off-by: Khem Raj <raj.khem@gmail.com>
> +---
> + drivers/char/broadcom/vc_sm/vmcs_sm.c | 2 ++
> + 1 file changed, 2 insertions(+)
> +
> +--- a/drivers/char/broadcom/vc_sm/vmcs_sm.c
> ++++ b/drivers/char/broadcom/vc_sm/vmcs_sm.c
> +@@ -197,12 +197,14 @@ struct SM_STATE_T {
> + static struct SM_STATE_T *sm_state;
> + static int sm_inited;
> +
> ++#if 0
> + static const char *const sm_cache_map_vector[] = {
> + 	"(null)",
> + 	"host",
> + 	"videocore",
> + 	"host+videocore",
> + };
> ++#endif
> +
> + /* ---- Private Function Prototypes -------------------------------------- */
> +
> diff --git a/recipes-kernel/linux/linux-raspberrypi-4.1/0003-fix-gcc6.patch b/recipes-kernel/linux/linux-raspberrypi-4.1/0003-fix-gcc6.patch
> new file mode 100644
> index 0000000..61ec2fb
> --- /dev/null
> +++ b/recipes-kernel/linux/linux-raspberrypi-4.1/0003-fix-gcc6.patch
> @@ -0,0 +1,78 @@
> +Fix compile with GCC6
> +
> +Upstream-status: Denied [https://github.com/raspberrypi/linux/pull/1528]
> +
> +Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
> +
> +Index: source/include/linux/compiler-gcc6.h
> +===================================================================
> +--- /dev/null
> ++++ source/include/linux/compiler-gcc6.h
> +@@ -0,0 +1,67 @@
> ++#ifndef __LINUX_COMPILER_H
> ++#error "Please don't include <linux/compiler-gcc5.h> directly, include <linux/compiler.h> instead."
> ++#endif
> ++
> ++#define __used				__attribute__((__used__))
> ++#define __must_check			__attribute__((warn_unused_result))
> ++#define __compiler_offsetof(a, b)	__builtin_offsetof(a, b)
> ++
> ++/* Mark functions as cold. gcc will assume any path leading to a call
> ++   to them will be unlikely.  This means a lot of manual unlikely()s
> ++   are unnecessary now for any paths leading to the usual suspects
> ++   like BUG(), printk(), panic() etc. [but let's keep them for now for
> ++   older compilers]
> ++
> ++   Early snapshots of gcc 4.3 don't support this and we can't detect this
> ++   in the preprocessor, but we can live with this because they're unreleased.
> ++   Maketime probing would be overkill here.
> ++
> ++   gcc also has a __attribute__((__hot__)) to move hot functions into
> ++   a special section, but I don't see any sense in this right now in
> ++   the kernel context */
> ++#define __cold			__attribute__((__cold__))
> ++
> ++#define __UNIQUE_ID(prefix) __PASTE(__PASTE(__UNIQUE_ID_, prefix), __COUNTER__)
> ++
> ++#ifndef __CHECKER__
> ++# define __compiletime_warning(message) __attribute__((warning(message)))
> ++# define __compiletime_error(message) __attribute__((error(message)))
> ++#endif /* __CHECKER__ */
> ++
> ++/*
> ++ * Mark a position in code as unreachable.  This can be used to
> ++ * suppress control flow warnings after asm blocks that transfer
> ++ * control elsewhere.
> ++ *
> ++ * Early snapshots of gcc 4.5 don't support this and we can't detect
> ++ * this in the preprocessor, but we can live with this because they're
> ++ * unreleased.  Really, we need to have autoconf for the kernel.
> ++ */
> ++#define unreachable() __builtin_unreachable()
> ++
> ++/* Mark a function definition as prohibited from being cloned. */
> ++#define __noclone	__attribute__((__noclone__))
> ++
> ++/*
> ++ * Tell the optimizer that something else uses this function or variable.
> ++ */
> ++#define __visible __attribute__((externally_visible))
> ++
> ++/*
> ++ * GCC 'asm goto' miscompiles certain code sequences:
> ++ *
> ++ *   http://gcc.gnu.org/bugzilla/show_bug.cgi?id=58670
> ++ *
> ++ * Work it around via a compiler barrier quirk suggested by Jakub Jelinek.
> ++ *
> ++ * (asm goto is automatically volatile - the naming reflects this.)
> ++ */
> ++#define asm_volatile_goto(x...)	do { asm goto(x); asm (""); } while (0)
> ++
> ++#ifdef CONFIG_ARCH_USE_BUILTIN_BSWAP
> ++#define __HAVE_BUILTIN_BSWAP32__
> ++#define __HAVE_BUILTIN_BSWAP64__
> ++#define __HAVE_BUILTIN_BSWAP16__
> ++#endif /* CONFIG_ARCH_USE_BUILTIN_BSWAP */
> ++
> ++#define KASAN_ABI_VERSION 4
> diff --git a/recipes-kernel/linux/linux-raspberrypi_4.1.bb b/recipes-kernel/linux/linux-raspberrypi_4.1.bb
> index 79fac66..87c77b8 100644
> --- a/recipes-kernel/linux/linux-raspberrypi_4.1.bb
> +++ b/recipes-kernel/linux/linux-raspberrypi_4.1.bb
> @@ -5,6 +5,8 @@ LINUX_VERSION ?= "4.1.21"
>  SRCREV = "ff45bc0e8917c77461b2901e2743e6339bb70413"
>  SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-4.1.y \
>             file://0001-dts-add-overlay-for-pitft22.patch \
> +           file://0002-vmcs-Remove-unused-sm_cache_map_vector-definition.patch \
> +           file://0003-fix-gcc6.patch \
>            "
>
>  require linux-raspberrypi.inc
> --
> 2.8.2
>

Merged to master.

--
Andrei Gherzan

--zx4FCpZtqtKETZ7O
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJXf4noAAoJEHO76Gt+erfP8S0P/jnwmhjtXQfH5C47LL7qs0G3
unaeabLgpqcENZeprcNAWOr0OZ4O1UBCXJGZb/PHaJ0iJC2Fos3GEKOu1xGDrcsW
7kCHvwfldcy0XsSRGQLgm1vCakmp/gzrwJg2fabPFuOJy1P822F/66fbYYgaDjqv
IN+DMAtkIxuxU0cjwBybMZfmAougCi3/gD1TAHyKgSVVtu/oBVChYaQ18qXOC4JT
kDLuX1lJabHEWT/paMLoesvM1rCRH6Bzw3VG7a06NdZwFf85c1sgf2rgoG9T87rO
JSdyJVcw+kZ9DwA4YbLNRp/xSNFi3TT6tQcmRviF7xuchY4Nl/TBmBV0lreVte2l
luXjzIZGUIjac/jV3jX/u+cUoqcZJz6IOz0ngcUOxcrFAVGfS0MP7lbhcdUYWonZ
kpBloTibeTUOmRO2jxQmePdynUXe4/jXYdNdysIaESdJ3LHB9AEtaHZ4Z5Uftvz9
gm1FamnM2L6jVpKBNP7CG3XHgyIOJRDdOhcKMOplKk8nDa74k4GQ/5qNUO2JNTV8
nQlKupXp8bdfrE85nyPc7KrhgfF99/NUfClGnynNrIvOZa5ydWPUeuukxPd42Xmz
JUNigqq5REXU4eDdaRjghYoPnI7oKmiezMACslYShfyMf1n9wgK2l9EogITHHezq
AeG92t/nNfZvFEioYOTo
=/P3s
-----END PGP SIGNATURE-----

--zx4FCpZtqtKETZ7O--
