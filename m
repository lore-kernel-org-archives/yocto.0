Return-Path: <hassanchattarki@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F742EB64D9
	for <webhook@archiver.kernel.org>; Thu,  6 Jul 2023 09:02:29 +0000 (UTC)
Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com [209.85.208.48])
 by mx.groups.io with SMTP id smtpd.web10.17336.1688634142559138162
 for <yocto@lists.yoctoproject.org>;
 Thu, 06 Jul 2023 02:02:23 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=Dhryfh/d;
 spf=pass (domain: gmail.com, ip: 209.85.208.48, mailfrom: hassanchattarki@gmail.com)
Received: by mail-ed1-f48.google.com with SMTP id 4fb4d7f45d1cf-51d804c7d14so641258a12.3
        for <yocto@lists.yoctoproject.org>; Thu, 06 Jul 2023 02:02:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1688634141; x=1691226141;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=WXgOIb6F4t1YyCU4KY3WVZkJHSNB8n0yUuZ8tELAxg4=;
        b=Dhryfh/d7ilu+PCEMdL6hNG1yf7NjdH6WBwx7l59lHs3dqyOLS0fIuxfCyF5Nhu3yl
         w2Crj4/6EYUEqneml51UQXR/C9E1trk4viQHB0UwqJuaCJcw0jkA4bqe9eMzyX4Kqv+5
         H0NMDm9jK2gD2ERmEUAOO+ksQaxia/IVQe0YLbZ+Y9bLBXVhFAFy8qEi4UgtTcExEj09
         v1j9Rs1JRqRqOPat8RunJTS0dx0N8IlehV58A3ZO9EGJt7eQjNAhEYDEIE4z1JjaW0d3
         IXhjjxQDQd52c62Xj/gpk2vIeR/ft6BKqU3ypDwmEPdw94t57j8HwVncP/LSO/zla0uH
         b0XQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688634141; x=1691226141;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=WXgOIb6F4t1YyCU4KY3WVZkJHSNB8n0yUuZ8tELAxg4=;
        b=AjwjQ7DaqSerQGnl6AuerbLbXaN4UM1U+OYNO0NphYFCwpsYbJeHq1uxGh7kE/fJK4
         nh12IOnV+sfFOleWjgZ8pQnI1kAmvLTPhnd5AGi6hXm2nQBQEuJAceLOSXQZnElQgrPS
         i3PFC8c9onHHCFw8j6WSO6yJ5uaO/ZAd5RTzb2WFlYjFTwSRJEZp0jQbhO6UJOM6NnTL
         bAckm32OssK9iyGMT3SM+DG4rjuvbJ4Uuj9Pu7aBkw0UED4fnKkR3AyU1ewJ7puIewvq
         sTuK/MCpYA2vZrFS5Orqr1K9rLP0UNC3Cpc9f6Qc49UttO8yktWAqiJADypKEvyXHfDd
         nUdw==
X-Gm-Message-State: ABy/qLaJScSBDxFmqwSNunkUX/NHcBV1yE6q+4Ve1QcuOqfQbK641MMy
	c3/phWuqWOKZCfJpf4YvMQtha/dP1qQDm+fIkt+Ycz9LqyE=
X-Google-Smtp-Source: APBJJlFn5ROOKlemj/XtXhQXtk82cUO0Zj+9KyZj2x3t3jkRoTCCyKJ/gjLHqgwh6jEMH/h58VcwrT+v/pgtVx3oCOk=
X-Received: by 2002:a17:907:ca29:b0:989:3690:63e2 with SMTP id
 uk41-20020a170907ca2900b00989369063e2mr837408ejc.36.1688634139324; Thu, 06
 Jul 2023 02:02:19 -0700 (PDT)
MIME-Version: 1.0
From: MOHAMMED HASSAN <hassanchattarki@gmail.com>
Date: Thu, 6 Jul 2023 14:32:07 +0530
Message-ID: <CAPJWBngA0dGYTfH5YqQ3veHSqfJVRze=t6nzKdi=S2QWmWF4_g@mail.gmail.com>
Subject: do_configure error while adding networkmanager to image
To: yocto@lists.yoctoproject.org
Content-Type: multipart/mixed; boundary="00000000000007fd4005ffcdc67b"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 06 Jul 2023 09:02:29 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60522

--00000000000007fd4005ffcdc67b
Content-Type: multipart/alternative; boundary="00000000000007fd3e05ffcdc679"

--00000000000007fd3e05ffcdc679
Content-Type: text/plain; charset="UTF-8"

Hi guys,
I am trying to add networkmanager to my image. However i get the error
message as shown below
DEBUG: Executing shell function autotools_preconfigure
DEBUG: Shell function autotools_preconfigure finished
DEBUG: Executing python function autotools_aclocals
DEBUG: SITE files ['endian-little', 'bit-32', 'arm-common', 'arm-32',
'common-linux', 'common-glibc', 'arm-linux', 'arm-linux-gnueabi', 'common']
DEBUG: Python function autotools_aclocals finished
DEBUG: Executing shell function do_configure
automake (GNU automake) 1.16.1
Copyright (C) 2018 Free Software Foundation, Inc.
License GPLv2+: GNU GPL version 2 or later <
https://gnu.org/licenses/gpl-2.0.html>
This is free software: you are free to change and redistribute it.
There is NO WARRANTY, to the extent permitted by law.

Written by Tom Tromey <tromey@redhat.com>
       and Alexandre Duret-Lutz <adl@gnu.org>.
AUTOV is 1.16
NOTE: Executing intltoolize --copy --force --automake
NOTE: Executing ACLOCAL="aclocal
--system-acdir=/home/hp/Yocto-SDK/build/tmp/work/armv7at2hf-neon-pokymllib32-linux-gnueabi/lib32-networkmanager/1.22.16-r0/lib32-recipe-sysroot/usr/share/aclocal/
--automake-acdir=/home/hp/Yocto-SDK/build/tmp/work/armv7at2hf-neon-pokymllib32-linux-gnueabi/lib32-networkmanager/1.22.16-r0/recipe-sysroot-native/usr/share/aclocal-1.16"
autoreconf -Wcross --verbose --install --force --exclude=autopoint -I
/home/hp/Yocto-SDK/build/tmp/work/armv7at2hf-neon-pokymllib32-linux-gnueabi/lib32-networkmanager/1.22.16-r0/NetworkManager-1.22.16/m4/
-I
/home/hp/Yocto-SDK/build/tmp/work/armv7at2hf-neon-pokymllib32-linux-gnueabi/lib32-networkmanager/1.22.16-r0/recipe-sysroot-native/usr/share/aclocal/
autoreconf: Entering directory `.'
autoreconf: running: aclocal
--system-acdir=/home/hp/Yocto-SDK/build/tmp/work/armv7at2hf-neon-pokymllib32-linux-gnueabi/lib32-networkmanager/1.22.16-r0/lib32-recipe-sysroot/usr/share/aclocal/
--automake-acdir=/home/hp/Yocto-SDK/build/tmp/work/armv7at2hf-neon-pokymllib32-linux-gnueabi/lib32-networkmanager/1.22.16-r0/recipe-sysroot-native/usr/share/aclocal-1.16
-I
/home/hp/Yocto-SDK/build/tmp/work/armv7at2hf-neon-pokymllib32-linux-gnueabi/lib32-networkmanager/1.22.16-r0/NetworkManager-1.22.16/m4/
-I
/home/hp/Yocto-SDK/build/tmp/work/armv7at2hf-neon-pokymllib32-linux-gnueabi/lib32-networkmanager/1.22.16-r0/recipe-sysroot-native/usr/share/aclocal/
--force
autoreconf: configure.ac: tracing
autoreconf: running: libtoolize --copy --force
libtoolize: putting auxiliary files in AC_CONFIG_AUX_DIR, 'build-aux'.
libtoolize: copying file 'build-aux/ltmain.sh'
libtoolize: putting macros in AC_CONFIG_MACRO_DIRS, 'm4'.
libtoolize: copying file 'm4/libtool.m4'
libtoolize: copying file 'm4/ltoptions.m4'
libtoolize: copying file 'm4/ltsugar.m4'
libtoolize: copying file 'm4/ltversion.m4'
libtoolize: copying file 'm4/lt~obsolete.m4'
libtoolize: Consider adding '-I m4' to ACLOCAL_AMFLAGS in Makefile.am.
autoreconf: running:
/home/hp/Yocto-SDK/build/tmp/work/armv7at2hf-neon-pokymllib32-linux-gnueabi/lib32-networkmanager/1.22.16-r0/recipe-sysroot-native/usr/bin/autoconf
--include=/home/hp/Yocto-SDK/build/tmp/work/armv7at2hf-neon-pokymllib32-linux-gnueabi/lib32-networkmanager/1.22.16-r0/NetworkManager-1.22.16/m4/
--include=/home/hp/Yocto-SDK/build/tmp/work/armv7at2hf-neon-pokymllib32-linux-gnueabi/lib32-networkmanager/1.22.16-r0/recipe-sysroot-native/usr/share/aclocal/
--force
autoreconf: running:
/home/hp/Yocto-SDK/build/tmp/work/armv7at2hf-neon-pokymllib32-linux-gnueabi/lib32-networkmanager/1.22.16-r0/recipe-sysroot-native/usr/bin/autoheader
--include=/home/hp/Yocto-SDK/build/tmp/work/armv7at2hf-neon-pokymllib32-linux-gnueabi/lib32-networkmanager/1.22.16-r0/NetworkManager-1.22.16/m4/
--include=/home/hp/Yocto-SDK/build/tmp/work/armv7at2hf-neon-pokymllib32-linux-gnueabi/lib32-networkmanager/1.22.16-r0/recipe-sysroot-native/usr/share/aclocal/
--force
autoreconf: running: automake --add-missing --copy --force-missing
configure.ac:29: installing 'build-aux/compile'
configure.ac:24: installing 'build-aux/missing'
Makefile.am: installing 'build-aux/depcomp'
gtk-doc.make:173: warning: $(DOC_MAIN_SGML_FILE) was already defined in
condition BUILD_DOCS, which is included in condition TRUE ...
docs/api/Makefile.am:105:   'gtk-doc.make' included from here
docs/api/Makefile.am:14: ... '$(DOC_MAIN_SGML_FILE)' previously defined here
autoreconf: running: gnu-configize
autoreconf: Leaving directory `.'
NOTE: Running ../NetworkManager-1.22.16/configure  --build=x86_64-linux
 --host=arm-pokymllib32-linux-gnueabi
 --target=arm-pokymllib32-linux-gnueabi  --prefix=/usr  --exec_prefix=/usr
 --bindir=/usr/bin  --sbindir=/usr/sbin  --libexecdir=/usr/libexec
 --datadir=/usr/share  --sysconfdir=/etc  --sharedstatedir=/com
 --localstatedir=/var  --libdir=/usr/lib  --includedir=/usr/include
 --oldincludedir=/usr/include  --infodir=/usr/share/info
 --mandir=/usr/share/man  --disable-silent-rules
 --disable-dependency-tracking
 --with-libtool-sysroot=/home/hp/Yocto-SDK/build/tmp/work/armv7at2hf-neon-pokymllib32-linux-gnueabi/lib32-networkmanager/1.22.16-r0/lib32-recipe-sysroot
--disable-gtk-doc --enable-introspection      --disable-firewalld-zone
--disable-ifcfg-rh     --disable-more-warnings
--with-iptables=/usr/sbin/iptables     --with-tests     --with-nmtui=yes
  --with-udev-dir=/lib/udev  --disable-static  --enable-bluez5-dun
--with-nm-cloud-setup=no --with-dhclient=/sbin/dhclient
--with-dnsmasq=/usr/bin/dnsmasq --enable-ifupdown --with-modem-manager-1=no
--with-crypto=nss --disable-polkit --disable-ppp --disable-qt
 --with-systemdsystemunitdir=/lib/systemd/system
