Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1B975C19F32
	for <webhook@archiver.kernel.org>; Wed,  5 Mar 2025 23:58:39 +0000 (UTC)
Received: from mail-ot1-f41.google.com (mail-ot1-f41.google.com [209.85.210.41])
 by mx.groups.io with SMTP id smtpd.web10.328.1741219113188429786
 for <yocto@lists.yoctoproject.org>;
 Wed, 05 Mar 2025 15:58:33 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=D38v5dVn;
 spf=pass (domain: gmail.com, ip: 209.85.210.41, mailfrom: raj.khem@gmail.com)
Received: by mail-ot1-f41.google.com with SMTP id 46e09a7af769-72726025fa5so9656a34.0
        for <yocto@lists.yoctoproject.org>; Wed, 05 Mar 2025 15:58:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1741219112; x=1741823912; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KkOgbJa8b6HRCgrdlqu/qICZkFsd/voz/qEpyOh8AJQ=;
        b=D38v5dVnvsoUGhu8rKL/MioqLKWx4YhFYmIT59yO8uKEnCFh3MbC0ie0GYRIytP1qK
         x2/2A2+9qyLvEO9s4SN9e2y08OVCEg0HDu3kFTVybUzS844hispa1kwNCUW0em7vwg3D
         VWSj2bRUCDq7ijTe4BR+cv35+u+UkiaIojfkB8psP3/MZNTy8mDRI4RfGGbbs4wfSN5j
         nr9Oe8YBHM7sD/ENcDFCZAF3mVvxcaszzp8i1SnsspBZoku+lQvec5lnn2kKcqDHtIS4
         a7AUoaDio0XC3UejY2UgZRUEDCbtCIISalqYxhEXGEHli06U5J8gFOtWsfYDHX0B/jE2
         NVmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741219112; x=1741823912;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KkOgbJa8b6HRCgrdlqu/qICZkFsd/voz/qEpyOh8AJQ=;
        b=K5icAUieY2nvOITympIwIwT/opsAJPWQBzn30fajspYLrdoHZ16Q2/M+W7WyJSQxZh
         Vf8+bcwjwqn0w7B/DiEHXuMCHS+hL9E3fBJhG2TdNeUWsw4+KJcaVxbNP6LFuReLPFoy
         ekVtFGvT3E1eD0fTD43XKapOxJJc9roMDpspicnDK5XphM83pdWfPkRmTQ1cwpXUB1bG
         KE5xgAp1GRLbTHAhuQBCmeAXECkEyxeKZJYY8j/K1oAtQ+LPFvMPVehIDRUUGHKZ7ASo
         3LS62CZCYLkAC61Nyf344LeYyZ+0ZKOvmeZMB73yIlyQswStMPChNzV0w+OavY96GN75
         TxvA==
X-Gm-Message-State: AOJu0YxTus9iTHwmP9j+NWyt6qkZm51CUGRSKsY82UfhF9cDzCmBzmNe
	VzcRzeZih0+zDHmcC/jGmgCmb58Feh1ZBBL4G9WIOtWm0cTOg9WQTHbpEMW0XAfrzkXK+avFS8M
	g8zNodIPrt7etxfKzAYQgybfV3spgrJgQ
X-Gm-Gg: ASbGncuX8H7iThIwg/N/nQEEu9xnTRuYm/BEJVFmIUE1HO2lluxDhp1cCPFYYhb97g7
	x4dyncL6sNogyydwPrSh4nB+g4fsQSVEfFEa5TeTlRKAy8w8/42Yv4J23OLzS6bDALl6jCv5GXI
	aIUMrVlQ1FmyB+bAIESkFrztKo/g==
X-Google-Smtp-Source: AGHT+IGB17zRZnjqDVdLM9HJshMohdzkaoZdWrWfgG/tvWnNpk71ul9fzSFS6rTI0s6m0v8k47igfF38CVufq4H1ldo=
X-Received: by 2002:a05:6830:3906:b0:72a:fc7:21fa with SMTP id
 46e09a7af769-72a1fcc68b7mr2876316a34.27.1741219112264; Wed, 05 Mar 2025
 15:58:32 -0800 (PST)
MIME-Version: 1.0
References: <8570.1740780653126056250@lists.yoctoproject.org> <8212.1741219010261310074@lists.yoctoproject.org>
In-Reply-To: <8212.1741219010261310074@lists.yoctoproject.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 5 Mar 2025 18:58:05 -0500
X-Gm-Features: AQ5f1Jon6Wywe-p0f5YVvLjDYUYuCNRPbDnIDu8m4_8d6KFJFIHXkeIbYbiZdL0
Message-ID: <CAMKF1sqvDqQz3neK02U4EBxqtw76z1_KqBVqX3ygqWr9Q_Y_NQ@mail.gmail.com>
Subject: Re: [yocto] Help needed with combining host and guest VM images in
 Yocto #qemu #qemux86-64
To: yocto@lists.yoctoproject.org, ryan.a.lovelett@saic.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 05 Mar 2025 23:58:39 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64925

On Wed, Mar 5, 2025 at 6:56=E2=80=AFPM Ryan Lovelett via
lists.yoctoproject.org
<ryan.a.lovelett=3Dsaic.com@lists.yoctoproject.org> wrote:
>
> Just a follow up. I was wrong the `DEPENDS` is not sufficient. I had to a=
dd do_install[depends] +=3D "core-image-minimal:do_image_complete"to get it=
 to work.

yes thats task level dependency which is what you would need here.

>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#64924): https://lists.yoctoproject.org/g/yocto/messag=
e/64924
> Unfollow This Topic: https://lists.yoctoproject.org/unft/111407542/199791=
4
> Mute #qemu:https://lists.yoctoproject.org/g/yocto/mutehashtag/qemu
> Mute #qemux86-64:https://lists.yoctoproject.org/g/yocto/mutehashtag/qemux=
86-64
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail=
.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

