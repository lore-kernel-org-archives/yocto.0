Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0544CE00AD5; Mon,  6 May 2019 11:10:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (zoran.stojsavljevic[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.222.176 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qk1-f176.google.com (mail-qk1-f176.google.com
	[209.85.222.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 48049E00A62
	for <yocto@yoctoproject.org>; Mon,  6 May 2019 11:10:24 -0700 (PDT)
Received: by mail-qk1-f176.google.com with SMTP id d4so2192711qkc.9
	for <yocto@yoctoproject.org>; Mon, 06 May 2019 11:10:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=zS/uH9V4jNvbFhylaz/hR/h0kn+F9SXKEAt4mnAL6b8=;
	b=koYn5PL5nXVhw2ZHWNnOFY6tGXV/UQzZyV4MvrA/1VJNE8B6DcYnD3a9lZlLegU6AY
	3eOq8R4KXU+39Zu20NM9frTDcexPFCZngQiznl4NXXLrVGulKyarxER6lbhlDxBhc/bd
	z/J1yFxMEvl+2cphfeQUwTYMF2zpE/WcKyh+Gitsfva0vnlo8w/hDkmTHLTgdWzNvja1
	0U8pdgsjx0Uk60UBVMOcwUkZ6/hMSLbhrK7u5P21Juig05qJBIbyOuBULyaXFRht+QMK
	s6OJgwgL0AwNu+zu+vpUpJ+Aq/FqgCxNUblb3o87lGy+vpexFnR1fBinpU6j0pk/legU
	L6kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=zS/uH9V4jNvbFhylaz/hR/h0kn+F9SXKEAt4mnAL6b8=;
	b=alkRmiiBo5tSs7fBHi4AVsseS6kYV1Mt1wbZDIyK3L1bQKNvboXuvvA8pf0xkKw/PA
	nEOtGkKLg1ZRC9SZjRfehWszCoQyaKxZ/djyl7VRl7K+0sggCQa915VyvIa4U8yUoUMo
	2kg3KdlBV2KLXG9fApz0Vro8o0MLEFqqNgUdbq+rtch+JbmXcQZhadqzijW1WrA5hcgb
	D21WPay5NoKL+KdXDd1NshpC3FIhjhnVkg31LKuKe4QMQgSY4ElNo+mwrlbcsBglmm4S
	g4m6bUhSWj62dFl/BmZq8vAMNyKH3c4xMcUdvg/70w34GTGg/FkEyEQ9b9GyNc+rGJEX
	s7Og==
X-Gm-Message-State: APjAAAW+HtfGuo327JiFQBrSDR7zAFBDJtOyJVRuDRTQBKA/QP5gz5UE
	paXPTjdRsI+YJaAsB9wJUGdqfZTbw+zEc32dCHA=
X-Google-Smtp-Source: APXvYqyItgqguqToqxTFUqWgZQEMBbuHxrbclkVpUAfCHlwcZtt8G+Q8LQFyZoVLf4ZaOO8Yu5cOzHMa75O8dpcpyr0=
X-Received: by 2002:a05:620a:124b:: with SMTP id
	a11mr12175782qkl.128.1557166223408; 
	Mon, 06 May 2019 11:10:23 -0700 (PDT)
MIME-Version: 1.0
References: <CADB9fJHnTXxW78EqNNfeoh2GHM4fqETzC_wo1U58KBRDDJ5TmA@mail.gmail.com>
In-Reply-To: <CADB9fJHnTXxW78EqNNfeoh2GHM4fqETzC_wo1U58KBRDDJ5TmA@mail.gmail.com>
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Mon, 6 May 2019 20:10:11 +0200
Message-ID: <CAGAf8LyEDkaei80j=aQbaMvBoWs7AVYMHxOGvf=f1trjCoB55w@mail.gmail.com>
To: Eric Grunt <gruntblue@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: yocto sumo - upgrading gcc from 7.3 to 8.3 fails - C compiler cannot create executables
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
X-List-Received-Date: Mon, 06 May 2019 18:10:25 -0000
Content-Type: text/plain; charset="UTF-8"

Hello Eric,

Please, could you try gcc 8.2?

Thank you,
Zoran
_______

On Mon, May 6, 2019 at 6:28 PM Eric Grunt <gruntblue@gmail.com> wrote:
>
> Hi,
>
> I tried to upgrade gcc from 7.3 to 8.3 by copying
> gcc directory from https://github.com/openembedded/openembedded-core.git
> (openembedded-core/meta/recipes-devtools/gcc)
> to meta-custom-layer/recipes-gcc,
> replacing requires to recipes-devtools/gcc/*inc in all bb files in there,
> eg
> require recipes-devtools/gcc/gcc-${PV}.inc/require becomes
> require gcc-${PV}.inc,
>
> changing gcc and sdk Version in local.conf to 8.%
>
> GCCVERSION = "8.%"
> SDKGCCVERSION = "8.%"
>
> and by removing gcc-initial dependency from glibc.
>
> diff --git a/sources/poky/meta/recipes-core/glibc/glibc-initial.inc
> b/sources/poky/meta/recipes-core/glibc/glibc-initial.inc
> index b86e2fb..4df63ae 100644
> --- a/sources/poky/meta/recipes-core/glibc/glibc-initial.inc
> +++ b/sources/poky/meta/recipes-core/glibc/glibc-initial.inc
> @@ -1,4 +1,4 @@
> -DEPENDS = "linux-libc-headers virtual/${TARGET_PREFIX}gcc-initial
> libgcc-initial"
> +DEPENDS = "linux-libc-headers virtual/${TARGET_PREFIX}gcc libgcc-initial"
>  PROVIDES = "virtual/${TARGET_PREFIX}libc-initial"
>
>  PACKAGES = ""
> diff --git a/sources/poky/meta/recipes-core/glibc/glibc.inc
> b/sources/poky/meta/recipes-core/glibc/glibc.inc
> index ce1222b..69b15ec 100644
> --- a/sources/poky/meta/recipes-core/glibc/glibc.inc
> +++ b/sources/poky/meta/recipes-core/glibc/glibc.inc
> @@ -32,7 +32,7 @@ siteconfig_do_siteconfig_gencache_prepend = " \
>  "
>
>  # nptl needs unwind support in gcc, which can't be built without glibc.
> -DEPENDS = "virtual/${TARGET_PREFIX}gcc-initial libgcc-initial
> linux-libc-headers virtual/${TARGET_PREFIX}libc-initial"
> +DEPENDS = "virtual/${TARGET_PREFIX}gcc libgcc-initial
> linux-libc-headers virtual/${TARGET_PREFIX}libc-initial"
>  # nptl needs libgcc but dlopens it, so our shlibs code doesn't detect this
>  #RDEPENDS_${PN} += "${@['','libgcc']['nptl' in '${GLIBC_ADDONS}']}"
>
>
> After that, bitbake core-image-minimal fails at do_populate_sysroot
> step for glibc_2.27:
>
> | DEBUG: Executing shell function do_siteconfig_gencache
> | configure: WARNING: unrecognized options: --disable-silent-rules,
> --disable-dependency-tracking, --with-libtool-sysroot
> | configure: creating cache glibc_cache
> | checking for arm-poky-linux-gnueabi-gcc...
> arm-poky-linux-gnueabi-gcc  -march=armv7ve -marm -mfpu=neon
> -mfloat-abi=hard -mcpu=cortex-a7
> --sysroot=/home/yocto/sigma/yocto-sumo/build/tmp_dev/work/cortexa7hf-neon-poky-linux-gnueabi/glibc/2.27-r0/recipe-sysroot
> | checking whether the C compiler works... no
> | configure: error: in
> `/home/yocto/sigma/yocto-sumo/build/tmp_dev/work/cortexa7hf-neon-poky-linux-gnueabi/glibc/2.27-r0/site_config_imx6ul-var-dart':
> | configure: error: C compiler cannot create executables
> | See `config.log' for more details
> | WARNING: exit code 77 from a shell command.
> | DEBUG: Python function siteconfig_do_siteconfig finished
> | DEBUG: Python function do_siteconfig finished
> | DEBUG: Python function sstate_task_postfunc finished
> | ERROR: Function failed: do_siteconfig_gencache
>
> Do I have to perform something additional to be able to use gcc 8.3?
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

