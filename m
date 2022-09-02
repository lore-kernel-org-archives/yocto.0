Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 87543ECAAD5
	for <webhook@archiver.kernel.org>; Fri,  2 Sep 2022 18:45:37 +0000 (UTC)
Received: from mail-yw1-f174.google.com (mail-yw1-f174.google.com
 [209.85.128.174])
 by mx.groups.io with SMTP id smtpd.web10.2288.1662144335946246701
 for <yocto@lists.yoctoproject.org>;
 Fri, 02 Sep 2022 11:45:36 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=W2kI1VHu;
 spf=pass (domain: gmail.com, ip: 209.85.128.174,
 mailfrom: raj.khem@gmail.com)
Received: by mail-yw1-f174.google.com with SMTP id
 00721157ae682-3376851fe13so24538977b3.6
        for <yocto@lists.yoctoproject.org>;
 Fri, 02 Sep 2022 11:45:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date;
        bh=AgeDJsemYP3zeUqkHCZ26NCjGqfCy1bKjLBpgfXO5jI=;
        b=W2kI1VHuamrhT4aqaBYIbV8/Z4f/KUrbfT50G8da7nFu1Y2ULZXqhu5VrB6VOZPExI
         gxcf8hKGtVP1v1c+9WeMmP6pk4FaZIOc6rogOyMHko/cntU461VVuJIev9f3JwpiqAoP
         M0qSLqBhnNpMGppzRkb1ldT4JSGiVeCcO0nFdUR/cBFUhX9rlpmhQ5XZewP8V9HCEx40
         cbKTqxy3tsyU5qXft5yVMBYS2/w6wY6tIYsJQzHjMPREodSbMcwsLQANe5leSWegA7iR
         P6BLNEqjqVtlJk/D4sFitycU3AAqtUJs4QpMU8hxwecfsN/zPKqHMQgt4yozHbwWt1fg
         Hakw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date;
        bh=AgeDJsemYP3zeUqkHCZ26NCjGqfCy1bKjLBpgfXO5jI=;
        b=QgGPwhAlrGDc7pDux2ANOR7NGDNsvsLwQLVdiUh/18itRHMjkvyuoha8xyNdGKeVo4
         PartoGY5f+vJ20uxDv3WaNmjn20zLf/bXN5eh6JGMTDbG/nzt1uP3136DZACTofYc2sz
         J0/iIJcLns9A+HmDaxFRe2flCmUlrg+a0AGHdDDxKrIlRfrEMPkBfPBd9EIuzw7b+hss
         k7QrpgIaI4es4n0VPpgS2oHKKH7A8mwfRuVn8XvUdlfYipqjK9g7Xs2bDOpW0/slUhmZ
         ikskNr18t90JJqWAIeFiY8Ld4rRWzRMJ9CEmR/i+rS52znmGMygd+DHD72GJA837fOCX
         vHpQ==
X-Gm-Message-State: ACgBeo34ZvT4DZEGvWkJ9iGH9KLFvgJ4I0Mgxq3R8fPtXJRVVcdmLd7t
	y/pnUEtA6+lGR3oCq1YESlR1xgh/zgT5AREUnD4=
X-Google-Smtp-Source: 
 AA6agR4o7TK1F4/I5rJGEBEhihgrg50PQOQNJk2NMVZbbwc026FKvYh3lduWeso5ZuMezk4285p2Tcg9VNbu4GDdj9s=
X-Received: by 2002:a0d:f204:0:b0:333:c23f:d793 with SMTP id
 b4-20020a0df204000000b00333c23fd793mr29799526ywf.71.1662144335076; Fri, 02
 Sep 2022 11:45:35 -0700 (PDT)
MIME-Version: 1.0
References: <3751d58b-0306-e10c-6698-1a62e9f670dc@gmail.com>
 <15375.1662139838514653945@lists.yoctoproject.org>
In-Reply-To: <15375.1662139838514653945@lists.yoctoproject.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 2 Sep 2022 11:45:09 -0700
Message-ID: 
 <CAMKF1srQ=-VpuLof2zTaWTrjMde5CuztQ4Z+i=J=Mqpn5ywiAg@mail.gmail.com>
Subject: Re: Private: Re: [yocto] Adding the Firmware file (.bin) to the Yocto
 recipes #dunfell
To: Mahendra Sondagar <mahendrasondagar08@gmail.com>,
	Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 02 Sep 2022 18:45:37 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57973

Adding back mailing list.

On Fri, Sep 2, 2022 at 10:30 AM Mahendra Sondagar
<mahendrasondagar08@gmail.com> wrote:
>
> On Fri, Sep 2, 2022 at 02:21 AM, Khem Raj wrote:
>
> inux-firmware-rtl8761b
>
> Hi... Khem Raj
>
> Thanks for the quick revert
>
> Yes, i have made the changes as per your suggestions
> Unfortunately, it's seems the same result
>

you have not followed what I said. The bbappend is still a kernel
bbappend, so please make a bbappend for linux-firmware recipe
instead as suggested.

secondly, the bbappend itself has issues

PACKAGES =+ "${PN}-rtl8761b"
FILES_${PN}-example = "/lib/firmware/rtl_bt/rtl8761b.bin"

PACKAGES and FILES do not match. what you want is something like

PACKAGES =+ "${PN}-rtl8761b"
FILES_${PN}-rtl8761b = "/lib/firmware/rtl_bt/rtl8761b.bin"

then in image add.

IMAGE_INSTALL += "linux-firmware-rtl8761b"
>
>
>
>
> here is the error logs
> Can you please check ?
> -----------------------------------------------------------
>
> Loaded 3484 entries from dependency cache.
> NOTE: Resolving any missing task queue dependencies
> ERROR: Nothing RPROVIDES 'linux-firmware-rtl8761b' (but /home/mahendra/STM32MPU_workspace/Digikey_YoctoSeries/Digikey_Yocto/meta-custom/recipes-core/images/custom-image.bb RDEPENDS on or otherwise requires it)
> NOTE: Runtime target 'linux-firmware-rtl8761b' is unbuildable, removing...
> Missing or unbuildable dependency chain was: ['linux-firmware-rtl8761b']
> ERROR: Required build target 'custom-image' has no buildable providers.
> Missing or unbuildable dependency chain was: ['custom-image', 'linux-firmware-rtl8761b']
>
> Summary: There was 1 WARNING message shown.
> Summary: There were 2 ERROR messages shown, returning a non-zero exit code
>
> ----------------------------------------
>
> Thanks
>
> Mahendra

