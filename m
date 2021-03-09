Received: from mail-qk1-f176.google.com (mail-qk1-f176.google.com [209.85.222.176])
 by mx.groups.io with SMTP id smtpd.web11.12076.1615308844497602023
 for <yocto@lists.yoctoproject.org>;
 Tue, 09 Mar 2021 08:54:04 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=co5PlZWt;
 spf=pass (domain: gmail.com, ip: 209.85.222.176, mailfrom: raj.khem@gmail.com)
Received: by mail-qk1-f176.google.com with SMTP id g185so13701683qkf.6
        for <yocto@lists.yoctoproject.org>; Tue, 09 Mar 2021 08:54:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=O7bbtvTThuNrPq6WDpw20ICERDYCOWiwyCX+z3jr3F0=;
        b=co5PlZWtOOmWcrpVz9fN+Q3hTJjhZDpNNWwiidIfYf2mSFdThjolvrgkxBqLCCnBrc
         3ZVLczQ8QkK9G6aIOzqFR5ffeWMNxjRUyXBeuXft30eoPyaFpwxBqH8x0cgpp70pqOup
         JGL5GrXFLDIpIWOsjqZSgJ5NsnAXUFjCyTZEAZE20vqW1TmMl5OT/+I8ndfouZLXegKm
         K5kF0dZNYAjwb5hVTR4bMMhsDGjwZFoQ/UIxuheUI+X7mDyNB1IMuJC/zkSHG+0d5EOs
         P91ZZQDKJvja7KpCszgvNX9AMnSZPEG/VSzc+iSwtLi29/bpp2te3wHhejVkQdoLrO8x
         kzUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=O7bbtvTThuNrPq6WDpw20ICERDYCOWiwyCX+z3jr3F0=;
        b=D+vjvQcu+YQzTZQPBcctELS8mHlLmSeF8GxtAzryJIoRtc3DAjNJHBZBPFjlTr6l4M
         6SjeFoxtspwejZ7aDoBFqrvocaxii827YxbzdaHmmDOU8nie+fcWWwg8VINCP0Gej302
         bjS5iVIGhSh0SDOtIaUOnPTbaCxK1FuVTistE6c9dS4Xt8SLL2GmA+S6F90w46z5xP2L
         Db6mn/Ye6JEhfQ3oV4Tm/HmNwFm+NFVMng8xmEbCLn5mO1L0ZgsCFdygilstnpumrM8L
         AOXn2wvqgjFXSpsskTbhsFIX/DwEDHCrBPdDsJuJetrX5DT6Rld2eT65XDjnNcKExnvy
         4cLg==
X-Gm-Message-State: AOAM531mseRHFSrpukWgqgCBPwQ87UHAyyIciIytYMVmGT6nz3J0/s50
	gGcze7Bpa7JnJ+/igyL18sHFGAK2HseiZvZ0qj4=
X-Google-Smtp-Source: ABdhPJwWXAEnutNLwOeqUyl8jYMVWkfpw1Im2DDV/O+7xDLDS5XKTq4Dan5dEBhZbAPuzdjkMWHIINmYCLkmpSUlbuM=
X-Received: by 2002:a05:620a:12ae:: with SMTP id x14mr26745572qki.25.1615308843599;
 Tue, 09 Mar 2021 08:54:03 -0800 (PST)
MIME-Version: 1.0
References: <tOJ4.1614960907629848256.tBPL@lists.yoctoproject.org>
In-Reply-To: <tOJ4.1614960907629848256.tBPL@lists.yoctoproject.org>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Tue, 9 Mar 2021 08:53:37 -0800
Message-ID: <CAMKF1sqTRc-u8cEnBdCtYdMVSDUXYPbpB9Eddj+CAnegXy9bhA@mail.gmail.com>
Subject: Re: [yocto] avahi_0.8 issue with latest version
To: sateesh m <sateesh0457@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

if the process is dead them perhaps it will be helpful to get a
stacktrace and see whats going on.

On Fri, Mar 5, 2021 at 8:15 AM sateesh m <sateesh0457@gmail.com> wrote:
>
> Hi Guys,
>
>  I  have installed avahi_0.8 version using gatesgreath version.  its compiled successfully .but  i am facing issue  with  pid is remove automatically when i restart my service.
>
>  avahi configuration : hostname,domain name, allow ipv4, allow eth0,reflector =yes i did all this avahi-daemon.conf
> dependencies: gtk+3,gtk,dbus,avahi-daemon,avahi-utils ,libnss-mdns.
> is i miss any configuration or any patchwork work for this packages  please update me i will modify it.
>
> ( avahi-daemon[625]: Process 592 died: No such process; trying to remove PID file. (/run/avahi-daemon//pid))
>
>
> 0;1;32m*[[0m avahi-daemon.service - Avahi mDNS/DNS-SD Stack
>      Loaded: loaded (/lib/systemd/system/avahi-daemon.service; enabled; vendor preset: enabled)
>      Active: [[0;1;32mactive (running)[[0m since Fri 2021-03-05 13:12:17 UTC; 7min ago
> TriggeredBy: [[0;1;32m*[[0m avahi-daemon.socket
>    Main PID: 625 (avahi-daemon)
>      Status: "avahi-daemon 0.8 starting up."
>       Tasks: 2 (limit: 9561)
>      Memory: 620.0K
>      CGroup: /system.slice/avahi-daemon.service
>              |-625 avahi-daemon: running [foo.local]
>              `-626 avahi-daemon: chroot helper
>
> Mar 05 13:12:17 mysystem systemd[1]: Starting Avahi mDNS/DNS-SD Stack...
> Mar 05 13:12:17 mysystem avahi-daemon[625]: Process 592 died: No such process; trying to remove PID file. (/run/avahi-daemon//pid)
> Mar 05 13:12:17 my system systemd[1]: Started Avahi mDNS/DNS-SD Stack.
>
>
>
> root@mysystem:~# pgrep -f -l avahi
> 192 systemctl
> 200 systemctl
> 210 systemctl
> 216 journalctl
> 503 systemctl
> 539 systemctl
> 547 systemctl
> 559 systemctl
> 575 systemctl
> 582 systemctl
> 594 systemctl
> 625 avahi-daemon: running [foo.local]
> 626 avahi-daemon: chroot helper
>
>
> Thanks & Regards,
> Sateesh
>
>
>
> 
>
