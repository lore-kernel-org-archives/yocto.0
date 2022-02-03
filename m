Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1CF55C433EF
	for <webhook@archiver.kernel.org>; Thu,  3 Feb 2022 19:25:52 +0000 (UTC)
Received: from mail-qt1-f181.google.com (mail-qt1-f181.google.com
 [209.85.160.181])
 by mx.groups.io with SMTP id smtpd.web09.2572.1643916351124702004
 for <yocto@lists.yoctoproject.org>;
 Thu, 03 Feb 2022 11:25:51 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=WvmjI5cS;
 spf=pass (domain: gmail.com, ip: 209.85.160.181,
 mailfrom: raj.khem@gmail.com)
Received: by mail-qt1-f181.google.com with SMTP id h8so3722033qtk.13
        for <yocto@lists.yoctoproject.org>;
 Thu, 03 Feb 2022 11:25:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=0V2me3G4kLhD54UwJeocEvcPjOmqZsmcRQOtmEx1H30=;
        b=WvmjI5cSw6sCxZ0k9dE9TsdTLloKf7Und5BKMpYtQ3SkCldMUQ74WgNJrAhNtjEQdp
         rCy5LPXGa9V9PUFT8jySfdrjNFZTBL12bywEb85C+IJi4wyUnWWw8GFTr2qMYVfsU1fz
         pO8c7oA6Axkdw7bGQOOWteTD0qw7zxRJ26OLpLVkqcDFxklZKtNDmSyXoB9vg7YxUNoi
         rffwWQoEGHk/5IeClfjoZjUDCs1tVAB+2V9Yh25UfWFUgqp90/cvkKDVvqafu8FwXeRp
         F6qFJc/vITgyAqE+FnFxk3Uso6CyFwvTKljZxh8rXOrBo/Pn+SDtXZxlvWiRXS06vVT3
         8M/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=0V2me3G4kLhD54UwJeocEvcPjOmqZsmcRQOtmEx1H30=;
        b=fVvvRCpu6f8tKK9J3Bm4smkVTsGmRAc3fRULhp+mIgu+xPAla7ve8a1sUe91RTL836
         lUwzxZh+1o3NTyC6AYN5T0anqW8QONuMdHqvpDzhVMHA/EhR3OzQY22USldXYrEUdW6b
         PA1KLEhzkwyMP130NjKQ7s0kYO++YkYEsCUXEBURzH4RmFIofSoG2H6f3TUNwtmzkaru
         w7olEJkLWhoxn1ri0DvajmtlD4vNSiL0J6CftS3xWyoiE+fN1XhT1HFeBHxolbpbytGf
         cRsnPR+baiXTb7MLNdH0codP4ZQckn142E/xKMbq/dOf9pDSQWAVcxBZWxT0rv3nXZ+v
         9O8Q==
X-Gm-Message-State: AOAM530jwlQjAvXYZbUWWKxoG0ugbpYQl70NSC9f0962rVkG3C3YsPi5
	Dcuomr9s0q55ERyoy0AcFRbfuRswc4ci15xpEJPIsmvtu9k=
X-Google-Smtp-Source: 
 ABdhPJwfE0x3cGrx4x/EjZ1ffw+YpD2mwcGjf94WtYJ9HfjliEnYTZdLWCTG+3y3yuJ/fJY8eTc7KaEmru9nHitOXMk=
X-Received: by 2002:ac8:75c6:: with SMTP id z6mr27589621qtq.532.1643916350123;
 Thu, 03 Feb 2022 11:25:50 -0800 (PST)
MIME-Version: 1.0
References: <16D03C33527B22CF.12815@lists.yoctoproject.org>
 <AM0PR10MB3107D33BAF6FC963800A700E99289@AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM>
In-Reply-To: 
 <AM0PR10MB3107D33BAF6FC963800A700E99289@AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 3 Feb 2022 11:25:24 -0800
Message-ID: 
 <CAMKF1sqC=VfzzWMORaFVabXBuR+bcLE+FJfPMpc6ZTfmuvS0bw@mail.gmail.com>
Subject: Re: [yocto] wget - The certificate has not yet been activated (does
 also happen in qemuarm "virt" machine)
To: Matthias Klein <matthias.klein@optimeas.de>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 03 Feb 2022 19:25:52 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56062

On Thu, Feb 3, 2022 at 9:14 AM Matthias Klein
<matthias.klein@optimeas.de> wrote:
>
> Hello together,
>
> I can "fix" the bug by switching from gnutls to openssl:
>
> PACKAGECONFIG:remove = "gnutls"
> PACKAGECONFIG:append = " openssl"
>
> Can anyone explain this?
> What exactly does the change to openssl mean?

this means you are choosing openSSL to provide TLS protocol
implementation instead of gnuTLS

>
> Many greetings,
> Matthias
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#56061): https://lists.yoctoproject.org/g/yocto/message/56061
> Mute This Topic: https://lists.yoctoproject.org/mt/88879516/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

