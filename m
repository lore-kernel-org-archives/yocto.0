Received: from mail-io1-f42.google.com (mail-io1-f42.google.com [209.85.166.42])
 by mx.groups.io with SMTP id smtpd.web10.27343.1611147898772531351
 for <yocto@lists.yoctoproject.org>;
 Wed, 20 Jan 2021 05:04:58 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=J9rcYCvj;
 spf=pass (domain: gmail.com, ip: 209.85.166.42, mailfrom: zoran.stojsavljevic@gmail.com)
Received: by mail-io1-f42.google.com with SMTP id z22so19993828ioh.9
        for <yocto@lists.yoctoproject.org>; Wed, 20 Jan 2021 05:04:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=vPhz+tEH+hL8N2bXn5hQa++tMKeV25B7G0PgbuJeDUQ=;
        b=J9rcYCvjRB5IVEq0Cq5XupAldPI0yV/Ls4Lo3axvzrww7tc+Tg0c3LKWpfjNQCgc/S
         YSJ5+6Ul1dWYx0uWStQeETJyNeE+2sPNsmyyKaY/C9N+khRrhE00OtsMHzHW2jPAUsK+
         RuEWxFWpMy52repG3A3pamsFFtiv19RhIMZFXZjoNDuIck4/Rg7y3Fz8l/rx3Mf65Xie
         86pqwtHWjpVXyM4Ex2+En+HCfFkL0nEkPg+1JmJqlmbDDPNH8THbxc5JALtesUoWXb36
         CZWU6Y+j6TmnwvLVPD3T2aaALnPcocorp6hkJd0b0DeXGHg1TRENE3elzN9gqgsz3GkR
         yLtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=vPhz+tEH+hL8N2bXn5hQa++tMKeV25B7G0PgbuJeDUQ=;
        b=MB/qvOxlnysYwN5Fjb4tp+klZ6kdaK2CZmefy3iGMiEtBqErl2W5XjF2HdfOwESe1P
         SN2BSmxsNu6QOl8dqU5t+FyxZ8QoMKola81Sy7yRvrjjkimldBumgmrVWsKvVYrlg89n
         dq2oTsoUwbO0WcOlgBXvtBm2wtIuZlpMdw4P6QbC+W090n7khaIrVzyrpNe1AOnb+FJ7
         aaPh+F6Nno5sqjKypaqNMWGSGKpx+PwgBo4CNY3g9iuRSm1Tmqt0U74JuC8kg2cfKpI6
         LI75BIF+IRlODvXpE2nZanxmZzogb+HCKAiEFzHmuoQ46Y7I6qizpguV7yMG9yBWu27e
         qqDQ==
X-Gm-Message-State: AOAM533qV9SCtPveDckucP2b31n0zNTfKsoWynITEIiiydiGZSV8j/L7
	yGhGCxA8lu8QZj97k1EPE7YuyRmzTGWnphmKpww=
X-Google-Smtp-Source: ABdhPJz7MPyqJxs1zmJNVQC1sNFohNilM+5HDJi+TILLf2NMX8PLwpHZKrr1Qwh+4svVSCiG1zRw/VzoE9I+V5yp7/U=
X-Received: by 2002:a6b:7e05:: with SMTP id i5mr6582963iom.60.1611147898062;
 Wed, 20 Jan 2021 05:04:58 -0800 (PST)
MIME-Version: 1.0
References: <CAGAf8Lwm=8s0Q=hhtou4ML562Gx83h41eHDGLc3MqR-mzhsmoQ@mail.gmail.com>
 <23918.1611141639081299423@lists.yoctoproject.org>
In-Reply-To: <23918.1611141639081299423@lists.yoctoproject.org>
From: "Zoran" <zoran.stojsavljevic@gmail.com>
Date: Wed, 20 Jan 2021 14:04:46 +0100
Message-ID: <CAGAf8Lyyi-p987gPYe+Z_yA7Jp5ALFCaOHZmOkgm5AX3iAtqSQ@mail.gmail.com>
Subject: Re: [yocto] insmod - huawei E3372h kernel module
To: Zoltan Kerenyi Nagy <kerenyi.nagy.zoltan@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

> Interestingly I don't have any header file on the target:

Yes, since U R compiling target modules on the HOST GCC cross compiler
(using YOCTO bitbake scripts).

I ALWAYS keep full target setup, with as many tools as I can to do
target module compiling, and other stuff.

YOCTO is after all YOCTO (doing host and target prep), but I like to
have total control over the target myself. ;-)

To include target kernel-dev, please, use the local.conf similar to one here:
https://github.com/ZoranStojsavljevic/bbb-yocto/blob/master/bbb-releases/bbb-dunfell/local.conf_kernel

Zee
_______


On Wed, Jan 20, 2021 at 12:20 PM Zoltan Kerenyi Nagy
<kerenyi.nagy.zoltan@gmail.com> wrote:
>
> Hi Zoran,
>
> Interestingly I don't have any header file on the target:
>
> # find / -name *.h
>
> #
>
>
> --
> Zolee
> 
>
