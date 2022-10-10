Return-Path: <steve@sakoman.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0AFDC433FE
	for <webhook@archiver.kernel.org>; Mon, 10 Oct 2022 14:10:45 +0000 (UTC)
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com
 [209.85.218.47])
 by mx.groups.io with SMTP id smtpd.web08.6673.1665411042180155394
 for <yocto@lists.yoctoproject.org>;
 Mon, 10 Oct 2022 07:10:42 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20210112.gappssmtp.com header.s=20210112
 header.b=ewv1/8XH;
 spf=softfail (domain: sakoman.com, ip: 209.85.218.47,
 mailfrom: steve@sakoman.com)
Received: by mail-ej1-f47.google.com with SMTP id ot12so25209766ejb.1
        for <yocto@lists.yoctoproject.org>;
 Mon, 10 Oct 2022 07:10:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=0lLdHq3MHbh82ehHT7mEMlHHPgaxSIYNVD5f7K24i3E=;
        b=ewv1/8XHLM3AsM/sxdp9XWhJ7F5vA1sEwrXSoqwaUWAA8zgsfynab6aP0NcAw0O6/V
         GsrTF/Jg6VhvlfwwAZ81mLwriTR3ol5bXPzUjjxN3Z7X1ute5aDlgyHayPJ9jq8GHw5u
         KIG/Q+6yIIT/qimj7xqjZV0+OQS6TyvQ5lrdMv2qlcgyWAhz/Jl37jEQ20j/4j8DwrTR
         RZzBj8B3aF1NtH6cdLKCFhvhBozYGcx1YPWnkqOa3NTOcF3eYzfTk0ZyhVp5cEZ60Dzn
         57IU2a7ezSWjg75uvLcNo8hevCyZb8GTR2kk8ASxN2MsqJGveDZA0glnuNkhWB1Ac3wy
         IPnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0lLdHq3MHbh82ehHT7mEMlHHPgaxSIYNVD5f7K24i3E=;
        b=DpX1mDXC/4pW089wU179uOBlY6+ifYL3sn0ilFY3IidNSu+pYebQOsMs5IjYmoJVJ2
         xoX9jjUidkfudmyupnB7gEH8z5JRf9XH2WX5pWrpgKWbq4n0+3LG2nUTW1qpPJeRUKEB
         wbheyzba5mpCkE3tw6JBckzlzEsV8uDa21jUOeVjENKNoe0sgY4IwGTvBAWzy+hpeCtZ
         rbn+xU/FXgV2rKasHsAD9iblxFv300KVTP+n+RKR4DKUtrB+SFIUlcCpw/9QRINXf5S4
         AAN7KsGTsi56FaCXChaVWghcp1rPmH16cGEKqQVRnO50TEtr671ZQKqp77+H+pcn1V0z
         /Ajw==
X-Gm-Message-State: ACrzQf1qgvhEUCywtYPtSpRB6GoPbgG42rKCRu5CmCqDWEAkTBr2TTRh
	+Ar6F2uoWZ/t6ohfB/M4+a/Fnv+nBNAgykVMEw8m5g==
X-Google-Smtp-Source: 
 AMsMyM4NGI7RvdYRzAXkUW821THC5Y309OEiuYvtHJOMR5gxBJE2K9eoWjOOjDQaIV1rqSBD01IocKavg313o0Xjrvk=
X-Received: by 2002:a17:906:58d6:b0:783:a081:7a20 with SMTP id
 e22-20020a17090658d600b00783a0817a20mr14730748ejs.357.1665411040369; Mon, 10
 Oct 2022 07:10:40 -0700 (PDT)
MIME-Version: 1.0
References: 
 <01010183c1d53236-d20aa3af-b0ca-4f72-b153-1ece8a7e1c53-000000@us-west-2.amazonses.com>
In-Reply-To: 
 <01010183c1d53236-d20aa3af-b0ca-4f72-b153-1ece8a7e1c53-000000@us-west-2.amazonses.com>
From: Steve Sakoman <steve@sakoman.com>
Date: Mon, 10 Oct 2022 04:10:29 -1000
Message-ID: 
 <CAOSpxdb0D61p1mSA6eU_F2a-MKswREysYMwCVdubceZ+CC3KFQ@mail.gmail.com>
Subject: Re: [yocto] QA notification for completed autobuilder build
 (yocto-.rc1)
To: Pokybuild User <pokybuild@yoctoproject.org>
Cc: yocto@lists.yoctoproject.org, qa-build-notification@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 10 Oct 2022 14:10:45 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58307

This was the 3.1.20 release build.  I somehow neglected to fill in the
release number on the build form.  Sorry for the confusion.

There was one failure in the build -- a known autobuilder intermittent issue:

https://bugzilla.yoctoproject.org/show_bug.cgi?id=14522

I reran this and it passed:

https://autobuilder.yoctoproject.org/typhoon/#/builders/63/builds/5931

Steve

On Mon, Oct 10, 2022 at 2:18 AM Pokybuild User
<pokybuild@yoctoproject.org> wrote:
>
>
> A build flagged for QA (yocto-.rc1) was completed on the autobuilder and is available at:
>
>
>     https://autobuilder.yocto.io/pub/releases/yocto-.rc1
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
> View/Reply Online (#58303): https://lists.yoctoproject.org/g/yocto/message/58303
> Mute This Topic: https://lists.yoctoproject.org/mt/94234792/3620601
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [steve@sakoman.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

