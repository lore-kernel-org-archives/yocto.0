Received: from mail-pg1-f182.google.com (mail-pg1-f182.google.com [209.85.215.182])
 by mx.groups.io with SMTP id smtpd.web12.883.1594659088968851004
 for <yocto@lists.yoctoproject.org>;
 Mon, 13 Jul 2020 09:51:29 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=pWJCCUq5;
 spf=pass (domain: gmail.com, ip: 209.85.215.182, mailfrom: raj.khem@gmail.com)
Received: by mail-pg1-f182.google.com with SMTP id m22so6267567pgv.9
        for <yocto@lists.yoctoproject.org>; Mon, 13 Jul 2020 09:51:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language:content-transfer-encoding;
        bh=8sRFYMzwbDClfNjXCmF5UDOKuUesPpCc7M78g8qBlJA=;
        b=pWJCCUq58hBTklJGTk2Ti3yqjUzFIsmYy9kxHCjFTHxH8YB7PG/E1WsnF7KdCLPZ5x
         oQLjU1z2/u3kuj/p4DZYGFEEaJlVp3B39RUM01EgySwfTVX5ct+F+/8hXfsND6l8+mDd
         hRhKJSzsHTz9EmK/ftmpPQffdoZigC7M+Qr8uEKUaBvJ0JJTLG69PbnpZnB1YGie5oTJ
         +TVCZiwdyaiZC2MMpRy7LkSgbqFuiZpoMgZrpC5SpGRPlqiIakAav5ftq3nuwr6wnqEN
         P6ADRrWm0SiggroYbQP2XmgvymKlaomXyWYzP5fljv/rQuFgnpfRlBIHBJu+7O+4UZ+V
         IYcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=8sRFYMzwbDClfNjXCmF5UDOKuUesPpCc7M78g8qBlJA=;
        b=eFMoAdpFKApDAkIQmEyh+Y9Nz4UAEPDgbWD+U5BUPvST7RS29mTMKhpM1mdyE1TW32
         f/zT+fSi+hK9F5bZfW5FqUA1g8d+B8egdf9SOTKpZkIFQ+Qg2BxzcHqed4BQEHWb41N+
         kiRA5u1XYKKo7KgR5wRiTdBqcB81G33jH5Zfjip/AzrBTk8rPcJivu+0lhCNYp4O4QjM
         aXlsJjKi/yQpw7iscxCjWNXsZQwG5o3fo7SdGqQ1qHoqQsdviJ+qNnmb2qP9Lkp9WO0Y
         uGGxqpLRE1l1YyZNwzW/BgDV5bYrIfVwqA6DthJw0b0Jq2s6st4Y0KE/sJfem0z6eVal
         ZFxg==
X-Gm-Message-State: AOAM532AkA2Vl9MtqZK0ubnNVSqLLcYIS3PHaw8DYUc0uTWL7JbD4BkT
	3X7edlibTiycKY/DtTDfneB/InXcnu0=
X-Google-Smtp-Source: ABdhPJzztOOfRSONi7SmHY0JNv9NdwUuz9jqC25HiLtZhICMbZ76IDBTZmQ2B94bXZHAee1e/xly7w==
X-Received: by 2002:a62:6285:: with SMTP id w127mr715283pfb.12.1594659087920;
        Mon, 13 Jul 2020 09:51:27 -0700 (PDT)
Return-Path: <raj.khem@gmail.com>
Received: from ?IPv6:2601:646:9200:4e0:5886:34b9:1392:15a2? ([2601:646:9200:4e0:5886:34b9:1392:15a2])
        by smtp.gmail.com with ESMTPSA id h7sm14793190pfq.15.2020.07.13.09.51.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Jul 2020 09:51:27 -0700 (PDT)
Subject: Re: [yocto] Linker error undefined reference to `_rtld_global_ro'
To: Robert Varga <robert.varga@getinge.com>, yocto@lists.yoctoproject.org
References: <EDk7.1594639269271279456.HLoQ@lists.yoctoproject.org>
From: "Khem Raj" <raj.khem@gmail.com>
Message-ID: <e123353d-7215-94eb-176e-049ab759defc@gmail.com>
Date: Mon, 13 Jul 2020 09:51:26 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:68.0)
 Gecko/20100101 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <EDk7.1594639269271279456.HLoQ@lists.yoctoproject.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 8bit



On 7/13/20 4:21 AM, Robert Varga wrote:
> Hello,
> 
> I am new to the Yocto project and need some help in solving a linker 
> issue when compiling/linking an application using the SDK. It seems, 
> that the compilation is completed, but the linker could not resolve to 
> "_rtld_global_ro". Here is the output of the last stage
> <snip>
> ...
> /opt/mydistro/1.0.0/sysroots/x86_64-pokysdk-linux/usr/libexec/arm-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/8.3.0/real-ld: 
> /opt/mydistro/1.0.0/sysroots/cortexa9t2hf-neon-poky-linux-gnueabi/usr/lib/libc.a(getcontext.o): 
> in function `getcontext':
> /usr/src/debug/glibc/2.29-r0/git/stdlib/../sysdeps/unix/sysv/linux/arm/getcontext.S:101: 
> undefined reference to `_rtld_global_ro'
> /opt/mydistro/1.0.0/sysroots/x86_64-pokysdk-linux/usr/libexec/arm-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/8.3.0/real-ld: 
> /opt/mydistro/1.0.0/sysroots/cortexa9t2hf-neon-poky-linux-gnueabi/usr/lib/libc.a(setcontext.o): 
> in function `__startcontext':
> /usr/src/debug/glibc/2.29-r0/git/stdlib/../sysdeps/unix/sysv/linux/arm/setcontext.S:100: 
> undefined reference to `_rtld_global_ro'
> collect2: error: ld returned 1 exit status
> makefile:116: recipe for target 'ortable' failed
> make: *** [ortable] Error 1
> </snip>
> 
> What I can see from the output is, that both getcontext.S and 
> setcontext.S are referencing to "_rtld_global_ro". What I do not 
> understand is, why the glibc is located in the debug folder? Is this 
> probably the issue?
> 

it seems static apps with glibc compiled with PIE related. Can you 
verfiy if you get same issue with aarch64 or mips ?

> I have sourced the SDK using following command:
> source 
> /opt/mydistro/1.0.0/environment-setup-cortexa9t2hf-neon-poky-linux-gnueabi
> 
> Here's image bb file (which I have used for building the SDK using this 
> command (bitbake my-image -c populate_sdk).
> 
> require recipes-extended/images/core-image-full-cmdline.bb
> IMAGE_INSTALL_append = " \
>      emmy-w1-driver-sdiosdio \
>      emmy-w1-systemd \
>      eth-systemd \
>      can-systemd \
>      can-utils \
>      lighttpd \
>      dnsmasq \
>      parted \
>      swupdate \
>      swupdate-www \
>      u-boot-fw-utils \
>      linux-firmware-imx-sdma-imx6q \
>      "
> TOOLCHAIN_HOST_TASK_append = " nativesdk-perl-modules"
> SDKIMAGE_FEATURES_append = " staticdev-pkgs"
> Any help on resolving this issue would be greatly appreciated.
> 
> Thanks.
> -- 
> 
> Rob
> 
> 
> 
