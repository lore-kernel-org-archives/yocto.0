Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7EAEC4332F
	for <webhook@archiver.kernel.org>; Tue, 12 Dec 2023 19:09:25 +0000 (UTC)
Received: from mail-oi1-f182.google.com (mail-oi1-f182.google.com [209.85.167.182])
 by mx.groups.io with SMTP id smtpd.web10.4963.1702408157348129894
 for <yocto@lists.yoctoproject.org>;
 Tue, 12 Dec 2023 11:09:17 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=mfk48vkf;
 spf=pass (domain: gmail.com, ip: 209.85.167.182, mailfrom: raj.khem@gmail.com)
Received: by mail-oi1-f182.google.com with SMTP id 5614622812f47-3ba00fe4e98so2453029b6e.2
        for <yocto@lists.yoctoproject.org>; Tue, 12 Dec 2023 11:09:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1702408156; x=1703012956; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=A7ClHiyN+G0ZcwcvKBWi3xTNSJT3il8hNS5HJ+IK0wc=;
        b=mfk48vkfkq/Tl3U16a+CPRGZy6FdZDpSNIav8NXw3hVaqZEwUT+stD15O3ALxB1tIA
         MtTIa4abMf5PTwtCUN9s4jTrTKcRA3xxmsztUi0u82X2GIkBaJYEfWq87NiHR1PxJrx5
         sMAcZaCQTCiujr3IZMszOjrnYG+HV3aU4ZNXKmEhdHYEGh8sK2R1IXPUrWL2EURfbDRy
         fVcqhB//XdDkl3DZTD5rJkQIDEFvcU/lOydKouXKHOQy8eTpSac5SAUKDDfK9iUMDiw6
         PY/O5IBPZ+5tpCTZ5cI47iWc2EXRtRV2SEZ19lrcdsRS2xZGMfWS8xqW1Pp30eIf+5+c
         kZNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702408156; x=1703012956;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=A7ClHiyN+G0ZcwcvKBWi3xTNSJT3il8hNS5HJ+IK0wc=;
        b=WTu4vzNv9cc9v5k3qAg0E1EonhRsKJq+g+B5t0hJvELO6Eq0np73B0Sl52/X4Rngvg
         1xy4wH+Xkxy6FxTiMbh7FnH4JYFnHNc2vdQsf8RlblDJgVvTRtmACr/OgPDd1oQ/ZrKf
         Njj58kb1qoUUrEkTUujRra7+5UcZy1ky7VxOA1tH/uvedHWyEqLA25/2YB3VWQaTEv26
         PzMWuNCuhqPBiqO4/fsiMSFfXP5Oezh0/poCGz9Xx3YHEeMv1Xk/Kq/0Fs+ejqcO8DZa
         KYOmmQ7OkqbU4ZcgXdoDisWB8iA+PSBAtmiPxsZ0NqjzZAebh2cF+E4DBJvww587P9D/
         s+SA==
X-Gm-Message-State: AOJu0YwE3qd5NQSPZ0JT7SEh0ynNuzS3PqqZ6gLD72gfH210JiftqQXc
	BtPZbqtjabTLV6+Rp3AnY8ziRctXajufSWBgeJM=
X-Google-Smtp-Source: AGHT+IE4Egl/LBgzcZXqPiqJYGeHpfx5pxp64USLqQw0fsMB47342qM777Un6drKBtRvx0MUQnSNhkheYTi2E6J6uNE=
X-Received: by 2002:a05:6870:d625:b0:1fb:75b:1321 with SMTP id
 a37-20020a056870d62500b001fb075b1321mr8433750oaq.115.1702408156521; Tue, 12
 Dec 2023 11:09:16 -0800 (PST)
MIME-Version: 1.0
References: <CAMKF1soGMfurWU73f7SVRQ_owbNBepor_z+WbMSJ7ThXhC-3UA@mail.gmail.com>
 <16371.1702407088705855227@lists.yoctoproject.org>
In-Reply-To: <16371.1702407088705855227@lists.yoctoproject.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 12 Dec 2023 11:08:50 -0800
Message-ID: <CAMKF1spShJcZGzvgtapnhMHknKBCmypqmZ4k+U4XrdTw6t7=7A@mail.gmail.com>
Subject: Re: [yocto] do_rootfs failed
To: daniele.lugli@gmail.com
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 12 Dec 2023 19:09:25 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61866

On Tue, Dec 12, 2023 at 10:51=E2=80=AFAM <daniele.lugli@gmail.com> wrote:
>
> Thank you Khem for your reply.
>
> From meta-poky/conf/distro/poky.conf:
> DISTRO =3D "poky"
> DISTRO_NAME =3D "Poky (Yocto Project Reference Distro)"
> DISTRO_VERSION =3D "4.3+snapshot-${METADATA_REVISION}"
> DISTRO_CODENAME =3D "nanbield"
>
> From bitbake:
> Build Configuration:
> BB_VERSION           =3D "2.6.1"
> BUILD_SYS            =3D "x86_64-linux"
> NATIVELSBSTRING      =3D "universal"
> TARGET_SYS           =3D "x86_64-poky-linux"
> MACHINE              =3D "genericx86-64"
> DISTRO               =3D "poky"
> DISTRO_VERSION       =3D "4.3+snapshot-4bb222e0d71a4cb159b8a4f1a90b65b1af=
32ac10"
> TUNE_FEATURES        =3D "m64 core2"
> TARGET_FPU           =3D ""
> meta
> meta-poky
> meta-yocto-bsp       =3D "master:4bb222e0d71a4cb159b8a4f1a90b65b1af32ac10=
"
> meta-oe              =3D "master:5ad7203f68987461baaf2699378d0cf36c11d6c2=
"
> meta-intel           =3D "master:5cfefd9a8ff1f5a3534c1ba9d7d7f6971ed5d56f=
"
> meta-realtime        =3D "master:489e1d6b34e46f845a4bfe6461a39c6a4bcb7794=
"
>
> Working on Ubuntu 22.04.3 in VirtualBox

this seems all good to me, I think somewhere dependency on
qemuwrapper-cross is being lost in your image recipe perhaps.
Add it with append and see if it helps. something like DEPENDS:append
=3D " qemuwrapper-cross" in core-image-rt-extended.bb
and see if that helps.

