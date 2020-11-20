Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
 by mx.groups.io with SMTP id smtpd.web10.22148.1605857612489835312
 for <yocto@lists.yoctoproject.org>;
 Thu, 19 Nov 2020 23:33:33 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@theyoctojester-info.20150623.gappssmtp.com header.s=20150623 header.b=HcrUceTd;
 spf=none, err=permanent DNS error (domain: theyoctojester.info, ip: 209.85.167.43, mailfrom: jester@theyoctojester.info)
Received: by mail-lf1-f43.google.com with SMTP id l11so12125850lfg.0
        for <yocto@lists.yoctoproject.org>; Thu, 19 Nov 2020 23:33:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=theyoctojester-info.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=43v2lRMNYND0Odrhuip9KuykEgPnSA9FeeNzHoIqfeM=;
        b=HcrUceTdx08Xziic5w3hDu3HOs1MC0xkpm6nNRpoU+gtE6llq1+dsk+RBfP4yS+m2y
         hHCW/UvtKXMNf/sFhcxB1KOeAxGNkRvQJQhiGJ64YcCmqZhmZsKTkZBDfWCdPqEjtZeQ
         5shWN+5gfGCXj/Dme9NLflxHwAlFRqHlJH/H0wvWvUlpVkUeM+XUfIbBmVWfaWWfPX4N
         G1c6J5bOwyBrjMOW+mqkn+1JzqDbIlYnpmKmmPQHpPNOHhxzH47InVTJa/inns3yTLtI
         UIv5IfLwH+rskMRfDkEkIAIHqgQ4pDTQXziaScK23C81+OzHdt/cbWR+uhIxnkMNL0Vk
         upjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=43v2lRMNYND0Odrhuip9KuykEgPnSA9FeeNzHoIqfeM=;
        b=rIdK97Ib3fYDEYqtDZVuDXVJe2ewUmLfqUyMiPwWgT0Nr/T1dXpkijBwWeS31RasnF
         DDHi8kmJGOazeJ6gxRLNAWZYyzMO1IBR95e0X++vlU8TerKbfy/ocFJlTR4eItQoU1wm
         mqebKOsmCrEeHXB/BN6Phl9GDh6OFMOh+pyN7FC5UPwON3JRydtfIyu+/DDLnsTjmIm6
         D26tqEuprPZmufJLklZXOE4Yvbyd2RfLsKZ1e6X0RRyiCfYYLQmyjfZiw/8CfeMsNG+a
         61WyBQQqvhqcXY3eS6VlupxnwLhBNLmTGwmYRnG6Z8jbTLkpTi7ZEFaxMBhXilL/bkUh
         cKWA==
X-Gm-Message-State: AOAM533x6zAWTXZJZTxC58geBJKoOEqTwJg1m7U+oU9TRnk5UtD45lIJ
	bfVeixKKP0qWeg2DbeYwkNDy9dZoRbin7L1Z0Wskjw==
X-Google-Smtp-Source: ABdhPJzIyWNyzChP2f/C6qCQbMlhbm0fC/7Ar8ETR0ro3fbNUrMfSGLMUSVQx2/I87IocNw+FRUuSOVGVz8Rv2es8uU=
X-Received: by 2002:a19:bce:: with SMTP id 197mr8389550lfl.468.1605857610358;
 Thu, 19 Nov 2020 23:33:30 -0800 (PST)
MIME-Version: 1.0
References: <CAJCbrz7=qAmswe-sumk=4E0x_KyFPdRG9UouvgfxwJzyMte=sw@mail.gmail.com>
 <CAMKF1so796jC3kifn8KzA_gXi61fL4MpCbTDHuHr=yrJGk=ghQ@mail.gmail.com>
In-Reply-To: <CAMKF1so796jC3kifn8KzA_gXi61fL4MpCbTDHuHr=yrJGk=ghQ@mail.gmail.com>
From: "Josef Holzmayr" <jester@theyoctojester.info>
Date: Fri, 20 Nov 2020 08:33:01 +0100
Message-ID: <CAEt6Nwr7j9vwthOXZ6rUUEjyMUh71ySRO5vwb=t3qoSrffTc8Q@mail.gmail.com>
Subject: Re: [yocto] yocto recipt from host ide
To: Khem Raj <raj.khem@gmail.com>
Cc: Sergey Ivanov <icegood1980@gmail.com>, 
	Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

Am Fr., 20. Nov. 2020 um 02:47 Uhr schrieb Khem Raj <raj.khem@gmail.com>:
>
> On Thu, Nov 19, 2020 at 1:48 PM Sergey Ivanov <icegood1980@gmail.com> wrote:
> >
> > Hi there.
> > Could anyone share a good approach/documentation/etc on how to
> > properly configure and use sysroot and sdk for a specific cmake - based c++ receipt
> > to be able to build it from IDE (vscode, qtcreator) on linux host i.e.
> >
> > 1) ide's --sysroot will be taken from
> > yocto-root/build/tmp/work/aarch64-poky-linux/<my_recipe>1.0.0-r0/recipe-sysroot
> > 2) compilers and cmake (i believe) will be taken from
> > yocto-root/build/tmp/work/aarch64-poky-linux/<my_recipe>1.0.0-r0/recipe-sysroot-native
> > 3) no mix of includes from host will be taken into account during the compilation
> >
> > If none of ide above could do this stuff, then please recommend your one
> >
> > For this moment i don't want run/debug the application right from ide, i just want to have all symbols be correctly resolved from there.
> >
>
> does this help ?
> https://www.ics.com/blog/configuring-qt-creator-yocto-development

also, https://github.com/Wind-River/vscode-wrlinux/

>
> > --
> > Kind regards,
> > Sergey Ivanov
> >
> >
> >
>
> 
>
