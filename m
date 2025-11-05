Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F19A2CCFA05
	for <webhook@archiver.kernel.org>; Wed,  5 Nov 2025 12:00:35 +0000 (UTC)
Received: from mail-qv1-f47.google.com (mail-qv1-f47.google.com [209.85.219.47])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.7814.1762344033843878455
 for <yocto@lists.yoctoproject.org>;
 Wed, 05 Nov 2025 04:00:34 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=An2Y+HZp;
 spf=pass (domain: gmail.com, ip: 209.85.219.47, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qv1-f47.google.com with SMTP id 6a1803df08f44-88044caaa3eso53209786d6.3
        for <yocto@lists.yoctoproject.org>; Wed, 05 Nov 2025 04:00:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762344033; x=1762948833; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2rlAblCwwo0HAMyB0ICu2pnwQQiUF6THNeJucgig/aw=;
        b=An2Y+HZpXsuyGSuShRiwvCbKGDkrHI0TxQlNdkakPOKOOBYoZiou5hDfbe0bD26YRV
         AZXmkn08018/raQ5UyfB2wHySeexGV0Aav4Ealz+Siv7hBE8fTz+MbHf0MpuQY7jhrxt
         HOy7gE4rJLvfhTxlEW/Ig13QzxPMpLbqT18qWjTw9v4XDqH5YpY9Uw/Glu37M79vBLOV
         JEAx9M1nRmYZjbsV+f0zXkfEb+ebpU8p2mQcR/4TQNUVObugghoYkjlmzLEPEXhoisWq
         iOCfV6gw7FGE/vWnzAt8qIDIZ4Auqi+zKpMRx/UpSKa46++sqM+x8TV+oYxi27kkoesI
         huBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762344033; x=1762948833;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2rlAblCwwo0HAMyB0ICu2pnwQQiUF6THNeJucgig/aw=;
        b=H97Ym3qCOfj3F2C/h04vZ/uiXr2E9665FcRFvsjOucn4L8nFCBpWnsyoXYkvsATh81
         1vZlzTVsZvYlU1zPgnZa5OrhhLtdhNw+xxSQywwEi9WeRJog033dr6TavcpWnj5hB+aN
         VG9pwrfvVlJznk2yOOeB+6oQGAIxxJt5nPNyk7eL8bIxypzDxQQ9sj6qqvLduWkY1+/v
         FNqCQhOCyzP6dnVHjcGYlHdMtW5jn3qJTIK8OkkyM/h3KGk6gErXdUVwOgVu6uOJABtm
         lT1mk8n7oWv8UCISXzaFGj2omELzn3MbDQ/AoK7D/19HNGmVHxvw14bhF599QHGwrQj7
         63hg==
X-Gm-Message-State: AOJu0Yxh4BfXucbg4oneVRFkQthNAuKlGaAiyF+ZtBbHkWHYSZCjuuw1
	YtCXBBDVgvxNlu3hquURhX0hSKrx2I6cvZzR4P/Pt7ecA1J/D8OSKKLTH81zbc9Y4g8oKS4tftB
	IcG+RvDjmcU1hPwLtfA/6kjh/ldnu3uJXKUoW
X-Gm-Gg: ASbGncsPUxqd7w6BOuSlyYD929Hp4MOmT/TMIuUjPpj17Fvne5Z5fzYcRaR6e+RnrAl
	Kp9soQay4jfVvuqGtv3xHNFGunA4x8lgQlp50u4m74VOx0tN8Em4OPGMFVu4NbteQktLKb/3DYX
	vqH4wGZn7N1nbeHeYx+x+2Ojz1MO1V/oLpjgoHOwMOhGFlUZHl3TkmEWElHT3ZZTawA23l1Zuwt
	nFJmTBUmNb7BrgCbGhFuavFldYEbLikvp9ZJkwm5ghdyM/m+Njwb1TOcw==
X-Google-Smtp-Source: AGHT+IEHaR5ym7JXOQlAcCjuUj/yyTn3e+9DXWQHq2gvTV71J7UnZqU82LI6PScZQpaJLha3O1hUd2LNcf3sX9ffEvA=
X-Received: by 2002:a05:6214:268d:b0:880:298b:3a6d with SMTP id
 6a1803df08f44-8807115b92bmr41361836d6.35.1762344032072; Wed, 05 Nov 2025
 04:00:32 -0800 (PST)
MIME-Version: 1.0
References: <CAK5yBb_WSR5bx17YakRTQCmgJk3v=dDEtpJM1m_C3NrtN6bwCg@mail.gmail.com>
In-Reply-To: <CAK5yBb_WSR5bx17YakRTQCmgJk3v=dDEtpJM1m_C3NrtN6bwCg@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Wed, 5 Nov 2025 13:00:20 +0100
X-Gm-Features: AWmQ_blAIuCX1c31AtgXZHk7AlfDN9dc1gw5KreGup_lwPOk0vt2GxDezIWWFBY
Message-ID: <CANNYZj-nXjV016A3bgALfe-OHqsoQDtFuci9hpw8GDLjNSiNMA@mail.gmail.com>
Subject: Re: [OE-core] Yocto Project Status 4 November 2025 (WW44)
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Cc: ",openembedded-core@lists.openembedded.org" <openembedded-core@lists.openembedded.org>, 
	yocto-status@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 05 Nov 2025 12:00:35 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66006

On Tue, 4 Nov 2025 at 16:48, Stephen Jolley via lists.openembedded.org
<sjolley.yp.pm=3Dgmail.com@lists.openembedded.org> wrote:
> We are now past the feature freeze for YP 5.3. To be accepted, patches th=
at have a high bar until after we branch master from whinlatter.  Known iss=
ues:
>
> check-layer tests are now running under nodistro instead of poky, so some=
 layers are failing as they assume some DISTRO_FEATURES are enabled.
>
> Toaster is broken with bitbake-setup (#16012). Help moving to supporting =
non-poky layouts would be good if anyone is using Toaster.
>
> The patch/cve metrics jobs need reviewing to be sure they=E2=80=99re corr=
ect with bitbake-setup (#16013)
>
> The build performance jobs don=E2=80=99t know that poky and oe-core are t=
he same so the charts are currently wrong (#16014)

AUH broke as well. I'm testing a fix:

https://git.yoctoproject.org/yocto-autobuilder-helper/commit/?h=3Dcontrib/a=
kanavin/fix-auh-bbsetup
https://autobuilder.yoctoproject.org/valkyrie/#/builders/38/builds/31

Alex

