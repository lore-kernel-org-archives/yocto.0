Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1E6C6C3DA5D
	for <webhook@archiver.kernel.org>; Fri, 19 Jul 2024 06:08:23 +0000 (UTC)
Received: from mail-oa1-f44.google.com (mail-oa1-f44.google.com [209.85.160.44])
 by mx.groups.io with SMTP id smtpd.web11.13011.1721369299755410648
 for <yocto@lists.yoctoproject.org>;
 Thu, 18 Jul 2024 23:08:19 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=apa6/45r;
 spf=pass (domain: gmail.com, ip: 209.85.160.44, mailfrom: raj.khem@gmail.com)
Received: by mail-oa1-f44.google.com with SMTP id 586e51a60fabf-26109c97728so243956fac.0
        for <yocto@lists.yoctoproject.org>; Thu, 18 Jul 2024 23:08:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1721369299; x=1721974099; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RcWSxiHpFJISTDEx3tB9CRxHVApkuFjOp2wWMqt1NRY=;
        b=apa6/45rEGqwd2vqGUr8s00weoCkAc87e5lAf6Oz60b/pZ3LelO51wcBneIzlwQiCz
         NIA4pjzHLxmgShRj59G5Y+as9tkrpsJbO5dzCLVbfsLwZEOVBDDWhTCqHCTegxPBd98E
         AlXgvXVBxK5VjC5FDsujn6ckSoZo96In6N+t9IckSVDb7ozia6Fq2tlxqBu/hL4G3sYN
         CNNJkYWm2GEkTBkAo9BLztGshOelOqLc3gdo3CwuXH/yfR6tK7QHdJGpCOv7y6ZpjlTy
         aUt+YUwEnQLSx/M1l41eJjopFfz+INRsHW7tlHNbpKFr7/TJMeoUwVr8xiAcKE2Qz16V
         5S2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721369299; x=1721974099;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RcWSxiHpFJISTDEx3tB9CRxHVApkuFjOp2wWMqt1NRY=;
        b=Tltbpyq9FnTJWdxTsbKSlsOomNVYvwwASTA1e2GVqV9SYsIfcS/CGGKeC3NHQc17V1
         e6dOlvlkUUS4ay0IgnttVThzPUybeE4IQM+S13HtXg+XSvFTFq+5P6eig/Z6WAr0TyXh
         28OYWNY/PJ222Lr1BEIuLZ343vqCkpqvKb5sTkBDmpwuypnzzkA2gTFRraP2qDkUyzmP
         SHZUiVB49AiKEg+abLFTJ6bTbaydh4/gpNifO6ka1W8HeRC/Yo4FZ/eJ2NPl3vpFvpDu
         1bK12JjGoDEGG2WPbdxD6AJLSRFlYkGTxnO6suJS+mYEduAN7tXvh/USYgauZ31KuYwY
         MbuQ==
X-Gm-Message-State: AOJu0YxRIjbfDT1FLPnlrxv35fzGXEg7V2ktFnF4AA4mvuqrQwMgHh4U
	brnHQ/ymu+FdRnD591g5VPHEJVKvIaScDKUuKmyhimlUVD+36hohKXzK9BseyMQF9cmyDRrrlbt
	wVSV4KdGWeUaPWOTZRnvANKoqMEw00hzO
X-Google-Smtp-Source: AGHT+IGZhKl7x7sK22nUqptGmBLYptyIG4Sn5jbJHU35NwCoCBOUz26mzpbb1KHmxWeVKaQo19mgxS8QXhRxj2P81z0=
X-Received: by 2002:a05:6870:a912:b0:261:9c7:a0bb with SMTP id
 586e51a60fabf-261123a923cmr529667fac.48.1721369298707; Thu, 18 Jul 2024
 23:08:18 -0700 (PDT)
MIME-Version: 1.0
References: <rzah.1721368687157871565.KgGq@lists.yoctoproject.org>
In-Reply-To: <rzah.1721368687157871565.KgGq@lists.yoctoproject.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 18 Jul 2024 23:07:52 -0700
Message-ID: <CAMKF1spAY9mmn48VBnoTe_LOu0+5gd3MDAsAQK_4jw7NRiDH-A@mail.gmail.com>
Subject: Re: [yocto] Weston failing on RK3568 yocto honister
To: yocto@lists.yoctoproject.org, poornesh.g@mindteck.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 19 Jul 2024 06:08:23 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63532

On Thu, Jul 18, 2024 at 10:58=E2=80=AFPM Poornesh G ( India - Bangalore ) v=
ia
lists.yoctoproject.org
<poornesh.g=3Dmindteck.com@lists.yoctoproject.org> wrote:
>
> Greetings !
>
> I have built a yocto (honister) for RK3568 evb machine. I am trying to en=
able wayland in my yocto since i have LCD and HDMI interfaces connected. Bu=
t i could not able to launch weston as am getting "FATAL: dlopen(libmali.so=
.1) failed((null))". But i have "libmali.so.1" available in my Rootfile sys=
tem.
>
> Please refer the detailed log below . I kindly requesting your suggestion=
s to overcome this issue.
>

You might try launching it with  LD_LIBRARY_PATH=3D/lib:/usr/lib weston
secondly, try to dump the SONAME from libmali.so.1 and see what it says.

> Thanks in advance.
>
> -------------------------------------------------------------------------=
---------------------------------------------------------------------------=
---
> root@rockchip-rk3568-evb:~# weston
> FATAL: dlopen(libmali.so.1) failed((null))
>
> root@rockchip-rk3568-evb:~# ls -lah  /usr/lib/libmali.so.1
> lrwxrwxrwx    1 root     root          16 Nov 19 17:22 /usr/lib/libmali.s=
o.1 -> libmali.so.1.9.0
>
> root@rockchip-rk3568-evb:~# weston
> FATAL: dlopen(libmali.so.1) failed((null))
>
> root@rockchip-rk3568-evb:/usr/lib# ldd libmali.so.1
> linux-vdso.so.1 (0x0000007f94267000)
> libdl.so.2 =3D> /usr/lib/libdl.so.2 (0x0000007f8d63c000)
> libpthread.so.0 =3D> /usr/lib/libpthread.so.0 (0x0000007f8d62a000)
> libdrm.so.2 =3D> /usr/lib/libdrm.so.2 (0x0000007f8d604000)
> libwayland-client.so.0 =3D> /usr/lib/libwayland-client.so.0 (0x0000007f8d=
5e4000)
> libwayland-server.so.0 =3D> /usr/lib/libwayland-server.so.0 (0x0000007f8d=
5bf000)
> libstdc++.so.6 =3D> /usr/lib/libstdc++.so.6 (0x0000007f8d3a5000)
> libm.so.6 =3D> /usr/lib/libm.so.6 (0x0000007f8d310000)
> libc.so.6 =3D> /usr/lib/libc.so.6 (0x0000007f8d169000)
> libgcc_s.so.1 =3D> /usr/lib/libgcc_s.so.1 (0x0000007f8d144000)
> /usr/lib/ld-linux-aarch64.so.1 (0x0000007f94233000)
> libffi.so.8 =3D> /usr/lib/libffi.so.8 (0x0000007f8d12a000)
>
> -------------------------------------------------------------------------=
---------------------------------------------------------------------------=
----------
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#63531): https://lists.yoctoproject.org/g/yocto/messag=
e/63531
> Mute This Topic: https://lists.yoctoproject.org/mt/107430561/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail=
.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

