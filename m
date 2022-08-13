Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7E530C25B08
	for <webhook@archiver.kernel.org>; Sat, 13 Aug 2022 06:52:52 +0000 (UTC)
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com
 [209.85.208.178])
 by mx.groups.io with SMTP id smtpd.web08.2513.1660373567176821352
 for <yocto@lists.yoctoproject.org>;
 Fri, 12 Aug 2022 23:52:47 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=RgkMc9Dn;
 spf=pass (domain: gmail.com, ip: 209.85.208.178,
 mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f178.google.com with SMTP id by6so2778900ljb.11
        for <yocto@lists.yoctoproject.org>;
 Fri, 12 Aug 2022 23:52:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc;
        bh=wqiZEA3nWhY43XLGANOQMSHxTdpFtjklOm2jJoNwUdQ=;
        b=RgkMc9DnG8A/JE7oi2plfHAf07YpcuFFltj4FOT2OZGVxCr9hApokBuKXQeZk8UG6e
         r8DjGOMVX+OmjRa/yiVCAOArmikrQF15KD+kf6GzlhLpwcUDDP9NJqmHouVUesmxeT0T
         z2LY9iLtWhxOUQE76sioi1FG7zjJ4x6+dt/4TejXQkrbGljKIHpD5JCDCrQnsU6E6Lfg
         zRoTBo0fim8wgG+CSD3KxMC59FDpcfxohLYYpGDxwtV3znOJ1e0MiTdeyBGPRvmMGx4n
         drGakw+2S7zI9HKze/JzEkr3s4hOCJ9a/H7jg3rrL+fLx6IJD5f8TtXJjYgwq++6q24J
         9fsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc;
        bh=wqiZEA3nWhY43XLGANOQMSHxTdpFtjklOm2jJoNwUdQ=;
        b=3FOCXY7Sq6N/yuo+LRWnyncv8JD45pFN42scws3MPwwcUT3Tfp54ErC/cTwNk3ujB1
         0YQ1NyZr45AHMmY7cM+Y8xiUgF9K/Q5q0xADM2r3c0LyEydigG9yGS52k/Ma1weVdry4
         7WY6OmrJS6rippN0EwO9bJ13UlUhaOZz5O0W8g5tjBSZnW8e+HYqhXzVMtovTPAh5Igr
         T13pYYo0MRQfLUlxarwIwwLDEftl0ZlwfJ7TeG8a6LktNECf/0JuNCEHARRZEOB1bz6b
         DitITjyHBTuZ332DgoDVTY0GJIE2BbWntEeuq46z38HISJO3w1/hpfQ8uG5LEfO+eBKQ
         bYsw==
X-Gm-Message-State: ACgBeo3tNC5MjAVgqdOECcvKtijcrVHRxpi1k1vxA4I3RKr7EhcO/8mq
	lbrGqIzvH2Owv+nCtC4ywQa8/cdvxn1mNlIm6Qo=
X-Google-Smtp-Source: 
 AA6agR5OHwZ1p1rEd9KRIGe0PelHUeylYBldajv2qAMiPqEereCl4D+/9vU5dhxQWNUSBSZKktKwCHZl3+a6AzHG2os=
X-Received: by 2002:a2e:98cd:0:b0:25e:7446:c0fe with SMTP id
 s13-20020a2e98cd000000b0025e7446c0femr2157412ljj.56.1660373565137; Fri, 12
 Aug 2022 23:52:45 -0700 (PDT)
MIME-Version: 1.0
References: <BRp1.1660360434435137905.U3zp@lists.yoctoproject.org>
In-Reply-To: <BRp1.1660360434435137905.U3zp@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Sat, 13 Aug 2022 08:52:33 +0200
Message-ID: 
 <CANNYZj8bQ1QbkNB8++AenAho8jyMJr4VCy7MHA8+PsvuF-He3Q@mail.gmail.com>
Subject: Re: [yocto] A bitbake error caused by "Variable BB_ENV_EXTRAWHITE"
 #bitbake
To: lucky33newman@gmail.com
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 13 Aug 2022 06:52:52 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57834

Hello,

you probably need to exit the shell and then restart it and
re-initialize your environment (with oe-init-build-env), as it
contains the obsolete variable.

Alex

On Sat, 13 Aug 2022 at 05:13, <lucky33newman@gmail.com> wrote:
>
> Hellow everyone, this is Yan. I am new to Yocto Project, still, I am learning.
>
> There is a question, when I bitbaked my image I found this ERROR:
>
> yanxk@yanxk-Ubuntu:~/Yocto/poky/build$ bitbake core-image-sato
> ERROR: Variable BB_ENV_EXTRAWHITE has been renamed to BB_ENV_PASSTHROUGH_ADDITIONS
> ERROR: Variable BB_ENV_EXTRAWHITE from the shell environment has been renamed to BB_ENV_PASSTHROUGH_ADDITIONS
> ERROR: Exiting to allow enviroment variables to be corrected
>
> How can I do a quick fix, and why is it working wrong?
>
> By the way, I check the link https://git.openembedded.org/bitbake/commit/?id=87104b6a167188921da157c7dba45938849fb22a , which most likely the main cause.
>
> Waiting for a help.
>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#57833): https://lists.yoctoproject.org/g/yocto/message/57833
> Mute This Topic: https://lists.yoctoproject.org/mt/92994782/1686489
> Mute #bitbake:https://lists.yoctoproject.org/g/yocto/mutehashtag/bitbake
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

