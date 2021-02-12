Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
 by mx.groups.io with SMTP id smtpd.web09.1324.1613169317333447527
 for <yocto@lists.yoctoproject.org>;
 Fri, 12 Feb 2021 14:35:17 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@burtonini-com.20150623.gappssmtp.com header.s=20150623 header.b=Uvf3owd1;
 spf=pass (domain: burtonini.com, ip: 209.85.167.41, mailfrom: ross@burtonini.com)
Received: by mail-lf1-f41.google.com with SMTP id m22so1689619lfg.5
        for <yocto@lists.yoctoproject.org>; Fri, 12 Feb 2021 14:35:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=burtonini-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=/qZ9x1PcAznZQyNsuIeWGZtzpUxRUQSrkXV7hWx7ZA0=;
        b=Uvf3owd17rivq/3wJDmri6Tn+gfwkFVPp9hFu/QKktMN8NKnnWOiJZlU//ZiSNpyDS
         +Iv4ex0Qdpa0HQc7rdMifUCJD4NKcZHVkusLDTWkvqxeYDkf6QzMbzsZwmyEsZWUM9fi
         sXwrO0VZPK03v+OHyyeuKGdYh2Wf9fx2MQwYHOzl0k+giQowZQcxHbkX+ccZ1kuWYG1I
         2ofK2naXr8c0RligiKatr/QrM0qj7FsyJfCS4SL0fO4/yC99tA81FkGvG5UcCXlAy/Lf
         sevIFTQc14/M3ozQpvPDx0h7aJ3/zjqSri/fS0fzkB4WvlSXjjMl15Z3KnJsnRl0h8Dy
         +9Dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=/qZ9x1PcAznZQyNsuIeWGZtzpUxRUQSrkXV7hWx7ZA0=;
        b=clmzENgaRpdn0N3jpstapENGaB5H/GubXpDvYNWzS/MXX+e0ZG9pcbKQ9Z3vvCpeB1
         QJ3Kv7f7xQ7FAtDJa+xbP7XpOtNJXYhWdTTjgm0PAyP/7Kz8OASvmXm9fod9RCCG+PR3
         8u1HFBDcuMtct2ihibcz+iRVXfzIDoI01IsciF+Q7n4WeIDCUhrxYSqkI+p+7AyDWa47
         DhcnlDOR3E+h3kNvylM4jsnR2j+HkDZtDEkMK1uGVU56VzeM3hYUtisUz7REXQjJqTez
         /pt1Gz4Fn7xdyHKudNvv3NEuWTYf7K14t/UCmtZfjO8GqXTQaAvh7MYhDU2xspVR8qpH
         pt0w==
X-Gm-Message-State: AOAM531DLYosJQqT3SQdp0PH21mZywglDHSnOgk6NOGGB0uWugkelQ4H
	9i++FVulud05TnNw6uyk8fnYZZ3hcB/BteW9xABKaA==
X-Google-Smtp-Source: ABdhPJw9fDin1TiQpcfrR8BJ0ap6SscnSLhIUwKa2kAdim5V+k/b+R0gSmWXWmBVMd8X7JFk7XHdPHfBEz5QvmSVwn4=
X-Received: by 2002:a05:6512:695:: with SMTP id t21mr2515663lfe.61.1613169315339;
 Fri, 12 Feb 2021 14:35:15 -0800 (PST)
MIME-Version: 1.0
References: <20210211211402.GA1058@localhost>
In-Reply-To: <20210211211402.GA1058@localhost>
From: "Ross Burton" <ross@burtonini.com>
Date: Fri, 12 Feb 2021 22:35:04 +0000
Message-ID: <CAAnfSTvUCJu0c=Ycv_NhAc3SVDJPRGxSUwdrTiG1ktE-y-kn-w@mail.gmail.com>
Subject: Re: [yocto] Yocto Technical Team Minutes, Engineering Sync, for Feb 9 2021
To: Trevor Woerner <twoerner@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, 11 Feb 2021 at 21:14, Trevor Woerner <twoerner@gmail.com> wrote:
> RP: there=E2=80=99s been a lot of churn in the versions (glibc, kernel, e=
tc). if
>     anyone sees anything please raise a flag
> Ross: yes, I=E2=80=99ve seen some issues, not always 100% reproducible
> RP: x86 host?
> Ross: not always
> TimO: ubuntu host?
> Ross: 20.04
> RP: glibc-2.33 does have some interesting things, so i=E2=80=99m not surp=
rised there
>     are issues
> Randy: what are you seeing?
> Ross: issues building the kernel (=E2=80=9Cdangerous relocations=E2=80=9D=
)
> RP: for dunfell we did a glibc-2.32 update but we=E2=80=99ll hold off on =
glibc-2.33
>     (thanks Michael!)
> Ross: turning off uninative makes it go away
> TimO: is that a Xen kernel?
> Ross: no, just defconfig

I solved this issue: when running inside a container that uses seccomp
to filter the syscalls available, with glibc 2.33 inside (uninative,
for example), applications might end up calling faccessat2() (glibc
does this itself) which as a relatively new syscall is rejected by the
syscall filter. The rejection is EPERM but glibc only handles ENOSYS
so weird things happen.

I sent a workaround to oe-core, systemd 247 and Docker 20.10 are
fixed, but glibc appear to consider this a bug in other software and
not something it should handle.

Ross
