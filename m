Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
 by mx.groups.io with SMTP id smtpd.web11.5270.1599046346555462446
 for <yocto@lists.yoctoproject.org>;
 Wed, 02 Sep 2020 04:32:26 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=nMCqELo/;
 spf=pass (domain: gmail.com, ip: 209.85.218.53, mailfrom: marek.belisko@gmail.com)
Received: by mail-ej1-f53.google.com with SMTP id d26so6174023ejr.1
        for <yocto@lists.yoctoproject.org>; Wed, 02 Sep 2020 04:32:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=nt0B6Id0caZs/tuuKdl8yZGFGugGyED/p6S0T1Y+VB0=;
        b=nMCqELo/asBlH0vCBOyhzS5EeWlO0mw4sp/al0Busj4R+zKBzkelYw8ntFHnQmZ+Dq
         Oq3xWL7A5l4xjMg/WU9OXigZOXHGCWr9RZVBB4262WpWmnQ4T/xdtKbDugwEoW7bmaT4
         NBzL40Vt1NY48WKSjmd2CYHJh5VB/w0kks3ZcB92+4x2y7rNPXpjk9GElsES4S7z/3th
         AG8NWv8krhQlmz6xW71yzeRqi/Q1OH2GqlorW5SGuDjfZ0G0SViz3Z7hguNxgtt4HPk5
         1GRbOTK0DJsNYbhbHHQrJj5gZPIZo+18airbHIPOXUpKABg2wpDkgctcpE/EmWuOKzAh
         RUQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=nt0B6Id0caZs/tuuKdl8yZGFGugGyED/p6S0T1Y+VB0=;
        b=jfPEdAkQMA2ufj5iX8LfESWuk3QG/2erOyQfef4FF0JoscGbimTlWVjEsoem/EpOEE
         yGnuSezAyVXExT8+BrXN8TcRSKAG6EcgLEgbE19D16Ij3V90u1GHA1KyRpUwtFBeSGFt
         VwBkqZsBlSACTCot6fGmp1az2Di2mLWcuRTc435ucBOIVxGQVAaViXZFkwj+sLJQe1LS
         9P0EZNIdaQzI9IMUgDIYptePmIs+yL5C/wXBjoGdCOiBwN7EIqxn6YaM25WMLfT7RpoM
         5l8P50uZy3tjVCIMWnu/2PAEjc06CjqBy83VzZVujY2bhKMeDw+PfBpXKgaoLFPX2JBS
         +cNA==
X-Gm-Message-State: AOAM531lIbs99WhQ4VP5eB9DoHszEyT24uWgTI640tk6WkU4S75t1heW
	nPUBznUmLZPvk+1NxupDVer8ipL7TXE5QT/RIY8=
X-Google-Smtp-Source: ABdhPJztj/lYm3E7ABaF0zX014+xytCe+yMbs6HpCj0t3cdgF0xdqf05+sSqN/WloWxiQMisv1p1vUdohfPiuAqkjqc=
X-Received: by 2002:a17:906:54e:: with SMTP id k14mr5767595eja.59.1599046344610;
 Wed, 02 Sep 2020 04:32:24 -0700 (PDT)
MIME-Version: 1.0
References: <9QZb.1599045228761498654.9opf@lists.yoctoproject.org>
In-Reply-To: <9QZb.1599045228761498654.9opf@lists.yoctoproject.org>
From: "Marek Belisko" <marek.belisko@gmail.com>
Date: Wed, 2 Sep 2020 13:32:13 +0200
Message-ID: <CAAfyv37uHzbqhCCV0tKCbKp4AfOm6VLGFQ0WRYV-vOiueOZ7tg@mail.gmail.com>
Subject: Re: [yocto] How to integrate kernel-module in yocto-dunfell? #yocto #dunfell #apt #tx2 #kernel
To: kilian.brandt@tu-dresden.de
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Sep 2, 2020 at 1:13 PM <kilian.brandt@tu-dresden.de> wrote:
>
> Hey community,
>
> I'm trying to use this library [can-isotp][1] on a Jetson TX2 Board. The=
 version of the running OS is: 0.0.8 (dunfell).
>
> From the docs of the library I get the following instructions:
>
> ```
>
> DOWNLOAD and BUILD
>
> 1. Download repository and enter the repositories root directory
>
>       git clone https://github.com/hartkopp/can-isotp.git
>
>       cd can-isotp
>
> 2. Build ISO-TP kernel module
>
>    Ensure build dependencies are installed. E.g. for Debian (or Ubuntu):
>
>       sudo apt-get install build-essential linux-headers-$(uname -r)
>
>    To build:
>
>       (you need to be in the repositories root path)
>
>       make
>
>    To install (optional):
>
>       sudo make modules_install
>
>
> 3. When the PF_CAN core module is loaded ('modprobe can') the ISO-TP mod=
ule
>    can be loaded into the kernel with
>
>        insmod ./net/can/can-isotp.ko
>
>    When the can-isotp.ko module has been installed into the Linux Kernel=
s
>    modules directory (e.g. with 'make modules_install') the module shoul=
d
>    load automatically when opening a CAN_ISOTP socket.
>
> ```
>
> I have some questions about that procedure. Can anybody give me an hint =
on how to install this module? Do I have to create a completly new yocto im=
age or is there any way to install kernel modules afterwards? I tried to co=
py the folder onto the TX2 and install it by hand, but (as to be expected) =
the make command is not found.
PLease take a look at :
https://www.yoctoproject.org/docs/2.6/kernel-dev/kernel-dev.html#working-w=
ith-out-of-tree-modules
where it is described how to compile out of tree modules.
>
> I would really appreciate any help ! Best regards,
>
>
>   [1]: https://github.com/hartkopp/can-isotp
>=20

marek
