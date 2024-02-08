Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B421EC4828F
	for <webhook@archiver.kernel.org>; Thu,  8 Feb 2024 17:05:20 +0000 (UTC)
Received: from mail-oa1-f41.google.com (mail-oa1-f41.google.com [209.85.160.41])
 by mx.groups.io with SMTP id smtpd.web10.90.1707411917162654760
 for <yocto@lists.yoctoproject.org>;
 Thu, 08 Feb 2024 09:05:17 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=cnUPSenh;
 spf=pass (domain: gmail.com, ip: 209.85.160.41, mailfrom: raj.khem@gmail.com)
Received: by mail-oa1-f41.google.com with SMTP id 586e51a60fabf-2196dd318feso1254048fac.2
        for <yocto@lists.yoctoproject.org>; Thu, 08 Feb 2024 09:05:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1707411916; x=1708016716; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2xNQpXOBP5JV6/O0y2WHuJX5igUscg09G4GsM8lj9UA=;
        b=cnUPSenh5uo+AnmD2WGWB8nEyqdbT1xFxF+3ySnt4Kfhn0Y+17aLnYuVpoENhO3Ioy
         Su2lQyUwuJPWhjp4ZVwANIkYDyTSx+fR1WOfvnGC5cSmDjaep2y6P8NvSwzrS5DyL9U6
         aCr9TYHDQtPgG3ysH79gqCALWHUVIlTFp/CHjjG7C+cIgNjQzzVg+rXqGGKe1OP7YnKV
         MhxXLnQikJVvyeScz23e59GOb1ojpsOrjaygQtdGRbedbJdUgqP07W+vZ49mFXhkI7GR
         vUynLsgJ/U6SqD4mWgAnUKMuJZKguIfWV6NFR6DizZ2HEQ1ydJuXd/IxfBt9ZYOt0Em8
         y1/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707411916; x=1708016716;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2xNQpXOBP5JV6/O0y2WHuJX5igUscg09G4GsM8lj9UA=;
        b=Ol170Az781ptkvy0rvoZTLNrtYOo9wtuya5uD6fP0E0bItsDAaG5HP8ihcELwix/+Q
         fsvPE172xHhBv6oMVPN7rJQipRdaTH5Xyw7zAyXE9gKMC68ukc+wbEAaXRqJhZFvn9hF
         JVmn0W/SMrfKI55HXIqpl7SoSV62fG9MFd3paNSvOyuDu8v5R4zc+3MA5sTYfranRha9
         MUe5779f1mFN0+PTd3xlgTzYg7BBSLloZrhI6KSbceSJmc4PHYc1A0oOWPEd6xhVJZw6
         ncel4IlpqEVoyb+ZUC7t5QsziKd/hYgd6KLpDhYOAmtBlq0XW2Xj8Qh+Qvt/+MjBo4xR
         Og7g==
X-Gm-Message-State: AOJu0YyfQ7oGcpX1K+p+2r9abBNSnmzq1yNkWhymVHeBRfaKZGmkgnXH
	zbhiwF24TfF+I2dGEiQiCfPmOMaYMv2vEepng39l22h8LMmIYskGXPg7Tf2gd5Ufp1QZ/HjKFLa
	gKKOZX588qc6anbKBlAhS9VHJXr0Re97oedQ=
X-Google-Smtp-Source: AGHT+IFZOBAZbKwOOPAjawF3AmPlvkr23lKhLMTEmyMpfkOCpfS/1Haar/0m78RqM8yfnSr2Q3Qtl784OSi1zrySc7k=
X-Received: by 2002:a05:6871:298:b0:219:fdbb:bd4d with SMTP id
 i24-20020a056871029800b00219fdbbbd4dmr65370oae.10.1707411916098; Thu, 08 Feb
 2024 09:05:16 -0800 (PST)
MIME-Version: 1.0
References: <CAAAM0df2oQf3McTkQUu73TiqmMf1xEs8Pw4JGukqV8XekXyKnQ@mail.gmail.com>
In-Reply-To: <CAAAM0df2oQf3McTkQUu73TiqmMf1xEs8Pw4JGukqV8XekXyKnQ@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 8 Feb 2024 09:04:50 -0800
Message-ID: <CAMKF1spEw2ukhcYqSw0ry08_BEkVxO-Vd4w0HhcM82RLSdwxtA@mail.gmail.com>
Subject: Re: [yocto] About Scarthgap Yocto 5.0 release
To: yocto@lists.yoctoproject.org, manjunatha.srinivasan@gmail.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 08 Feb 2024 17:05:20 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62436

On Thu, Feb 8, 2024 at 8:59=E2=80=AFAM manjunatha srinivasan
<manjunatha.srinivasan@gmail.com> wrote:
>
> Hi Team
> I am interested to know what could be the kernel version of the
> upcoming Scarthgap Yocto 5.0 release.

It will be 6.6 based AFAICT

>
> Thanks
> Manjunatha Srinivasan N
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#62435): https://lists.yoctoproject.org/g/yocto/messag=
e/62435
> Mute This Topic: https://lists.yoctoproject.org/mt/104242401/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail=
.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