--with-session-tracking=systemd --enable-wifi=yes --enable-nls
configure: loading site script
/home/hp/Yocto-SDK/poky/meta/site/endian-little
configure: loading site script /home/hp/Yocto-SDK/poky/meta/site/arm-common
configure: loading site script /home/hp/Yocto-SDK/poky/meta/site/arm-32
configure: loading site script
/home/hp/Yocto-SDK/poky/meta/site/common-linux
configure: loading site script
/home/hp/Yocto-SDK/poky/meta/site/common-glibc
configure: loading site script /home/hp/Yocto-SDK/poky/meta/site/arm-linux
configure: loading site script /home/hp/Yocto-SDK/poky/meta/site/common
configure: loading site script
/home/hp/Yocto-SDK/meta-openembedded/meta-networking/site/endian-little
configure: loading site script
/home/hp/Yocto-SDK/build/tmp/work/armv7at2hf-neon-pokymllib32-linux-gnueabi/lib32-networkmanager/1.22.16-r0/lib32-recipe-sysroot/usr/share/arm-pokymllib32-linux-gnueabi_config_site.d/ncurses_config
checking for a BSD-compatible install...
/home/hp/Yocto-SDK/build/tmp/hosttools/install -c
checking whether build environment is sane... yes
checking for arm-pokymllib32-linux-gnueabi-strip...
arm-pokymllib32-linux-gnueabi-strip
checking for a thread-safe mkdir -p...
/home/hp/Yocto-SDK/build/tmp/hosttools/mkdir -p
checking for gawk... gawk
checking whether make sets $(MAKE)... yes
checking whether make supports nested variables... yes
checking whether UID '1000' is supported by ustar format... yes
checking whether GID '1000' is supported by ustar format... yes
checking how to create a ustar tar archive... gnutar
checking whether to enable maintainer-specific portions of Makefiles... yes
checking whether make supports nested variables... (cached) yes
checking whether make supports the include directive... yes (GNU style)
checking for arm-pokymllib32-linux-gnueabi-gcc...
arm-pokymllib32-linux-gnueabi-gcc  -march=armv7-a -mthumb -mfpu=neon
-mfloat-abi=hard -fstack-protector-strong  -D_FORTIFY_SOURCE=2 -Wformat
-Wformat-security -Werror=format-security
--sysroot=/home/hp/Yocto-SDK/build/tmp/work/armv7at2hf-neon-pokymllib32-linux-gnueabi/lib32-networkmanager/1.22.16-r0/lib32-recipe-sysroot
checking whether the C compiler works... yes
checking for C compiler default output file name... a.out
checking for suffix of executables...
checking whether we are cross compiling... yes
checking for suffix of object files... o
checking whether we are using the GNU C compiler... yes
checking whether arm-pokymllib32-linux-gnueabi-gcc  -march=armv7-a -mthumb
-mfpu=neon -mfloat-abi=hard -fstack-protector-strong  -D_FORTIFY_SOURCE=2
-Wformat -Wformat-security -Werror=format-security
--sysroot=/home/hp/Yocto-SDK/build/tmp/work/armv7at2hf-neon-pokymllib32-linux-gnueabi/lib32-networkmanager/1.22.16-r0/lib32-recipe-sysroot
accepts -g... yes
checking for arm-pokymllib32-linux-gnueabi-gcc  -march=armv7-a -mthumb
-mfpu=neon -mfloat-abi=hard -fstack-protector-strong  -D_FORTIFY_SOURCE=2
-Wformat -Wformat-security -Werror=format-security
--sysroot=/home/hp/Yocto-SDK/build/tmp/work/armv7at2hf-neon-pokymllib32-linux-gnueabi/lib32-networkmanager/1.22.16-r0/lib32-recipe-sysroot
option to accept ISO C89... none needed
checking whether arm-pokymllib32-linux-gnueabi-gcc  -march=armv7-a -mthumb
-mfpu=neon -mfloat-abi=hard -fstack-protector-strong  -D_FORTIFY_SOURCE=2
-Wformat -Wformat-security -Werror=format-security
--sysroot=/home/hp/Yocto-SDK/build/tmp/work/armv7at2hf-neon-pokymllib32-linux-gnueabi/lib32-networkmanager/1.22.16-r0/lib32-recipe-sysroot
understands -c and -o together... yes
checking dependency style of arm-pokymllib32-linux-gnueabi-gcc
 -march=armv7-a -mthumb -mfpu=neon -mfloat-abi=hard
-fstack-protector-strong  -D_FORTIFY_SOURCE=2 -Wformat -Wformat-security
-Werror=format-security
--sysroot=/home/hp/Yocto-SDK/build/tmp/work/armv7at2hf-neon-pokymllib32-linux-gnueabi/lib32-networkmanager/1.22.16-r0/lib32-recipe-sysroot...
none
checking how to run the C preprocessor... arm-pokymllib32-linux-gnueabi-gcc
-E
--sysroot=/home/hp/Yocto-SDK/build/tmp/work/armv7at2hf-neon-pokymllib32-linux-gnueabi/lib32-networkmanager/1.22.16-r0/lib32-recipe-sysroot
 -march=armv7-a -mthumb -mfpu=neon -mfloat-abi=hard
-fstack-protector-strong  -D_FORTIFY_SOURCE=2 -Wformat -Wformat-security
-Werror=format-security
checking for grep that handles long lines and -e...
/home/hp/Yocto-SDK/build/tmp/hosttools/grep
checking for egrep... /home/hp/Yocto-SDK/build/tmp/hosttools/grep -E
checking for ANSI C header files... (cached) yes
checking for sys/types.h... (cached) yes
checking for sys/stat.h... (cached) yes
checking for stdlib.h... (cached) yes
checking for string.h... (cached) yes
checking for memory.h... (cached) yes
checking for strings.h... (cached) yes
checking for inttypes.h... (cached) yes
checking for stdint.h... (cached) yes
checking for unistd.h... (cached) yes
checking minix/config.h usability... no
checking minix/config.h presence... no
checking for minix/config.h... no
checking whether it is safe to define __EXTENSIONS__... yes
checking for arm-pokymllib32-linux-gnueabi-gcc... (cached)
arm-pokymllib32-linux-gnueabi-gcc  -march=armv7-a -mthumb -mfpu=neon
-mfloat-abi=hard -fstack-protector-strong  -D_FORTIFY_SOURCE=2 -Wformat
-Wformat-security -Werror=format-security
--sysroot=/home/hp/Yocto-SDK/build/tmp/work/armv7at2hf-neon-pokymllib32-linux-gnueabi/lib32-networkmanager/1.22.16-r0/lib32-recipe-sysroot
checking whether we are using the GNU C compiler... (cached) yes
checking whether arm-pokymllib32-linux-gnueabi-gcc  -march=armv7-a -mthumb
-mfpu=neon -mfloat-abi=hard -fstack-protector-strong  -D_FORTIFY_SOURCE=2
-Wformat -Wformat-security -Werror=format-security
--sysroot=/home/hp/Yocto-SDK/build/tmp/work/armv7at2hf-neon-pokymllib32-linux-gnueabi/lib32-networkmanager/1.22.16-r0/lib32-recipe-sysroot
accepts -g... (cached) yes
checking for arm-pokymllib32-linux-gnueabi-gcc  -march=armv7-a -mthumb
-mfpu=neon -mfloat-abi=hard -fstack-protector-strong  -D_FORTIFY_SOURCE=2
-Wformat -Wformat-security -Werror=format-security
--sysroot=/home/hp/Yocto-SDK/build/tmp/work/armv7at2hf-neon-pokymllib32-linux-gnueabi/lib32-networkmanager/1.22.16-r0/lib32-recipe-sysroot
option to accept ISO C89... (cached) none needed
checking whether arm-pokymllib32-linux-gnueabi-gcc  -march=armv7-a -mthumb
-mfpu=neon -mfloat-abi=hard -fstack-protector-strong  -D_FORTIFY_SOURCE=2
-Wformat -Wformat-security -Werror=format-security
--sysroot=/home/hp/Yocto-SDK/build/tmp/work/armv7at2hf-neon-pokymllib32-linux-gnueabi/lib32-networkmanager/1.22.16-r0/lib32-recipe-sysroot
understands -c and -o together... (cached) yes
checking dependency style of arm-pokymllib32-linux-gnueabi-gcc
 -march=armv7-a -mthumb -mfpu=neon -mfloat-abi=hard
-fstack-protector-strong  -D_FORTIFY_SOURCE=2 -Wformat -Wformat-security
-Werror=format-security
--sysroot=/home/hp/Yocto-SDK/build/tmp/work/armv7at2hf-neon-pokymllib32-linux-gnueabi/lib32-networkmanager/1.22.16-r0/lib32-recipe-sysroot...
(cached) none
checking whether we are using the GNU C++ compiler... yes
checking whether arm-pokymllib32-linux-gnueabi-g++  -march=armv7-a -mthumb
-mfpu=neon -mfloat-abi=hard -fstack-protector-strong  -D_FORTIFY_SOURCE=2
-Wformat -Wformat-security -Werror=format-security
--sysroot=/home/hp/Yocto-SDK/build/tmp/work/armv7at2hf-neon-pokymllib32-linux-gnueabi/lib32-networkmanager/1.22.16-r0/lib32-recipe-sysroot
accepts -g... yes
checking dependency style of arm-pokymllib32-linux-gnueabi-g++
 -march=armv7-a -mthumb -mfpu=neon -mfloat-abi=hard
-fstack-protector-strong  -D_FORTIFY_SOURCE=2 -Wformat -Wformat-security
-Werror=format-security
--sysroot=/home/hp/Yocto-SDK/build/tmp/work/armv7at2hf-neon-pokymllib32-linux-gnueabi/lib32-networkmanager/1.22.16-r0/lib32-recipe-sysroot...
none
checking whether ln -s works... yes
checking for arm-pokymllib32-linux-gnueabi-gcc-ar...
arm-pokymllib32-linux-gnueabi-gcc-ar
checking for arm-pokymllib32-linux-gnueabi-gcc-ranlib...
arm-pokymllib32-linux-gnueabi-gcc-ranlib
checking for arm-pokymllib32-linux-gnueabi-gcc-nm...
arm-pokymllib32-linux-gnueabi-nm
checking build system type... x86_64-pc-linux-gnu
checking host system type... arm-pokymllib32-linux-gnueabi
checking how to print strings... printf
checking for a sed that does not truncate output... (cached) sed
checking for fgrep... /home/hp/Yocto-SDK/build/tmp/hosttools/grep -F
checking for ld used by arm-pokymllib32-linux-gnueabi-gcc  -march=armv7-a
-mthumb -mfpu=neon -mfloat-abi=hard -fstack-protector-strong
 -D_FORTIFY_SOURCE=2 -Wformat -Wformat-security -Werror=format-security
--sysroot=/home/hp/Yocto-SDK/build/tmp/work/armv7at2hf-neon-pokymllib32-linux-gnueabi/lib32-networkmanager/1.22.16-r0/lib32-recipe-sysroot...
arm-pokymllib32-linux-gnueabi-ld
--sysroot=/home/hp/Yocto-SDK/build/tmp/work/armv7at2hf-neon-pokymllib32-linux-gnueabi/lib32-networkmanager/1.22.16-r0/lib32-recipe-sysroot

checking if the linker (arm-pokymllib32-linux-gnueabi-ld
--sysroot=/home/hp/Yocto-SDK/build/tmp/work/armv7at2hf-neon-pokymllib32-linux-gnueabi/lib32-networkmanager/1.22.16-r0/lib32-recipe-sysroot
) is GNU ld... yes
checking for BSD- or MS-compatible name lister (nm)...
arm-pokymllib32-linux-gnueabi-nm
checking the name lister (arm-pokymllib32-linux-gnueabi-nm) interface...
BSD nm
checking the maximum length of command line arguments... 1572864
checking how to convert x86_64-pc-linux-gnu file names to
arm-pokymllib32-linux-gnueabi format... func_convert_file_noop
checking how to convert x86_64-pc-linux-gnu file names to toolchain
format... func_convert_file_noop
checking for arm-pokymllib32-linux-gnueabi-ld
--sysroot=/home/hp/Yocto-SDK/build/tmp/work/armv7at2hf-neon-pokymllib32-linux-gnueabi/lib32-networkmanager/1.22.16-r0/lib32-recipe-sysroot
 option to reload object files... -r
checking for arm-pokymllib32-linux-gnueabi-objdump...
arm-pokymllib32-linux-gnueabi-objdump
checking how to recognize dependent libraries... pass_all
checking for arm-pokymllib32-linux-gnueabi-dlltool... no
checking for dlltool... no
checking how to associate runtime and link libraries... printf %s\n
checking for arm-pokymllib32-linux-gnueabi-ar... (cached)
arm-pokymllib32-linux-gnueabi-gcc-ar
checking for archiver @FILE support... @
checking for arm-pokymllib32-linux-gnueabi-strip... (cached)
arm-pokymllib32-linux-gnueabi-strip
checking for arm-pokymllib32-linux-gnueabi-ranlib... (cached)
arm-pokymllib32-linux-gnueabi-gcc-ranlib
checking command to parse arm-pokymllib32-linux-gnueabi-nm output from
arm-pokymllib32-linux-gnueabi-gcc  -march=armv7-a -mthumb -mfpu=neon
-mfloat-abi=hard -fstack-protector-strong  -D_FORTIFY_SOURCE=2 -Wformat
-Wformat-security -Werror=format-security
--sysroot=/home/hp/Yocto-SDK/build/tmp/work/armv7at2hf-neon-pokymllib32-linux-gnueabi/lib32-networkmanager/1.22.16-r0/lib32-recipe-sysroot
object... ok
checking for sysroot...
/home/hp/Yocto-SDK/build/tmp/work/armv7at2hf-neon-pokymllib32-linux-gnueabi/lib32-networkmanager/1.22.16-r0/lib32-recipe-sysroot
checking for a working dd... /home/hp/Yocto-SDK/build/tmp/hosttools/dd
checking how to truncate binary pipes...
/home/hp/Yocto-SDK/build/tmp/hosttools/dd bs=4096 count=1
checking for arm-pokymllib32-linux-gnueabi-mt... no
checking for mt... no
checking if : is a manifest tool... no
checking for dlfcn.h... yes
checking for objdir... .libs
checking if arm-pokymllib32-linux-gnueabi-gcc  -march=armv7-a -mthumb
-mfpu=neon -mfloat-abi=hard -fstack-protector-strong  -D_FORTIFY_SOURCE=2
-Wformat -Wformat-security -Werror=format-security
--sysroot=/home/hp/Yocto-SDK/build/tmp/work/armv7at2hf-neon-pokymllib32-linux-gnueabi/lib32-networkmanager/1.22.16-r0/lib32-recipe-sysroot
supports -fno-rtti -fno-exceptions... no
checking for arm-pokymllib32-linux-gnueabi-gcc  -march=armv7-a -mthumb
-mfpu=neon -mfloat-abi=hard -fstack-protector-strong  -D_FORTIFY_SOURCE=2
-Wformat -Wformat-security -Werror=format-security
--sysroot=/home/hp/Yocto-SDK/build/tmp/work/armv7at2hf-neon-pokymllib32-linux-gnueabi/lib32-networkmanager/1.22.16-r0/lib32-recipe-sysroot
option to produce PIC... -fPIC -DPIC
checking if arm-pokymllib32-linux-gnueabi-gcc  -march=armv7-a -mthumb
-mfpu=neon -mfloat-abi=hard -fstack-protector-strong  -D_FORTIFY_SOURCE=2
-Wformat -Wformat-security -Werror=format-security
--sysroot=/home/hp/Yocto-SDK/build/tmp/work/armv7at2hf-neon-pokymllib32-linux-gnueabi/lib32-networkmanager/1.22.16-r0/lib32-recipe-sysroot
PIC flag -fPIC -DPIC works... yes
checking if arm-pokymllib32-linux-gnueabi-gcc  -march=armv7-a -mthumb
-mfpu=neon -mfloat-abi=hard -fstack-protector-strong  -D_FORTIFY_SOURCE=2
-Wformat -Wformat-security -Werror=format-security
--sysroot=/home/hp/Yocto-SDK/build/tmp/work/armv7at2hf-neon-pokymllib32-linux-gnueabi/lib32-networkmanager/1.22.16-r0/lib32-recipe-sysroot
static flag -static works... yes
checking if arm-pokymllib32-linux-gnueabi-gcc  -march=armv7-a -mthumb
-mfpu=neon -mfloat-abi=hard -fstack-protector-strong  -D_FORTIFY_SOURCE=2
-Wformat -Wformat-security -Werror=format-security
--sysroot=/home/hp/Yocto-SDK/build/tmp/work/armv7at2hf-neon-pokymllib32-linux-gnueabi/lib32-networkmanager/1.22.16-r0/lib32-recipe-sysroot
supports -c -o file.o... yes
checking if arm-pokymllib32-linux-gnueabi-gcc  -march=armv7-a -mthumb
-mfpu=neon -mfloat-abi=hard -fstack-protector-strong  -D_FORTIFY_SOURCE=2
-Wformat -Wformat-security -Werror=format-security
--sysroot=/home/hp/Yocto-SDK/build/tmp/work/armv7at2hf-neon-pokymllib32-linux-gnueabi/lib32-networkmanager/1.22.16-r0/lib32-recipe-sysroot
supports -c -o file.o... (cached) yes
checking whether the arm-pokymllib32-linux-gnueabi-gcc  -march=armv7-a
-mthumb -mfpu=neon -mfloat-abi=hard -fstack-protector-strong
 -D_FORTIFY_SOURCE=2 -Wformat -Wformat-security -Werror=format-security
