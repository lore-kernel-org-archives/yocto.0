Return-Path: <jdmason@kudzu.us>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 21BBEC77B73
	for <webhook@archiver.kernel.org>; Thu, 20 Apr 2023 17:08:51 +0000 (UTC)
Received: from mail-qk1-f175.google.com (mail-qk1-f175.google.com [209.85.222.175])
 by mx.groups.io with SMTP id smtpd.web10.1498.1682010521187544998
 for <yocto@lists.yoctoproject.org>;
 Thu, 20 Apr 2023 10:08:41 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@kudzu-us.20221208.gappssmtp.com header.s=20221208 header.b=5W4wjMCI;
 spf=none, err=permanent DNS error (domain: kudzu.us, ip: 209.85.222.175, mailfrom: jdmason@kudzu.us)
Received: by mail-qk1-f175.google.com with SMTP id af79cd13be357-74de8faa412so50301585a.0
        for <yocto@lists.yoctoproject.org>; Thu, 20 Apr 2023 10:08:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=kudzu-us.20221208.gappssmtp.com; s=20221208; t=1682010520; x=1684602520;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=0G6PxqarPDkX5NnpDmMosvteKJXoaeNRPgGC+y+QGxo=;
        b=5W4wjMCI1wxDmPIYFeF0llc4yyNIcl2x84wRQZNrTYhyRYuJEO/CPIn+LaNU3S4nBa
         G3aIb+6jEeAShS5XlMdzrq7ZYr5m4YODnMQQvh5CHQONbqZ+tw859Q2wQouoiMh26Wxd
         n5XCRzwzY29Mt10/2kBbPu7o7meoeDihKIAIxH4rnDaGQ7RubjQy9wgZs1oTIiAwDTFp
         6M7uYng/EkEd+2VHorOvTbDwSdCtIxJ1qIkPev4gs8G6pgKV+om7KOyCLLJEGaVfip7W
         EzTPN6Dw8Y0QQ/z/MI1QSVtJJq4lwxdUOo54DaXKGnisO2sQve59rN+Slb1ot92dufOL
         FXSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682010520; x=1684602520;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0G6PxqarPDkX5NnpDmMosvteKJXoaeNRPgGC+y+QGxo=;
        b=Buziu5La8L2AYd+P5N7ouprNs3vO9mOjYZI84b95fK9B7hDMaZNvLDMpE2ALw2nvdL
         wcS9nusFMjFgK/t8+HSIueRbXab0uFArVkd1csx5+uOdLmT3Sk/gwUHhUAiYAWLrczGM
         tBiw5Ds+Tly4+K7iDYQ22hAh7K+5siS3IDyEshIqZ5ZZ4ISTDREkunMQOhvp51WYqqxa
         HcQEdcAicNHIPFHKid2h4psio5bsWN4cK5Ob3YtWSJD5VTOPaK/EvDledZ8hhBNMNBzi
         VC6ercVsYuEDIwZ1Xmd6FEY5JPrG/hPhkLlU2ZrDiDiOWlbw26wSOmm9++8IUNLv7kX/
         pWRg==
X-Gm-Message-State: AAQBX9dm/HyKxMM9806IpZ0pstTV3ZP7Gw0FUeDs2VVspXrpofCkXUbQ
	vQMdLBnT+4tWODYhDWN/AQSrKlKZZ+uPrRCAGD4=
X-Google-Smtp-Source: AKy350a8LSK3xg/5BJMpBu4FTuryYyD6KRwAYPsUzq1NHmEAdag2AO3wRhf5OwghC+ASpf3NmPZd+g==
X-Received: by 2002:a05:622a:1494:b0:3e4:e2fa:66b0 with SMTP id t20-20020a05622a149400b003e4e2fa66b0mr3560635qtx.29.1682010520130;
        Thu, 20 Apr 2023 10:08:40 -0700 (PDT)
Received: from kudzu.us ([2605:a601:a600:7900:8ac9:b3ff:febf:a2f8])
        by smtp.gmail.com with ESMTPSA id u3-20020a05622a010300b003e4d43038e2sm637816qtw.5.2023.04.20.10.08.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Apr 2023 10:08:39 -0700 (PDT)
Date: Thu, 20 Apr 2023 13:08:37 -0400
From: Jon Mason <jdmason@kudzu.us>
To: Peter Hoyes <peter.hoyes@arm.com>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [meta-zephyr][PATCH] zephyr-core/zephyr-kernel: Fix arm32
 binutils 2.40 incompatibility
Message-ID: <ZEFxlWGGcZZWAa+T@kudzu.us>
References: <20230419160158.457779-1-peter.hoyes@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230419160158.457779-1-peter.hoyes@arm.com>
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 20 Apr 2023 17:08:51 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59741

