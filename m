Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2A840C25B10
	for <webhook@archiver.kernel.org>; Mon, 13 May 2024 07:14:08 +0000 (UTC)
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
 by mx.groups.io with SMTP id smtpd.web11.54486.1715584445890806838
 for <yocto@lists.yoctoproject.org>;
 Mon, 13 May 2024 00:14:06 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=kPAPoWQ1;
 spf=pass (domain: gmail.com, ip: 209.85.167.48, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-51f0f6b613dso4827096e87.1
        for <yocto@lists.yoctoproject.org>; Mon, 13 May 2024 00:14:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1715584444; x=1716189244; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=IGV+D+l29Zty3W35le5r2Rqh865xw5Tm4LrAjUfwexw=;
        b=kPAPoWQ10ifMUVbSkLPMtvupobcDZZqRMSQ4uPnbpKSOcoT/tvkOjOjP9VWadMnkDP
         l0vcW4DeIs1hmXl05SvAbOKQqGmtP+feWynDKiXQo5aC+v7lFpSHMpQm3SuR4tTo8zS4
         DmibUBVnJ5eZxFLd+v3ho/MJpmvKzS0V8a9dT4ecAMtJ7oPG7MEmsw+2jStG/OzyaDP6
         gu3476LOH1S5g373n2VyTjdNO7SFqTc5PhDdBOvuFDovKzFYBCQZP64vCEH3S3dxv0ys
         y3YTeAGoSZeQW159LoVh7x6SC6rqTMwDmjytFKvSwmKjR6cleJgjY2qHdJjzKijoOP+G
         Ug+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715584444; x=1716189244;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=IGV+D+l29Zty3W35le5r2Rqh865xw5Tm4LrAjUfwexw=;
        b=XtDFI7bCsZbUrynyLP338mWftIDr3IZNfWwlBV9TClmQfvI5aOTdQvxNRX07sqkW6+
         B9p9fDrHMPA0LJKtql2dsKH+20W9whg+vPTbTWLGAw/s6mgab1d5VOSfDrhZeNRIHKLh
         rm7lCsf+0vXV8hPf8ZEuRTJ0DnSG+fCP/vJuwkdTMqWv0CjqN4BJbVg1KOYDegSD3zOj
         /NYVIfcbLtB1giMKeKvH5O8Q83yX/f+kDphDE0dS6Ht0sjCKE9snA6E4yKQiD+hiu/DE
         nvvGHMw6ITj0hn6kY4CJd7MogzMsuW6wRYNgGNBd7F2wwZ1CscJ+5lEnEYamX8c8GrVi
         msjA==
X-Gm-Message-State: AOJu0Yy8bPPT4exlaSqntGSAVmHnot1Asp0e8c0VaJCayn2yzBK4d8i/
	xcQ8jrzT1RiNaiNVVTTDDTOeLSwLWi7iPt4k7nSdTN7hNVh5Vg69AUryXLqLWQ6PJYwbP04+HZ3
	/mQsXMEkvUA5Prgh8+JmO6KZQD8c1TA==
X-Google-Smtp-Source: AGHT+IGPI1np4Yy4/bG65/cMjD+Ht9I731Zze70cDDNzm4kqHXFAx5mMsMaOSj2NNf6wcE7PMGglxGZHmpsimUd6++g=
X-Received: by 2002:a05:6512:3b08:b0:51a:cafd:3872 with SMTP id
 2adb3069b0e04-5220fc736b0mr6817096e87.3.1715584443734; Mon, 13 May 2024
 00:14:03 -0700 (PDT)
MIME-Version: 1.0
References: <CANuMBWHvmSZ1xuEuSW=aUy3ig93ckw7o+Zb6Wd_4hDm=_tscnQ@mail.gmail.com>
In-Reply-To: <CANuMBWHvmSZ1xuEuSW=aUy3ig93ckw7o+Zb6Wd_4hDm=_tscnQ@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Mon, 13 May 2024 09:13:52 +0200
Message-ID: <CANNYZj8zTegW8tnHoKrkDDKKaQPmvY36FVQpGxzsbvjCJisKeQ@mail.gmail.com>
Subject: Re: [yocto] Opkg cannot find anything to satisfy 'kernel-module-iwlmvm'
To: yocto@lists.yoctoproject.org, worik.stanton@tirotech.co.nz
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 13 May 2024 07:14:08 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63076

You need to look into build logs and build directory for the kernel
recipe to see what modules are being built and packaged.


Alex

On Mon, 13 May 2024 at 02:02, Worik Stanton via lists.yoctoproject.org
<worik.stanton=tirotech.co.nz@lists.yoctoproject.org> wrote:
>
> Friends
>
> Where in a yocto build can I find the definition of a package for opkg?
>
> I am building an image for a Toradex NXP.
> I have to replace the WiFi chip with a iwlwifi Intel chip
> When it is building my core image recipe it fails with the message:
>
> * opkg_prepare_url_for_install: Couldn't find anything to satisfy 'kernel-module-iwlmvm'
>
> I have a working build for an Intel Nuc that uses this chip and builds with no problems.
>
> In both builds the IMAGE_INSTALL has kernel-module-iwlmvm and kernel-module-iwlwifi added
>
> I looked into the opkg package list and there is no "kernel-module-iw*", there is "kmod-iwlwifi" so I switched to that, but the error I got was:
>
> "ERROR: Nothing RPROVIDES 'kmod-iwlwifi"
>
> I searched all of the files, (on both systems) I have and I cannot find where "kernel-module-iwlmvm" is defined as a package for opkg.  The fact that changing "kernel-module-iwlwifi" to "kmod-iwlwifi" indicates it is defined somewhere.
>
> IMAGE_INSTALL += " \
>     sentinel \
>     gdb \
>     strace \
>     packagegroup-boot \
>     packagegroup-basic \
>     packagegroup-base-tdx-cli \
>     packagegroup-machine-tdx-cli \
>     packagegroup-wifi-tdx-cli \
>     packagegroup-wifi-fw-tdx-cli \
>     packagegroup-fsl-gpu-libs \
>     udev-extraconf \
>     storage-mount \
>     root-key \
>     terminal-server \
>     ubx \
>     lbtool \
>     iw \
>     kernel-module-iwlwifi \
>     kernel-module-iwlmvm \
> "
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#63074): https://lists.yoctoproject.org/g/yocto/message/63074
> Mute This Topic: https://lists.yoctoproject.org/mt/106063799/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

