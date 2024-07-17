Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A36A9C3DA42
	for <webhook@archiver.kernel.org>; Wed, 17 Jul 2024 09:45:53 +0000 (UTC)
Received: from mail-lj1-f169.google.com (mail-lj1-f169.google.com [209.85.208.169])
 by mx.groups.io with SMTP id smtpd.web10.11530.1721209548218581264
 for <yocto@lists.yoctoproject.org>;
 Wed, 17 Jul 2024 02:45:48 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=nbLrJ2e1;
 spf=pass (domain: gmail.com, ip: 209.85.208.169, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f169.google.com with SMTP id 38308e7fff4ca-2eec7e431d9so84946841fa.2
        for <yocto@lists.yoctoproject.org>; Wed, 17 Jul 2024 02:45:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1721209546; x=1721814346; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=HZwtX13pyzFYtr5lPmFoS0d11KpPdT5AQVp+6Ros48I=;
        b=nbLrJ2e1MLt7+lV6Qwk+BHAbiuKT8C3F4Ex34kY3oDoFXeplYUkOtw2wWEzHM3D39M
         if63jOe/x/qDSPpwL7xLaJyF2aZWUCerM2n6KxcAXHu8AMfmpKE/SY/Txn4HRYF+WR5W
         i4wHn1/x5fZOtw9f055kchvq6TjdD6ce6HhDDABoz8Cyd9OiCWgC3Q0lx5svdMPESjJW
         p//lUAYyelYnSnwleEpvmR9OvOIly+GBPxf9dUNr6RUZTbWgctupjHM3w5Tqdiz3XzIO
         rgFFxZmTNQxiRbcPL/XrXOB6RerK3FWQ7B77MbKHZRXJ9x/MCnyyfcee5BeUovei8ZvK
         BXXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721209546; x=1721814346;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=HZwtX13pyzFYtr5lPmFoS0d11KpPdT5AQVp+6Ros48I=;
        b=sJ629HMZ/XA7OxBS8ACtPbFOU4wvWM+4fP/PK7mIXaoLHo4fZYSvCrssJuID1sh4mi
         d6kwvsOdpM23+XAajyR1Y2H0vl4F0RDvWZ0xTQbO8KPklE+GWdDnoFNYlKpgZiZ/Jrbn
         3A4SMSlLXRRmnn3hMvHg19ObERwaCfiOMA/9QOEYyUfjsxW7J4UgjbVUJLAj+NjkIlJS
         QETjB8v6U680mYsOonZ6UNKIaOlVMwPUZn3z7qj/JgkW3C8svb8yLHoqbwYjDmLfVP0I
         4e+zUdIQnF8iW5k0PX8cgFw/5cF6DTsxO5Fdwl8GAFawXYdWY19P0UNoI1xZhSW8eQ8V
         8plA==
X-Gm-Message-State: AOJu0Ywc6fWHKM1lJXuuUFkGGms5beH83DoekBY1lOjPuyn3ttNYXPjc
	9BDBFoa46grK1V92PfBBTuYx153BcvijKXeQP29WbA/wrbMXmMtGAEWFOi/v2EMC3007UrJn3Ls
	vx/3M0AIO99qsomDpZvVkq2K1zVJMEA==
X-Google-Smtp-Source: AGHT+IGeZ20lEEk8eqwKVCcG8wzLMXdFA856W6SJaEBFsLshkW3WA2Y3hXtmEMkMvEYdmCX34J145bNEhooiovZjOtY=
X-Received: by 2002:a2e:a784:0:b0:2ee:bdc8:2ce8 with SMTP id
 38308e7fff4ca-2eefcdf0853mr9269441fa.0.1721209546231; Wed, 17 Jul 2024
 02:45:46 -0700 (PDT)
MIME-Version: 1.0
References: <323O.1721209220834479878.aRt8@lists.yoctoproject.org>
In-Reply-To: <323O.1721209220834479878.aRt8@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Wed, 17 Jul 2024 11:45:35 +0200
Message-ID: <CANNYZj867bkBnut1xdUDCk+pnLagcAqLkn8Jv=2qg6FMrc5tgw@mail.gmail.com>
Subject: Re: [yocto] Native causes installation of static linked libraries.
To: yocto@lists.yoctoproject.org, kfa@deif.com
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 17 Jul 2024 09:45:53 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63524

On Wed, 17 Jul 2024 at 11:40, Kjeld Flarup via lists.yoctoproject.org
<kfa=deif.com@lists.yoctoproject.org> wrote:

> FILES:${PN} += "${bindir} ${prefix}/tools"
> FILES:${PN}-dev += "${datadir} ${prefix}/tools"
> FILES:${PN}-dev += "${bindir}/fast-discovery-server-1.0.1"

Also this is contradictory and incorrect (target tools should not be
going to -dev). I'd suggest not tweaking -dev packaging at all.

Alex

