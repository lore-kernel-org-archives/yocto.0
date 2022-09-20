Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 351F7ECAAD8
	for <webhook@archiver.kernel.org>; Tue, 20 Sep 2022 13:27:08 +0000 (UTC)
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com
 [209.85.167.48])
 by mx.groups.io with SMTP id smtpd.web12.11879.1663680418655276207
 for <yocto@lists.yoctoproject.org>;
 Tue, 20 Sep 2022 06:26:59 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=NW37rP2F;
 spf=pass (domain: gmail.com, ip: 209.85.167.48,
 mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f48.google.com with SMTP id u18so3766171lfo.8
        for <yocto@lists.yoctoproject.org>;
 Tue, 20 Sep 2022 06:26:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=+sj9Oas0cX3M25YLIg8hYzVyW8B0tAeQWNdCkYyNZkY=;
        b=NW37rP2F1SfCdskrSJHh4av+F8OpQcsskAQTdiqfqozD+sr7HN2gj3LZDhC2pQyPKr
         mSMTOw2JnWLmXpxvOh6cEWNqQgUvr9scc9QIdxXVYrmMFNK3wTcb673qlgUccdw1XsIy
         0O1/3qh7AVXTVmIiro1oKTaWzjHsQ7hXjnme2hvuJzxnwwT5+wqnUAipXono7VJiXrD9
         kMc45aHh4TgKM0CRZwFqpxKtP3G19VaD93gImtSEFwji4e1n2hz93/kV+6A+1nTk663O
         TlEmQcQkGtI5z1rZpUNMis2313io92rQlrVH+Gv5DnXVbYXHT48sPzaOAFthKOKdELtc
         vkfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=+sj9Oas0cX3M25YLIg8hYzVyW8B0tAeQWNdCkYyNZkY=;
        b=3QHiRKnEzMPQfikUTiRfWQxWp3WrgVNrM8fB/C2JvMnT0It5SO7618AYGNJ2xiT5jW
         2GYBTzxlnKYmp8zOrbMa5IiGlimxIIHMo4cIC5x8pXF+dg/DMuTWrO91YlG409ncmSYO
         Q4KqJgtd7PqsI0/bqQb9MU1fZrPnGjWdovA9LyDlBRVk59DQGsRoikcDG9z/F95Jjh/u
         JhULDsERkp8eU46GlIC2Fk82JDHp++oBBeEOzRfOE+DBh60u5UiiXouEreLyGSHPWDyM
         GUEuaPxChp3X+R/yRANU0gR+/Hcvv/13355K1p/rfI9ZgV4dXh6Ki5qZvKSYY56OeqSZ
         Bjvw==
X-Gm-Message-State: ACrzQf3pZ/XQb4BTsMAS1g3CuFnd3v2YMuvUkAs1NGj0ecOTEWx/y6pY
	wLMQoL4/UkCJbzLSVU4gJcnaf3oX6pk/r3rF1Hc=
X-Google-Smtp-Source: 
 AMsMyM4fnn5OG0q5Vggliw15SyiGxbFrJ3HoP+rL/ysLwPVC5px4IL+CmGbiAfR3b0gKpKFZ4/dDSFdnacbbS/y/A7g=
X-Received: by 2002:a05:6512:3091:b0:49a:d800:2828 with SMTP id
 z17-20020a056512309100b0049ad8002828mr8443783lfd.534.1663680416664; Tue, 20
 Sep 2022 06:26:56 -0700 (PDT)
MIME-Version: 1.0
References: 
 <PH0PR84MB1835D4BD7B71CB2ED806C2CEC7489@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
 <PH0PR84MB1835788AFD16FEB8E4A15790C74D9@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
 <CANNYZj8ANJ_EnvBgi+mZH52kr5rxyhBbBWEDoaOFPR9MDLDgZg@mail.gmail.com>
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
In-Reply-To: 
 <PH0PR84MB1835ADAA61579A359EE70E46C74C9@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Tue, 20 Sep 2022 14:26:45 +0100
Message-ID: 
 <CANNYZj9z+0TX5WpyKSYBEM40HASYHykDHktVENsTfDnUTvyrug@mail.gmail.com>
Subject: Re: [yocto] Adding Vulkan to core-image-weston
To: PHIL <heideggm@hotmail.com>
Cc: Markus Volk <f_l_k@t-online.de>,
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000004152d205e91bc85c"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 20 Sep 2022 13:27:08 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58093

--0000000000004152d205e91bc85c
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

What often works is running it under strace - you might be able to see the
one key syscall that causes the failure. Otherwise you might have to go
through the heavier gdb step through.

Alex

On Tue 20. Sep 2022 at 10.25, PHIL <heideggm@hotmail.com> wrote:

> Ok it seems to use Software now given how slow weston-simple-egl has
> become. But vulkaninfo still fails with ERROR_INCOMPATIBLE_DRIVER.
> --
> Diese Nachricht wurde von meinem Android-Ger=C3=A4t mit K-9 Mail gesendet=
.
>

--0000000000004152d205e91bc85c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">What often works is running it under strace - you might b=
e able to see the one key syscall that causes the failure. Otherwise you mi=
ght have to go through the heavier gdb step through.</div><div dir=3D"auto"=
><br></div><div dir=3D"auto">Alex</div><div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Tue 20. Sep 2022 at 10.25, PHIL &l=
t;<a href=3D"mailto:heideggm@hotmail.com">heideggm@hotmail.com</a>&gt; wrot=
e:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0=
.8ex;border-left-width:1px;border-left-style:solid;padding-left:1ex;border-=
left-color:rgb(204,204,204)"><u></u>


<div>Ok it seems to use Software now given how slow weston-simple-egl has b=
ecome. But vulkaninfo still fails with ERROR_INCOMPATIBLE_DRIVER.</div><div=
><div style=3D"white-space:pre-wrap"><div>-- <br>Diese Nachricht wurde von =
meinem Android-Ger=C3=A4t mit K-9 Mail gesendet.</div></div></div></blockqu=
ote></div></div>

--0000000000004152d205e91bc85c--

