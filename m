Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 14B30C25B50
	for <webhook@archiver.kernel.org>; Mon, 23 Jan 2023 10:48:19 +0000 (UTC)
Received: from mail-lj1-f169.google.com (mail-lj1-f169.google.com [209.85.208.169])
 by mx.groups.io with SMTP id smtpd.web11.39854.1674470892642367973
 for <yocto@lists.yoctoproject.org>;
 Mon, 23 Jan 2023 02:48:13 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=c8OO0Pud;
 spf=pass (domain: gmail.com, ip: 209.85.208.169, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f169.google.com with SMTP id g14so12649824ljh.10
        for <yocto@lists.yoctoproject.org>; Mon, 23 Jan 2023 02:48:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=PThbTsUlPkz5dSF48et249v11s+ZglYh8ZDAyOm1CuQ=;
        b=c8OO0PudNSVQtwPwpK7drczuFqWMtptfYSePEWKEuq4rY+aOstLIMqvxlM38NjtDB+
         pQ1UQF28ma55nqKGIrcn9Gg6Nbk3w9M4x3W72KFfYqqD1SEZ27GZlT9VOCyA/JwHlRKL
         BLuQCweiSNRMPSW2mjmDasXXYWS6eWYqfanfkiprslobDx3LnpqOVBBftN2ukUwBvj8Z
         ZsEl2AS2i2vh2v2Whq9oMfFw6MG/ZiLgeIy+NXp54Nz2nnWdKJAl91HHBM35CBc9JcoO
         j1xfJorCr4IYoB3GWrdefYZa8Jx0bTVJQohhkw3K9uBx8G7Dnl/L5DNaP6RbD8rk5IU4
         pHqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PThbTsUlPkz5dSF48et249v11s+ZglYh8ZDAyOm1CuQ=;
        b=OnKX9PtehW75rbfh0U0f3eZFia3SRHUiYT43+6n015/0eyls1KrxgtCg7jDGTdZ0wN
         EkKCmaFWVkEFNg9FHxOXiV9pmt0qDH3NUARMEAe7GBI7yZs5cQCpBMcFo5le1hijZWV2
         un0mkahsQcZOvMJ2czc0Jsa16J48Q4HTeMxEiamyWpZwTbEF13sZEe0rqjd9gtr2vPwu
         1dq54AceyQKb3VNZKcsadX7pFrB6uiTPdXzkWWvvg27LCwXv0m37He+WBkLolF/lYq5Z
         bveK+1yIlRw9Yq+lffGQdDmlZ6mYWQ6XhC+mLqiuCcM925ivFjxvr0wXgeqj7GQaD1kr
         6rMQ==
X-Gm-Message-State: AFqh2kpw9z4Ar8PW1aly5nGnHv+wWYraAxze9HK2PdzrgwOIA1bPThgd
	uR0xhhaQJSyPtU+v/Saxt+jEpeipAOUVETEGIt4=
X-Google-Smtp-Source: AMrXdXsKP46ezzaEDN9ZVIn5wY8698yaei0LzBR0PXiqLUwzRUSS6lTtum3GFspNHThssONJAkOZvIF1LwbxmgbdNpk=
X-Received: by 2002:a2e:908a:0:b0:28b:d177:dbee with SMTP id
 l10-20020a2e908a000000b0028bd177dbeemr670619ljg.217.1674470890599; Mon, 23
 Jan 2023 02:48:10 -0800 (PST)
MIME-Version: 1.0
References: <o9vf.1674467875781955712.h1Y2@lists.yoctoproject.org>
In-Reply-To: <o9vf.1674467875781955712.h1Y2@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Mon, 23 Jan 2023 11:47:59 +0100
Message-ID: <CANNYZj-yRKXP+eyEFavNthO6VmNfTnCbAbV3RnbwZq0iaT2siw@mail.gmail.com>
Subject: Re: [yocto] [meta-raspberrypi] Is Preempt-rt still supported in
 master / latest releases? #raspberrypi
To: Carles.SoleMendi@de.bosch.com
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 23 Jan 2023 10:48:19 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59029

meta-raspberrypi kernel comes from
https://github.com/raspberrypi/linux and they stopped providing -rt
options some time ago.

Your options are to apply the -rt patchset to regular rpi kernel and
enable needed options via custom .bbappend, or take linux-yocto-rt and
see how far you get.

Alex

On Mon, 23 Jan 2023 at 10:57, Carles Sole via lists.yoctoproject.org
<Carles.SoleMendi=de.bosch.com@lists.yoctoproject.org> wrote:
>
> Hello all,
>
> I would like to understand if it is still possible to build an image for raspberrypi4-64 where the preempt-rt patch is applied to the kernel, e.g. by adding "PREFERRED_PROVIDER_virtual/kernel" to local.conf.
>
> I could see that in older branches of [meta-raspberrypi] there was a specific recipe for the preempt-rt patch, e.g. linux-raspberrypi-rt_4.19.bb. This recipe was using the specific raspberrypi branch rpi-4.19.y-rt.
>
> I see that in newer branches this rt branch disappeared but I was not able to understand the history and what is the current method to implement this patch, assuming is still supported.
>
> Any hints on how to do this would be much appreciated.
>
> Best Regards,
> Carles
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#59028): https://lists.yoctoproject.org/g/yocto/message/59028
> Mute This Topic: https://lists.yoctoproject.org/mt/96470693/1686489
> Mute #raspberrypi:https://lists.yoctoproject.org/g/yocto/mutehashtag/raspberrypi
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

