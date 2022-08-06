Return-Path: <alex.kiernan@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EDE93C19F2D
	for <webhook@archiver.kernel.org>; Sat,  6 Aug 2022 10:48:23 +0000 (UTC)
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com
 [209.85.208.51])
 by mx.groups.io with SMTP id smtpd.web10.2005.1659782898594397090
 for <yocto@lists.yoctoproject.org>;
 Sat, 06 Aug 2022 03:48:18 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=Sj8PT5Tw;
 spf=pass (domain: gmail.com, ip: 209.85.208.51,
 mailfrom: alex.kiernan@gmail.com)
Received: by mail-ed1-f51.google.com with SMTP id z2so6162346edc.1
        for <yocto@lists.yoctoproject.org>;
 Sat, 06 Aug 2022 03:48:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc;
        bh=6TWnC7f40/Lyr/Am7KtLBtbQitDlBfVS/gSxE+fKkD0=;
        b=Sj8PT5TwpCSwhVo/IqQSkCB0TOvnBLy6bGQ0sBirDo5z4lDxt0Sja/oVFnNYCdGacB
         koxUnU71IIt8SHdmmJ4iSNveXykNik5Co2OK9aM2OcD0z3K16Ybwg5hb7VxpGJJE0Red
         seeKdaxpezi4GQJzv0ydied7P8JVmwJDUHg2CDRco9PWMGVLzYXR1lHbZG6cNCsloCwb
         v0IXnjd/GP/dnrB1m17HhZnoAIPyk9MRTPsyejonKiseNZvYq7zXMJ8FG8jC+PMTgsoo
         RjIGr+BaWY9K/q0rJ7hEjV9D0rq2HJxXeefu6uPfob/ADBqqz/cehopaAWT65/KChgpv
         VwbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc;
        bh=6TWnC7f40/Lyr/Am7KtLBtbQitDlBfVS/gSxE+fKkD0=;
        b=jAJyGvFM3QzYRL1wP4FRxHTeHnDSfsjtxqIexIJBFpxgbAp9U8dethmzZi2KAqNb5O
         8VbGCtG2Fe2o4vCQPf29dFqEX0i5X6RWqurbbcKbqFZLtYA631hLF+nT6msA3WccPLHV
         8WPmHvavoEcuFKxXOwpW77ohuUrZiqDO5/tUFGdBXpF/yeJvGtE/d97LPYbdnjdxqxRv
         hpEcFHmqHdCuE9kd3LEjA2x7Pk7CQCoWkUQr06NE2UDe2lrY7VWSatpU0orA8wIvPph3
         /LHGv7yrYPXlvh6m3xxKhwGr+4f/Zj5rdpK57R45PzoMpDcDvPdTWzji6oC+u+gYkrpR
         n90A==
X-Gm-Message-State: ACgBeo2sWOGzvX0BrbT9XZDaGm3nd8MLwTIGaptl7cQPysyJ38jgzlOz
	isZFPBupfwWFZLtRpObI5W5KXo9fgiSAuzaNs7s=
X-Google-Smtp-Source: 
 AA6agR6//AEoq5GZj7DiZ19ZBwtte0Y6Uhy3hDwE9/1yUNKEyyNmF6gLl6ASsn4D6M8kyIVr8w6lxnuqy7Z2tTdehI0=
X-Received: by 2002:a05:6402:5216:b0:43e:81c5:82dd with SMTP id
 s22-20020a056402521600b0043e81c582ddmr10487358edd.345.1659782897156; Sat, 06
 Aug 2022 03:48:17 -0700 (PDT)
MIME-Version: 1.0
References: 
 <CAMKF1srmUCWZVSixpjBTOG6w4HNXmHXQCMcWEdK+q_qqZ2EemQ@mail.gmail.com>
 <8987.1659778111655068649@lists.yoctoproject.org>
In-Reply-To: <8987.1659778111655068649@lists.yoctoproject.org>
From: Alex Kiernan <alex.kiernan@gmail.com>
Date: Sat, 6 Aug 2022 11:48:05 +0100
Message-ID: 
 <CAO5Uq5QnmxfBCZS4k_h6+RDJvE9AsEJ1-amnWJyb95W6B06Chg@mail.gmail.com>
Subject: Re: [yocto] [Need help] How to add one package to build directory of
 another package
To: Kuzemko Aleksandr <kuzemkoyocto@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 06 Aug 2022 10:48:23 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57790

PACKAGECONFIG is what you're after:

https://docs.yoctoproject.org/current/ref-manual/variables.html#term-PACKAGECONFIG


On Sat, Aug 6, 2022 at 10:28 AM Kuzemko Aleksandr
<kuzemkoyocto@gmail.com> wrote:
>
> Thanks, now it works.
>
> Another question. I have
> DEPENDS = "espeak flite pulseaudio libdotconf glib-2.0 libtool gettext"
> and
> EXTRA_OECONF = " --with-espeak --with-flite --without-ibmtts --without-nas --with-alsa --with-pulse "
> Is it possible define espeak flite as option? For example if I in local.conf define something speech-dispatcher[espeak] it will disable from DEPENDS flite depends and in EXTRA_OECONF it wil be as --withot-flite
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#57789): https://lists.yoctoproject.org/g/yocto/message/57789
> Mute This Topic: https://lists.yoctoproject.org/mt/92675007/3618097
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kiernan@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>


-- 
Alex Kiernan

