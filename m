Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 27551ECAAA3
	for <webhook@archiver.kernel.org>; Thu, 25 Aug 2022 23:27:42 +0000 (UTC)
Received: from mail-yw1-f171.google.com (mail-yw1-f171.google.com
 [209.85.128.171])
 by mx.groups.io with SMTP id smtpd.web08.31197.1661470061180201396
 for <yocto@lists.yoctoproject.org>;
 Thu, 25 Aug 2022 16:27:41 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=NnjuT9qn;
 spf=pass (domain: gmail.com, ip: 209.85.128.171,
 mailfrom: raj.khem@gmail.com)
Received: by mail-yw1-f171.google.com with SMTP id
 00721157ae682-33dce2d4bc8so20470057b3.4
        for <yocto@lists.yoctoproject.org>;
 Thu, 25 Aug 2022 16:27:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc;
        bh=oNJEsV7c58MfvHwkMPXBA08KlypK3vnzCXstdgWhkKI=;
        b=NnjuT9qncJE9WQt4Yr7j0jfM0uMpRlbrHPK2VIxGr23wJfHiDC+ObMt6OqlLoHV3Hq
         KMxCGmfPvfWbXNq9hqNkD0mk6LAN3MQXlly3XRMLSAOxrhRxCqgizAdNSfgvm3QKSNib
         jCktldUggUiaVAfyxqSJzFVu0+GtdmLA3rgLzCFIubYisnGCZSsFgbirIIDXJHfbC1HV
         Vwxj5glryl5ibIrY5X3xQCLGCUNXvloHko2pMGD9LTOT/dldA16ktG89yj6KJMCsLFAy
         77nIG1yy03jNFLdzzV69LDa/hPkKQs934SqGyFk+knpca2NRo23LoM66xmCMGyQyg+TX
         iltQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc;
        bh=oNJEsV7c58MfvHwkMPXBA08KlypK3vnzCXstdgWhkKI=;
        b=zihmmJlBwiV7KapjcIEdrF4SGvkNCTh75CIFLreAa15/dHWWj/yx/eoD6L2yDil3PE
         Vwm2iNvbkIr6SbvG7pjWFpQVAyKISWoA0jROartRpJ8In3qqvhST1Zgy+68o4C9/UZoj
         KQvg15ncscgXK8Uaq6sNsExdV8z6tvsDkk3chYnuHxUl42qX4RApS7bAQ5B2YfnsiUms
         sfDI5MshuP5WF3grnqaPzwVktF3yEbQThXZ4FLyBhYyPIrQgfx9rEndr9j+lSb67G7cI
         XCHd5ePJUoifH1Ng6NNdwMucy13pfM6SVWB6einpKiqxZDXx2ZNlSEEQA2hY0p3clwEu
         09Mg==
X-Gm-Message-State: ACgBeo33G6HNVVPHwXVDp4FuiN2XYDHAPL98sDOKc9KB85tyAaE9NW7U
	HPnMb/zHW32m+ttBS5wR/kdhJNsDkgNMJslnqh8=
X-Google-Smtp-Source: 
 AA6agR57nlBIzScLd5oGy2D+4S3g0OrRf2PXaqo732x62rVaAVRdZAsY9iKVGxDU1f+g1e5l0Bb2/xdPgzUP3+OLV+k=
X-Received: by 2002:a5b:98b:0:b0:695:8398:9f1e with SMTP id
 c11-20020a5b098b000000b0069583989f1emr5306582ybq.620.1661470060106; Thu, 25
 Aug 2022 16:27:40 -0700 (PDT)
MIME-Version: 1.0
References: <0c8260c2-0da1-7566-3f9a-e90d4995b45b@ibeeto.com>
In-Reply-To: <0c8260c2-0da1-7566-3f9a-e90d4995b45b@ibeeto.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 25 Aug 2022 16:27:14 -0700
Message-ID: 
 <CAMKF1spJvxxuPOK+KFEX19MjOwumSZ+tGT_u1icvH5z1U8qiAA@mail.gmail.com>
Subject: Re: [yocto] Dependency for binary package
To: Rudolf J Streif <rudolf.streif@ibeeto.com>
Cc: Yocto <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 25 Aug 2022 23:27:42 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57902

On Thu, Aug 25, 2022 at 7:30 AM Rudolf J Streif
<rudolf.streif@ibeeto.com> wrote:
>
> I am packaging a binary package that has been built with the SDK created
> with the exact same configuration.
>
> During do_package I am getting an error that a dependency on
> libGLESv2.so()(64bit) cannot be met. Adding mesa to RDEPENDS does not
> resolve the issue. I can bypass it in the recipe by adding file-rdeps to
> INSANE_SKIP. However, then when the rootfs is created libdnf complains
> that the dependency on libGLES is not met and aborts.
>
> The application works just fine on the target if I copy it manually to
> the rootfs but that's not the best thing to do. It should be packaged
> and installed.
>
> Unfortunately I don't understand well enough how these checks work and
> why they are complaining about it. Maybe somebody can shed some light on it.

some libraries do not set SONAME in them, which can trip the shlibs
code. Can you
check if libgles in question has SONAME encoded in its ELF header

 readelf -d <lib> | grep SONAME

might be what you can use to deduce it.

>
> Thanks,
> Rudi
>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#57898): https://lists.yoctoproject.org/g/yocto/message/57898
> Mute This Topic: https://lists.yoctoproject.org/mt/93249287/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

