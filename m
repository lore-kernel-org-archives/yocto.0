Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1D42DC43334
	for <webhook@archiver.kernel.org>; Wed, 20 Jul 2022 08:43:55 +0000 (UTC)
Received: from mail-lj1-f175.google.com (mail-lj1-f175.google.com
 [209.85.208.175])
 by mx.groups.io with SMTP id smtpd.web08.51492.1658306626117445718
 for <yocto@lists.yoctoproject.org>;
 Wed, 20 Jul 2022 01:43:46 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=nh30Ardb;
 spf=pass (domain: gmail.com, ip: 209.85.208.175,
 mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f175.google.com with SMTP id p6so20308115ljc.8
        for <yocto@lists.yoctoproject.org>;
 Wed, 20 Jul 2022 01:43:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=s1xS0tiZDh3ONs6ryZvYbgFc6CjZ7c1fcLrZnICD/hc=;
        b=nh30ArdbmC4kWQk1XLtBI0OAsTkeAuhIcG0vsDenpkC2OBrEmVMa3vbO6XhSQYPgLF
         zTa506CVoU2WC9bVTdvIgQIAlEAFvu4GP3BSETsOPrhJTTYz62ZJLx9/Z6dEyWPhhH9i
         GHnxIZsTCZYmQ3WJ4aAI9e2/4ixklzGXIhIYY+eEQxtnY7jBnH7t8JBcNXXbqU+SYnoR
         cZfDR3qpIk64+n26ffiFXVlcJ/EiJIpqRb8DCfjl0voM3eIACwLe7MhlnR8+qvPEo1fh
         FVp32hngpla+BEec+4aX6q15oO7VM2Nm0RpAxzaLipD0RVCou0eDCKnC40T6MVl0tzp7
         wp8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=s1xS0tiZDh3ONs6ryZvYbgFc6CjZ7c1fcLrZnICD/hc=;
        b=v3NPoG+DdokirAaEClw/ys1INIuGpYv3KdxaId+0LhX1UEBRGR1AEDrljQGxT1NNpG
         DVk9dcQoVBKCBSdtD6mgYEyGqYdRZa25klcLxh06wItjcfhYqDNKJ+Dyyz5rn0AZYxYv
         cqfDPYhmmwGFIDXcAchcc0HsAfDVWzjcDBJuMSirIcocjO8a7eptBt6XMszOpk2SvCZy
         Yo8YMU3EflciWznjpCK/wz5osBHlvsL+m6Y1PfGK08fC1fIuO1mdkbzR2wmrzq8MtGOS
         feX345gFYIrBkWti3UL4TaiFKnB7yiaCuSxwWvRnd3wsiUeqLLcB7jPJ2+N4HjOXFITg
         w4KA==
X-Gm-Message-State: AJIora8mRYueNQgyJVASyYQu5e+9VSF3KStsLWz/xykV1rZugdPhGVkU
	BEf4ee7U5+/l5bgnYu7ppweXoBIoWiUaYjFjR4s=
X-Google-Smtp-Source: 
 AGRyM1u2XcnK/TGC8r2cQKIO0ikecVabKI1rPzU9YVBHh86lgiY2xOD+dCmxutnvzE81Ikia2JA+3TC2X/DQrnPtenI=
X-Received: by 2002:a05:651c:385:b0:25d:d821:e0e with SMTP id
 e5-20020a05651c038500b0025dd8210e0emr383361ljp.56.1658306624032; Wed, 20 Jul
 2022 01:43:44 -0700 (PDT)
MIME-Version: 1.0
References: <11765.1658255411754201332@lists.yoctoproject.org>
 <11765.1658300847945273861@lists.yoctoproject.org>
In-Reply-To: <11765.1658300847945273861@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Wed, 20 Jul 2022 10:43:32 +0200
Message-ID: 
 <CANNYZj83BZVEKNwZLSNVntGk6zNOuX87B9+-P_kMSwi9hsMRgQ@mail.gmail.com>
Subject: Re: [yocto] Error while testing "core-image-minimal" through "bitbake
 core-image-minimal -c testimage -v" #linux #warning #toolchain #dunfell
To: Nikita Gupta <nikitagupta2509@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 20 Jul 2022 08:43:55 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57584

This is not what I asked for (which was output of 'env'). Also, this
shows the output of bitbake -c testimage, not of runqemu with
nographic parameter.

Alex

On Wed, 20 Jul 2022 at 09:07, Nikita Gupta <nikitagupta2509@gmail.com> wrote:
>
> Hello Alexander,
>
> Please find the output file in attachment .
>
> Thanks
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#57583): https://lists.yoctoproject.org/g/yocto/message/57583
> Mute This Topic: https://lists.yoctoproject.org/mt/92435401/1686489
> Mute #linux:https://lists.yoctoproject.org/g/yocto/mutehashtag/linux
> Mute #warning:https://lists.yoctoproject.org/g/yocto/mutehashtag/warning
> Mute #toolchain:https://lists.yoctoproject.org/g/yocto/mutehashtag/toolchain
> Mute #bitbake:https://lists.yoctoproject.org/g/yocto/mutehashtag/bitbake
> Mute #dunfell:https://lists.yoctoproject.org/g/yocto/mutehashtag/dunfell
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

