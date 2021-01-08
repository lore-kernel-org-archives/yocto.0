Received: from mail-yb1-f171.google.com (mail-yb1-f171.google.com [209.85.219.171])
 by mx.groups.io with SMTP id smtpd.web10.2976.1610075065092959117
 for <yocto@lists.yoctoproject.org>;
 Thu, 07 Jan 2021 19:04:25 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=ROwyDTPR;
 spf=pass (domain: gmail.com, ip: 209.85.219.171, mailfrom: jupiter.hce@gmail.com)
Received: by mail-yb1-f171.google.com with SMTP id b64so8113812ybg.7
        for <yocto@lists.yoctoproject.org>; Thu, 07 Jan 2021 19:04:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=ho2SKugRiwurCtmBi+caH89YDzaR/6hIcBti2LFAClQ=;
        b=ROwyDTPRChe7byvM46cWBYmfStqU1MC7zMaeXb1mi4B+5F+gjo/1PRf6wLb6V3XWUK
         GHvllsa+5SMSih5bBeCRuQsyfDL9RE+d4tJYmsIwsgmqv32Hdae4HikpZBI7zdE/1k4S
         WxWnoNRB8xG+xWBHU48/PTdo9RTUF9zjn7GR31XDpqNEveUtRny9CkStQQNXPBaRxcNF
         J5OUIOSgOlRh6e4bih22LoL2GD4mijr5izcxFFflBqc25ySVjlKfY9XIpJUgQWZXZq9A
         GFUXA7/4pnq+nqpFNeKCWWXg0XQ2G0OljVNCvsHvuAw8HgVfyDGIloHp92jejLAWhsGG
         9lBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=ho2SKugRiwurCtmBi+caH89YDzaR/6hIcBti2LFAClQ=;
        b=VTXJN2XfpR/t51pBpeEJYPkiz4Ail4+LHHLIfDVxurHpxFfaIdbMvYMR004qPlS0uN
         k1fnxbEg5RFq60tp7CRK/SjSl+RhNaK/g3Yx1RTPLGykps0TXNROg9JOrjXtZvIhrak2
         6pauT7OOqfcR/cEyY5j42LaTZxVNrWF0yZxHzjcWRG9TbRE5x1F2PxOaRLE09eABRnRk
         a89HWqTiAAqmhUjccjg9Us2KbKPSHpgBveyQGaYGEZYbc3CVuU9X+HYCoAw0CxRvNo+J
         geJWTds43kjLKi4WdH0cO3iy0u7uuFejdMKFGWaUQ6bR/8WtP/qLIagxsnN5Om1OzslS
         vX3w==
X-Gm-Message-State: AOAM532aiaytkAAU6PyL1WcSQhjStKgbCt5RLkWzzHGknI0lPvGKLd0d
	m0OdfpLt1QYOxlwA0dDliBb9D06rx/cIqtkRsd4=
X-Google-Smtp-Source: ABdhPJxAdMCv9UhtArDgx30jgV9pPF01QT656I5kBqrQLudmsP2x4yDNIEdiBDsMnkvySSztkCa9VNyleKW5WkB4exc=
X-Received: by 2002:a25:d483:: with SMTP id m125mr3005555ybf.330.1610075064348;
 Thu, 07 Jan 2021 19:04:24 -0800 (PST)
MIME-Version: 1.0
References: <CAA=hcWRgT3j9cwhHu4r-+x3_G8E_Yv3qPVKaFOn67-GOSRJh8Q@mail.gmail.com>
 <32166.1610008905321916245@lists.yoctoproject.org> <CAA=hcWT=s8VBLkbEkd9mVdCRrScxhNta_Yf+SvqBiMm1ZjGfyw@mail.gmail.com>
 <20210107102520.t34e5sf4q7hewvat@qschulz>
In-Reply-To: <20210107102520.t34e5sf4q7hewvat@qschulz>
From: "JH" <jupiter.hce@gmail.com>
Date: Fri, 8 Jan 2021 14:03:47 +1100
Message-ID: <CAA=hcWR57QV0Yzviv8Ks2ZK0ru1PGQc-fjq4ROfA4i8OHP7wEQ@mail.gmail.com>
Subject: Re: [yocto] How to select Linux kernel version?
To: Quentin Schulz <quentin.schulz@streamunlimited.com>
Cc: kapllaj.elvis@gmail.com, yocto <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

Thanks Quentin, here are results:

> So we can stop half guessing and help you can you give us the output of:

> bitbake -e virtual/kernel | grep -e "^PREFERRED_PROVIDER_"

