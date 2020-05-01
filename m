Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
 by mx.groups.io with SMTP id smtpd.web12.5510.1588316795922856687
 for <yocto@lists.yoctoproject.org>;
 Fri, 01 May 2020 00:06:37 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@amarulasolutions.com header.s=google header.b=FBWBUnYu;
 spf=pass (domain: amarulasolutions.com, ip: 209.85.221.54, mailfrom: michael@amarulasolutions.com)
Received: by mail-wr1-f54.google.com with SMTP id e16so5376015wra.7
        for <yocto@lists.yoctoproject.org>; Fri, 01 May 2020 00:06:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=tXtzgjBu6Gwl/ptywtl7oMohN/BTJhvhbwARwF7lpLM=;
        b=FBWBUnYug8JdNWgFzBFYdRvpiBjfPXNY0/FybvEFEyX5Z5xZQA48OJafYzHjGNwCV4
         oJRFKHekA2ZzraEaOAP2u9NetNWSSknwBAuOC/+AEJ1EPnG0prD6LD70tjRnvbXjVmAl
         w9JWYrb2TGjW9LVBDR5HGZ0oH3LSN2paKyubE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=tXtzgjBu6Gwl/ptywtl7oMohN/BTJhvhbwARwF7lpLM=;
        b=qgeJxHxp3qoJWr7uXc0iUWLIq8t3LiHhO6eNsuTwLgrUxvMsn3Cwd3huURs1c+2ewL
         i/Ubz5/D5BA8Hj73Rl0PWDAk+8lxpPUyRafqR8rFWpctJel3pu1sENUeNNzIjatch8t4
         +/BkWM21Wl2MPBQ+MHMk6upnlJ0gVZWBhFTpfwcA2T1JjLLyVMfiYXogI7AVfeZkWPPS
         2VlP5a34Y2UQXZqUnEHpmgGZhBvOdCssY2+stAYdMDmYmzMnRgMwSxxoo5YMxHicqAsy
         vPIDtQHejAVcDA8dFu99YG5rd4RTKbwis6A5d43K3qOcaC90OuHcK4z2vY+eLBMmmJiD
         KOTA==
X-Gm-Message-State: AGi0PuaTB07KHR20M3PHSyBukxJ+uCds9lWUzHVCxfVS9bP5ktimti4W
	2osx6ehUUzqIPK5PfvVLswirAfs66jR9uNsWrjJ8ugvE
X-Google-Smtp-Source: APiQypK8PJSDvvK+FGExDY9Vx6lJllmMeN8opdrb1R9BKss1Ovp57HjzCzlQRxoegCtoWBpU/GkncRpoDUZlLDYWg4I=
X-Received: by 2002:adf:decb:: with SMTP id i11mr2542451wrn.140.1588316794065;
 Fri, 01 May 2020 00:06:34 -0700 (PDT)
MIME-Version: 1.0
References: <504407a1-379f-dc70-7745-c42624df7d8c@ibeeto.com>
 <CAAfyv35at0HOtTpnTiRRL0yrS4mcvCwxy7MdbAmdbVba5-OnGw@mail.gmail.com>
 <3b7e322b-86db-6412-7cb3-02183d626aeb@gmail.com> <CAAfyv362iG0g3pamQ1RS5OoCmYBzH8yf-ey2iQwCeXBYctYdMw@mail.gmail.com>
 <b70bbaae-b1d0-9b8c-add0-8f6c0b32a4e5@gmail.com> <CAAfyv34CZUjDZZu0jeGmAZfkNkJDaDyTrNuYp6Mf2m97M2NtYw@mail.gmail.com>
 <160AAEA430561E1B.4948@lists.yoctoproject.org> <CAOf5uw=ON2QNoHQiBWy7nWwo9QSu1uKLDhLjJ5yeuz1wN17UHA@mail.gmail.com>
 <b37131d2-827e-9ae4-5d26-0edf3d26e11e@ibeeto.com> <4273aa45-1d71-4e34-733e-f5b7828f8839@gmail.com>
In-Reply-To: <4273aa45-1d71-4e34-733e-f5b7828f8839@gmail.com>
From: "Michael Nazzareno Trimarchi" <michael@amarulasolutions.com>
Date: Fri, 1 May 2020 09:06:22 +0200
Message-ID: <CAOf5uwnVQkv5XRefnjMzmkGY5QNVi-rBm+shU+qXiLjTucQaiw@mail.gmail.com>
Subject: Re: [yocto] [WIC] Grow last partition up to disk size
To: yocto@lists.yoctoproject.org
Cc: Yocto list discussion <yocto-EtnWKYl6rD/WsZ/bQMPhNw@public.gmane.org>
Content-Type: text/plain; charset="UTF-8"

Hi


On Fri, May 1, 2020 at 8:47 AM Gmane Admin <gley-yocto@m.gmane-mx.org> wrote:
>
> Op 01-05-2020 om 01:11 schreef Rudolf J Streif:
> > Thanks, guys, I appreciate it.
> >
> > Doing it dynamically on first boot would probably work as it is a data
> > partition and not the rootfs partition.
>
> If you use btrfs you can even resize the rootfs (mounted) partition.
>

I don't said but the code I sent resize my rootfs

Michael

