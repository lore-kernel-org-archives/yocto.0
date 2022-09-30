Return-Path: <jdmason@kudzu.us>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CFD81C433F5
	for <webhook@archiver.kernel.org>; Fri, 30 Sep 2022 18:57:55 +0000 (UTC)
Received: from mail-qt1-f182.google.com (mail-qt1-f182.google.com
 [209.85.160.182])
 by mx.groups.io with SMTP id smtpd.web11.1057.1664564268068223182
 for <yocto@lists.yoctoproject.org>;
 Fri, 30 Sep 2022 11:57:48 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@kudzu-us.20210112.gappssmtp.com header.s=20210112
 header.b=sKOugW7M;
 spf=none, err=permanent DNS error (domain: kudzu.us, ip: 209.85.160.182,
 mailfrom: jdmason@kudzu.us)
Received: by mail-qt1-f182.google.com with SMTP id g23so3235824qtu.2
        for <yocto@lists.yoctoproject.org>;
 Fri, 30 Sep 2022 11:57:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=kudzu-us.20210112.gappssmtp.com; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date;
        bh=D/gHeFPFQ3FINCUQABedH0kbeOddVOQQIdVYJg5D6+k=;
        b=sKOugW7MimxcAAXaDYMPtmf2Kt1f4vEXvMok+W3sXBD7wuDH4hDwBeRhqAwfsKC78p
         +YzNTt2XwlHQ3jeCXKfYfUb1W38ZIfX9qK9KQPBBWTjALVoQxfk90mGdsdMZM3/nQou2
         0ORNOmTIKYR7h1rsHYOVA1Df7Nqf+14Thbw1VeCjy9mJ9ndjY3qdxvTgEBjCsSFRcLcF
         JYbVgTX1qMHNkrpF30H8EnA/L7v4WJ3DAOWSsC8R9d3nXmzEta9y2FiDNJi4AkT228H2
         XBmdXdIXSmB2beWHPuXovEus03LCb+enr2ANs/j2d3Pncs0YB8Nv3v3zRZ4pXXY02BVp
         KJdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date;
        bh=D/gHeFPFQ3FINCUQABedH0kbeOddVOQQIdVYJg5D6+k=;
        b=jN+78yN8l1hshuVs0jZ/voDy0VnN5hb9/5EmN0g2x4oqBinamiegpQZnb7xmdEpSQl
         pxoCrfN0C7YObW202xeiiet4x54RWTbrbfO6wTIZM2aJUFGEXy6Zsqdha5mLN2/7sFOW
         HFvGQyEGYDtQqsU8Hps/gdAdt1kSLVyWASQpvrsWUPsGm/isDrLoMrcmfxW1tDCQem21
         gh1Us71zU7PXTtsPnNecDGBoFUQGXWTKzOmHlenuQJEPBwrT4/dICBGRGu1W4/BcAAUi
         zXzde4uBNoZvZwC7x3dort/GxZ7y1kvDu0Awks0ke0oi8fpXpCQ9ruU2gB2bXmV6W61o
         SMUg==
X-Gm-Message-State: ACrzQf3l2q0HGoFT6evOVN/ZMbwRdo901psKnJh+VaMGMTAI/MyVfBQQ
	zs2vP5cZhfYqGYqfAs75pyz+8Q==
X-Google-Smtp-Source: 
 AMsMyM5FxsZtIs5Qe2RoZdnugA2JNX+rjmMbPvDFwM6iu1w7kCzto78Fm8Hdn1vXfjN7fRNxm2adMw==
X-Received: by 2002:a05:622a:1647:b0:35c:e398:f5d with SMTP id
 y7-20020a05622a164700b0035ce3980f5dmr8157167qtj.688.1664564267012;
        Fri, 30 Sep 2022 11:57:47 -0700 (PDT)
Received: from kudzu.us ([2605:a601:a608:5600::59])
        by smtp.gmail.com with ESMTPSA id
 o2-20020ac87c42000000b0035cebb79aaesm2688305qtv.18.2022.09.30.11.57.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Sep 2022 11:57:46 -0700 (PDT)
Date: Fri, 30 Sep 2022 14:57:44 -0400
From: Jon Mason <jdmason@kudzu.us>
To: Peter Hoyes <peter.hoyes@arm.com>
Cc: yocto@lists.yoctoproject.org, diego.sueiro@arm.com
Subject: Re: [meta-zephyr][PATCH 1/2] zephyr-core/zephyr-kernel: Refactor
 zephyr-image and zephyr-sample
Message-ID: <Yzc8KNby2c74yAKd@kudzu.us>
References: <20220930163437.875793-1-peter.hoyes@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220930163437.875793-1-peter.hoyes@arm.com>
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 30 Sep 2022 18:57:55 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58237

On Fri, Sep 30, 2022 at 05:34:36PM +0100, Peter Hoyes wrote:
> From: Peter Hoyes <Peter.Hoyes@arm.com>
> 
> At the moment:
>  * zephyr-image.inc depends on zephyr-sample.inc, which doesn't really
>    make sense.
>  * zephyr-image.inc inherits testimage, even though it may not be
>    required.
>  * Out-of-tree Zephyr apps have to include zephyr-sample.inc in order to
>    deploy the binaries, which is confusingly named if your application
>    isn't a "sample".
> 
> Do some minor refactoring to untangle the above. Now:
>  * zephyr-sample.inc depends on zephyr-image.inc
>  * zephyrtest.bbclass inherits testimage.
>  * Out-of-tree Zephyr apps can include zephyr-image.inc
> 
> Additionally, remove QEMU_BIN_PATH, as recent Zephyr versions now pick
> up the QEMU binary automatically from PATH.
> 
> Signed-off-by: Peter Hoyes <Peter.Hoyes@arm.com>

