Received: from mail-pg1-f169.google.com (mail-pg1-f169.google.com [209.85.215.169])
 by mx.groups.io with SMTP id smtpd.web12.49.1603213578154226172
 for <yocto@lists.yoctoproject.org>;
 Tue, 20 Oct 2020 10:06:18 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=FIW94KQN;
 spf=pass (domain: gmail.com, ip: 209.85.215.169, mailfrom: raj.khem@gmail.com)
Received: by mail-pg1-f169.google.com with SMTP id r10so1446623pgb.10
        for <yocto@lists.yoctoproject.org>; Tue, 20 Oct 2020 10:06:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:organization:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=24NO9uCVrgPF/ppz+DdYpg6erMUWEf0chpDSt9HEJm4=;
        b=FIW94KQNMgnnzf8gDIvm7Wp7uoBgjI6EFHiQvQM9ANDYyIKVXnkZHrBdOrwwKOFgLA
         ORFURW7aOPs6llK/65v5M8zv7L5+8iaE+3o9MQCu1E9q40TzVlozr89SfudxI/f8i9Mc
         LuLXt5Vw2riUUcVkXGTe/9/nUwTYRuGm0ylrdApqWB/Y/6m3EtscgIiLhrxvQSkkFR2W
         EDeXhNN2ld0idHwy71ErPecHA4n2FCXj2TDDs8odM2IJQ/KMUQbEgxcobAVs/vMX2QlN
         ctTBdHRiZEsAYSby7oEWReRPD4D4gn3oCLHklmC7/jFBBreqeH6NmGVB7ACZGHpkoKtB
         EkqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:organization
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:content-transfer-encoding;
        bh=24NO9uCVrgPF/ppz+DdYpg6erMUWEf0chpDSt9HEJm4=;
        b=BBZpCxIHOOPApye7uMItHHep/5vQbShwqiToBoAmw5+3Be7Kn3FxJGHY7j+CRTqN/z
         KLE5jEMb8chtL04v9Qh4x9IzWgxfOgQjZqg/sRnXgwZknt00QnyQ23Igc3+gPSMBuL4G
         7/r9KzNu5j8PokQxZnAb2r3a8lhWQqoycGNF10MoPATbkGERnLS/TXIdMK/rjuM81F38
         MGAz97BaQhayZHobCfKbgjIpqnGetPyRRSbLXoB+Ry6bjhqY00aviUlWSqdMLkhgySiN
         Y6tymMoLjDFWFnTuxrJMJU9gOxLWjCjPinfYlsUs10sWy5lecW/yZE2KcmKndksbmtgK
         grRw==
X-Gm-Message-State: AOAM533jP30TWZBuuyaEANFZ6Sy1EJJe8EeZGbHrmHq6468U5DUNxSzu
	nZswhbqvhIOWYFMrffmvO+A=
X-Google-Smtp-Source: ABdhPJxgnPuEAt7qmdLMjD7ocjgiYExGFic042dEXQWmXvD88rmaJVd1AEjAxbn1Z3z6mIpYXqedBw==
X-Received: by 2002:a63:b18:: with SMTP id 24mr3373760pgl.214.1603213577626;
        Tue, 20 Oct 2020 10:06:17 -0700 (PDT)
Return-Path: <raj.khem@gmail.com>
Received: from ?IPv6:2601:646:9200:4e0:f406:23bf:ebb1:a1e8? ([2601:646:9200:4e0:f406:23bf:ebb1:a1e8])
        by smtp.gmail.com with ESMTPSA id t5sm2685095pgs.74.2020.10.20.10.06.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Oct 2020 10:06:17 -0700 (PDT)
Subject: Re: [yocto] [meta-zephyr][PATCH] zephyr: use TCLIBC=newlib directly
To: Ross Burton <ross@burtonini.com>, yocto@lists.yoctoproject.org
Cc: naveen.kumar.saini@intel.com
References: <20201020124254.471303-1-ross.burton@arm.com>
From: "Khem Raj" <raj.khem@gmail.com>
Organization: HIMVIS LLC
Message-ID: <ab6e6467-6026-e373-e926-a05f7824d671@gmail.com>
Date: Tue, 20 Oct 2020 10:06:16 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:78.0)
 Gecko/20100101 Thunderbird/78.3.3
MIME-Version: 1.0
In-Reply-To: <20201020124254.471303-1-ross.burton@arm.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit



On 10/20/20 5:42 AM, Ross Burton wrote:
> Instead of setting TCLIBC=baremetal and then adding newlib in various places,
> just set TCLIBC=newlib directly.
> 
> This also means we can use the standard DEPENDS instead of reinventing them.
> 

I think this will also link the app with newlib now which previously was 
using baremetal.

> Signed-off-by: Ross Burton <ross.burton@arm.com>
> ---
>   conf/distro/zephyr.conf                               | 7 +------
>   recipes-kernel/zephyr-kernel/zephyr-kernel-common.inc | 3 ---
>   2 files changed, 1 insertion(+), 9 deletions(-)
> 
> diff --git a/conf/distro/zephyr.conf b/conf/distro/zephyr.conf
> index 44448af..a98da32 100644
> --- a/conf/distro/zephyr.conf
> +++ b/conf/distro/zephyr.conf
> @@ -5,16 +5,11 @@ DISTRO_VERSION = "1.0"
>   
>   TARGET_VENDOR = "-yocto"
>   
> -TCLIBC = "baremetal"
> -TCLIBCAPPEND = ""
> +TCLIBC = "newlib"
>   
>   TEST_TARGET = "QemuTargetZephyr"
>   TEST_SUITES = "zephyr"
>   
> -PREFERRED_PROVIDER_virtual/libc = "newlib"
> -PREFERRED_PROVIDER_virtual/libiconv = "newlib"
> -
> -TOOLCHAIN_TARGET_TASK += " newlib"
>   INHERIT += "siteinfo-zephyr"
>   
>   INHERIT += "uninative"
> diff --git a/recipes-kernel/zephyr-kernel/zephyr-kernel-common.inc b/recipes-kernel/zephyr-kernel/zephyr-kernel-common.inc
> index 7fa4b25..b947472 100644
> --- a/recipes-kernel/zephyr-kernel/zephyr-kernel-common.inc
> +++ b/recipes-kernel/zephyr-kernel/zephyr-kernel-common.inc
> @@ -19,9 +19,6 @@ EXTRA_OECMAKE_append_arm = " -DZEPHYR_MODULES=${S}/modules/cmsis"
>   export ZEPHYR_BASE="${S}"
>   
>   
> -# We always need a toolchain to cross-compile.
> -INHIBIT_DEFAULT_DEPS = "1"
> -DEPENDS += "gcc-cross-${TARGET_ARCH} libgcc ${TOOLCHAIN_TARGET_TASK} gperf-native"
>   DEPENDS += " python3-pyelftools-native python3-pyyaml-native python3-pykwalify-native"
>   CROSS_COMPILE = "${STAGING_BINDIR_TOOLCHAIN}/${TARGET_PREFIX}"
>   
> 
> 
> 
> 
> 