> > I will give it a try.
> >
> > :rjs
> >
> > On 4/30/20 12:13 PM, Michael Nazzareno Trimarchi wrote:
> >> Hi
> >>
> >> On Thu, Apr 30, 2020 at 9:10 PM Michael Nazzareno Trimarchi via
> >> lists.yoctoproject.org
> >> <michael=amarulasolutions.com@lists.yoctoproject.org>  wrote:
> >>> Hi
> >>>
> >>> Well I have write something like this
> >>>
> >>> [Unit]
> >>> Description=Increases rootfs image size to fit partition
> >>> Requires=dev-disk-by\x2dpartlabel-rootfs.device
> >>> After=dev-disk-by\x2dpartlabel-rootfs.device
> >>>
> >>> [Service]
> >>> Type=oneshot
> >>> ExecStart=/usr/sbin/sgdisk /dev/disk/by-path/platform-ff0f0000.dwmmc -e
> >> This resize gpt up to disk size
> >>
> >>> ExecStart=/usr/sbin/parted /dev/disk/by-path/platform-ff0f0000.dwmmc
> >>> -s "resizepart 4 -1" quit
> >> This resize partition number 4 up to the max
> >>
> >> Michael
> >>
> >>> ExecStart=/sbin/resize2fs /dev/disk/by-partlabel/rootfs
> >>> ExecStart=/bin/systemctl disable resize-rootfs.service
> >>>
> >>> StandardOutput=journal+console
> >>>
> >>> [Install]
> >>> WantedBy=default.target
> >>>
> >>>
> >>> On Thu, Apr 30, 2020 at 8:30 PM Marek Belisko<marek.belisko@gmail.com>  wrote:
> >>>> On Thu, Apr 30, 2020 at 8:27 PM Khem Raj<raj.khem@gmail.com>  wrote:
> >>>>>
> >>>>> On 4/30/20 11:25 AM, Marek Belisko wrote:
> >>>>>> On Thu, Apr 30, 2020 at 8:23 PM Khem Raj<raj.khem@gmail.com>  wrote:
> >>>>>>>
> >>>>>>> On 4/30/20 11:16 AM, Marek Belisko wrote:
> >>>>>>>> Hi Rudolf,
> >>>>>>>>
> >>>>>>>> On Thu, Apr 30, 2020 at 7:39 PM Rudolf J Streif
> >>>>>>>> <rudolf.streif@ibeeto.com>  wrote:
> >>>>>>>>> I was looking for a way in a wks file to have wic grow the last
> >>>>>>>>> partition to fill up the remainder of the disk. Of course wic does not
> >>>>>>>>> know how large the disk is but that could be a parameter.
> >>>>>>>>>
> >>>>>>>>> The alternative way is to use fixed-size and do the math manually but
> >>>>>>>>> that would not allow wic to grow a partition based on content.
> >>>>>>>> You can usehttps://manpages.debian.org/testing/systemd/systemd-growfs.8.en.html
> >>>>>>>> which grow partition to the end.
> >>>>>>> can it grow a mounted partition ? since that will be the case when
> >>>>>>> growing rootfs partition.
> >>>>>> It will grow last partition in first boot only.
> >>>>> my question was will it grow a mounted rootfs parition if that happens
> >>>>> tobe the last partition, I understand it will grow last partion and do
> >>>>> it as firstboot service.
> >>>> I usually use it in case when have dual rootfs (A, B) and data
> >>>> partition which is expanded to then end of disk.
> >>>> I don't have experience with growing rootfs (I think it can grow only
> >>>> not mounted partitions)
> >>>>>>>>> :rjs
> >>>>>>>>>
> >>>>>>>>>
> >>>>>>>>>
> >>>>>>>> BR,
> >>>>>>>>
> >>>>>>>> marek
> >>>>>>>>
> >>>>>>>>
> >>>>>>>>
> >>>>>>>>
> >>>>>> BR,
> >>>>>>
> >>>>>> marek
> >>>>>>
> >>>>>>
> >>>>>>
> >>>>>>
> >>>> marek
> >>>>
> >>>>
> >>>> --
> >>>> as simple and primitive as possible
> >>>> -------------------------------------------------
> >>>> Marek Belisko - OPEN-NANDRA
> >>>> Freelance Developer
> >>>>
> >>>> Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
> >>>> Tel: +421 915 052 184
> >>>> skype: marekwhite
> >>>> twitter: #opennandra
> >>>> web:http://open-nandra.com
> >>>>
> >>>
> >>> --
> >>> | Michael Nazzareno Trimarchi                     Amarula Solutions BV |
> >>> | COO  -  Founder                                      Cruquiuskade 47 |
> >>> | +31(0)851119172                                 Amsterdam 1018 AM NL |
> >>> |                  [`as]http://www.amarulasolutions.com                |
> >>>
> >>
> >>
> > --
> > -----
> > Rudolf J Streif
> > CEO/CTO ibeeto
> > +1.855.442.3386 x700
> >
> >
> >
> >
>
>
> 



-- 
| Michael Nazzareno Trimarchi                     Amarula Solutions BV |
| COO  -  Founder                                      Cruquiuskade 47 |
| +31(0)851119172                                 Amsterdam 1018 AM NL |
|                  [`as] http://www.amarulasolutions.com               |
