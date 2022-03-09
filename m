Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 15AFAC433F5
	for <webhook@archiver.kernel.org>; Wed,  9 Mar 2022 17:18:13 +0000 (UTC)
Received: from mail-qt1-f171.google.com (mail-qt1-f171.google.com
 [209.85.160.171])
 by mx.groups.io with SMTP id smtpd.web12.93.1646846292296583559
 for <yocto@lists.yoctoproject.org>;
 Wed, 09 Mar 2022 09:18:12 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=esNnm3zK;
 spf=pass (domain: gmail.com, ip: 209.85.160.171,
 mailfrom: raj.khem@gmail.com)
Received: by mail-qt1-f171.google.com with SMTP id s6so2456876qtc.4
        for <yocto@lists.yoctoproject.org>;
 Wed, 09 Mar 2022 09:18:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=sWIGu3tHmz2WPmuY6wzK9jZk1J49MWYz9f6PKHMheGg=;
        b=esNnm3zKLsdK9U5QvLVhcD7IJV1ikwbxRoZekhB4mf5D7VxUWHQx43KEg2BFnduK0P
         gEznxFGVrkF6Kuc8jrGlavno5PIaH/Z+cmj6ivAyanvu2sX7Mt01G8i773tv22oRa+TE
         eDbx7jIOWhzVkj09SuswtCcAE46A9+RDxpGpderaUd2DzqDuaA5uDS0lZ/YYcushfrqF
         8L5yHPcE+tBIPuR4cDMVMEX6fj41i21x7X915Q5AoHeeHF50VOG9KZ/ufWUTzMiCeg2F
         RM447mV8bAdM9AEZyB7usokb9RNr/8kWGYjVEW1D1cyoaI1snltDUO6KOKsTUrnWBWmm
         OsaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=sWIGu3tHmz2WPmuY6wzK9jZk1J49MWYz9f6PKHMheGg=;
        b=xPWQrZ666iamrwq6G+TtuGkv1vSFImkbkIB5s0cBZ+PwuQyCTovqVY8dvEDgtxrd7L
         eUIOCQ46mdfdqaZkRi37SBZ40dsuI35HJ+rB0XdvJSUiPtQiMCIvXng/6GmYaVimOju5
         U2RI+NNGNclEBw29RrxEe771uRQJ1ru6TOzP5zeczAuUCCLQNuyMWj+QC7XXMeskb96J
         /CG8EPXFX9oyU4UwNW7Kkrwsfr3JqdBPs7HNPblTvQzL8LIYMsndnyP6R6sxF/Lo8VnZ
         romJHHfFC8+WAoceEww3c8geSDRnBKShO/dK7VEm0W4b8O0eTk64W86cjbDafyJF/EZO
         dKsA==
X-Gm-Message-State: AOAM533B27zLisjjwIoVLxWtO+EZnqfsnSZ90GtID362r4BZWrBFxW+d
	vV8kufHnG5XZAZ1vtcy0ZdR2jdjEGQDCxE7+zIo=
X-Google-Smtp-Source: 
 ABdhPJzBqO9etToFKxDABsTs7zeiLxOwL7rQ8mhC821dmdUvfPxYld22FHzEEvh9Dx0ANcppRlkj82LQusks6cfWNos=
X-Received: by 2002:ac8:574e:0:b0:2df:f40a:8b79 with SMTP id
 14-20020ac8574e000000b002dff40a8b79mr619346qtx.634.1646846291329; Wed, 09 Mar
 2022 09:18:11 -0800 (PST)
MIME-Version: 1.0
References: 
 <CABWL1P=zE2ytCjuyxG9em7WRzoPQt1ztcTHVm1MzN1hfQkbDTQ@mail.gmail.com>
In-Reply-To: 
 <CABWL1P=zE2ytCjuyxG9em7WRzoPQt1ztcTHVm1MzN1hfQkbDTQ@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 9 Mar 2022 09:17:45 -0800
Message-ID: 
 <CAMKF1spar4Vj85gEAB8NPyN5J4vKxknOBh6pDAxjB2E0JYtGWg@mail.gmail.com>
Subject: Re: [yocto] imx7d-pico with hardknott - I need help enabling
 remoteproc in device tree to show /linux/remoteproc.h file and modules in
 /sys/class/remoteproc
To: Neuber Sousa <neuberfran@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 09 Mar 2022 17:18:13 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56411

On Wed, Mar 9, 2022 at 8:04 AM Neuber Sousa <neuberfran@gmail.com> wrote:
>
> Hi,
> I do this:$ mkdir tn-imx-yocto$ cd tn-imx-yocto$ repo init -u https://git=
hub.com/TechNexion/tn-imx-yocto-manifest.git -b hardknott_5.10.y-stable -m =
imx-5.10.72-2.2.0-2022Q1.xml$ repo sync -j8$ DISTRO=3Dfsl-imx-x11 MACHINE=
=3Dpico-imx7 BASEBOARD=3Dpi source tn-setup-release.sh -b build-x11-pico-im=
x7$ bitbake core-image-base
>
> I enable REMOTEPROC and RPMsg in kernel. I have imx_rpmgs_tty module. But=
 I don't have remoteproc. Why?

how did you enable it? every BSP has sometimes its own way of adding knobs.
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#56410): https://lists.yoctoproject.org/g/yocto/messag=
e/56410
> Mute This Topic: https://lists.yoctoproject.org/mt/89665280/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail=
.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

