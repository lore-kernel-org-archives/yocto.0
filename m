Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0134AE6748C
	for <webhook@archiver.kernel.org>; Thu, 31 Oct 2024 22:44:41 +0000 (UTC)
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
 by mx.groups.io with SMTP id smtpd.web10.25244.1730414672638181342
 for <yocto@lists.yoctoproject.org>;
 Thu, 31 Oct 2024 15:44:33 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=aGeHoC9t;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.45, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-4315eac969aso8897885e9.1
        for <yocto@lists.yoctoproject.org>; Thu, 31 Oct 2024 15:44:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1730414671; x=1731019471; darn=lists.yoctoproject.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qCBphRJXz40D4ZGXrOFmVo9YWIHe+RyHPXE3rp7hZHc=;
        b=aGeHoC9tz4mVPVhtZ07qV8eztAHEl9/5tNx0OcvDNcY4ABL1sJzSrlvoXS30qFj4cn
         6+OblI5Ba639n46TkqpBgO8QqrPRrRZh6DpiAvPcShDYf2a8lo9u76BrUb2oObuf3YZ5
         cegq36wbOwITsElYscEXNCGT8bl69nl0rpvOo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730414671; x=1731019471;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=qCBphRJXz40D4ZGXrOFmVo9YWIHe+RyHPXE3rp7hZHc=;
        b=AZ4U3mV38wQKwmZl6jQSoSQVCSU+PepvsArcxvqBbSJnyZDdjFxEa9ds16BMQ6M9jM
         jCm56N8gu4DLU3eO2ja2NurhrQfXk2bCb6yIlwOq23w8ypTeJq/FaVGnsOPIGGIaFSpe
         yBmznCHN4DPf2vQcQP88r8LbjBDmtTHTxlCYpxiCGZs+JFqWaPXSAd7G2DENRaZtWjxd
         PitfL1tyB8VC3Phon6w9JTjRLWGMQiFio2eOYLfrc0IuUR8tliwZTy8VoK8HROARIucf
         7xscF49dz475DhZYYy5MglBvc+HD87jpF3GZdr8A3cC5B3JdwC1n3+9prxf4Y7/8zoG0
         bBTw==
X-Gm-Message-State: AOJu0YyMxSuOMeTmjj2fsoUzTKA8+EQ0qI8BJmGE+RnXx3Akfsqzh46a
	WJxVMacbmmNGCs6AhHap6j/89qMQ6Xu+iH8LKgBPqVAMriQMctnsiT1gjPNalwFW7f/ar/UHaK6
	ubUs=
X-Google-Smtp-Source: AGHT+IFa5fnDFKMGSjThlM802t2y6IXz4jH6Yy7Qls+8WCQBT1b3vTMWIUcfiVH/FrJfXfR/dzYmSw==
X-Received: by 2002:a05:600c:460f:b0:426:5e32:4857 with SMTP id 5b1f17b1804b1-4327d840fdemr34262465e9.0.1730414670667;
        Thu, 31 Oct 2024 15:44:30 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:3ee1:1135:b938:d59c? ([2001:8b0:aba:5f3c:3ee1:1135:b938:d59c])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4327d5ab2aasm39907295e9.6.2024.10.31.15.44.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 31 Oct 2024 15:44:30 -0700 (PDT)
Message-ID: <2b22b133425c602519f5dc6cfeebfcab1f230676.camel@linuxfoundation.org>
Subject: Re: [yocto] qemu-system-native fails to build with buildtools and
 certain host packages installed
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org, email@matthias-proske.de
Date: Thu, 31 Oct 2024 22:44:29 +0000
In-Reply-To: <yEk0.1730412831404429463.HAFQ@lists.yoctoproject.org>
References: <yEk0.1730412831404429463.HAFQ@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.54.0-1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 31 Oct 2024 22:44:40 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64198

On Thu, 2024-10-31 at 15:13 -0700, email via lists.yoctoproject.org
wrote:
> Hi everyone,
>=20
> I have stumbled upon a build error when trying to build qemu-system-
> native when using buildtools.
> I first saw it on an Arch Linux (I know, not supported architecture),
> but I have also been able to reproduce it on Debian Bookworm, but
> only if the following packages have been installed on Debian
>=20
> - pkg-config
> - libkeyutils-dev
>=20
> # . buildtools/environment-setup-x86_64-pokysdk-linux
> [..]
> # bitbake qemu-system-native
> [..]
> cryptodev-lkcf.c.o -MF libcommon.fa.p/backends_cryptodev-lkcf.c.o.d -
> o libcommon.fa.p/backends_cryptodev-lkcf.c.o -c ../qemu-
> 9.0.2/backends/cryptodev-lkcf.c
> > ../qemu-9.0.2/backends/cryptodev-lkcf.c:36:10: fatal error:
> > keyutils.h: No such file or directory
> > =C2=A0=C2=A0 36 | #include <keyutils.h>
> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 ^~~~~~~~~~~~
> > compilation terminated.
>=20
> # $ ls /usr/include/keyutils.h=20
> /usr/include/keyutils.h
>=20
> If I build qemu-system-native without use of the buildtools, qemu-
> system-native builds. By the looks of it, it will also include
> keyutils, but will happily take it from /usr/include.
>=20
> From all that I could find, it is "normal" that qemu-system-native is
> a bit special as it "needs to interface with host graphics".
>=20
> For me the question is how to fix that:
>=20
> Should the buildtools behave the same way as when using the normal
> GCC?
> Should the recipe for qemu-system-native be adapted to include the
> system include path? If you look at the recipe at qemu.inc, then the
> native pkg-config will be used if it exists.
> Should the recipe for qemu-system-native be adapted to filter out
> libkeyutils? This doesn't seem to be straightforward as it is not an
> existing configure switch.
> Any other thoughts on that?

It shouldn't be finding keyutils and ideally that should have a
configure option. If it doesn't, we'd need to add one and disable it.
Hopefully upstream would take such a patch too.

Cheers,

Richard

