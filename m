Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 447E7C48260
	for <webhook@archiver.kernel.org>; Thu,  8 Feb 2024 16:00:58 +0000 (UTC)
Received: from mail-ot1-f51.google.com (mail-ot1-f51.google.com [209.85.210.51])
 by mx.groups.io with SMTP id smtpd.web11.21178.1707408057897895916
 for <yocto@lists.yoctoproject.org>;
 Thu, 08 Feb 2024 08:00:58 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=kDxSK3P/;
 spf=pass (domain: gmail.com, ip: 209.85.210.51, mailfrom: raj.khem@gmail.com)
Received: by mail-ot1-f51.google.com with SMTP id 46e09a7af769-6e1226b30ffso1025524a34.0
        for <yocto@lists.yoctoproject.org>; Thu, 08 Feb 2024 08:00:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1707408057; x=1708012857; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WFIbuz/aDhv2J8LjNpvbPUWuCzoUhGWLy8dB0tn6BSo=;
        b=kDxSK3P/MBAxRIogLdgSPenfHEZTaZt6ZgWtkLMflvMh6VGa76fFN5cNbFYMbZijgg
         8LD4RV+WplMq7BqHs8FSR2oSG2x91U5ll8DigtDuFybwSv2QEfBIjSLZSgS015eXaNeN
         ls75hNOgOLoRidoCszc+UW/N1lGFordyAxrpsAnSIcvOBb4XBxqeR+pnGt2iJwL/aP3j
         3qo4BNQJMKfiL9mYPUAa+V7Y8atpEE+jIJVB0Hm7R+s/xZaCHreQ2I5TNRoCrnCpJvjL
         HG5NRtVWIzVTyQxtXhYxIXY63Fl1prktqEfVPO8e5132oVsiau21ERz34eaRSeHLV2ic
         4eUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707408057; x=1708012857;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WFIbuz/aDhv2J8LjNpvbPUWuCzoUhGWLy8dB0tn6BSo=;
        b=eEiF9P63S8IzChKKOC8V71JDl7NIgWSpQZFGevw9AjKhyw+10E5qcp0rYqG3bilT7z
         f9xj6oI7/+U7frN21fX2wiiGrhNIEq9YuHbvT72a/aP7+zGV+DJhAAucaTctJMO6u+GX
         KUHcvR8dCuAZgOOGKFdnnUEiheh5WINtpcHt+yN6FWYdVCOCIyh0IHWecWnoVQRe6EBc
         M3lHEyTAE/sPcQXItHMFAtC9/uACJ2yc3i1cQaazCZRHiszcE+WoiFq1hMchihvf7dDz
         7Ggg7nVa4SQyEKvBuMXRAT4Snw8n6hyxXNeUN181mea4GAfi7sbNGT0FCM5KEAHLJhIO
         pzDg==
X-Gm-Message-State: AOJu0YzVlXmIBdPNIooet/ngh+Vbq2akrbbcSk+NpTQg2kWTR+PH6FGq
	6SnnLmrzMLArTTp/HJ9NhLRykk71tuNMhdDRpzx+CRkR2VC0/MHOkAA4oknc75BxQQRMjSLUn5L
	ZsxrNQtfQheOctl/3ljn7lQelPnxDwIYGHpjxAw==
X-Google-Smtp-Source: AGHT+IHvfXSeXQb+yDgIytsMHUD319ILuxt2/TZjZhRpkzNKzmXQENwfT/gC+2MSBhpQ4BvTE1WiVBKOHowYxNoK8U8=
X-Received: by 2002:a05:6870:469f:b0:219:c8bc:66a8 with SMTP id
 a31-20020a056870469f00b00219c8bc66a8mr6614640oap.55.1707408056818; Thu, 08
 Feb 2024 08:00:56 -0800 (PST)
MIME-Version: 1.0
References: <4625.1706004127144905507@lists.yoctoproject.org> <28123.1707405167146586672@lists.yoctoproject.org>
In-Reply-To: <28123.1707405167146586672@lists.yoctoproject.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 8 Feb 2024 08:00:30 -0800
Message-ID: <CAMKF1sqZ8-DP1f3zeQ9Jwa4r=eRYnLYogrELUQESqz70eB12cg@mail.gmail.com>
Subject: Re: [yocto] initramfs and system logs
To: yocto@lists.yoctoproject.org, jguittet.opensource@witekio.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 08 Feb 2024 16:00:58 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62432

On Thu, Feb 8, 2024 at 7:12=E2=80=AFAM Joel GUITTET via lists.yoctoproject.=
org
<jguittet.opensource=3Dwitekio.com@lists.yoctoproject.org> wrote:
>
> Hello community!
>
> Finally got a solution to my issue.
>
> I created a busybox_%.bbappend file in my layer with the following conten=
t, to create the /dev/console node during the build:
>
> # Install
> do_install:append() {
>     # init process needs the console created before running
>     # If the console is not available, no logs are displayed in the termi=
nal
>     install -d ${D}/dev
>     mknod -m 622 ${D}/dev/console c 5 1
> }
> FILES:${PN}:append =3D " \
>     /dev/console \
> "
>
> I also found a relevant discussion here that seems still to be up to date=
: https://busybox.busybox.narkive.com/Erf4teRC/modifying-init-to-create-dev=
-console
>
> I hope this will help others reading this message in the future :-)

busybox would not be appropriate recipe to create this device, since
it is also used in main rootfs, however a separate recipe or init
script would be a better place see
meta/recipes-core/initrdscripts/initramfs-framework/init

>
> Joel
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#62430): https://lists.yoctoproject.org/g/yocto/messag=
e/62430
> Unfollow This Topic: https://lists.yoctoproject.org/unft/103785822/199791=
4
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail=
.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