--sysroot=/home/hp/Yocto-SDK/build/tmp/work/armv7at2hf-neon-pokymllib32-linux-gnueabi/lib32-networkmanager/1.22.16-r0/lib32-recipe-sysroot
linker (arm-pokymllib32-linux-gnueabi-ld
--sysroot=/home/hp/Yocto-SDK/build/tmp/work/armv7at2hf-neon-pokymllib32-linux-gnueabi/lib32-networkmanager/1.22.16-r0/lib32-recipe-sysroot
) supports shared libraries... yes
checking whether -lc should be explicitly linked in... no
checking dynamic linker characteristics... GNU/Linux ld.so
checking how to hardcode library paths into programs... immediate
checking whether stripping libraries is possible... yes
checking if libtool supports shared libraries... yes
checking whether to build shared libraries... yes
checking whether to build static libraries... no
checking how to run the C++ preprocessor...
arm-pokymllib32-linux-gnueabi-g++  -march=armv7-a -mthumb -mfpu=neon
-mfloat-abi=hard -fstack-protector-strong  -D_FORTIFY_SOURCE=2 -Wformat
-Wformat-security -Werror=format-security
--sysroot=/home/hp/Yocto-SDK/build/tmp/work/armv7at2hf-neon-pokymllib32-linux-gnueabi/lib32-networkmanager/1.22.16-r0/lib32-recipe-sysroot
-E
checking for ld used by arm-pokymllib32-linux-gnueabi-g++  -march=armv7-a
-mthumb -mfpu=neon -mfloat-abi=hard -fstack-protector-strong
 -D_FORTIFY_SOURCE=2 -Wformat -Wformat-security -Werror=format-security
--sysroot=/home/hp/Yocto-SDK/build/tmp/work/armv7at2hf-neon-pokymllib32-linux-gnueabi/lib32-networkmanager/1.22.16-r0/lib32-recipe-sysroot...
arm-pokymllib32-linux-gnueabi-ld
--sysroot=/home/hp/Yocto-SDK/build/tmp/work/armv7at2hf-neon-pokymllib32-linux-gnueabi/lib32-networkmanager/1.22.16-r0/lib32-recipe-sysroot

checking if the linker (arm-pokymllib32-linux-gnueabi-ld
--sysroot=/home/hp/Yocto-SDK/build/tmp/work/armv7at2hf-neon-pokymllib32-linux-gnueabi/lib32-networkmanager/1.22.16-r0/lib32-recipe-sysroot
) is GNU ld... yes
checking whether the arm-pokymllib32-linux-gnueabi-g++  -march=armv7-a
-mthumb -mfpu=neon -mfloat-abi=hard -fstack-protector-strong
 -D_FORTIFY_SOURCE=2 -Wformat -Wformat-security -Werror=format-security
--sysroot=/home/hp/Yocto-SDK/build/tmp/work/armv7at2hf-neon-pokymllib32-linux-gnueabi/lib32-networkmanager/1.22.16-r0/lib32-recipe-sysroot
linker (arm-pokymllib32-linux-gnueabi-ld
--sysroot=/home/hp/Yocto-SDK/build/tmp/work/armv7at2hf-neon-pokymllib32-linux-gnueabi/lib32-networkmanager/1.22.16-r0/lib32-recipe-sysroot
) supports shared libraries... yes
checking for arm-pokymllib32-linux-gnueabi-g++  -march=armv7-a -mthumb
-mfpu=neon -mfloat-abi=hard -fstack-protector-strong  -D_FORTIFY_SOURCE=2
-Wformat -Wformat-security -Werror=format-security
--sysroot=/home/hp/Yocto-SDK/build/tmp/work/armv7at2hf-neon-pokymllib32-linux-gnueabi/lib32-networkmanager/1.22.16-r0/lib32-recipe-sysroot
option to produce PIC... -fPIC -DPIC
checking if arm-pokymllib32-linux-gnueabi-g++  -march=armv7-a -mthumb
-mfpu=neon -mfloat-abi=hard -fstack-protector-strong  -D_FORTIFY_SOURCE=2
-Wformat -Wformat-security -Werror=format-security
--sysroot=/home/hp/Yocto-SDK/build/tmp/work/armv7at2hf-neon-pokymllib32-linux-gnueabi/lib32-networkmanager/1.22.16-r0/lib32-recipe-sysroot
PIC flag -fPIC -DPIC works... yes
checking if arm-pokymllib32-linux-gnueabi-g++  -march=armv7-a -mthumb
-mfpu=neon -mfloat-abi=hard -fstack-protector-strong  -D_FORTIFY_SOURCE=2
-Wformat -Wformat-security -Werror=format-security
--sysroot=/home/hp/Yocto-SDK/build/tmp/work/armv7at2hf-neon-pokymllib32-linux-gnueabi/lib32-networkmanager/1.22.16-r0/lib32-recipe-sysroot
static flag -static works... yes
checking if arm-pokymllib32-linux-gnueabi-g++  -march=armv7-a -mthumb
-mfpu=neon -mfloat-abi=hard -fstack-protector-strong  -D_FORTIFY_SOURCE=2
-Wformat -Wformat-security -Werror=format-security
--sysroot=/home/hp/Yocto-SDK/build/tmp/work/armv7at2hf-neon-pokymllib32-linux-gnueabi/lib32-networkmanager/1.22.16-r0/lib32-recipe-sysroot
supports -c -o file.o... yes
checking if arm-pokymllib32-linux-gnueabi-g++  -march=armv7-a -mthumb
-mfpu=neon -mfloat-abi=hard -fstack-protector-strong  -D_FORTIFY_SOURCE=2
-Wformat -Wformat-security -Werror=format-security
--sysroot=/home/hp/Yocto-SDK/build/tmp/work/armv7at2hf-neon-pokymllib32-linux-gnueabi/lib32-networkmanager/1.22.16-r0/lib32-recipe-sysroot
supports -c -o file.o... (cached) yes
checking whether the arm-pokymllib32-linux-gnueabi-g++  -march=armv7-a
-mthumb -mfpu=neon -mfloat-abi=hard -fstack-protector-strong
 -D_FORTIFY_SOURCE=2 -Wformat -Wformat-security -Werror=format-security
--sysroot=/home/hp/Yocto-SDK/build/tmp/work/armv7at2hf-neon-pokymllib32-linux-gnueabi/lib32-networkmanager/1.22.16-r0/lib32-recipe-sysroot
linker (arm-pokymllib32-linux-gnueabi-ld
--sysroot=/home/hp/Yocto-SDK/build/tmp/work/armv7at2hf-neon-pokymllib32-linux-gnueabi/lib32-networkmanager/1.22.16-r0/lib32-recipe-sysroot
) supports shared libraries... yes
checking dynamic linker characteristics... (cached) GNU/Linux ld.so
checking how to hardcode library paths into programs... immediate
checking for pid_t... yes
checking size of pid_t... (cached) 4
checking size of uid_t... 4
checking size of gid_t... 4
checking size of dev_t... 8
checking size of ino_t... 4
checking size of time_t... 4
checking size of rlim_t... 4
checking whether explicit_bzero is declared... yes
checking whether reallocarray is declared... yes
checking whether memfd_create is declared... yes
checking sys/auxv.h usability... yes
checking sys/auxv.h presence... yes
checking for sys/auxv.h... yes
checking whether getrandom is declared... yes
checking whether NLS is requested... yes
checking for intltool >= 0.40.0... 0.51.0 found
checking for intltool-update...
/home/hp/Yocto-SDK/build/tmp/work/armv7at2hf-neon-pokymllib32-linux-gnueabi/lib32-networkmanager/1.22.16-r0/recipe-sysroot-native/usr/bin/intltool-update
checking for intltool-merge...
/home/hp/Yocto-SDK/build/tmp/work/armv7at2hf-neon-pokymllib32-linux-gnueabi/lib32-networkmanager/1.22.16-r0/recipe-sysroot-native/usr/bin/intltool-merge
checking for intltool-extract...
/home/hp/Yocto-SDK/build/tmp/work/armv7at2hf-neon-pokymllib32-linux-gnueabi/lib32-networkmanager/1.22.16-r0/recipe-sysroot-native/usr/bin/intltool-extract
checking for xgettext...
/home/hp/Yocto-SDK/build/tmp/work/armv7at2hf-neon-pokymllib32-linux-gnueabi/lib32-networkmanager/1.22.16-r0/recipe-sysroot-native/usr/bin/xgettext
checking for msgmerge...
/home/hp/Yocto-SDK/build/tmp/work/armv7at2hf-neon-pokymllib32-linux-gnueabi/lib32-networkmanager/1.22.16-r0/recipe-sysroot-native/usr/bin/msgmerge
checking for msgfmt...
/home/hp/Yocto-SDK/build/tmp/work/armv7at2hf-neon-pokymllib32-linux-gnueabi/lib32-networkmanager/1.22.16-r0/recipe-sysroot-native/usr/bin/msgfmt
checking for gmsgfmt...
/home/hp/Yocto-SDK/build/tmp/work/armv7at2hf-neon-pokymllib32-linux-gnueabi/lib32-networkmanager/1.22.16-r0/recipe-sysroot-native/usr/bin/msgfmt
checking for msgfmt... (cached)
/home/hp/Yocto-SDK/build/tmp/work/armv7at2hf-neon-pokymllib32-linux-gnueabi/lib32-networkmanager/1.22.16-r0/recipe-sysroot-native/usr/bin/msgfmt
checking for gmsgfmt... (cached)
/home/hp/Yocto-SDK/build/tmp/work/armv7at2hf-neon-pokymllib32-linux-gnueabi/lib32-networkmanager/1.22.16-r0/recipe-sysroot-native/usr/bin/msgfmt
checking for xgettext... (cached)
/home/hp/Yocto-SDK/build/tmp/work/armv7at2hf-neon-pokymllib32-linux-gnueabi/lib32-networkmanager/1.22.16-r0/recipe-sysroot-native/usr/bin/xgettext
checking for msgmerge... (cached)
/home/hp/Yocto-SDK/build/tmp/work/armv7at2hf-neon-pokymllib32-linux-gnueabi/lib32-networkmanager/1.22.16-r0/recipe-sysroot-native/usr/bin/msgmerge
checking for ld... arm-pokymllib32-linux-gnueabi-ld
--sysroot=/home/hp/Yocto-SDK/build/tmp/work/armv7at2hf-neon-pokymllib32-linux-gnueabi/lib32-networkmanager/1.22.16-r0/lib32-recipe-sysroot

checking if the linker (arm-pokymllib32-linux-gnueabi-ld
--sysroot=/home/hp/Yocto-SDK/build/tmp/work/armv7at2hf-neon-pokymllib32-linux-gnueabi/lib32-networkmanager/1.22.16-r0/lib32-recipe-sysroot
) is GNU ld... yes
checking for shared library run path origin... done
checking 32-bit host C ABI... yes
checking for the common suffixes of directories in the library search
path... lib,lib
checking for CFPreferencesCopyAppValue... no
checking for CFLocaleCopyCurrent... no
checking for GNU gettext in libc... yes
checking whether to use NLS... yes
checking where the gettext function comes from... libc
checking for __secure_getenv... no
checking for secure_getenv... yes
checking whether to build with code coverage support... no
checking for library containing dlopen... -ldl
checking for arm-pokymllib32-linux-gnueabi-pkg-config... no
checking for pkg-config...
/home/hp/Yocto-SDK/build/tmp/work/armv7at2hf-neon-pokymllib32-linux-gnueabi/lib32-networkmanager/1.22.16-r0/recipe-sysroot-native/usr/bin/pkg-config
configure: WARNING: using cross tools not prefixed with host triplet
checking pkg-config is at least version 0.9.0... yes
checking for gio-unix-2.0 >= 2.37.6 gmodule-2.0... yes
checking for gobject-introspection... yes
checking for libudev >= 175... yes
checking for QtCore >= 4 QtDBus QtNetwork... no
checking for systemd >= 200... yes
checking for libsystemd >= 209... yes
checking for libsystemd >= 209... yes
checking for libsystemd... yes
checking for libsystemd >= 209... yes
checking for libselinux... no
checking for audit... no
checking for uuid... yes
checking for jansson >= 2.5... yes
checking for arm-pokymllib32-linux-gnueabi-eu-readelf...
arm-pokymllib32-linux-gnueabi-readelf
checking for libteamdctl >= 1.9... no
checking for polkit-agent-1 >= 0.97... no
checking for gnutls >= 2.12... no
checking for nss... yes
checking for pppd... /sbin/pppd
checking for bluez >= 5... yes
checking for dhcpcanon... no
checking for dhclient... /sbin/dhclient
checking for dhcpcd... /sbin/dhcpcd
checking for dnssec-trigger-script... /usr/libexec/dnssec-trigger-script
checking for libpsl >= 0.1... no
checking for libcurl >= 7.24.0... yes
checking for libndp... yes
checking for a readline compatible library... -lreadline
checking readline.h usability... no
checking readline.h presence... no
checking for readline.h... no
checking readline/readline.h usability... yes
checking readline/readline.h presence... yes
checking for readline/readline.h... yes
checking whether readline supports history... yes
checking history.h usability... no
checking history.h presence... no
checking for history.h... no
checking readline/history.h usability... yes
checking readline/history.h presence... yes
checking for readline/history.h... yes

