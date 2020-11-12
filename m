Received: from mail-qk1-f169.google.com (mail-qk1-f169.google.com [209.85.222.169])
 by mx.groups.io with SMTP id smtpd.web08.9335.1605207553047581377
 for <yocto@lists.yoctoproject.org>;
 Thu, 12 Nov 2020 10:59:13 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=jySh9YZK;
 spf=pass (domain: gmail.com, ip: 209.85.222.169, mailfrom: raj.khem@gmail.com)
Received: by mail-qk1-f169.google.com with SMTP id y197so6333662qkb.7
        for <yocto@lists.yoctoproject.org>; Thu, 12 Nov 2020 10:59:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=gcsYIkxyex0i4MkuCt95HtkQVkW4BvcjCg+r1ohZB+E=;
        b=jySh9YZKylUfymsCSxZaH5YL9Frys/KwONucric+FiMxG6J8O3Xg4yE9aJdNbmL+Lv
         0o7ZviQYm42VwL77FYWfufKHqc5cGJ+RB7k5ekCnagLVo6VRidX0cay9mpPFdQNV/Rig
         ZW1Vmdo+AhPtahSUrszCNEmuc8R4NbVgAlCpJdXblK2/tQHnFuBP1cYykoTlWI3uoQgI
         CH8HvaGfcHMy7cbQ+jyx+U6kxyB/ft7Bn9TiSO99NxNY8MOCSTzxbRNQ3z9S76NVvLq3
         4EgKdvzdWuzJPZpLJKNLlWA+lwk3W6Ef7lekQPs6vGrdjD9XseUV2vNGqw6skPKgkE1v
         bZIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=gcsYIkxyex0i4MkuCt95HtkQVkW4BvcjCg+r1ohZB+E=;
        b=sKIWk/J55DZTthusCfKiJmhBz0NNQUhlsXKf2XssUmIYAhPHGwxt6TlzRpPxxTKaef
         g5gFUi2ou2TtqCR/UpyoLjvnvgyR3hDxPjKodiZaP+jMI3K/eJViSGrToXZBVqg9i9cO
         WN4WSxpa0j7IZOPXVdC/AsKdCuv3bSUZ7HGUkxx1S0K4ATns6Lx0I7YvwbwLOj7m/MBt
         jQcfndBHxK3Xqvd0knJkve4enRJ0md4z7o+cCb45zdyZUaIkqSe0pkY2iwOZRu/X7nhk
         qP8u4n7a4hgwf7YgvSQS7kKnN5Q/KUvVe0ymsqvFQsOpHw3SofGmejUb8lHouNzjTJ4m
         tpHQ==
X-Gm-Message-State: AOAM530BTGtzwoXvut4NCn3GnyH95RC+cUp/Kb0U9W9xXMMHvIoi1IKm
	Gjdpug5WHXpnG4pxlpm0lY8IvrkBYJ844Y2jadM=
X-Google-Smtp-Source: ABdhPJzYezGPiofZTmpHbLsHU6oUERtATmHDM94cj18rF3d+BgczkV0J7kaZIWDMkt8o/0DIyeuPjzOmH0H7gUk4dVM=
X-Received: by 2002:a05:620a:230:: with SMTP id u16mr1310921qkm.212.1605207552014;
 Thu, 12 Nov 2020 10:59:12 -0800 (PST)
MIME-Version: 1.0
References: <5c222c27-5f97-9ffc-ddf0-7fd774da5442@gmail.com> <MADEUP.1646D6F56ED5BFF3.4377@lists.yoctoproject.org>
In-Reply-To: <MADEUP.1646D6F56ED5BFF3.4377@lists.yoctoproject.org>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Thu, 12 Nov 2020 10:58:45 -0800
Message-ID: <CAMKF1spHD7fQPs7K2xJOeTNA3oibzxZoffu+SsGuuwdCqT3f6A@mail.gmail.com>
Subject: Re: [yocto] #yocto "zeus"
To: "Monsees, Steven C (US)" <steven.monsees@baesystems.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

are you using nfsvers= in /etc/fstab

On Thu, Nov 12, 2020 at 10:44 AM Monsees, Steven C (US) via
lists.yoctoproject.org
<steven.monsees=baesystems.com@lists.yoctoproject.org> wrote:
>
>
> All things being equal, would you know why I might see
>
>         "NFS: bad mount option value specified: minorversion=1"
>
> when running app under "zeus" but not under "rocko" ?
>
> -----Original Message-----
> From: Khem Raj [mailto:raj.khem@gmail.com]
> Sent: Thursday, November 12, 2020 1:40 PM
> To: Monsees, Steven C (US) <steven.monsees@baesystems.com>; yocto@lists.yoctoproject.org
> Subject: Re: [yocto] #yocto "zeus"
>
> *** WARNING ***
> EXTERNAL EMAIL -- This message originates from outside our organization.
>
>
>
> On 11/12/20 4:03 AM, Monsees, Steven C (US) via lists.yoctoproject.org
> wrote:
> > This is probably a simple question, but since I am new to yocto there
> > is a lot to learn...
> >
> > How do I establish kernel access permissions for the "zeus" kernel so
> > that when my application is up and running, (or an application startup
> > script), can create read/write files for access/updating in the "/etc"
> > and "/dev" directories ?
> >
> > In the few cases I do this I am seeing unable to open errors...
> >
> > Note the same code appears to work correctly under "rocko"...
>
> you have to provide more context to help you more, but usually /dev is populated with devtmpfs during kernel boot. and similarly /etc is mounted early on. So access permissions could be mounting issues perhaps.
>
> >
> > Thanks,
> >
> > Steve
> >
> >
> >
> >
> >
>
>
> 
>
