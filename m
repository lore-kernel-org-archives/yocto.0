Return-Path: <dusrad@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8DF3C433EF
	for <webhook@archiver.kernel.org>; Fri, 11 Feb 2022 07:38:44 +0000 (UTC)
Received: from mail-io1-f48.google.com (mail-io1-f48.google.com
 [209.85.166.48])
 by mx.groups.io with SMTP id smtpd.web08.4582.1644565123340670775
 for <yocto@lists.yoctoproject.org>;
 Thu, 10 Feb 2022 23:38:43 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=bxjQGSue;
 spf=pass (domain: gmail.com, ip: 209.85.166.48, mailfrom: dusrad@gmail.com)
Received: by mail-io1-f48.google.com with SMTP id h7so10370723iof.3
        for <yocto@lists.yoctoproject.org>;
 Thu, 10 Feb 2022 23:38:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=BExzFchDZqO6gpqjzOUtmpJtzVP68q4K2XvDrteq6GY=;
        b=bxjQGSuez4Hcq2zQdeG4G4JwuMVeI5Ym4Ile/5YNdoVTP5YIpn0bq9Wmh5GoPu+0oz
         tBrkSuyzsN7MW/JjGkCIVXeDhzAUZbvBiMfdPWX1VUW3g66Ls6tGcSNbwbe1+/rIG15C
         O6ApkyjybaEYWEiESQY+/y9YY7rGfbl19XWW7RC2lXrH+wZLIrxVQirWdcADRjfWs1Os
         uCFzu/bqVPwwttgcpuCb8Eza6b/hlopBAbAzxMoNsnPwIK1EFOAuFr9NhO3r2IwQVd9o
         qCnbIjSYa4dQQjaGefZGG0gwSbsFLYmqYodp1WF624FwB2H8JhvtdgQAWNzZmtw0GqsN
         L8Qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=BExzFchDZqO6gpqjzOUtmpJtzVP68q4K2XvDrteq6GY=;
        b=q2qL11uEN+gXwnu1k6lE2oQG+SUvHRy3751Hp9ySdQxjD4N2FvmtYuDXE/Nj41e49k
         TUvx3B1eIlnpbtXTFPerQKheAfFXSRXYAj74foEeLM04qqB8AOLyWPlF6jiF+H3hyBxg
         mUTM29gcAZBxbSKdAoAPh0pQaK0EzT+JjvElaD/UmQWR4Dif7Mf3oNt0qzfuBbzM7Ahc
         C4Ye/ImnHF+x4ZIx+f9W7hlpIyajnlmwlyIfrzWALYD32VJwMQrfMLXbBOYElGB18/jq
         xtmBie0YYEcz1eZ7K9kNoLk/cTOeotzLUDzM9/1y7OB4Y0PNXb+k+2JK40oY1Hevl3z9
         qIaQ==
X-Gm-Message-State: AOAM532VKPUSz97DihhMqAjKM3FA/IOnF84llPoqYsvQS3LZKfcIImpZ
	SAbT9/f7NzJLgVR7y5FC7TXiPEqnrebD0ZuzdzE=
X-Google-Smtp-Source: 
 ABdhPJzWdEut6s4WqmqqPIPlzUwX2X2kI7ZbkRO21pyP6KolHtsgR3vG6Vvt6NhbEZbYVSseiyZyoazNE/80IC7kxpc=
X-Received: by 2002:a5d:9cc4:: with SMTP id w4mr225741iow.15.1644565122529;
 Thu, 10 Feb 2022 23:38:42 -0800 (PST)
MIME-Version: 1.0
References: 
 <CAFe1xewJGwZXTH+qhKDsZN9ecofbgQJKZfyT-5iHv=QFbjE8-A@mail.gmail.com>
 <f2175531-20b5-947b-b5e4-37fac33bffb7@gmail.com>
In-Reply-To: <f2175531-20b5-947b-b5e4-37fac33bffb7@gmail.com>
From: Dusan Radic <dusrad@gmail.com>
Date: Fri, 11 Feb 2022 08:38:32 +0100
Message-ID: 
 <CAFe1xewBch9fMtErXoWkUbL=LShahYgwUS=D06Ue+BzrZK0KYw@mail.gmail.com>
Subject: Re: [yocto] #yocto #zeus Problem with moving from rocko to zeus
To: Khem Raj <raj.khem@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 11 Feb 2022 07:38:44 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56154

Here is the error:

| .../kernel-source/include/linux/log2.h:22:1: warning: ignoring
attribute 'noreturn' because it conflicts with attribute 'const'
[-Wattributes]
|    22 | int ____ilog2_NaN(void);
|       | ^~~
| /tmp/ccA2wTxM.s: Assembler messages:
| /tmp/ccA2wTxM.s:3486: Error: .err encountered
| /tmp/ccA2wTxM.s:3546: Error: .err encountered
| .../kernel-source/scripts/Makefile.build:258: recipe for target
'fs/fat/dir.o' failed
| make[4]: *** [fs/fat/dir.o] Error 1
| make[4]: *** Waiting for unfinished jobs....
|   CC      fs/cifs/smb2maperror.o
| In file included from .../kernel-source/include/linux/kernel.h:11,

However, now that I have switched to linux-imx-4.14.98 I made
significant progress.
It looks like it's going to work, I'll keep you posted.

Best regards,
Dule

On Thu, Feb 10, 2022 at 6:20 PM Khem Raj <raj.khem@gmail.com> wrote:
>
>
>
> On 2/10/22 8:56 AM, Dusan Radic wrote:
> > Hello,
> >
> > I am trying to upgrade my distro from rocko to zeus.
> > After I fixed all the initial parsing and build problems I have
> > reached a point where the linux-imx doesn't build. Maybe I am
> > underestimating the task in front of me, but I have already seen it
> > done.
> >
> > The error looks like this:
> >
> > | .../kernel-source/Makefile:947: recipe for target 'fs' failed
> > | make[2]: *** [fs] Error 2
> > | Makefile:146: recipe for target 'sub-make' failed
> > | make[1]: *** [sub-make] Error 2
> > | Makefile:24: recipe for target '__sub-make' failed
> > | make: *** [__sub-make] Error 2
> > | WARNING: exit code 1 from a shell command.
> > |
> > ERROR: Task (.../meta-mylayer/recipes-kernel/linux/linux-imx_4.1.15.bb:do_compile)
> > failed with exit code '1'
> >
> > Is it possible that I am using the wrong linux-imx version? I have
> > tried a few but to no avail.
> >
>
> perhaps there is more specific compiler error in logs above that ?
>
> > Thanks in advance.
> >
> > Best regards,
> > Dule
> >
> >
> >
> > -=-=-=-=-=-=-=-=-=-=-=-
> > Links: You receive all messages sent to this group.
> > You automatically follow any topics you start or reply to.
> > View/Reply Online (#56149): https://lists.yoctoproject.org/g/yocto/message/56149
> > Mute This Topic: https://lists.yoctoproject.org/mt/89050046/1997914
> > Mute #yocto:https://lists.yoctoproject.org/g/yocto/mutehashtag/yocto
> > Mute #zeus:https://lists.yoctoproject.org/g/yocto/mutehashtag/zeus
> > Group Owner: yocto+owner@lists.yoctoproject.org
> > Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail.com]
> > -=-=-=-=-=-=-=-=-=-=-=-
> >

