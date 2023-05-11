Return-Path: <ricardo@foundries.io>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3AFF8C77B7F
	for <webhook@archiver.kernel.org>; Thu, 11 May 2023 16:31:07 +0000 (UTC)
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com [209.85.167.51])
 by mx.groups.io with SMTP id smtpd.web10.1153.1683822659160625476
 for <yocto@lists.yoctoproject.org>;
 Thu, 11 May 2023 09:30:59 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@foundries.io header.s=google header.b=fX2mPx/3;
 spf=pass (domain: foundries.io, ip: 209.85.167.51, mailfrom: ricardo@foundries.io)
Received: by mail-lf1-f51.google.com with SMTP id 2adb3069b0e04-4ecb137af7eso10075350e87.2
        for <yocto@lists.yoctoproject.org>; Thu, 11 May 2023 09:30:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=foundries.io; s=google; t=1683822657; x=1686414657;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DUV+aZzAn5QLQ012XtqpYGQwbQUqs+3ph1ys4/0vwDY=;
        b=fX2mPx/3yim8idimlY2GHdVPouTQbnhadpD03kK2Q+90hlGTNz3sCx+xB28amnONYN
         fjkXchGTa8PuA3/CKZih2hRQy/neEoBZF/Xb8p6Tt34B/XbKvpjhJyFnBJzpNrWMeEgb
         mFYsFsEWq5jIjwk52VDHacq/8Vrk9J3pthdqR2Sw2qwpIzuAlJLSGtr9spQkdEOSg7Z5
         F2Rl6h+XnkPqBH//70JoTc5/AHWSJ4Z5re2Hm6qb2wWeX+QTItQEZyJaeOcteUGw3Y1f
         aBlvLKJJPLUI2IEpV+pG5gx+Nufv7C2DpW9985Ohc1zmeRlZLS1I9u031vPbedopoEvJ
         cewQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683822657; x=1686414657;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DUV+aZzAn5QLQ012XtqpYGQwbQUqs+3ph1ys4/0vwDY=;
        b=Eu3HzZYykjKlBp35WTYbJqoDouvWrnr9eb5Ny2iP1zPUBZcS5C88anYzI9FoNHirnt
         rJET8HTcPWaeLUFNaTDBQ/vCkXmG1rzMnF9p6i/ODvs1kfe6P7HAe8vk/t5KAr2GkAQ7
         kzXwmPwEuhfnQVACB/ofBKLsbOa5dUtd1yFrjH8jiwzjfC4hIR8n4O5kWDKzCNg5igzd
         TMw/TCSv5HmrKd2vPrgL9LeBxh2bbqewCJlQ/YYDAgxUE09/90BXm8vMtJ9WUe/t6Qhc
         elmB4/i0M9z2X7NirqfuD9Inb6URYyKawRUOZfhqZfZp7zh2i5w4y3tsWSRc0MXW3YFH
         uSpA==
X-Gm-Message-State: AC+VfDwRYulg+1Zo/Mzs526p0Hl0Tt5ranP4JMqtO88gDdMvWESMaPTX
	/jZDEBnjlx45q7wBFxoQgI9qs61UO1/2mliM8+ua
X-Google-Smtp-Source: ACHHUZ4DJihAmWw+bd1sxPAivBfxA5Gr+1hkhn7RVxnOVQ4DSHNYWUCOBcDEHUC5Po42LbD4zviFhDDotvs2p3dRPpE=
X-Received: by 2002:ac2:484a:0:b0:4f1:3d7d:409e with SMTP id
 10-20020ac2484a000000b004f13d7d409emr3203108lfy.0.1683822657043; Thu, 11 May
 2023 09:30:57 -0700 (PDT)
MIME-Version: 1.0
References: <CAPJWBnhEbi90oZmT=Fpz0CJw8av1jpAbe9xxJ=m0wV_YRKzvYA@mail.gmail.com>
In-Reply-To: <CAPJWBnhEbi90oZmT=Fpz0CJw8av1jpAbe9xxJ=m0wV_YRKzvYA@mail.gmail.com>
From: Ricardo Salveti <ricardo@foundries.io>
Date: Thu, 11 May 2023 13:30:19 -0300
Message-ID: <CAAaKDhG3OnofBYYTrO1z0GOnevf8ARjSVL=SU+yHYNyzeaKSYg@mail.gmail.com>
Subject: Re: [yocto] OTA Updates
To: MOHAMMED HASSAN <hassanchattarki@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 11 May 2023 16:31:07 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59993

On Thu, May 11, 2023 at 11:33=E2=80=AFAM MOHAMMED HASSAN
<hassanchattarki@gmail.com> wrote:
>
> Hi all,
> So I am referring this page for OTA updates
> https://wiki.yoctoproject.org/wiki/System_Update
>
> However are these all paid or free services. Any more info about these se=
rvices is welcomed.
> Also are there any tutorials, YouTube videos on ota updates for yocto? I =
couldn=E2=80=99t find any though.

Foundries offers ostree compatible OTA support (with paid cloud
services), including support for the update framework (TUF) and a few
extra CI/CD services, besides device management. You can find more
documentation about the service, the meta layers integration and
supported targets at https://docs.foundries.io/latest/.

Cheers,
--=20
Ricardo Salveti

