Return-Path: <skandigraun@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B87EC282EC
	for <webhook@archiver.kernel.org>; Tue, 18 Mar 2025 17:37:15 +0000 (UTC)
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
 by mx.groups.io with SMTP id smtpd.web11.1290.1742319433219914687
 for <yocto@lists.yoctoproject.org>;
 Tue, 18 Mar 2025 10:37:13 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=X6bNtw/L;
 spf=pass (domain: gmail.com, ip: 209.85.218.41, mailfrom: skandigraun@gmail.com)
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-ac2ab99e16eso241206466b.0
        for <yocto@lists.yoctoproject.org>; Tue, 18 Mar 2025 10:37:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1742319431; x=1742924231; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=wGCwnlpvK4pKvb8x9b1njn5CI+P3A1DTUTxRSbzxS5M=;
        b=X6bNtw/La+QHhKwczrAx9eE+LKPniZ/QCVpXNMr1vqEmDXDgGhEb6rMTTdsjbGJN14
         h4r0R1AV0rpYn2CPb0MC8/o3Tl6AxUiMChskmzmNucJjUrtNwK5mC++Q4akQkqZF3MeF
         XUFd5GmIUzfoJ5O3p+jSU58ezdWmesue+IKrZSphZEabAOA+6L63UWZeH2JBQgq5KYsm
         tg4ZjlATobEanWW0c1YhpAlB7P5jvRVXrw+X5j9lNEax655ayP3w8j2Y0/k0ce5Afg3g
         7NJDSRHRwrB8v9aNgV9PezF3fbYl7tl2SdYVtwkD5ZhNzVPPOutBZZLvrOtP5OMukRh2
         r31w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742319431; x=1742924231;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=wGCwnlpvK4pKvb8x9b1njn5CI+P3A1DTUTxRSbzxS5M=;
        b=hQyKjq+8nRbPnBc3Qrofhe+FiBDKco+BcyoGmvTfHxuNWyJoZfZ7YfjmgCfwgBByhq
         26QSK6OtO1Aa1eRFPTDlJusxAFB3wYNUskQtvlXVlK/77Nv0vUEM3EYtL7RbLfWgw6yO
         OSAKXd8cF+dMsF687nByMYD+mvJOjKKjG+5Ua0ja6fBvQCLI7h7ffQC+nR8BGKFdUbGc
         isYDmk4MdiBowiGTS/QOePz7brP/xn68ezeulXl0tH1A3n5+huI/rC8A7HMwqmxe6mnc
         Cw7scBWrZJZ95pP8ehQmREQz1OuCkS20mQhM/Aj/+3sxUpACx3BFY5aQJb53CK/JAADr
         HFHQ==
X-Gm-Message-State: AOJu0Yxko96Qkl3c2UxNh0PxR0FTaX5LGJMAUSCH5KD6JnJI3lqmhnWi
	2XR2rR0bkMlC3Xr5VJ+yUmORZr37iHKQlzPNpCECPK/TbdpguyYq6uK9fQ==
X-Gm-Gg: ASbGnctWr4tWd4/995V2VpORL3IVYMgK+zzdcHQqOAlY2doMaP2jGpCcTaohvDaR5yu
	XpzNXYVL0lv5Bn5J2PUGrhKnJWu80RMOpHjAjjiLreVDoSycecVHts/Wl4nL14H8GNOxEkJaI15
	mw3/aSS4jBCi6YfBlvNpEwrEsnW6np1qmhoIBY3AjZMBoHWytljTPsFzmmEV1S2cLXMi19WDuAg
	oEC5X9AajdEZ9nTBo13wbIjcyUpT0ZUVG9udxwZ8uqfPqubBWRPUSCBvTRMgElpvXMBfNUCTAb1
	P7vmfuYpw/bqSheovlGPEK/5x+OkwpitSQ0kvgbcEbv3abBd2A==
X-Google-Smtp-Source: AGHT+IF1WqS9qe7WSIXskdo+XZ/hdCpH8uxDKgCN4PXmZ7RM+fp6pMtRXze61H8a3PrGjTkUJhh4oA==
X-Received: by 2002:a17:907:97d3:b0:abf:742e:1fca with SMTP id a640c23a62f3a-ac330263cfdmr2026983366b.18.1742319431253;
        Tue, 18 Mar 2025 10:37:11 -0700 (PDT)
