Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7F83C02183
	for <webhook@archiver.kernel.org>; Fri, 17 Jan 2025 01:45:35 +0000 (UTC)
Received: from mail-oa1-f46.google.com (mail-oa1-f46.google.com [209.85.160.46])
 by mx.groups.io with SMTP id smtpd.web10.1980.1737078334579051936
 for <yocto@lists.yoctoproject.org>;
 Thu, 16 Jan 2025 17:45:34 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=B1Dul16a;
 spf=pass (domain: gmail.com, ip: 209.85.160.46, mailfrom: raj.khem@gmail.com)
Received: by mail-oa1-f46.google.com with SMTP id 586e51a60fabf-29f88004a92so947616fac.1
        for <yocto@lists.yoctoproject.org>; Thu, 16 Jan 2025 17:45:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1737078333; x=1737683133; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7EqEjWZfcX5il8JzLYnxK+hVDGxGpkORiuGE+wU9B8s=;
        b=B1Dul16aPQZ9/HfFI5VmWaX9uAtZEcqRhY4nwbRZljgV03xl/ljklc0NYORiJ0xR2P
         kn3B3o/4LCyQatwKLguIQxnrNX/fg7F8a2quHfZyv6zdIMzPvLAZGcMzT+Ygm1q1ehi3
         gcJwU5kt9z6fwfqqQsahJhqwi/u5ahT0DiWXmUoeMxVZcgGmxATjiY+lSL2grdR2mOas
         kjspXIPZbrbQPiY6l7cP1xlw/f9Dt93N7YrSs8SsDDamA+aICJRON5TiSqbyJO8EZI0s
         ncjoBViBrGsW/vcCbzU5y9xBoeHftM3AXTqZx6CNsJ5rDBWpmgMJBTym0hRVg8OQeWnd
         ywLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737078333; x=1737683133;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7EqEjWZfcX5il8JzLYnxK+hVDGxGpkORiuGE+wU9B8s=;
        b=HeYa4bWgifejRfzxgnMfHZNr3aE/lKnAsxt+/30jRiF2T08hHASgYVmK0D/CrAxgy5
         iaBZe5y3O4v5bLZb0wykJlfBn1OLfsSu8Vr/uFlJNhtGxOUYlxEEOn5Dygl7ILM7uTQ8
         FeEu2jPzENZUBfeFvA4ZfRw+tfe8i6/J21reOYbxC7dbfP2XgK0kX3Ly8xK5cFdzM60K
         ypXN52c/hZ0NvqXRk1EAwZmUjNMlUOkV2JHpMBvvtVJD1coS0KVtC6docmstNd7CDDzR
         MrdNVgCJ0WOwSuPpFqRNkAhSDs2M8rjHt3vNqu7Sqqax932ej01ARQv+39bG6oyZwukO
         DGLA==
X-Gm-Message-State: AOJu0YwTbTyortYuPWBX8lFEerfez/2pXmwjW308a+1UNj7El9B99ax9
	YoTMyC7GV6KXf4ah6yLmxe+mVqC8QfdthM7RYRhn2aSrOzyR2EKLQrGD6BUlUC0bbFur6WbsStr
	+LR2Yg4nQaUZjXn2394zk7pGTKwhKdcoFopA=
X-Gm-Gg: ASbGnctcRKiVSH10zdKvXKdGti0R2fLSPi+v1zUqRUHSUcM/Sbve3+76ryfvgE5YvkC
	RL5CYsty5t6pM6/6qC05yn0Ox6b3zVKc5IKsLmdPTLP1LIr1zHyWO
X-Google-Smtp-Source: AGHT+IEhu2KGqkztvNQ0MvRJ2BqYFlYX9LwHTMJNVxBjd4bFllyatXs3RVw+eg3L9L4jyhrGzcj384cZ9WfrSuSem2Y=
X-Received: by 2002:a05:6870:910b:b0:296:e366:28ea with SMTP id
 586e51a60fabf-2b1c0b5ed45mr665604fac.33.1737078333552; Thu, 16 Jan 2025
 17:45:33 -0800 (PST)
MIME-Version: 1.0
References: <qFS7.1737056315558355410.fRU6@lists.yoctoproject.org>
In-Reply-To: <qFS7.1737056315558355410.fRU6@lists.yoctoproject.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 16 Jan 2025 17:45:07 -0800
X-Gm-Features: AbW1kvYI7YcQETNDdtoMqlwk7HoAvO-A9h7JatKrWeXSB6yggya85zJn2vOeRm4
Message-ID: <CAMKF1sp7WcEfgHLq8whwZCbJGDT6_YFf5Z3we=AL7f8NFHzJ+w@mail.gmail.com>
Subject: Re: [yocto] Script error when using EXTRA_IMAGECMD::append
To: yocto@lists.yoctoproject.org, jason.m.bills@linux.intel.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 17 Jan 2025 01:45:35 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64570

On Thu, Jan 16, 2025 at 11:38=E2=80=AFAM Bills, Jason M via
lists.yoctoproject.org
<jason.m.bills=3Dlinux.intel.com@lists.yoctoproject.org> wrote:
>
> Hello,
>
> I recently pulled down this change that fixes an issue with EXTRA_IMAGECM=
D support for squashfs-xz: https://github.com/yoctoproject/poky/commit/70a8=
57b8f3fd3e9b95b903e8313d0014a6ff8c96.
>

Looking at this commit, it's using the 'local' keyword which is a bash
extension and  I wonder if that
is right, since we support posix compliant shell syntax for executing
shell tasks.

what is your defautl shell, is it bash or dash ?

> After that change, I now get a script error when running oe_mksquashfs().
>
> This is the append I use:
>     EXTRA_IMAGECMD:squashfs-xz:append =3D "-processors 64 -b 262144 -Xdic=
t-size 100% -Xbcj arm"
>
> This is the error I get:
>     | DEBUG: Executing shell function do_image_squashfs_xz
>     | /home/jmbills/upstream-sync/openbmc-openbmc/build/tmp/work/intel_as=
t2600-openbmc-linux-gnueabi/intel-platforms/1.0/temp/run.do_image_squashfs_=
xz.2945674: 157: local: 64: bad variable name
>     | WARNING: exit code 2 from a shell command.
>
> The issue is fixed if I change this line:
>     local extra_imagecmd=3D"$@"
> to this:
>     local extra_imagecmd=3D"$*"
>
> If that change looks correct, I can submit it as a patch, if that would b=
e helpful.
>

since "$*" Combines all arguments into a single string, separated by
IFS compared to
"$@" which keeps individual ariguments, it may result in same
behaviour since we are not
looping over these argument etc.

what happens if you use single quotes around $@

> Thanks for your help,
> -Jason
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#64569): https://lists.yoctoproject.org/g/yocto/messag=
e/64569
> Mute This Topic: https://lists.yoctoproject.org/mt/110653777/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail=
.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

