Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CD65C4332F
	for <webhook@archiver.kernel.org>; Fri, 18 Nov 2022 15:08:41 +0000 (UTC)
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
 by mx.groups.io with SMTP id smtpd.web11.14030.1668784117861402759
 for <yocto@lists.yoctoproject.org>;
 Fri, 18 Nov 2022 07:08:38 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=YfN5qXLO;
 spf=pass (domain: gmail.com, ip: 209.85.167.54, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f54.google.com with SMTP id l12so8638308lfp.6
        for <yocto@lists.yoctoproject.org>; Fri, 18 Nov 2022 07:08:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=XFUIGAVPzaupH2clwN2uuaNmq6m/EuDnIP9rGKaGE4E=;
        b=YfN5qXLOtCm/pmReonk+1fXsaZqyMJ8nA7XsEjG5KCB88b4JfE9Pp9qBuuLyKfB0aL
         s9342V4Mz9YQw6AnP2CSE+MS/PwC0ufs2uo8mP6kCG5lsTjihcdDoDBRBxCyrCSqumDN
         1YTywJr9E8dLmbueC39DR7oNlhziWUB6Okyob7mzGaBvOvA34HI9+jXlUSzG3A5E4LiQ
         LPlov9dGiWwyvFg4LWpTrNY8YaI38zIWW5MbrHkh3OwS3rsd5lligEpiNwCWsQOMsSkq
         cdEWIffcWj+g/1FO8r/TehVTTgDc0KHV8/0jICkKHCDBAAy+/ygK1Df7dkUOHnVGUbnF
         8zhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=XFUIGAVPzaupH2clwN2uuaNmq6m/EuDnIP9rGKaGE4E=;
        b=fm1DfFdE6y79tKaD5VpaYktOEjjZxyl11qJzNqwwA8M4tFxxoBVT2YJr3WwIRGWOxb
         /+MBMARm0L4eIxJRFbnluC22ux5M28l54C8VWyql309KLTiPGY1XW7QHMD0n7+CJUCHq
         ahHzRPd0Ldm0I/WjzUjPJXvWwp/9Q4wX7NYsTHwCHzpuy+FLvzLE8wqORMET2tJp9azo
         kilnJTCWDQsjU2IQ1y7Fkd2MyOBc1Rsgu/Xe0C81phPlvJ0JYQ+wkcqSwPH+DedO1Mg1
         hjnPeKHxYK2f9nBOw0fY71W4nLC9znjBiFvagr7B1/iGWEAEL1ybxD5khp/QByeh4F+L
         VgKA==
X-Gm-Message-State: ANoB5pmX8HTqoEgLgXiCcLg8M4cW7wRoFEWGySv4lUotAXf3ENOVQluI
	xmtELN5VjDl4GAytrk/seHjRAnKXOu/uhmLrIm0=
X-Google-Smtp-Source: AA0mqf5XYDD0V7uzGNR0wXUxab9Br1gPVNidDK2jw1EU8rdbkxYJ9I5qiirQtve+FSMMBpgkOfzYEzsiVlRFJWSCXrs=
X-Received: by 2002:a05:6512:3445:b0:4a9:39f4:5793 with SMTP id
 j5-20020a056512344500b004a939f45793mr2698036lfr.131.1668784115810; Fri, 18
 Nov 2022 07:08:35 -0800 (PST)
MIME-Version: 1.0
References: <cover.1668781506.git.steve@sakoman.com> <47d71483139752f47c4e70981db7727e095b26ff.1668781506.git.steve@sakoman.com>
In-Reply-To: <47d71483139752f47c4e70981db7727e095b26ff.1668781506.git.steve@sakoman.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Fri, 18 Nov 2022 16:08:24 +0100
Message-ID: <CANNYZj_OGaCYOg3tFG8Mqsm6XUeQ4-D51Db-RwtSJr1btYs5oA@mail.gmail.com>
Subject: Re: [yocto] [yocto-autobuilder-helper][langdale] config.json: don't
 run the meta-agl-core test
To: Steve Sakoman <steve@sakoman.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 18 Nov 2022 15:08:41 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58592

Does this mean that master should be excluded too?

Alex

On Fri, 18 Nov 2022 at 15:28, Steve Sakoman <steve@sakoman.com> wrote:
>
> langdale isn't currently supported on any branch of meta-agl
>
> Signed-off-by: Steve Sakoman <steve@sakoman.com>
> ---
>  config.json | 17 -----------------
>  1 file changed, 17 deletions(-)
>
> diff --git a/config.json b/config.json
> index da87a2d..27283c9 100644
> --- a/config.json
> +++ b/config.json
> @@ -403,23 +403,6 @@
>                  "SANITYTARGETS" : "core-image-sato:do_testsdk"
>              }
>          },
> -        "meta-agl-core" : {
> -            "NEEDREPOS" : ["poky", "meta-agl"],
> -            "ADDLAYER" : [
> -                "${BUILDDIR}/../meta-agl/meta-agl-core"
> -            ],
> -            "DISTRO" : "poky-agl",
> -            "BUILDINFO" : true,
> -            "BUILDHISTORY" : true,
> -            "PACKAGE_CLASSES" : "package_rpm",
> -            "extravars" : [
> -                "AGL_FEATURES = 'aglcore'"
> -            ],
> -            "step1" : {
> -                "MACHINE": "qemux86-64",
> -                "BBTARGETS": "agl-image-core-autobuilder"
> -            }
> -        },
>          "meta-aws" : {
>              "NEEDREPOS" : ["poky", "meta-openembedded", "meta-aws"],
>              "ADDLAYER" : [
> --
> 2.25.1
>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#58591): https://lists.yoctoproject.org/g/yocto/message/58591
> Mute This Topic: https://lists.yoctoproject.org/mt/95112745/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

