Return-Path: <steve@sakoman.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 30107C5B549
	for <webhook@archiver.kernel.org>; Tue,  3 Jun 2025 02:31:34 +0000 (UTC)
Received: from mail-yw1-f174.google.com (mail-yw1-f174.google.com [209.85.128.174])
 by mx.groups.io with SMTP id smtpd.web10.2211.1748917888906252501
 for <yocto@lists.yoctoproject.org>;
 Mon, 02 Jun 2025 19:31:29 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20230601.gappssmtp.com header.s=20230601 header.b=siwogmXa;
 spf=softfail (domain: sakoman.com, ip: 209.85.128.174, mailfrom: steve@sakoman.com)
Received: by mail-yw1-f174.google.com with SMTP id 00721157ae682-70f862dbeaeso51105827b3.1
        for <yocto@lists.yoctoproject.org>; Mon, 02 Jun 2025 19:31:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20230601.gappssmtp.com; s=20230601; t=1748917888; x=1749522688; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TIhRoZRGsRNDqmxkRE0zSeomvmpcG3B0v9yrFLikCnI=;
        b=siwogmXaI9Yq2c/XCZTMBbfk4FRls7Nwax0svo7fxnMtqQnTTbt5XCYl1hu1bIl4pT
         Roi9v0WV1SLDR/fghsXl/cxO2iWgDLOe6c6qIEkSi160B4i9O+mge+bY2KiKjNXxzMy/
         qBq24TfKsP62hjnSFrH+3PDjlL+aRp+Rf2OoM5PXZPDNi5stS6Nih8CR8SDtM6z6j5+r
         ahumgFjVAMocMnXV22VVtUd9vPmbolzlHDpDNtSbXtiiynHgqxe04wNGF1+AzuZ9cQq9
         LoqTfD5yxqtok8zP8D918Px6uv2W+s4XB63TJnzoNwyYBXloXo6R9g7zHEJdJhd6tP9x
         7B9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748917888; x=1749522688;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TIhRoZRGsRNDqmxkRE0zSeomvmpcG3B0v9yrFLikCnI=;
        b=MFkeMM0Ki8b0ZgBWEhVqOrxUfcv9/Wt7oTsecaWj9pyk2OG+hRMreMLtQatryusoNZ
         0U1X6rhitiudFOY8Gny/oEdIibyLb1C7psNUNHNf3usR073NlivAo7R0dPDz2xP9or3h
         lrx7QOk0KIMdBd2klUzpntbONjhkh0SEGWzwTwHblF8tmt9yl5ydjlqT05whUmd4KAdo
         x/Rbl4TkYExunxxSupRRFGqV6uUizXPCUQtn0pfLDioeZw4KAvYkYCpOIDEyBF0m6nCF
         5XlgfWNpnlMGRsmBFFIGBcKWrb2G+IgNxRPbe8U8rEUe1JC2IbJg87zl9KeuA/r0htxR
         RkSQ==
X-Gm-Message-State: AOJu0YzLCQeCO+nAfUg1nuR8WRV6phh2ftGidFaIjnwYnFBJeAFZOVyB
	UcUOob5+A1aqe81k5TZv6BskdrlrNyct/Q84WtQ7uHzvtSHJRfOrwWVPDxkfXThbJDsNrAugfo6
	uWntJNMqdmwEyQCcseLkSEzF8EaQl4r8NjBa7ioSPGGVx++NiC0yD+Ls=
X-Gm-Gg: ASbGncsRrciHVsNjZ37Elxu13XKblrpcZ5xLAQZVQvp3puhkKlLBk0uVJlbZk64N95b
	9UsRy6SwXF1P9x3gKCEozcbDUJ8JJRotYTMMV0lHhIXcPqn07RGDg4+zwbBZcb1MYwvCdU53PeP
	2BcoiMWP7f4kLwAVrvpF0qvbQxypZU7tElSEJfLkicbZS/4tC8VWR4pO8aYQX+EGpW3ULFDcKXT
	50fa8csdRhAKg==
