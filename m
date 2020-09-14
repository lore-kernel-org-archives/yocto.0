Received: from mail-lj1-f181.google.com (mail-lj1-f181.google.com [209.85.208.181])
 by mx.groups.io with SMTP id smtpd.web12.69878.1600115054674670446
 for <yocto@lists.yoctoproject.org>;
 Mon, 14 Sep 2020 13:24:15 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@madison-systems.20150623.gappssmtp.com header.s=20150623 header.b=ECs5CsQu;
 spf=none, err=SPF record not found (domain: madison.systems, ip: 209.85.208.181, mailfrom: matt@madison.systems)
Received: by mail-lj1-f181.google.com with SMTP id a22so765771ljp.13
        for <yocto@lists.yoctoproject.org>; Mon, 14 Sep 2020 13:24:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=madison-systems.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=+wSPxN5Mcy9cYa9lF6O5j8GrZQo2q1IMWcabPg/cz7E=;
        b=ECs5CsQuNmbhSqYf4ncJXIWM2ywNS2a+FBIngsuNfRu9PcemnFb+6iii7f3TDuFHCk
         rG3Hnknge4WO60n/VEhtZd/6/q9mi4s0HqTSy6gHmiU1wAMnmrJDmwdXt4H9U9LluvHG
         tM2a92+r/nOJFNh0+IG0ra8ZlkVYRHY1wkmNKD73EzxGd7gEosfHDRKUpMuaeA0Z9Fg3
         K+lznejDI2pLKgmk+zntnXCA7+jiSLZmsqzNgj4orPBshuuLB0UeauG9ml9tI1xZVhvc
         Heg9Ly2NVBQ+K+piHjJkOHy/NCsFzFMXHqN0Ndn0g1kUu6C1vI06Uc812o7JX9FBMOOI
         r/YA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=+wSPxN5Mcy9cYa9lF6O5j8GrZQo2q1IMWcabPg/cz7E=;
        b=Q1WaIzG1HaWM9NskULKTswp8PHJ9MNPBaAskUMAUcctRYI1PJM8wqFg3q29eCgIJm7
         wFl5Qk8tg5QAYTJom/N1zlTcJQn37ktkMCtCALJoTwJhZhLxMIu/E7i5m5DHu2hDNzKI
         YC7Rdi9V+xkhiBQMopveYEZccP9ExZU+k873igHmvlvqbriEi1/eoXP7FH1e9b4KGkUd
         JxLHCAEbS0UPCEx+NM2S36rGNYyNJf/GFk+vKPbYxhkKSzM3MQpltN6H4KqIPZkOC5/L
         zd+RBhm03M/hg3UMSX99oQyW/lqF5pi3owrm+eePt8RmjRrc6e77KirpkJZtZN9/WFPP
         b0MQ==
X-Gm-Message-State: AOAM5303bIZQ0RrKF0goJjq/gvGg5IC4ZXTcSaYlMqyKRpVacKg6GV9y
	Q0o9+axEBmaVS57EwpSlGRhlQKqhEH1iPZJQzZhFMg==
X-Google-Smtp-Source: ABdhPJydf00wkouSg57MioDSZKEbmRRL2L5T2/WGXDlHH4USzwJ3FQycVI+V8pBnunJ6E2eWLfwhb/IRrfZUOksBnbQ=
X-Received: by 2002:a2e:894f:: with SMTP id b15mr5258058ljk.380.1600115052653;
 Mon, 14 Sep 2020 13:24:12 -0700 (PDT)
MIME-Version: 1.0
References: <mu1M.1600108281958934138.htNV@lists.yoctoproject.org>
In-Reply-To: <mu1M.1600108281958934138.htNV@lists.yoctoproject.org>
From: "Matt Madison" <matt@madison.systems>
Date: Mon, 14 Sep 2020 13:24:01 -0700
Message-ID: <CAGgRHJpeKVYciJD45ZPJsn0qiZYqDjCG4Xd=v8pLu5grApN_iQ@mail.gmail.com>
Subject: Re: [yocto] Ethernet device with systemd-networkd on Yocto won't work (rejects ARP replies), but does work with /etc/network/interfaces #systemd #yocto
To: eliranl@amazon.com
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

On Mon, Sep 14, 2020 at 11:31 AM eliranl via lists.yoctoproject.org
<eliranl=amazon.com@lists.yoctoproject.org> wrote:
>
> Hi,
> (since this is a long post, i divided it to sections)
>
> TL;DR
>
> I have a networking issue in my Yocto dist; Somehow, my ethernet device won't work with systemd-networkd, but will work with /etc/network/interfaces.
>
> Problem
> I have an Nvidia Jetson AGX Xavier device which runs a Yocto Thud distribution based on meta-tegra's tegra-minimal-initramfs, which is a small initrd for Jetson Xavier, except it was modified to run with coreutils instead of busybox, and with systemd.

 Which of the meta-tegra branches is it?  thud-l4t-r32.3.1?

> It has an eth0 device which is configured (with a config file in /etc/systemd/network) with a static IP address. The Xavier's Ethernet port is connected directly to another Ubuntu PC, which is also on the same subnet with a different static IP address.
>
> I cannot get the Xavier's network device to work with systemd-networkd;
[...]
> The following is the non-working systemd network device configuration file:
>
> [Match]
> Name=eth0
>
> [Network]
> Address=192.168.13.6/24
> Gateway=192.168.13.10

There was an issue with NVIDIA's eqos driver in older BSPs.  I know it
affected the TX2, with the exact same symptoms
It could affect Xavier modules as well. The workaround is to disable
LLDP on by adding

LLDP=no

to the [Network] section for the interface.

See https://github.com/OE4T/meta-tegra/issues/146

The workaround didn't get back-ported to the thud-l4t-r32.3.1 branch.

[...]

> Please accept my apologies if this isn't the right forum, i wasn't sure where to sent it to.

Since this is BSP-related, opening an issue at
https://github.com/OE4T/meta-tegra/issues might work better.

Regards
-Matt
