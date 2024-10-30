Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DCE6DD5CCA1
	for <webhook@archiver.kernel.org>; Wed, 30 Oct 2024 12:16:02 +0000 (UTC)
Received: from mail-lj1-f176.google.com (mail-lj1-f176.google.com [209.85.208.176])
 by mx.groups.io with SMTP id smtpd.web10.13457.1730290554085682382
 for <yocto@lists.yoctoproject.org>;
 Wed, 30 Oct 2024 05:15:54 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=Hjiqsa+g;
 spf=pass (domain: gmail.com, ip: 209.85.208.176, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f176.google.com with SMTP id 38308e7fff4ca-2fb5014e2daso62935801fa.0
        for <yocto@lists.yoctoproject.org>; Wed, 30 Oct 2024 05:15:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1730290552; x=1730895352; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=ThsVu6VAZNqq5HF2XjwnPkKk/yVPMHWgrS1+dZ3LLCs=;
        b=Hjiqsa+gl4FOnbNemUPLnXUkOGEe/zCtg3nKyWc2AhR5lh3inWgfcoCBKwddaj6Kzm
         EUFinIq68Qzqz630wJrZpdL9v9GiSD5CNVwJPDDE+FDZradN5/Z+7ZwURitjQLkqL/Q1
         vlPKuxva51N/KTAzXg/3FEMy1PNnETS2/pXt03KjLQ5Tvx8vwtdZsCRHoknvgUfO7SpL
         qDVKZXr7m0mqaIoJ6yQeO4btI7QXVNZj+xkUqH7Rn5YMRgc+gXzh1qiJW7+kN2Z751Xs
         zun7FhPrg9GzHyIaEJBjiPHLaBL4I933lE7aYG61rDpFZfaZrjlqWSYz/9q7xcApzvHo
         JG2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730290552; x=1730895352;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ThsVu6VAZNqq5HF2XjwnPkKk/yVPMHWgrS1+dZ3LLCs=;
        b=bI/neR2PcXR3sIVLpZ0YIEtBk1VLwaXdG3NwTUlOiij+JTQNPBo6KuGs4oeDohBFDB
         yYWm2/IG3eabNgtM43ut2aSwpgDCnUUh1iPlTugkykeDFgC0r25WwESPXr4On/WDNibQ
         LS5V6ckbJ/nXiLKsj+v990pH/U4i8zIrydrHeA/6nknG8cFR4JVejgHcsMFoMlILRq6m
         /vQkchjUABTfJcJ3QKpSDkG5P8DDiUwg9nqIQMm6m80XyQKG56yXo86TfBsdZMc9ZiBR
         PfASxKvxHERCe/sP5sTQYmkNC6HmW5YQg4hIM0l1rril/5SbSA/+CjnR788ohcHBY8di
         9Mow==
X-Gm-Message-State: AOJu0YyMQIZCPWRos4rBVKcDopiIOcPc5bjCp4RVQKkfZsLG8XT4wawo
	0Oqoa4NiqD1v5eUgA9D71S9JwdQjLnyxXGpCbWmJxWxo8W2+vBFJuOkD8cvpZZtCQd9H6H/lpKn
	V9sSoVF/qgd+hlmRZHSUPIbidSjs=
X-Google-Smtp-Source: AGHT+IGzBw+aoTEU0L4Ze8GtlPGQdTG3MBMjB/ej6mV01RSYRPqpLkpOqMWFZX4+dsLUCyqv8UMXAEeFQ7twkJXUrYQ=
X-Received: by 2002:a2e:a9a4:0:b0:2fa:ce00:3689 with SMTP id
 38308e7fff4ca-2fcbdf626efmr84062851fa.6.1730290551903; Wed, 30 Oct 2024
 05:15:51 -0700 (PDT)
MIME-Version: 1.0
References: <CANNYZj_zzRO0Bi84_xAHCe2xNRBXXnsBEgzr-=kohwqKQhE2UQ@mail.gmail.com>
 <26434.1730288069309788991@lists.yoctoproject.org>
In-Reply-To: <26434.1730288069309788991@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Wed, 30 Oct 2024 13:15:40 +0100
Message-ID: <CANNYZj-dOcmY=OdgcZ14vD1Jmunyx3X_U90NDG3bumV5t3kpOA@mail.gmail.com>
Subject: Re: [yocto] Building SDK fails after update to scarthgap
To: freddy.boman@bastec.se
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 30 Oct 2024 12:16:02 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64180

On Wed, 30 Oct 2024 at 12:34, freddy.boman via Lists.Yoctoproject.Org
<freddy.boman=bastec.se@lists.yoctoproject.org> wrote:
> I tried building nativesdk-qemu directly without doing the whole populate_sdk based on our distro.
> Same result. Looks like nativesdk-virglrenderer is not built or installed. Looking in the recipe for qemu I can not find virglrenderer explicitly set as a dependency anywhere.
> Not really any other dependencies set there either. Assuming its done somewhere else.
> There is however a part that makes sure to remove virglrenderer (and some other bits) if the system cannot support it.

virglrenderer is pulled into qemu's sysroot via PACKAGECONFIG
settings. The last field is what gets appended to DEPENDS if
virglrenderer is in PACKAGECONFIG:
meta/recipes-devtools/qemu/qemu.inc:PACKAGECONFIG[virglrenderer] =
"--enable-virglrenderer,--disable-virglrenderer,virglrenderer"

Let's inspect the output of 'bitbake -e nativesdk-qemu'. This is how
it looks for me:

- DEPENDS should include nativesdk-virglrenderer, something like this:
DEPENDS="bison-native chrpath-replacement-native nativesdk-glib-2.0
meson-native nativesdk-dtc nativesdk-libepoxy nativesdk-libsdl2
nativesdk-libslirp nativesdk-virglrenderer ninja-native
nativesdk-pixman pkgconfig-native python3-native
virtual/nativesdk-libc
virtual/nativesdk-x86_64-pokysdk-linux-compilerlibs
virtual/x86_64-pokysdk-linux-gcc nativesdk-zlib"

- EXTRA_OECONF should include --enable-viglrenderer
(too long to copy paste)

- PACKAGECONFIG should include virglrenderer:
PACKAGECONFIG="fdt sdl kvm pie slirp     virglrenderer epoxy "

Do all three conditions hold true for your side? If they do, then
content of nativesdk-virglrenderer's ${WORKDIR}/sysroot-destdir/
should be in nativesdk-qemu's sysroot, so you can inspect what that
content is, and does it arrive to qemu's ${WORKDIR}/recipe-sysroot/.

Alex

