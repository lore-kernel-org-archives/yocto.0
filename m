Return-Path: <arob109@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8BCCFE80ABC
	for <webhook@archiver.kernel.org>; Wed, 27 Sep 2023 14:40:53 +0000 (UTC)
Received: from mail-lj1-f169.google.com (mail-lj1-f169.google.com [209.85.208.169])
 by mx.groups.io with SMTP id smtpd.web10.18940.1695825644595046266
 for <yocto@lists.yoctoproject.org>;
 Wed, 27 Sep 2023 07:40:44 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=V/BMbgN5;
 spf=pass (domain: gmail.com, ip: 209.85.208.169, mailfrom: arob109@gmail.com)
Received: by mail-lj1-f169.google.com with SMTP id 38308e7fff4ca-2b9338e4695so187884421fa.2
        for <yocto@lists.yoctoproject.org>; Wed, 27 Sep 2023 07:40:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695825642; x=1696430442; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=cwXRei2E8BwIRnCtty/geD3Zq6xvu1wAJk2e/MI+WRA=;
        b=V/BMbgN5Y3s25IRHtOauWJBlBO/263t31DCCtQaFhaKzVv1Kxt/dFyKTatjH4yo3/z
         tq1zSibEx0jNVr97suHdcDvgLqV07GEAttwMDutHmXS7PnIqlFYtSkoCqvKaiHgf+MS6
         RQLDpEe77eGz5XWMJtR/2BikzYEZkjaWDyqQwepdIoBG5X7qrGglngtUPysTzZvXR4PN
         ak0JsLZc0f/KEgTRBR20zIlRUETS4/3c6US+h8OErPx1CvX2ZnJOlyQVQsRMCaGCn1+a
         eB+H/uQVm7tuaKeVSG+UfG0PmiYL6YzI6L4fW0lUqWlJHYDXs7yDddnzJ09a33eKu2i1
         CqGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695825642; x=1696430442;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cwXRei2E8BwIRnCtty/geD3Zq6xvu1wAJk2e/MI+WRA=;
        b=n6qwxWOHumrB293TAfDHaalexfPSExyyFHDUJ6A2jtXkAddfcfvkQZuQaBQ3RYgjXx
         THSoJqxlgIZ8bkJQzGwHHPmP4c0Vw53MhZQnvwtgActny6KFRI2sVLUWTPVni7E5K7CI
         xb1547XF2Cd9+HOSBjHp1sw+W76rZyQjtjRwmDpOfWXXq3vB972fRcZdZ7/OVCeOMdDs
         dxX6q0Hq/IHU9jmp0/KlpvVSW73qBvC2UWAWBn+WRKvrzgOMlBmnyIqXTlgGGMLr8rkR
         tvqNK6EeroZF+7LWaRyvy8362v8JGHigYKsFt0gzcfx+lgTvMPjO+6EKsgQtuCDWYR86
         VjIA==
X-Gm-Message-State: AOJu0YzzrISxBwIKIc6CKzhddBbTSgM8sUqqppGBh4es6Fnn+DMA1WAc
	NZgcQyEFIua0CJwV6hM1dFLDPbfSLop1wXQKLjfGmINOg08=
X-Google-Smtp-Source: AGHT+IE+fzl0EB8sGuibekr+oKPP9YqeHIlTFyyn5EAmbdKXzyZ3zWnCSkMvBmAf2qcg/ivT8y0Ti9X6bEFZhH8e+KE=
X-Received: by 2002:a2e:730c:0:b0:2c1:522a:8e1b with SMTP id
 o12-20020a2e730c000000b002c1522a8e1bmr1989073ljc.51.1695825642377; Wed, 27
 Sep 2023 07:40:42 -0700 (PDT)
MIME-Version: 1.0
From: Alex Roberts <arob109@gmail.com>
Date: Wed, 27 Sep 2023 09:40:31 -0500
Message-ID: <CAPkENw-000rkwb1gBmgVTa1RarUe0yUOwXM_NiXQd7RJ3C53sg@mail.gmail.com>
Subject: Trouble enabling vtable-verify for gcc-cross
To: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 27 Sep 2023 14:40:53 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61143

Hello All,

I'm having trouble getting gcc-cross-9.3.0 recipe to build libvtv. I
have added =E2=80=9C=E2=80=94enable-vtable-verify=E2=80=9D to EXTRA_OECONF =
via a .bbappend.
The vtable stubs are added to libstdc++ but libvtv itself is not
compiled. This causes recipes compiling with -fstandard-verify to fail
because libvtv doesn=E2=80=99t exist and cannot be linked in.

Looking at the autoconf files and the resulting Makefile, libvtv
should be getting configured and compiled with the recipe, but I can
not determine why it is not.

Does anyone have experience enabling vtable-verify to a cross-compiler
toolchain?

