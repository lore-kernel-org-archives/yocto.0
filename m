Return-Path: <jupiter.hce@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7896FC433F5
	for <webhook@archiver.kernel.org>; Mon, 22 Nov 2021 20:34:29 +0000 (UTC)
Received: from mail-ua1-f43.google.com (mail-ua1-f43.google.com
 [209.85.222.43])
 by mx.groups.io with SMTP id smtpd.web11.1881.1637613268953679303
 for <yocto@lists.yoctoproject.org>;
 Mon, 22 Nov 2021 12:34:29 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=n/8ODJlb;
 spf=pass (domain: gmail.com, ip: 209.85.222.43,
 mailfrom: jupiter.hce@gmail.com)
Received: by mail-ua1-f43.google.com with SMTP id az37so39143179uab.13
        for <yocto@lists.yoctoproject.org>;
 Mon, 22 Nov 2021 12:34:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=lfsHlyrKY4t2w+5PRxbM1Azn9Yq6J6jLVnVYcObCDXQ=;
        b=n/8ODJlbWH7siUKqwUA1T0vZKfNdbZFpue3KkAUXZMsK8CxC5bialJ5LGzRdV4D7pZ
         De5/UN9hOJ7EGT3W82gjJW/lgsdaAt5ae96RuEhBNtQiiCJ8+BEXIrxR04k3Zwf4tBMc
         LGClJM+R+uyoWX6WLX9WhwSF7u2D6vEDJCDo6VAqbtznfadMgRTbMRgZxQ9f65STLJI8
         xf2jbyDfyJ3g+GIv7S6zfVA6Ub99Bicg7EVGzNp+4izbbIfxknTKKrTCaN1nd2o7O6pa
         UV1xvcszrzycVe4WSxpsX9uaapJR0BvfwL5SyElJROeeW1QNxz2zYyCRHjF8rHp61TRk
         YiNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=lfsHlyrKY4t2w+5PRxbM1Azn9Yq6J6jLVnVYcObCDXQ=;
        b=Cdug4lKrvsL4M0VOwz2sl2FVrTB05Vzvh+pKoSJ63CNzcSj8czzOPaCVLUr80Hikyo
         OURu26ZC4YJrjCR8JZL/ueZhVZlui6WwX57yf0UvwW1pCFNobJI9+RIUmC6bnFixoa0L
         hNxCVODx+pkuqFbBwN1qECOFXIRaK7JO7tG4JTQpXZgtqjV4SMmHgaP2+Z6n2bertOok
         E+NgSRsqYn2E1CMTjOCLIzIsx2GX3MY9SmLuiFyrDv/gyGEMqzatXYqAJ1R18Wx6x5Wt
         jgpY9kth0XX7bF8rsAfwk1TOHqFuhlWxkOGugzKDjPlNbcZJFgbMqI5yjVVM+S5w5ua/
         GRGg==
X-Gm-Message-State: AOAM531CbUX/HlSfswrvBuMS7QxFjbBHoZHegAyqKxwLeo/7kOKbFL+o
	OBVbMaSryO+e3pcP9+dABDTDRnwWODVW+OIx6I8=
X-Google-Smtp-Source: 
 ABdhPJzgCOeeICjFGJvJsB/f6JLF4AGEVyVnembKXlfkr7T/y53VzxoyFRiZqRg44kTTLyVmL5z+90vOFHjbiUYcqK8=
X-Received: by 2002:ab0:22c6:: with SMTP id z6mr90545655uam.80.1637613268024;
 Mon, 22 Nov 2021 12:34:28 -0800 (PST)
MIME-Version: 1.0
References: 
 <CAA=hcWQt4W4F16jZpNfj427+Om7EvJMs+-QKbeq1_NkoQSQW_A@mail.gmail.com>
 <bdfa8797-6c8d-938c-9eb6-8ab12cfcc7aa@bootlin.com>
In-Reply-To: <bdfa8797-6c8d-938c-9eb6-8ab12cfcc7aa@bootlin.com>
From: Jupiter <jupiter.hce@gmail.com>
Date: Tue, 23 Nov 2021 07:33:51 +1100
Message-ID: 
 <CAA=hcWRBT0bwq1P2yWbRUBHg0+mmkOYgAPc_sWQ7_UsWh2o6Kg@mail.gmail.com>
Subject: Re: [yocto] Honister version: ERROR: QA Issue: Files/directories were
 installed but not shipped
To: Michael Opdenacker <michael.opdenacker@bootlin.com>
Cc: yocto <yocto@lists.yoctoproject.org>,
	oe-core <openembedded-core@lists.openembedded.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 22 Nov 2021 20:34:29 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55385

Thanks Michael, greatly appreciate it.


On 11/23/21, Michael Opdenacker <michael.opdenacker@bootlin.com> wrote:
> Hi Jupiter,
>
> On 11/22/21 10:51 AM, JH wrote:
>> Hi,
>>
>> I was able to build my package in Zeus, I am now upgrading from Zeus
>> to Honister, the same package I could build in Zeus now failed in
>> Honister at do_package where I installed my libraries and symbolic
>> libraries links to my own RW locations:
>>
>> ERROR: QA Issue: Files/directories were installed but not shipped
>>
>> I purposely separate my application libraries and symbolic libraries
>> links from traditional system RO library location to my application RW
>> locations, I know how to handle it, it works perfectly built in Zeus,
>> I don't need the Yocto QA to police it, I tried to add an empty
>> do_package_qa() in my receipt, it does not work either. Are there any
>> ways to disable package QA?
>>
>> Appreciate your advice either how to fix it or disable package QA.
>
>
> These checks can be disabled. See
> https://docs.yoctoproject.org/ref-manual/classes.html?highlight=insane#insane-bbclass
> Cheers
> Michael.
>

