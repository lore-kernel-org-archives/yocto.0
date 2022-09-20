Return-Path: <jdmason@kudzu.us>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC3CFC6FA82
	for <webhook@archiver.kernel.org>; Tue, 20 Sep 2022 20:28:36 +0000 (UTC)
Received: from mail-qv1-f49.google.com (mail-qv1-f49.google.com
 [209.85.219.49])
 by mx.groups.io with SMTP id smtpd.web08.2172.1663705715575546207
 for <yocto@lists.yoctoproject.org>;
 Tue, 20 Sep 2022 13:28:35 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@kudzu-us.20210112.gappssmtp.com header.s=20210112
 header.b=AQKjJ0d3;
 spf=none, err=permanent DNS error (domain: kudzu.us, ip: 209.85.219.49,
 mailfrom: jdmason@kudzu.us)
Received: by mail-qv1-f49.google.com with SMTP id m9so2919597qvv.7
        for <yocto@lists.yoctoproject.org>;
 Tue, 20 Sep 2022 13:28:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=kudzu-us.20210112.gappssmtp.com; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date;
        bh=bA4U1S+1GaIE/99nq+Zcz1WpHe1q1tCzlSGV/emHKVk=;
        b=AQKjJ0d3fihdgcoWbLQYwkJ6m/6Pd+o1l1OyrPg/3jdDvBiyAsQItxepeYqac3rVw4
         8AEZ/G/ECQwna3CaNDsm3odlKEO4L8cH+yh3Ire1M2MQ175K/67a8WGDKae9K68yANZ+
         kGIqWcXh1tj3TF6X9EoGd7n1vdYO2l3VV94s1tP/OraC74qmo6ON1fWcK7FsY+RI85N0
         JaeFW/xNR/amvjWJLFpxXMLX6U1BbU/eJE8s9WgZhwHsnZRi2d5BSSiapeXzJmWWn1fK
         2+eDi7zjLvyznthDlSZ6tpMs6WRvE1FhlGLeCnFDlTluhJbxZM+V5eUxUUTSk2KGMXSb
         1vFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date;
        bh=bA4U1S+1GaIE/99nq+Zcz1WpHe1q1tCzlSGV/emHKVk=;
        b=X/gL/TktHnOtGYuvmWDvT5QF6mBBZlRP5d+0PUXk6HmtM0RVQ9lnhuaDJ1q/JsMdjH
         AO4pwdfwZlFxsr1jwcXFB/64UEsd8eVlArO3uhTbrPOvSHQS4r9DAggfxf1L6EHkhIkT
         xNfI8YE9n3+PCQWhtC/ZpcuqxhmKDtWA6Egs8TSN+cjWNaZ26G6PvimZ43wQ1H9vQPck
         wcgasiGXOrn95Ghu0FZuLKmPvvljysNbeof3Jv1a+81KhrR3rXLWC24A1Lty6MOe1pef
         0zCusFvojuQlGWyz46OlXNtqaE1eyfT7rZHLvFzJ4Fq8IIhaH4+T4pO7UlpRxb0DCoB7
         VZDQ==
X-Gm-Message-State: ACrzQf032BRfwCEbiiqBdcNnKmQxDwDLVZTD8Q0Kmf09Z0HQMRzOlH6n
	k1h2qOKqEqUPxoEW++NtsKn53A==
X-Google-Smtp-Source: 
 AMsMyM7KircFkJ0DPfqvo2GGdIkY0tQiSwo6C4EAvKIvxhU44L6WGVk3ei/TJJRHDs/kz5Xe6CfSoA==
X-Received: by 2002:ad4:5bcd:0:b0:4ad:2ce4:e7d0 with SMTP id
 t13-20020ad45bcd000000b004ad2ce4e7d0mr13379607qvt.42.1663705714580;
        Tue, 20 Sep 2022 13:28:34 -0700 (PDT)
Received: from kudzu.us ([2605:a601:a608:5600::59])
        by smtp.gmail.com with ESMTPSA id
 i12-20020a05620a404c00b006b8d1914504sm669496qko.22.2022.09.20.13.28.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Sep 2022 13:28:33 -0700 (PDT)
Date: Tue, 20 Sep 2022 16:28:31 -0400
From: Jon Mason <jdmason@kudzu.us>
To: Naveen Saini <naveen.kumar.saini@intel.com>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [meta-zephyr][PATCH] zephyr-kernel/2.7: update to zephyr v2.7.3
Message-ID: <YyoibxfkOcde7itV@kudzu.us>
References: <20220915072042.891301-1-naveen.kumar.saini@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220915072042.891301-1-naveen.kumar.saini@intel.com>
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 20 Sep 2022 20:28:36 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58104

