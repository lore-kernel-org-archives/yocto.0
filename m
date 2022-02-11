Return-Path: <zoran.stojsavljevic@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 40D94C433EF
	for <webhook@archiver.kernel.org>; Fri, 11 Feb 2022 07:49:27 +0000 (UTC)
Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com
 [209.85.214.172])
 by mx.groups.io with SMTP id smtpd.web11.4606.1644565766307814749
 for <yocto@lists.yoctoproject.org>;
 Thu, 10 Feb 2022 23:49:26 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=KCzSreRf;
 spf=pass (domain: gmail.com, ip: 209.85.214.172,
 mailfrom: zoran.stojsavljevic@gmail.com)
Received: by mail-pl1-f172.google.com with SMTP id z17so4013665plb.9
        for <yocto@lists.yoctoproject.org>;
 Thu, 10 Feb 2022 23:49:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=knxOOk4Bigpm85SKFGJjiuSg/9EXStYW+j/FJTvwcPA=;
        b=KCzSreRf/XMolHc9hQPOdk7xKa3iVfMsKHfwpXliD3LZq/1Ykezi5MY1j7EZTmVNys
         CiOGHbbvjl1OEKFsfxFTqTFKdajwfKl+NbO2U41TkmgaIk7rjZg3TP4CDBhviUSidSQF
         jI8uPJu8VAH3eUp9z/dUOGVTGQt+VITCfN6/7dkWm38Erk1DZyYpJES5l7b73ouNHN37
         yQ6+rG2SlmD7tzA1dP2MgbBfRv04VcYUJD/ysR05UvPuYwaU2zu6xr0NA2Hj813sZZd1
         QYynnmrfh9DFh+HTzz5JYQS8tHXFmS/kdg96WfH1936tCr/ohl9akbIEST7IpUonbdyA
         RKug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=knxOOk4Bigpm85SKFGJjiuSg/9EXStYW+j/FJTvwcPA=;
        b=QFzSeT+aFYvaJsdR3Z6Uacfa/1VthROzrGeUfjxA+8TskmHCEMCNwI4RYmWyKxT4wX
         2lxhzL2TiR4a5l9XpUKLIAdWJCuD3NW1QcsXDzJkZeCzQPCOYKzxdP6A4WVSH+IoEliE
         2wIfuYynzqJ7CLhVg0bu9/fRBBrr96PGBgPpXBbbBL6LbaDBhyYuUjgZgdKv5V2QTeiw
         XkTYytGGrjxb1aSNKwAHtIMOGThznCQAWdEkB6c+zNmaAmJskrnL1HRKlm6wW5vjx2Hk
         5UrlKlbH2XS1ZOkswkNzQM9tdqffAmZkidp6MQhS9MKgXMwAgzuGKetMREQagSJoQRnD
         Kr1w==
X-Gm-Message-State: AOAM532clT7iw5bvQdAOdiZ4kswmNLsD43hINVHUKjPA1a4Zx96GMsxD
	TpVKe7WnYAfiELaSV8NANzrc1BDhum+3QsNZ+Ts=
X-Google-Smtp-Source: 
 ABdhPJx8bGBbQYL4daTHCtfKVIBno003YfEMgEJWmMleDeGCvm5nYRKZpolxdoWFX9WYkvN5Or8hEsuQO/y+dwvKITk=
X-Received: by 2002:a17:90b:1b0b:: with SMTP id
 nu11mr1386015pjb.112.1644565765556;
 Thu, 10 Feb 2022 23:49:25 -0800 (PST)
MIME-Version: 1.0
References: 
 <CAFe1xewJGwZXTH+qhKDsZN9ecofbgQJKZfyT-5iHv=QFbjE8-A@mail.gmail.com>
 <f2175531-20b5-947b-b5e4-37fac33bffb7@gmail.com>
 <CAFe1xewBch9fMtErXoWkUbL=LShahYgwUS=D06Ue+BzrZK0KYw@mail.gmail.com>
