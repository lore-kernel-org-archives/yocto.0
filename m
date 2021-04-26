Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web09.4072.1619425106826620520
 for <yocto@lists.yoctoproject.org>;
 Mon, 26 Apr 2021 01:18:27 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@blade-group.com header.s=google header.b=SBL7tbot;
 spf=softfail (domain: blade-group.com, ip: 198.145.29.25, mailfrom: yann.dirson@blade-group.com)
Received: from mail-vs1-f52.google.com (mail-vs1-f52.google.com [209.85.217.52])
	by mail.yoctoproject.org (Postfix) with ESMTPS id E2AA738C069E
	for <yocto@yoctoproject.org>; Mon, 26 Apr 2021 08:18:25 +0000 (UTC)
Received: by mail-vs1-f52.google.com with SMTP id k19so14746030vsg.0
        for <yocto@yoctoproject.org>; Mon, 26 Apr 2021 01:18:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=blade-group.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=4JKCQ/jk7D4oWIqgivBJAq/1nwC+itQmyHLOWR+4daA=;
        b=SBL7tbotQd8cEWYgATfU7z2kjahC50hFXw2ZO0QBafGJ6Fj4d1kP0iwmBRZqUhOxFV
         Kg5Kdv/RYyi5CePddicckQIcG9cJpfb2xPvHFkc+MvFfu9PRk0thNRnvJsvSHeDqv9KJ
         4wXupAHtJE5o5d01U02vqbgV5qlYqregcuDonICAId4rc4HrhZnC4/1/2tnLPvoGcGFL
         UeYeVvxtNLZKsFAb1/bSLrwqZ2UWXwR7YUdaEqDq5foWEu0Jhb6hdv0uy+XWfD8T9cIE
         NoAz1uH0irW2Q8Z5oTrvC82WKRcNuJV3hGihRK2gtjZ67Zxp2Y5cgDk/K/8r+XcTTpYK
         wLbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=4JKCQ/jk7D4oWIqgivBJAq/1nwC+itQmyHLOWR+4daA=;
        b=aQO/ZSLqRnR1q1X0qXpyAZyOAprj0Rt8IC3es4adt0UKnn4jiCwgZEu0oU9QeMqEOW
         aLIzbBAZUmRkZjs+iyes6o+ut5+K8k+jWxw92kL6WHw3kioUvr1qLrHH8oRqwW6BGnPP
         q6kIzbcIXfvzsg3lZQW18I2RB3zIvJPPfAiV64ADIIg8OsYEnbyzGXItpjTnGjc3+Jen
         IbfMxBDNhsP+7YttPyJ/mCMcv3dE7LeoJNCtiPAEGwK/X7KQZz3e62oZyR/Pr9Xvj2vD
         HaZQoP7NkHE9T9LjJuGjjoL+7ybLBpSV7MLAq9VMLEFoqkJIagFEt9OVkE0BG8SBMP/L
         tK4A==
X-Gm-Message-State: AOAM531xO/TYskKDbYv62LG4Lm+UGhGfPjTyZ/uA4a7XmE8n9ocpBmTk
	o/ERnSTJJdHzhDMMEvXwwkkhlitUoCfHqpc6/2wEfP+U7eY=
X-Google-Smtp-Source: ABdhPJwk+/3+lEPFj5IkSS/VeLuTLQQ4SLiaDHQbg0ZWuHjdzpliKP256hZoVDHwvyj0cGsgXQeBVJGmEqStnQY/Znw=
X-Received: by 2002:a05:6102:418:: with SMTP id d24mr2056052vsq.54.1619425105008;
 Mon, 26 Apr 2021 01:18:25 -0700 (PDT)
MIME-Version: 1.0
References: <20210423141713.1970329-1-yann@blade-group.com> <1678826E6B5435AA.9108@lists.yoctoproject.org>
In-Reply-To: <1678826E6B5435AA.9108@lists.yoctoproject.org>
From: "Yann Dirson" <yann.dirson@blade-group.com>
Date: Mon, 26 Apr 2021 10:18:13 +0200
Message-ID: <CA+4=imZwt7i3EO6MFvKwNJwOUcbTp9K9b2oEN_U1pUTBGJxrpA@mail.gmail.com>
Subject: Re: [yocto] [meta-rockchip][PATCH v3 3/3] linux-yocto: add an initial NanoPi-M4 BSP
To: Yocto discussion list <yocto@yoctoproject.org>, Trevor Woerner <twoerner@gmail.com>
Content-Type: text/plain; charset="UTF-8"

>  create mode 100644 recipes-kernel/linux/files/bsp/nanopi-m4-standard.scc
>  create mode 100644 recipes-kernel/linux/files/bsp/nanopi-m4-tiny.scc
>  create mode 100644 recipes-kernel/linux/files/bsp/nanopi-m4.cfg
>  create mode 100644 recipes-kernel/linux/files/bsp/nanopi-m4.scc
>  create mode 100644 recipes-kernel/linux/files/bsp/rk3399.cfg
>  create mode 100644 recipes-kernel/linux/files/bsp/rk3399.scc
>  create mode 100644 recipes-kernel/linux/files/bsp/rockchip.cfg
>  create mode 100644 recipes-kernel/linux/files/bsp/rockchip.scc

Ah, I forgot to put all of this in a bsp/rockchip/ dir, will reroll.
