Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C159C3DA42
	for <webhook@archiver.kernel.org>; Wed, 10 Jul 2024 11:48:40 +0000 (UTC)
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com [209.85.208.173])
 by mx.groups.io with SMTP id smtpd.web11.12450.1720612117740490564
 for <yocto@lists.yoctoproject.org>;
 Wed, 10 Jul 2024 04:48:38 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=Gmx5mX0W;
 spf=pass (domain: gmail.com, ip: 209.85.208.173, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f173.google.com with SMTP id 38308e7fff4ca-2eea8ea8bb0so54426701fa.1
        for <yocto@lists.yoctoproject.org>; Wed, 10 Jul 2024 04:48:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1720612116; x=1721216916; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=21IMbqC0xtcaqlen2fJn8ZCHcA0V/LJELYrvaOOC/os=;
        b=Gmx5mX0Wcjh4aLwshC/YUtPYjh69+MfgMT0rFw0Du/OV7LWtLweflf/T7L3txHMITz
         NpzRBV0cJiVPtVYSKA4lufn4LUX9H1yzfsoYpIK5jdEXHp1rRtH1T5o5GfWXRMtOuDfH
         ZL+/ilwRQHzvUvYzi8zL6huT2X+8/miNfx+Lq6ygVakSNqXKhZFkSEas519x2TGFPho1
         QKr/Tt7B3eayNob9km1u07HwYmDpq959gUd8QIvLrCV/6KcJtUfw+eg0mnHmw6hWZlGF
         65B18u5DAZuj3hNfoBrC0LIcKfkTF/vABSGkflUI7chD/Rjnp8JS0AjTtHeYkLgapI8j
         VRyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720612116; x=1721216916;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=21IMbqC0xtcaqlen2fJn8ZCHcA0V/LJELYrvaOOC/os=;
        b=AAWLHSsIWJi41vYQN/XpFKgrQ2NGhpym9LJ+ncBSA/Fqdca3ZpLlLabHBDgvvxWIKQ
         bEHr+a4k2J+75qUrZzUbawHjS4djMgiHebXOiE3t32GbBmO5kagEGVQ6BaLLYfO5CDut
         cezG9ISCwYDbEmWJrizCXSAbbw76yNw53NdA5X8iw49KPPEUp2Q3w56xTcjx7Xf0nP2r
         eF9ivr+QSf9005Ro5OyrBVfOp4BwZSgrVArYFKNTdjgUYSB8r2kX1e0gAtkE5OyINB0k
         DVfe/slIws3IlMZ0pg58lnrgSJpB0nRwTzrfytUciYlUHlZcukudUSUDff2OrcKaXoVM
         3Nfg==
X-Gm-Message-State: AOJu0Yy3lwvF+YpgfxNXIn7Yi6vVESCYKfqNEeb9MvnafgV4dW7F6ezQ
	8faCeP7bMYQNptLTMz4As5FKbCSlsqTUtzHHbBDoXmUBkZNv1gwh0dP+bmfTrp1pX0k0QRRzoSf
	6qE5BfEVnTiwpMVwlTLMHHIb7mX+AiY53
X-Google-Smtp-Source: AGHT+IEgv/dFrIBRyTDHTBpJogidUZGgyqJ1tf13bi+icEw6YaHl++eaDqvtAcq4i3QufXijHnl6kLkyF2Kcl3bWhNM=
X-Received: by 2002:a2e:a792:0:b0:2ec:4f0c:36f9 with SMTP id
 38308e7fff4ca-2eeb3169f11mr55138271fa.36.1720612115558; Wed, 10 Jul 2024
 04:48:35 -0700 (PDT)
MIME-Version: 1.0
References: <yEAa.1720608746953032896.RB58@lists.yoctoproject.org>
In-Reply-To: <yEAa.1720608746953032896.RB58@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Wed, 10 Jul 2024 13:48:22 +0200
Message-ID: <CANNYZj8xOKK=s+QnDR-XxZsmJrhcHH2JD4x3x4sgSoqG16vvZQ@mail.gmail.com>
Subject: Re: [yocto] Common Kernel and Rootfs builds for multiple devices with
 different device trees
To: yocto@lists.yoctoproject.org, philip.dawson@datapath.co.uk
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 10 Jul 2024 11:48:40 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63453

If the four devices have four separate MACHINE definitions in the BSP
layer, then you'll have to build four different kernels.

I would look into why your custom software is dependent on the kernels
and if that's really necessary. Typically userspace recipes are
written in a way that their sstate output can be reused between
different target machines, if those machines have the same
architecture.

Alex

On Wed, 10 Jul 2024 at 12:52, philip.dawson via lists.yoctoproject.org
<philip.dawson=3Ddatapath.co.uk@lists.yoctoproject.org> wrote:
>
> Hi,
>
> Sorry if this isn't a sensible question - I'm not quite familiar enough w=
ith Yocto to be sure if what I'm asking for is sensible/possible.
>
> I'm currently building yocto (Through Xilinx Petalinux) for 4 related dev=
ices and am looking to see if we can generate a single kernel and single ro=
otfs image for each board.
> At the moment each board builds as a separate Petalinux project and the c=
ombined build of all 4 takes a long time and the resulting images take up a=
 lot of disk space.
>
> Currently I'm not sure it's possible as there is a dependency chain from =
device tree -> kernel -> modules/drivers -> our custom software. This means=
 the images are always different and the sstate cache for the kernel/driver=
s/custom software is only valid for the board it's built against.
>
> Is there a way we can build one kernel for all four images even though th=
ey will all need different device trees?
>
> Am I even asking the right question here?
>
> Best Regards,
> Phil Dawson
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#63452): https://lists.yoctoproject.org/g/yocto/messag=
e/63452
> Mute This Topic: https://lists.yoctoproject.org/mt/107140139/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@g=
mail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

