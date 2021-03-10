Received: from mail-io1-f46.google.com (mail-io1-f46.google.com [209.85.166.46])
 by mx.groups.io with SMTP id smtpd.web12.6487.1615369187944115132
 for <yocto@lists.yoctoproject.org>;
 Wed, 10 Mar 2021 01:39:48 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=SQwqwBDF;
 spf=pass (domain: gmail.com, ip: 209.85.166.46, mailfrom: zoran.stojsavljevic@gmail.com)
Received: by mail-io1-f46.google.com with SMTP id p16so17233535ioj.4
        for <yocto@lists.yoctoproject.org>; Wed, 10 Mar 2021 01:39:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=NYUh1EVZJ2o7dC2znX3x8bE9UFHEdShOzjBwz5kIT8E=;
        b=SQwqwBDFhVnb3zpZ2jHvojc8lJ49R9oWHtlZjQdQrDQN3h1LJ9OlbgS2mHpcSNft9Z
         Ld/OOQQIJBTyEl71ufrJVEI5iqxAlAfI4cuC/fQdG8aScrW65jG/CLXSFmBYSlU9efuo
         7FXAttNFnsRJp910HlzFpKi9/BVpnxLaeMRut4eHLI5R7hWMBKeLZ1USiJvo0ViCg5wk
         j5MvsVEZBG6hhn38QNEqlxD4aKFHDXbGxfznuVounAzOkyi9Qd0MDVCfqStpBoPQRKwS
         NJWIf7e0KPVa9D16vsQvyUUhZWToatiwdzWX+M3smdSRp+kHGxiUw3FaNDwQwZbNgH6V
         fmDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=NYUh1EVZJ2o7dC2znX3x8bE9UFHEdShOzjBwz5kIT8E=;
        b=b5WI+oG+sm49QVJzuU4O5uf2vwBIHxwte1Gv4jyLA+GGY7JZwQELKL+CT/fJQ4Gjir
         Bg6P6f0WUg8krEGcM7K09OCEWwEdkX/FYasHRU496ZAPZsxydDH7E+DJMdtEb/uO4AM3
         eAv9K0poyQnjOS2nf2+wBBPX541v7P3YF85dFGM4A4TvTQNh4OLyeaSspK6rpShhcPry
         0/8YkM2MPRNIthertTdMayuhO9A5V7xPkjw+Prb2t1QupHTcm3b4JlP/OGrBQoNvOds/
         fKM2IrU/OGYM/U/lIGF+P/PZMT2HXu67k/LiqVMfjW+6BD3qJ70enXk0bHnJOnJMIc06
         BbEA==
X-Gm-Message-State: AOAM532DIRPFbJnVREdyxM/d8G47+kkYnLuil8yTQPoTpa+qLBgZ5ZH8
	EpUlw0w9zXcKCaEvjPMir098bwSnXgJdBiPFO9U=
X-Google-Smtp-Source: ABdhPJzNJj2LToC0w+gkkRk6JQ3OY9EJU/oMK/acGlgF26f7P/PcMKTaOdFmCk2iwMEWhpcUdoGFbNbIjJEobd9S6AI=
X-Received: by 2002:a05:6638:d4e:: with SMTP id d14mr2165912jak.103.1615369187113;
 Wed, 10 Mar 2021 01:39:47 -0800 (PST)
MIME-Version: 1.0
References: <5f0f65cc3e08a66871af9e3012c4f642@vivaldi.net>
In-Reply-To: <5f0f65cc3e08a66871af9e3012c4f642@vivaldi.net>
From: "Zoran" <zoran.stojsavljevic@gmail.com>
Date: Wed, 10 Mar 2021 10:39:35 +0100
Message-ID: <CAGAf8LzieZttDQxNUyCKY_J=zrtZu4+nsK6u4XVfu9ujZzkOCQ@mail.gmail.com>
Subject: Re: [yocto] Assign IP address at boot time
To: jchludzinski@vivaldi.net
Cc: Yocto <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

Hello,

Maybe you can stop in the U-Boot monitor, and check your environment?
=>
=> print serverip
=> print ipaddr
=> print gatewayip
=> print gw_ip

And see what and how your bootcmd and similar env variables look like?

And if you do not have defined above, to add them (according to ash
script) and try booting again?

Zee
_______


On Tue, Mar 9, 2021 at 10:28 PM jchludzinski via
lists.yoctoproject.org
<jchludzinski=vivaldi.net@lists.yoctoproject.org> wrote:
>
> Where do I assign a static IP address to my sole network interface?
>
> I tried using the Linux boot parameters (in extlinux.conf):
>
> LABEL Arria10 SOCDK SDMMC
>     KERNEL ../zImage
>     FDT ../socfpga_arria10_phead.dtb
>     APPEND root=/dev/mmcblk0p2 rw rootwait earlyprintk console=ttyS0,115200n8 ip=192.168.0.101:255.255.255.0:eth0
>
> Then I tried editing: /etc/network/interfaces
>
> iface eth0 inet static
> address 192.168.0.101
> netmask 255.255.255.0
>
> Both failed. Where do I go?
>
> 
>
