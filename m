Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DDEFCC433EF
	for <webhook@archiver.kernel.org>; Wed,  6 Jul 2022 14:13:23 +0000 (UTC)
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com
 [209.85.167.54])
 by mx.groups.io with SMTP id smtpd.web10.6678.1657116801396305945
 for <yocto@lists.yoctoproject.org>;
 Wed, 06 Jul 2022 07:13:21 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=Uiln9+Sk;
 spf=pass (domain: gmail.com, ip: 209.85.167.54,
 mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f54.google.com with SMTP id t24so26182879lfr.4
        for <yocto@lists.yoctoproject.org>;
 Wed, 06 Jul 2022 07:13:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=yzrDz4OZgQwej0bycRe/Sy6jFny1/XEOMIoG79NymHc=;
        b=Uiln9+Skdc2CYyOPLPeWDY/nAQV7FLZ2P5SfAP7O/Kz83UMzg/tnZsWzwfBur2aRbl
         vfJkANRB82Vmso3zY3HUfyP6YN+Qw4TgFeCf29GuEeY+jOHQLfVYbNDMczymKItqKCrH
         shx299bZYiYQsjHGTbEpvcsC9L/oub0ChWKTYAEKrE/jTLKgPCICv5fPOV/fO7QJQDLq
         uaMm+wDiHu1UIpz3QTjO5C+/tGlawZLTtY/h1b/PN0prHCthrxSr8xVcUn+01YTHhrud
         kVOy/e8FUnCmnEjHgQWQ+T4cN0bWbs2nqEiCcEfSwTq5nAmOWTtPgipModxn/T1rNdPa
         AWGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=yzrDz4OZgQwej0bycRe/Sy6jFny1/XEOMIoG79NymHc=;
        b=0M4QIoxxd0WoRdxp+toWqf1RvVEQv2gAXUAFNQJ5eG9eApD0sbZZDrNxM2pPJ/oiKd
         gnHok10PXaO+Zc76SmhxAXcwwrvddlOvAQi/aPOAUFDt9pPIGHqHMBdU2M1AX0Nvvq/d
         o7NbPAsYXo1Rs9lUo6wss0E0SW4dXJXH1kv//0Cc9bQ17xaHYcnvQKv5yjKBJdsnmLTu
         ytSx12/htyrQz9Tc5GWATg3MN0SwDuDEOUMuVPlELXJ4ZxQ9osgcygPHaiLVHQObTVyA
         FTH46zhGY40ZM4nHgL6pbCI5pQQrH34KjGncEG5M0DWPoBqpDp8YuACoEw0+AJX/z9gH
         CbmQ==
X-Gm-Message-State: AJIora9QzkP6U0UlZuEs6HKm9mXVlv5gnGpW8nkEQpA9kjaESckkDQGl
	PatCzUxTdTk3D1u9qlcHktTMDu/bmROycsqooqo=
X-Google-Smtp-Source: 
 AGRyM1v5KT3dMAyn05lkb7T449E2Lwi7C6zTbKdADxolmerRMprquwSATm78f1QsBZ291f7YbSNJ2qWQ0eMo/pvOKCs=
X-Received: by 2002:a05:6512:13a4:b0:479:3b9f:f13c with SMTP id
 p36-20020a05651213a400b004793b9ff13cmr26284622lfa.380.1657116799474; Wed, 06
 Jul 2022 07:13:19 -0700 (PDT)
MIME-Version: 1.0
References: <20220706140437.817618-1-ross.burton@arm.com>
 <20220706140437.817618-2-ross.burton@arm.com>
In-Reply-To: <20220706140437.817618-2-ross.burton@arm.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Wed, 6 Jul 2022 16:13:07 +0200
Message-ID: 
 <CANNYZj9gm3mtfHP_QzjLjoOK78x6XNFUwSHnepVeE2ifxbJFvg@mail.gmail.com>
Subject: Re: [yocto] [PATCH yocto-autobuilder-helper 2/2] config.json: remove
 non-gpl3 job
To: Ross Burton <ross.burton@arm.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>, nd@arm.com
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 06 Jul 2022 14:13:23 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57464

Where and how the decision was made?

Alex

On Wed, 6 Jul 2022 at 16:04, Ross Burton <ross.burton@arm.com> wrote:
>
> meta-gplv2 is deprecated, so remove it from the autobuilder in master.
>
> Signed-off-by: Ross Burton <ross.burton@arm.com>
> ---
>  config.json | 11 -----------
>  1 file changed, 11 deletions(-)
>
> diff --git a/config.json b/config.json
> index 7f7c2ad..c16812b 100644
> --- a/config.json
> +++ b/config.json
> @@ -753,17 +753,6 @@
>                  "BBTARGETS" : "build-appliance-image"
>              }
>          },
> -        "non-gpl3" : {
> -            "NEEDREPOS" : ["poky", "meta-gplv2"],
> -            "MACHINE" : "qemux86",
> -            "BBTARGETS" : "core-image-minimal core-image-full-cmdline",
> -            "extravars" : [
> -                "require conf/distro/include/disable-gplv3.inc"
> -            ],
> -            "EXTRACMDS" : [
> -                "../../yocto-autobuilder-helper/scripts/check-gplv3"
> -            ]
> -        },
>          "no-x11" : {
>              "MACHINE" : "qemux86-64",
>              "BBTARGETS" : "core-image-full-cmdline core-image-weston world",
> --
> 2.25.1
>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#57463): https://lists.yoctoproject.org/g/yocto/message/57463
> Mute This Topic: https://lists.yoctoproject.org/mt/92207108/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

