Return-Path: <JPEWhacker@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4C424C54E58
	for <webhook@archiver.kernel.org>; Mon, 18 Mar 2024 18:03:26 +0000 (UTC)
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
 by mx.groups.io with SMTP id smtpd.web10.52222.1710784999830492333
 for <yocto@lists.yoctoproject.org>;
 Mon, 18 Mar 2024 11:03:20 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=U+jpjUAn;
 spf=pass (domain: gmail.com, ip: 209.85.167.44, mailfrom: jpewhacker@gmail.com)
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-512f54fc2dbso4316478e87.1
        for <yocto@lists.yoctoproject.org>; Mon, 18 Mar 2024 11:03:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1710784998; x=1711389798; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fJMGe/Fz1EcHihvBmzeU7jGpGWEULhXJcq7L9rzmTg0=;
        b=U+jpjUAnkpHQYQstpPENgix9crIPdtRFdvv++gPy/jShpZLVsOs/Wu4wUKyuHU80eO
         A5487H6I2vau/b9WoNvu9TsUTTaxBgB3ZKy9B1RzFVREELqsCCzL0jp3qVjQI4jo59pi
         AG8ZhhlgedZ4T00FCpIZwCB+kkEfpcVRlS3qOulG19eTJjjCkqeSeQxaGAV/W5dOTp4t
         fKJVOw0d+pPlgMnuMG8SC1PVTFCEB2Eal9fV7xjf5HVOoy5JI2o0m0UtwmfJAdVT6Kpx
         CwT4yCwK3aWzzi0mdHpcE8Y9wygicRg+IcAG37IOueRN8qljnj7SA7nAMxQRkl6pWEcf
         iCHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710784998; x=1711389798;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fJMGe/Fz1EcHihvBmzeU7jGpGWEULhXJcq7L9rzmTg0=;
        b=E9gchfD9E4W1Z6+20aKrUBSb5Ix7yEKRWM+9fR59vFJis+hGtTWDIHPvYgWRU0bd8Y
         SM9Ra5vbKC0evvxHS7Tquba70SIY1chajKuxfm5N8Gtzr18gquGqcQIJMYHnaMoXCgHA
         FsffxHoygC/MstE6j2BfvQ6srl7AuOAr3Ro3WK6Eifa5IX/wS7bufH1+YQBL6RnQpxxd
         jHaBgPTBzbhUjiS3eBDhh/6auWg8ZkHnm7D6+zrCL7IyX8MyX9YQhjGQRCn201J+cFDt
         4TGyk9WCY0fxzD4hOErYulSb3uodXodRHZ57AR/8XEca5+N7V/3G6bGPyEcS9IYaAd+6
         2d3w==
X-Gm-Message-State: AOJu0YyLspFRBcJgFaZFQiK6Ad+ZjvjqbFFXLufSQz99r6fHPH5yxkcN
	BImWmf7CBcQ9iHBlOWkAMSNIIrdWVPHAsVPfJVyrcFRBtP7bJWd7TzF+lyd3CTcZ2S2yuTPJfhc
	t/TSwxsTDcoNESskCS5HRzKaNG0s=
X-Google-Smtp-Source: AGHT+IH7CkBUWv0rzwXu6pxNLqqUwPs2VMYc3vnodBVvGDXRhwYwLEAGaLMBMyeMMto5WxfFOx7+2EZG+a0wT+W5708=
X-Received: by 2002:a19:5e04:0:b0:513:b0d4:da40 with SMTP id
 s4-20020a195e04000000b00513b0d4da40mr6698295lfb.20.1710784997513; Mon, 18 Mar
 2024 11:03:17 -0700 (PDT)
MIME-Version: 1.0
References: <20240318124414.135271-1-samuli.piippo@qt.io>
In-Reply-To: <20240318124414.135271-1-samuli.piippo@qt.io>
From: Joshua Watt <jpewhacker@gmail.com>
Date: Mon, 18 Mar 2024 12:03:05 -0600
Message-ID: <CAJdd5GZjuap5JYFBS9Ppd7qkErnLHf5Z928XPMOL0VOYO=bRKQ@mail.gmail.com>
Subject: Re: [meta-mingw] [PATCH] mingw-w64: upgrade to 11.0.1
To: Samuli Piippo <samuli.piippo@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 18 Mar 2024 18:03:26 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62784

Thanks.