Series verified in a batch CI job (on top of the other submitted patches).  See https://gitlab.com/jonmason00/meta-zephyr/-/pipelines/655489776

Tested-by: Jon Mason <jon.mason@arm.com>

> ---
>  meta-zephyr-core/classes/zephyrtest.bbclass   |  4 ++--
>  .../zephyr-kernel/zephyr-image.inc            | 23 +++++++++++++++----
>  .../zephyr-kernel/zephyr-sample.inc           | 23 +------------------
>  3 files changed, 21 insertions(+), 29 deletions(-)
> 
> diff --git a/meta-zephyr-core/classes/zephyrtest.bbclass b/meta-zephyr-core/classes/zephyrtest.bbclass
> index aa48e6c..d4fc75e 100644
> --- a/meta-zephyr-core/classes/zephyrtest.bbclass
> +++ b/meta-zephyr-core/classes/zephyrtest.bbclass
> @@ -1,4 +1,4 @@
> -inherit rootfs-postcommands
> +inherit rootfs-postcommands testimage
>  
>  python zephyrtest_virtclass_handler () {
>      variant = e.data.getVar("BBEXTENDVARIANT", True)
> @@ -14,7 +14,7 @@ python zephyrtest_virtclass_handler () {
>      e.data.setVar("ZEPHYR_IMAGENAME", pn + ".elf")
>  
>      # Most tests for Zephyr 1.6 are in the "legacy" folder
> -    e.data.setVar("ZEPHYR_SRC_DIR", "tests/kernel/" + variant)
> +    e.data.setVar("ZEPHYR_SRC_DIR", "${ZEPHYR_BASE}/tests/kernel/" + variant)
>      e.data.setVar("ZEPHYR_MAKE_OUTPUT", "zephyr.elf")
>  
>      # Allow to build using both foo-some_test form as well as foo-some-test
> diff --git a/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-image.inc b/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-image.inc
> index f4c9db1..fc8c077 100644
> --- a/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-image.inc
> +++ b/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-image.inc
> @@ -1,9 +1,22 @@
> -require zephyr-sample.inc
> -inherit testimage
> +require zephyr-kernel-src.inc
> +require zephyr-kernel-common.inc
> +inherit deploy
>  
> -QEMU_BIN_PATH = "${STAGING_BINDIR_NATIVE}"
> +OECMAKE_SOURCEPATH = "${ZEPHYR_SRC_DIR}"
>  
> -OECMAKE_SOURCEPATH = "${ZEPHYR_BASE}/${ZEPHYR_SRC_DIR}"
> +do_install[noexec] = "1"
> +
> +do_deploy() {
> +    install -D ${B}/zephyr/${ZEPHYR_MAKE_OUTPUT} ${DEPLOYDIR}/${PN}.elf
>  
> +    if [ -f ${B}/zephyr/${ZEPHYR_MAKE_BIN_OUTPUT} ]
> +    then
> +      install -D ${B}/zephyr/${ZEPHYR_MAKE_BIN_OUTPUT} ${DEPLOYDIR}/${PN}.bin
> +    fi
> +
> +    if [ -f ${B}/zephyr/${ZEPHYR_MAKE_EFI_OUTPUT} ]
> +    then
> +      install -D ${B}/zephyr/${ZEPHYR_MAKE_EFI_OUTPUT} ${DEPLOYDIR}/${PN}.efi
> +    fi
> +}
>  addtask deploy after do_compile
> -do_install[noexec] = "1"
> diff --git a/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-sample.inc b/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-sample.inc
> index 10c25c5..5f6dea9 100644
> --- a/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-sample.inc
> +++ b/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-sample.inc
> @@ -1,22 +1 @@
> -require zephyr-kernel-src.inc
> -require zephyr-kernel-common.inc
> -inherit deploy
> -
> -OECMAKE_SOURCEPATH = "${ZEPHYR_SRC_DIR}"
> -
> -do_install[noexec] = "1"
> -
> -do_deploy () {
> -    install -D ${B}/zephyr/${ZEPHYR_MAKE_OUTPUT} ${DEPLOYDIR}/${PN}.elf
> -
> -    if [ -f ${B}/zephyr/${ZEPHYR_MAKE_BIN_OUTPUT} ]
> -    then
> -      install -D ${B}/zephyr/${ZEPHYR_MAKE_BIN_OUTPUT} ${DEPLOYDIR}/${PN}.bin
> -    fi
> -
> -    if [ -f ${B}/zephyr/${ZEPHYR_MAKE_EFI_OUTPUT} ]
> -    then
> -      install -D ${B}/zephyr/${ZEPHYR_MAKE_EFI_OUTPUT} ${DEPLOYDIR}/${PN}.efi
> -    fi
> -}
> -addtask deploy after do_compile
> +require zephyr-image.inc
> -- 
> 2.25.1
> 
> 