*checking whether readline supports rl_echo_signal_char()... noconfigure:
error: rl_echo_signal_char() is required (install readline6?)*
NOTE: The following config.log files may provide further information.
NOTE:
/home/hp/Yocto-SDK/build/tmp/work/armv7at2hf-neon-pokymllib32-linux-gnueabi/lib32-networkmanager/1.22.16-r0/build/config.log
ERROR: configure failed
WARNING: exit code 1 from a shell command.
ERROR: Execution of
'/home/hp/Yocto-SDK/build/tmp/work/armv7at2hf-neon-pokymllib32-linux-gnueabi/lib32-networkmanager/1.22.16-r0/temp/run.do_configure.367720'
failed with exit code 1

I don't know how to add readline6 to my networkmanager recipe. I have
attached my bb file for your reference. Let me know if I need anything else
to help me in solving this issue.
Do let me know if you have any suggestions.

Thanks and regards,
Hassan

--00000000000007fd3e05ffcdc679
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi guys,<br><div>I am trying to add networkmanager to my i=
mage. However i get the error message=C2=A0as shown below</div><div>DEBUG: =
Executing shell function autotools_preconfigure<br>DEBUG: Shell function au=
totools_preconfigure finished<br>DEBUG: Executing python function autotools=
_aclocals<br>DEBUG: SITE files [&#39;endian-little&#39;, &#39;bit-32&#39;, =
&#39;arm-common&#39;, &#39;arm-32&#39;, &#39;common-linux&#39;, &#39;common=
-glibc&#39;, &#39;arm-linux&#39;, &#39;arm-linux-gnueabi&#39;, &#39;common&=
#39;]<br>DEBUG: Python function autotools_aclocals finished<br>DEBUG: Execu=
ting shell function do_configure<br>automake (GNU automake) 1.16.1<br>Copyr=
ight (C) 2018 Free Software Foundation, Inc.<br>License GPLv2+: GNU GPL ver=
sion 2 or later &lt;<a href=3D"https://gnu.org/licenses/gpl-2.0.html">https=
://gnu.org/licenses/gpl-2.0.html</a>&gt;<br>This is free software: you are =
free to change and redistribute it.<br>There is NO WARRANTY, to the extent =
permitted by law.<br><br>Written by Tom Tromey &lt;<a href=3D"mailto:tromey=
@redhat.com">tromey@redhat.com</a>&gt;<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0and Al=
exandre Duret-Lutz &lt;<a href=3D"mailto:adl@gnu.org">adl@gnu.org</a>&gt;.<=
br>AUTOV is 1.16<br>NOTE: Executing intltoolize --copy --force --automake<b=
r>NOTE: Executing ACLOCAL=3D&quot;aclocal --system-acdir=3D/home/hp/Yocto-S=
DK/build/tmp/work/armv7at2hf-neon-pokymllib32-linux-gnueabi/lib32-networkma=
nager/1.22.16-r0/lib32-recipe-sysroot/usr/share/aclocal/ --automake-acdir=
=3D/home/hp/Yocto-SDK/build/tmp/work/armv7at2hf-neon-pokymllib32-linux-gnue=
abi/lib32-networkmanager/1.22.16-r0/recipe-sysroot-native/usr/share/aclocal=
-1.16&quot; autoreconf -Wcross --verbose --install --force --exclude=3Dauto=
point -I /home/hp/Yocto-SDK/build/tmp/work/armv7at2hf-neon-pokymllib32-linu=
x-gnueabi/lib32-networkmanager/1.22.16-r0/NetworkManager-1.22.16/m4/ -I /ho=
me/hp/Yocto-SDK/build/tmp/work/armv7at2hf-neon-pokymllib32-linux-gnueabi/li=
b32-networkmanager/1.22.16-r0/recipe-sysroot-native/usr/share/aclocal/<br>a=
utoreconf: Entering directory `.&#39;<br>autoreconf: running: aclocal --sys=
tem-acdir=3D/home/hp/Yocto-SDK/build/tmp/work/armv7at2hf-neon-pokymllib32-l=
inux-gnueabi/lib32-networkmanager/1.22.16-r0/lib32-recipe-sysroot/usr/share=
/aclocal/ --automake-acdir=3D/home/hp/Yocto-SDK/build/tmp/work/armv7at2hf-n=
eon-pokymllib32-linux-gnueabi/lib32-networkmanager/1.22.16-r0/recipe-sysroo=
t-native/usr/share/aclocal-1.16 -I /home/hp/Yocto-SDK/build/tmp/work/armv7a=
t2hf-neon-pokymllib32-linux-gnueabi/lib32-networkmanager/1.22.16-r0/Network=
Manager-1.22.16/m4/ -I /home/hp/Yocto-SDK/build/tmp/work/armv7at2hf-neon-po=
kymllib32-linux-gnueabi/lib32-networkmanager/1.22.16-r0/recipe-sysroot-nati=
ve/usr/share/aclocal/ --force <br>autoreconf: <a href=3D"http://configure.a=
c">configure.ac</a>: tracing<br>autoreconf: running: libtoolize --copy --fo=
rce<br>libtoolize: putting auxiliary files in AC_CONFIG_AUX_DIR, &#39;build=
-aux&#39;.<br>libtoolize: copying file &#39;build-aux/ltmain.sh&#39;<br>lib=
toolize: putting macros in AC_CONFIG_MACRO_DIRS, &#39;m4&#39;.<br>libtooliz=
e: copying file &#39;m4/libtool.m4&#39;<br>libtoolize: copying file &#39;m4=
/ltoptions.m4&#39;<br>libtoolize: copying file &#39;m4/ltsugar.m4&#39;<br>l=
ibtoolize: copying file &#39;m4/ltversion.m4&#39;<br>libtoolize: copying fi=
le &#39;m4/lt~obsolete.m4&#39;<br>libtoolize: Consider adding &#39;-I m4&#3=
9; to ACLOCAL_AMFLAGS in Makefile.am.<br>autoreconf: running: /home/hp/Yoct=
o-SDK/build/tmp/work/armv7at2hf-neon-pokymllib32-linux-gnueabi/lib32-networ=
kmanager/1.22.16-r0/recipe-sysroot-native/usr/bin/autoconf --include=3D/hom=
e/hp/Yocto-SDK/build/tmp/work/armv7at2hf-neon-pokymllib32-linux-gnueabi/lib=
32-networkmanager/1.22.16-r0/NetworkManager-1.22.16/m4/ --include=3D/home/h=
p/Yocto-SDK/build/tmp/work/armv7at2hf-neon-pokymllib32-linux-gnueabi/lib32-=
networkmanager/1.22.16-r0/recipe-sysroot-native/usr/share/aclocal/ --force<=
br>autoreconf: running: /home/hp/Yocto-SDK/build/tmp/work/armv7at2hf-neon-p=
okymllib32-linux-gnueabi/lib32-networkmanager/1.22.16-r0/recipe-sysroot-nat=
ive/usr/bin/autoheader --include=3D/home/hp/Yocto-SDK/build/tmp/work/armv7a=
t2hf-neon-pokymllib32-linux-gnueabi/lib32-networkmanager/1.22.16-r0/Network=
Manager-1.22.16/m4/ --include=3D/home/hp/Yocto-SDK/build/tmp/work/armv7at2h=
f-neon-pokymllib32-linux-gnueabi/lib32-networkmanager/1.22.16-r0/recipe-sys=
root-native/usr/share/aclocal/ --force<br>autoreconf: running: automake --a=
dd-missing --copy --force-missing<br><a href=3D"http://configure.ac:29">con=
figure.ac:29</a>: installing &#39;build-aux/compile&#39;<br><a href=3D"http=
://configure.ac:24">configure.ac:24</a>: installing &#39;build-aux/missing&=
#39;<br>Makefile.am: installing &#39;build-aux/depcomp&#39;<br>gtk-doc.make=
:173: warning: $(DOC_MAIN_SGML_FILE) was already defined in condition BUILD=
_DOCS, which is included in condition TRUE ...<br>docs/api/Makefile.am:105:=
 =C2=A0 &#39;gtk-doc.make&#39; included from here<br>docs/api/Makefile.am:1=
4: ... &#39;$(DOC_MAIN_SGML_FILE)&#39; previously defined here<br>autorecon=
f: running: gnu-configize<br>autoreconf: Leaving directory `.&#39;<br>NOTE:=
 Running ../NetworkManager-1.22.16/configure =C2=A0--build=3Dx86_64-linux 	=
	 =C2=A0--host=3Darm-pokymllib32-linux-gnueabi 		 =C2=A0--target=3Darm-poky=
mllib32-linux-gnueabi 		 =C2=A0--prefix=3D/usr 		 =C2=A0--exec_prefix=3D/us=
r 		 =C2=A0--bindir=3D/usr/bin 		 =C2=A0--sbindir=3D/usr/sbin 		 =C2=A0--li=
bexecdir=3D/usr/libexec 		 =C2=A0--datadir=3D/usr/share 		 =C2=A0--sysconfd=
ir=3D/etc 		 =C2=A0--sharedstatedir=3D/com 		 =C2=A0--localstatedir=3D/var =
		 =C2=A0--libdir=3D/usr/lib 		 =C2=A0--includedir=3D/usr/include 		 =C2=A0=
--oldincludedir=3D/usr/include 		 =C2=A0--infodir=3D/usr/share/info 		 =C2=
=A0--mandir=3D/usr/share/man 		 =C2=A0--disable-silent-rules 		 =C2=A0--dis=
able-dependency-tracking 		 =C2=A0--with-libtool-sysroot=3D/home/hp/Yocto-S=
DK/build/tmp/work/armv7at2hf-neon-pokymllib32-linux-gnueabi/lib32-networkma=
nager/1.22.16-r0/lib32-recipe-sysroot --disable-gtk-doc --enable-introspect=
ion =C2=A0 =C2=A0 =C2=A0--disable-firewalld-zone =C2=A0 =C2=A0 --disable-if=
cfg-rh =C2=A0 =C2=A0 --disable-more-warnings =C2=A0 =C2=A0 --with-iptables=
=3D/usr/sbin/iptables =C2=A0 =C2=A0 --with-tests =C2=A0 =C2=A0 --with-nmtui=
=3Dyes =C2=A0 =C2=A0 --with-udev-dir=3D/lib/udev =C2=A0--disable-static =C2=
=A0--enable-bluez5-dun --with-nm-cloud-setup=3Dno --with-dhclient=3D/sbin/d=
hclient --with-dnsmasq=3D/usr/bin/dnsmasq --enable-ifupdown --with-modem-ma=
nager-1=3Dno --with-crypto=3Dnss --disable-polkit --disable-ppp --disable-q=
t =C2=A0 =C2=A0 =C2=A0--with-systemdsystemunitdir=3D/lib/systemd/system --w=
ith-session-tracking=3Dsystemd --enable-wifi=3Dyes --enable-nls <br>configu=
re: loading site script /home/hp/Yocto-SDK/poky/meta/site/endian-little<br>=
configure: loading site script /home/hp/Yocto-SDK/poky/meta/site/arm-common=
<br>configure: loading site script /home/hp/Yocto-SDK/poky/meta/site/arm-32=
<br>configure: loading site script /home/hp/Yocto-SDK/poky/meta/site/common=
-linux<br>configure: loading site script /home/hp/Yocto-SDK/poky/meta/site/=
common-glibc<br>configure: loading site script /home/hp/Yocto-SDK/poky/meta=
/site/arm-linux<br>configure: loading site script /home/hp/Yocto-SDK/poky/m=
eta/site/common<br>configure: loading site script /home/hp/Yocto-SDK/meta-o=
penembedded/meta-networking/site/endian-little<br>configure: loading site s=
cript /home/hp/Yocto-SDK/build/tmp/work/armv7at2hf-neon-pokymllib32-linux-g=
nueabi/lib32-networkmanager/1.22.16-r0/lib32-recipe-sysroot/usr/share/arm-p=
okymllib32-linux-gnueabi_config_site.d/ncurses_config<br>checking for a BSD=
-compatible install... /home/hp/Yocto-SDK/build/tmp/hosttools/install -c<br=
>checking whether build environment is sane... yes<br>checking for arm-poky=
mllib32-linux-gnueabi-strip... arm-pokymllib32-linux-gnueabi-strip<br>check=
ing for a thread-safe mkdir -p... /home/hp/Yocto-SDK/build/tmp/hosttools/mk=
dir -p<br>checking for gawk... gawk<br>checking whether make sets $(MAKE)..=
. yes<br>checking whether make supports nested variables... yes<br>checking=
 whether UID &#39;1000&#39; is supported by ustar format... yes<br>checking=
 whether GID &#39;1000&#39; is supported by ustar format... yes<br>checking=
 how to create a ustar tar archive... gnutar<br>checking whether to enable =
maintainer-specific portions of Makefiles... yes<br>checking whether make s=
upports nested variables... (cached) yes<br>checking whether make supports =
the include directive... yes (GNU style)<br>checking for arm-pokymllib32-li=
nux-gnueabi-gcc... arm-pokymllib32-linux-gnueabi-gcc =C2=A0-march=3Darmv7-a=
 -mthumb -mfpu=3Dneon -mfloat-abi=3Dhard -fstack-protector-strong =C2=A0-D_=
FORTIFY_SOURCE=3D2 -Wformat -Wformat-security -Werror=3Dformat-security --s=
ysroot=3D/home/hp/Yocto-SDK/build/tmp/work/armv7at2hf-neon-pokymllib32-linu=
x-gnueabi/lib32-networkmanager/1.22.16-r0/lib32-recipe-sysroot<br>checking =
whether the C compiler works... yes<br>checking for C compiler default outp=
ut file name... a.out<br>checking for suffix of executables... <br>checking=
 whether we are cross compiling... yes<br>checking for suffix of object fil=
es... o<br>checking whether we are using the GNU C compiler... yes<br>check=
ing whether arm-pokymllib32-linux-gnueabi-gcc =C2=A0-march=3Darmv7-a -mthum=
b -mfpu=3Dneon -mfloat-abi=3Dhard -fstack-protector-strong =C2=A0-D_FORTIFY=
_SOURCE=3D2 -Wformat -Wformat-security -Werror=3Dformat-security --sysroot=
=3D/home/hp/Yocto-SDK/build/tmp/work/armv7at2hf-neon-pokymllib32-linux-gnue=
abi/lib32-networkmanager/1.22.16-r0/lib32-recipe-sysroot accepts -g... yes<=
br>checking for arm-pokymllib32-linux-gnueabi-gcc =C2=A0-march=3Darmv7-a -m=
thumb -mfpu=3Dneon -mfloat-abi=3Dhard -fstack-protector-strong =C2=A0-D_FOR=
TIFY_SOURCE=3D2 -Wformat -Wformat-security -Werror=3Dformat-security --sysr=
oot=3D/home/hp/Yocto-SDK/build/tmp/work/armv7at2hf-neon-pokymllib32-linux-g=
nueabi/lib32-networkmanager/1.22.16-r0/lib32-recipe-sysroot option to accep=
t ISO C89... none needed<br>checking whether arm-pokymllib32-linux-gnueabi-=
gcc =C2=A0-march=3Darmv7-a -mthumb -mfpu=3Dneon -mfloat-abi=3Dhard -fstack-=
protector-strong =C2=A0-D_FORTIFY_SOURCE=3D2 -Wformat -Wformat-security -We=
rror=3Dformat-security --sysroot=3D/home/hp/Yocto-SDK/build/tmp/work/armv7a=
t2hf-neon-pokymllib32-linux-gnueabi/lib32-networkmanager/1.22.16-r0/lib32-r=
ecipe-sysroot understands -c and -o together... yes<br>checking dependency =
style of arm-pokymllib32-linux-gnueabi-gcc =C2=A0-march=3Darmv7-a -mthumb -=
mfpu=3Dneon -mfloat-abi=3Dhard -fstack-protector-strong =C2=A0-D_FORTIFY_SO=
URCE=3D2 -Wformat -Wformat-security -Werror=3Dformat-security --sysroot=3D/=
home/hp/Yocto-SDK/build/tmp/work/armv7at2hf-neon-pokymllib32-linux-gnueabi/=
lib32-networkmanager/1.22.16-r0/lib32-recipe-sysroot... none<br>checking ho=
w to run the C preprocessor... arm-pokymllib32-linux-gnueabi-gcc -E --sysro=
ot=3D/home/hp/Yocto-SDK/build/tmp/work/armv7at2hf-neon-pokymllib32-linux-gn=
ueabi/lib32-networkmanager/1.22.16-r0/lib32-recipe-sysroot =C2=A0-march=3Da=
rmv7-a -mthumb -mfpu=3Dneon -mfloat-abi=3Dhard -fstack-protector-strong =C2=
=A0-D_FORTIFY_SOURCE=3D2 -Wformat -Wformat-security -Werror=3Dformat-securi=
ty<br>checking for grep that handles long lines and -e... /home/hp/Yocto-SD=
K/build/tmp/hosttools/grep<br>checking for egrep... /home/hp/Yocto-SDK/buil=
d/tmp/hosttools/grep -E<br>checking for ANSI C header files... (cached) yes=
<br>checking for sys/types.h... (cached) yes<br>checking for sys/stat.h... =
(cached) yes<br>checking for stdlib.h... (cached) yes<br>checking for strin=
g.h... (cached) yes<br>checking for memory.h... (cached) yes<br>checking fo=
r strings.h... (cached) yes<br>checking for inttypes.h... (cached) yes<br>c=
hecking for stdint.h... (cached) yes<br>checking for unistd.h... (cached) y=
es<br>checking minix/config.h usability... no<br>checking minix/config.h pr=
esence... no<br>checking for minix/config.h... no<br>checking whether it is=
 safe to define __EXTENSIONS__... yes<br>checking for arm-pokymllib32-linux=
-gnueabi-gcc... (cached) arm-pokymllib32-linux-gnueabi-gcc =C2=A0-march=3Da=
rmv7-a -mthumb -mfpu=3Dneon -mfloat-abi=3Dhard -fstack-protector-strong =C2=
=A0-D_FORTIFY_SOURCE=3D2 -Wformat -Wformat-security -Werror=3Dformat-securi=
ty --sysroot=3D/home/hp/Yocto-SDK/build/tmp/work/armv7at2hf-neon-pokymllib3=
2-linux-gnueabi/lib32-networkmanager/1.22.16-r0/lib32-recipe-sysroot<br>che=
cking whether we are using the GNU C compiler... (cached) yes<br>checking w=
hether arm-pokymllib32-linux-gnueabi-gcc =C2=A0-march=3Darmv7-a -mthumb -mf=
pu=3Dneon -mfloat-abi=3Dhard -fstack-protector-strong =C2=A0-D_FORTIFY_SOUR=
CE=3D2 -Wformat -Wformat-security -Werror=3Dformat-security --sysroot=3D/ho=
me/hp/Yocto-SDK/build/tmp/work/armv7at2hf-neon-pokymllib32-linux-gnueabi/li=
b32-networkmanager/1.22.16-r0/lib32-recipe-sysroot accepts -g... (cached) y=
es<br>checking for arm-pokymllib32-linux-gnueabi-gcc =C2=A0-march=3Darmv7-a=
 -mthumb -mfpu=3Dneon -mfloat-abi=3Dhard -fstack-protector-strong =C2=A0-D_=
FORTIFY_SOURCE=3D2 -Wformat -Wformat-security -Werror=3Dformat-security --s=
ysroot=3D/home/hp/Yocto-SDK/build/tmp/work/armv7at2hf-neon-pokymllib32-linu=
x-gnueabi/lib32-networkmanager/1.22.16-r0/lib32-recipe-sysroot option to ac=
cept ISO C89... (cached) none needed<br>checking whether arm-pokymllib32-li=
nux-gnueabi-gcc =C2=A0-march=3Darmv7-a -mthumb -mfpu=3Dneon -mfloat-abi=3Dh=
ard -fstack-protector-strong =C2=A0-D_FORTIFY_SOURCE=3D2 -Wformat -Wformat-=
security -Werror=3Dformat-security --sysroot=3D/home/hp/Yocto-SDK/build/tmp=
/work/armv7at2hf-neon-pokymllib32-linux-gnueabi/lib32-networkmanager/1.22.1=
6-r0/lib32-recipe-sysroot understands -c and -o together... (cached) yes<br=
>checking dependency style of arm-pokymllib32-linux-gnueabi-gcc =C2=A0-marc=
h=3Darmv7-a -mthumb -mfpu=3Dneon -mfloat-abi=3Dhard -fstack-protector-stron=
g =C2=A0-D_FORTIFY_SOURCE=3D2 -Wformat -Wformat-security -Werror=3Dformat-s=
ecurity --sysroot=3D/home/hp/Yocto-SDK/build/tmp/work/armv7at2hf-neon-pokym=
llib32-linux-gnueabi/lib32-networkmanager/1.22.16-r0/lib32-recipe-sysroot..=
. (cached) none<br>checking whether we are using the GNU C++ compiler... ye=
s<br>checking whether arm-pokymllib32-linux-gnueabi-g++ =C2=A0-march=3Darmv=
7-a -mthumb -mfpu=3Dneon -mfloat-abi=3Dhard -fstack-protector-strong =C2=A0=
-D_FORTIFY_SOURCE=3D2 -Wformat -Wformat-security -Werror=3Dformat-security =
--sysroot=3D/home/hp/Yocto-SDK/build/tmp/work/armv7at2hf-neon-pokymllib32-l=
inux-gnueabi/lib32-networkmanager/1.22.16-r0/lib32-recipe-sysroot accepts -=
g... yes<br>checking dependency style of arm-pokymllib32-linux-gnueabi-g++ =
=C2=A0-march=3Darmv7-a -mthumb -mfpu=3Dneon -mfloat-abi=3Dhard -fstack-prot=
ector-strong =C2=A0-D_FORTIFY_SOURCE=3D2 -Wformat -Wformat-security -Werror=
=3Dformat-security --sysroot=3D/home/hp/Yocto-SDK/build/tmp/work/armv7at2hf=
-neon-pokymllib32-linux-gnueabi/lib32-networkmanager/1.22.16-r0/lib32-recip=
e-sysroot... none<br>checking whether ln -s works... yes<br>checking for ar=
m-pokymllib32-linux-gnueabi-gcc-ar... arm-pokymllib32-linux-gnueabi-gcc-ar<=
br>checking for arm-pokymllib32-linux-gnueabi-gcc-ranlib... arm-pokymllib32=
-linux-gnueabi-gcc-ranlib<br>checking for arm-pokymllib32-linux-gnueabi-gcc=
-nm... arm-pokymllib32-linux-gnueabi-nm<br>checking build system type... x8=
6_64-pc-linux-gnu<br>checking host system type... arm-pokymllib32-linux-gnu=
eabi<br>checking how to print strings... printf<br>checking for a sed that =
does not truncate output... (cached) sed<br>checking for fgrep... /home/hp/=
Yocto-SDK/build/tmp/hosttools/grep -F<br>checking for ld used by arm-pokyml=
lib32-linux-gnueabi-gcc =C2=A0-march=3Darmv7-a -mthumb -mfpu=3Dneon -mfloat=
-abi=3Dhard -fstack-protector-strong =C2=A0-D_FORTIFY_SOURCE=3D2 -Wformat -=
Wformat-security -Werror=3Dformat-security --sysroot=3D/home/hp/Yocto-SDK/b=
uild/tmp/work/armv7at2hf-neon-pokymllib32-linux-gnueabi/lib32-networkmanage=
r/1.22.16-r0/lib32-recipe-sysroot... arm-pokymllib32-linux-gnueabi-ld --sys=
root=3D/home/hp/Yocto-SDK/build/tmp/work/armv7at2hf-neon-pokymllib32-linux-=
gnueabi/lib32-networkmanager/1.22.16-r0/lib32-recipe-sysroot <br>checking i=
f the linker (arm-pokymllib32-linux-gnueabi-ld --sysroot=3D/home/hp/Yocto-S=
DK/build/tmp/work/armv7at2hf-neon-pokymllib32-linux-gnueabi/lib32-networkma=
nager/1.22.16-r0/lib32-recipe-sysroot ) is GNU ld... yes<br>checking for BS=
D- or MS-compatible name lister (nm)... arm-pokymllib32-linux-gnueabi-nm<br=
>checking the name lister (arm-pokymllib32-linux-gnueabi-nm) interface... B=
SD nm<br>checking the maximum length of command line arguments... 1572864<b=
r>checking how to convert x86_64-pc-linux-gnu file names to arm-pokymllib32=
-linux-gnueabi format... func_convert_file_noop<br>checking how to convert =
x86_64-pc-linux-gnu file names to toolchain format... func_convert_file_noo=
p<br>checking for arm-pokymllib32-linux-gnueabi-ld --sysroot=3D/home/hp/Yoc=
to-SDK/build/tmp/work/armv7at2hf-neon-pokymllib32-linux-gnueabi/lib32-netwo=
rkmanager/1.22.16-r0/lib32-recipe-sysroot =C2=A0option to reload object fil=
es... -r<br>checking for arm-pokymllib32-linux-gnueabi-objdump... arm-pokym=
llib32-linux-gnueabi-objdump<br>checking how to recognize dependent librari=
es... pass_all<br>checking for arm-pokymllib32-linux-gnueabi-dlltool... no<=
br>checking for dlltool... no<br>checking how to associate runtime and link=
 libraries... printf %s\n<br>checking for arm-pokymllib32-linux-gnueabi-ar.=
.. (cached) arm-pokymllib32-linux-gnueabi-gcc-ar<br>checking for archiver @=
FILE support... @<br>checking for arm-pokymllib32-linux-gnueabi-strip... (c=
ached) arm-pokymllib32-linux-gnueabi-strip<br>checking for arm-pokymllib32-=
linux-gnueabi-ranlib... (cached) arm-pokymllib32-linux-gnueabi-gcc-ranlib<b=
r>checking command to parse arm-pokymllib32-linux-gnueabi-nm output from ar=
m-pokymllib32-linux-gnueabi-gcc =C2=A0-march=3Darmv7-a -mthumb -mfpu=3Dneon=
 -mfloat-abi=3Dhard -fstack-protector-strong =C2=A0-D_FORTIFY_SOURCE=3D2 -W=
format -Wformat-security -Werror=3Dformat-security --sysroot=3D/home/hp/Yoc=
to-SDK/build/tmp/work/armv7at2hf-neon-pokymllib32-linux-gnueabi/lib32-netwo=
rkmanager/1.22.16-r0/lib32-recipe-sysroot object... ok<br>checking for sysr=
oot... /home/hp/Yocto-SDK/build/tmp/work/armv7at2hf-neon-pokymllib32-linux-=
gnueabi/lib32-networkmanager/1.22.16-r0/lib32-recipe-sysroot<br>checking fo=
r a working dd... /home/hp/Yocto-SDK/build/tmp/hosttools/dd<br>checking how=
 to truncate binary pipes... /home/hp/Yocto-SDK/build/tmp/hosttools/dd bs=
=3D4096 count=3D1<br>checking for arm-pokymllib32-linux-gnueabi-mt... no<br=
>checking for mt... no<br>checking if : is a manifest tool... no<br>checkin=
g for dlfcn.h... yes<br>checking for objdir... .libs<br>checking if arm-pok=
ymllib32-linux-gnueabi-gcc =C2=A0-march=3Darmv7-a -mthumb -mfpu=3Dneon -mfl=
oat-abi=3Dhard -fstack-protector-strong =C2=A0-D_FORTIFY_SOURCE=3D2 -Wforma=
t -Wformat-security -Werror=3Dformat-security --sysroot=3D/home/hp/Yocto-SD=
K/build/tmp/work/armv7at2hf-neon-pokymllib32-linux-gnueabi/lib32-networkman=
ager/1.22.16-r0/lib32-recipe-sysroot supports -fno-rtti -fno-exceptions... =
no<br>checking for arm-pokymllib32-linux-gnueabi-gcc =C2=A0-march=3Darmv7-a=
 -mthumb -mfpu=3Dneon -mfloat-abi=3Dhard -fstack-protector-strong =C2=A0-D_=
FORTIFY_SOURCE=3D2 -Wformat -Wformat-security -Werror=3Dformat-security --s=
ysroot=3D/home/hp/Yocto-SDK/build/tmp/work/armv7at2hf-neon-pokymllib32-linu=
x-gnueabi/lib32-networkmanager/1.22.16-r0/lib32-recipe-sysroot option to pr=
oduce PIC... -fPIC -DPIC<br>checking if arm-pokymllib32-linux-gnueabi-gcc =
=C2=A0-march=3Darmv7-a -mthumb -mfpu=3Dneon -mfloat-abi=3Dhard -fstack-prot=
ector-strong =C2=A0-D_FORTIFY_SOURCE=3D2 -Wformat -Wformat-security -Werror=
=3Dformat-security --sysroot=3D/home/hp/Yocto-SDK/build/tmp/work/armv7at2hf=
-neon-pokymllib32-linux-gnueabi/lib32-networkmanager/1.22.16-r0/lib32-recip=
e-sysroot PIC flag -fPIC -DPIC works... yes<br>checking if arm-pokymllib32-=
linux-gnueabi-gcc =C2=A0-march=3Darmv7-a -mthumb -mfpu=3Dneon -mfloat-abi=
=3Dhard -fstack-protector-strong =C2=A0-D_FORTIFY_SOURCE=3D2 -Wformat -Wfor=
mat-security -Werror=3Dformat-security --sysroot=3D/home/hp/Yocto-SDK/build=
/tmp/work/armv7at2hf-neon-pokymllib32-linux-gnueabi/lib32-networkmanager/1.=
22.16-r0/lib32-recipe-sysroot static flag -static works... yes<br>checking =
if arm-pokymllib32-linux-gnueabi-gcc =C2=A0-march=3Darmv7-a -mthumb -mfpu=
=3Dneon -mfloat-abi=3Dhard -fstack-protector-strong =C2=A0-D_FORTIFY_SOURCE=
=3D2 -Wformat -Wformat-security -Werror=3Dformat-security --sysroot=3D/home=
/hp/Yocto-SDK/build/tmp/work/armv7at2hf-neon-pokymllib32-linux-gnueabi/lib3=
2-networkmanager/1.22.16-r0/lib32-recipe-sysroot supports -c -o file.o... y=
es<br>checking if arm-pokymllib32-linux-gnueabi-gcc =C2=A0-march=3Darmv7-a =
-mthumb -mfpu=3Dneon -mfloat-abi=3Dhard -fstack-protector-strong =C2=A0-D_F=
ORTIFY_SOURCE=3D2 -Wformat -Wformat-security -Werror=3Dformat-security --sy=
sroot=3D/home/hp/Yocto-SDK/build/tmp/work/armv7at2hf-neon-pokymllib32-linux=
-gnueabi/lib32-networkmanager/1.22.16-r0/lib32-recipe-sysroot supports -c -=
o file.o... (cached) yes<br>checking whether the arm-pokymllib32-linux-gnue=
abi-gcc =C2=A0-march=3Darmv7-a -mthumb -mfpu=3Dneon -mfloat-abi=3Dhard -fst=
ack-protector-strong =C2=A0-D_FORTIFY_SOURCE=3D2 -Wformat -Wformat-security=
 -Werror=3Dformat-security --sysroot=3D/home/hp/Yocto-SDK/build/tmp/work/ar=
mv7at2hf-neon-pokymllib32-linux-gnueabi/lib32-networkmanager/1.22.16-r0/lib=
32-recipe-sysroot linker (arm-pokymllib32-linux-gnueabi-ld --sysroot=3D/hom=
e/hp/Yocto-SDK/build/tmp/work/armv7at2hf-neon-pokymllib32-linux-gnueabi/lib=
32-networkmanager/1.22.16-r0/lib32-recipe-sysroot ) supports shared librari=
es... yes<br>checking whether -lc should be explicitly linked in... no<br>c=
hecking dynamic linker characteristics... GNU/Linux ld.so<br>checking how t=
o hardcode library paths into programs... immediate<br>checking whether str=
ipping libraries is possible... yes<br>checking if libtool supports shared =
libraries... yes<br>checking whether to build shared libraries... yes<br>ch=
ecking whether to build static libraries... no<br>checking how to run the C=
++ preprocessor... arm-pokymllib32-linux-gnueabi-g++ =C2=A0-march=3Darmv7-a=
 -mthumb -mfpu=3Dneon -mfloat-abi=3Dhard -fstack-protector-strong =C2=A0-D_=
FORTIFY_SOURCE=3D2 -Wformat -Wformat-security -Werror=3Dformat-security --s=
ysroot=3D/home/hp/Yocto-SDK/build/tmp/work/armv7at2hf-neon-pokymllib32-linu=
x-gnueabi/lib32-networkmanager/1.22.16-r0/lib32-recipe-sysroot -E<br>checki=
ng for ld used by arm-pokymllib32-linux-gnueabi-g++ =C2=A0-march=3Darmv7-a =
-mthumb -mfpu=3Dneon -mfloat-abi=3Dhard -fstack-protector-strong =C2=A0-D_F=
ORTIFY_SOURCE=3D2 -Wformat -Wformat-security -Werror=3Dformat-security --sy=
sroot=3D/home/hp/Yocto-SDK/build/tmp/work/armv7at2hf-neon-pokymllib32-linux=
-gnueabi/lib32-networkmanager/1.22.16-r0/lib32-recipe-sysroot... arm-pokyml=
lib32-linux-gnueabi-ld --sysroot=3D/home/hp/Yocto-SDK/build/tmp/work/armv7a=
t2hf-neon-pokymllib32-linux-gnueabi/lib32-networkmanager/1.22.16-r0/lib32-r=
ecipe-sysroot <br>checking if the linker (arm-pokymllib32-linux-gnueabi-ld =
--sysroot=3D/home/hp/Yocto-SDK/build/tmp/work/armv7at2hf-neon-pokymllib32-l=
inux-gnueabi/lib32-networkmanager/1.22.16-r0/lib32-recipe-sysroot ) is GNU =
ld... yes<br>checking whether the arm-pokymllib32-linux-gnueabi-g++ =C2=A0-=
march=3Darmv7-a -mthumb -mfpu=3Dneon -mfloat-abi=3Dhard -fstack-protector-s=
trong =C2=A0-D_FORTIFY_SOURCE=3D2 -Wformat -Wformat-security -Werror=3Dform=
at-security --sysroot=3D/home/hp/Yocto-SDK/build/tmp/work/armv7at2hf-neon-p=
okymllib32-linux-gnueabi/lib32-networkmanager/1.22.16-r0/lib32-recipe-sysro=
ot linker (arm-pokymllib32-linux-gnueabi-ld --sysroot=3D/home/hp/Yocto-SDK/=
build/tmp/work/armv7at2hf-neon-pokymllib32-linux-gnueabi/lib32-networkmanag=
er/1.22.16-r0/lib32-recipe-sysroot ) supports shared libraries... yes<br>ch=
ecking for arm-pokymllib32-linux-gnueabi-g++ =C2=A0-march=3Darmv7-a -mthumb=
 -mfpu=3Dneon -mfloat-abi=3Dhard -fstack-protector-strong =C2=A0-D_FORTIFY_=
SOURCE=3D2 -Wformat -Wformat-security -Werror=3Dformat-security --sysroot=
=3D/home/hp/Yocto-SDK/build/tmp/work/armv7at2hf-neon-pokymllib32-linux-gnue=
abi/lib32-networkmanager/1.22.16-r0/lib32-recipe-sysroot option to produce =
PIC... -fPIC -DPIC<br>checking if arm-pokymllib32-linux-gnueabi-g++ =C2=A0-=
march=3Darmv7-a -mthumb -mfpu=3Dneon -mfloat-abi=3Dhard -fstack-protector-s=
trong =C2=A0-D_FORTIFY_SOURCE=3D2 -Wformat -Wformat-security -Werror=3Dform=
at-security --sysroot=3D/home/hp/Yocto-SDK/build/tmp/work/armv7at2hf-neon-p=
okymllib32-linux-gnueabi/lib32-networkmanager/1.22.16-r0/lib32-recipe-sysro=
ot PIC flag -fPIC -DPIC works... yes<br>checking if arm-pokymllib32-linux-g=
nueabi-g++ =C2=A0-march=3Darmv7-a -mthumb -mfpu=3Dneon -mfloat-abi=3Dhard -=
fstack-protector-strong =C2=A0-D_FORTIFY_SOURCE=3D2 -Wformat -Wformat-secur=
ity -Werror=3Dformat-security --sysroot=3D/home/hp/Yocto-SDK/build/tmp/work=
/armv7at2hf-neon-pokymllib32-linux-gnueabi/lib32-networkmanager/1.22.16-r0/=
lib32-recipe-sysroot static flag -static works... yes<br>checking if arm-po=
kymllib32-linux-gnueabi-g++ =C2=A0-march=3Darmv7-a -mthumb -mfpu=3Dneon -mf=
loat-abi=3Dhard -fstack-protector-strong =C2=A0-D_FORTIFY_SOURCE=3D2 -Wform=
at -Wformat-security -Werror=3Dformat-security --sysroot=3D/home/hp/Yocto-S=
DK/build/tmp/work/armv7at2hf-neon-pokymllib32-linux-gnueabi/lib32-networkma=
nager/1.22.16-r0/lib32-recipe-sysroot supports -c -o file.o... yes<br>check=
ing if arm-pokymllib32-linux-gnueabi-g++ =C2=A0-march=3Darmv7-a -mthumb -mf=
pu=3Dneon -mfloat-abi=3Dhard -fstack-protector-strong =C2=A0-D_FORTIFY_SOUR=
CE=3D2 -Wformat -Wformat-security -Werror=3Dformat-security --sysroot=3D/ho=
me/hp/Yocto-SDK/build/tmp/work/armv7at2hf-neon-pokymllib32-linux-gnueabi/li=
b32-networkmanager/1.22.16-r0/lib32-recipe-sysroot supports -c -o file.o...=
 (cached) yes<br>checking whether the arm-pokymllib32-linux-gnueabi-g++ =C2=
=A0-march=3Darmv7-a -mthumb -mfpu=3Dneon -mfloat-abi=3Dhard -fstack-protect=
or-strong =C2=A0-D_FORTIFY_SOURCE=3D2 -Wformat -Wformat-security -Werror=3D=
format-security --sysroot=3D/home/hp/Yocto-SDK/build/tmp/work/armv7at2hf-ne=
on-pokymllib32-linux-gnueabi/lib32-networkmanager/1.22.16-r0/lib32-recipe-s=
ysroot linker (arm-pokymllib32-linux-gnueabi-ld --sysroot=3D/home/hp/Yocto-=
SDK/build/tmp/work/armv7at2hf-neon-pokymllib32-linux-gnueabi/lib32-networkm=
anager/1.22.16-r0/lib32-recipe-sysroot ) supports shared libraries... yes<b=
r>checking dynamic linker characteristics... (cached) GNU/Linux ld.so<br>ch=
ecking how to hardcode library paths into programs... immediate<br>checking=
 for pid_t... yes<br>checking size of pid_t... (cached) 4<br>checking size =
of uid_t... 4<br>checking size of gid_t... 4<br>checking size of dev_t... 8=
<br>checking size of ino_t... 4<br>checking size of time_t... 4<br>checking=
 size of rlim_t... 4<br>checking whether explicit_bzero is declared... yes<=
br>checking whether reallocarray is declared... yes<br>checking whether mem=
fd_create is declared... yes<br>checking sys/auxv.h usability... yes<br>che=
cking sys/auxv.h presence... yes<br>checking for sys/auxv.h... yes<br>check=
ing whether getrandom is declared... yes<br>checking whether NLS is request=
ed... yes<br>checking for intltool &gt;=3D 0.40.0... 0.51.0 found<br>checki=
ng for intltool-update... /home/hp/Yocto-SDK/build/tmp/work/armv7at2hf-neon=
-pokymllib32-linux-gnueabi/lib32-networkmanager/1.22.16-r0/recipe-sysroot-n=
ative/usr/bin/intltool-update<br>checking for intltool-merge... /home/hp/Yo=
cto-SDK/build/tmp/work/armv7at2hf-neon-pokymllib32-linux-gnueabi/lib32-netw=
orkmanager/1.22.16-r0/recipe-sysroot-native/usr/bin/intltool-merge<br>check=
ing for intltool-extract... /home/hp/Yocto-SDK/build/tmp/work/armv7at2hf-ne=
on-pokymllib32-linux-gnueabi/lib32-networkmanager/1.22.16-r0/recipe-sysroot=
-native/usr/bin/intltool-extract<br>checking for xgettext... /home/hp/Yocto=
-SDK/build/tmp/work/armv7at2hf-neon-pokymllib32-linux-gnueabi/lib32-network=
manager/1.22.16-r0/recipe-sysroot-native/usr/bin/xgettext<br>checking for m=
sgmerge... /home/hp/Yocto-SDK/build/tmp/work/armv7at2hf-neon-pokymllib32-li=
nux-gnueabi/lib32-networkmanager/1.22.16-r0/recipe-sysroot-native/usr/bin/m=
sgmerge<br>checking for msgfmt... /home/hp/Yocto-SDK/build/tmp/work/armv7at=
2hf-neon-pokymllib32-linux-gnueabi/lib32-networkmanager/1.22.16-r0/recipe-s=
ysroot-native/usr/bin/msgfmt<br>checking for gmsgfmt... /home/hp/Yocto-SDK/=
build/tmp/work/armv7at2hf-neon-pokymllib32-linux-gnueabi/lib32-networkmanag=
er/1.22.16-r0/recipe-sysroot-native/usr/bin/msgfmt<br>checking for msgfmt..=
. (cached) /home/hp/Yocto-SDK/build/tmp/work/armv7at2hf-neon-pokymllib32-li=
nux-gnueabi/lib32-networkmanager/1.22.16-r0/recipe-sysroot-native/usr/bin/m=
sgfmt<br>checking for gmsgfmt... (cached) /home/hp/Yocto-SDK/build/tmp/work=
/armv7at2hf-neon-pokymllib32-linux-gnueabi/lib32-networkmanager/1.22.16-r0/=
recipe-sysroot-native/usr/bin/msgfmt<br>checking for xgettext... (cached) /=
home/hp/Yocto-SDK/build/tmp/work/armv7at2hf-neon-pokymllib32-linux-gnueabi/=
lib32-networkmanager/1.22.16-r0/recipe-sysroot-native/usr/bin/xgettext<br>c=
hecking for msgmerge... (cached) /home/hp/Yocto-SDK/build/tmp/work/armv7at2=
hf-neon-pokymllib32-linux-gnueabi/lib32-networkmanager/1.22.16-r0/recipe-sy=
sroot-native/usr/bin/msgmerge<br>checking for ld... arm-pokymllib32-linux-g=
nueabi-ld --sysroot=3D/home/hp/Yocto-SDK/build/tmp/work/armv7at2hf-neon-pok=
ymllib32-linux-gnueabi/lib32-networkmanager/1.22.16-r0/lib32-recipe-sysroot=
 <br>checking if the linker (arm-pokymllib32-linux-gnueabi-ld --sysroot=3D/=
home/hp/Yocto-SDK/build/tmp/work/armv7at2hf-neon-pokymllib32-linux-gnueabi/=
lib32-networkmanager/1.22.16-r0/lib32-recipe-sysroot ) is GNU ld... yes<br>=
checking for shared library run path origin... done<br>checking 32-bit host=
 C ABI... yes<br>checking for the common suffixes of directories in the lib=
rary search path... lib,lib<br>checking for CFPreferencesCopyAppValue... no=
<br>checking for CFLocaleCopyCurrent... no<br>checking for GNU gettext in l=
ibc... yes<br>checking whether to use NLS... yes<br>checking where the gett=
ext function comes from... libc<br>checking for __secure_getenv... no<br>ch=
ecking for secure_getenv... yes<br>checking whether to build with code cove=
rage support... no<br>checking for library containing dlopen... -ldl<br>che=
cking for arm-pokymllib32-linux-gnueabi-pkg-config... no<br>checking for pk=
g-config... /home/hp/Yocto-SDK/build/tmp/work/armv7at2hf-neon-pokymllib32-l=
inux-gnueabi/lib32-networkmanager/1.22.16-r0/recipe-sysroot-native/usr/bin/=
pkg-config<br>configure: WARNING: using cross tools not prefixed with host =
triplet<br>checking pkg-config is at least version 0.9.0... yes<br>checking=
 for gio-unix-2.0 &gt;=3D 2.37.6 gmodule-2.0... yes<br>checking for gobject=
-introspection... yes<br>checking for libudev &gt;=3D 175... yes<br>checkin=
g for QtCore &gt;=3D 4 QtDBus QtNetwork... no<br>checking for systemd &gt;=
=3D 200... yes<br>checking for libsystemd &gt;=3D 209... yes<br>checking fo=
r libsystemd &gt;=3D 209... yes<br>checking for libsystemd... yes<br>checki=
ng for libsystemd &gt;=3D 209... yes<br>checking for libselinux... no<br>ch=
ecking for audit... no<br>checking for uuid... yes<br>checking for jansson =
&gt;=3D 2.5... yes<br>checking for arm-pokymllib32-linux-gnueabi-eu-readelf=
... arm-pokymllib32-linux-gnueabi-readelf<br>checking for libteamdctl &gt;=
=3D 1.9... no<br>checking for polkit-agent-1 &gt;=3D 0.97... no<br>checking=
 for gnutls &gt;=3D 2.12... no<br>checking for nss... yes<br>checking for p=
ppd... /sbin/pppd<br>checking for bluez &gt;=3D 5... yes<br>checking for dh=
cpcanon... no<br>checking for dhclient... /sbin/dhclient<br>checking for dh=
cpcd... /sbin/dhcpcd<br>checking for dnssec-trigger-script... /usr/libexec/=
dnssec-trigger-script<br>checking for libpsl &gt;=3D 0.1... no<br>checking =
for libcurl &gt;=3D 7.24.0... yes<br>checking for libndp... yes<br>checking=
 for a readline compatible library... -lreadline<br>checking readline.h usa=
bility... no<br>checking readline.h presence... no<br>checking for readline=
.h... no<br>checking readline/readline.h usability... yes<br>checking readl=
ine/readline.h presence... yes<br>checking for readline/readline.h... yes<b=
r>checking whether readline supports history... yes<br>checking history.h u=
sability... no<br>checking history.h presence... no<br>checking for history=
.h... no<br>checking readline/history.h usability... yes<br>checking readli=
ne/history.h presence... yes<br>checking for readline/history.h... yes<br><=
b>checking whether readline supports rl_echo_signal_char()... no<br>configu=
re: error: rl_echo_signal_char() is required (install readline6?)</b><br>NO=
TE: The following config.log files may provide further information.<br>NOTE=
: /home/hp/Yocto-SDK/build/tmp/work/armv7at2hf-neon-pokymllib32-linux-gnuea=
bi/lib32-networkmanager/1.22.16-r0/build/config.log<br>ERROR: configure fai=
led<br>WARNING: exit code 1 from a shell command.<br>ERROR: Execution of &#=
39;/home/hp/Yocto-SDK/build/tmp/work/armv7at2hf-neon-pokymllib32-linux-gnue=
abi/lib32-networkmanager/1.22.16-r0/temp/run.do_configure.367720&#39; faile=
d with exit code 1<br></div><div><br></div><div>I don&#39;t know how to add=
 readline6 to my networkmanager recipe. I have attached my bb file for your=
 reference. Let me know if I need anything else to help me in solving this =
issue.</div><div>Do let me know if you have any suggestions.</div><div><br>=
</div><div>Thanks and regards,</div><div>Hassan</div></div>

--00000000000007fd3e05ffcdc679--

--00000000000007fd4005ffcdc67b
Content-Type: application/octet-stream; name="networkmanager_1.22.16.bb"
Content-Disposition: attachment; filename="networkmanager_1.22.16.bb"
Content-Transfer-Encoding: base64
Content-ID: <f_ljqx4saz0>
X-Attachment-Id: f_ljqx4saz0

U1VNTUFSWSA9ICJOZXR3b3JrTWFuYWdlciIKSE9NRVBBR0UgPSAiaHR0cHM6Ly93aWtpLmdub21l
Lm9yZy9Qcm9qZWN0cy9OZXR3b3JrTWFuYWdlciIKU0VDVElPTiA9ICJuZXQvbWlzYyIKCkxJQ0VO
U0UgPSAiR1BMdjIrICYgTEdQTHYyLjErIgpMSUNfRklMRVNfQ0hLU1VNID0gImZpbGU6Ly9DT1BZ
SU5HO21kNT1iMjM0ZWU0ZDY5ZjVmY2U0NDg2YTgwZmRhZjRhNDI2MyBcCiAgICAgICAgICAgICAg
ICAgICAgZmlsZTovL0NPUFlJTkcuTEdQTDttZDU9NGZiZDY1MzgwY2RkMjU1OTUxMDc5MDA4YjM2
NDUxNmMgXAoiCgpERVBFTkRTID0gIiBcCiAgICBpbnRsdG9vbC1uYXRpdmUgXAogICAgbGlieHNs
dC1uYXRpdmUgXAogICAgbGlibmwgXAogICAgbGliZ3VkZXYgXAogICAgdXRpbC1saW51eCBcCiAg
ICBsaWJuZHAgXAogICAgbGlibmV3dCBcCiAgICBqYW5zc29uIFwKICAgIGN1cmwgXAogICAgcmVh
ZGxpbmUgXAoiCgppbmhlcml0IGdub21lYmFzZSBnZXR0ZXh0IHVwZGF0ZS1yYy5kIHN5c3RlbWQg
YmFzaC1jb21wbGV0aW9uIHZhbGEgZ29iamVjdC1pbnRyb3NwZWN0aW9uIGd0ay1kb2MgdXBkYXRl
LWFsdGVybmF0aXZlcyB1cHN0cmVhbS12ZXJzaW9uLWlzLWV2ZW4KClNSQ19VUkkgPSAiIFwKICAg
ICR7R05PTUVfTUlSUk9SfS9OZXR3b3JrTWFuYWdlci8ke0Bnbm9tZV92ZXJkaXIoIiR7UFZ9Iil9
L05ldHdvcmtNYW5hZ2VyLSR7UFZ9LnRhci54eiBcCiAgICBmaWxlOi8vJHtCUE59LmluaXRkIFwK
ICAgIGZpbGU6Ly8wMDAxLUZpeGVkLWNvbmZpZ3VyZS5hYy1GaXgtcGtnY29uZmlnLXN5c3Jvb3Qt
bG9jYXRpb25zLnBhdGNoIFwKICAgIGZpbGU6Ly8wMDAyLURvLW5vdC1jcmVhdGUtc2V0dGluZ3Mt
c2V0dGluZ3MtcHJvcGVydHktZG9jdW1lbnRhdGkucGF0Y2ggXAoiClNSQ19VUklfYXBwZW5kX2xp
YmMtbXVzbCA9ICIgXAogICAgZmlsZTovL211c2wvMDAwMS1GaXgtYnVpbGQtd2l0aC1tdXNsLXN5
c3RlbWQtc3BlY2lmaWMucGF0Y2ggXAogICAgZmlsZTovL211c2wvMDAwMi1GaXgtYnVpbGQtd2l0
aC1tdXNsLnBhdGNoIFwKICAgIGZpbGU6Ly9tdXNsLzAwMDMtRml4LWJ1aWxkLXdpdGgtbXVzbC1m
b3Itbi1kaGNwNC5wYXRjaCBcCiAgICBmaWxlOi8vbXVzbC8wMDA0LUZpeC1idWlsZC13aXRoLW11
c2wtc3lzdGVtZC1zcGVjaWZpYy5wYXRjaCBcCiIKU1JDX1VSSVtzaGEyNTZzdW1dID0gIjM3N2Fh
MDUzNzUyZWFhMzA0YjcyYzk5MDZmOWVmY2Q5ZmJkNWY3ZjZjYjRjZDRhZDcyNDI1YTY4OTgyY2Zm
YzYiCgpTID0gIiR7V09SS0RJUn0vTmV0d29ya01hbmFnZXItJHtQVn0iCgpFWFRSQV9PRUNPTkYg
PSAiIFwKICAgIC0tZGlzYWJsZS1maXJld2FsbGQtem9uZSBcCiAgICAtLWRpc2FibGUtaWZjZmct
cmggXAogICAgLS1kaXNhYmxlLW1vcmUtd2FybmluZ3MgXAogICAgLS13aXRoLWlwdGFibGVzPSR7
c2JpbmRpcn0vaXB0YWJsZXMgXAogICAgLS13aXRoLXRlc3RzIFwKICAgIC0td2l0aC1ubXR1aT15
ZXMgXAogICAgLS13aXRoLXVkZXYtZGlyPSR7bm9uYXJjaF9iYXNlX2xpYmRpcn0vdWRldiBcCiIK
CiMgc3RvbGVuIGZyb20gaHR0cHM6Ly9naXRodWIuY29tL3ZvaWQtbGludXgvdm9pZC1wYWNrYWdl
cy9ibG9iL21hc3Rlci9zcmNwa2dzL05ldHdvcmtNYW5hZ2VyL3RlbXBsYXRlCiMgYXZvaWRzOgoj
IHwgLi4vTmV0d29ya01hbmFnZXItMS4xNi4wL2xpYm5tLWNvcmUvbm0tanNvbi5jOjEwNjo1MDog
ZXJyb3I6ICdSVExEX0RFRVBCSU5EJyB1bmRlY2xhcmVkIChmaXJzdCB1c2UgaW4gdGhpcyBmdW5j
dGlvbik7IGRpZCB5b3UgbWVhbiAnUlRMRF9ERUZBVUxUJz8KQ0ZMQUdTX2FwcGVuZF9saWJjLW11
c2wgPSAiIFwKICAgIC1EUlRMRF9ERUVQQklORD0wIFwKIgoKZG9fY29tcGlsZV9wcmVwZW5kKCkg
ewogICAgZXhwb3J0IEdJUl9FWFRSQV9MSUJTX1BBVEg9IiR7Qn0vbGlibm0vLmxpYnM6JHtCfS9s
aWJubS1nbGliLy5saWJzOiR7Qn0vbGlibm0tdXRpbC8ubGlicyIKfQoKUEFDS0FHRUNPTkZJRyA/
Pz0gIm5zcyBpZnVwZG93biBkaGNsaWVudCBkbnNtYXNxIFwKICAgICR7QGJiLnV0aWxzLmNvbnRh
aW5zKCdESVNUUk9fRkVBVFVSRVMnLCAnc3lzdGVtZCcsICdzeXN0ZW1kJywgYmIudXRpbHMuY29u
dGFpbnMoJ0RJU1RST19GRUFUVVJFUycsICd4MTEnLCAnY29uc29sZWtpdCcsICcnLCBkKSwgZCl9
IFwKICAgICR7QGJiLnV0aWxzLmNvbnRhaW5zKCdESVNUUk9fRkVBVFVSRVMnLCAnYmx1ZXRvb3Ro
JywgJ2JsdWV6NScsICcnLCBkKX0gXAogICAgJHtAYmIudXRpbHMuZmlsdGVyKCdESVNUUk9fRkVB
VFVSRVMnLCAnd2lmaSBwb2xraXQnLCBkKX0gXAoiClBBQ0tBR0VDT05GSUdbc3lzdGVtZF0gPSAi
IFwKICAgIC0td2l0aC1zeXN0ZW1kc3lzdGVtdW5pdGRpcj0ke3N5c3RlbWRfdW5pdGRpcn0vc3lz
dGVtIC0td2l0aC1zZXNzaW9uLXRyYWNraW5nPXN5c3RlbWQsIFwKICAgIC0td2l0aG91dC1zeXN0
ZW1kc3lzdGVtdW5pdGRpciwgXAoiClBBQ0tBR0VDT05GSUdbcG9sa2l0XSA9ICItLWVuYWJsZS1w
b2xraXQsLS1kaXNhYmxlLXBvbGtpdCxwb2xraXQiClBBQ0tBR0VDT05GSUdbYmx1ZXo1XSA9ICIt
LWVuYWJsZS1ibHVlejUtZHVuLC0tZGlzYWJsZS1ibHVlejUtZHVuLGJsdWV6NSIKIyBjb25zb2xl
a2l0IGlzIG5vdCBwaWNrZWQgYnkgc2hsaWJzLCBzbyBhZGQgaXQgdG8gUkRFUEVORFMgdG9vClBB
Q0tBR0VDT05GSUdbY29uc29sZWtpdF0gPSAiLS13aXRoLXNlc3Npb24tdHJhY2tpbmc9Y29uc29s
ZWtpdCwsY29uc29sZWtpdCxjb25zb2xla2l0IgpQQUNLQUdFQ09ORklHW21vZGVtbWFuYWdlcl0g
PSAiLS13aXRoLW1vZGVtLW1hbmFnZXItMT15ZXMsLS13aXRoLW1vZGVtLW1hbmFnZXItMT1ubyxt
b2RlbW1hbmFnZXIiClBBQ0tBR0VDT05GSUdbcHBwXSA9ICItLWVuYWJsZS1wcHAsLS1kaXNhYmxl
LXBwcCxwcHAscHBwIgojIFVzZSBmdWxsIGZlYXR1cmVkIGRoY3AgY2xpZW50IGluc3RlYWQgb2Yg
aW50ZXJuYWwgb25lClBBQ0tBR0VDT05GSUdbZGhjbGllbnRdID0gIi0td2l0aC1kaGNsaWVudD0k
e2Jhc2Vfc2JpbmRpcn0vZGhjbGllbnQsLCxkaGNwLWNsaWVudCIKUEFDS0FHRUNPTkZJR1tkbnNt
YXNxXSA9ICItLXdpdGgtZG5zbWFzcT0ke2JpbmRpcn0vZG5zbWFzcSIKUEFDS0FHRUNPTkZJR1tu
c3NdID0gIi0td2l0aC1jcnlwdG89bnNzLCxuc3MiClBBQ0tBR0VDT05GSUdbcmVzb2x2Y29uZl0g
PSAiLS13aXRoLXJlc29sdmNvbmY9JHtiYXNlX3NiaW5kaXJ9L3Jlc29sdmNvbmYsLCxyZXNvbHZj
b25mIgpQQUNLQUdFQ09ORklHW2dudXRsc10gPSAiLS13aXRoLWNyeXB0bz1nbnV0bHMsLGdudXRs
cyIKUEFDS0FHRUNPTkZJR1t3aWZpXSA9ICItLWVuYWJsZS13aWZpPXllcywtLWVuYWJsZS13aWZp
PW5vLCx3cGEtc3VwcGxpY2FudCIKUEFDS0FHRUNPTkZJR1tpZnVwZG93bl0gPSAiLS1lbmFibGUt
aWZ1cGRvd24sLS1kaXNhYmxlLWlmdXBkb3duIgpQQUNLQUdFQ09ORklHW3F0NC14MTEtZnJlZV0g
PSAiLS1lbmFibGUtcXQsLS1kaXNhYmxlLXF0LHF0NC14MTEtZnJlZSIKUEFDS0FHRUNPTkZJR1tj
bG91ZC1zZXR1cF0gPSAiLS13aXRoLW5tLWNsb3VkLXNldHVwPXllcywtLXdpdGgtbm0tY2xvdWQt
c2V0dXA9bm8iCgpQQUNLQUdFUyA9KyAiIFwKICAke1BOfS1ubXR1aSAke1BOfS1ubXR1aS1kb2Mg
XAogICR7UE59LWFkc2wgJHtQTn0tY2xvdWQtc2V0dXAgXAoiCgpTWVNURU1EX1BBQ0tBR0VTID0g
IiR7UE59ICR7UE59LWNsb3VkLXNldHVwIgoKRklMRVNfJHtQTn0tYWRzbCA9ICIke2xpYmRpcn0v
TmV0d29ya01hbmFnZXIvJHtQVn0vbGlibm0tZGV2aWNlLXBsdWdpbi1hZHNsLnNvIgoKRklMRVNf
JHtQTn0tY2xvdWQtc2V0dXAgPSAiIFwKICAgICR7bGliZXhlY2Rpcn0vbm0tY2xvdWQtc2V0dXAg
XAogICAgJHtzeXN0ZW1kX3N5c3RlbV91bml0ZGlyfS9ubS1jbG91ZC1zZXR1cC5zZXJ2aWNlIFwK
ICAgICR7c3lzdGVtZF9zeXN0ZW1fdW5pdGRpcn0vbm0tY2xvdWQtc2V0dXAudGltZXIgXAogICAg
JHtsaWJkaXJ9L05ldHdvcmtNYW5hZ2VyL2Rpc3BhdGNoZXIuZC85MC1ubS1jbG91ZC1zZXR1cC5z
aCBcCiAgICAke2xpYmRpcn0vTmV0d29ya01hbmFnZXIvZGlzcGF0Y2hlci5kL25vLXdhaXQuZC85
MC1ubS1jbG91ZC1zZXR1cC5zaCBcCiIKQUxMT1dfRU1QVFlfJHtQTn0tY2xvdWQtc2V0dXAgPSAi
MSIKU1lTVEVNRF9TRVJWSUNFXyR7UE59LWNsb3VkLXNldHVwID0gIiR7QGJiLnV0aWxzLmNvbnRh
aW5zKCdQQUNLQUdFQ09ORklHJywgJ2Nsb3VkLXNldHVwJywgJ25tLWNsb3VkLXNldHVwLnNlcnZp
Y2Ugbm0tY2xvdWQtc2V0dXAudGltZXInLCAnJywgZCl9IgoKRklMRVNfJHtQTn0gKz0gIiBcCiAg
ICAke2xpYmV4ZWNkaXJ9IFwKICAgICR7bGliZGlyfS9OZXR3b3JrTWFuYWdlci8ke1BWfS8qLnNv
IFwKICAgICR7bGliZGlyfS9OZXR3b3JrTWFuYWdlciBcCiAgICAke25vbmFyY2hfbGliZGlyfS9O
ZXR3b3JrTWFuYWdlci9jb25mLmQgXAogICAgJHtub25hcmNoX2xpYmRpcn0vTmV0d29ya01hbmFn
ZXIvZGlzcGF0Y2hlci5kIFwKICAgICR7bm9uYXJjaF9saWJkaXJ9L05ldHdvcmtNYW5hZ2VyL2Rp
c3BhdGNoZXIuZC9wcmUtZG93bi5kIFwKICAgICR7bm9uYXJjaF9saWJkaXJ9L05ldHdvcmtNYW5h
Z2VyL2Rpc3BhdGNoZXIuZC9wcmUtdXAuZCBcCiAgICAke25vbmFyY2hfbGliZGlyfS9OZXR3b3Jr
TWFuYWdlci9kaXNwYXRjaGVyLmQvbm8td2FpdC5kIFwKICAgICR7bm9uYXJjaF9saWJkaXJ9L05l
dHdvcmtNYW5hZ2VyL1ZQTiBcCiAgICAke25vbmFyY2hfbGliZGlyfS9OZXR3b3JrTWFuYWdlci9z
eXN0ZW0tY29ubmVjdGlvbnMgXAogICAgJHtkYXRhZGlyfS9wb2xraXQtMSBcCiAgICAke2RhdGFk
aXJ9L2RidXMtMSBcCiAgICAke25vbmFyY2hfYmFzZV9saWJkaXJ9L3VkZXYvKiBcCiAgICAke3N5
c3RlbWRfc3lzdGVtX3VuaXRkaXJ9IFwKICAgICR7bGliZGlyfS9wcHBkIFwKIgoKUlJFQ09NTUVO
RFNfJHtQTn0gKz0gImlwdGFibGVzIFwKICAgICR7QGJiLnV0aWxzLmZpbHRlcignUEFDS0FHRUNP
TkZJRycsICdkbnNtYXNxJywgZCl9IFwKIgpSQ09ORkxJQ1RTXyR7UE59ID0gImNvbm5tYW4iCgpG
SUxFU18ke1BOfS1kZXYgKz0gIiBcCiAgICAke2RhdGFkaXJ9L05ldHdvcmtNYW5hZ2VyL2dkYi1j
bWQgXAogICAgJHtsaWJkaXJ9L3BwcGQvKi8qLmxhIFwKICAgICR7bGliZGlyfS9OZXR3b3JrTWFu
YWdlci8qLmxhIFwKICAgICR7bGliZGlyfS9OZXR3b3JrTWFuYWdlci8ke1BWfS8qLmxhIFwKIgoK
RklMRVNfJHtQTn0tbm10dWkgPSAiIFwKICAgICR7YmluZGlyfS9ubXR1aSBcCiAgICAke2JpbmRp
cn0vbm10dWktZWRpdCBcCiAgICAke2JpbmRpcn0vbm10dWktY29ubmVjdCBcCiAgICAke2JpbmRp
cn0vbm10dWktaG9zdG5hbWUgXAoiCgpGSUxFU18ke1BOfS1ubXR1aS1kb2MgPSAiIFwKICAgICR7
bWFuZGlyfS9tYW4xL25tdHVpKiBcCiIKCklOSVRTQ1JJUFRfTkFNRSA9ICJuZXR3b3JrLW1hbmFn
ZXIiClNZU1RFTURfU0VSVklDRV8ke1BOfSA9ICIke0BiYi51dGlscy5jb250YWlucygnUEFDS0FH
RUNPTkZJRycsICdzeXN0ZW1kJywgJ05ldHdvcmtNYW5hZ2VyLnNlcnZpY2UgTmV0d29ya01hbmFn
ZXItZGlzcGF0Y2hlci5zZXJ2aWNlJywgJycsIGQpfSIKCkFMVEVSTkFUSVZFX1BSSU9SSVRZID0g
IjEwMCIKQUxURVJOQVRJVkVfJHtQTn0gPSAiJHtAYmIudXRpbHMuY29udGFpbnMoJ0RJU1RST19G
RUFUVVJFUycsJ3N5c3RlbWQnLCdyZXNvbHYtY29uZicsJycsZCl9IgpBTFRFUk5BVElWRV9UQVJH
RVRbcmVzb2x2LWNvbmZdID0gIiR7QGJiLnV0aWxzLmNvbnRhaW5zKCdESVNUUk9fRkVBVFVSRVMn
LCdzeXN0ZW1kJywnJHtzeXNjb25mZGlyfS9yZXNvbHYtY29uZi5OZXR3b3JrTWFuYWdlcicsJycs
ZCl9IgpBTFRFUk5BVElWRV9MSU5LX05BTUVbcmVzb2x2LWNvbmZdID0gIiR7QGJiLnV0aWxzLmNv
bnRhaW5zKCdESVNUUk9fRkVBVFVSRVMnLCdzeXN0ZW1kJywnJHtzeXNjb25mZGlyfS9yZXNvbHYu
Y29uZicsJycsZCl9IgoKZG9faW5zdGFsbF9hcHBlbmQoKSB7CiAgICBpbnN0YWxsIC1EbSAwNzU1
ICR7V09SS0RJUn0vJHtCUE59LmluaXRkICR7RH0ke3N5c2NvbmZkaXJ9L2luaXQuZC9uZXR3b3Jr
LW1hbmFnZXIKCiAgICBybSAtcmYgJHtEfS9ydW4gJHtEfSR7bG9jYWxzdGF0ZWRpcn0vcnVuCgog
ICAgaWYgJHtAYmIudXRpbHMuY29udGFpbnMoJ0RJU1RST19GRUFUVVJFUycsJ3N5c3RlbWQnLCd0
cnVlJywnZmFsc2UnLGQpfTsgdGhlbgogICAgICAgICMgRm9yIHJlYWQtb25seSBmaWxlc3lzdGVt
LCBkbyBub3QgY3JlYXRlIGxpbmtzIGR1cmluZyBib290dXAKICAgICAgICBsbiAtc2YgLi4vcnVu
L05ldHdvcmtNYW5hZ2VyL3Jlc29sdi5jb25mICR7RH0ke3N5c2NvbmZkaXJ9L3Jlc29sdi1jb25m
Lk5ldHdvcmtNYW5hZ2VyCgogICAgICAgICMgc3lzdGVtZCB2MjEwIGFuZCBuZXdlciBkbyBub3Qg
bmVlZCB0aGlzIHJ1bGUgZmlsZQogICAgICAgIHJtICR7RH0vJHtub25hcmNoX2Jhc2VfbGliZGly
fS91ZGV2L3J1bGVzLmQvODQtbm0tZHJpdmVycy5ydWxlcwogICAgZmkKfQo=
--00000000000007fd4005ffcdc67b--

