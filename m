Received: from exchange.sewerin.com (exchange.sewerin.com [92.39.20.236])
 by mx.groups.io with SMTP id smtpd.web08.5373.1605961143844428038
 for <yocto@lists.yoctoproject.org>;
 Sat, 21 Nov 2020 04:19:04 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@lists.yoctoproject.org header.s=20140610 header.b=wgJ4VJPp;
 spf=softfail (domain: lists.yoctoproject.org, ip: 92.39.20.236, mailfrom: yocto@lists.yoctoproject.org)
Received: from Pickup by Exchange.sewerin.de with Microsoft SMTP Server id
 15.0.1395.4; Fri, 20 Nov 2020 08:35:22 +0000
X-Sender: bounce+53643+51493+3618059+6691491@lists.yoctoproject.org
X-Receiver: Bastian.Ruppert@sewerin.com
x-endofinjectedxheaders: 5903
X-Received: by 127.0.0.2 with SMTP id erVHYY3619394xDvrzblWSnr; Fri, 20 Nov 2020 00:33:34 -0800
X-Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
 by mx.groups.io with SMTP id smtpd.web10.22148.1605857612489835312
 for <yocto@lists.yoctoproject.org>;
 Thu, 19 Nov 2020 23:33:33 -0800
X-Received: by mail-lf1-f43.google.com with SMTP id l11so12125850lfg.0
        for <yocto@lists.yoctoproject.org>; Thu, 19 Nov 2020 23:33:32 -0800 (PST)
X-Gm-Message-State: fmVlIIQ4D8hIjjYxjAaTQwxGx3618059AA=
X-Google-Smtp-Source: ABdhPJzIyWNyzChP2f/C6qCQbMlhbm0fC/7Ar8ETR0ro3fbNUrMfSGLMUSVQx2/I87IocNw+FRUuSOVGVz8Rv2es8uU=
X-Received: by 2002:a19:bce:: with SMTP id 197mr8389550lfl.468.1605857610358;
 Thu, 19 Nov 2020 23:33:30 -0800 (PST)
MIME-Version: 1.0
References: <CAJCbrz7=qAmswe-sumk=4E0x_KyFPdRG9UouvgfxwJzyMte=sw@mail.gmail.com>
 <CAMKF1so796jC3kifn8KzA_gXi61fL4MpCbTDHuHr=yrJGk=ghQ@mail.gmail.com>
In-Reply-To: <CAMKF1so796jC3kifn8KzA_gXi61fL4MpCbTDHuHr=yrJGk=ghQ@mail.gmail.com>
From: "Josef Holzmayr" <jester@theyoctojester.info>
Date: Fri, 20 Nov 2020 08:33:01 +0100
X-OldMsgId: <CAEt6Nwr7j9vwthOXZ6rUUEjyMUh71ySRO5vwb=t3qoSrffTc8Q@mail.gmail.com>
Subject: Re: [yocto] yocto recipt from host ide
To: Khem Raj <raj.khem@gmail.com>
Cc: Sergey Ivanov <icegood1980@gmail.com>, 
	Yocto-mailing-list <yocto@lists.yoctoproject.org>
Precedence: Bulk
List-Unsubscribe: <https://lists.yoctoproject.org/g/yocto/unsub>
Sender: <yocto@lists.yoctoproject.org>
List-Id: <yocto.lists.yoctoproject.org>
Mailing-List: list yocto@lists.yoctoproject.org; contact yocto+owner@lists.yoctoproject.org
List-Post: <mailto:yocto@lists.yoctoproject.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=lists.yoctoproject.org; q=dns/txt; s=20140610; t=1605861214;
 bh=xEK+8q/Kc3nj2QR/1c5wG+ErtneV49It/O/KWTfp/qI=;
 h=Cc:Content-Type:Date:From:Subject:To;
 b=wgJ4VJPpoHqDLouQUEczFgGSfjutTz3fDyvE6q5kysge9SbLv/TktrzMyNxPPrtyGTD
 X5UTSYQWo5kIyCpsNfRt8AkruzrPqp/F8fyjrrRiXPrEoCQ0ZhFHmLej7ExyBdnPObQ3m
 tmSi/FwE4sDB8X9fC9QqFO+lYGPXwfM5g24=
Return-Path: bounce+53643+51493+3618059+6691491@lists.yoctoproject.org
X-GFI-SMTP-Submission: 1
X-GFI-SMTP-HelloDomain: web01.groups.io
X-GFI-SMTP-RemoteIP: 66.175.222.12
Received-SPF: Pass (Exchange.sewerin.de: domain of
 yocto@lists.yoctoproject.org designates 66.175.222.12 as permitted sender)
 receiver=Exchange.sewerin.de; client-ip=66.175.222.12; helo=web01.groups.io;
Message-ID: <bca55c81626742d3b8b2696b1f9335e2@Exchange.sewerin.de>
Content-Type: multipart/mixed; boundary="qFwFAU1Vk6IRCdpL6Kgw"

--qFwFAU1Vk6IRCdpL6Kgw
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




--qFwFAU1Vk6IRCdpL6Kgw--
