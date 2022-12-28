Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC197C4167B
	for <webhook@archiver.kernel.org>; Wed, 28 Dec 2022 15:55:35 +0000 (UTC)
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
 by mx.groups.io with SMTP id smtpd.web11.184386.1672242932892102468
 for <yocto@lists.yoctoproject.org>;
 Wed, 28 Dec 2022 07:55:33 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=aS6/m0Va;
 spf=pass (domain: gmail.com, ip: 209.85.167.53, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f53.google.com with SMTP id b3so24157551lfv.2
        for <yocto@lists.yoctoproject.org>; Wed, 28 Dec 2022 07:55:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=jPzH4OZVia+B2Dw6vTaUjUjoWwa9e7MgtnS3Au3nypE=;
        b=aS6/m0VaBNKX1tMFUC5zKSs0+oYQAhCewUW+hg9T+gyxKJzaUDA7093xiP9sfBcH/k
         /5DnCOT74gixat1QaRkG7XaIJVV2XdR4ZiJNgf5+W2WyoSd15Rn44AqmQFzbP/7TSPmF
         3E0B5VPDQYAzCCobB7LsvuOASgaiqdzqo9N5m11WJn35A4cLqOkiJTnnw4avFpwYpK6/
         oH+AL4veXkbkIkP0qkqFfZCOpBQuMDYDTjpfuAyB6zOvuzBJqrohBho4TvRyBJC+BgcS
         L/bb5Tn5Sd/zQhmUme4gTgTpo8/3Gu4YXEgHeFJH+4JmHDGJN3B+3tbRXjkczqPPW3Y5
         t5oQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jPzH4OZVia+B2Dw6vTaUjUjoWwa9e7MgtnS3Au3nypE=;
        b=di4KpSi3hUxbkI0yzWs3t1Ba1pmQDKrUQCSeij7mS0WBONQgM3rHuo8OfP+TvGhGyB
         yuPYA1z7vT5UxuAgjj9nk2K/eSF4g5DU4rMize7q7pzfvB4KPv+CqFsZrmbt2j58OQob
         wN4/fL3DGFKSFRteFB2fq/FhzAnEDdhMiRS4xRjT9rjpLWRJzKkETjvrdYXIcNaVk1+L
         8L7c9Al/pN3wz+DQcp4AmDEAmv+P0tQ4Pysb6IjfQy6GxrbQgh5VE850vyz/FX/7pUSo
         HOiNehz3X37otLyrVTXd8CAC12Cnw/HZOwiO5JzvSZGe5NNwsccnoRjuiKjmGow4Pa8w
         rEtQ==
X-Gm-Message-State: AFqh2kqgoIo9bnqXdtzLjbu5MHZwvi70vxa09Cut7UzYph9RRVm6E/qT
	8xVRvCv94mUIuuseHoeSTqgQhyvaf0dM4IvD2LI=
X-Google-Smtp-Source: AMrXdXvl3y98+3AQ3P6yElvhlBKjl8GDX3e1c+bE/VrXle9viQMtQAOzKSIU+xC27n0nMR3QRYqmJLujabyY8FFfqZI=
X-Received: by 2002:ac2:5c5a:0:b0:4cb:154d:2178 with SMTP id
 s26-20020ac25c5a000000b004cb154d2178mr167671lfp.367.1672242930959; Wed, 28
 Dec 2022 07:55:30 -0800 (PST)
MIME-Version: 1.0
References: <bdd0eba8-6eb8-a72f-85f9-bf4b316f0987@mistywest.com>
In-Reply-To: <bdd0eba8-6eb8-a72f-85f9-bf4b316f0987@mistywest.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Wed, 28 Dec 2022 16:55:19 +0100
Message-ID: <CANNYZj-W7NQkiP-1SXBNMpvj-GC96rEtGJDF1N2N-0Gv9PNweg@mail.gmail.com>
Subject: Re: [yocto] DISTRO_FEATURES in custom recipe does not override
 local.conf setting
To: Mistyron <ron.eggler@mistywest.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 28 Dec 2022 15:55:35 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58882

You can't. '_remove' has priority over everything else, and
DISTRO_FEATURES cannot be set from a recipe, only from a global
config. You should edit local.conf, and complain to your BSP provider
for using _remove instead of a direct assignment.

Alex

On Wed, 28 Dec 2022 at 16:51, Mistyron <ron.eggler@mistywest.com> wrote:
>
> Hi,
>
> I'm using the provided local.conf from the BSP which contains:
>
> DISTRO_FEATURES_remove = " x11"
>
> but I need to install xrandr in my image which needs x11, i.e. I set
>
> DISTRO_FEATURES_append = " x11"
> IMAGE_INSTALL_append = " xrandr"
>
> in my custom recipe. However, upon building, I get the following error:
>
> ERROR: Nothing RPROVIDES 'xrandr' (but
> /home/yocto/rzg_vlp_v3.0.0/build/../meta-mistysom/recipes-core/images/mistysom-image.bb
> RDEPENDS on or otherwise requires it)
> xrandr was skipped: missing required distro feature 'x11' (not in
> DISTRO_FEATURES)
> NOTE: Runtime target 'xrandr' is unbuildable, removing...
> Missing or unbuildable dependency chain was: ['xrandr']
> ERROR: Required build target 'mistysom-image' has no buildable providers.
> Missing or unbuildable dependency chain was: ['mistysom-image', 'xrandr']
>
> Can I override the setting in locl.conf from my custom recipe? How?
>
> Ron
>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#58881): https://lists.yoctoproject.org/g/yocto/message/58881
> Mute This Topic: https://lists.yoctoproject.org/mt/95921674/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

