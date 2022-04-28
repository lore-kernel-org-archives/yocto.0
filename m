Return-Path: <jupiter.hce@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6367C433EF
	for <webhook@archiver.kernel.org>; Thu, 28 Apr 2022 09:39:55 +0000 (UTC)
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com
 [209.85.221.53])
 by mx.groups.io with SMTP id smtpd.web08.7885.1651138791029340838
 for <yocto@lists.yoctoproject.org>;
 Thu, 28 Apr 2022 02:39:51 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=Eu9QPKJN;
 spf=pass (domain: gmail.com, ip: 209.85.221.53,
 mailfrom: jupiter.hce@gmail.com)
Received: by mail-wr1-f53.google.com with SMTP id w4so5918877wrg.12
        for <yocto@lists.yoctoproject.org>;
 Thu, 28 Apr 2022 02:39:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Elg0PXsYsw8YAWMoWnwgB1sObyFlLp7Pvoz/CgqlE/w=;
        b=Eu9QPKJNuoCTUblOB4Rq537154MbPEXZbSR4Q2SWJG1hM/FrMxdijZdoHlZLTnEs7w
         vj6QpTHlXpnJkdvn25qfTwFXQUuu0jAu+BiS/+P/DJ/K5KMJEsB4O+0ilKun0anPkFc0
         DcnmSAxpG1mlFSgZIKIXLgdPwFHHaFUjAxtTku8FJVG5iyWDXmIdSybu6fUcqHGDbj0v
         ykaWLuBAT0brh3K/m9/H8OMUU1JQ/jl7Ff4BaM4NUoKhHA9grPkl044S6BPp0tDdx1BH
         f8oNXQblAzrx197otiGLPol5ba2Lz7i6qtM9qpsbM3xvg4p4f6rjohW1HzJF3iK1w/2M
         sRKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Elg0PXsYsw8YAWMoWnwgB1sObyFlLp7Pvoz/CgqlE/w=;
        b=7DNY7XDUxAMhxNBPdnXQDmEH5MaSev7ob9N82i+y6WmIYV18/kagjyZ1l/7YAlUbW7
         5Xne8vyio1OJzcS8pJb5vCSgvn+RXKGUj6HkFvQGZ376zbZqfkYLvM/nLBsgV4RS3iEK
         cneCU6n1Swvbz9nRXxedIqHK2bshu0fwjUAT+OvIGIpN0LtnrxfvME/QqXa4ByqW/DX8
         C23O+1pyT3rQHoYTeepcrNG2ksIZ43TdI1xFbo0dZpwZO1wBb48wsH23PmN6HeolxgeJ
         LvjIRfPVQh0BZ1XntftZnTLWOm0xThCpArfQiwSjzEjT5nF+SS+yhLaiM3mtU9BfAPhf
         Mqtw==
X-Gm-Message-State: AOAM532RXbBBm8yQoHAcNXK6uD5RxqkmVqOfBOkV9B7SDS1T612O7fIV
	95Iramd+Q1o54kyxuis53QsRAmTkxvosOOAr5w0=
X-Google-Smtp-Source: 
 ABdhPJxlcciiLBZJit2M3H9mmpkcwH2YCLmr/nbZK3LYk3nZYtWNsdlbuwUIEKuzzOZu4jI4WO+ZnxLbmuFpLkcc8kM=
X-Received: by 2002:a5d:4e08:0:b0:20a:f065:7024 with SMTP id
 p8-20020a5d4e08000000b0020af0657024mr5684084wrt.598.1651138788935; Thu, 28
 Apr 2022 02:39:48 -0700 (PDT)
MIME-Version: 1.0
References: 
 <CAA=hcWSv7=gctvWYXSaJTqi=y=G9Zr8Jr01+5vVUcGSsPJM9vA@mail.gmail.com>
 <CADkTA4McF0vDHBX+gtFnFXLHF5+eyfFZCjPs4DP2B5C0zcSsVw@mail.gmail.com>
In-Reply-To: 
 <CADkTA4McF0vDHBX+gtFnFXLHF5+eyfFZCjPs4DP2B5C0zcSsVw@mail.gmail.com>
From: Jupiter <jupiter.hce@gmail.com>
Date: Thu, 28 Apr 2022 19:39:10 +1000
Message-ID: 
 <CAA=hcWTrEkw+xPDFzKqNMM264aOoqiJXvyU9209m5xhEBEts+A@mail.gmail.com>
Subject: Re: [yocto] How to force build system to use a working kernel
 defconfig?
To: Bruce Ashfield <bruce.ashfield@gmail.com>
Cc: yocto <yocto@lists.yoctoproject.org>,
	openembeded-devel <Openembedded-devel@lists.openembedded.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 28 Apr 2022 09:39:55 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56929

Hi Bruce,

Thanks for your response.

> You can't suppress the kernel's config step, it is always going to
> run. You can't just copy over .config and have the kernel build.

If the OE build kernel config step can be disabled to compile kernel
using customer defconfig, that will make users life much easier to
disable unwanted kernel drivers and features.

The customer defconfig can be certainly generated from bitbake -c
menuconfig, but honestly, the kernel configure selection is not easier
to understand, we have to use defconfig to disable unwanted the
configures and tested it, inadvertently disable some configures could
cause kernel panic regardless if the OE build system config step is
running or not.

I have searched the internet, it is not just me, there are many others
who requested to run customer defconfig without OE build kernel config
step.

Are you a contributor in the OE dev team? Are there any reasons why
the OE dev team won't consider this feature?

Thank you very much.

Kind regards,

jupiter

