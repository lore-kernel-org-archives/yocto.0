Return-Path: <antonio@amsobr.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BE63C3DA5D
	for <webhook@archiver.kernel.org>; Mon, 22 Jul 2024 08:22:53 +0000 (UTC)
Received: from mail-yb1-f169.google.com (mail-yb1-f169.google.com [209.85.219.169])
 by mx.groups.io with SMTP id smtpd.web11.13786.1721636568765379754
 for <yocto@lists.yoctoproject.org>;
 Mon, 22 Jul 2024 01:22:49 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@amsobr.com header.s=google header.b=rpCy6rst;
 spf=pass (domain: amsobr.com, ip: 209.85.219.169, mailfrom: antonio@amsobr.com)
Received: by mail-yb1-f169.google.com with SMTP id 3f1490d57ef6-e0885b4f1d5so1185184276.1
        for <yocto@lists.yoctoproject.org>; Mon, 22 Jul 2024 01:22:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amsobr.com; s=google; t=1721636568; x=1722241368; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=893hPJ4ZM054XjZwitwiJQFofkzgsAODUT132LVeHZA=;
        b=rpCy6rstSnHLSzOmbDjym8nY6xtJ5GA2j+peG/31CqRkrd+QOYpddyJG84QA1VEJ6f
         iySqgR0LMJldoCnVNSHcK068IbljX5/4rOKUt4y9wmKXORCeq4/2KVduhaiCoikj0nIc
         xWO8YaIWLQ86+GNabPqVKR/jSAl/tRgBtfJF5H3Go8QcFz8PHnpmsqhnhvyXvhZkr7+j
         YhuofqM0V3WRYgx4Ye6/0wTDYPqbr9voJFC2V1W483L+S02JmFoQjC/jcYyaxSYVNvMZ
         b6zlr57FqcjQ8lzt7DO1lH7Sg+nM1WUXjRXtdon6CaGwk3bLINEjrHoeDqU3b21yxe8p
         n1Cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721636568; x=1722241368;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=893hPJ4ZM054XjZwitwiJQFofkzgsAODUT132LVeHZA=;
        b=bxAIWwEmIJuO4/6XXJXkQtzCDL/PuMPfWkaD0Chqpr4WM0KAKK+PVomdUFM2k0YhPx
         k5aXWqw3JVirpjmV0X8vM8AKzOmeJHPfEPSSCw5vWniXjSWkwgx0oY22BlW9e6BzDJ5x
         7tlEC8VuYbmen2fAs1hX3ZiO4fQX6wxkMMBxBjV6OyPdBYMq9VISvltyAFPPWO1up7mj
         Is4BrvnfjNyt/fo8TjyYWP3xm9IB9BEjcyTiMLUEywH61husCPDc9fg3Hm2OYxKiPttQ
         +c3LLacUzwUFSJTvDFxQnF/3FTRznULoL5mi+5xqsZaZq5lUxjSagLFjQdPjiqg7pn/M
         0acA==
X-Gm-Message-State: AOJu0Yyo76kWLkW1ADj5Zc1MgqMKH8/XfbVFwf2D/+RFzb7lee5hrgA3
	l272dIRDLvpWKMm3N+obUeswc1Udb3aSCm/92LgMScu9TJtv9lKK59t2qyey95KMLoxJ5eqHpwJ
	0IP0bzzy6dGAaWbkYgSwWw8spkI8qRqgPhfDjxV16vxpkXUQx
X-Google-Smtp-Source: AGHT+IGntTe8Zw9cjaKJ83tn3YjvFRXESoX8OBirAal6/wGFYOFeAoS+kQun1g9cZJFxuh938o2bltb1IltDeUiY1Ts=
X-Received: by 2002:a05:6902:13cc:b0:e03:229d:69e5 with SMTP id
 3f1490d57ef6-e087b7de83amr6016536276.17.1721636567668; Mon, 22 Jul 2024
 01:22:47 -0700 (PDT)
