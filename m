Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 43BB2C433F5
	for <webhook@archiver.kernel.org>; Tue,  5 Oct 2021 21:45:11 +0000 (UTC)
Received: from mail-qt1-f172.google.com (mail-qt1-f172.google.com
 [209.85.160.172])
 by mx.groups.io with SMTP id smtpd.web12.3396.1633470309962500795
 for <yocto@lists.yoctoproject.org>;
 Tue, 05 Oct 2021 14:45:10 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=VwQdmiCk;
 spf=pass (domain: gmail.com, ip: 209.85.160.172,
 mailfrom: raj.khem@gmail.com)
Received: by mail-qt1-f172.google.com with SMTP id m26so606247qtn.1
        for <yocto@lists.yoctoproject.org>;
 Tue, 05 Oct 2021 14:45:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=jiXO4Bnzy96PKSU0xHhQdSLvmNe2emMsn7ow7AUNg3M=;
        b=VwQdmiCkOoLgCu4GjeUkIozAhuoerOBY8Ah6EGh7uOy2k3gVmXO9FMJB0wgTT05vsJ
         rWOzCoG5+br+Ax/YRi7AWvLPyvB8ic5WG8tTtBv343GWq0geIwP9QohsgVEfunMkZBPL
         ANFqdXeyhEGgoIvurUilThnXNh6S/DnvpdJh8VMk7gkZpR1+eqfAu7OKW0gNOIFZMDdn
         HfBwLnIitbzZvhb0h6fa+/WUepBNQZRzaeOaCAqhQnDVxpWsZbPg5q+IZWr7HZs87aTi
         VO7HJxvZ5TgbTkMcGSNfkD+EUs+gC6rKBa+y4BrNGL8KQii3UXRcLfylN38+dvHnC1b0
         5WuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=jiXO4Bnzy96PKSU0xHhQdSLvmNe2emMsn7ow7AUNg3M=;
        b=ZQ9T3aKyAtjhuWLJDTOhuYx4TmJWLtfYWLvqRi9Z7I1FoUAhH6K6y0IuvSfoDFEeI2
         gr1J8VSmUW0ncH6nRbk7hgjGTG9DqGWYRA6+g1ngQws0p1GnK3bMK0qVa0xzSWN6hS9q
         8T4UZ1iDdvZeOMK0CjVuqzgyVZEdMcoqH7NuE6bWskf4n7s8x4FYWWiVRKk8dezsMv7C
         nuoZWWYsyoKfNtrzNCO5XeursmITFrLctQEhNwqgb82DMo/y0E6mE32lauIwsxIj9kll
         yDKmJnR0gsWcl+zF3fqsA5T0VxW7ogIsTZfwKPW71qVg5DooOu3kWbhYgvyJ3rjMtj0d
         mWqw==
X-Gm-Message-State: AOAM530EPEAUAjhdSvbbCjy6f1ZVg8sZ7Aaxy5x6S8cP0B04CytpINWO
	LWgE/AmjhT/O3IDtfkKVbjnHm9jCgNCyjz6LMjjFayE6umw=
X-Google-Smtp-Source: 
 ABdhPJwrAnMeUdRrfmCwyYsUkbdV2VTcQevM35MmDvXH2Zfoq7clacbV63LcI2aVyRUVkseSUZtdUenGCThOPpSC5BM=
X-Received: by 2002:a05:622a:316:: with SMTP id
 q22mr22408612qtw.225.1633470309059;
 Tue, 05 Oct 2021 14:45:09 -0700 (PDT)
MIME-Version: 1.0
References: <NG6b.1633467561448539724.rwQW@lists.yoctoproject.org>
In-Reply-To: <NG6b.1633467561448539724.rwQW@lists.yoctoproject.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 5 Oct 2021 14:44:43 -0700
Message-ID: 
 <CAMKF1soXKnMsmMjW5uM1_+j3L8gOvX0AiND8mD8pm_YuV3fkAQ@mail.gmail.com>
Subject: Re: [yocto] Getting absolute paths in yocto generated native binary
 #bitbake #native #toolchain #sdk
To: Jean-Pierre Doyon <jpdoyon@newtrax.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 05 Oct 2021 21:45:11 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/54973

On Tue, Oct 5, 2021 at 1:59 PM Jean-Pierre Doyon <jpdoyon@newtrax.com> wrot=
e:
>
> I'm attempting to create a USB first boot tarball for our custom iMX6 boa=
rd that would contain the imx-usb-loader executable, config files and u-boo=
t/SPL files. The goal being to deploy that to the production machine to pro=
gram the empty boards right after being assembled.
>
> While I had plenty of hurdles figuring out how to do this (I'm still pret=
ty newbie with Yocyo), I managed to get everything just the way I wanted it=
. But when I get the tarball to the production machine, which runs the exac=
t same Ubuntu 18.04 LTS Linux as the build machine, the imx_usb tool won't =
run. The reason being that it's missing some library. Running LDD on the ex=
ecutable turns up this:
>
> =E2=94=94=E2=94=80$> ldd usr/bin/imx_usb
>     linux-vdso.so.1 =3D>  (0x00007ffd7031d000)
>     libusb-1.0.so.0 =3D> /lib/x86_64-linux-gnu/libusb-1.0.so.0 (0x00007f9=
86a47e000)
>     libc.so.6 =3D> /lib/x86_64-linux-gnu/libc.so.6 (0x00007f986a0b4000)
>     libudev.so.1 =3D> /lib/x86_64-linux-gnu/libudev.so.1 (0x00007f986a86c=
000)
>     libpthread.so.0 =3D> /lib/x86_64-linux-gnu/libpthread.so.0 (0x00007f9=
869e97000)
>     /home/jpdoyon/newtrax-layersetup-dunfell/build/tmp/sysroots-uninative=
/x86_64-linux/lib/ld-linux-x86-64.so.2 =3D> /lib64/ld-linux-x86-64.so.2 (0x=
00007f986a696000)
>     librt.so.1 =3D> /lib/x86_64-linux-gnu/librt.so.1 (0x00007f9869c8f000)
>
> Why is the ld-linux-x86-64.so.2 using an absolute path while all the othe=
r libraries aren't?
>
> If I install the library in the location above, then the executable start=
s working... So how do I make sure Yocto doesn't do this?
>

yocto provides a layer to abstract native binaries on top of build
host and thats what you are seeing. Its as designed.

>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#54970): https://lists.yoctoproject.org/g/yocto/messag=
e/54970
> Mute This Topic: https://lists.yoctoproject.org/mt/86104726/1997914
> Mute #toolchain:https://lists.yoctoproject.org/g/yocto/mutehashtag/toolch=
ain
> Mute #sdk:https://lists.yoctoproject.org/g/yocto/mutehashtag/sdk
> Mute #bitbake:https://lists.yoctoproject.org/g/yocto/mutehashtag/bitbake
> Mute #native:https://lists.yoctoproject.org/g/yocto/mutehashtag/native
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail=
.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

