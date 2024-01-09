Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EF72BC46CD2
	for <webhook@archiver.kernel.org>; Tue,  9 Jan 2024 10:44:59 +0000 (UTC)
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
 by mx.groups.io with SMTP id smtpd.web10.13972.1704797090376644233
 for <yocto@lists.yoctoproject.org>;
 Tue, 09 Jan 2024 02:44:50 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=cymVvGJN;
 spf=pass (domain: gmail.com, ip: 209.85.167.41, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-50e7d6565b5so2990241e87.0
        for <yocto@lists.yoctoproject.org>; Tue, 09 Jan 2024 02:44:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1704797088; x=1705401888; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=KIM2diptQWeDPgtJybJX/RM21fy82MJRqJBHmvP396k=;
        b=cymVvGJN0NVVPWT3yYkTQQy1VOW5HxnMJnydSKFsYnPz6L0miYjCvEccEFU0xGZkUs
         8ii4u0Hg6LbwbjC+TFJWyr5WuaJyM8168cMyw6miJRRywSECZ4MTOGMLv2y9wpDRHW0O
         vz/oieJGPgoC+YrJBZeuLwoNT4maJ+PCtklkwqkgqgKnYLo0Cphz6+atzMPFoo6/0McD
         CQ3oICQ1GqF8ZBkJ51JuFXipxlauILY+pJU9qEX6Bfwj79swfgLncUTF8EQNpPOle6/L
         6yqbX3oiac+DYOMbxA5q7+AzRBjGRYqFd9MACsKxPXPz0tzmrUdm1Puf0wfVOvAULWjV
         jOUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704797088; x=1705401888;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KIM2diptQWeDPgtJybJX/RM21fy82MJRqJBHmvP396k=;
        b=c5bcSTtNUidl6ZllFhN/6shnNWK1upwZxx/S9eyhc4t2vUl7cekNTWnQkT4e/AXV8u
         O5vRAdS0ltHFOYUZ0QOXSUp+DB0wktIRODy9iKQhjg3kU60F4P304zFLOICzjdk/1MF0
         34d3BeIBGkQIqDCn5uWwgPxceFUMsteaUGhPDV9N94Oxriq8uVknMiQ7dpHjNmayNL5o
         FEhCdw6nAT7hL52h6dr0V6Q83jN0+obE+n2OpOXfs3Ht/PIxlBk6tZEIYOBUVt67qdru
         BQy91ykXpWhqzqEjJJn72a/51iA5F3xd5zeq39lAxJX9DOVUIg5BNP6aHZ1cjmCbyHsX
         /CGw==
X-Gm-Message-State: AOJu0YyjL7gZKvDRh29x6DjqpgkEiXQVH7jOmYCIWEldPESY4BqvfiKQ
	p2M3kudI0EwgI5/PiblUvUGzWhvA9U8UqXkQ+lUPHBI8
X-Google-Smtp-Source: AGHT+IFyxqZJeYfrbOnTV5EaSkZaRo9yz8KOAGSPhVHWQqgj6ZjWaNsciWMBb7greeGMHDUdND+DaRDJPXjQdH4UBjI=
X-Received: by 2002:ac2:44db:0:b0:50e:b2bf:92ee with SMTP id
 d27-20020ac244db000000b0050eb2bf92eemr2004268lfm.64.1704797088065; Tue, 09
 Jan 2024 02:44:48 -0800 (PST)
MIME-Version: 1.0
References: <11840.1704786438525164797@lists.yoctoproject.org> <28934.1704796928231404958@lists.yoctoproject.org>
In-Reply-To: <28934.1704796928231404958@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Tue, 9 Jan 2024 11:44:36 +0100
Message-ID: <CANNYZj9HfjU25_p9C7HwabP9YaHjMcbL0YTMwLfhLVHEE0Qa4g@mail.gmail.com>
Subject: Re: [yocto] Problem with overlayed recipes
To: yocto@lists.yoctoproject.org, daniele.lugli@gmail.com
Cc: Marco Cavallini <koansoftware@gmail.com>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 09 Jan 2024 10:44:59 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62116

I'd say including recipes across layers is not a good idea to begin
with. Rather copy, rename and tweak it.

Alex

On Tue, 9 Jan 2024 at 11:42, Daniele Lugli <daniele.lugli@gmail.com> wrote:
>
> Thank you Marco,
>
> it is there:
>
> # POKY_BBLAYERS_CONF_VERSION is increased each time build/conf/bblayers.conf
> # changes incompatibly
> POKY_BBLAYERS_CONF_VERSION = "2"
>
> BBPATH = "${TOPDIR}"
> BBFILES ?= ""
>
> BBLAYERS ?= " \
>   /home/vboxuser/yocto/poky/meta \
>   /home/vboxuser/yocto/poky/meta-poky \
>   /home/vboxuser/yocto/poky/meta-yocto-bsp \
>   /home/vboxuser/yocto/meta-openembedded/meta-oe \
>   /home/vboxuser/yocto/meta-intel \
>   /home/vboxuser/yocto/meta-mytest \
>   "
>
> Grazie, ciao
> --
> Daniele Lugli
> General Logic srl
> Viale Curreno, 41
> 10133 Torino
> Italy
> tel +39 329 3933041
> www.general-logic.com
> www.linkedin.com/in/daniele-lugli
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#62115): https://lists.yoctoproject.org/g/yocto/message/62115
> Mute This Topic: https://lists.yoctoproject.org/mt/103602112/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

