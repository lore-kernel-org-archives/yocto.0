Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55AD3C4828D
	for <webhook@archiver.kernel.org>; Tue,  6 Feb 2024 14:46:27 +0000 (UTC)
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com [209.85.208.178])
 by mx.groups.io with SMTP id smtpd.web10.23213.1707230781334850816
 for <yocto@lists.yoctoproject.org>;
 Tue, 06 Feb 2024 06:46:21 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=ClyYyyau;
 spf=pass (domain: gmail.com, ip: 209.85.208.178, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f178.google.com with SMTP id 38308e7fff4ca-2d0a4e1789cso28637841fa.3
        for <yocto@lists.yoctoproject.org>; Tue, 06 Feb 2024 06:46:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1707230779; x=1707835579; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xJvK+1cWA3gZzOPyEKYpvKNT+df4CMUDe7wF84iiTuA=;
        b=ClyYyyaua/FoJQsA2tmg1kAXV7t3XZTPfsxxRv62nfmR9jS/DQuy9ErhmguQonghO4
         jiPX69CQpuYybwpYrqhUiJMTmknlsstFqrxo1Z6J1gy8AaStmTsGwpRqHX3KzA4BIVT4
         9RJxhzvceT6f5zgbjQLth90wt4L8qXxWSkvg7ZpY86wqiIik/Kz8WdIEg7065gnljlzr
         DF100bH26CkJmgEW9xcpMTnWymN8rPQGNwnEZlwaLBRz+g0vq376pg751ZgVHuDdF9UT
         hTe01H0yyRhe19UUv72noZwNk6KmOB3FOiF++PWbBWgT51TKbM++k+tytI9FU1fF9W+7
         /DJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707230779; x=1707835579;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xJvK+1cWA3gZzOPyEKYpvKNT+df4CMUDe7wF84iiTuA=;
        b=UUu6R1M8CJq0TJTOf1Ax9Or6OpHdUlQKeyaO97upQtdeR2d2ozBvBrtHXQK07FnBUn
         r+KZfcqrRpvlb2D2ceg5YDxs1BZGn+c/W7HUhHrmTAS1a+8nicD3qD36kv1hILSidIZG
         b9QiTJ9j/tgNLr5nahkj1egqGzaIFdTF8wrd0B5QQSzVNi2BaMx4vTCeJz17ct5WPA0C
         wT3HZbSyKZloVCNmEO0jtDTuFM7+zzq04Sim9HtKvhIx4ZAX2hjkuXifaAF/MYo4bCl7
         7JYUMcj66BhFz59sSBc60DHDlStqB4CkdYWHb2iApZbEI1QfGD3bB6AA0W2pIaSfeUyk
         Wx2w==
X-Gm-Message-State: AOJu0Yy+qo4girXWP4/BGvkcxkqN9C03cMjvcCymQcqN5AYN5T2l/kmi
	usM+p89yi+9GgwSFu9h5Pz7FSWjYfOKQqiKwR4CRpij335dW1bVHsKBeI+NaNJkRMx7mBaXKTT3
	5qjlZzPmM0rWZ34d/6B9OdGcYPQYaAdyK
X-Google-Smtp-Source: AGHT+IGPw3j3xpiuX3M6As3JBi5AP9D9sjYdJgngsvE4L0YsrDSwY5SwJK8xBLdUcfMT2a1CM+2Q+aRAT3IiPnChptU=
X-Received: by 2002:a2e:920d:0:b0:2d0:99e5:84b with SMTP id
 k13-20020a2e920d000000b002d099e5084bmr2303006ljg.9.1707230779175; Tue, 06 Feb
 2024 06:46:19 -0800 (PST)
MIME-Version: 1.0
References: <yzLo.1707230479202311438.Hvkm@lists.yoctoproject.org>
In-Reply-To: <yzLo.1707230479202311438.Hvkm@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Tue, 6 Feb 2024 15:46:07 +0100
Message-ID: <CANNYZj9_iA6oSOH8wRaOHDeNVTKijnq+S8AFcU45Sny-SUvGuQ@mail.gmail.com>
Subject: Re: [yocto] SDK: Install recipe dependencies only
To: yocto@lists.yoctoproject.org, kubiznak@2n.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 06 Feb 2024 14:46:27 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62405

On Tue, 6 Feb 2024 at 15:41, Petr Kubiz=C5=88=C3=A1k <kubiznak@2n.com> wrot=
e:
> This works somehow, but:
>
> 1. Dependencies are not defined right in my-app.bb, where they belong.
> 2. Runtime dependencies of my-app are not installed in SDK and need to be=
 further explicitly specified in `TOOLCHAIN_TARGET_TASK`.
> 3. Native dependencies conversion is cumbersome.
>
> Am I overlooking a mechanism how to identify and install all dependencies=
 of a package without actually building that package? It is clear that auto=
matic runtime dependencies resolution couldn't be performed but perhaps all=
 provided packages (with some exceptions) could be installed. I mean, if fo=
r example `harfbuzz` is in `DEPENDS`, all provided packages including `harf=
buzz-icu` can be installed.
>

This might not be suitable for your situation, but I strongly
recommend you look into 'direct SDK' workflow if your yocto is recent
enough. It was implemented exactly to fulfil the need for an SDK
environment that is accessible directly from a yocto build (with all
the possibilities of updating and rebuilding, and adding more
dependencies etc.).

Alex

