Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 78C16D0E6DD
	for <webhook@archiver.kernel.org>; Mon, 21 Oct 2024 10:12:27 +0000 (UTC)
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
 by mx.groups.io with SMTP id smtpd.web10.43096.1729505541524837420
 for <yocto@lists.yoctoproject.org>;
 Mon, 21 Oct 2024 03:12:21 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=CeIxGcL0;
 spf=pass (domain: gmail.com, ip: 209.85.167.47, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-539ebb5a20aso4309418e87.2
        for <yocto@lists.yoctoproject.org>; Mon, 21 Oct 2024 03:12:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1729505540; x=1730110340; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=LO+1pvXax/d7QvbBjAeYuwRfQWx+1lwD+xlPF3390dQ=;
        b=CeIxGcL00v0TBjzuC8m8eEiASa+h7m9Wr2xkKLWwuWGdPKFqH/Y0RS0+pMPDI+4lSd
         sn/Lbm2GKzJi71eQR1GZCfkr47elfJrDLCEkmKe8D4/2GoqQX7uAQLkfZMNTBE85kx25
         +zvUpZiwYWRFwlrNkSTco5SB/gnAJDhKv3rX42uLfbOGzgYQnN4Atu8nSYZ7ERjl8fzp
         T9StVgVrcnR48sQUk7OCGtpQHqEvfUyLnrqpPEgjSTnChuq96Wn2iHjDaop4wVcp4fxi
         bjvPTZMkJWqQlBGfdIwzAc3WJQ30uQBjVZj3gr9kI6MvXT899VxjpA8MRVs+Eo5PV9Sm
         EukQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729505540; x=1730110340;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=LO+1pvXax/d7QvbBjAeYuwRfQWx+1lwD+xlPF3390dQ=;
        b=hdKA/VFs6X5Offe7aqVpLZmuJ+jX6Atr0FHElpRsiGP5oPcn9SDUlzW+rAWpRgdT00
         GMOssbsgv5tJ1jLXFxfE11iMOs6n7FnMdPn5c4zr4LFrmR2J/LfebtOm7F4A6lekoF2T
         G29nPHmzwhcptDpeBnAzstLl734xcxnfhpkOBgJ9GAxjGQOnLRvszgv2RFjPHnAHDxBn
         6l9hxFq5kkr6FheXLsOk6IZVA0tnk+gmRi5gHSZqjekkfaEqBmAh1Jz5LPaBd9SLulhy
         eGlKFBRVK97284wlVyUyU5xif0Iu8Jnc5sCagB3IOeQNrLdRxUv01yPLyff/ktnqQto0
         w3WQ==
X-Gm-Message-State: AOJu0Yy6nein4B/Ri9TLK6eG6Z3Rc+KfsxMkzUXuHAldjTIOkXSdFyuq
	Rla5v/8xGvjrIV048dGhBhbgCBYR25YCxHFCI7pmGW/s8jddm6mOOMrIQRCiPtnvhZR8sO3C4tY
	/3uTSMtzeVkUuwo4HTVJEdlzcAxtHfA==
X-Google-Smtp-Source: AGHT+IGdLNMiQogncUXXk1my+q9fsdses5QqNH2sxe6fJNyTYujAzAKbDbEysvvXNi36Tz8O1UaPiZtKkkkLaY1FiO0=
X-Received: by 2002:a05:6512:10d1:b0:534:5453:ecda with SMTP id
 2adb3069b0e04-53a154a2b03mr5319956e87.23.1729505539443; Mon, 21 Oct 2024
 03:12:19 -0700 (PDT)
MIME-Version: 1.0
References: <wQRX.1729495924467332184.Nfcl@lists.yoctoproject.org>
In-Reply-To: <wQRX.1729495924467332184.Nfcl@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Mon, 21 Oct 2024 12:12:08 +0200
Message-ID: <CANNYZj9R4-vhayBdo9VSTiYETXr87mLu9yRMBjAasSYbJVu+ZQ@mail.gmail.com>
Subject: Re: [yocto] Question Regarding MACHINE_EXTRA_RDEPENDS vs MACHINE_EXTRA_RRECOMMENDS
To: yocto@lists.yoctoproject.org, marcus.flyckt@gmail.com
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 21 Oct 2024 10:12:27 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64060

I guess you need to investigate why one triggers the error and the
other does not by grepping where those are actually used during
do_rootfs. Basically take the whole poky tree and check all mentions
of it.

Alex

On Mon, 21 Oct 2024 at 09:32, Marcus Flyckt via lists.yoctoproject.org
<marcus.flyckt=gmail.com@lists.yoctoproject.org> wrote:
>
> Hi,
>
> I have a question regarding the use of MACHINE_EXTRA_RDEPENDS and MACHINE_EXTRA_RRECOMMENDS.
>
> I've written a kernel module to handle a specific aspect of our custom hardware, and I added it to
> MACHINE_EXTRA_RDEPENDS to ensure it's always installed. However, this triggered the following SPDX error:
>
> ERROR:[...] do_rootfs: Unable to find package with name 'kernel-module-my-module' in SPDX file [...]/kernel-module-my-module-6.6.23-lf-6.6.y-lf-6.6.y-06244-g79c903fdc910.spdx.json
> ERROR: Logfile of failure stored in: [...]/1.0/temp/log.do_rootfs.725497
> ERROR: Task ([...]:do_rootfs) failed with exit code '1'
>
> It seems that `create-spdx` is confusing the `kernel-module-my-module` package with
> `kernel-module-my-module-$KERNEL_VERSION`. The error disappears when I use
> MACHINE_EXTRA_RRECOMMENDS instead.
>
> So my question is: is this a bug, or am I misusing MACHINE_EXTRA_RDEPENDS?
>
> Kind regards
> Marcus
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#64056): https://lists.yoctoproject.org/g/yocto/message/64056
> Mute This Topic: https://lists.yoctoproject.org/mt/109128269/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

