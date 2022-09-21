Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F0B4CECAAD8
	for <webhook@archiver.kernel.org>; Wed, 21 Sep 2022 11:57:31 +0000 (UTC)
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com
 [209.85.167.44])
 by mx.groups.io with SMTP id smtpd.web11.5431.1663761450520791529
 for <yocto@lists.yoctoproject.org>;
 Wed, 21 Sep 2022 04:57:30 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=Mvkl4jWP;
 spf=pass (domain: gmail.com, ip: 209.85.167.44,
 mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f44.google.com with SMTP id f9so8809686lfr.3
        for <yocto@lists.yoctoproject.org>;
 Wed, 21 Sep 2022 04:57:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date;
        bh=V/fJSyYiyKr+FJTKPD7tOO7BaXLMsiTyFmoDBUlrAXk=;
        b=Mvkl4jWP18JCI4CjMJfiynK+pyJ25V/DMxJ0g5W5WdDB6bk+Y47fsRunvyT3yyYY6q
         4Oru3al8JHuIw6ghfcBZ4F1dxJtIHLtRuWZx7YLCHk9KoVxOHFs3WXNwvFmkWUUTuF/O
         DTNrMQr1db07GrzQORWEKRCJROgEOxW6PMZcXpQGG6XWMda31LYE5YF8ToIQAAe0iwya
         U3vgAQN8ZLoSH88Nh1mCo+J2BK4sRlEBH4tkGHlUEOFKyr8OsyYCyvDFOt2FBPO601rY
         pFfrHcw0sDwt9n9eI5UQKEybM+Jq05h7XbVe45t+KTjQxCgm7kv5mQ7oP1xWYY5grEjr
         C8GA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date;
        bh=V/fJSyYiyKr+FJTKPD7tOO7BaXLMsiTyFmoDBUlrAXk=;
        b=DmLrCvOgHKwJAy2vUSfewvvX0p68Rp/Z8fJdXTA6wz47DazuruFt/7ClQZBFEKjJ0o
         I+mZdgtqlEcaX4qOTE07F52mE0QIK5ijHS0R/g+ZH/gYHUu8Ni1SgVbOmvIA/DYqAzw9
         jzLr81ybnnPfojcPhdkO3sfeS9sLK8pW6RdVj7tUbV8FIvJbcRZHa+1Dxuf78KoxEUpd
         +u0lDQzudZs5weQfDha5BPliqJ05VcqDt/daf49+Q/fFyxCFv8e6oLnVk8JZuG2vALAP
         R2wFl/5n9r6Cwv4fHHBKZBfVjWYPkoz0DbcvnH5toEsI2AN7n56LANyXpVN9fCvOEA6i
         s6Og==
X-Gm-Message-State: ACrzQf1uOoCfPDAkof2Uga5S//iesUow6Pany17Vlp2SI+rVtN6DY35r
	55yLVCdtVYKiXm8bEKcyJpDWoRRExUgcXbh64rI=
X-Google-Smtp-Source: 
 AMsMyM7qYt7yIWRVuEQ70ZhrjBWmF//nkB72DE8b9BPwXKXhpDm7kB/5F2sgRU2u5LrPSZykpzLZuGUOcZRYyApEUm0=
X-Received: by 2002:a05:6512:950:b0:497:c41e:3d0c with SMTP id
 u16-20020a056512095000b00497c41e3d0cmr10648921lft.673.1663761448619; Wed, 21
 Sep 2022 04:57:28 -0700 (PDT)
MIME-Version: 1.0
References: 
 <PH0PR84MB1835D4BD7B71CB2ED806C2CEC7489@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
 <PH0PR84MB183571245531C6D271BD5A90C74D9@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
 <CANNYZj-rLXUAXn_BNYCM8bjeeWVCWU3YYFvnr5bagw7e0V8Akw@mail.gmail.com>
 <PH0PR84MB1835BFBD2F24974F9B69E9E3C74D9@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
 <CANNYZj-0ewbydhAYAw6u0JgnKcBEJTSgZ+QzTxnwD2Lmh9vDgA@mail.gmail.com>
 <P5UGIR.ETKUECS9HZXY1@t-online.de>
 <PH0PR84MB1835BCF1ACDC3CAC1357FECCC74D9@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
 <40WGIR.ECG3N5TIIYMJ1@t-online.de>
 <PH0PR84MB183594E043D2D4644D204710C74C9@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
 <CANNYZj8ZmE4_KY41Xe90YSFSm-t3MPVQjDH+gTw8TJBFgTjoWw@mail.gmail.com>
 <PH0PR84MB1835BEBC6B143383119B2EA7C74C9@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
 <CANNYZj-DASeVZAJKe5SURTNec_uth5CofkyOu6ytn9rv2dc76g@mail.gmail.com>
 <PH0PR84MB1835ADAA61579A359EE70E46C74C9@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
 <CANNYZj9z+0TX5WpyKSYBEM40HASYHykDHktVENsTfDnUTvyrug@mail.gmail.com>
 <PH0PR84MB183510DD06DC37C976C8ABFEC74F9@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
In-Reply-To: 
 <PH0PR84MB183510DD06DC37C976C8ABFEC74F9@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Wed, 21 Sep 2022 13:57:17 +0200
Message-ID: 
 <CANNYZj_ESNarHT2TjhUuoU97XbdeQcBGg-s6ki_sRusWcDbOcA@mail.gmail.com>
Subject: Re: [yocto] Adding Vulkan to core-image-weston
To: PHIL <heideggm@hotmail.com>
Cc: Markus Volk <f_l_k@t-online.de>,
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 21 Sep 2022 11:57:31 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58115

You need to go to mesa's build directlory and inspect what is getting
built, with which options, and how it is installed and packaged. All
the needed bits are there, but it does take a bit of 'yocto skill' to
find your way around there. Start by looking at temp/log.do_configure
(and then do_compile and do_install).

Alex

On Wed, 21 Sept 2022 at 13:38, PHIL <heideggm@hotmail.com> wrote:
>
> If I read the mesa-vulkan-drivers recipe right it should install libvulka=
n_*.so but it didnt I had to use vulkan-loader. Any idea in how to debug th=
at?
>
> Am 20. September 2022 15:26:45 MESZ schrieb Alexander Kanavin <alex.kanav=
in@gmail.com>:
>>
>> What often works is running it under strace - you might be able to see t=
he one key syscall that causes the failure. Otherwise you might have to go =
through the heavier gdb step through.
>>
>> Alex
>>
>> On Tue 20. Sep 2022 at 10.25, PHIL <heideggm@hotmail.com> wrote:
>>>
>>> Ok it seems to use Software now given how slow weston-simple-egl has be=
come. But vulkaninfo still fails with ERROR_INCOMPATIBLE_DRIVER.
>>> --
>>> Diese Nachricht wurde von meinem Android-Ger=C3=A4t mit K-9 Mail gesend=
et.
>
> --
> Diese Nachricht wurde von meinem Android-Ger=C3=A4t mit K-9 Mail gesendet=
.

