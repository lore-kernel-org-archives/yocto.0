Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB4FAC10F1A
	for <webhook@archiver.kernel.org>; Wed,  8 May 2024 01:39:19 +0000 (UTC)
Received: from mail-ot1-f45.google.com (mail-ot1-f45.google.com [209.85.210.45])
 by mx.groups.io with SMTP id smtpd.web10.2292.1715132357339973883
 for <yocto@lists.yoctoproject.org>;
 Tue, 07 May 2024 18:39:17 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=LQ6cCOAL;
 spf=pass (domain: gmail.com, ip: 209.85.210.45, mailfrom: raj.khem@gmail.com)
Received: by mail-ot1-f45.google.com with SMTP id 46e09a7af769-6f040769fd3so2069353a34.1
        for <yocto@lists.yoctoproject.org>; Tue, 07 May 2024 18:39:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1715132356; x=1715737156; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NEwrRL2uqXi4YcdR7XIXQwsCRn5pa2teWwEXp30ql8I=;
        b=LQ6cCOALz+JBffWePE6OhXBPunVR7tFLqybQuXTYSaDrKDcfkXUvKRZZNN+YBW/DN4
         0TLhK9asMp94ILcxoZt2YxQZaYcBNJepJ1hYJU1TPEtqbKPUqBlajoNfXYQZ2o9t9o38
         r9Ja4ATANejS2sQvScR5AnKV02ZJv6/njyIeo7N4w2Ba1yniHr5L2Ib1IlpMuHlli+b3
         NXprvmnhI+7vt0nKqujcAKGUZIYxYFag7nap4nufooDpdxOFRfy3R6HNMfgcYQDGXk79
         O5iFTjYznXybvKJtqVk1suPYleBR9mgNJc3RUa31gHC89KgJ8/pF4dM7l5S3t8leJ8t/
         ObMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715132356; x=1715737156;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NEwrRL2uqXi4YcdR7XIXQwsCRn5pa2teWwEXp30ql8I=;
        b=ENPHm4DDNjMK1prxJXEAFBXN7Gg7698ZDsb6JnmycSmvP//OtXP6Pp/yV4dghamTaw
         80gEXs+Koit8NL/U3wBCi6WrcJ1mmSOEogHX7vLMF8URnVeZcNbPyKRB1MnMZ12ZLVhu
         o7j19JNtuFemJHQwRN9jPG14jeD4lv1MFKq+CcA3+KwqxxkXLLwu4tUUbm3Lgbh/XsqS
         9l/R4v4XJuWx/BotrLF8vaWYPZ8v6cJzx1hWdqSExSLEizzy/OdL42uKKibJVaiTheU5
         dGMdqzmAysAry/ncKoP5JGTMP6i8zADVWRaSvODB0YrGEV+svTGEjS3OblGyqP9mBKNi
         9zIA==
X-Gm-Message-State: AOJu0Yz9oGdpkiw8x5M87lZe7cb88S1SsuaFmJF6wN0Am3zORlNHVV/e
	ufQlLexeApQvQVILIxb6JSAXQ9B71D/Bh2rqGQP/WuDm1Usii6kHxReV5e9lpmTis2docrETsNB
	h5NB9KzC5M9kjWXYMutzoxUdlnvi/83o1pUk=
X-Google-Smtp-Source: AGHT+IGPprT+g4aDUDpot//R7YNLzFctpk5b4dAd11CLciymBtvYQPT521wdFQGsnxJThqT2RNeCVWutLpG9X5AeMzc=
X-Received: by 2002:a05:6870:2110:b0:23e:4c7e:d018 with SMTP id
 586e51a60fabf-240984446a9mr1544327fac.41.1715132356177; Tue, 07 May 2024
 18:39:16 -0700 (PDT)
MIME-Version: 1.0
References: <CANuMBWHa8ZkbRuG-=QURATjqKL2N1W3PkYwd-gk-U+NK9da-kA@mail.gmail.com>
In-Reply-To: <CANuMBWHa8ZkbRuG-=QURATjqKL2N1W3PkYwd-gk-U+NK9da-kA@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 7 May 2024 18:38:49 -0700
Message-ID: <CAMKF1soiCS7BQ10rS_XpjHHApmUdjxd56Pe84kHCpD1Km5ZyhQ@mail.gmail.com>
Subject: Re: [yocto] Warning about "no-recipes"
To: yocto@lists.yoctoproject.org, worik.stanton@tirotech.co.nz
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 08 May 2024 01:39:19 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63046

On Tue, May 7, 2024 at 6:28=E2=80=AFPM Worik Stanton via
lists.yoctoproject.org
<worik.stanton=3Dtirotech.co.nz@lists.yoctoproject.org> wrote:
>
> I am getting a warning as I build a yocto build I inherited.  Forgive me =
I know very little about Yocto
>
> ```
> WARNING: No recipes in default available for:
>   /home/yocto/thisbuild-yocto/layers/openembedded-core/../meta-thisbuild-=
nxp/recipes-multimedia/gstreamer/gstreamer1.0-plugins-base_1.20.0.imx.bbapp=
end

how did you build your project metadata ? it seems some layers are
fudged unto single repository. AFAICT
gstreamer1.0-plugins-base_1.20.0.imx.bb should be
coming from meta-freescale or meta-imx and if you have a unified
metadata tree then this bb file should be somewhere, if not, that
means the project missed adding this layer
to your build system.

if you dont need this recipe then you can ignore failing on bbappends by ad=
ding

BB_DANGLINGAPPENDS_WARNONLY =3D "1" to yout local.conf

> ```
>
> The file in mentioned  (gstreamer1.0-plugins-base_1.20.0.imx.bbappend) co=
ntains:
>
> ```
> FILESEXTRAPATHS:prepend :=3D "${THISDIR}/${PN}:"
>
> SRC_URI:append =3D " file://0001-glupload-don-t-reject-non-RGBA-output-fo=
rmat-in-_dir.patch"
> ```
>
> And the file: "layers/meta-thisbuild-nxp/recipes-multimedia/gstreamer/gst=
reamer1.0-plugins-base/0001-glupload-don-t-reject-non-RGBA-output-format-in=
-_dir.patch"  exists.
>
> What can I do about this?
>
> Worik
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#63045): https://lists.yoctoproject.org/g/yocto/messag=
e/63045
> Mute This Topic: https://lists.yoctoproject.org/mt/105973256/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail=
.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

