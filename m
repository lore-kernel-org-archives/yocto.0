Return-Path: <steve@sakoman.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA43FC433FE
	for <webhook@archiver.kernel.org>; Fri, 18 Nov 2022 16:02:21 +0000 (UTC)
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
 by mx.groups.io with SMTP id smtpd.web10.15826.1668787337854456525
 for <yocto@lists.yoctoproject.org>;
 Fri, 18 Nov 2022 08:02:18 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20210112.gappssmtp.com header.s=20210112 header.b=WS66fJpf;
 spf=softfail (domain: sakoman.com, ip: 209.85.218.41, mailfrom: steve@sakoman.com)
Received: by mail-ej1-f41.google.com with SMTP id vv4so4799853ejc.2
        for <yocto@lists.yoctoproject.org>; Fri, 18 Nov 2022 08:02:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=MWptEtk4BvBySvK6W9u4x0KC+Rl/2p1iEsEcgClY3Lc=;
        b=WS66fJpfUUwW/hW50KYvP+SUfFw/2fdGqkPGh4EA91eIXix+XjyimTzA21afgWhNPq
         7658+l1UENy3kdu+qCxJVOElbudKv61Y1aPiuzXn2lWUAgnM8YGwVbcdhNoaxnjdG6s0
         FWTpIBLfC4+6q3LAMzPsy5LYUxVNduvxHeR1Wd1Iu7pHKx5MIm+6wtxklz6PhTaS2Dhp
         lUdvggWMbACXBc8ZCte5rHjh03PQe3E7ijLtKZlR3QbE9AHIWxfLhK6vASkfLbY4Mi27
         mbM4nkEkhvRdUlXzVPXWcJLzeeWgKCCj95aCdFJetXlDGdgW9ybnbszzxFRCj1KvODAV
         JuGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MWptEtk4BvBySvK6W9u4x0KC+Rl/2p1iEsEcgClY3Lc=;
        b=bctVjpQBPi/BUvMecXmbZg8ZIVcyCmaBUf0JrQ8y2cxM1Oh6TNX4ieZKhAJd98LW1r
         Ps8ltiFXSoAincopuxS2iPGK2IPEXqRUapyGDfUvDw4jDC9qXt9yYikU0kDq5cGCiZbG
         6uLSal0f3Cmh6hqd8biLly3rydr8O9BJU0vLRYCT8LOJJ+SltQcxG5Bc8mrR2+PXmKkJ
         fbA60g4vy0XGLXjeVA0Kd+N6OjdHEjL7vgfYKBPKcvQDwCEdM6kFya3ZC6oJsGuZHrwh
         c78PfNU58aL1qUO8b8U/cRIvWrwk2Js/H0JJzlYxr4j/oulJ6f/YdcU8vbDCxr2p9jK2
         ZJ+w==
X-Gm-Message-State: ANoB5pnr1DYDruFpGAeDm6PuIiJfmhTdj4PqP01gLxEcl5NfT7Pm+Fkl
	XkgzpRTJhDb99rlFMypHwVF7kEJcI6LZRPw2kL9PMw==
X-Google-Smtp-Source: AA0mqf5sjomjW7uzpUMBiWEZEEZ9O0EqM9n2XpO5olfWlbcQM+zXTXmEN8gT/rStwOstS4ZAMaRCAEQUr7HRf4l/on4=
X-Received: by 2002:a17:906:38c:b0:78d:4ebb:7ea1 with SMTP id
 b12-20020a170906038c00b0078d4ebb7ea1mr6433361eja.357.1668787335884; Fri, 18
 Nov 2022 08:02:15 -0800 (PST)
MIME-Version: 1.0
References: <cover.1668781506.git.steve@sakoman.com> <47d71483139752f47c4e70981db7727e095b26ff.1668781506.git.steve@sakoman.com>
 <CANNYZj_OGaCYOg3tFG8Mqsm6XUeQ4-D51Db-RwtSJr1btYs5oA@mail.gmail.com>
In-Reply-To: <CANNYZj_OGaCYOg3tFG8Mqsm6XUeQ4-D51Db-RwtSJr1btYs5oA@mail.gmail.com>
From: Steve Sakoman <steve@sakoman.com>
Date: Fri, 18 Nov 2022 06:02:04 -1000
Message-ID: <CAOSpxda3cL78oOgYW0yxYPsKDwXM+fpL+S53Mg+11iwSgsGKUA@mail.gmail.com>
Subject: Re: [yocto] [yocto-autobuilder-helper][langdale] config.json: don't
 run the meta-agl-core test
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 18 Nov 2022 16:02:21 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58593

On Fri, Nov 18, 2022 at 5:08 AM Alexander Kanavin
<alex.kanavin@gmail.com> wrote:
>
> Does this mean that master should be excluded too?

No, master is supported.

Steve

> On Fri, 18 Nov 2022 at 15:28, Steve Sakoman <steve@sakoman.com> wrote:
> >
> > langdale isn't currently supported on any branch of meta-agl
> >
> > Signed-off-by: Steve Sakoman <steve@sakoman.com>
> > ---
> >  config.json | 17 -----------------
> >  1 file changed, 17 deletions(-)
> >
> > diff --git a/config.json b/config.json
> > index da87a2d..27283c9 100644
> > --- a/config.json
> > +++ b/config.json
> > @@ -403,23 +403,6 @@
> >                  "SANITYTARGETS" : "core-image-sato:do_testsdk"
> >              }
> >          },
> > -        "meta-agl-core" : {
> > -            "NEEDREPOS" : ["poky", "meta-agl"],
> > -            "ADDLAYER" : [
> > -                "${BUILDDIR}/../meta-agl/meta-agl-core"
> > -            ],
> > -            "DISTRO" : "poky-agl",
> > -            "BUILDINFO" : true,
> > -            "BUILDHISTORY" : true,
> > -            "PACKAGE_CLASSES" : "package_rpm",
> > -            "extravars" : [
> > -                "AGL_FEATURES = 'aglcore'"
> > -            ],
> > -            "step1" : {
> > -                "MACHINE": "qemux86-64",
> > -                "BBTARGETS": "agl-image-core-autobuilder"
> > -            }
> > -        },
> >          "meta-aws" : {
> >              "NEEDREPOS" : ["poky", "meta-openembedded", "meta-aws"],
> >              "ADDLAYER" : [
> > --
> > 2.25.1
> >
> >
> > -=-=-=-=-=-=-=-=-=-=-=-
> > Links: You receive all messages sent to this group.
> > View/Reply Online (#58591): https://lists.yoctoproject.org/g/yocto/message/58591
> > Mute This Topic: https://lists.yoctoproject.org/mt/95112745/1686489
> > Group Owner: yocto+owner@lists.yoctoproject.org
> > Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@gmail.com]
> > -=-=-=-=-=-=-=-=-=-=-=-
> >