On Wed, Apr 19, 2023 at 05:01:58PM +0100, Peter Hoyes wrote:
> From: Peter Hoyes <Peter.Hoyes@arm.com>
> 
> Armv7 boards are currently failing with binutils 2.40 if certain
> statements are combined on the same line without a semicolon. Introduce
> a patch to fix this by inserting a semicolon.
> 
> Signed-off-by: Peter Hoyes <Peter.Hoyes@arm.com>

CI run against this patch (and the prior series)
https://gitlab.com/jonmason00/meta-zephyr/-/pipelines/843637362

There is still the outstanding issue with qemu-cortex-a9 with the
yocto toolchain failing the poll test, but the issues being seen other
than that are now fixed.

Tested-by: Jon Mason <jon.mason@arm.com>

> ---
>  ...x-separator-between-directives-on-sa.patch | 44 +++++++++++++++++++
>  .../zephyr-kernel/zephyr-kernel-src-3.3.0.inc |  1 +
>  2 files changed, 45 insertions(+)
>  create mode 100644 meta-zephyr-core/recipes-kernel/zephyr-kernel/files/0002-3.3-toolchain-gcc-Fix-separator-between-directives-on-sa.patch
> 
> diff --git a/meta-zephyr-core/recipes-kernel/zephyr-kernel/files/0002-3.3-toolchain-gcc-Fix-separator-between-directives-on-sa.patch b/meta-zephyr-core/recipes-kernel/zephyr-kernel/files/0002-3.3-toolchain-gcc-Fix-separator-between-directives-on-sa.patch
> new file mode 100644
> index 0000000..84750b8
> --- /dev/null
> +++ b/meta-zephyr-core/recipes-kernel/zephyr-kernel/files/0002-3.3-toolchain-gcc-Fix-separator-between-directives-on-sa.patch
> @@ -0,0 +1,44 @@
> +From e709258cd766a7b4a3b02e6910f980d501ef1493 Mon Sep 17 00:00:00 2001
> +From: Peter Hoyes <Peter.Hoyes@arm.com>
> +Date: Sun, 26 Feb 2023 21:18:04 +0000
> +Subject: [PATCH] toolchain: gcc: Fix separator between directives on same
> + line
> +
> +The Arm assembler in binutils 2.40 contains a change [1] which affects
> +how multiple directives on the same line are parsed.
> +
> +Previously, the following combination of directives parsed successfully:
> +
> +    .code 32 .balign 4
> +
> +With binutils 2.40, the following error is now seen:
> +
> +    Error: junk at end of line, first unrecognised character is `.'
> +
> +To fix, insert a semicolon after '.code 32', as there already is after
> +'.thumb'.
> +
> +[1] https://sourceware.org/git/?p=binutils-gdb.git;a=commitdiff;h=a37854f9162fac592b669eda53f465fc190c9341
> +
> +Upstream-Status: Backport [https://github.com/zephyrproject-rtos/zephyr/commit/2f2f3edacdf13bb9bc0be1ce3b80726dce6fb1c0]
> +Signed-off-by: Peter Hoyes <Peter.Hoyes@arm.com>
> +---
> + include/zephyr/toolchain/gcc.h | 2 +-
> + 1 file changed, 1 insertion(+), 1 deletion(-)
> +
> +diff --git a/include/zephyr/toolchain/gcc.h b/include/zephyr/toolchain/gcc.h
> +index ede21a47fe..f81cb0a309 100644
> +--- a/include/zephyr/toolchain/gcc.h
> ++++ b/include/zephyr/toolchain/gcc.h
> +@@ -312,7 +312,7 @@ do {                                                                    \
> + 
> + #else
> + 
> +-#define FUNC_CODE() .code 32
> ++#define FUNC_CODE() .code 32;
> + #define FUNC_INSTR(a)
> + 
> + #endif /* CONFIG_ASSEMBLER_ISA_THUMB2 */
> +-- 
> +2.34.1
> +
> diff --git a/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-kernel-src-3.3.0.inc b/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-kernel-src-3.3.0.inc
> index 245ba81..035c8fa 100644
> --- a/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-kernel-src-3.3.0.inc
> +++ b/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-kernel-src-3.3.0.inc
> @@ -116,6 +116,7 @@ SRC_URI_ZEPHYR_THRIFT ?= "git://github.com/zephyrproject-rtos/thrift;protocol=ht
>  
>  SRC_URI_PATCHES ?= "\
>      file://0001-3.3-x86-fix-efi-binary-generation-issue-in-cross-compila.patch;patchdir=zephyr \
> +    file://0002-3.3-toolchain-gcc-Fix-separator-between-directives-on-sa.patch;patchdir=zephyr \
>  "
>  
>  SRC_URI = "\
> -- 
> 2.34.1
> 
> 