In-Reply-To: 
 <CAFe1xewBch9fMtErXoWkUbL=LShahYgwUS=D06Ue+BzrZK0KYw@mail.gmail.com>
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Fri, 11 Feb 2022 08:49:14 +0100
Message-ID: 
 <CAGAf8LytLJP2puMhTrHY0Xow2-U+Hv1VKZ=-keKgU0ZejGzbmg@mail.gmail.com>
Subject: Re: [yocto] #yocto #zeus Problem with moving from rocko to zeus
To: Dusan Radic <dusrad@gmail.com>
Cc: Khem Raj <raj.khem@gmail.com>,
 Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 11 Feb 2022 07:49:27 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56155

Dule, Dule, Dudule!

Slusaj i prati sta ti YOCTO velicine pricaju! I pokusaj sam da se
snadjes, jer te dobro navode! ;-)

Zee
_______

On Fri, Feb 11, 2022 at 8:38 AM Dusan Radic <dusrad@gmail.com> wrote:
>
> Here is the error:
>
> | .../kernel-source/include/linux/log2.h:22:1: warning: ignoring
> attribute 'noreturn' because it conflicts with attribute 'const'
> [-Wattributes]
> |    22 | int ____ilog2_NaN(void);
> |       | ^~~
> | /tmp/ccA2wTxM.s: Assembler messages:
> | /tmp/ccA2wTxM.s:3486: Error: .err encountered
> | /tmp/ccA2wTxM.s:3546: Error: .err encountered
> | .../kernel-source/scripts/Makefile.build:258: recipe for target
> 'fs/fat/dir.o' failed
> | make[4]: *** [fs/fat/dir.o] Error 1
> | make[4]: *** Waiting for unfinished jobs....
> |   CC      fs/cifs/smb2maperror.o
> | In file included from .../kernel-source/include/linux/kernel.h:11,
>
> However, now that I have switched to linux-imx-4.14.98 I made
> significant progress.
> It looks like it's going to work, I'll keep you posted.
>
> Best regards,
> Dule
>
> On Thu, Feb 10, 2022 at 6:20 PM Khem Raj <raj.khem@gmail.com> wrote:
> >
> >
> >
> > On 2/10/22 8:56 AM, Dusan Radic wrote:
> > > Hello,
> > >
> > > I am trying to upgrade my distro from rocko to zeus.
> > > After I fixed all the initial parsing and build problems I have
> > > reached a point where the linux-imx doesn't build. Maybe I am
> > > underestimating the task in front of me, but I have already seen it
> > > done.
> > >
> > > The error looks like this:
> > >
> > > | .../kernel-source/Makefile:947: recipe for target 'fs' failed
> > > | make[2]: *** [fs] Error 2
> > > | Makefile:146: recipe for target 'sub-make' failed
> > > | make[1]: *** [sub-make] Error 2
> > > | Makefile:24: recipe for target '__sub-make' failed
> > > | make: *** [__sub-make] Error 2
> > > | WARNING: exit code 1 from a shell command.
> > > |
> > > ERROR: Task (.../meta-mylayer/recipes-kernel/linux/linux-imx_4.1.15.bb:do_compile)
> > > failed with exit code '1'
> > >
> > > Is it possible that I am using the wrong linux-imx version? I have
> > > tried a few but to no avail.
> > >
> >
> > perhaps there is more specific compiler error in logs above that ?
> >
> > > Thanks in advance.
> > >
> > > Best regards,
> > > Dule
> > >
> > >
> > >
> > >
> > >
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#56154): https://lists.yoctoproject.org/g/yocto/message/56154
> Mute This Topic: https://lists.yoctoproject.org/mt/89050046/3618681
> Mute #yocto:https://lists.yoctoproject.org/g/yocto/mutehashtag/yocto
> Mute #zeus:https://lists.yoctoproject.org/g/yocto/mutehashtag/zeus
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [zoran.stojsavljevic@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