X-Google-Smtp-Source: AGHT+IGVA6cH4hEI2dSmY2dt2RkCqoEIVG0Symwgsdw3fLObhA4DvXtF9YPuY/c4G966V7i3G/Cn2GBoTwjQq2Hb0kU=
X-Received: by 2002:a05:690c:7089:b0:70d:ff2a:d69a with SMTP id
 00721157ae682-71057d027d4mr221572267b3.27.1748917887824; Mon, 02 Jun 2025
 19:31:27 -0700 (PDT)
MIME-Version: 1.0
References: <010101973328442e-77dc9a4e-4c12-4be8-9021-49468ec66a14-000000@us-west-2.amazonses.com>
In-Reply-To: <010101973328442e-77dc9a4e-4c12-4be8-9021-49468ec66a14-000000@us-west-2.amazonses.com>
From: Steve Sakoman <steve@sakoman.com>
Date: Mon, 2 Jun 2025 19:31:16 -0700
X-Gm-Features: AX0GCFviBzlJCBjs8tSLEVeBPqBh7SigbDdPxy0imryOa7fiuhE-FWTJAWsUppk
Message-ID: <CAOSpxdZJYKyGPvSCX4h8u72KxwS8JXi8D-8xDWsnOvEr1S=rWw@mail.gmail.com>
Subject: Re: [qa-build-notification] QA notification for completed autobuilder
 build (yocto-5.0.10.rc2)
To: qa-build-notification@lists.yoctoproject.org
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 03 Jun 2025 02:31:34 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65448

This was an all green build, other than a few CDN issues in the Source
Mirrors selftest (a known autobuilder
infrastructure issue which will be fixed shortly)

OK to proceed with QA.

Steve

On Mon, Jun 2, 2025 at 5:19=E2=80=AFPM Pokybuild User via
lists.yoctoproject.org
<pokybuild=3Dyoctoproject.org@lists.yoctoproject.org> wrote:
>
>
>     A build flagged for QA (yocto-5.0.10.rc2) was completed on the autobu=
ilder and is available at:
>
>
>         https://valkyrie.yocto.io/pub/releases/yocto-5.0.10.rc2
>
>
>     Build URL: https://autobuilder.yoctoproject.org/valkyrie/#/builders/2=
9/builds/1707
>
>     Build hash information:
>
>     bitbake: 696c2c1ef095f8b11c7d2eff36fae50f58c62e5e
> meta-agl: 225c289b7245c8d9a896709e924dc0e67eff1e1f
> meta-arm: 8e0f8af90fefb03f08cd2228cde7a89902a6b37c
> meta-aws: 584e2a00acb65eaffa1d3b9058f0301d982a4f85
> meta-clang: eaa08939eaec9f620b14742ff3ac568553683034
> meta-intel: 38e75c8c1059e5f37659c140c010eaa203238fd2
> meta-mingw: bd9fef71ec005be3c3a6d7f8b99d8116daf70c4f
> meta-openembedded: 491671faee11ea131feab5a3a451d1a01deb2ab1
> meta-virtualization: 9e040ee8dd6025558ea60ac9db60c41bfeddf221
> oecore: d5342ffc570d47a723b18297d75bd2f63c2088db
> poky: ac257900c33754957b2696529682029d997a8f28
>
>
>
> This is an automated message from the Yocto Project Autobuilder
> Git: git://git.yoctoproject.org/yocto-autobuilder2
> Email: richard.purdie@linuxfoundation.org
>
>
>
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#557): https://lists.yoctoproject.org/g/qa-build-notif=
ication/message/557
> Mute This Topic: https://lists.yoctoproject.org/mt/113439658/3620601
> Group Owner: qa-build-notification+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/qa-build-notification/leave=
/12627247/3620601/791647976/xyzzy [steve@sakoman.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

