Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7ABD5C3DA6E
	for <webhook@archiver.kernel.org>; Fri,  5 Jan 2024 04:04:53 +0000 (UTC)
Received: from mail-ot1-f44.google.com (mail-ot1-f44.google.com [209.85.210.44])
 by mx.groups.io with SMTP id smtpd.web10.16767.1704427483417145462
 for <yocto@lists.yoctoproject.org>;
 Thu, 04 Jan 2024 20:04:43 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=jlGT2D2l;
 spf=pass (domain: gmail.com, ip: 209.85.210.44, mailfrom: raj.khem@gmail.com)
Received: by mail-ot1-f44.google.com with SMTP id 46e09a7af769-6dc53fc4b0dso673482a34.2
        for <yocto@lists.yoctoproject.org>; Thu, 04 Jan 2024 20:04:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1704427482; x=1705032282; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zzjLT2jD8enRXMNizGkzOtxljcD0eW5WXtkrSBLem/M=;
        b=jlGT2D2luyZIuHtm8ZNF5lBq1qp27ylQ4Fp5rzlXKbdi6gz+io7R31jlESEGTloGXU
         mrwSWVvdAvbrpOb7krjuZODdYgW5H+VAPxPi7ygx/nwpOekBw3Y6B9E+fMSHhhb1sbsx
         DsrHiziOhRlrBqk+NkrsrzvNfQsjQyDg5N2tUFeakm4frDrUogywGdrtuCARiBDjNope
         cPVwy1ENx2AZLnTteV1IzeU7UvlYWbI5G/Vt24VdmrbvLdtWszV7tdt88gIo7oVgA6D6
         90hNgheM6u9w7iPsbnzXIoibPsYKmMls2GDq5IoVSKWbhC90cCWv//R3RvYp+rjDrqSz
         Vidw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704427482; x=1705032282;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zzjLT2jD8enRXMNizGkzOtxljcD0eW5WXtkrSBLem/M=;
        b=UFcjSsP41JEnqBhpsu01cVk6Jr4BcUyrEiifRtWgApt8051a8OOh5dUG4o1c9193P7
         UCbrwT3HY40br+K2Ge7tPSCljV43WZcm2/Ng88WiUaL/T3B5OXYhrld1kxczta2X+kQC
         gHMqEFBWQXsRUv72/bh6XcwalenuO9cgCVzVtevmuhg8MfY1XvkrXsGX2kvVlLGCE7N/
         r8XmwHNLIybsrKXHE5a6wnUPLuXAWOkOOgF6pa0EtU4lWrdSCHneOKPy2sD6oPMazsQL
         rbRXMQ9rBfUn+jBeeWJ8WCsa1wS+3xoCP64mAtTOJMyWsiv5UTEYlKdBTllxbuGzacRR
         q68g==
X-Gm-Message-State: AOJu0YwtQLa8GpuXQSey1IYyKqfyZy1ueuYHwHbaUsRzon7L63nJY0WM
	cZqmBW+xYbSF4ZWq2FTI7bRCI5VEMkHs7wtrrUTHPY8dx3c=
X-Google-Smtp-Source: AGHT+IFwryyo1Y2mKFEZY5AZ6qpaXGFB9hKnWwIeKkEJYXFoE0jgJVHzHJ/smG52Y0w603FQdF8l3wMGmh3RYWmGyCU=
X-Received: by 2002:a05:6870:bb06:b0:203:bb03:15d0 with SMTP id
 nw6-20020a056870bb0600b00203bb0315d0mr1658805oab.9.1704427482221; Thu, 04 Jan
 2024 20:04:42 -0800 (PST)
MIME-Version: 1.0
References: <r43l.1704412252768444272.riS0@lists.yoctoproject.org>
In-Reply-To: <r43l.1704412252768444272.riS0@lists.yoctoproject.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 4 Jan 2024 20:04:15 -0800
Message-ID: <CAMKF1srZXeh-tgnRJaM1V1+DnD3_8V=wkQOJnar_X9vi4vYDKQ@mail.gmail.com>
Subject: Re: [yocto] How to share a directory between an x86_64 host and a
 Yocto Dunfell guest? #bitbake #imx8 #poky #qemu #ubuntu #yocto
To: yocto@lists.yoctoproject.org, myles.dear@ktechnology.ca
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 05 Jan 2024 04:04:53 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62093

https://wiki.qemu.org/Documentation/9psetup might help.

On Thu, Jan 4, 2024 at 3:50=E2=80=AFPM Myles Dear <myles.dear@ktechnology.c=
a> wrote:
>
> Hello,
>
> I successfully built my Yocto Poky 3.1.30 binary on my x86_64 build host =
(running Ubuntu 20.04.6 LTS) and launched via QEMU.  So far so good.
>
> I now wish to share a host directory with my guest OS, but hit a limitati=
on that neither the 9pnet nor the 9pnet_virtio drivers required for sharing=
 appear to be installed on either side.
>
> I may be able to install these drivers on my host, but when I tried the "=
bitbake -c menuconfig virtual/kernel" command on my build host, and navigat=
ed to the File systems / Pseudo filesystems, I did not see any Plan 9 kerne=
l modules available.
>
> Am I missing something here?  Is it possible to share folders between hos=
t and guest?
>
> Could you recommend next steps ?
>
>
>
> Many thanks.
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#62092): https://lists.yoctoproject.org/g/yocto/messag=
e/62092
> Mute This Topic: https://lists.yoctoproject.org/mt/103533984/1997914
> Mute #bitbake:https://lists.yoctoproject.org/g/yocto/mutehashtag/bitbake
> Mute #imx8:https://lists.yoctoproject.org/g/yocto/mutehashtag/imx8
> Mute #poky:https://lists.yoctoproject.org/g/yocto/mutehashtag/poky
> Mute #qemu:https://lists.yoctoproject.org/g/yocto/mutehashtag/qemu
> Mute #ubuntu:https://lists.yoctoproject.org/g/yocto/mutehashtag/ubuntu
> Mute #yocto:https://lists.yoctoproject.org/g/yocto/mutehashtag/yocto
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail=
.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

