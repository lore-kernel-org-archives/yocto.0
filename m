Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 43E1BC636BD
	for <webhook@archiver.kernel.org>; Thu, 23 Nov 2023 12:19:27 +0000 (UTC)
Received: from mail-lj1-f169.google.com (mail-lj1-f169.google.com [209.85.208.169])
 by mx.groups.io with SMTP id smtpd.web11.89619.1700741960584276424
 for <yocto@lists.yoctoproject.org>;
 Thu, 23 Nov 2023 04:19:20 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=G9c1ZkY8;
 spf=pass (domain: gmail.com, ip: 209.85.208.169, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f169.google.com with SMTP id 38308e7fff4ca-2c83d37a492so10249331fa.3
        for <yocto@lists.yoctoproject.org>; Thu, 23 Nov 2023 04:19:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1700741959; x=1701346759; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CEesuViYHTOCmr7U5yLOu3QV5p0EFsDNOHNPJR0xVmI=;
        b=G9c1ZkY8kB3wwNO9GqkfDMha6kkNLseKv7vQIfCeXy1wlOXYDbxV8EGsZ6hg6JZ4za
         SPVNdGr3y3iWba+KS5ZTiQ0XG0DK/4T97e5Fpa2SN1Oto80lefjKkYxncjRhflyPg7xV
         uP0zaviEj9kZb9EOHTPIuvmHuCQwzAfLoJjfE7vKe0zHqc8N3AxtaTw6D8X/knupuAoQ
         Y3XWWCjdxIazcuq/e4NPELRpBbLpqhW041jQmomaQse4yXubLKTlzVzP5zzfAbrhMtKm
         n03m+iIPbNz0IiVVuzrpguEtYQe534YleiqlEVq/lfDw6hPm6EzozGbhsljKLJGI1sMp
         n1Wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700741959; x=1701346759;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CEesuViYHTOCmr7U5yLOu3QV5p0EFsDNOHNPJR0xVmI=;
        b=g6bYEMofO5Daagbx4eiMUHIl4mUk3xb90QLNcet3hRavkLeYx/sGCMEBU8Mvma7Oz+
         QFfLdPu36ogL/Ghm69QBl5hEFgT1RmifDniowq3Q53FURZhG9SiFRQyxFpk3l6aOlaZj
         dxM15FjpRV9bhKzcsYFN/P++yu14pcemc8uMGE47SUVbarPCW8ERLBeLf7qF/F6KtY/2
         k4A0SPQFbIPrN/S+b7iympCcKBHb/ONrWhAGScObmvAvXPioISWZkf73oEWtJVPMcOKE
         r3wImJoRLToPwfMiQluIYmJMmO3DKYsb+HhYJyNryopmIDfNbqhXXvl6tViQWRWcz29k
         hylw==
X-Gm-Message-State: AOJu0Yz1eWCUPetcOrY3EhmnKQtHczGhLfG5NLhyCvBwigxxg5jaW7uz
	NCE5WtKUSEuwTyI2xtDfNmtd3x55aZFwHiNO9Fo=
X-Google-Smtp-Source: AGHT+IER6TqB0Kc/hmF1KbqRwTDR1GkFWQFG8xHHh7rVW2VI8hqythQuTNUMHkeNXzJVb1VD4J8qd3E4OWwqv3qLGJo=
X-Received: by 2002:a2e:9991:0:b0:2c5:247d:581 with SMTP id
 w17-20020a2e9991000000b002c5247d0581mr3874130lji.22.1700741958381; Thu, 23
 Nov 2023 04:19:18 -0800 (PST)
MIME-Version: 1.0
References: <20231122014822.3871458-1-raj.khem@gmail.com> <25CE6021-2333-43D8-B3E4-3207FEB8ED4A@arm.com>
 <CANNYZj_9_yY5H8fX6=Vy3FFgiVu1V8uOJxHNdtMkfMb37JXCSg@mail.gmail.com> <74FBAD99-E844-4DF2-AD18-B02D2613228C@arm.com>
In-Reply-To: <74FBAD99-E844-4DF2-AD18-B02D2613228C@arm.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Thu, 23 Nov 2023 13:19:07 +0100
Message-ID: <CANNYZj8HkDHb9i2=rc4V7MxoxqFV_dyNBcEyausW+=8f35_ByQ@mail.gmail.com>
Subject: Re: [yocto] [yocto-autobuilder-helper][PATCH] config.json: Add
 lib32-matchbox-terminal to multilib images
To: Ross Burton <Ross.Burton@arm.com>
Cc: Khem Raj <raj.khem@gmail.com>, 
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 23 Nov 2023 12:19:27 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61741

On Thu, 23 Nov 2023 at 13:14, Ross Burton <Ross.Burton@arm.com> wrote:
>
> On 23 Nov 2023, at 12:00, Alexander Kanavin <alex.kanavin@gmail.com> wrot=
e:
> >
> > matchbox-terminal depends on vte, and latest vte enables gtk4 support.
>
> Are you sure?
>
> https://git.yoctoproject.org/poky/tree/meta/recipes-support/vte/vte_0.72.=
2.bb#n14

Latest, as in latest submitted version update (to 0.74). Various
people are trying to make it pass the AB, first Markus, now Khem. It
has gained gtk4 support and it is enabled.

> The problem is that the ipkg rootfs generation works =E2=80=9Cinteresting=
ly=E2=80=9D and appears to create two parallel rootfs (one for normal one f=
or multilib) and then splats them together.
>
> The schemas are installed in /usr/share but if you have different sets of=
 libraries in /usr/lib and /usr/lib32 then the compiled schemas are differe=
nt.
>
> This feels like an issue which has existed for a long time, so how has it=
 only just been noticed?  Did something change?

The conflicting schemas come from gtk4 and I guess until now there was
no multilib scenario where it would get pulled in?

Alex

