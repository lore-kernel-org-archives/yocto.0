Received: from mail-lj1-f193.google.com (mail-lj1-f193.google.com [209.85.208.193])
 by mx.groups.io with SMTP id smtpd.web09.5477.1603197887774273976
 for <yocto@lists.yoctoproject.org>;
 Tue, 20 Oct 2020 05:44:48 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@burtonini-com.20150623.gappssmtp.com header.s=20150623 header.b=rNHPcCY/;
 spf=pass (domain: burtonini.com, ip: 209.85.208.193, mailfrom: ross@burtonini.com)
Received: by mail-lj1-f193.google.com with SMTP id 23so1821280ljv.7
        for <yocto@lists.yoctoproject.org>; Tue, 20 Oct 2020 05:44:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=burtonini-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:cc;
        bh=d3tAmORFmHJBoKkzgPIvj8iFnhpjMQQPBU60o29Jsj0=;
        b=rNHPcCY/xEdzhYDiHPwg/KvJBKyrMGrvUH4FPxoUgkSk6t4qp9O3+xowmR+vR1TFpd
         XREzGeaB0bKWP7tlF+o9bB6x9pd8rwI462AuQ7KI9SwgvMt6Xa+vDhO6/Tsim0hQuY7j
         2Tfp9R+NqPVM8406j1A0fdYpB/OHORsPGfVNL7vL1kWoWIpAJ8AplXt7oGPY7pM0pHbH
         ECC1PIDOMgzzsArNNvaxf9jRaXK5JeWU0dX1hTPb7ivtZ/HmPEOYtrkH8PNKD/41xQg+
         6I7jImujCsSQ/AsKtHM1BNg9OvophGTZ4Vm3BNQ8bLFOm46ScnF2MtTtHuw3P9kFoXmK
         PN1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:cc;
        bh=d3tAmORFmHJBoKkzgPIvj8iFnhpjMQQPBU60o29Jsj0=;
        b=quylT+CP/7uQ4gT3+ZZp/tiGcccTyp4NBfdVHl3/KT3tu8KFBe25Pg9Kyn3t5tct8c
         lePo8y/6xphBYX4iwyCvQs+LUEz0JRu1mY37KtOFo/o0ZXgJ+b35iOIao5Wl+KToDcCJ
         vw0Mb0J0TYkq3z0O4MBhTFmmfFxio5Ustv3bq7dkp5TY00xY7bWo8ig3CkGGyIOyUMbZ
         l7IQKVgLrvgW5BKmWCWbrOcHRPV1CcybgShqSnKKrJkZ95DVjdbDY/KPxQjoQeDfY5SS
         uO3Hv1ftWTuk9mZ84xjx2tqtYJMmmN4d9nO0VB8ZnAey3/I+PLub1xiauQqKlV6BZrn+
         91KQ==
X-Gm-Message-State: AOAM5337VtXpPV3cUX0bsW+FbjSfAYuQlFiAkYCUKEISg+FHDOs3flp+
	cIfqQuex1ckAGimJO9QvdFOqfMLzL5hYToIRNWZRtRxkW28u+6MY
X-Received: by 2002:a2e:97c5:: with SMTP id m5mt859196ljj.22.1603197885207;
 Tue, 20 Oct 2020 05:44:45 -0700 (PDT)
MIME-Version: 1.0
References: <20201020124254.471303-1-ross.burton@arm.com>
In-Reply-To: <20201020124254.471303-1-ross.burton@arm.com>
From: "Ross Burton" <ross@burtonini.com>
Date: Tue, 20 Oct 2020 13:44:34 +0100
Message-ID: <CAAnfSTsKMNmagO1hY2XpwPe=iXH-HeuGF3RPD7ExkJdyiawEVw@mail.gmail.com>
Subject: Re: [yocto] [meta-zephyr][PATCH] zephyr: use TCLIBC=newlib directly
Cc: yocto@lists.yoctoproject.org, naveen.kumar.saini@intel.com
Content-Type: text/plain; charset="UTF-8"

Please do review this one carefully, it continues to build for me and
solves a build failure when using meta-zephyr but not DISTRO=zephyr
(instead, a custom DISTRO and a MACHINE that sets TCLIBC=newlib) but
obviously it is rooting around the build depends and I didn't test the
SDK pieces.

Ross

On Tue, 20 Oct 2020 at 13:43, Ross Burton via lists.yoctoproject.org
<ross=burtonini.com@lists.yoctoproject.org> wrote:
>
> Instead of setting TCLIBC=baremetal and then adding newlib in various places,
> just set TCLIBC=newlib directly.
>
> This also means we can use the standard DEPENDS instead of reinventing them.
>
> Signed-off-by: Ross Burton <ross.burton@arm.com>
> ---
>  conf/distro/zephyr.conf                               | 7 +------
>  recipes-kernel/zephyr-kernel/zephyr-kernel-common.inc | 3 ---
>  2 files changed, 1 insertion(+), 9 deletions(-)
>
> diff --git a/conf/distro/zephyr.conf b/conf/distro/zephyr.conf
> index 44448af..a98da32 100644
> --- a/conf/distro/zephyr.conf
> +++ b/conf/distro/zephyr.conf
> @@ -5,16 +5,11 @@ DISTRO_VERSION = "1.0"
>
>  TARGET_VENDOR = "-yocto"
>
> -TCLIBC = "baremetal"
> -TCLIBCAPPEND = ""
> +TCLIBC = "newlib"
>
>  TEST_TARGET = "QemuTargetZephyr"
>  TEST_SUITES = "zephyr"
>
> -PREFERRED_PROVIDER_virtual/libc = "newlib"
> -PREFERRED_PROVIDER_virtual/libiconv = "newlib"
> -
> -TOOLCHAIN_TARGET_TASK += " newlib"
>  INHERIT += "siteinfo-zephyr"
>
>  INHERIT += "uninative"
> diff --git a/recipes-kernel/zephyr-kernel/zephyr-kernel-common.inc b/recipes-kernel/zephyr-kernel/zephyr-kernel-common.inc
> index 7fa4b25..b947472 100644
> --- a/recipes-kernel/zephyr-kernel/zephyr-kernel-common.inc
> +++ b/recipes-kernel/zephyr-kernel/zephyr-kernel-common.inc
> @@ -19,9 +19,6 @@ EXTRA_OECMAKE_append_arm = " -DZEPHYR_MODULES=${S}/modules/cmsis"
>  export ZEPHYR_BASE="${S}"
>
>
> -# We always need a toolchain to cross-compile.
> -INHIBIT_DEFAULT_DEPS = "1"
> -DEPENDS += "gcc-cross-${TARGET_ARCH} libgcc ${TOOLCHAIN_TARGET_TASK} gperf-native"
>  DEPENDS += " python3-pyelftools-native python3-pyyaml-native python3-pykwalify-native"
>  CROSS_COMPILE = "${STAGING_BINDIR_TOOLCHAIN}/${TARGET_PREFIX}"
>
> --
> 2.25.1
>
>
> 
>