$ bitbake -e virtual/kernel | grep -e "^PREFERRED_PROVIDER_"
PREFERRED_PROVIDER_console-tools="kbd"
PREFERRED_PROVIDER_dbus-glib="dbus-glib"
PREFERRED_PROVIDER_dbus-glib-native="dbus-glib-native"
PREFERRED_PROVIDER_gdb="gdb"
PREFERRED_PROVIDER_gdk-pixbuf="gdk-pixbuf"
PREFERRED_PROVIDER_getopt="util-linux-getopt"
PREFERRED_PROVIDER_gzip-native="pigz-native"
PREFERRED_PROVIDER_libgcc="libgcc"
PREFERRED_PROVIDER_linux-libc-headers="linux-libc-headers"
PREFERRED_PROVIDER_ltp="ltp"
PREFERRED_PROVIDER_matchbox-panel="matchbox-panel-2"
PREFERRED_PROVIDER_nativesdk-libgcc="nativesdk-libgcc"
PREFERRED_PROVIDER_nativesdk-linux-libc-headers="nativesdk-linux-libc-headers"
PREFERRED_PROVIDER_nativesdk-mesa="nativesdk-mesa"
PREFERRED_PROVIDER_nativesdk-openssl="nativesdk-openssl"
PREFERRED_PROVIDER_nativesdk-opkg="nativesdk-opkg"
PREFERRED_PROVIDER_nativesdk-pkgconfig="nativesdk-pkgconfig"
PREFERRED_PROVIDER_openssl="openssl"
PREFERRED_PROVIDER_openssl-native="openssl-native"
PREFERRED_PROVIDER_opkg="opkg"
PREFERRED_PROVIDER_opkg-native="opkg-native"
PREFERRED_PROVIDER_pkgconfig="pkgconfig"
PREFERRED_PROVIDER_pkgconfig-native="pkgconfig-native"
PREFERRED_PROVIDER_udev="systemd"
PREFERRED_PROVIDER_virtual/base-utils="busybox"
PREFERRED_PROVIDER_virtual/egl="mesa"
PREFERRED_PROVIDER_virtual/fakeroot-native="pseudo-native"
PREFERRED_PROVIDER_virtual/gettext="gettext"
PREFERRED_PROVIDER_virtual/i686-oe-linux-binutils="binutils-cross-i686"
PREFERRED_PROVIDER_virtual/i686-oe-linux-compilerlibs="gcc-runtime"
PREFERRED_PROVIDER_virtual/i686-oe-linux-g++="gcc-cross-i686"
PREFERRED_PROVIDER_virtual/i686-oe-linux-gcc="gcc-cross-i686"
PREFERRED_PROVIDER_virtual/kernel="linux-yocto"
PREFERRED_PROVIDER_virtual/libc="glibc"
PREFERRED_PROVIDER_virtual/libc-locale="glibc-locale"
PREFERRED_PROVIDER_virtual/libgl="mesa"
PREFERRED_PROVIDER_virtual/libgl-native="mesa-native"
PREFERRED_PROVIDER_virtual/libgles1="mesa"
PREFERRED_PROVIDER_virtual/libgles2="mesa"
PREFERRED_PROVIDER_virtual/libiconv="glibc"
PREFERRED_PROVIDER_virtual/libintl="glibc"
PREFERRED_PROVIDER_virtual/libx11="libx11"
PREFERRED_PROVIDER_virtual/make="make"
PREFERRED_PROVIDER_virtual/make-native="make-native"
PREFERRED_PROVIDER_virtual/mesa="mesa"
PREFERRED_PROVIDER_virtual/nativesdk-libc="nativesdk-glibc"
PREFERRED_PROVIDER_virtual/nativesdk-libgl="nativesdk-mesa"
PREFERRED_PROVIDER_virtual/nativesdk-libiconv="nativesdk-glibc"
PREFERRED_PROVIDER_virtual/nativesdk-libintl="nativesdk-glibc"
PREFERRED_PROVIDER_virtual/update-alternatives="opkg-utils"
PREFERRED_PROVIDER_virtual/update-alternatives-native="opkg-utils-native"
PREFERRED_PROVIDER_virtual/x86_64-oesdk-linux-binutils-crosssdk="binutils-crosssdk-x86_64-oesdk-linux"
PREFERRED_PROVIDER_virtual/x86_64-oesdk-linux-compilerlibs="nativesdk-gcc-runtime"
PREFERRED_PROVIDER_virtual/x86_64-oesdk-linux-g++="gcc-crosssdk-x86_64-oesdk-linux"
PREFERRED_PROVIDER_virtual/x86_64-oesdk-linux-gcc="gcc-crosssdk-x86_64-oesdk-linux"
PREFERRED_PROVIDER_virtual/xserver="xserver-xorg"
PREFERRED_PROVIDER_virtual/xserver-xf86="xserver-xorg"
PREFERRED_PROVIDER_xf86-video-intel="xf86-video-intel"

> bitbake -e virtual/kernel | grep -e "^PREFERRED_VERSION_"

