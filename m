Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
 by mx.groups.io with SMTP id smtpd.web12.1328.1588273837237577723
 for <yocto@lists.yoctoproject.org>;
 Thu, 30 Apr 2020 12:10:38 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@amarulasolutions.com header.s=google header.b=Fr2Mtlaa;
 spf=pass (domain: amarulasolutions.com, ip: 209.85.128.41, mailfrom: michael@amarulasolutions.com)
Received: by mail-wm1-f41.google.com with SMTP id x4so3207349wmj.1
        for <yocto@lists.yoctoproject.org>; Thu, 30 Apr 2020 12:10:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=1vh5dUcUkqsfpNiw81GgVnmT7dkIcjoYaGHUu0bRKcQ=;
        b=Fr2MtlaaydYA1SDgaFlv6fTvfJiGJU0whLsxCvnSWhSOOPOThBsahvRZu/U+dXzcNR
         VI/Lh1Htj5fQO1NvlZFz8d99F0YS7tJTdmohqZtmbdWDrwPH/lNnI761AXJG6RYqHJ2d
         Fruz0QZL+lRC5r7gqD21Md2CiJoRg2iOiGNCE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=1vh5dUcUkqsfpNiw81GgVnmT7dkIcjoYaGHUu0bRKcQ=;
        b=YYek9yvhpHzUbyi24Foshz+sdYn/XAFmKJqf8WtecW8n0ohGbXfeqj87FsjlTpkWIq
         /X+8DMdiAwU2FtzKxdjyTv6uJ8WoaDmyfOwxNz44KGdFrlBmAMc4z2da8m7/ENlfdmLL
         k3TKcYHAMp9rKDJxLEItW1ul2Hzaj7R1DivwKVCvNcd+jnhRu5YqaJOM+09ma2wJ1B+T
         L0pPT4qQtTC7UueaGZTdF+gJZvVxRP+JbLW7OdlSVleF4kLQ7xU1TSHO/5Mt//7olrZO
         aUKfWQp5JyMeOeg+/4VVeXhcTkRaiz+kQg7fq/OBpsPzd+oATmOY8fPHL0ZebI/vNihj
         TzrA==
X-Gm-Message-State: AGi0PuZj/B16StUlEi73w/q7UueYiXC/2IgUWA/9icOK1T7zNsYAcqcY
	pVnLWmbQu0tp+Kihuv0W7K3iU+XAdC4Xe+eqD1RM3Ud/7Og=
X-Google-Smtp-Source: APiQypJU9dR9Whw2ibMmASujRIjKo3Boy5FilmSd1jP4tGrjD6XTnTL9Mz27RnsUGvbqOpZu4VKAM7pGA+cSEe3tOx0=
X-Received: by 2002:a05:600c:2f88:: with SMTP id t8mr90941wmn.46.1588273835353;
 Thu, 30 Apr 2020 12:10:35 -0700 (PDT)
MIME-Version: 1.0
References: <504407a1-379f-dc70-7745-c42624df7d8c@ibeeto.com>
 <CAAfyv35at0HOtTpnTiRRL0yrS4mcvCwxy7MdbAmdbVba5-OnGw@mail.gmail.com>
 <3b7e322b-86db-6412-7cb3-02183d626aeb@gmail.com> <CAAfyv362iG0g3pamQ1RS5OoCmYBzH8yf-ey2iQwCeXBYctYdMw@mail.gmail.com>
 <b70bbaae-b1d0-9b8c-add0-8f6c0b32a4e5@gmail.com> <CAAfyv34CZUjDZZu0jeGmAZfkNkJDaDyTrNuYp6Mf2m97M2NtYw@mail.gmail.com>
