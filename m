Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD13FC4829A
	for <webhook@archiver.kernel.org>; Sat, 10 Feb 2024 19:58:33 +0000 (UTC)
Received: from mail-oa1-f51.google.com (mail-oa1-f51.google.com [209.85.160.51])
 by mx.groups.io with SMTP id smtpd.web10.22776.1707595112150197080
 for <yocto@lists.yoctoproject.org>;
 Sat, 10 Feb 2024 11:58:32 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=RfVGNY8U;
 spf=pass (domain: gmail.com, ip: 209.85.160.51, mailfrom: raj.khem@gmail.com)
Received: by mail-oa1-f51.google.com with SMTP id 586e51a60fabf-2191dc7079aso1014732fac.0
        for <yocto@lists.yoctoproject.org>; Sat, 10 Feb 2024 11:58:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1707595111; x=1708199911; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2DwFX8zDbbF/2Vk4M7eLf0RrjeLfUxS6IJEAsBOv0CA=;
        b=RfVGNY8U7L77/dAEDgUWglLLJlqaHZxj3tJBD7Uh/GDAzCksc1iXrJL+IYCbUFuxPd
         S/z6l9fAvmpI4ti6PlOvfvNv2RetqwTyg533NTmXXL84jZdFHPL8RJT3K9ZmNTyMK/tJ
         rW4aeRSMszLscsRyb56x17vQ3QHepxOQ3JQWzx3EzbI5hVOJfXwxKsZWOgh+Kx3klB4H
         TP2S0dwz6GgFlTbxEdL7ixqVrJhD9FsNfxvSvns5tnL0c5lo/v1Ji9iSurKa0r1f7FgX
         t/AHfA5oufivPu+1fYG63E9gKHlENUHFpbv+J0p9wyE14KpVXHNXvIWUCyhQEW98h3s6
         62ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707595111; x=1708199911;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2DwFX8zDbbF/2Vk4M7eLf0RrjeLfUxS6IJEAsBOv0CA=;
        b=c6rxYONr4TjeMAp9ni8bsECE5KwZdTBMOr1fsVbMXDvDEN+rJqwuwnnavXfhXvXEB6
         pfDPDyS+beIokBqMFgKBAN6783Y3yi/rCs6iHbGup2FYT+VM9g9HS353yWkEk1b9soLr
         qsblTd+LKPvK1AwEfkgdeM+9mhQ9KqoUm9KBQXATXIS3gnFwm/wcXhUCmI1na+Xb19D9
         GGCt+HadbiyyQtyjV+uiSwBWzyWK2m7Z9BJM7E+XjIb3viQ4A9SxIMWgk30fdKn4HIe4
         s0Np4f+f8DXmRglM7TTmemDQA9+BemCVP+HGAeZhW7tf8H08JqioBSjE7dIItEIafPpx
         Z8Ww==
X-Gm-Message-State: AOJu0Yygdr3JmY/peZz/KFSFRB9Osdbx4Sg9icI1v0TXDbuZhdJ3+qOW
	XYGO2c3ADDe7BkDFRVILv714MMnqlRUnvTsSliXQ1OOq4M1u4Ug1nrWgK1YFkDYE8MxbTWbK+9V
	07nOdGWYKb5OOOrTxGIlgwEctasBS5OVGBbm7mA==
X-Google-Smtp-Source: AGHT+IHtzHULE2ZbGd+fSr9jbn1ufnZ5rREBjO28Pr3KFKzaXq90BBLz0iqrsU1FZXOTobdrmpCPzoXrDAMcjt/kPVQ=
X-Received: by 2002:a05:6870:1606:b0:206:573:ec62 with SMTP id
 b6-20020a056870160600b002060573ec62mr3333937oae.54.1707595111118; Sat, 10 Feb
 2024 11:58:31 -0800 (PST)
MIME-Version: 1.0
References: <b4Ez.1707584225898158843.uWU2@lists.yoctoproject.org>
In-Reply-To: <b4Ez.1707584225898158843.uWU2@lists.yoctoproject.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Sat, 10 Feb 2024 11:58:04 -0800
Message-ID: <CAMKF1sqGQFKd48rGs92uH7mNjrmncn0Bw_svkyj6wLrKjbzHJA@mail.gmail.com>
Subject: Re: [yocto] Use kmods using MACHINE_EXTRA_RECOMMENDS
To: yocto@lists.yoctoproject.org, saswatinayak2010@gmail.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 10 Feb 2024 19:58:33 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62459

you can add it via machine configuration metadata file

something like

MACHINE_EXTRA_RRECOMMENDS +=3D "kernel-module-mymodule"

On Sat, Feb 10, 2024 at 8:57=E2=80=AFAM <saswatinayak2010@gmail.com> wrote:
>
> Hello All,
>
> I'm seeking assistance on how to include kernel modules (kmods) in MACHIN=
E_EXTRA_RECOMMENDS. Could someone please provide guidance and examples of h=
ow to effectively use MACHINE_EXTRA_RECOMMENDS for this purpose?
>
> Thanks & Regards
> Saswati
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#62458): https://lists.yoctoproject.org/g/yocto/messag=
e/62458
> Mute This Topic: https://lists.yoctoproject.org/mt/104280585/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail=
.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

