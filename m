Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63910C41535
	for <webhook@archiver.kernel.org>; Fri, 22 Dec 2023 11:53:05 +0000 (UTC)
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
 by mx.groups.io with SMTP id smtpd.web11.21517.1703245983961157554
 for <yocto@lists.yoctoproject.org>;
 Fri, 22 Dec 2023 03:53:04 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=e9ih2k7o;
 spf=pass (domain: gmail.com, ip: 209.85.167.46, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-50e34a72660so2173231e87.1
        for <yocto@lists.yoctoproject.org>; Fri, 22 Dec 2023 03:53:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1703245982; x=1703850782; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=V3eqDD35k+CzJFlWCk0hbgIHYy/mRhy68WBKxLD7+tI=;
        b=e9ih2k7o/kjlT6CGmlUw9DZe8Gc6fZsxx8dVyUdjZbFTbaze3oOkyFx0GRDApdO0fp
         ed1Y7GM5orrTfNhFxnysDajRLh9tZoUzSLZcoRKL7WdQvqRHVEhrxYfwySUlEmOvOgWf
         9pJRr1rLxYTYwGv8kMlxvi3X01G6neO8rSmXMq/2RSsigG0Rhpq1P9xdSM6S+Lf+L37j
         pnuNsAtEjWmkCusKffgZCUEDLwgINCVI/Vz+MYsXRrCv3lPTInYBsq3Lr3WLOxeE3jtB
         kieCSbd3rd4jDbOnSY1jDVBJ7ldI2QoDAmGfBaNlxqVhNhSYsrP1490xQyU/AkOW3L7d
         lmlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703245982; x=1703850782;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=V3eqDD35k+CzJFlWCk0hbgIHYy/mRhy68WBKxLD7+tI=;
        b=HMkujAU7adRldMEpNVLIiMNtaRW6TOZeBkslzqjq6Zj2DZknKdPPYQ0GQCZNmHvFRq
         ZnVi/tzkXgR9hW5lkuI4pfbYKM4oRHHWKOc6Zkj1PO35uMK/4I/JrzlVEiyHRDfCj93a
         6omgUQsmd8zrzX46giopTBwyVMWMqF6Uaa5YzXPwCpSjDuMm6m2I5txPPfRhyZ3uJp07
         4lIssg5VywGimA9hzYjn2mdjrw6Pn0LwasMxBVgRCoVsJaXBWoJWlYIuI4vh5TZ9YqOQ
         VTudWjB9TBHRburpEHXuAnYRMQ7hMOVAGajXA6aick8pugQj3Zz+jUYD6FgcZzAcfjHT
         ksZQ==
X-Gm-Message-State: AOJu0Yyf7CreHSJXaFtN/Fm0v4n8UPiPM9kbibeSwVUEdrba98uiZoKg
	LGKOrn5rROYNfUx2wARrITslPrcdycf27emFseEdOH29Fd0=
X-Google-Smtp-Source: AGHT+IE6cXgYkHXl0xEyTG1GNbwAHnfdad3gq/yuwQlKlpxDcSaefxqg6eFruukSI1lvc9EJeeeg9p0PZGE8Sz47+Dc=
X-Received: by 2002:ac2:5f88:0:b0:50e:3d6f:6e20 with SMTP id
 r8-20020ac25f88000000b0050e3d6f6e20mr603276lfe.84.1703245981713; Fri, 22 Dec
 2023 03:53:01 -0800 (PST)
MIME-Version: 1.0
References: <20231222114826.812055-1-michael.opdenacker@bootlin.com> <17A3251640736EA2.10357@lists.yoctoproject.org>
In-Reply-To: <17A3251640736EA2.10357@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Fri, 22 Dec 2023 12:52:50 +0100
Message-ID: <CANNYZj80z59BT6y=2aNW5sKJ8kgOh3uhY_iLFGuV7SPbLWMduA@mail.gmail.com>
Subject: Re: [yocto] [PATCH yocto-autobuilder-helper] config.json: add
 "package-management" to images
To: yocto@lists.yoctoproject.org, alex.kanavin@gmail.com
Cc: michael.opdenacker@bootlin.com
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 22 Dec 2023 11:53:05 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62022

And also, why here, and not in oe-core? Any such custom tweaks add to
the friction and mismatches between local builds and autobuilder
builds, especially when one fails but not the other.

Alex

On Fri, 22 Dec 2023 at 12:51, Alexander Kanavin via
lists.yoctoproject.org <alex.kanavin=gmail.com@lists.yoctoproject.org>
wrote:
>
> Wait, why?
>
> Alex
>
> On Fri, 22 Dec 2023 at 12:48, Michael Opdenacker via
> lists.yoctoproject.org
> <michael.opdenacker=bootlin.com@lists.yoctoproject.org> wrote:
> >
> > From: Michael Opdenacker <michael.opdenacker@bootlin.com>
> >
> > Signed-off-by: Michael Opdenacker <michael.opdenacker@bootlin.com>
> >
> > ---
> > Note: could not test this change!
> > ---
> >  config.json | 3 ++-
> >  1 file changed, 2 insertions(+), 1 deletion(-)
> >
> > diff --git a/config.json b/config.json
> > index d504d07..bd0135e 100644
> > --- a/config.json
> > +++ b/config.json
> > @@ -74,7 +74,8 @@
> >              "BB_LOG_HOST_STAT_ON_FAILURE = '1'",
> >              "BB_LOG_HOST_STAT_CMDS_FAILURE = 'oe-time-dd-test.sh -l'",
> >              "SDK_TOOLCHAIN_LANGS += 'rust'",
> > -            "BB_SERVER_TIMEOUT = '60'"
> > +            "BB_SERVER_TIMEOUT = '60'",
> > +            "EXTRA_IMAGE_FEATURES += 'package-management'",
> >          ]
> >      },
> >      "templates" : {
> > --
> > 2.34.1
> >
> >
> >
> >
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#62021): https://lists.yoctoproject.org/g/yocto/message/62021
> Mute This Topic: https://lists.yoctoproject.org/mt/103317023/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

