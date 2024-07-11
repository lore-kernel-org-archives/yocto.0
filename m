Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EA1A4C3DA4A
	for <webhook@archiver.kernel.org>; Thu, 11 Jul 2024 11:53:20 +0000 (UTC)
Received: from mail-lj1-f171.google.com (mail-lj1-f171.google.com [209.85.208.171])
 by mx.groups.io with SMTP id smtpd.web10.9984.1720698790637382678
 for <yocto@lists.yoctoproject.org>;
 Thu, 11 Jul 2024 04:53:10 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=Qa1occHT;
 spf=pass (domain: gmail.com, ip: 209.85.208.171, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f171.google.com with SMTP id 38308e7fff4ca-2eeb1ba0468so8299781fa.0
        for <yocto@lists.yoctoproject.org>; Thu, 11 Jul 2024 04:53:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1720698789; x=1721303589; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=sFaGk6Qr1/YZsMCaidbTByAFXaJbJrO0LF8KsdFLZ78=;
        b=Qa1occHTYrqXGqe9AEs7FDJXJd4olBBsZM3srnUyQagPsFyfb22vdUUwAE9ZV5rWTL
         VlMe91VUqrUbWFpGxHIJSTFayu041B9ae/OqM5IgCfWYtp7jYBUVgDRTMG8qwn8Aimak
         J8L/SYTiW6Vwc7qu8H4NgkQojuYehtiiJLFS5fXcUK9+BJ6GV+ACqSHjkBlCiAltxXcH
         70Srm9Fb4hMYXJIPqsx450/DBiCYBnvPQnLYrQ/aMJYaGqKKoW92O788vdTHUzyJh7k1
         QIv5w/5lupk3v6UrzSKaLjZmR2MrmHV+ScYAUCLGzNLJg9KjjyF/BS1L9lsYuINivNVs
         y88g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720698789; x=1721303589;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=sFaGk6Qr1/YZsMCaidbTByAFXaJbJrO0LF8KsdFLZ78=;
        b=XKeTXK690ZxlAE/H+/TGcpa7UHFuNPzCVqgq0BParycYw4W7/h+n+Lw9oGsL6psbvg
         PXyKQssBbtEAwLALF/RGaR6WMu5b2b47l/DLqiMgOxC+fDJRmAslv2NywuWwO0VY4AtV
         aWj5AntOspsh+lsENbiSXVzYLXsNFlJKb7FuftWxTMocT+T8p1fA1augdCAaeTCRcEdT
         65hEl2jXmyEjlOgSv6V9Oh2vnTvK40x56rwb4Lkt7cCmSSAvd+tvSu4FkomTm/seEaDh
         SNQ5TceXTiGISPiw7+rxjQQnUeuIZSXyOpD/7SUB4JDgdQyfnoQ5J3dIjKzyJvArvvPC
         2nfw==
X-Gm-Message-State: AOJu0YwPttkpUaAuDF+pQe/zmj9TBmG554+OH0brWotMkHVycoRkmU+Y
	sM7WmjmHssG3zq3f7QuOJ2tkbmM5QvE1UDdSmh2U54WuS/3uroW1WAy94b21P9SSVJeAfhyIsuZ
	hjhfPY07ciTBR11+CxX3IRd5b2ZWqcA==
X-Google-Smtp-Source: AGHT+IEcV09XG1cSAcOX08DlxXOAy/I7CmHH7B+1RVpEdmAZ3pzzqfpXgM4fipFoNozsbzuKDzggNtXyZdVxheUuIEI=
X-Received: by 2002:a2e:880a:0:b0:2eb:e258:717f with SMTP id
 38308e7fff4ca-2eeb318a0ecmr56117181fa.42.1720698788518; Thu, 11 Jul 2024
 04:53:08 -0700 (PDT)
MIME-Version: 1.0
References: <sXnF.1720691769997145553.cDZj@lists.yoctoproject.org>
In-Reply-To: <sXnF.1720691769997145553.cDZj@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Thu, 11 Jul 2024 13:52:57 +0200
Message-ID: <CANNYZj_y5cxE0JmWrm359bsE1GMNmF2P7fG4DGR6gRh1ZfZuwA@mail.gmail.com>
Subject: Re: [yocto] "usermod command did not succeed" while building image
To: yocto@lists.yoctoproject.org, jguittet.opensource@witekio.com
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 11 Jul 2024 11:53:20 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63469

You need to do this with a class-target qualifier. Otherwise this
removal will be done for shadow-native too, and none of the user
management will work.

Alex

On Thu, 11 Jul 2024 at 11:56, Joel GUITTET via lists.yoctoproject.org
<jguittet.opensource=witekio.com@lists.yoctoproject.org> wrote:
>
> Hello,
>
> I'm building an image removing userdel and usermod to reduce image size:
>
> shadow_%.bbappend:
>
> do_install:append () {
>     rm -f ${D}${sbindir}/usermod
>     rm -f ${D}${sbindir}/userdel
> }
>
> And I would like to set the root password so my image inherit extrausers and use EXTRA_USERS_PARAMS = " usermod -p 'xxxxx' root; "
>
> When doing this, do_rootfs of the image fails with the error "usermod command did not succeed".
>
> I'm surprised to notice that the usermod command of EXTRA_USERS_PARAMS which is executed is the one in the image itself ! Is it expected behavior ? This looks like a strong dependency...
>
> Joel
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#63467): https://lists.yoctoproject.org/g/yocto/message/63467
> Mute This Topic: https://lists.yoctoproject.org/mt/107159697/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