Received: from [192.168.1.2] ([51.154.145.205])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5e816ad392csm7881875a12.53.2025.03.18.10.37.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Mar 2025 10:37:10 -0700 (PDT)
Message-ID: <4f88c962-b369-4e8c-9b3c-cc7de9ebb2b3@gmail.com>
Date: Tue, 18 Mar 2025 18:37:09 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] Build failing at do_compile_kernelmodules
To: yocto@lists.yoctoproject.org, kanakshilledar111@protonmail.com
References: <3qt5x0zk7wn1MKNt8VOP6UosjPF_bny1MEmXm4G5FWrCpT3tdMVFyNyDChg5F4fHYKsXk_b02Zu0ZjjTTiD1JNwhJEt61NT4XPVkKYH_xYM=@protonmail.com>
Content-Language: en-US
From: Gyorgy Sarvari <skandigraun@gmail.com>
In-Reply-To: <3qt5x0zk7wn1MKNt8VOP6UosjPF_bny1MEmXm4G5FWrCpT3tdMVFyNyDChg5F4fHYKsXk_b02Zu0ZjjTTiD1JNwhJEt61NT4XPVkKYH_xYM=@protonmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 18 Mar 2025 17:37:15 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64976

The problem seems to be with the vendor kernel's additions. For example, 
check this line[1].

It is defined as "-I$(src)..." - this works when you build it on your 
machine, because most likely you are building it in the sourcetree.

However when it is compiled with yocto, the PWD is 
"$WORKDIR/standard-build...", but $(srctree) value is 
".../work-shared/kernel-source" - the source and build folder are not 
the same, and $(src) is a relative path compared to $(srctree).

To solve the missing file issues, you could try patching these 
Makefiles, by prefixing these include paths as $(srctree)/$(src) 
(instead of only $(src)). You might also want to report this to the vendor.

I don't know if there are other issues also with this kernel - your logs 
have some other errors too, though maybe they will disappear once this 
is solved.

[1]: 
https://github.com/revyos/th1520-linux-kernel/blob/th1520-lts/drivers/soc/xuantie/nna/vha/Makefile#L52

On 3/17/25 12:28, Kanak Shilledar via lists.yoctoproject.org wrote:
> Hi,
> I am trying to write a recipe for compiling vendor kernel
> [https://github.com/revyos/th1520-linux-kernel <https://github.com/ 
> revyos/th1520-linux-kernel>] for beaglev ahead in meta-riscv.
> It is failing at the do_compile_kernelmodules task. I have attached the 
> full error log below.
> I tried to manually clone the git tree and compile the source and it got 
> fully built.
> 
> Further analyzing the log file, the first error shows that "vha_plat.h" 
> is missing. I tried running
> the find command to locate the file in the vendor's tree and it was 
> available. Secondly, when
> the package was extracted by yocto, I was able to find the file in "./ 
> tmp/work-shared/beaglev-ahead/kernel-source/drivers/soc/xuantie/nna/vha/ 
> platform/vha_plat.h" but the file is missing in "/tmp/work/ 
> beaglev_ahead-poky-linux/linux-beaglev-vendor/6.6.82+git/linux- 
> beaglev_ahead-standard-build/"
> 
> There are multiple such file not found errors. How can I fix these issues?
> You can have a look at my linux-beaglev-vendor.bb recipe here: https:// 
> github.com/kanakshilledar/meta-riscv/commit/ 
> f97e4f771db19b1195cbb35849e781a659854a96 <https://github.com/ 
> kanakshilledar/meta-riscv/commit/f97e4f771db19b1195cbb35849e781a659854a96>
> I am using the th1520_defconfig for building the kernel.
> 
> Thanks and Regards,
> Kanak Shilledar
> 
> 
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#64961): https://lists.yoctoproject.org/g/yocto/message/64961
> Mute This Topic: https://lists.yoctoproject.org/mt/111747161/6084445
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [skandigraun@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
> 


