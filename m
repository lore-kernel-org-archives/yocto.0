Received: from mail-vk1-f194.google.com (mail-vk1-f194.google.com [209.85.221.194])
 by mx.groups.io with SMTP id smtpd.web09.920.1583191369988145479
 for <yocto@lists.yoctoproject.org>;
 Mon, 02 Mar 2020 15:22:50 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZvL2d/fU;
 spf=pass (domain: gmail.com, ip: 209.85.221.194, mailfrom: aljoscha.lautenbach@gmail.com)
Received: by mail-vk1-f194.google.com with SMTP id f17so336965vkk.12
        for <yocto@lists.yoctoproject.org>; Mon, 02 Mar 2020 15:22:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=jCnNTe7mj8tma+hALSN3C8/yWFvdgAov96aKxS+iJaI=;
        b=ZvL2d/fUkpEWYNgX1MJwxvyxXYfbb/WbY+DE+siNSOtWBujgoqkmBrfg70f3vntfkI
         0lI1P9Uo5FOxe3xXzBaDTKEc3fZQBoKc8eSKzb7cbOHnqc6k3d6LbH4iPdr2QjWXvKvE
         BlVBhYiHqalaNjquDxc/Pex566SPnpu2p4tb2VNsuLi57pmDbwcQpF6ViaB7QmvvNXcI
         OHRSsQFY+IfRHJqS5qqn40K4dsWUThc/g9XcdAgjRpw0AJbgZu9RviWXFld/0TyVMvJf
         5ECxQCjCInxjWl1y9wrqF0nejSms0QYEADGiORiz07TriM8gG5sIhJHf36MoTXHuVgYN
         MQWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=jCnNTe7mj8tma+hALSN3C8/yWFvdgAov96aKxS+iJaI=;
        b=phQYntdsijoJ3l/WmNZUMUyxHtnBO+mtDDsfHVwYCDq5lNCWkKM6QQ52zb4Nhf+Lnk
         nkIEEjXQ0aP/LqpxEIGEoaa2/aq+QXmWku5P8QrTxbINUihxgthVuLwwjFikLjMopP+O
         8hHdtFDWKVi8JLYaNiQ0AxmMFh9ypibryA8wWpujyFuu1a8dWmF2mz0hokukoMExZtyF
         hauBBAGcVRvo7tI5e1PLUcd3P3NdiCqS3HB/LueH79hyWvHGw1HRrol3GYUtmEO1YxrQ
         yNwiInHZLuasIfp1lctRgwqawvVFsoWGEdXZw5uW8CMpRisFBE6dSaAjcJHfH3OyuExp
         gUZg==
X-Gm-Message-State: ANhLgQ3jFYtGBd9khn3XAerDSp6HsNpfHjSy/ZiFZZfECBUFxV1/sXks
	4lOn+fMQc+reDdVnSRYa/z7bPxStAcezgblouNQ3ZjLXwc1rjg==
X-Google-Smtp-Source: ADFU+vtKc07L77qgNkFyonPkfLvr4fJyvKlCOc+j5qNrM/GViSz+00AakDpn/5c4hwF02vpJUSKCPZTP8ttvo9IdSsA=
X-Received: by 2002:a1f:6007:: with SMTP id u7mr1368564vkb.4.1583191368753;
 Mon, 02 Mar 2020 15:22:48 -0800 (PST)
MIME-Version: 1.0
From: aljoscha.lautenbach@gmail.com
Date: Tue, 3 Mar 2020 00:22:37 +0100
Message-ID: <CA+yZB6Y656mO-1Cf8N9yJ_RogNzZM6TCsfcHEiRmV-1J8sqR3Q@mail.gmail.com>
Subject: Building xen-image-minmal for raspberrypi3-64: kernel-module-xen-* not being built
To: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

Hi,

I am trying to build xen-image-minimal for a raspberrypi 3 B+, using
the official meta-virtualization [1] and meta-raspberrypi [2] layers
of the warrior branch.
For the record, core-image-base builds and boots fine with the
described setup (build config: [3]).
I should also add that I am new to yocto, so it is entirely possible
that I am missing something obvious.

When I try to build xen-image-minimal (build config: [4]), the
compilation seems to work, but I get the following error during the
final do_rootfs:

E: Unable to locate package kernel-module-xen-blkback
E: Unable to locate package kernel-module-xen-gntalloc
E: Unable to locate package kernel-module-xen-gntdev
E: Unable to locate package kernel-module-xen-netback
E: Unable to locate package kernel-module-xen-wdt

Relevant bits of local.conf: [5]
Build log: [6]

Out of curiosity I tried to build the image without those kernel
modules by removing them from IMAGE_INSTALL in xen-image-minimal.bb,
but although it builds the resulting image does not boot.

I have also tried to build with and without "virtualization" in
DISTRO_FEATURES, same result.

There is a related post on this mailing list from ~1.5 years ago
regarding a xilinx board [7]. Unfortunately I do not fully understand
the implications of the answer or what I would need to change.

The xen.cfg in meta-virtualization/recipes-kernel/linux/linux-yocto/xen.cfg
matches the one mentioned in that mailing list post almost one to one,
only that the meta-virtualization has 4 additional entries:
CONFIG_XEN_PVH=y
CONFIG_XEN_EFI=y
CONFIG_XEN_AUTO_XLATE=y
CONFIG_XEN_ACPI=y

I also tracked down the corresponding KCONFIG entry in
meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi.inc:
KCONFIG_MODE = "--alldefconfig"

I noted that, given my current understanding, this overrides all
previous configurations, so I tried the following variations, but they
all had the same outcome:
KCONFIG_MODE ?= "alldefconfig"
KCONFIG_MODE += "--alldefconfig"
KCONFIG_MODE = "alldefconfig"

I have been stuck on this for several days and I cannot figure out why
the expected xen kernel modules are not being built; any pointers
would be greatly appreciated!

[1] https://git.yoctoproject.org/git/meta-virtualization
[2] http://git.yoctoproject.org/cgit/cgit.cgi/meta-raspberrypi
[3] https://pastebin.com/nuC2EyjN
[4] https://pastebin.com/h9EijwPY
[5] https://pastebin.com/PqGFBfHy
[6] https://pastebin.com/n8H5UKj6
[7] https://www.yoctoproject.org/pipermail/meta-virtualization/2018-September/003698.html

Thanks,
Aljoscha
