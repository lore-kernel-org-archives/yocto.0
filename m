Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6CF8AC369C2
	for <webhook@archiver.kernel.org>; Fri, 25 Apr 2025 09:11:57 +0000 (UTC)
Received: from mail-qv1-f43.google.com (mail-qv1-f43.google.com [209.85.219.43])
 by mx.groups.io with SMTP id smtpd.web10.2786.1745572309888237627
 for <yocto@lists.yoctoproject.org>;
 Fri, 25 Apr 2025 02:11:50 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=EEcUk8bX;
 spf=pass (domain: gmail.com, ip: 209.85.219.43, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qv1-f43.google.com with SMTP id 6a1803df08f44-6e8f8657f29so19479376d6.3
        for <yocto@lists.yoctoproject.org>; Fri, 25 Apr 2025 02:11:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1745572309; x=1746177109; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8GXjU/cMRuDPR7vmU1WdDt+P1M2Y62DC4Td1ERGYUps=;
        b=EEcUk8bXeteVsN7SuCy11eIpVuXp9eRSWNG3YbR7RB5/ABrE08s57sHjrixGF5DopU
         VNlEBOCwD5Y6X0Yw2kJRZBXTlmzTkM24FDatgPJQFyXPvwZpbJ93+Du+MMkSWxe5UL2b
         zHlRpISNE9S7q3p5/lNz1hi4KuDAGGnT9/BZ6CV+3eGUNY0A8Ydqfp7JTXKiYJuy6lui
         GctzraqNONnjkifcQGhpexNsYfzC+CHWtBVYpntAji69CNYx0ycrYHRtDzFwxeJ2lLLm
         nHj6/L0aamHj3fsDysLnPAEd+K7SaOV08867JMJCyLZVW7ZdJBlgjbpwHoNcPUxNhqzv
         2nXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745572309; x=1746177109;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8GXjU/cMRuDPR7vmU1WdDt+P1M2Y62DC4Td1ERGYUps=;
        b=GTzpV/Tan6qMLF98+0XUpgDk/UyAdSDnJWzfxQuQdklfRQbQM6gD0Z5ZX3DTeY3sc3
         W9Dbcu6SC5kdVxxo4fU11G6Plef5HuyIcGzJ1DLIvCIKAuGXPmLPmKiLiO41q8Q/h0FR
         Aob5k6VXUF5PY2tNYsVp6DHFE4LfEbSgcB+Y+mw8+Re+caMIzs1XlJITVSOF/OHvX3Cq
         Sdv65FuhV7knbJ/u2WmaFWgnNfvkuAszx7tcOsMzaFI6MBC2l3XfuTERJHfGMkTxu+Oi
         qTNTkwCo9hYWrS9U6PlQA8E6xFZV6tebJ9nsXQCi3Aw9zv8teM9TEvRh2vlNuWxHcr3A
         xW1Q==
X-Gm-Message-State: AOJu0YzDe7PyYpH8xGL7kwrU7jHfz7QMTkuj2JEV/+3k0ORpdX7i5nAS
	bal4MuT+Ss322/gMApoHQXVRj1rB6Na6Z5IJtPEGm4hgzVwGCuysdUjl4eGKfeaN4yBrKAzy0Zx
	spxKWcH0PP5wbg9KczkiRClW8wZZtow==
X-Gm-Gg: ASbGncv7zhSCq8BnNrsYHARJOzLbCcCWNZ6qvnVh4GQFzAhYIC0u/tnAhJPPW9RjB32
	H8rvy37KU9rYPPf+A4ILqHFPmFuCOiu4kD09jHYXywU06M/bgYyT6l535DCEIBhYzS3o1PR60wr
	mheLJVyZSspmA1fjZaebqw0KoVwix3WytgJYSIipVnodKH2h9xvjDBhqIo
X-Google-Smtp-Source: AGHT+IEbqoRM6bdy4wQcn7Jyifux/pT1hzgtL/6HXM5SCP1L3YuzbJ28qjZZDmvw1bQ2Gz+vN2janymyjwfzVF14KVc=
X-Received: by 2002:a05:6214:ca7:b0:6e8:9321:87cd with SMTP id
 6a1803df08f44-6f4cbb59f54mr21639926d6.40.1745572308797; Fri, 25 Apr 2025
 02:11:48 -0700 (PDT)
MIME-Version: 1.0
References: <20250425060119.5092-1-denisova.olga.k@yandex.ru>
In-Reply-To: <20250425060119.5092-1-denisova.olga.k@yandex.ru>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Fri, 25 Apr 2025 11:11:37 +0200
X-Gm-Features: ATxdqUFW85RaF82IHdicxpRB2O-NzwLKrjdudtrmDEkGV60g_aSXWhE3FFuWsIk
Message-ID: <CANNYZj-f+LsCv=Ez-NPo4M-vh1V4nK2t3tFh3X38pZXYmJnuZQ@mail.gmail.com>
Subject: Re: [yocto] [PATCH v2 0/3] Add support for index files in SSTATE_MIRRORS
To: yocto@lists.yoctoproject.org, denisova.olga.k@yandex.ru
Cc: gavrilov.andrew1999@yandex.ru, tinyakovx@gmail.com, 
	sider123456789101112131415@gmail.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 25 Apr 2025 09:11:57 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65252

On Fri, 25 Apr 2025 at 08:02, =D0=9E=D0=BB=D1=8C=D0=B3=D0=B0 =D0=94=D0=B5=
=D0=BD=D0=B8=D1=81=D0=BE=D0=B2=D0=B0 via
lists.yoctoproject.org
<denisova.olga.k=3Dyandex.ru@lists.yoctoproject.org> wrote:
> The performance improvement is illustrated by the timing results chart av=
ailable here:
> https://drive.google.com/file/d/1kH3E3jRAqJ_1VR2b-20V9BS-uTAfoYKv/view?us=
p=3Ddrive_link

This chart shows zero times when using the index regardless of the
amount of servers, how can it be correct? What was the methodology
used to produce it?

Also it doesn't really address the questions: how is your setup
configured? What exactly is the source of the slowdown? Is it network
turnaround times? Or file existance checks on servers? Why does it
affect you to the level that all this complicated code was written,
but no one else in the yocto ecosystem until now had the urge to do
it?

You really should to start a conversation about this, rather than just
resend the patches with a dubious looking chart added on.

Alex

