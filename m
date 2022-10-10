Return-Path: <steve@sakoman.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64185C433FE
	for <webhook@archiver.kernel.org>; Mon, 10 Oct 2022 19:33:57 +0000 (UTC)
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com
 [209.85.218.50])
 by mx.groups.io with SMTP id smtpd.web12.2083.1665430427189365642
 for <yocto@lists.yoctoproject.org>;
 Mon, 10 Oct 2022 12:33:47 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20210112.gappssmtp.com header.s=20210112
 header.b=VcYqKu5p;
 spf=softfail (domain: sakoman.com, ip: 209.85.218.50,
 mailfrom: steve@sakoman.com)
Received: by mail-ej1-f50.google.com with SMTP id w18so529243ejq.11
        for <yocto@lists.yoctoproject.org>;
 Mon, 10 Oct 2022 12:33:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=GvpiVVimTInQt0jGkkinT+bXSbCSG5Pv0U2AXnpkYlQ=;
        b=VcYqKu5pRVTDQVm8zcbVYhQZ4ZbBhUwtb4aAy5v9P0DMX6F20NgsCGKlnJ089eNAn2
         6BHqtRrMKddRwytaigw3l7cAUhMyM4xqWdNkK4MM/V1Qb6fQXAiJmGizDtO4rELW8WuP
         IOCEb0Taj8kmzoqkGHvbLs20AQYW7tESTV/2oiXPC6P8zzIieDWpTxIJkmu5AOM0sr3P
         9hVSaRPl5eh0t4Cz+R21j3ttEEnUXtxPDg7CLPX9eYdPA6eINViIW44x7Pacrd96JpUT
         UPaOOQxHyUfORzGXLVdHb06e6kwzdRsLa5YNhmcdJqmkKSIniIxgk8aSuNcA8/fQ8vkl
         s6dA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GvpiVVimTInQt0jGkkinT+bXSbCSG5Pv0U2AXnpkYlQ=;
        b=iiKRNFi5ytc5RpgIsblcWe6kboEGvMLVsmWy9iOe3h01orKf5MUkC2fMmVHuy6fX1U
         u8uzIMznkxMetSF+86YYEECU4rmXjpNg1HK+zIJ9L5hfi6hdxzMfpXa6vHuXjSCBBYl1
         RzFEXbEppm13Gnk63Kg0o5egnGB4npuJ41LVrh89wmVKxT1t5Uwtt6TXyI8463aBjxph
         I8u3VfM22n+/YuUKFab5T0YgHEMEIVI2+GbPO/ag7du3hgcsa1mSZK8CcvhfxbUGZHTi
         qNqDCMH1VSSCC8d0OFHJK0liduQxIczbsCmow4EZ2zPmz/N4KiD5A0GZhheEWCWR+XIa
         d2Yg==
X-Gm-Message-State: ACrzQf0+vS8UOCas97Ax9dgHiphmO9wkVHDAIRa1OVZ6PWKKAlr4wjH1
	A8fkdhE7qxMtqowR0Qu91aw9Yks7poiD7JsdJ0Sd/A==
X-Google-Smtp-Source: 
 AMsMyM7cbh5xm9I83DMcuzx8D99jpyIDfBv50s+MoF7MIGkTZcO0XaPzC7lOEPccv2QDfqN1EucM+7PhsmVdHWDKZV0=
X-Received: by 2002:a17:907:86ab:b0:781:f150:84e4 with SMTP id
 qa43-20020a17090786ab00b00781f15084e4mr15759910ejc.435.1665430425464; Mon, 10
 Oct 2022 12:33:45 -0700 (PDT)
MIME-Version: 1.0
References: 
 <01010183c307a590-5d10c6fa-0719-47ea-9159-9026993db177-000000@us-west-2.amazonses.com>
In-Reply-To: 
 <01010183c307a590-5d10c6fa-0719-47ea-9159-9026993db177-000000@us-west-2.amazonses.com>
From: Steve Sakoman <steve@sakoman.com>
Date: Mon, 10 Oct 2022 09:33:34 -1000
Message-ID: 
 <CAOSpxdYVhFztmztC-3+j=1BX-VZ0G_knqnxJY+AoGODsZg02mg@mail.gmail.com>
Subject: Re: [yocto] QA notification for completed autobuilder build
 (yocto-3.1.20.rc2)
To: Pokybuild User <pokybuild@yoctoproject.org>
Cc: yocto@lists.yoctoproject.org, qa-build-notification@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 10 Oct 2022 19:33:57 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58311

We happened to hit another known autobuilder intermittent issue on the
qemuppc build:

https://bugzilla.yoctoproject.org/show_bug.cgi?id=14824

The worker happened to be heavily loaded at the time, and a subsequent
run was successful:

https://autobuilder.yoctoproject.org/typhoon/#/builders/63/builds/5935

Steve

On Mon, Oct 10, 2022 at 7:53 AM Pokybuild User
<pokybuild@yoctoproject.org> wrote:
>
>
> A build flagged for QA (yocto-3.1.20.rc2) was completed on the autobuilder and is available at:
>
>
>     https://autobuilder.yocto.io/pub/releases/yocto-3.1.20.rc2
>
>
> Build hash information:
>
> bitbake: 048d682b031644fb9f0d41a489bacb873aa27bd7
> meta-agl: da4775d226b2a231e27e8c8995c20fdd3c73f08a
> meta-arm: 08c44df351ae1913f41de8388981b03e21235f09
> meta-aws: 052c9a5f8532ed96487df37bae2f598c129d7d01
> meta-gplv2: 60b251c25ba87e946a0ca4cdc8d17b1cb09292ac
> meta-intel: ed616c50ea329ba6fe68642cfc8bf8c6b8b61beb
> meta-mingw: 524de686205b5d6736661d4532f5f98fee8589b7
> meta-openembedded: 6792ebdd966aa0fb662989529193a0940fbfee00
> meta-virtualization: beea119eb529b4a11f266004aee8b548427aea39
> oecore: dbad46a0079843b380cf3dda6008b12ab9526688
> poky: 7f9b7f912e13451a4cd03b10a8090a5def68dc39
>
>
>
> This is an automated message from the Yocto Project Autobuilder
> Git: git://git.yoctoproject.org/yocto-autobuilder2
> Email: richard.purdie@linuxfoundation.org
>
>
>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#58310): https://lists.yoctoproject.org/g/yocto/message/58310
> Mute This Topic: https://lists.yoctoproject.org/mt/94241971/3620601
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [steve@sakoman.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

