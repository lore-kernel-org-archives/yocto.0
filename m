Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3FCEC87FCA
	for <webhook@archiver.kernel.org>; Fri,  8 Aug 2025 00:50:14 +0000 (UTC)
Received: from mail-yw1-f174.google.com (mail-yw1-f174.google.com [209.85.128.174])
 by mx.groups.io with SMTP id smtpd.web10.11129.1754614212769338794
 for <yocto@lists.yoctoproject.org>;
 Thu, 07 Aug 2025 17:50:12 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=CPtrlpEd;
 spf=pass (domain: gmail.com, ip: 209.85.128.174, mailfrom: raj.khem@gmail.com)
Received: by mail-yw1-f174.google.com with SMTP id 00721157ae682-71a379cecd5so9904017b3.1
        for <yocto@lists.yoctoproject.org>; Thu, 07 Aug 2025 17:50:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1754614212; x=1755219012; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tCePNaOv6BHfxMtwd4/sDSF3JF33bSREjOLoycxrQqI=;
        b=CPtrlpEd0Hj4DqTodAjUh7Mg0MIqOGdPD91KUqYTqHxddIS1xBYa8WItnMryqL48Fa
         SueNpjeKC0X8XAvhSAUIQd6oKaCKpMOiVGzRUsG3O6+fQCrgPJrqk0g/gvBglkZRYgYW
         Q4+BW1ILozg/gFM6m6HfTL/C2EVmT+bnkVUCePS1sEg+FjidzrI/jKt8fGWEHMFYm+aC
         mBoXm42Vof/RmG9wqkEdhpanP+V8192Lt9/YJDyYBYR06LSHr8579XeZMl0a2wTgH3J2
         RxP2BNw8J1OYBdw+70WECZXmrLnKx2/+Ait872qRrNNNZxM3n/BSfct3dOxMdyul3Pof
         I2TQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754614212; x=1755219012;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tCePNaOv6BHfxMtwd4/sDSF3JF33bSREjOLoycxrQqI=;
        b=RoGpTSsQCQmwq0qpPpoc3WlIls7aRJSIOmfjH7RUwNRmc92c67y4wD3tyO8+jqj4/1
         2dHzj1EwPS4lSMcdeDNv4ADejkDTMTWHIr7X9PMTeycaR6OPCkeaKjSuyRAuX58WcZaN
         ifV4vL6JilEnP74XccfXSXkiZ3Dp34LflNEUcSPvu8KFJydq6+iRqiI81l4D6KJX8h1C
         HFrkFeE66IUsNLnU1E7un62/N1eA90fNjDwkOsnc1knoHl0gBw/pvlsMfhENBpH96TLm
         MbYcxFylUjEPxkDoFcrHQXP1lReHI8n40DZ/T0SN53Wp2bqPz93WnuJiOAAKMcVSwaBQ
         AQFg==
X-Gm-Message-State: AOJu0Yx5QtsokiLNheDn7azd/DIrnOGVvmNsNLlHrb+xHkKc5p/0fJPh
	5D31kDtelsh+CvlP2wSM3+RdgcJxTnfr1Y1lpsEejbFX7HtT0Q1nNvqyMdvc/UsJYWi0fmJROnh
	uHK8pAVv+HxJ0xWLp8/NfC1T9uIpsUV0=
X-Gm-Gg: ASbGnctsrvK64s0XI3pejVnfqyH64rkpQd2JxHRB0E0io0pXtMQdEhr9j3itUpAX+Ta
	G1max9zVnm035oBFJzE3Ka88CQvhvjrSDr7UwAJE1H0uWIi01WDBkXCd9XgQAc6WkFwMIcjjsBB
	fV0je2zsCZamiCAM+6bk5kDvABwj+cZX6AIfPSaJutOpENtVPGF20jsOhArAF3iqM77I2zEedZ/
	HGM8w==
X-Google-Smtp-Source: AGHT+IEEUAiL94pEwtO4BxRSZ9124sme1p5EaI0y4lfwl4XvgtazjolwEl5RtmVcwbbMB2xuly1/D3QflJwFb9k5Am0=
X-Received: by 2002:a05:690c:4446:b0:719:f77b:93ac with SMTP id
 00721157ae682-71bf0cd1f14mr15080237b3.8.1754614211054; Thu, 07 Aug 2025
 17:50:11 -0700 (PDT)
MIME-Version: 1.0
References: <20250807224406.2384082-1-osama.abdelkader@gmail.com>
In-Reply-To: <20250807224406.2384082-1-osama.abdelkader@gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 7 Aug 2025 17:49:44 -0700
X-Gm-Features: Ac12FXzV6KP6SCKKrNTcnrOmpaiyD1-ZahN2XdSkDQZ72Lt0bzLVty1QKr5yGM4
Message-ID: <CAMKF1soY8-4TxLmBD5UDa=iSPBzfcjWAzY++CxumBznf2dRVqQ@mail.gmail.com>
Subject: Re: [PATCH] go-cross-canadian: fix binaries install and GOARCH
To: Osama Abdelkader <osama.abdelkader@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 08 Aug 2025 00:50:14 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65740

On Thu, Aug 7, 2025 at 3:44=E2=80=AFPM Osama Abdelkader
<osama.abdelkader@gmail.com> wrote:
>
> Canadian cross builds produce host-side binaries (x86_64), but
> GOARCH=3Darm was leaking in from go-${PV}.inc/go-common.inc, causing
> arch mismatch and package QA errors. Explicitly set GOARCH=3Damd64 to
> ensure the correct host architecture is used.
>
> Also fix do_install to correctly install all binaries from
> ${GO_BUILD_BINDIR} by using 'find -type f' to avoid issues when the
> directory contains subdirectories (e.g. "linux_arm").
>
> Signed-off-by: Osama Abdelkader <osama.abdelkader@gmail.com>
> ---
>  meta/recipes-devtools/go/go-cross-canadian.inc | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
>
> diff --git a/meta/recipes-devtools/go/go-cross-canadian.inc b/meta/recipe=
s-devtools/go/go-cross-canadian.inc
> index 39330fc98b..14f0100bdc 100644
> --- a/meta/recipes-devtools/go/go-cross-canadian.inc
> +++ b/meta/recipes-devtools/go/go-cross-canadian.inc
> @@ -5,6 +5,8 @@ DEPENDS =3D "go-native virtual/${HOST_PREFIX}go virtual/n=
ativesdk-${HOST_PREFIX}go
>             virtual/nativesdk-compilerlibs"
>  PN =3D "go-cross-canadian-${TRANSLATED_TARGET_ARCH}"
>
> +GOARCH =3D "amd64"

We also have arm64 build hosts these days. Will it work on those too ?

> +
>  # it uses gcc on build machine during go-cross-canadian bootstrap, but
>  # the gcc version may be old and not support option '-fmacro-prefix-map'
>  # which is one of default values of DEBUG_PREFIX_MAP
> @@ -51,7 +53,7 @@ do_install() {
>         install -d ${D}${libdir}/go/pkg/tool
>         cp --preserve=3Dmode,timestamps -R ${B}/pkg/tool/${HOST_GOTUPLE} =
${D}${libdir}/go/pkg/tool/
>         install -d ${D}${bindir} ${D}${libdir}/go/bin
> -       for f in ${B}/${GO_BUILD_BINDIR}/*
> +       for f in $(find ${B}/${GO_BUILD_BINDIR} -type f)
>         do
>                 base=3D`basename $f`
>                 install -m755 $f ${D}${libdir}/go/bin
> --
> 2.43.0
>

