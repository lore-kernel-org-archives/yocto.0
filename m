Received: from mail-pj1-f51.google.com (mail-pj1-f51.google.com [209.85.216.51])
 by mx.groups.io with SMTP id smtpd.web12.20481.1629092197569092888
 for <yocto@lists.yoctoproject.org>;
 Sun, 15 Aug 2021 22:36:37 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=o1zdwZeV;
 spf=pass (domain: gmail.com, ip: 209.85.216.51, mailfrom: zoran.stojsavljevic@gmail.com)
Received: by mail-pj1-f51.google.com with SMTP id oa17so24718492pjb.1
        for <yocto@lists.yoctoproject.org>; Sun, 15 Aug 2021 22:36:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=A+gbP3KNN5Osvl363l626++DuWdzFtzPdpNQs6NoPOY=;
        b=o1zdwZeVcYhcyAW2QzF3qscc51/ukfpFaAaz1IOJikXWMIkAsIimZoevl2FBGHEEmx
         7mr2uFtDO/L/44C4O/sD62bHDYEeWMx/T89DdSV3tjvpYQgsnCRWGdtGQzeYs0mVWI87
         pKws/F7agBoPIJrJlneC2f1LPED+bbNTFVyqqIye6c19VylrRpDThKHrNcQ33iHM7cuA
         LGfG2APCzqs/x3vInzxf1/cQyKxbPZp45s2iruuDjGinaZEjdUX6YQFvYJphLIh/KJI0
         fejcCO8Rwn3e8IxuA1DFOFjRZg38F3vyvWLnep0axirq9T1rUaFYinrVsP37d477yGF6
         AHxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=A+gbP3KNN5Osvl363l626++DuWdzFtzPdpNQs6NoPOY=;
        b=KCYj4AyP8XP4mnu9PAGF01ZoKQB11qXMCpJ8U9rPukoqC03iqAGuCqJ7EiQui0csv1
         Gg8l7PARcMPiKHmJYg+0shb3Vpy82nHwx0DS/ZS2ICKpao8ZBf5LubqSvAQRXrFVNaO2
         J2UNkuBoGjrgNKs0GPQPL5YxcREhMdSEgV0X/H3tIy4v391KGSqJtxoe354dGmb8Hrgi
         o/+N+CeP2XFdYLZ/Au4z+9UuFvL2UesQmjRMxWQHmSuCgczPnZteVBQyUZaqwDoIbfby
         sZBbg5gZgfKEz4Za6d7pMHibErtih8iYVQqpKRUFuySC1PqIvkswUD3+Xxhvs+6DdmL6
         0clw==
X-Gm-Message-State: AOAM533TSx/boVJbEmB/P8rW9mXdX5S8j/rxTYDoh8shuLWcbsduT9n3
	Wxe2ArPGLFkLOg1YsXzCwjVTkgkc9xDpSjPDC9A=
X-Google-Smtp-Source: ABdhPJyiOnqxuitNmTY3hcMyU7dGMQrckAR5JK0RzRTbBQLXBQNvUnq0KqyCwbuF4IaKG5eMyrvEFOemFACn0HLwrfU=
X-Received: by 2002:a17:903:4094:b029:12d:242e:a68e with SMTP id
 z20-20020a1709034094b029012d242ea68emr11944210plc.82.1629092196858; Sun, 15
 Aug 2021 22:36:36 -0700 (PDT)
MIME-Version: 1.0
References: <CAA=hcWQ==cXXBygi+DGkx0D=sVs7hsZnZ3zDs_6d392oHhaqmA@mail.gmail.com>
In-Reply-To: <CAA=hcWQ==cXXBygi+DGkx0D=sVs7hsZnZ3zDs_6d392oHhaqmA@mail.gmail.com>
From: "Zoran" <zoran.stojsavljevic@gmail.com>
Date: Mon, 16 Aug 2021 07:36:25 +0200
Message-ID: <CAGAf8Lzejaip+Jxj66xwdSnG=E=vbhrh5p_no53s4o9DmJ2qMQ@mail.gmail.com>
Subject: Re: [yocto] Failed to boot kernel 5 after upgrading to Hardknott
To: JH <jupiter.hce@gmail.com>
Cc: yocto <yocto@lists.yoctoproject.org>, 
	oe-core layer <openembedded-core@lists.openembedded.org>
Content-Type: text/plain; charset="UTF-8"

You are using systemd with the wrong defconfig setup, my best guess.

cgroup option in the config must be set to Y while using systemd:
CONFIG_CGROUP=Y .

Zee
_______

On Mon, Aug 16, 2021 at 6:24 AM JH <jupiter.hce@gmail.com> wrote:
>
> Hi,
>
> I upgrade Zeus to Hardknott, the kernel version is 5.10.4
> (oe-user@oe-host) (arm-oe-linux-gnueabi-gcc (GCC) 10.2.0, GNU ld (GNU
> Binutils) 2.36.1.20210209), it was failed to boot the kernel :
>
> ---------------
>
> [    9.418302] systemd[1]: Failed to mount tmpfs at /sys/fs/cgroup: No
> such file or directory
> [    9.431805] systemd[1]: Failed to mount cgroup at
> /sys/fs/cgroup/systemd: No such file or directory
> [!!!!!!] Failed to mount API filesystems.
> [    9.463151] systemd[1]: Freezing execution.
>
> What could I be missing?
>
> Thank you.
>
> Kind regards,
>
> - jh
>
> 
>