I put this in master-next, but we are pretty close to scarthgap
release, so I'm not sure when this will get a chance to run on the AB;
please check back if it's not merged in a week or so.

On Mon, Mar 18, 2024 at 6:45=E2=80=AFAM Samuli Piippo <samuli.piippo@gmail.=
com> wrote:
>
> Upgrade to latest release of MinGW-w64.
>
> Signed-off-by: Samuli Piippo <samuli.piippo@qt.io>
> ---
>  recipes-devtools/mingw-w64/mingw-w64.inc                        | 2 +-
>  ...4-headers_9.0.0.bb =3D> nativesdk-mingw-w64-headers_11.0.1.bb} | 0
>  ...4-runtime_9.0.0.bb =3D> nativesdk-mingw-w64-runtime_11.0.1.bb} | 0
>  ...reads_9.0.0.bb =3D> nativesdk-mingw-w64-winpthreads_11.0.1.bb} | 0
>  4 files changed, 1 insertion(+), 1 deletion(-)
>  rename recipes-devtools/mingw-w64/{nativesdk-mingw-w64-headers_9.0.0.bb =
=3D> nativesdk-mingw-w64-headers_11.0.1.bb} (100%)
>  rename recipes-devtools/mingw-w64/{nativesdk-mingw-w64-runtime_9.0.0.bb =
=3D> nativesdk-mingw-w64-runtime_11.0.1.bb} (100%)
>  rename recipes-devtools/mingw-w64/{nativesdk-mingw-w64-winpthreads_9.0.0=
.bb =3D> nativesdk-mingw-w64-winpthreads_11.0.1.bb} (100%)
>
> diff --git a/recipes-devtools/mingw-w64/mingw-w64.inc b/recipes-devtools/=
mingw-w64/mingw-w64.inc
> index ce5d0db..713c0ad 100644
> --- a/recipes-devtools/mingw-w64/mingw-w64.inc
> +++ b/recipes-devtools/mingw-w64/mingw-w64.inc
> @@ -5,7 +5,7 @@ COMPATIBLE_HOST =3D ".*-mingw.*"
>
>  SRC_URI =3D "${SOURCEFORGE_MIRROR}/project/mingw-w64/mingw-w64/mingw-w64=
-release/mingw-w64-v${PV}.tar.bz2"
>
> -SRC_URI[sha256sum] =3D "1929b94b402f5ff4d7d37a9fe88daa9cc55515a6134805c1=
04d1794ae22a4181"
> +SRC_URI[sha256sum] =3D "3f66bce069ee8bed7439a1a13da7cb91a5e67ea6170f2131=
7ac7f5794625ee10"
>
>  UPSTREAM_CHECK_URI =3D "http://sourceforge.net/projects/mingw-w64/files/=
mingw-w64/mingw-w64-release/"
>  UPSTREAM_CHECK_REGEX =3D "mingw-w64-v(?P<pver>(\d+[\.\-_]*)+)\.tar"
> diff --git a/recipes-devtools/mingw-w64/nativesdk-mingw-w64-headers_9.0.0=
.bb b/recipes-devtools/mingw-w64/nativesdk-mingw-w64-headers_11.0.1.bb
> similarity index 100%
> rename from recipes-devtools/mingw-w64/nativesdk-mingw-w64-headers_9.0.0.=
bb
> rename to recipes-devtools/mingw-w64/nativesdk-mingw-w64-headers_11.0.1.b=
b
> diff --git a/recipes-devtools/mingw-w64/nativesdk-mingw-w64-runtime_9.0.0=
.bb b/recipes-devtools/mingw-w64/nativesdk-mingw-w64-runtime_11.0.1.bb
> similarity index 100%
> rename from recipes-devtools/mingw-w64/nativesdk-mingw-w64-runtime_9.0.0.=
bb
> rename to recipes-devtools/mingw-w64/nativesdk-mingw-w64-runtime_11.0.1.b=
b
> diff --git a/recipes-devtools/mingw-w64/nativesdk-mingw-w64-winpthreads_9=
.0.0.bb b/recipes-devtools/mingw-w64/nativesdk-mingw-w64-winpthreads_11.0.1=
.bb
> similarity index 100%
> rename from recipes-devtools/mingw-w64/nativesdk-mingw-w64-winpthreads_9.=
0.0.bb
> rename to recipes-devtools/mingw-w64/nativesdk-mingw-w64-winpthreads_11.0=
.1.bb
> --
> 2.25.1
>

