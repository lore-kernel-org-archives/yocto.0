Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67BFEC38A04
	for <webhook@archiver.kernel.org>; Fri,  8 Apr 2022 17:09:36 +0000 (UTC)
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com
 [209.85.167.46])
 by mx.groups.io with SMTP id smtpd.web08.3813.1649409746946358749
 for <yocto@lists.yoctoproject.org>;
 Fri, 08 Apr 2022 02:22:27 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=F7FPsqoY;
 spf=pass (domain: gmail.com, ip: 209.85.167.46,
 mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f46.google.com with SMTP id bq30so1251590lfb.3
        for <yocto@lists.yoctoproject.org>;
 Fri, 08 Apr 2022 02:22:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=UjvFFqHODWxeBuqfSUPsbxaO4G2QinNhXP9uhDGP6fU=;
        b=F7FPsqoYms3CyrRGiqJIEc1j9h2Tc//0bt7iGXHMklGkJmRtjG2lOzp3BEB2VOUOzn
         DmScE8Ztc96x/bZPW/zxuhaiJO+sve+7iMEXORtCsvD1sc1PfA7D4tl9lvNdDW9i6YMQ
         nB0dlFr7xF+ILe+nHDfmcqkf+PPO8ciyRPTk1JQv3QaoM0P8OPUGH7nwJsumDhMIqIuS
         8f3SLg68PClxAuV8CVOLZVCXmG4UEsmaPP8m7U0jA3njIXVpjHGuxVCgWvk17v2HmXG3
         0IJNAmHG7E7e5V40iUrgOFaLq8L4bomeKl1UQRJwWgLxXFcfh6m2ZT/W0pvltq/m28Dp
         rK9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=UjvFFqHODWxeBuqfSUPsbxaO4G2QinNhXP9uhDGP6fU=;
        b=ujfe+LQUenzXV19fl1rJ7uODn7sMWpcbdDaMJ5TyVh2Vrgej2PcxyyRBZYE6f1J+1E
         e4nS//p67N843D3+WiPEFQMvg7wa/yxwjnqky6gGqyJzhTmk22lO8q6XHmaMEWNnk/dE
         ok+BwXeKeXXIj+hBSPjFzBZRpW/7I+xnF1eWRyzawjJZQLkibtvbXTu9zVMVZGXqgHgR
         PJVDuiEFWYeU8mdJU17sB6NmkOTX6IzPo8Jr4T/uwgwSEiy/icdhccHpRiDo9Iu/bJ+/
         /TT9OO33zLxcR59ah8/EH6mg/R6DM/bqmKxykdVnWhpxo7iCTQGvjE7XxjYCyuJJTXVS
         sMsg==
X-Gm-Message-State: AOAM5304o5vrRE9UlsrfhHn/c0g6cECY26FGiwsHCHZhAMLXogvWlK/0
	L7g1SEAO9d3MY6S6Y3QFol/hrbmlhluiefz7z5g=
X-Google-Smtp-Source: 
 ABdhPJx4CBEGFrRiLdfVMzbiUcR2aacJCzomVB2W9RbloeXhI1nbNofV8EyUAWwh7b3TlJ34f9Opgnw/cUlzOe33KS8=
X-Received: by 2002:a05:6512:2244:b0:44a:5fab:5ac4 with SMTP id
 i4-20020a056512224400b0044a5fab5ac4mr11663921lfu.665.1649409745099; Fri, 08
 Apr 2022 02:22:25 -0700 (PDT)
MIME-Version: 1.0
References: 
 <CAEhQi8=HC7K9XxcCx4e83=JKCG3q=tAb2=BZmfvSqpwt4EG97g@mail.gmail.com>
 <CAAnfSTvP+aHDxBSSSNVLejxhMPr9NJ4FuYLXDTmaPifBKmGL3w@mail.gmail.com>
 <CAEhQi8=Fem0HnTbhK7evENES4qpcC2-pbRicW52YrvwHbegj_Q@mail.gmail.com>
 <Yk/zLteq+VWQon7V@korppu>
In-Reply-To: <Yk/zLteq+VWQon7V@korppu>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Fri, 8 Apr 2022 11:22:13 +0200
Message-ID: 
 <CANNYZj-emTizDFCCHL51HDL5Crjsb-SHu7DTO3kxjhA6DLELKQ@mail.gmail.com>
Subject: Re: [yocto] [Question] How to handle GPLv3 packages?
To: Mikko Rapeli <mikko.rapeli@bmw.de>
Cc: =?UTF-8?B?TcOlbnMgWmlnaGVy?= <mans.zigher@gmail.com>,
	Ross Burton <ross@burtonini.com>,
 Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 08 Apr 2022 17:09:36 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56694

On Fri, 8 Apr 2022 at 10:32, Mikko Rapeli <mikko.rapeli@bmw.de> wrote:
> Qualcomm, I know that one :( As integrator for a product
> you must minimize the impact of the BSP SW delivery and thus allow only
> bootloader, kernel and low level libraries to be compiled using the
> BSP vendor delivery, e.g. their meta layers. I BBMASK away most of their
> high level SW changes, e.g. systemd and other odd patches which I don't need.

At Daimler, I put my foot down, and forced them to cleanly rewrite the
BSP into an actual BSP layer before we would set up official builds
with it. It took several months, but eventually we got there.

Alex

