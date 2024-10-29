Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4899CD2AB1B
	for <webhook@archiver.kernel.org>; Tue, 29 Oct 2024 10:24:41 +0000 (UTC)
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com [209.85.208.178])
 by mx.groups.io with SMTP id smtpd.web11.15883.1730197478006289848
 for <yocto@lists.yoctoproject.org>;
 Tue, 29 Oct 2024 03:24:38 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=erlZf3yd;
 spf=pass (domain: gmail.com, ip: 209.85.208.178, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f178.google.com with SMTP id 38308e7fff4ca-2fb470a8b27so56496311fa.1
        for <yocto@lists.yoctoproject.org>; Tue, 29 Oct 2024 03:24:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1730197476; x=1730802276; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=3+poPi+AJYKiJLOMZ9XmfdcwBDpas5fnPmA8bNpu2Fg=;
        b=erlZf3ydcf2/WKRerjV0xG7pSb43ttbKpRX2gxBVcQYahMi+wfdzArfGF/Xlj8Ltdn
         zcmbwh253kzdc12NpD4gbTvF6H+/L/jId9t5Xz4TmtLGYkJBsEyGrxcYCe65pVH5LMe4
         dZ0MtEB4YpUn3Gk55lKTYC9lY4jMfnYqm7c9kaSLl3nI15lyz0DNHCVgd4GPFameLsJH
         T1fMNXDqcZbLXwaEITzQA12IJVwX7tgRsMgF0/sK6wsTyHqBH5wo8l04mUvXj+VJAgFj
         33aHwqqNiHaMxhDchiR6vbXpUXhQfY7q2vVe+EHTLBEqjl2u7qmwEVEaKpJuBwXdZlD0
         AwLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730197476; x=1730802276;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3+poPi+AJYKiJLOMZ9XmfdcwBDpas5fnPmA8bNpu2Fg=;
        b=GVCnE3w6sRUPS/YdOAOjS2Eb47F33Lp45snMrgFKdR5U55nwYIgfMRI64w/e4Sp9aC
         k2LP8ZiErP8zoma5I+cwMDS9zDqGJ7baI72QGgawokHgS8pZ2ZwI5wHZU47/WZ4IxP7x
         6VFldD0KJBGsOCVnWNuL3ZZwLUXthEkWFC4GOeloLZ9Iqu5WAsfhGeZ7+CIYs4Nz4DvA
         l/1VnxmFhk5dYHxU/1IDhk2bvoU1FFxBaZ0d5dcWJmMXFl8vk0HSyTEkAxrcTrZgDQl4
         nWqJ5baw+rcBD74TVKghxGRQ/aJtugDyBiGszqFTqFh08sleD7cq2P7J/bBn73puvXzZ
         u52A==
X-Gm-Message-State: AOJu0Yx9KS8Vva9q/ilOB0CfO/S3hrAEiCbdidMW9E6ueT+XnOyQRb0i
	Ay+m2CP6CBSlYwxiACjwCrYHJcKFY4mPPDuepIXpnhOgIdn73hJJxI8uccLR+zALO18gRi4y14p
	d8fNIuIDVm0W1M6Ph5HInF9xZ6lw=
X-Google-Smtp-Source: AGHT+IHqWGtpV8soulX9y1rRosBuIAUEgG2Jc4VRk8Ut0iLTr4frRDVMDTEJIWlMkLuNncRsoBqBkt9+tGvNZGNgtxI=
X-Received: by 2002:a05:651c:1596:b0:2fa:d464:32d3 with SMTP id
 38308e7fff4ca-2fcdc80b149mr5248211fa.20.1730197475584; Tue, 29 Oct 2024
 03:24:35 -0700 (PDT)
MIME-Version: 1.0
References: <CANNYZj_K51Zm_4EnDUUsDGWZgP8-a4BPffmakMw-ksMEC63gxg@mail.gmail.com>
 <4749.1730196978027709373@lists.yoctoproject.org>
In-Reply-To: <4749.1730196978027709373@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Tue, 29 Oct 2024 11:24:23 +0100
Message-ID: <CANNYZj88HwSPabR88B+cg1AqA73ALOSRs0L5edibX8=kGw57yw@mail.gmail.com>
Subject: Re: [yocto] XFCE integration with Kirkstone (RISCV64)
To: Ankita.AN@exaleapsemi.com
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 29 Oct 2024 10:24:41 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64165

On Tue, 29 Oct 2024 at 11:16, Ankita.AN via Lists.Yoctoproject.Org
<Ankita.AN=exaleapsemi.com@lists.yoctoproject.org> wrote:
> I have tried below steps:
> 1. Adding meta-xfce and meta-gnome layers to bblayers.conf.
> 2.  IMAGE_INSTALL:append = " packagegroup-core-x11-xserver packagegroup-core-x11-utils packagegroup-core-x11 packagegroup-xfce-extended packagegroup-xfce-base mesa" to core-image-base.bb
> 3. IMAGE_INSTALL:append = "  xterm xclock xprop dbus dbus-x11 pointercal twm mini-x-session liberation-fonts" to local.conf.
>
> After boot,
> 1. Installed xprg package &run startx  command
> 2. Error: PFA
>
> Is there anything that I am missing here?

meta-xfce isn't regularly tested, and can regress. It's a starting
point, not a polished product.

I'd suggest you try the image from the layer itself:
https://git.openembedded.org/meta-openembedded/tree/meta-xfce/recipes-core/images/core-image-minimal-xfce.bb?h=kirkstone

I would also start with the master branch first, because if you need
to fix anything, it needs to be done there first, and backported
later. You also get recent versions of everything, in case you need to
send things to upstreams.

Alex

