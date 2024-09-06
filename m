Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D570ECE7AFF
	for <webhook@archiver.kernel.org>; Fri,  6 Sep 2024 10:49:34 +0000 (UTC)
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
 by mx.groups.io with SMTP id smtpd.web10.32355.1725619770806052496
 for <yocto@lists.yoctoproject.org>;
 Fri, 06 Sep 2024 03:49:31 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=Tg3UVtNs;
 spf=pass (domain: gmail.com, ip: 209.85.167.48, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-535be093a43so2298002e87.3
        for <yocto@lists.yoctoproject.org>; Fri, 06 Sep 2024 03:49:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1725619769; x=1726224569; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XOZjrXGeoyLHd3tX6jncUj9jwv+Z935NiydqHlUfLfU=;
        b=Tg3UVtNsPEHh9XMzBGh8W/a74VGCUertmbUwPQeqmDJXZxqSBiSj79+x/oGLL++BRv
         CAae8m9bsFzLqRuZQTdrboTqnsZfyDu2f4N3bi0lM5ExiFqdXuO4F/ni43trbMLL86km
         hSHDvLX+r5dxst7WtUllol7Ecwe16KyHoeoDwxIIHE6/H183NLkKcXbkf18MuAFUyLeo
         8B9usqJZYmzxu75pBzbQNFzSJffcqPLKS8CjnBtg+kDWF91mJgoCV6iWtIV0E+x4wyfE
         6CIrL2lg3FtHeeGGBUR8GN2U0J1apHRer+uGjCCbEmog8iPr758lMT4IeDmj21vNWa3A
         SE7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725619769; x=1726224569;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XOZjrXGeoyLHd3tX6jncUj9jwv+Z935NiydqHlUfLfU=;
        b=BVYiv03e75Eqq0jvoxCrBaFhkQqMIyC9sWQMjp453uU43YJ/LUjGYI5jY6w7TTBJlt
         2q2owLN0v1VXqEiCjWnwlD174LRz+m6FHv/PCJgLKyaNKixgfDQ7vsYNQHX6O/fBH1AZ
         aSf0x4v4RA0/6LRuiWTeWHXqW8ua1NsWSxbkSQQ+kB8JdOjBrL2hl1Rq1LiUiP957aWQ
         GjPm6Y7efxNI8UJRq/xoetNV6HfvrVdafabl36bMKbc7QUgEukSBSklsPtoibimbgxdG
         2M8AMQ9QCAVTZOL+ZprYX9hsF+TjLfd7Hr7EKESGH8DMv8jTe1h3PrBFMl990Ti5qr32
         o7sA==
X-Gm-Message-State: AOJu0Yws+Ve4fruNcDQ6iMv9/qBlk13cF3ORWpLVSW4RG+l89ox+MbI/
	7dchiFAAS5kk6o3kbT/EDk06NDsa4pSZUZK8nVCub8J5LZ+7+6ssg8zuS9/UzeWLbH7GH6KnM/s
	qX7rRppWXWeUNGOo/QEIvDtbQCwNddgkC
X-Google-Smtp-Source: AGHT+IFVi2F9NU90/+qWWM22zEzpEWNSafyT+OY9DT2jSZXUxEox/niPqCUWehPAOkGN02e7/BZjt6x/zymOCOUX11I=
X-Received: by 2002:a05:6512:3e0e:b0:535:6d34:5cd7 with SMTP id
 2adb3069b0e04-536587a4158mr1526797e87.11.1725619768010; Fri, 06 Sep 2024
 03:49:28 -0700 (PDT)
MIME-Version: 1.0
References: <Mqk8.1725619071816092089.4kMS@lists.yoctoproject.org>
In-Reply-To: <Mqk8.1725619071816092089.4kMS@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Fri, 6 Sep 2024 12:49:16 +0200
Message-ID: <CANNYZj_MOsO3Vu2YRfB3njTS-RZBmnzduCS3QMtcMdnZOoaswg@mail.gmail.com>
Subject: Re: [yocto] esdk devtool finish workflow
To: yocto@lists.yoctoproject.org, radoslav.pesek@microstep-mis.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 06 Sep 2024 10:49:34 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63794

Unfortunately when standalone esdk archives are made, the layers are
copied into the archive with a simple file tree operation, and all git
history and pointers to upstream repos are thrown away.

I would recommend setting up a plain, direct yocto environment
instead. There's an officially supported way to obtain a SDK toolchain
environment in there nowadays, so it's functionally equivalent to esdk
archives, but gives you 'real yocto with bitbake' at the same time,
and devtool will work exactly as it does in esdk:
https://docs.yoctoproject.org/sdk-manual/extensible.html#installing-the-ext=
ensible-sdk

Alex

On Fri, 6 Sept 2024 at 12:38, Radoslav Pesek via
lists.yoctoproject.org
<radoslav.pesek=3Dmicrostep-mis.com@lists.yoctoproject.org> wrote:
>
> Hello,
>
> I'm trying to do the following (after generating and installing my esdk a=
nd sourcing the environment script):
> * devtool modify recipe
> * do some coding and testing
> * devtool finish recipe meta-custom -m srcrev
>
> I want just to update SRCREV of the recipe, not to create source code pat=
ches (that's why i use -m srcrev) and not to create bbappend for the recipe=
, but:
> * if meta-custom is a layer under the esdk (esdk/layers/meta-custom), the=
 issue is, it isn't git repo separate from the other layers under esdk/laye=
rs (because whole esdk/layers directory is one git repo), so when i commit =
the changes made by devtool finish (updated SRCREV), i don't make the commi=
t in the original git commit history and am not sure how now to push the ch=
anges to the git server
> * if meta-custom is git repo somewhere else on the my machine, cloned fro=
m the original git repo, devtool finish doesn't just update the recipe (wit=
h changed SRCREV), but creates an bbappend, which i don't like cause updati=
ng recipe seems to me to be cleaner then having recipe and bbappend
>
> So i'm not sure, how to accomplish this. Maybe i'm just missing something=
 or don't use esdk/devtool as it's intended. So, could somebody, please, ex=
plain to me the intended workflow or why what i'm trying to do isn't possib=
le (or how, if it is)? Cause what documentation/howtos regarding devtool fi=
nish i came across, either didn't use it within esdk or didn't use the work=
flow i'm trying to use. I also tried to search some explanation why sdk/lay=
ers is one git repo (instead of having the layers under esdk/layers cloned =
as separate git repos - as it actually works when you use devtool under yoc=
to build system) or why devtool finish does create bbappend (and doesn't si=
mply update the recipe) when the layer you want to update isn't the origina=
l layer, where the recipe comes from (which i guess, within esdk, it's esdk=
/layers/meta-custom in my case) as for example mentioned here: https://www.=
openembedded.org/pipermail/openembedded-core/2016-July/123873.html, but to =
no avail.
>
> I didn't try it yet, but the only thing that could probably help is addin=
g my layer (cloned somewhere on my machine) to the esdk's bblayers.conf, bu=
t then, i would have the layer twice in the bblayers.conf (the one that was=
 installed with the esdk and the one added manually), or even try to remove=
 the one that was installed with esdk, which i'm not sure whether it would =
work.
>
> Currently i'm on scarthgap, if that makes any difference.
>
> Thank you for any clarification, Rado.
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#63793): https://lists.yoctoproject.org/g/yocto/messag=
e/63793
> Mute This Topic: https://lists.yoctoproject.org/mt/108301955/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@g=
mail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