In-Reply-To: <CAAfyv34CZUjDZZu0jeGmAZfkNkJDaDyTrNuYp6Mf2m97M2NtYw@mail.gmail.com>
From: "Michael Nazzareno Trimarchi" <michael@amarulasolutions.com>
Date: Thu, 30 Apr 2020 21:10:24 +0200
Message-ID: <CAOf5uwnOmDtFDAdiR=7gCdXgJhDdc6a4naTtcR9p-8VYAY2h6A@mail.gmail.com>
Subject: Re: [yocto] [WIC] Grow last partition up to disk size
To: yocto@lists.yoctoproject.org
Cc: Yocto list discussion <yocto@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

Hi

Well I have write something like this

[Unit]
Description=Increases rootfs image size to fit partition
Requires=dev-disk-by\x2dpartlabel-rootfs.device
After=dev-disk-by\x2dpartlabel-rootfs.device

[Service]
Type=oneshot
ExecStart=/usr/sbin/sgdisk /dev/disk/by-path/platform-ff0f0000.dwmmc -e
ExecStart=/usr/sbin/parted /dev/disk/by-path/platform-ff0f0000.dwmmc
-s "resizepart 4 -1" quit
ExecStart=/sbin/resize2fs /dev/disk/by-partlabel/rootfs
ExecStart=/bin/systemctl disable resize-rootfs.service

StandardOutput=journal+console

[Install]
WantedBy=default.target


On Thu, Apr 30, 2020 at 8:30 PM Marek Belisko <marek.belisko@gmail.com> wrote:
>
> On Thu, Apr 30, 2020 at 8:27 PM Khem Raj <raj.khem@gmail.com> wrote:
> >
> >
> >
> > On 4/30/20 11:25 AM, Marek Belisko wrote:
> > > On Thu, Apr 30, 2020 at 8:23 PM Khem Raj <raj.khem@gmail.com> wrote:
> > >>
> > >>
> > >>
> > >> On 4/30/20 11:16 AM, Marek Belisko wrote:
> > >>> Hi Rudolf,
> > >>>
> > >>> On Thu, Apr 30, 2020 at 7:39 PM Rudolf J Streif
> > >>> <rudolf.streif@ibeeto.com> wrote:
> > >>>>
> > >>>> I was looking for a way in a wks file to have wic grow the last
> > >>>> partition to fill up the remainder of the disk. Of course wic does not
> > >>>> know how large the disk is but that could be a parameter.
> > >>>>
> > >>>> The alternative way is to use fixed-size and do the math manually but
> > >>>> that would not allow wic to grow a partition based on content.
> > >>> You can use https://manpages.debian.org/testing/systemd/systemd-growfs.8.en.html
> > >>> which grow partition to the end.
> > >>
> > >> can it grow a mounted partition ? since that will be the case when
> > >> growing rootfs partition.
> > > It will grow last partition in first boot only.
> >
> > my question was will it grow a mounted rootfs parition if that happens
> > tobe the last partition, I understand it will grow last partion and do
> > it as firstboot service.
> I usually use it in case when have dual rootfs (A, B) and data
> partition which is expanded to then end of disk.
> I don't have experience with growing rootfs (I think it can grow only
> not mounted partitions)
> >
> > >>
> > >>>>
> > >>>> :rjs
> > >>>>
> > >>>>
> > >>>>
> > >>>
> > >>> BR,
> > >>>
> > >>> marek
> > >>>
> > >>>
> > >>>
> > >>>
> > >>
> > >
> > > BR,
> > >
> > > marek
> > >
> > >
> > >
> > >
> >
>
> marek
>
>
> --
> as simple and primitive as possible
> -------------------------------------------------
> Marek Belisko - OPEN-NANDRA
> Freelance Developer
>
> Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
> Tel: +421 915 052 184
> skype: marekwhite
> twitter: #opennandra
> web: http://open-nandra.com
> 



-- 
| Michael Nazzareno Trimarchi                     Amarula Solutions BV |
| COO  -  Founder                                      Cruquiuskade 47 |
| +31(0)851119172                                 Amsterdam 1018 AM NL |
|                  [`as] http://www.amarulasolutions.com               |
