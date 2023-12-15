Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0A4D5C4332F
	for <webhook@archiver.kernel.org>; Fri, 15 Dec 2023 17:51:16 +0000 (UTC)
Received: from mail-oa1-f46.google.com (mail-oa1-f46.google.com [209.85.160.46])
 by mx.groups.io with SMTP id smtpd.web11.69195.1702662673632357990
 for <yocto@lists.yoctoproject.org>;
 Fri, 15 Dec 2023 09:51:13 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=UOhRNzaC;
 spf=pass (domain: gmail.com, ip: 209.85.160.46, mailfrom: raj.khem@gmail.com)
Received: by mail-oa1-f46.google.com with SMTP id 586e51a60fabf-1efabc436e4so531464fac.1
        for <yocto@lists.yoctoproject.org>; Fri, 15 Dec 2023 09:51:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1702662673; x=1703267473; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rXiLBWN/xGDIWw3m87S5pv1TjF3B390oKxpBSrv+8z8=;
        b=UOhRNzaCQC3OkMw7yUgEX4wfEOo96I1KZmzLg9Ak+JiFMswH0ki0cySpxytvpoRwWr
         wZM34E/bG3Y7J29qi6scZERPYsEpEBpzQHQkOYJSBUmDss8vcdof3QHy+QIKR5UVv2TT
         7rm+xnZRdePWVYckuRGeheAtL4RwqL4dSdxPgbWEgVO1/3E8cFAEFKJRF6JZuOtnyc/k
         MUX5m9pJKwATHv2zGDyt1r68f/LvR2sckyoZ0AjvN6h3mzbOalc3FPo7HlN9aCuYwBUA
         MCEdzUhHUr00iSeIIO64w0gXyzKQoC882ZOxjjjAc0M97J5vzqFq8W4vPN1QkrggWGoB
         Cwog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702662673; x=1703267473;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rXiLBWN/xGDIWw3m87S5pv1TjF3B390oKxpBSrv+8z8=;
        b=J4jVxaamiUxU9s0zByvbak7mQgo9+HgDLgUtk61fEMbFi8SlzgwzM3l5VqJf/NNcFs
         68DzcChY08WY0ix56qTnL3a08kiFtVBNauPKY+oGked5nB/DKE+M4OpiGksKMdi/ZP8Z
         PECEZfRkRBJ++YMvoECX6EkRwxQNJemuIFHtHQdY5DzDPe9GNKbxzAroHu2SD1VQsKzj
         /igos55H7b5h8SztXLNlMGd7gZEXSH+WsPS2frk36cjQg7Wm8yZtJHVtg8vcyDcqIiQo
         5FA+V777d0iKteFg4lini6Nxaf71OovHIglPg7RJKd2jZKiAHY1oUyZN+USxzKtIaUvR
         E3/g==
X-Gm-Message-State: AOJu0YyVLoCGCDoN26P9lf5lJ323lvbu70rxTBXc07G+LDjybM6hXUjE
	n+WOouFACfiaHPPJV8gXEgHTZlL650t+k2TaT0AUgx8z
X-Google-Smtp-Source: AGHT+IGLoYn4E6tg32HeDns4lkcl5CvQdim85+y8M8BJpfUeWQPqbyzCW9AhjxmxBxE6P5zONxoHBENPNALYuX9hsAQ=
X-Received: by 2002:a05:6871:d216:b0:203:1833:bb0a with SMTP id
 pk22-20020a056871d21600b002031833bb0amr6257411oac.34.1702662672729; Fri, 15
 Dec 2023 09:51:12 -0800 (PST)
MIME-Version: 1.0
References: <CAMKF1soJSbBV1tHaNm9eVTifvspOT89vAOYCH9bYNqj+0EaQDQ@mail.gmail.com>
 <2894.1702662476950095858@lists.yoctoproject.org>
In-Reply-To: <2894.1702662476950095858@lists.yoctoproject.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 15 Dec 2023 09:50:46 -0800
Message-ID: <CAMKF1spSzo-CfFSW0ELCXOoiBeV=Zf7jmtJ=FM5Yr0n2qmgvVQ@mail.gmail.com>
Subject: Re: [yocto] Wireless interface (wlan) not shown on Raspberry Pi Zero W
To: Renato Mendes <renato.mendes.pes@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 15 Dec 2023 17:51:16 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61914

reread what I said.

On Fri, Dec 15, 2023 at 9:47=E2=80=AFAM Renato Mendes
<renato.mendes.pes@gmail.com> wrote:
>
> I'm already on kirkstone:
>
> git clone -b kirkstone git://git.yoctoproject.org/meta-raspberrypi ./src/=
meta-raspberrypi
>