On Thu, Sep 15, 2022 at 03:20:42PM +0800, Naveen Saini wrote:
> 003de78ce0 release: Zephyr 2.7.3
> 9502d500b6 release: security: Notes for 2.7.3
> 2a88e08296 release: update v2.7.3 release notes
> e1ee34e55c drivers: sensor: sm351lt: Fix global thread triggering bug
> 2ad1ef651b Bluetooth: host: Fix L2CAP reconfigure response with invalid CID
> 089675af45 Bluetooth: host: Fix L2CAP reconfigure response with invalid MTU
> 03ff0d471e net: route: Fix pkt leak if net_send_data() fails
> cd96136bcb boards: nucleo_wb55rg: Fix documentation about BLE binary compatibility
> 567fda57df tests: drivers: can: api: add test for RTR filter matching
> b14f356c96 drivers: can: loopback: check frame ID type and RTR bit in filters
> 874d77bc75 drivers: can: mcux: flexcan: fix handling of RTR frames
> ec0befb938 drivers: can: mcan: acknowledge all received frames
> 273e90a86f scripts: release: list_backports: use older python dict merge method
> 59dc65a7b4 ci: backports: check if a backport PR has a valid issue
> 8ff8cafc18 scripts: release: list_backports.py
> ba07347b60 scripts: release: use GITHUB_TOKEN and start_date in scripts
> e423902617 tests: posix: pthread: test for pthread descriptor leaks
> 018f836c4d posix: pthread: consider PTHREAD_EXITED state in pthread_create
> f4466c4760 tests: cpp: cxx: Add qemu_cortex_a53 as integration platform
> 9a5cbe3568 tests: cpp: cxx: Test with various types of libc
> 5b7b15fb2d tests: cpp: cxx: Add dynamic memory availability test for static init
> e5a92a1fab tests: cpp: cxx: Add static global constructor invocation test
> 74f0b6443a lib: libc: newlib: Initialise libc heap during POST_KERNEL phase
> 6c16b3492b lib: libc: minimal: Initialise libc heap during POST_KERNEL phase
> 1831431bab lib: posix: semaphore: use consistent timebase in sem_timedwait
> 765f63c6b9 cmake: remove xtensa workaround in Zephyr toolchain code.
> 062306fc0b cmake: zephyr toolchain code cleanup
> 8fcf7f1d78 Revert "cmake: Zephyr sdk backward compatibility with 0.11.1 and 0.11.2"
> f06b3d922c Bluetooth: Controller: Fix PHY update for unsupported PHY
> b75c012c55 drivers: spi: stm32 spi with dma must enable cs after periph
> 1efe6de3fe drivers: i2c: Fix infinite recursion in driver unregister function
> 39270ed4a0 Bluetooth: Mesh: Fix segmentation when sending proxy message
> 81ffa550ee Bluetooth: Mesh: Check SegN when receiving Transaction Start PDU
> 8c2965e017 Bluetooth: Mesh: add check for rx buffer overflow in pb adv
> 7aa38b4ac8 drivers: can: m_can: fix alignmed issues
> 6dd320f791 release: update v2.7.2 release notes
> ecac165d36 logging: shell: fix shell stats null pointer dereference
> 132d90d1bc tests/bluetooth/tester: Refactor Read UUID callback
> 58356313ac coredump: adjust mem_region find in gdbstub
> 99cfd3e4d7 Bluetooth: Controller: Fix per adv scheduling issue
> 780588bd33 edac: ibecc: Add support for EHL SKU13, SKU14, SKU15
> 
> Signed-off-by: Naveen Saini <naveen.kumar.saini@intel.com>

Passes CI
https://gitlab.com/jonmason00/meta-zephyr/-/pipelines/645876493

Tested-by: Jon Mason <jon.mason@arm.com>


> ---
>  ...ephyr-kernel-src-2.7.2.inc => zephyr-kernel-src-2.7.3.inc} | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>  rename meta-zephyr-core/recipes-kernel/zephyr-kernel/{zephyr-kernel-src-2.7.2.inc => zephyr-kernel-src-2.7.3.inc} (97%)
> 
> diff --git a/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-kernel-src-2.7.2.inc b/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-kernel-src-2.7.3.inc
> similarity index 97%
> rename from meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-kernel-src-2.7.2.inc
> rename to meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-kernel-src-2.7.3.inc
> index cbe761f..1c53748 100644
> --- a/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-kernel-src-2.7.2.inc
> +++ b/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-kernel-src-2.7.3.inc
> @@ -14,7 +14,7 @@ SRC_URI += " \
>  #      echo SRCREV_$x = \"$rev\"'
>  #
>  
> -SRCREV_default = "6dd320f791c4da49190b30f9134f776d85bc5836"
> +SRCREV_default = "003de78ce0dd213a1c7b3d159b967fb19a12aa45"
>  SRCREV_canopennode = "f167efe85c8c7de886f1bc47f9173cfb8a346bb5"
>  SRCREV_civetweb = "094aeb41bb93e9199d24d665ee43e9e05d6d7b1c"
>  SRCREV_cmsis = "b0612c97c1401feeb4160add6462c3627fe90fc7"
> @@ -60,7 +60,7 @@ SRCREV_TraceRecorder = "36c577727642457b0db7274298a4b96558374832"
>  SRCREV_tfm = "c74be3890c9d975976fde1b1a3b2f5742bec34c0"
>  
>  ZEPHYR_BRANCH = "v2.7-branch"
> -PV = "2.7.2+git${SRCPV}"
> +PV = "2.7.3+git${SRCPV}"
>  
>  SRC_URI:append = " \
>      file://dtc.patch;patchdir=zephyr \
> -- 
> 2.25.1
> 
> 

