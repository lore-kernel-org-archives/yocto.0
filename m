Return-Path: <sumit.garg@linaro.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68FBCEB64DB
	for <webhook@archiver.kernel.org>; Tue, 20 Jun 2023 13:19:06 +0000 (UTC)
Received: from mail-vs1-f54.google.com (mail-vs1-f54.google.com [209.85.217.54])
 by mx.groups.io with SMTP id smtpd.web11.10047.1687267141545100451
 for <yocto@lists.yoctoproject.org>;
 Tue, 20 Jun 2023 06:19:01 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@linaro.org header.s=google header.b=Xa+MeMKx;
 spf=pass (domain: linaro.org, ip: 209.85.217.54, mailfrom: sumit.garg@linaro.org)
Received: by mail-vs1-f54.google.com with SMTP id ada2fe7eead31-44098ef627eso1375655137.2
        for <yocto@lists.yoctoproject.org>; Tue, 20 Jun 2023 06:19:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1687267140; x=1689859140;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=idVvB8ndJ1QXPrzXnOGBpcZbsmcLfPaT2gmZc+FhqrU=;
        b=Xa+MeMKxXZVXBEnaReTe3j+8Tm/PJY/fitJXS0TG7Pk+ZcYAZaIWlWrB1NNqtyNarh
         GX8EHWIJZkOhdkAlgc76Wxw0PxfqB4SDl3uUuCWC40xQzgTZNsWlCsEwe37taZ129EKY
         fDkP7G4Eq8aWgSu6yJ9qmnjbSflo2MIeSUAvK7FEIHSryS2NSHUk+aDaQKdBS+2DcQN+
         3DipqC5iYeFZgPn1abPwt2bJKxTN5c+SrsVsnnpTCmQD4EgVqx5fGsXswudAN/Fig/Ej
         uDAkRIf/jt/Gd6JsYyPDlNJ8wXHlBtq318dA+hag71cnUtMJxEgQQ9W6bCPxHssEUH6X
         1evg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687267140; x=1689859140;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=idVvB8ndJ1QXPrzXnOGBpcZbsmcLfPaT2gmZc+FhqrU=;
        b=YgZ2S0+LVxtDV1rsqbmajt/Y8QntMzT4wf25Rm17tlmFpVY0MgHFp+X312XHUcqj4C
         jR+ldLWkTdn3Aj6RX+EEH2MvG/ghsxK4FS/lUkAfsT/lAcO8OC+69sZPIMytXKHIHdak
         zXMjkMVjjPvUZQQ9AtlElk1+qJY0jZOauxqn3o4kk65WMs45ZcNM0REXFXuPnD60Z2SP
         SGWrZdw8rf5PNPCkrgBaQMwhq2I1qAp51LQfu7B8CZA0/8lcOVK/gQHZv1ncwRuOksgS
         BT9/5z2aLHCzEbSiWGd9OhDGOu0W+Jf6ER2/7WmUTyh76WqRRVNW1jWF5FIVe0KLoJoE
         VTCw==
X-Gm-Message-State: AC+VfDzYKvO7CG/bDAt9EmSboslNrwAP8LrDm66gswBDjPAe1rM49fC3
	K4Ikt7tYH2DPCxLOHAnUCdkCoQoG8oNsmmi60FJB2Q==
X-Google-Smtp-Source: ACHHUZ6YSh5r5rIkAdFKYB8nISTRlca3CzuRJ3woME83Oc+iQkrZKTDeR+RHK+tfgYmxDko6gWxkxAt41vjNbCODjJs=
X-Received: by 2002:a05:6102:3661:b0:43b:3cf8:bead with SMTP id
 bg1-20020a056102366100b0043b3cf8beadmr4512035vsb.0.1687267140539; Tue, 20 Jun
 2023 06:19:00 -0700 (PDT)
MIME-Version: 1.0
References: <5H3q.1687192403619815582.2AB4@lists.yoctoproject.org>
 <CAFA6WYMUrPajYNqhgjW9XD8H0inw_MnYLBTAE-ONhgpyg=yi+A@mail.gmail.com> <57D4D4FE-0D69-4C4C-844C-0260490012E8@arm.com>
In-Reply-To: <57D4D4FE-0D69-4C4C-844C-0260490012E8@arm.com>
From: Sumit Garg <sumit.garg@linaro.org>
Date: Tue, 20 Jun 2023 18:48:49 +0530
Message-ID: <CAFA6WYMjeAA8HKhw43Q_d8iSs7-gMfaSq16Lgdirdi0aL3fAfQ@mail.gmail.com>
Subject: Re: [yocto] meta-arm-toolchain: SUPPORTED file not found #toolchain
To: Ross Burton <Ross.Burton@arm.com>
Cc: "Jesus.JimenezSanchez@verifone.com" <Jesus.JimenezSanchez@verifone.com>, 
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 20 Jun 2023 13:19:06 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60362

On Tue, 20 Jun 2023 at 18:06, Ross Burton <Ross.Burton@arm.com> wrote:
>
> On 20 Jun 2023, at 13:08, Sumit Garg via lists.yoctoproject.org <sumit.ga=
rg=3Dlinaro.org@lists.yoctoproject.org> wrote:
> >
> > On Mon, 19 Jun 2023 at 22:03, Jesus.JimenezSanchez via
> > lists.yoctoproject.org
> > <Jesus.JimenezSanchez=3Dverifone.com@lists.yoctoproject.org> wrote:
> >>
> >> Hello, I'm trying to add the arm toolchain to my yocto project but I j=
ust got this error
> >> ```
> >> | cp: cannot stat '.../tmp-glibc/work/cortexa7t2hf-neon-vfpv4-ostl-lin=
ux-gnueabi/external-arm-toolchain/2022.02-r0/image/local/SUPPORTED': No suc=
h file or directory
> >> ```
> >> It comes from the `external-arm-toolchain.bb` recipe. I've checked and=
 the `SUPPORTED` file is in the right folder (the `files` folder where the =
`external-arm-toolchain.bb` file is). I haven't made any modifications to t=
he meta-arm repo. I just cloned it and changed to branch `kirkstone`. After=
 that, I have configured my local.conf with this:
> >> ```
> >> TCMODE =3D "external-arm"
> >>
> >> EXTERNAL_TOOLCHAIN =3D ".../gcc-arm-11.2-2022.02-x86_64-arm-none-linux=
-gnueabihf"
> >> ```
> >>
> >
> > Don't provide a relative path here. It should be an absolute path to
> > your external toolchain install directory. This should resolve your
> > issue.
>
> If that=E2=80=99s the issue, can you add a check for the path being absol=
ute to the class?
>

Sure, see [1].

[1] https://lists.yoctoproject.org/g/meta-arm/message/4809

-Sumit

> Ross

