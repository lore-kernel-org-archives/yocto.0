Received: from mail-qt1-f178.google.com (mail-qt1-f178.google.com [209.85.160.178])
 by mx.groups.io with SMTP id smtpd.web11.6030.1601502793899495546
 for <yocto@lists.yoctoproject.org>;
 Wed, 30 Sep 2020 14:53:14 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=Wz1VXxPm;
 spf=pass (domain: gmail.com, ip: 209.85.160.178, mailfrom: raj.khem@gmail.com)
Received: by mail-qt1-f178.google.com with SMTP id c18so2624267qtw.5
        for <yocto@lists.yoctoproject.org>; Wed, 30 Sep 2020 14:53:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=Jnne/Z2HykmUVsnGCyUx2cI1bV+Cb6cY/QH6TAtu+5k=;
        b=Wz1VXxPmaBZHR4UQuSeyEqpnUSUf+tiKCSrS8vDW2/EJrTslIMjCVJ4zhgAaHQB/12
         SZi4rXfEIudxdl68E4GBH72wLfksh/qCGrL2oZ+0nEXwJl34dXXHcIZXrbse+Bg4KIBI
         N+5YwY9oLRkQjrGj9NELQspxtxfHv9UAn80kEQ1Ug6QVPlZlpuOVGNZCeiN5/Xyy92BF
         /EQ797cDqnc1uNDlJWHsMq6y4huGw33/NNiIuOpuPS3n74NrjJWmkixhQZ6+PuUqCOh4
         fI+5ELS/MMG7VWvl7Ci/usr/kD3pxbhYmGuF1YarAb6XH0uGytqlm0p2w0n1DZuAF2HB
         iyFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=Jnne/Z2HykmUVsnGCyUx2cI1bV+Cb6cY/QH6TAtu+5k=;
        b=eod9tam4+pylegl+OBOCJ67/IiYWM8C0BCUj7GgB3+Cw+H1R2zG1cYsoAgoAicshiA
         5ySGms+J2z/ce0yi9z+P71dmSeCnXr5P9cYtjQKK8JKkuDa/Zd1UC1XA1GOV9dTsjb3z
         11wcoblm7UuRQjwmx2N8wLhyNAoRWfEM1FAmVwyJ6Oih1UgIaY2/hSFlm62L+Sm4Xex6
         F9b+rrkj9jHC2KBJKwnsK/3K6w2MCMvMXE0Fsmloah3Zwr7Wwjc3b4rPZJe9qgp3o6dD
         ai8DMiRZaO3ssDBeYf4HSjdcjs26+0dtque66PtHVl6/C0J3NiJE7jq8/Hv1M9RTAef2
         hRrg==
X-Gm-Message-State: AOAM532LSh7RjHtGjDnfrS6hB9d3uFlxh5F49m4Ls5jzR3xWuO0KTJm4
	Wn566hcZ0XGrQGjY+0hgkMcpXHHOpjLFMR55280=
X-Google-Smtp-Source: ABdhPJxTYytoxGWx88Y27407btb1TJnv3gUWI4KEGwht7uC8pelJnwqbLniUz0Es9k4dZMYOqi2iSvj5QhdPHwo9kCM=
X-Received: by 2002:ac8:120a:: with SMTP id x10mr4483138qti.88.1601502793030;
 Wed, 30 Sep 2020 14:53:13 -0700 (PDT)
MIME-Version: 1.0
References: <3289A4D6-56DE-4EC8-AE90-9005550F16F3@iki.fi>
In-Reply-To: <3289A4D6-56DE-4EC8-AE90-9005550F16F3@iki.fi>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Wed, 30 Sep 2020 14:52:47 -0700
Message-ID: <CAMKF1srunkfa7C1oT+bk9C5=ExTe=dj++o8jsoRcpQk1dFMAzQ@mail.gmail.com>
Subject: Re: [yocto] Warrior uninative
To: Anders Montonen <Anders.Montonen@iki.fi>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

latest warrior seems to be using 2.9 release of uninative not 2.7

see

https://git.openembedded.org/openembedded-core/tree/meta/conf/distro/inclu=
de/yocto-uninative.inc?h=3Dwarrior

On Wed, Sep 30, 2020 at 3:25 AM Anders Montonen <Anders.Montonen@iki.fi> w=
rote:
>
> Hi,
>
> The checksum of <https://downloads.yoctoproject.org/releases/uninative/2=
.7/x86_64-nativesdk-libc.tar.xz> doesn=E2=80=99t match what=E2=80=99s speci=
fied in yocto-uninative.inc. The actual checksum seems to match an older co=
mmit, so at least there=E2=80=99s nothing untowards going on.
>
> I realize that the Warrior branch is officially EOL, but I still think t=
his should be fixed.
>
> Regards,
> Anders Montonen
>=20
>