MIME-Version: 1.0
References: <z6d3.1721630447110602383.yp5L@lists.yoctoproject.org> <37c5d66c-c075-44c8-9fc2-73b1813548b8@cherry.de>
In-Reply-To: <37c5d66c-c075-44c8-9fc2-73b1813548b8@cherry.de>
From: =?UTF-8?Q?Ant=C3=B3nio_Oliveira?= <antonio@amsobr.com>
Date: Mon, 22 Jul 2024 09:22:37 +0100
Message-ID: <CAGfGMDFASyTjC_Qopa_zUARW=OGt0VhwEonCjYRjFPApd6+KBQ@mail.gmail.com>
Subject: Re: [yocto] Add qtbase and qtwayland to core-image-minimal
To: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 22 Jul 2024 08:22:53 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63548

unsubscribe

On Mon, Jul 22, 2024 at 9:14=E2=80=AFAM Quentin Schulz via
lists.yoctoproject.org
<quentin.schulz=3Dcherry.de@lists.yoctoproject.org> wrote:
>
> Hi,
>
> On 7/22/24 8:40 AM, Poornesh G ( India - Bangalore ) via
> lists.yoctoproject.org wrote:
> > You don't often get email from poornesh.g=3Dmindteck.com@lists.yoctopro=
ject.org. Learn why this is important<https://aka.ms/LearnAboutSenderIdenti=
fication>
> > Greetings !
> >
> > I have built a yocto for RK3568 (scarthgap) with core-image-minmal. I h=
ave LCD in my custom carrier board , I have enabled wayland & weston by add=
ing the below lines in local.conf.
> >
> > # For weston
> > DISTRO_FEATURES:remove =3D "x11 "
> > DISTRO_FEATURES:append =3D " wayland pam"
> > IMAGE_INSTALL:append =3D " wayland weston weston-init weston-examples r=
ockchip-libmali"
> >
> > After this I could successfully see display . Now I need to add Qt into=
 the source , can anyone suggest me to include QT without having any confli=
ct with Wayland / Weston.  I am getting the below error in my case.
> >
> >
> > -----------------------------------------------------------------------=
---------------------------------------------------------------------------=
---------------------------------------------------------------------------=
------
> > | QPA backends:
> > |   DirectFB ............................... no
> > |   EGLFS .................................. no
> > |   LinuxFB ................................ no
> > |   VNC .................................... yes
> > | Qt Sql:
> > |   SQL item models ........................ yes
> > | Qt Widgets:
> > |   GTK+ ................................... no
> > |   Styles ................................. Fusion Windows
> > | Qt PrintSupport:
> > |   CUPS ................................... no
> > | Qt Sql Drivers:
> > |   DB2 (IBM) .............................. no
> > |   InterBase .............................. no
> > |   MySql .................................. no
> > |   OCI (Oracle) ........................... no
> > |   ODBC ................................... no
> > |   PostgreSQL ............................. no
> > |   SQLite2 ................................ no
> > |   SQLite ................................. no
> > |     Using system provided SQLite ......... no
> > |   TDS (Sybase) ........................... no
> > | Qt Testlib:
> > |   Tester for item models ................. yes
> > |
> > | Note: -hostbindir is not a subdirectory of -hostprefix.
> > | Note: -hostlibdir is not a subdirectory of -hostprefix.
> > | Note: -hostdatadir is not a subdirectory of -hostprefix.
> > |
> > | WARNING: No QPA platform plugin enabled! This will
> > | produce a Qt that cannot run GUI applications.
> > | See "Platform backends" in the output of --help.
> > |
> > | ERROR: Feature 'opengl-desktop' was enabled, but the pre-condition '(=
config.win32 && !config.winrt && !features.opengles2 && (config.msvc || lib=
s.opengl))
> > |                           || (!config.watchos && !config.win32 && !co=
nfig.wasm && libs.opengl)' failed.
> > |
> > | ERROR: The OpenGL functionality tests failed!
>
> You're likely missing some opengl distro feature?
>
> Cheers,
> Quentin
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#63547): https://lists.yoctoproject.org/g/yocto/messag=
e/63547
> Mute This Topic: https://lists.yoctoproject.org/mt/107480923/8036462
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [antonio@amsobr=
.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