$  bitbake -e virtual/kernel | grep -e "^PREFERRED_VERSION_"
PREFERRED_VERSION_binutils="2.32%"
PREFERRED_VERSION_binutils-cross-canadian-i686="2.32%"
PREFERRED_VERSION_binutils-cross-i686="2.32%"
PREFERRED_VERSION_binutils-crosssdk-x86_64-oesdk-linux="2.32%"
PREFERRED_VERSION_binutils-native="2.32%"
PREFERRED_VERSION_cross-localedef-native="2.30%"
PREFERRED_VERSION_gcc="9.%"
PREFERRED_VERSION_gcc-cross-canadian-i686="9.%"
PREFERRED_VERSION_gcc-cross-i686="9.%"
PREFERRED_VERSION_gcc-cross-initial-i686="9.%"
PREFERRED_VERSION_gcc-crosssdk-initial-x86_64-oesdk-linux="9.%"
PREFERRED_VERSION_gcc-crosssdk-x86_64-oesdk-linux="9.%"
PREFERRED_VERSION_gcc-runtime="9.%"
PREFERRED_VERSION_gcc-sanitizers="9.%"
PREFERRED_VERSION_gdb="8.3%"
PREFERRED_VERSION_gdb-cross-canadian-i686="8.3%"
PREFERRED_VERSION_gdb-cross-i686="8.3%"
PREFERRED_VERSION_glibc="2.30%"
PREFERRED_VERSION_glibc-locale="2.30%"
PREFERRED_VERSION_glibc-mtrace="2.30%"
PREFERRED_VERSION_glibc-scripts="2.30%"
PREFERRED_VERSION_go="1.12%"
PREFERRED_VERSION_go-cross-canadian-i686="1.12%"
PREFERRED_VERSION_go-cross-core2-32="1.12%"
PREFERRED_VERSION_go-crosssdk-x86_64="1.12%"
PREFERRED_VERSION_go-native="1.12%"
PREFERRED_VERSION_go-runtime="1.12%"
PREFERRED_VERSION_libgcc="9.%"
PREFERRED_VERSION_libgcc-initial="9.%"
PREFERRED_VERSION_libgfortran="9.%"
PREFERRED_VERSION_linux-libc-headers="5.2%"
PREFERRED_VERSION_linux-yocto="5.10.%"
PREFERRED_VERSION_llvm="8.0.1"
PREFERRED_VERSION_llvm-native="8.0.1"
PREFERRED_VERSION_nativesdk-gcc="9.%"
PREFERRED_VERSION_nativesdk-gcc-runtime="9.%"
PREFERRED_VERSION_nativesdk-gcc-sanitizers="9.%"
PREFERRED_VERSION_nativesdk-glibc="2.30%"
PREFERRED_VERSION_nativesdk-go="1.12%"
PREFERRED_VERSION_nativesdk-go-runtime="1.12%"
PREFERRED_VERSION_nativesdk-libgcc="9.%"
PREFERRED_VERSION_nativesdk-libgcc-initial="9.%"
PREFERRED_VERSION_nativesdk-linux-libc-headers="5.2%"
PREFERRED_VERSION_nativesdk-llvm="8.0.1"
PREFERRED_VERSION_nativesdk-qemu="4.1%"
PREFERRED_VERSION_qemu="4.1%"
PREFERRED_VERSION_qemu-native="4.1%"
PREFERRED_VERSION_virtual/i686-oe-linux-go="1.12%"
PREFERRED_VERSION_wpa_supplicant="2.6"


> bitbake -e virtual/kernel | grep -e "^OVERRIDES="

$  bitbake -e virtual/kernel | grep -e "^OVERRIDES="
OVERRIDES="linux:i686:pn-linux-yocto:x86:qemuall:qemux86:solar-distro:class-target:libc-glibc:forcevariable"

> bitbake-layers show-recipes linux-yocto linux-fslc

$ bitbake-layers show-recipes linux-yocto linux-fslc
NOTE: Starting bitbake server...
Loading cache: 100% |############################################| Time: 0:00:00
Loaded 1473 entries from dependency cache.
Parsing recipes: 100% |##########################################| Time: 0:00:02
Parsing of 922 .bb files complete (920 cached, 2 parsed). 1475
targets, 295 skipped, 0 masked, 0 errors.
=== Matching recipes: ===
linux-fslc:
  meta-freescale       5.1 (skipped)
linux-yocto:
  meta                 5.2.28+gitAUTOINC+dd6019025c_992280855e
  meta                 4.19.87+gitAUTOINC+4f5d761316_b44ad1b1e7

$ cat local.conf
............
PREFERRED_PROVIDER_virtual/kernel="linux-yocto"
PREFERRED_VERSION_linux-yocto = "5.10.%"
.............

Thank you very much.

Kind regards,

- jupiter
