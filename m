Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 29731C54E58
	for <webhook@archiver.kernel.org>; Wed, 20 Mar 2024 11:28:02 +0000 (UTC)
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com [209.85.208.173])
 by mx.groups.io with SMTP id smtpd.web11.41441.1710934077271685906
 for <yocto@lists.yoctoproject.org>;
 Wed, 20 Mar 2024 04:27:57 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=L6fPiIlC;
 spf=pass (domain: gmail.com, ip: 209.85.208.173, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f173.google.com with SMTP id 38308e7fff4ca-2d220e39907so92369411fa.1
        for <yocto@lists.yoctoproject.org>; Wed, 20 Mar 2024 04:27:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1710934075; x=1711538875; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=c3LY/naeutUlT4bjxKJHh57VhZdAFY6IK3MT+iGGk20=;
        b=L6fPiIlCWYSy82570VsVL3Fwz7zK2i/x+zhTR+QI41GW3T7AXkKFcxmS0LKATeroaF
         MClDHTRXCe6CCdNnKqXRbQ02gcZl3ZciaFKDB33/Pbk3195LyiMICp5gFZjGJkZ+zVY6
         gxhCq+tTFQXjIMeOY+pM83jFzoKJyxeq23zuK2nFclt5Mkxegz1vjaHURTOdyUVddoFi
         PRe6nuSHk7WoyZR07EaXSgyLV+91TWLqjrbCD+xPZiKE8wxuHk0cvnIukT0up1b5wcAU
         hkazQF2DFzqgoINBdYGqUdERSTxeS+9YyTmm9D2CH5Y0JgxaXfUA03wOqCvmTBKjSR89
         YuBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710934075; x=1711538875;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=c3LY/naeutUlT4bjxKJHh57VhZdAFY6IK3MT+iGGk20=;
        b=bZ06qw2XfTZvsfdu6c9N62AnrVt6mVhLePJGdL8vQuKIEtoxzXUSb3x/dzCyg6X3OF
         LghrH0VlHIsWXIvtiiGNDycVTWxr3qrmYHxVYevSrmK3xuXDsJQi0WbIKl11z/mLVqPI
         DG0iBD1Sd6HqFd6wwn21g0TCr14fESKuDFY+yP8QzIVDmi4fWdiPOEHHDWakbrX5UxPx
         awVgXpW1gJtiWDQxCjG9soyLpXosBJvw9B0JqkPsADmsDjEZ9lf3IOyseHZDuj4X/erh
         2zi+OSu3flOA79H1SmgzbCrx7XpieLz32qbM1ndsXN1n0SyEmm2cfCUZz742fPwIJCvg
         z2zg==
X-Gm-Message-State: AOJu0YwT5saTCKWHuF4RINVLHpyHpD0JU5oiu7dP6aTI91++xztdIbjO
	biyiibtMOXwFtMGrfkHHdGHzVwP45NdglA3poX23UiAUXIlktoNL4fUo9xyDxjzklnV8v0ln6Vw
	DxfJ6cEPBkAN2QlUncMu1uVpc7xI=
X-Google-Smtp-Source: AGHT+IHdILi1Um00JKehQVEKYyBMzHdc19fGX2mGlJFYLGpkuR9g5in3MXxgS9jFo1tzGZqjcAufBr7FpVP8iMKos2k=
X-Received: by 2002:a2e:9608:0:b0:2d5:122a:4b1f with SMTP id
 v8-20020a2e9608000000b002d5122a4b1fmr4730716ljh.43.1710934075165; Wed, 20 Mar
 2024 04:27:55 -0700 (PDT)
MIME-Version: 1.0
References: <CANNYZj8WgSAT_jZw0yqeQSQo=ByBcrwcMSz28AOPEhthGvfcvQ@mail.gmail.com>
 <E09C30F2-732B-4047-8BDA-72C67FDA2788@arm.com>
In-Reply-To: <E09C30F2-732B-4047-8BDA-72C67FDA2788@arm.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Wed, 20 Mar 2024 12:27:43 +0100
Message-ID: <CANNYZj8GNMB+=xkkzFW9iuX8Nk6fhC-XT3+3eY3thwK2tuZPCQ@mail.gmail.com>
Subject: Re: [yocto] make a-quick quick again (and light on the AB,
 particularly arm)
To: Ross Burton <Ross.Burton@arm.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 20 Mar 2024 11:28:02 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62802

On Wed, 20 Mar 2024 at 11:55, Ross Burton <Ross.Burton@arm.com> wrote:
> I=E2=80=99d be against removing _all_ arm hosts from the quick build.  Wi=
th the in-progress changes to the autobuilder hosting we should be able to =
retire the slower Arm workers and a build running on the Arm hosts shouldn=
=E2=80=99t be a problem.  It would be a waste of effort to attempt to optim=
ise the build for the current cluster when there are plans to relocate shor=
tly anyway.

Right, then let's not make this about arm builders, and simply drop
selftest of any kind and reproducible from a-quick. How about that?

Particularly selftest keeps getting bigger and slower and that isn't
going to change. It used to take under an hour, nowadays it's 2+ hours
on x86 and 3+ on arm, with full sstate ready from the start.

Alex

