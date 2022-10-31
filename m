Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0E7EAFA3740
	for <webhook@archiver.kernel.org>; Mon, 31 Oct 2022 08:28:30 +0000 (UTC)
Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com [209.85.208.170])
 by mx.groups.io with SMTP id smtpd.web11.6905.1667204901665263343
 for <yocto@lists.yoctoproject.org>;
 Mon, 31 Oct 2022 01:28:22 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=SlRTInbz;
 spf=pass (domain: gmail.com, ip: 209.85.208.170, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f170.google.com with SMTP id s24so15801546ljs.11
        for <yocto@lists.yoctoproject.org>; Mon, 31 Oct 2022 01:28:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gxn7bFy2V6lirF5knZksgyE+F8qnhmU34hriZkqANJg=;
        b=SlRTInbz5++qpoGIGi2aZKZbKhcYuD7af/9KPHPe8S35zY+WVYS6fW1X6ir0eQEt26
         xgTsaFX+x+Fd2R9h5yZM0w8SpfyRtY5LCYvi8ntxFO8Q6rcgAnBTrY0Q+zy4ebTbCRjU
         1xrc/r0LXby62PgZpU+eU0fmI9WMz6lL0z3rpq6xFvh306GMtI3fV3HW62Q+rHXALgZ9
         ijXqiQW32K+4oWUaDOR4u+j/CqIW2uTCM9Awv9Elt9ptdrhAu/e7s4QPKTtWTm8PuyA6
         tCt+kdOEDK2cOTYAAKav1LVNP1FAfLi/y1Y+wo+Q9CWvq5zjoTtOfBq3aX/1Ko9bToVw
         VNzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gxn7bFy2V6lirF5knZksgyE+F8qnhmU34hriZkqANJg=;
        b=kCwKjT9RAWs2ad4dpRfOjGQhwd9XArcwZJBHa284NRVvocHDaQTeRmbzMKaD3UOclV
         DGw+BTJAOwl/mtn5EugImfs3Wjndkt6Tm3rMHuQkKtDI1BKhLAtrAAoMxm5DAQErE81h
         oVLpA3nFShdEOCaEpECby2dqfCuY3geyfF8T/a+I86Dz8xerIkhqXokT90kY2wJWQNDG
         ZGY5JXvn3g6YRxhSF7xmISX5H70pUUHa287nYHWizuBy1yDTw3b83xWUc8H7Jem3Kmkt
         Gp2ua1VnF+A1PI5i1d7iQ1qaf9l7bFCZnFavAE6l5IfrnAdFJlpEsk01/5+jd5VM35rc
         X/aw==
X-Gm-Message-State: ACrzQf1dYLUvL7w+p9jdm8/4BooG/07/+nwYHeH9pNxO9nAl0xIHWruI
	gdnHO77fDFJiHufQmOXiPJ6c247dfUDItucuQzI=
X-Google-Smtp-Source: AMsMyM5/wi5MoWImZWQWIFFfhfpdGZ5mhzcIRL6bN0O69JQSO+GwNjJg7TZnlUPhfBpsQZngnQ+DX3IDFR9zMRRExnE=
X-Received: by 2002:a2e:3011:0:b0:277:3a99:7a49 with SMTP id
 w17-20020a2e3011000000b002773a997a49mr4815789ljw.217.1667204899880; Mon, 31
 Oct 2022 01:28:19 -0700 (PDT)
MIME-Version: 1.0
References: <8lcP.1667180060174188660.R0zS@lists.yoctoproject.org>
In-Reply-To: <8lcP.1667180060174188660.R0zS@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Mon, 31 Oct 2022 09:28:07 +0100
Message-ID: <CANNYZj_g3vL1HibE-EAb1oEx9cdr9ccNUHmziOT_Phtrw4-_LA@mail.gmail.com>
Subject: Re: [yocto] How to remove shared libraries dependencies?
To: Priyanshu Sharma <ms.priyanshu.sharma@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 31 Oct 2022 08:28:30 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58443

You need to be more specific, otherwise it is not clear how can we
help. Show exactly what you did, and what happened (or didn't happen
even though you expected that).

The basic way to trim dependencies is to set PACKAGECONFIG to a minimal set=
.

Alex

On Mon, 31 Oct 2022 at 02:34, Priyanshu Sharma
<ms.priyanshu.sharma@gmail.com> wrote:
>
> I've a requirement in which I want to package veritysetup binary in a min=
imal filesystem (which is size constraint)
> Including "cryptsetup" package in IMAGE_INSTALL is adding the binary but =
also a lot of shared libraries which are its dependencies. The shared libra=
ries are increasing the size of the filesystem, which should not be done. I=
 do not need functionalities like ssl for veritysetup, so how can I remove =
the dependencies on these shared libraries?
>
> I've tried removing eg ssl from https://git.openembedded.org/meta-openemb=
edded/tree/meta-oe/recipes-crypto/cryptsetup/cryptsetup_2.4.3.bb#n29 but th=
e shared libs are still the dependency.
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#58441): https://lists.yoctoproject.org/g/yocto/messag=
e/58441
> Mute This Topic: https://lists.yoctoproject.org/mt/94676916/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@g=
mail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

