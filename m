Received: from mail-yb1-f172.google.com (mail-yb1-f172.google.com [209.85.219.172])
 by mx.groups.io with SMTP id smtpd.web11.29100.1604311532975858725
 for <yocto@lists.yoctoproject.org>;
 Mon, 02 Nov 2020 02:05:33 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=NSesH7Wc;
 spf=pass (domain: gmail.com, ip: 209.85.219.172, mailfrom: jupiter.hce@gmail.com)
Received: by mail-yb1-f172.google.com with SMTP id f140so11282847ybg.3
        for <yocto@lists.yoctoproject.org>; Mon, 02 Nov 2020 02:05:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=mRCG83sDTBCDeoLR4T8BepC3QEqGnw4jyU6mGezZNcU=;
        b=NSesH7WcRaEwBpNRbkpvm7PIsyYGaCVySre1XQXVuLpAqnMKi3epc3QlMDrkKl6o8c
         WoDynyIHBJaMlzo7MsEfqf75U1rY+TS0PcVK6EdeDrr7HXM93Mx7QHDtWYn+D79Bk+xc
         UK/kFWvZ+cJJIqXtVoC2L55T1+6ir/J9vMI2TsV8VeiMNSVo5gSk9hsHsztXoLyqG91A
         B/W11cJEOye4ElfaGGECplNk06YqO1uyQl1uVKZOtDC+QMHYLgkdllfSqnTrzhTaRpB7
         kL76oIjWUZxxbfluWsczqp5g2psDgoIBeitHE6Dl0KNnuUIe91L/A2u87giz7u4q8MON
         VlZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=mRCG83sDTBCDeoLR4T8BepC3QEqGnw4jyU6mGezZNcU=;
        b=HpyTI4mpf0MLuGVe/zv6TAyQ6IZWeqSM8VmSntQ2Hoa+LY2M3uTfJi7qFP5Yn+5vRI
         a5yeG0YsD+xIzIw9zThwf2740AIm3k3hIif3qhbUipTyzYbWmTbo8uLU2CPweHf8uYeY
         xRzN2eA8xBr9GEW5tTaDupGdSQeyn4jlHMP9HAIYD7iwnpAeHqkUIIg536ySxvJESKuc
         e79JOTyqRepftB2hB5vZ+B0ui0FIYdeTaTMjfEf8Vc4vROBq6PRrJH8pvVpHPPwTXP+B
         M9zCGaC7plGae3apVGJ4HmBSCTqvvORXXE3jj0iV1rIlka+HlbhxgTecUYCFgdGxiX7n
         APUA==
X-Gm-Message-State: AOAM5327qOUvFmZ7sephM0VjpZRHuqNHHSTv2ylO4cw/OXcBq/gHPASV
	M+8WMEiw1tgB6uRNgQfu2vVfxyhsu3KPYpSdIg4=
X-Google-Smtp-Source: ABdhPJwAZbA12nwYEsSSauTirbupeMTRaSY0DYsxgK6LvMHyAp8+HdLwwiuzIb9JBjpIcFfvVxs2ws6xlsFLaN2b9/8=
X-Received: by 2002:a25:4cc7:: with SMTP id z190mr20010273yba.405.1604311532239;
 Mon, 02 Nov 2020 02:05:32 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a25:a16a:0:0:0:0:0 with HTTP; Mon, 2 Nov 2020 02:05:31 -0800 (PST)
In-Reply-To: <a0bbb02c-14e6-e687-9d6b-28d8ed72d002@googlemail.com>
References: <CAA=hcWQnJ1yRTwPF+9kubSt6FQPxwCRYFwXcYR8RnVLs4LMb7A@mail.gmail.com>
 <2234110.ZDGxJVC3CD@ada> <CAA=hcWSAsKEcFaR1dCpCey_m2Z2zOxYT1N8NNjL6bNQxSrHj1A@mail.gmail.com>
 <a0bbb02c-14e6-e687-9d6b-28d8ed72d002@googlemail.com>
From: "JH" <jupiter.hce@gmail.com>
Date: Mon, 2 Nov 2020 21:05:31 +1100
Message-ID: <CAA=hcWSUrd9HcHQ8FZ-shBux6Air9BOTJV7yqQJSBcFLgZah0A@mail.gmail.com>
Subject: Re: [yocto] Install Yocto image and backup
To: matthias.schoepfer@googlemail.com
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

Thanks Matthias,

> The A/B partitioning is very common and I would argue, it is the
> simplest way if you want you OTA Update to be safe in regards of any
> errors (user unplugging etc.) that may happen during write / switching
> to new software. If you can spare the extra partitions on your NAND, my
> advice would be to do it exactly that way, and use a common tool for
> that (i.e. swupate, rauc, ... ).

We don't have OTA update for RO kernel and rootfs yet, I'll take the
advice for running OTA A/B partitioning when the requirement is
coming.

Thank you all for your kind responses.

Kind regards,

- jupiter
