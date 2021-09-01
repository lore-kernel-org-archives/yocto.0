Received: from mail-pf1-f176.google.com (mail-pf1-f176.google.com [209.85.210.176])
 by mx.groups.io with SMTP id smtpd.web10.7365.1630501031093850745
 for <yocto@lists.yoctoproject.org>;
 Wed, 01 Sep 2021 05:57:11 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=i83XByd2;
 spf=pass (domain: gmail.com, ip: 209.85.210.176, mailfrom: zoran.stojsavljevic@gmail.com)
Received: by mail-pf1-f176.google.com with SMTP id r13so1971231pff.7
        for <yocto@lists.yoctoproject.org>; Wed, 01 Sep 2021 05:57:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=EUc0unHv3mq13x16DIewc3+THsC6PM+CwwZo8HV+5GU=;
        b=i83XByd24NhvJ1msAcKl92D0CW7HCBGkFvTBLopvzD+XqRLas/9g+7ntdmMAaITg3H
         4v1uSxiuPYhXfzUbO/aKIR0HwGK18Yy+TOjvefksfQO6USs4QpROURUDdVAcX/U5Gf+D
         PC7B9o8e+Kua+t5yoMB2kDxPtSLodyeY6vAsAkv18fV5ub6skUFovfwclPlbqyUlsmQz
         fZq+gGPVLmNH3iRZ8cfWc+Iav4Sq36GbUf8mhT9t4RcRkIosbfO3Rllzk3WSwVW62Pjc
         Im484rl0UbH2PlaKXJOSXgT5b1wztXbc2gsvHQrg7lUQAQpDZKmHu4vM7Mt63Ky23S/r
         hN2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=EUc0unHv3mq13x16DIewc3+THsC6PM+CwwZo8HV+5GU=;
        b=EoWqxbATweUt5Sys5mZuZbkKnj6rwYifEmkCiRiF784i8gzuyVULiPcPEuNHX7LMIZ
         /csrWHTVnGLYp4oV4VY+Bj6kAQ9xLeS8+2XgxF6JNH7BpI5m2+C2ML2ND2pmlRpwihNv
         cFkVZ9IwSeCyi77vfoXNGwg61z6+vPsJ1zYzGAjWvFahhN6gyEvFR27H1hcYf8SkST0e
         xzMyTBwJYSjeWKJ8T70Cxn426x1fw+BkySrPdVxscypXZZqkxnKXy6IKZ0YxmeVNBcya
         +o2gR5AEUC/LPw9Dxw5sEp9nUrjJUG32a03nwe0lNGYDBnI6OZqQE1FjPjb3msikT8GB
         bRxg==
X-Gm-Message-State: AOAM533psbRO6sYwOOKHbyT2sw8/opACILloBkt1c19XyjT6sD8cvYYB
	z9/AFhTbc9YwbLcxONo7xDISaPWEZRs3rVnKpxc=
X-Google-Smtp-Source: ABdhPJzLF78J4Om+XBN0FOKjhax2Vg2ONXhHgnvqXD771hBNtE7/sF9KWHE2CruDTRLPdYWikg1LGUZBUURSwbMYGeA=
X-Received: by 2002:a63:e408:: with SMTP id a8mr31704287pgi.184.1630501030089;
 Wed, 01 Sep 2021 05:57:10 -0700 (PDT)
MIME-Version: 1.0
References: <AM0PR10MB310701696E98C78D98D5F3AE99CD9@AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM>
In-Reply-To: <AM0PR10MB310701696E98C78D98D5F3AE99CD9@AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM>
From: "Zoran" <zoran.stojsavljevic@gmail.com>
Date: Wed, 1 Sep 2021 14:56:58 +0200
Message-ID: <CAGAf8Lz6vXaEZXmE0maKLgZ-OK0ObdOoGc7g2LgG9mP0+ESQGw@mail.gmail.com>
Subject: Re: [yocto] gpsd [version 3.23; master branch]: Is it possible to include / enable ubxtool?
To: Matthias Klein <matthias.klein@optimeas.de>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

To add every package (into poky) by every personal wish of any Yocto
user, or not to add any package without exclusion, that is the
question?

Why not to do addition of the proprietary layer for missing package or
group of missing by the same/similar context packages???

Zee
_______

On Wed, Sep 1, 2021 at 12:33 PM Matthias Klein
<matthias.klein@optimeas.de> wrote:
>
> Hello,
>
> is it somehow possible to add the ubxtool in the gpsd-utils package?
>
> (I use the current master branch)
>
> Best regards,
> Matthias
>
>
> 
>
