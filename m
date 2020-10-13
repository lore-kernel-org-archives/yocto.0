Received: from mail-vs1-f54.google.com (mail-vs1-f54.google.com [209.85.217.54])
 by mx.groups.io with SMTP id smtpd.web12.6811.1602575782899214620
 for <yocto@lists.yoctoproject.org>;
 Tue, 13 Oct 2020 00:56:23 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=pKY1JWly;
 spf=pass (domain: gmail.com, ip: 209.85.217.54, mailfrom: alex.kanavin@gmail.com)
Received: by mail-vs1-f54.google.com with SMTP id p25so3547178vsq.4
        for <yocto@lists.yoctoproject.org>; Tue, 13 Oct 2020 00:56:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=arcEww7/s0mkPtF8ZIGrQjR5Wbx7/GbZQw03ePdF3Es=;
        b=pKY1JWlyF0qI/SRK7eEtR6qjSZ4kpSOXFJiX5afiuECSiqa8xqYzpaQjYAGuhbYN7N
         795+Rpc7bmXIC6C295eezC6890Wi4PdUeMIwnchDFbvNj05VSEIvLNmi4uoiU+al8XQi
         tiCL5X2/IGeAGBTS2iKuZWMj3E5Qx/ySRWfkSKvOAJJ+yoUbLYg0lgiP5gULV1ae7KOq
         9KYrvQ/dOmDkSETs/LPDGEcseF7CiRqnB0dhXyK6rwhC8QQJkbCxIxncwCMq+1XUQMTp
         9mVmerj5HOcJrwf17lrSsC+dLsexgHzv6VeRYbQDzcr5PfCo5+AV1wGflBsvPCv3ScOT
         ST2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=arcEww7/s0mkPtF8ZIGrQjR5Wbx7/GbZQw03ePdF3Es=;
        b=QwGTAkG+N4W1Jbj1FqW/A9zb772J0047HussWcqknGKLdVWMWcvzkU79Ux7C4+iXLL
         Pnr04hcc3S9pJby173qAevibQFEMxR+IWEeTQo2mh7z6dlqGYnWly7F9Bz4dnzv4oz5A
         jj/jSyiIk3yp77lIfthQt4S82YsIBrvE/B9g0mP5UGsTHdX46SIl+EBunpuA79wFTvLi
         efwHYct2ABZgQlJXms54CryiZZ6El96NHCFNd/DZD4wPZE6GoFEM93wB/GIAszBbrF7u
         xs4+199OC7Hua020TbK92WpFXRAeAERsI8t/XA5LkqwsHRwc7SLh2CmAQ/cbw2HqAQA3
         9vHw==
X-Gm-Message-State: AOAM532XxiFvHGQJTx4SOECLUsM4pxK3KYzEJH4dKfcDyrLwBl6iWI4o
	giZdyTcTcfnX9X9T2NryEf6Gc1L8v4rSRUZbktQ5pU/Z
X-Google-Smtp-Source: ABdhPJwQqWGNwQOI/YOe0gwwX09DInnYZ2PFtldlH3R+LrL+ys2JIzTfc2OnZRsBj696lAyiG9qfqmeyGf8Xlk394C4=
X-Received: by 2002:a67:1087:: with SMTP id 129mr9659096vsq.41.1602575781681;
 Tue, 13 Oct 2020 00:56:21 -0700 (PDT)
MIME-Version: 1.0
References: <db432deb-9818-206d-9d3f-ff7ac8342f60@optimcloud.com>
In-Reply-To: <db432deb-9818-206d-9d3f-ff7ac8342f60@optimcloud.com>
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
Date: Tue, 13 Oct 2020 09:56:10 +0200
Message-ID: <CANNYZj9Wt+fc8d0ETvpcJDs6JG8zbjWdFX946_Xo+T6nSSYW_w@mail.gmail.com>
Subject: Re: [yocto] virglrenderer fatal error: gbm.h: No such file or directory
To: Yocto <yocto@optimcloud.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000031773005b188c070"

--00000000000031773005b188c070
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Virgl only has been verified with Mesa, if your bsp provides something else
for virtual/libgl, it is not going to work. Please ask your bsp supplier
(Nvidia I guess?) what to do.

Alex

On Tue 13. Oct 2020 at 6.28, Yocto <yocto@optimcloud.com> wrote:

> virglrenderer appears broken, occurs on both Fedora-32 and Debian-10
>
> Build Configuration:
> BB_VERSION           =3D "1.47.0"
> BUILD_SYS            =3D "x86_64-linux"
> NATIVELSBSTRING      =3D "fedora-32"
> TARGET_SYS           =3D "aarch64-overc-linux"
> MACHINE              =3D "jetson-xavier-nx-devkit"
> DISTRO               =3D "overc"
> DISTRO_VERSION       =3D "1.0"
> TUNE_FEATURES        =3D "aarch64 armv8a crc"
> TARGET_FPU           =3D ""
> meta
> meta-poky
> meta-yocto-bsp       =3D "master:0c0b236b4c72d30e0e88f5f0310476569d444e8=
3"
> meta-tegra           =3D "master:01c3205183af0236101b423d48a8af167baee8b=
1"
> meta-oe
> meta-python
> meta-networking
> meta-filesystems
> meta-gnome
> meta-xfce
> meta-multimedia
> meta-perl            =3D "master:d25d21a8b40d3fe29298f3aa43328477ce4d8ee=
7"
> meta-overc
> meta-cube            =3D "master:264d1d0949fb5e9ec8e39b1f7604086d59ec204=
7"
> meta-awnix           =3D "master:c616414c6ed4f6f2ab75703ce5a3e84acacd3c4=
7"
> meta-virtualization  =3D "master:43a5cc7f031da1ef75b1ff33def3ef4984ad72e=
3"
> meta-cloud-services  =3D "master:910195eb791d754d394ba1013a258ab120c995e=
9"
> meta-security        =3D "master:3ce8b759c97706d6f78928c38b6ebac4edfd95a=
5"
> meta-selinux         =3D "master:6e1100d29aec118df2025c46c77f4c8aa8da4e7=
6"
>
>
> =E2=9D=AF cat
>
> /var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0=
.8.2-r0/temp/log.do_compile.754739
> DEBUG: Executing shell function do_compile
> [1/15] rm -f src/gallium/libgallium.a && aarch64-overc-linux-gcc-ar csrD
> src/gallium/libgallium.a
> src/gallium/libgallium.a.p/meson-generated_.._u_format_table.c.o
> src/gallium/libgallium.a.p/auxiliary_util_u_format.c.o
> src/gallium/libgallium.a.p/auxiliary_util_u_texture.c.o
> src/gallium/libgallium.a.p/auxiliary_util_u_hash_table.c.o
> src/gallium/libgallium.a.p/auxiliary_util_u_debug.c.o
> src/gallium/libgallium.a.p/auxiliary_util_u_cpu_detect.c.o
> src/gallium/libgallium.a.p/auxiliary_util_u_bitmask.c.o
> src/gallium/libgallium.a.p/auxiliary_util_u_surface.c.o
> src/gallium/libgallium.a.p/auxiliary_util_u_math.c.o
> src/gallium/libgallium.a.p/auxiliary_util_u_debug_describe.c.o
> src/gallium/libgallium.a.p/auxiliary_cso_cache_cso_cache.c.o
> src/gallium/libgallium.a.p/auxiliary_cso_cache_cso_hash.c.o
> src/gallium/libgallium.a.p/auxiliary_tgsi_tgsi_dump.c.o
> src/gallium/libgallium.a.p/auxiliary_tgsi_tgsi_ureg.c.o
> src/gallium/libgallium.a.p/auxiliary_tgsi_tgsi_build.c.o
> src/gallium/libgallium.a.p/auxiliary_tgsi_tgsi_scan.c.o
> src/gallium/libgallium.a.p/auxiliary_tgsi_tgsi_info.c.o
> src/gallium/libgallium.a.p/auxiliary_tgsi_tgsi_parse.c.o
> src/gallium/libgallium.a.p/auxiliary_tgsi_tgsi_text.c.o
> src/gallium/libgallium.a.p/auxiliary_tgsi_tgsi_strings.c.o
> src/gallium/libgallium.a.p/auxiliary_tgsi_tgsi_sanity.c.o
> src/gallium/libgallium.a.p/auxiliary_tgsi_tgsi_iterate.c.o
> src/gallium/libgallium.a.p/auxiliary_tgsi_tgsi_util.c.o
> src/gallium/libgallium.a.p/auxiliary_tgsi_tgsi_transform.c.o
> src/gallium/libgallium.a.p/auxiliary_os_os_misc.c.o
> [2/15] aarch64-overc-linux-gcc -march=3Darmv8-a+crc
> --sysroot=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/vir=
glrenderer/0.8.2-r0/recipe-sysroot
>
> -Ivtest/virgl_test_server.p -Ivtest -I../git/vtest
> -I../git/src/gallium/include -I../git/src/gallium/auxiliary
> -I../git/src/gallium/auxiliary/util -I. -I../git -Isrc -I../git/src
> -fdiagnostics-color=3Dalways -DNDEBUG -pipe -D_FILE_OFFSET_BITS=3D64
> -std=3Dgnu11 -DHAVE_CONFIG_H=3D1 -D_GNU_SOURCE=3D1
> -Werror=3Dimplicit-function-declaration -Werror=3Dmissing-prototypes
> -Wmissing-prototypes -Werror=3Dint-to-pointer-cast -fvisibility=3Dhidden=
 -O2
> -g -feliminate-unused-debug-types
> -fmacro-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-=
linux/virglrenderer/0.8.2-r0=3D/usr/src/debug/virglrenderer/0.8.2-r0
>
> -fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-=
linux/virglrenderer/0.8.2-r0=3D/usr/src/debug/virglrenderer/0.8.2-r0
>
> -fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-=
linux/virglrenderer/0.8.2-r0/recipe-sysroot=3D
>
> -fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-=
linux/virglrenderer/0.8.2-r0/recipe-sysroot-native=3D
>
> -MD -MQ vtest/virgl_test_server.p/vtest_shm.c.o -MF
> vtest/virgl_test_server.p/vtest_shm.c.o.d -o
> vtest/virgl_test_server.p/vtest_shm.c.o -c ../git/vtest/vtest_shm.c
> [3/15] aarch64-overc-linux-gcc -march=3Darmv8-a+crc
> --sysroot=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/vir=
glrenderer/0.8.2-r0/recipe-sysroot
>
> -Isrc/libvirgl.a.p -Isrc -I../git/src -I../git/src/gallium/include
> -I../git/src/gallium/auxiliary -I../git/src/gallium/auxiliary/util -I.
> -I../git
> -I/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer=
/0.8.2-r0/recipe-sysroot/usr/include/libdrm
>
> -fdiagnostics-color=3Dalways -DNDEBUG -pipe -D_FILE_OFFSET_BITS=3D64
> -std=3Dgnu11 -DHAVE_CONFIG_H=3D1 -D_GNU_SOURCE=3D1
> -Werror=3Dimplicit-function-declaration -Werror=3Dmissing-prototypes
> -Wmissing-prototypes -Werror=3Dint-to-pointer-cast -fvisibility=3Dhidden=
 -O2
> -g -feliminate-unused-debug-types
> -fmacro-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-=
linux/virglrenderer/0.8.2-r0=3D/usr/src/debug/virglrenderer/0.8.2-r0
>
> -fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-=
linux/virglrenderer/0.8.2-r0=3D/usr/src/debug/virglrenderer/0.8.2-r0
>
> -fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-=
linux/virglrenderer/0.8.2-r0/recipe-sysroot=3D
>
> -fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-=
linux/virglrenderer/0.8.2-r0/recipe-sysroot-native=3D
>
> -fPIC -pthread -MD -MQ src/libvirgl.a.p/vrend_debug.c.o -MF
> src/libvirgl.a.p/vrend_debug.c.o.d -o src/libvirgl.a.p/vrend_debug.c.o
> -c ../git/src/vrend_debug.c
> FAILED: src/libvirgl.a.p/vrend_debug.c.o
> aarch64-overc-linux-gcc -march=3Darmv8-a+crc
> --sysroot=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/vir=
glrenderer/0.8.2-r0/recipe-sysroot
>
> -Isrc/libvirgl.a.p -Isrc -I../git/src -I../git/src/gallium/include
> -I../git/src/gallium/auxiliary -I../git/src/gallium/auxiliary/util -I.
> -I../git
> -I/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer=
/0.8.2-r0/recipe-sysroot/usr/include/libdrm
>
> -fdiagnostics-color=3Dalways -DNDEBUG -pipe -D_FILE_OFFSET_BITS=3D64
> -std=3Dgnu11 -DHAVE_CONFIG_H=3D1 -D_GNU_SOURCE=3D1
> -Werror=3Dimplicit-function-declaration -Werror=3Dmissing-prototypes
> -Wmissing-prototypes -Werror=3Dint-to-pointer-cast -fvisibility=3Dhidden=
 -O2
> -g -feliminate-unused-debug-types
> -fmacro-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-=
linux/virglrenderer/0.8.2-r0=3D/usr/src/debug/virglrenderer/0.8.2-r0
>
> -fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-=
linux/virglrenderer/0.8.2-r0=3D/usr/src/debug/virglrenderer/0.8.2-r0
>
> -fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-=
linux/virglrenderer/0.8.2-r0/recipe-sysroot=3D
>
> -fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-=
linux/virglrenderer/0.8.2-r0/recipe-sysroot-native=3D
>
> -fPIC -pthread -MD -MQ src/libvirgl.a.p/vrend_debug.c.o -MF
> src/libvirgl.a.p/vrend_debug.c.o.d -o src/libvirgl.a.p/vrend_debug.c.o
> -c ../git/src/vrend_debug.c
> In file included from ../git/src/vrend_renderer.h:34,
>                   from ../git/src/vrend_debug.c:26:
> ../git/src/virgl_gbm.h:28:10: fatal error: gbm.h: No such file or direct=
ory
>     28 | #include <gbm.h>
>        |          ^~~~~~~
> compilation terminated.
> [4/15] aarch64-overc-linux-gcc -march=3Darmv8-a+crc
> --sysroot=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/vir=
glrenderer/0.8.2-r0/recipe-sysroot
>
> -Isrc/libvirgl.a.p -Isrc -I../git/src -I../git/src/gallium/include
> -I../git/src/gallium/auxiliary -I../git/src/gallium/auxiliary/util -I.
> -I../git
> -I/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer=
/0.8.2-r0/recipe-sysroot/usr/include/libdrm
>
> -fdiagnostics-color=3Dalways -DNDEBUG -pipe -D_FILE_OFFSET_BITS=3D64
> -std=3Dgnu11 -DHAVE_CONFIG_H=3D1 -D_GNU_SOURCE=3D1
> -Werror=3Dimplicit-function-declaration -Werror=3Dmissing-prototypes
> -Wmissing-prototypes -Werror=3Dint-to-pointer-cast -fvisibility=3Dhidden=
 -O2
> -g -feliminate-unused-debug-types
> -fmacro-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-=
linux/virglrenderer/0.8.2-r0=3D/usr/src/debug/virglrenderer/0.8.2-r0
>
> -fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-=
linux/virglrenderer/0.8.2-r0=3D/usr/src/debug/virglrenderer/0.8.2-r0
>
> -fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-=
linux/virglrenderer/0.8.2-r0/recipe-sysroot=3D
>
> -fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-=
linux/virglrenderer/0.8.2-r0/recipe-sysroot-native=3D
>
> -fPIC -pthread -MD -MQ src/libvirgl.a.p/vrend_renderer.c.o -MF
> src/libvirgl.a.p/vrend_renderer.c.o.d -o
> src/libvirgl.a.p/vrend_renderer.c.o -c ../git/src/vrend_renderer.c
> FAILED: src/libvirgl.a.p/vrend_renderer.c.o
> aarch64-overc-linux-gcc -march=3Darmv8-a+crc
> --sysroot=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/vir=
glrenderer/0.8.2-r0/recipe-sysroot
>
> -Isrc/libvirgl.a.p -Isrc -I../git/src -I../git/src/gallium/include
> -I../git/src/gallium/auxiliary -I../git/src/gallium/auxiliary/util -I.
> -I../git
> -I/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer=
/0.8.2-r0/recipe-sysroot/usr/include/libdrm
>
> -fdiagnostics-color=3Dalways -DNDEBUG -pipe -D_FILE_OFFSET_BITS=3D64
> -std=3Dgnu11 -DHAVE_CONFIG_H=3D1 -D_GNU_SOURCE=3D1
> -Werror=3Dimplicit-function-declaration -Werror=3Dmissing-prototypes
> -Wmissing-prototypes -Werror=3Dint-to-pointer-cast -fvisibility=3Dhidden=
 -O2
> -g -feliminate-unused-debug-types
> -fmacro-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-=
linux/virglrenderer/0.8.2-r0=3D/usr/src/debug/virglrenderer/0.8.2-r0
>
> -fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-=
linux/virglrenderer/0.8.2-r0=3D/usr/src/debug/virglrenderer/0.8.2-r0
>
> -fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-=
linux/virglrenderer/0.8.2-r0/recipe-sysroot=3D
>
> -fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-=
linux/virglrenderer/0.8.2-r0/recipe-sysroot-native=3D
>
> -fPIC -pthread -MD -MQ src/libvirgl.a.p/vrend_renderer.c.o -MF
> src/libvirgl.a.p/vrend_renderer.c.o.d -o
> src/libvirgl.a.p/vrend_renderer.c.o -c ../git/src/vrend_renderer.c
> In file included from ../git/src/vrend_renderer.h:34,
>                   from ../git/src/vrend_renderer.c:49:
> ../git/src/virgl_gbm.h:28:10: fatal error: gbm.h: No such file or direct=
ory
>     28 | #include <gbm.h>
>        |          ^~~~~~~
> compilation terminated.
> [5/15] aarch64-overc-linux-gcc -march=3Darmv8-a+crc
> --sysroot=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/vir=
glrenderer/0.8.2-r0/recipe-sysroot
>
> -Isrc/libvirgl.a.p -Isrc -I../git/src -I../git/src/gallium/include
> -I../git/src/gallium/auxiliary -I../git/src/gallium/auxiliary/util -I.
> -I../git
> -I/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer=
/0.8.2-r0/recipe-sysroot/usr/include/libdrm
>
> -fdiagnostics-color=3Dalways -DNDEBUG -pipe -D_FILE_OFFSET_BITS=3D64
> -std=3Dgnu11 -DHAVE_CONFIG_H=3D1 -D_GNU_SOURCE=3D1
> -Werror=3Dimplicit-function-declaration -Werror=3Dmissing-prototypes
> -Wmissing-prototypes -Werror=3Dint-to-pointer-cast -fvisibility=3Dhidden=
 -O2
> -g -feliminate-unused-debug-types
> -fmacro-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-=
linux/virglrenderer/0.8.2-r0=3D/usr/src/debug/virglrenderer/0.8.2-r0
>
> -fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-=
linux/virglrenderer/0.8.2-r0=3D/usr/src/debug/virglrenderer/0.8.2-r0
>
> -fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-=
linux/virglrenderer/0.8.2-r0/recipe-sysroot=3D
>
> -fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-=
linux/virglrenderer/0.8.2-r0/recipe-sysroot-native=3D
>
> -fPIC -pthread -MD -MQ src/libvirgl.a.p/vrend_blitter.c.o -MF
> src/libvirgl.a.p/vrend_blitter.c.o.d -o
> src/libvirgl.a.p/vrend_blitter.c.o -c ../git/src/vrend_blitter.c
> FAILED: src/libvirgl.a.p/vrend_blitter.c.o
> aarch64-overc-linux-gcc -march=3Darmv8-a+crc
> --sysroot=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/vir=
glrenderer/0.8.2-r0/recipe-sysroot
>
> -Isrc/libvirgl.a.p -Isrc -I../git/src -I../git/src/gallium/include
> -I../git/src/gallium/auxiliary -I../git/src/gallium/auxiliary/util -I.
> -I../git
> -I/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer=
/0.8.2-r0/recipe-sysroot/usr/include/libdrm
>
> -fdiagnostics-color=3Dalways -DNDEBUG -pipe -D_FILE_OFFSET_BITS=3D64
> -std=3Dgnu11 -DHAVE_CONFIG_H=3D1 -D_GNU_SOURCE=3D1
> -Werror=3Dimplicit-function-declaration -Werror=3Dmissing-prototypes
> -Wmissing-prototypes -Werror=3Dint-to-pointer-cast -fvisibility=3Dhidden=
 -O2
> -g -feliminate-unused-debug-types
> -fmacro-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-=
linux/virglrenderer/0.8.2-r0=3D/usr/src/debug/virglrenderer/0.8.2-r0
>
> -fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-=
linux/virglrenderer/0.8.2-r0=3D/usr/src/debug/virglrenderer/0.8.2-r0
>
> -fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-=
linux/virglrenderer/0.8.2-r0/recipe-sysroot=3D
>
> -fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-=
linux/virglrenderer/0.8.2-r0/recipe-sysroot-native=3D
>
> -fPIC -pthread -MD -MQ src/libvirgl.a.p/vrend_blitter.c.o -MF
> src/libvirgl.a.p/vrend_blitter.c.o.d -o
> src/libvirgl.a.p/vrend_blitter.c.o -c ../git/src/vrend_blitter.c
> In file included from ../git/src/vrend_renderer.h:34,
>                   from ../git/src/vrend_blitter.c:48:
> ../git/src/virgl_gbm.h:28:10: fatal error: gbm.h: No such file or direct=
ory
>     28 | #include <gbm.h>
>        |          ^~~~~~~
> compilation terminated.
> [6/15] aarch64-overc-linux-gcc -march=3Darmv8-a+crc
> --sysroot=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/vir=
glrenderer/0.8.2-r0/recipe-sysroot
>
> -Ivtest/virgl_test_server.p -Ivtest -I../git/vtest
> -I../git/src/gallium/include -I../git/src/gallium/auxiliary
> -I../git/src/gallium/auxiliary/util -I. -I../git -Isrc -I../git/src
> -fdiagnostics-color=3Dalways -DNDEBUG -pipe -D_FILE_OFFSET_BITS=3D64
> -std=3Dgnu11 -DHAVE_CONFIG_H=3D1 -D_GNU_SOURCE=3D1
> -Werror=3Dimplicit-function-declaration -Werror=3Dmissing-prototypes
> -Wmissing-prototypes -Werror=3Dint-to-pointer-cast -fvisibility=3Dhidden=
 -O2
> -g -feliminate-unused-debug-types
> -fmacro-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-=
linux/virglrenderer/0.8.2-r0=3D/usr/src/debug/virglrenderer/0.8.2-r0
>
> -fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-=
linux/virglrenderer/0.8.2-r0=3D/usr/src/debug/virglrenderer/0.8.2-r0
>
> -fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-=
linux/virglrenderer/0.8.2-r0/recipe-sysroot=3D
>
> -fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-=
linux/virglrenderer/0.8.2-r0/recipe-sysroot-native=3D
>
> -MD -MQ vtest/virgl_test_server.p/vtest_server.c.o -MF
> vtest/virgl_test_server.p/vtest_server.c.o.d -o
> vtest/virgl_test_server.p/vtest_server.c.o -c ../git/vtest/vtest_server.=
c
> [7/15] aarch64-overc-linux-gcc -march=3Darmv8-a+crc
> --sysroot=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/vir=
glrenderer/0.8.2-r0/recipe-sysroot
>
> -Isrc/libvirglrenderer.so.1.4.2.p -Isrc -I../git/src
> -I../git/src/gallium/include -I../git/src/gallium/auxiliary
> -I../git/src/gallium/auxiliary/util -I. -I../git
> -I/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer=
/0.8.2-r0/recipe-sysroot/usr/include/libdrm
>
> -fdiagnostics-color=3Dalways -DNDEBUG -pipe -D_FILE_OFFSET_BITS=3D64
> -std=3Dgnu11 -DHAVE_CONFIG_H=3D1 -D_GNU_SOURCE=3D1
> -Werror=3Dimplicit-function-declaration -Werror=3Dmissing-prototypes
> -Wmissing-prototypes -Werror=3Dint-to-pointer-cast -fvisibility=3Dhidden=
 -O2
> -g -feliminate-unused-debug-types
> -fmacro-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-=
linux/virglrenderer/0.8.2-r0=3D/usr/src/debug/virglrenderer/0.8.2-r0
>
> -fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-=
linux/virglrenderer/0.8.2-r0=3D/usr/src/debug/virglrenderer/0.8.2-r0
>
> -fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-=
linux/virglrenderer/0.8.2-r0/recipe-sysroot=3D
>
> -fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-=
linux/virglrenderer/0.8.2-r0/recipe-sysroot-native=3D
>
> -fPIC -pthread -MD -MQ src/libvirglrenderer.so.1.4.2.p/virglrenderer.c.o
> -MF src/libvirglrenderer.so.1.4.2.p/virglrenderer.c.o.d -o
> src/libvirglrenderer.so.1.4.2.p/virglrenderer.c.o -c
> ../git/src/virglrenderer.c
> FAILED: src/libvirglrenderer.so.1.4.2.p/virglrenderer.c.o
> aarch64-overc-linux-gcc -march=3Darmv8-a+crc
> --sysroot=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/vir=
glrenderer/0.8.2-r0/recipe-sysroot
>
> -Isrc/libvirglrenderer.so.1.4.2.p -Isrc -I../git/src
> -I../git/src/gallium/include -I../git/src/gallium/auxiliary
> -I../git/src/gallium/auxiliary/util -I. -I../git
> -I/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer=
/0.8.2-r0/recipe-sysroot/usr/include/libdrm
>
> -fdiagnostics-color=3Dalways -DNDEBUG -pipe -D_FILE_OFFSET_BITS=3D64
> -std=3Dgnu11 -DHAVE_CONFIG_H=3D1 -D_GNU_SOURCE=3D1
> -Werror=3Dimplicit-function-declaration -Werror=3Dmissing-prototypes
> -Wmissing-prototypes -Werror=3Dint-to-pointer-cast -fvisibility=3Dhidden=
 -O2
> -g -feliminate-unused-debug-types
> -fmacro-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-=
linux/virglrenderer/0.8.2-r0=3D/usr/src/debug/virglrenderer/0.8.2-r0
>
> -fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-=
linux/virglrenderer/0.8.2-r0=3D/usr/src/debug/virglrenderer/0.8.2-r0
>
> -fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-=
linux/virglrenderer/0.8.2-r0/recipe-sysroot=3D
>
> -fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-=
linux/virglrenderer/0.8.2-r0/recipe-sysroot-native=3D
>
> -fPIC -pthread -MD -MQ src/libvirglrenderer.so.1.4.2.p/virglrenderer.c.o
> -MF src/libvirglrenderer.so.1.4.2.p/virglrenderer.c.o.d -o
> src/libvirglrenderer.so.1.4.2.p/virglrenderer.c.o -c
> ../git/src/virglrenderer.c
> In file included from ../git/src/vrend_renderer.h:34,
>                   from ../git/src/virglrenderer.c:37:
> ../git/src/virgl_gbm.h:28:10: fatal error: gbm.h: No such file or direct=
ory
>     28 | #include <gbm.h>
>        |          ^~~~~~~
> compilation terminated.
> [8/15] aarch64-overc-linux-gcc -march=3Darmv8-a+crc
> --sysroot=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/vir=
glrenderer/0.8.2-r0/recipe-sysroot
>
> -Isrc/libvirgl.a.p -Isrc -I../git/src -I../git/src/gallium/include
> -I../git/src/gallium/auxiliary -I../git/src/gallium/auxiliary/util -I.
> -I../git
> -I/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer=
/0.8.2-r0/recipe-sysroot/usr/include/libdrm
>
> -fdiagnostics-color=3Dalways -DNDEBUG -pipe -D_FILE_OFFSET_BITS=3D64
> -std=3Dgnu11 -DHAVE_CONFIG_H=3D1 -D_GNU_SOURCE=3D1
> -Werror=3Dimplicit-function-declaration -Werror=3Dmissing-prototypes
> -Wmissing-prototypes -Werror=3Dint-to-pointer-cast -fvisibility=3Dhidden=
 -O2
> -g -feliminate-unused-debug-types
> -fmacro-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-=
linux/virglrenderer/0.8.2-r0=3D/usr/src/debug/virglrenderer/0.8.2-r0
>
> -fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-=
linux/virglrenderer/0.8.2-r0=3D/usr/src/debug/virglrenderer/0.8.2-r0
>
> -fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-=
linux/virglrenderer/0.8.2-r0/recipe-sysroot=3D
>
> -fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-=
linux/virglrenderer/0.8.2-r0/recipe-sysroot-native=3D
>
> -fPIC -pthread -MD -MQ src/libvirgl.a.p/vrend_formats.c.o -MF
> src/libvirgl.a.p/vrend_formats.c.o.d -o
> src/libvirgl.a.p/vrend_formats.c.o -c ../git/src/vrend_formats.c
> FAILED: src/libvirgl.a.p/vrend_formats.c.o
> aarch64-overc-linux-gcc -march=3Darmv8-a+crc
> --sysroot=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/vir=
glrenderer/0.8.2-r0/recipe-sysroot
>
> -Isrc/libvirgl.a.p -Isrc -I../git/src -I../git/src/gallium/include
> -I../git/src/gallium/auxiliary -I../git/src/gallium/auxiliary/util -I.
> -I../git
> -I/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer=
/0.8.2-r0/recipe-sysroot/usr/include/libdrm
>
> -fdiagnostics-color=3Dalways -DNDEBUG -pipe -D_FILE_OFFSET_BITS=3D64
> -std=3Dgnu11 -DHAVE_CONFIG_H=3D1 -D_GNU_SOURCE=3D1
> -Werror=3Dimplicit-function-declaration -Werror=3Dmissing-prototypes
> -Wmissing-prototypes -Werror=3Dint-to-pointer-cast -fvisibility=3Dhidden=
 -O2
> -g -feliminate-unused-debug-types
> -fmacro-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-=
linux/virglrenderer/0.8.2-r0=3D/usr/src/debug/virglrenderer/0.8.2-r0
>
> -fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-=
linux/virglrenderer/0.8.2-r0=3D/usr/src/debug/virglrenderer/0.8.2-r0
>
> -fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-=
linux/virglrenderer/0.8.2-r0/recipe-sysroot=3D
>
> -fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-=
linux/virglrenderer/0.8.2-r0/recipe-sysroot-native=3D
>
> -fPIC -pthread -MD -MQ src/libvirgl.a.p/vrend_formats.c.o -MF
> src/libvirgl.a.p/vrend_formats.c.o.d -o
> src/libvirgl.a.p/vrend_formats.c.o -c ../git/src/vrend_formats.c
> In file included from ../git/src/vrend_renderer.h:34,
>                   from ../git/src/vrend_formats.c:26:
> ../git/src/virgl_gbm.h:28:10: fatal error: gbm.h: No such file or direct=
ory
>     28 | #include <gbm.h>
>        |          ^~~~~~~
> compilation terminated.
> [9/15] aarch64-overc-linux-gcc -march=3Darmv8-a+crc
> --sysroot=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/vir=
glrenderer/0.8.2-r0/recipe-sysroot
>
> -Isrc/libvirgl.a.p -Isrc -I../git/src -I../git/src/gallium/include
> -I../git/src/gallium/auxiliary -I../git/src/gallium/auxiliary/util -I.
> -I../git
> -I/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer=
/0.8.2-r0/recipe-sysroot/usr/include/libdrm
>
> -fdiagnostics-color=3Dalways -DNDEBUG -pipe -D_FILE_OFFSET_BITS=3D64
> -std=3Dgnu11 -DHAVE_CONFIG_H=3D1 -D_GNU_SOURCE=3D1
> -Werror=3Dimplicit-function-declaration -Werror=3Dmissing-prototypes
> -Wmissing-prototypes -Werror=3Dint-to-pointer-cast -fvisibility=3Dhidden=
 -O2
> -g -feliminate-unused-debug-types
> -fmacro-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-=
linux/virglrenderer/0.8.2-r0=3D/usr/src/debug/virglrenderer/0.8.2-r0
>
> -fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-=
linux/virglrenderer/0.8.2-r0=3D/usr/src/debug/virglrenderer/0.8.2-r0
>
> -fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-=
linux/virglrenderer/0.8.2-r0/recipe-sysroot=3D
>
> -fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-=
linux/virglrenderer/0.8.2-r0/recipe-sysroot-native=3D
>
> -fPIC -pthread -MD -MQ src/libvirgl.a.p/vrend_decode.c.o -MF
> src/libvirgl.a.p/vrend_decode.c.o.d -o src/libvirgl.a.p/vrend_decode.c.o
> -c ../git/src/vrend_decode.c
> FAILED: src/libvirgl.a.p/vrend_decode.c.o
> aarch64-overc-linux-gcc -march=3Darmv8-a+crc
> --sysroot=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/vir=
glrenderer/0.8.2-r0/recipe-sysroot
>
> -Isrc/libvirgl.a.p -Isrc -I../git/src -I../git/src/gallium/include
> -I../git/src/gallium/auxiliary -I../git/src/gallium/auxiliary/util -I.
> -I../git
> -I/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer=
/0.8.2-r0/recipe-sysroot/usr/include/libdrm
>
> -fdiagnostics-color=3Dalways -DNDEBUG -pipe -D_FILE_OFFSET_BITS=3D64
> -std=3Dgnu11 -DHAVE_CONFIG_H=3D1 -D_GNU_SOURCE=3D1
> -Werror=3Dimplicit-function-declaration -Werror=3Dmissing-prototypes
> -Wmissing-prototypes -Werror=3Dint-to-pointer-cast -fvisibility=3Dhidden=
 -O2
> -g -feliminate-unused-debug-types
> -fmacro-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-=
linux/virglrenderer/0.8.2-r0=3D/usr/src/debug/virglrenderer/0.8.2-r0
>
> -fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-=
linux/virglrenderer/0.8.2-r0=3D/usr/src/debug/virglrenderer/0.8.2-r0
>
> -fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-=
linux/virglrenderer/0.8.2-r0/recipe-sysroot=3D
>
> -fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-=
linux/virglrenderer/0.8.2-r0/recipe-sysroot-native=3D
>
> -fPIC -pthread -MD -MQ src/libvirgl.a.p/vrend_decode.c.o -MF
> src/libvirgl.a.p/vrend_decode.c.o.d -o src/libvirgl.a.p/vrend_decode.c.o
> -c ../git/src/vrend_decode.c
> In file included from ../git/src/vrend_renderer.h:34,
>                   from ../git/src/vrend_decode.c:34:
> ../git/src/virgl_gbm.h:28:10: fatal error: gbm.h: No such file or direct=
ory
>     28 | #include <gbm.h>
>        |          ^~~~~~~
> compilation terminated.
> [10/15] aarch64-overc-linux-gcc -march=3Darmv8-a+crc
> --sysroot=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/vir=
glrenderer/0.8.2-r0/recipe-sysroot
>
> -Isrc/libvirgl.a.p -Isrc -I../git/src -I../git/src/gallium/include
> -I../git/src/gallium/auxiliary -I../git/src/gallium/auxiliary/util -I.
> -I../git
> -I/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer=
/0.8.2-r0/recipe-sysroot/usr/include/libdrm
>
> -fdiagnostics-color=3Dalways -DNDEBUG -pipe -D_FILE_OFFSET_BITS=3D64
> -std=3Dgnu11 -DHAVE_CONFIG_H=3D1 -D_GNU_SOURCE=3D1
> -Werror=3Dimplicit-function-declaration -Werror=3Dmissing-prototypes
> -Wmissing-prototypes -Werror=3Dint-to-pointer-cast -fvisibility=3Dhidden=
 -O2
> -g -feliminate-unused-debug-types
> -fmacro-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-=
linux/virglrenderer/0.8.2-r0=3D/usr/src/debug/virglrenderer/0.8.2-r0
>
> -fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-=
linux/virglrenderer/0.8.2-r0=3D/usr/src/debug/virglrenderer/0.8.2-r0
>
> -fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-=
linux/virglrenderer/0.8.2-r0/recipe-sysroot=3D
>
> -fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-=
linux/virglrenderer/0.8.2-r0/recipe-sysroot-native=3D
>
> -fPIC -pthread -MD -MQ src/libvirgl.a.p/virgl_glx_context.c.o -MF
> src/libvirgl.a.p/virgl_glx_context.c.o.d -o
> src/libvirgl.a.p/virgl_glx_context.c.o -c ../git/src/virgl_glx_context.c
> FAILED: src/libvirgl.a.p/virgl_glx_context.c.o
> aarch64-overc-linux-gcc -march=3Darmv8-a+crc
> --sysroot=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/vir=
glrenderer/0.8.2-r0/recipe-sysroot
>
> -Isrc/libvirgl.a.p -Isrc -I../git/src -I../git/src/gallium/include
> -I../git/src/gallium/auxiliary -I../git/src/gallium/auxiliary/util -I.
> -I../git
> -I/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer=
/0.8.2-r0/recipe-sysroot/usr/include/libdrm
>
> -fdiagnostics-color=3Dalways -DNDEBUG -pipe -D_FILE_OFFSET_BITS=3D64
> -std=3Dgnu11 -DHAVE_CONFIG_H=3D1 -D_GNU_SOURCE=3D1
> -Werror=3Dimplicit-function-declaration -Werror=3Dmissing-prototypes
> -Wmissing-prototypes -Werror=3Dint-to-pointer-cast -fvisibility=3Dhidden=
 -O2
> -g -feliminate-unused-debug-types
> -fmacro-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-=
linux/virglrenderer/0.8.2-r0=3D/usr/src/debug/virglrenderer/0.8.2-r0
>
> -fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-=
linux/virglrenderer/0.8.2-r0=3D/usr/src/debug/virglrenderer/0.8.2-r0
>
> -fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-=
linux/virglrenderer/0.8.2-r0/recipe-sysroot=3D
>
> -fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-=
linux/virglrenderer/0.8.2-r0/recipe-sysroot-native=3D
>
> -fPIC -pthread -MD -MQ src/libvirgl.a.p/virgl_glx_context.c.o -MF
> src/libvirgl.a.p/virgl_glx_context.c.o.d -o
> src/libvirgl.a.p/virgl_glx_context.c.o -c ../git/src/virgl_glx_context.c
> In file included from ../git/src/vrend_renderer.h:34,
>                   from ../git/src/virgl_glx.h:27,
>                   from ../git/src/virgl_glx_context.c:32:
> ../git/src/virgl_gbm.h:28:10: fatal error: gbm.h: No such file or direct=
ory
>     28 | #include <gbm.h>
>        |          ^~~~~~~
> compilation terminated.
> [11/15] aarch64-overc-linux-gcc -march=3Darmv8-a+crc
> --sysroot=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/vir=
glrenderer/0.8.2-r0/recipe-sysroot
>
> -Ivtest/virgl_test_server.p -Ivtest -I../git/vtest
> -I../git/src/gallium/include -I../git/src/gallium/auxiliary
> -I../git/src/gallium/auxiliary/util -I. -I../git -Isrc -I../git/src
> -fdiagnostics-color=3Dalways -DNDEBUG -pipe -D_FILE_OFFSET_BITS=3D64
> -std=3Dgnu11 -DHAVE_CONFIG_H=3D1 -D_GNU_SOURCE=3D1
> -Werror=3Dimplicit-function-declaration -Werror=3Dmissing-prototypes
> -Wmissing-prototypes -Werror=3Dint-to-pointer-cast -fvisibility=3Dhidden=
 -O2
> -g -feliminate-unused-debug-types
> -fmacro-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-=
linux/virglrenderer/0.8.2-r0=3D/usr/src/debug/virglrenderer/0.8.2-r0
>
> -fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-=
linux/virglrenderer/0.8.2-r0=3D/usr/src/debug/virglrenderer/0.8.2-r0
>
> -fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-=
linux/virglrenderer/0.8.2-r0/recipe-sysroot=3D
>
> -fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-=
linux/virglrenderer/0.8.2-r0/recipe-sysroot-native=3D
>
> -MD -MQ vtest/virgl_test_server.p/vtest_renderer.c.o -MF
> vtest/virgl_test_server.p/vtest_renderer.c.o.d -o
> vtest/virgl_test_server.p/vtest_renderer.c.o -c
> ../git/vtest/vtest_renderer.c
> ninja: build stopped: subcommand failed.
> WARNING:
> /var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0=
.8.2-r0/temp/run.do_compile.754739:152
>
> exit 1 from 'ninja -v -j 16'
> WARNING: Backtrace (BB generated script):
>      #1: meson_do_compile,
> /var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0=
.8.2-r0/temp/run.do_compile.754739,
>
> line 152
>      #2: do_compile,
> /var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0=
.8.2-r0/temp/run.do_compile.754739,
>
> line 147
>      #3: main,
> /var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0=
.8.2-r0/temp/run.do_compile.754739,
>
> line 156
> ERROR: Execution of
> '/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/=
0.8.2-r0/temp/run.do_compile.754739'
>
> failed with exit code 1:
> [1/15] rm -f src/gallium/libgallium.a && aarch64-overc-linux-gcc-ar csrD
> src/gallium/libgallium.a
> src/gallium/libgallium.a.p/meson-generated_.._u_format_table.c.o
> src/gallium/libgallium.a.p/auxiliary_util_u_format.c.o
> src/gallium/libgallium.a.p/auxiliary_util_u_texture.c.o
> src/gallium/libgallium.a.p/auxiliary_util_u_hash_table.c.o
> src/gallium/libgallium.a.p/auxiliary_util_u_debug.c.o
> src/gallium/libgallium.a.p/auxiliary_util_u_cpu_detect.c.o
> src/gallium/libgallium.a.p/auxiliary_util_u_bitmask.c.o
> src/gallium/libgallium.a.p/auxiliary_util_u_surface.c.o
> src/gallium/libgallium.a.p/auxiliary_util_u_math.c.o
> src/gallium/libgallium.a.p/auxiliary_util_u_debug_describe.c.o
> src/gallium/libgallium.a.p/auxiliary_cso_cache_cso_cache.c.o
> src/gallium/libgallium.a.p/auxiliary_cso_cache_cso_hash.c.o
> src/gallium/libgallium.a.p/auxiliary_tgsi_tgsi_dump.c.o
> src/gallium/libgallium.a.p/auxiliary_tgsi_tgsi_ureg.c.o
> src/gallium/libgallium.a.p/auxiliary_tgsi_tgsi_build.c.o
> src/gallium/libgallium.a.p/auxiliary_tgsi_tgsi_scan.c.o
> src/gallium/libgallium.a.p/auxiliary_tgsi_tgsi_info.c.o
> src/gallium/libgallium.a.p/auxiliary_tgsi_tgsi_parse.c.o
> src/gallium/libgallium.a.p/auxiliary_tgsi_tgsi_text.c.o
> src/gallium/libgallium.a.p/auxiliary_tgsi_tgsi_strings.c.o
> src/gallium/libgallium.a.p/auxiliary_tgsi_tgsi_sanity.c.o
> src/gallium/libgallium.a.p/auxiliary_tgsi_tgsi_iterate.c.o
> src/gallium/libgallium.a.p/auxiliary_tgsi_tgsi_util.c.o
> src/gallium/libgallium.a.p/auxiliary_tgsi_tgsi_transform.c.o
> src/gallium/libgallium.a.p/auxiliary_os_os_misc.c.o
> [2/15] aarch64-overc-linux-gcc -march=3Darmv8-a+crc
> --sysroot=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/vir=
glrenderer/0.8.2-r0/recipe-sysroot
>
> -Ivtest/virgl_test_server.p -Ivtest -I../git/vtest
> -I../git/src/gallium/include -I../git/src/gallium/auxiliary
> -I../git/src/gallium/auxiliary/util -I. -I../git -Isrc -I../git/src
> -fdiagnostics-color=3Dalways -DNDEBUG -pipe -D_FILE_OFFSET_BITS=3D64
> -std=3Dgnu11 -DHAVE_CONFIG_H=3D1 -D_GNU_SOURCE=3D1
> -Werror=3Dimplicit-function-declaration -Werror=3Dmissing-prototypes
> -Wmissing-prototypes -Werror=3Dint-to-pointer-cast -fvisibility=3Dhidden=
 -O2
> -g -feliminate-unused-debug-types
> -fmacro-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-=
linux/virglrenderer/0.8.2-r0=3D/usr/src/debug/virglrenderer/0.8.2-r0
>
> -fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-=
linux/virglrenderer/0.8.2-r0=3D/usr/src/debug/virglrenderer/0.8.2-r0
>
> -fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-=
linux/virglrenderer/0.8.2-r0/recipe-sysroot=3D
>
> -fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-=
linux/virglrenderer/0.8.2-r0/recipe-sysroot-native=3D
>
> -MD -MQ vtest/virgl_test_server.p/vtest_shm.c.o -MF
> vtest/virgl_test_server.p/vtest_shm.c.o.d -o
> vtest/virgl_test_server.p/vtest_shm.c.o -c ../git/vtest/vtest_shm.c
> [3/15] aarch64-overc-linux-gcc -march=3Darmv8-a+crc
> --sysroot=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/vir=
glrenderer/0.8.2-r0/recipe-sysroot
>
> -Isrc/libvirgl.a.p -Isrc -I../git/src -I../git/src/gallium/include
> -I../git/src/gallium/auxiliary -I../git/src/gallium/auxiliary/util -I.
> -I../git
> -I/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer=
/0.8.2-r0/recipe-sysroot/usr/include/libdrm
>
> -fdiagnostics-color=3Dalways -DNDEBUG -pipe -D_FILE_OFFSET_BITS=3D64
> -std=3Dgnu11 -DHAVE_CONFIG_H=3D1 -D_GNU_SOURCE=3D1
> -Werror=3Dimplicit-function-declaration -Werror=3Dmissing-prototypes
> -Wmissing-prototypes -Werror=3Dint-to-pointer-cast -fvisibility=3Dhidden=
 -O2
> -g -feliminate-unused-debug-types
> -fmacro-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-=
linux/virglrenderer/0.8.2-r0=3D/usr/src/debug/virglrenderer/0.8.2-r0
>
> -fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-=
linux/virglrenderer/0.8.2-r0=3D/usr/src/debug/virglrenderer/0.8.2-r0
>
> -fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-=
linux/virglrenderer/0.8.2-r0/recipe-sysroot=3D
>
> -fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-=
linux/virglrenderer/0.8.2-r0/recipe-sysroot-native=3D
>
> -fPIC -pthread -MD -MQ src/libvirgl.a.p/vrend_debug.c.o -MF
> src/libvirgl.a.p/vrend_debug.c.o.d -o src/libvirgl.a.p/vrend_debug.c.o
> -c ../git/src/vrend_debug.c
> FAILED: src/libvirgl.a.p/vrend_debug.c.o
> aarch64-overc-linux-gcc -march=3Darmv8-a+crc
> --sysroot=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/vir=
glrenderer/0.8.2-r0/recipe-sysroot
>
> -Isrc/libvirgl.a.p -Isrc -I../git/src -I../git/src/gallium/include
> -I../git/src/gallium/auxiliary -I../git/src/gallium/auxiliary/util -I.
> -I../git
> -I/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer=
/0.8.2-r0/recipe-sysroot/usr/include/libdrm
>
> -fdiagnostics-color=3Dalways -DNDEBUG -pipe -D_FILE_OFFSET_BITS=3D64
> -std=3Dgnu11 -DHAVE_CONFIG_H=3D1 -D_GNU_SOURCE=3D1
> -Werror=3Dimplicit-function-declaration -Werror=3Dmissing-prototypes
> -Wmissing-prototypes -Werror=3Dint-to-pointer-cast -fvisibility=3Dhidden=
 -O2
> -g -feliminate-unused-debug-types
> -fmacro-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-=
linux/virglrenderer/0.8.2-r0=3D/usr/src/debug/virglrenderer/0.8.2-r0
>
> -fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-=
linux/virglrenderer/0.8.2-r0=3D/usr/src/debug/virglrenderer/0.8.2-r0
>
> -fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-=
linux/virglrenderer/0.8.2-r0/recipe-sysroot=3D
>
> -fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-=
linux/virglrenderer/0.8.2-r0/recipe-sysroot-native=3D
>
> -fPIC -pthread -MD -MQ src/libvirgl.a.p/vrend_debug.c.o -MF
> src/libvirgl.a.p/vrend_debug.c.o.d -o src/libvirgl.a.p/vrend_debug.c.o
> -c ../git/src/vrend_debug.c
> In file included from ../git/src/vrend_renderer.h:34,
>                   from ../git/src/vrend_debug.c:26:
> ../git/src/virgl_gbm.h:28:10: fatal error: gbm.h: No such file or direct=
ory
>     28 | #include <gbm.h>
>        |          ^~~~~~~
> compilation terminated.
> [4/15] aarch64-overc-linux-gcc -march=3Darmv8-a+crc
> --sysroot=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/vir=
glrenderer/0.8.2-r0/recipe-sysroot
>
> -Isrc/libvirgl.a.p -Isrc -I../git/src -I../git/src/gallium/include
> -I../git/src/gallium/auxiliary -I../git/src/gallium/auxiliary/util -I.
> -I../git
> -I/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer=
/0.8.2-r0/recipe-sysroot/usr/include/libdrm
>
> -fdiagnostics-color=3Dalways -DNDEBUG -pipe -D_FILE_OFFSET_BITS=3D64
> -std=3Dgnu11 -DHAVE_CONFIG_H=3D1 -D_GNU_SOURCE=3D1
> -Werror=3Dimplicit-function-declaration -Werror=3Dmissing-prototypes
> -Wmissing-prototypes -Werror=3Dint-to-pointer-cast -fvisibility=3Dhidden=
 -O2
> -g -feliminate-unused-debug-types
> -fmacro-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-=
linux/virglrenderer/0.8.2-r0=3D/usr/src/debug/virglrenderer/0.8.2-r0
>
> -fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-=
linux/virglrenderer/0.8.2-r0=3D/usr/src/debug/virglrenderer/0.8.2-r0
>
> -fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-=
linux/virglrenderer/0.8.2-r0/recipe-sysroot=3D
>
> -fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-=
linux/virglrenderer/0.8.2-r0/recipe-sysroot-native=3D
>
> -fPIC -pthread -MD -MQ src/libvirgl.a.p/vrend_renderer.c.o -MF
> src/libvirgl.a.p/vrend_renderer.c.o.d -o
> src/libvirgl.a.p/vrend_renderer.c.o -c ../git/src/vrend_renderer.c
> FAILED: src/libvirgl.a.p/vrend_renderer.c.o
> aarch64-overc-linux-gcc -march=3Darmv8-a+crc
> --sysroot=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/vir=
glrenderer/0.8.2-r0/recipe-sysroot
>
> -Isrc/libvirgl.a.p -Isrc -I../git/src -I../git/src/gallium/include
> -I../git/src/gallium/auxiliary -I../git/src/gallium/auxiliary/util -I.
> -I../git
> -I/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer=
/0.8.2-r0/recipe-sysroot/usr/include/libdrm
>
> -fdiagnostics-color=3Dalways -DNDEBUG -pipe -D_FILE_OFFSET_BITS=3D64
> -std=3Dgnu11 -DHAVE_CONFIG_H=3D1 -D_GNU_SOURCE=3D1
> -Werror=3Dimplicit-function-declaration -Werror=3Dmissing-prototypes
> -Wmissing-prototypes -Werror=3Dint-to-pointer-cast -fvisibility=3Dhidden=
 -O2
> -g -feliminate-unused-debug-types
> -fmacro-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-=
linux/virglrenderer/0.8.2-r0=3D/usr/src/debug/virglrenderer/0.8.2-r0
>
> -fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-=
linux/virglrenderer/0.8.2-r0=3D/usr/src/debug/virglrenderer/0.8.2-r0
>
> -fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-=
linux/virglrenderer/0.8.2-r0/recipe-sysroot=3D
>
> -fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-=
linux/virglrenderer/0.8.2-r0/recipe-sysroot-native=3D
>
> -fPIC -pthread -MD -MQ src/libvirgl.a.p/vrend_renderer.c.o -MF
> src/libvirgl.a.p/vrend_renderer.c.o.d -o
> src/libvirgl.a.p/vrend_renderer.c.o -c ../git/src/vrend_renderer.c
> In file included from ../git/src/vrend_renderer.h:34,
>                   from ../git/src/vrend_renderer.c:49:
> ../git/src/virgl_gbm.h:28:10: fatal error: gbm.h: No such file or direct=
ory
>     28 | #include <gbm.h>
>        |          ^~~~~~~
> compilation terminated.
> [5/15] aarch64-overc-linux-gcc -march=3Darmv8-a+crc
> --sysroot=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/vir=
glrenderer/0.8.2-r0/recipe-sysroot
>
> -Isrc/libvirgl.a.p -Isrc -I../git/src -I../git/src/gallium/include
> -I../git/src/gallium/auxiliary -I../git/src/gallium/auxiliary/util -I.
> -I../git
> -I/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer=
/0.8.2-r0/recipe-sysroot/usr/include/libdrm
>
> -fdiagnostics-color=3Dalways -DNDEBUG -pipe -D_FILE_OFFSET_BITS=3D64
> -std=3Dgnu11 -DHAVE_CONFIG_H=3D1 -D_GNU_SOURCE=3D1
> -Werror=3Dimplicit-function-declaration -Werror=3Dmissing-prototypes
> -Wmissing-prototypes -Werror=3Dint-to-pointer-cast -fvisibility=3Dhidden=
 -O2
> -g -feliminate-unused-debug-types
> -fmacro-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-=
linux/virglrenderer/0.8.2-r0=3D/usr/src/debug/virglrenderer/0.8.2-r0
>
> -fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-=
linux/virglrenderer/0.8.2-r0=3D/usr/src/debug/virglrenderer/0.8.2-r0
>
> -fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-=
linux/virglrenderer/0.8.2-r0/recipe-sysroot=3D
>
> -fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-=
linux/virglrenderer/0.8.2-r0/recipe-sysroot-native=3D
>
> -fPIC -pthread -MD -MQ src/libvirgl.a.p/vrend_blitter.c.o -MF
> src/libvirgl.a.p/vrend_blitter.c.o.d -o
> src/libvirgl.a.p/vrend_blitter.c.o -c ../git/src/vrend_blitter.c
> FAILED: src/libvirgl.a.p/vrend_blitter.c.o
> aarch64-overc-linux-gcc -march=3Darmv8-a+crc
> --sysroot=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/vir=
glrenderer/0.8.2-r0/recipe-sysroot
>
> -Isrc/libvirgl.a.p -Isrc -I../git/src -I../git/src/gallium/include
> -I../git/src/gallium/auxiliary -I../git/src/gallium/auxiliary/util -I.
> -I../git
> -I/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer=
/0.8.2-r0/recipe-sysroot/usr/include/libdrm
>
> -fdiagnostics-color=3Dalways -DNDEBUG -pipe -D_FILE_OFFSET_BITS=3D64
> -std=3Dgnu11 -DHAVE_CONFIG_H=3D1 -D_GNU_SOURCE=3D1
> -Werror=3Dimplicit-function-declaration -Werror=3Dmissing-prototypes
> -Wmissing-prototypes -Werror=3Dint-to-pointer-cast -fvisibility=3Dhidden=
 -O2
> -g -feliminate-unused-debug-types
> -fmacro-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-=
linux/virglrenderer/0.8.2-r0=3D/usr/src/debug/virglrenderer/0.8.2-r0
>
> -fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-=
linux/virglrenderer/0.8.2-r0=3D/usr/src/debug/virglrenderer/0.8.2-r0
>
> -fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-=
linux/virglrenderer/0.8.2-r0/recipe-sysroot=3D
>
> -fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-=
linux/virglrenderer/0.8.2-r0/recipe-sysroot-native=3D
>
> -fPIC -pthread -MD -MQ src/libvirgl.a.p/vrend_blitter.c.o -MF
> src/libvirgl.a.p/vrend_blitter.c.o.d -o
> src/libvirgl.a.p/vrend_blitter.c.o -c ../git/src/vrend_blitter.c
> In file included from ../git/src/vrend_renderer.h:34,
>                   from ../git/src/vrend_blitter.c:48:
> ../git/src/virgl_gbm.h:28:10: fatal error: gbm.h: No such file or direct=
ory
>     28 | #include <gbm.h>
>        |          ^~~~~~~
> compilation terminated.
> [6/15] aarch64-overc-linux-gcc -march=3Darmv8-a+crc
> --sysroot=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/vir=
glrenderer/0.8.2-r0/recipe-sysroot
>
> -Ivtest/virgl_test_server.p -Ivtest -I../git/vtest
> -I../git/src/gallium/include -I../git/src/gallium/auxiliary
> -I../git/src/gallium/auxiliary/util -I. -I../git -Isrc -I../git/src
> -fdiagnostics-color=3Dalways -DNDEBUG -pipe -D_FILE_OFFSET_BITS=3D64
> -std=3Dgnu11 -DHAVE_CONFIG_H=3D1 -D_GNU_SOURCE=3D1
> -Werror=3Dimplicit-function-declaration -Werror=3Dmissing-prototypes
> -Wmissing-prototypes -Werror=3Dint-to-pointer-cast -fvisibility=3Dhidden=
 -O2
> -g -feliminate-unused-debug-types
> -fmacro-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-=
linux/virglrenderer/0.8.2-r0=3D/usr/src/debug/virglrenderer/0.8.2-r0
>
> -fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-=
linux/virglrenderer/0.8.2-r0=3D/usr/src/debug/virglrenderer/0.8.2-r0
>
> -fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-=
linux/virglrenderer/0.8.2-r0/recipe-sysroot=3D
>
> -fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-=
linux/virglrenderer/0.8.2-r0/recipe-sysroot-native=3D
>
> -MD -MQ vtest/virgl_test_server.p/vtest_server.c.o -MF
> vtest/virgl_test_server.p/vtest_server.c.o.d -o
> vtest/virgl_test_server.p/vtest_server.c.o -c ../git/vtest/vtest_server.=
c
> [7/15] aarch64-overc-linux-gcc -march=3Darmv8-a+crc
> --sysroot=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/vir=
glrenderer/0.8.2-r0/recipe-sysroot
>
> -Isrc/libvirglrenderer.so.1.4.2.p -Isrc -I../git/src
> -I../git/src/gallium/include -I../git/src/gallium/auxiliary
> -I../git/src/gallium/auxiliary/util -I. -I../git
> -I/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer=
/0.8.2-r0/recipe-sysroot/usr/include/libdrm
>
> -fdiagnostics-color=3Dalways -DNDEBUG -pipe -D_FILE_OFFSET_BITS=3D64
> -std=3Dgnu11 -DHAVE_CONFIG_H=3D1 -D_GNU_SOURCE=3D1
> -Werror=3Dimplicit-function-declaration -Werror=3Dmissing-prototypes
> -Wmissing-prototypes -Werror=3Dint-to-pointer-cast -fvisibility=3Dhidden=
 -O2
> -g -feliminate-unused-debug-types
> -fmacro-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-=
linux/virglrenderer/0.8.2-r0=3D/usr/src/debug/virglrenderer/0.8.2-r0
>
> -fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-=
linux/virglrenderer/0.8.2-r0=3D/usr/src/debug/virglrenderer/0.8.2-r0
>
> -fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-=
linux/virglrenderer/0.8.2-r0/recipe-sysroot=3D
>
> -fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-=
linux/virglrenderer/0.8.2-r0/recipe-sysroot-native=3D
>
> -fPIC -pthread -MD -MQ src/libvirglrenderer.so.1.4.2.p/virglrenderer.c.o
> -MF src/libvirglrenderer.so.1.4.2.p/virglrenderer.c.o.d -o
> src/libvirglrenderer.so.1.4.2.p/virglrenderer.c.o -c
> ../git/src/virglrenderer.c
> FAILED: src/libvirglrenderer.so.1.4.2.p/virglrenderer.c.o
> aarch64-overc-linux-gcc -march=3Darmv8-a+crc
> --sysroot=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/vir=
glrenderer/0.8.2-r0/recipe-sysroot
>
> -Isrc/libvirglrenderer.so.1.4.2.p -Isrc -I../git/src
> -I../git/src/gallium/include -I../git/src/gallium/auxiliary
> -I../git/src/gallium/auxiliary/util -I. -I../git
> -I/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer=
/0.8.2-r0/recipe-sysroot/usr/include/libdrm
>
> -fdiagnostics-color=3Dalways -DNDEBUG -pipe -D_FILE_OFFSET_BITS=3D64
> -std=3Dgnu11 -DHAVE_CONFIG_H=3D1 -D_GNU_SOURCE=3D1
> -Werror=3Dimplicit-function-declaration -Werror=3Dmissing-prototypes
> -Wmissing-prototypes -Werror=3Dint-to-pointer-cast -fvisibility=3Dhidden=
 -O2
> -g -feliminate-unused-debug-types
> -fmacro-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-=
linux/virglrenderer/0.8.2-r0=3D/usr/src/debug/virglrenderer/0.8.2-r0
>
> -fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-=
linux/virglrenderer/0.8.2-r0=3D/usr/src/debug/virglrenderer/0.8.2-r0
>
> -fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-=
linux/virglrenderer/0.8.2-r0/recipe-sysroot=3D
>
> -fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-=
linux/virglrenderer/0.8.2-r0/recipe-sysroot-native=3D
>
> -fPIC -pthread -MD -MQ src/libvirglrenderer.so.1.4.2.p/virglrenderer.c.o
> -MF src/libvirglrenderer.so.1.4.2.p/virglrenderer.c.o.d -o
> src/libvirglrenderer.so.1.4.2.p/virglrenderer.c.o -c
> ../git/src/virglrenderer.c
> In file included from ../git/src/vrend_renderer.h:34,
>                   from ../git/src/virglrenderer.c:37:
> ../git/src/virgl_gbm.h:28:10: fatal error: gbm.h: No such file or direct=
ory
>     28 | #include <gbm.h>
>        |          ^~~~~~~
> compilation terminated.
> [8/15] aarch64-overc-linux-gcc -march=3Darmv8-a+crc
> --sysroot=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/vir=
glrenderer/0.8.2-r0/recipe-sysroot
>
> -Isrc/libvirgl.a.p -Isrc -I../git/src -I../git/src/gallium/include
> -I../git/src/gallium/auxiliary -I../git/src/gallium/auxiliary/util -I.
> -I../git
> -I/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer=
/0.8.2-r0/recipe-sysroot/usr/include/libdrm
>
> -fdiagnostics-color=3Dalways -DNDEBUG -pipe -D_FILE_OFFSET_BITS=3D64
> -std=3Dgnu11 -DHAVE_CONFIG_H=3D1 -D_GNU_SOURCE=3D1
> -Werror=3Dimplicit-function-declaration -Werror=3Dmissing-prototypes
> -Wmissing-prototypes -Werror=3Dint-to-pointer-cast -fvisibility=3Dhidden=
 -O2
> -g -feliminate-unused-debug-types
> -fmacro-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-=
linux/virglrenderer/0.8.2-r0=3D/usr/src/debug/virglrenderer/0.8.2-r0
>
> -fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-=
linux/virglrenderer/0.8.2-r0=3D/usr/src/debug/virglrenderer/0.8.2-r0
>
> -fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-=
linux/virglrenderer/0.8.2-r0/recipe-sysroot=3D
>
> -fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-=
linux/virglrenderer/0.8.2-r0/recipe-sysroot-native=3D
>
> -fPIC -pthread -MD -MQ src/libvirgl.a.p/vrend_formats.c.o -MF
> src/libvirgl.a.p/vrend_formats.c.o.d -o
> src/libvirgl.a.p/vrend_formats.c.o -c ../git/src/vrend_formats.c
> FAILED: src/libvirgl.a.p/vrend_formats.c.o
> aarch64-overc-linux-gcc -march=3Darmv8-a+crc
> --sysroot=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/vir=
glrenderer/0.8.2-r0/recipe-sysroot
>
> -Isrc/libvirgl.a.p -Isrc -I../git/src -I../git/src/gallium/include
> -I../git/src/gallium/auxiliary -I../git/src/gallium/auxiliary/util -I.
> -I../git
> -I/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer=
/0.8.2-r0/recipe-sysroot/usr/include/libdrm
>
> -fdiagnostics-color=3Dalways -DNDEBUG -pipe -D_FILE_OFFSET_BITS=3D64
> -std=3Dgnu11 -DHAVE_CONFIG_H=3D1 -D_GNU_SOURCE=3D1
> -Werror=3Dimplicit-function-declaration -Werror=3Dmissing-prototypes
> -Wmissing-prototypes -Werror=3Dint-to-pointer-cast -fvisibility=3Dhidden=
 -O2
> -g -feliminate-unused-debug-types
> -fmacro-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-=
linux/virglrenderer/0.8.2-r0=3D/usr/src/debug/virglrenderer/0.8.2-r0
>
> -fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-=
linux/virglrenderer/0.8.2-r0=3D/usr/src/debug/virglrenderer/0.8.2-r0
>
> -fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-=
linux/virglrenderer/0.8.2-r0/recipe-sysroot=3D
>
> -fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-=
linux/virglrenderer/0.8.2-r0/recipe-sysroot-native=3D
>
> -fPIC -pthread -MD -MQ src/libvirgl.a.p/vrend_formats.c.o -MF
> src/libvirgl.a.p/vrend_formats.c.o.d -o
> src/libvirgl.a.p/vrend_formats.c.o -c ../git/src/vrend_formats.c
> In file included from ../git/src/vrend_renderer.h:34,
>                   from ../git/src/vrend_formats.c:26:
> ../git/src/virgl_gbm.h:28:10: fatal error: gbm.h: No such file or direct=
ory
>     28 | #include <gbm.h>
>        |          ^~~~~~~
> compilation terminated.
> [9/15] aarch64-overc-linux-gcc -march=3Darmv8-a+crc
> --sysroot=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/vir=
glrenderer/0.8.2-r0/recipe-sysroot
>
> -Isrc/libvirgl.a.p -Isrc -I../git/src -I../git/src/gallium/include
> -I../git/src/gallium/auxiliary -I../git/src/gallium/auxiliary/util -I.
> -I../git
> -I/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer=
/0.8.2-r0/recipe-sysroot/usr/include/libdrm
>
> -fdiagnostics-color=3Dalways -DNDEBUG -pipe -D_FILE_OFFSET_BITS=3D64
> -std=3Dgnu11 -DHAVE_CONFIG_H=3D1 -D_GNU_SOURCE=3D1
> -Werror=3Dimplicit-function-declaration -Werror=3Dmissing-prototypes
> -Wmissing-prototypes -Werror=3Dint-to-pointer-cast -fvisibility=3Dhidden=
 -O2
> -g -feliminate-unused-debug-types
> -fmacro-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-=
linux/virglrenderer/0.8.2-r0=3D/usr/src/debug/virglrenderer/0.8.2-r0
>
> -fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-=
linux/virglrenderer/0.8.2-r0=3D/usr/src/debug/virglrenderer/0.8.2-r0
>
> -fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-=
linux/virglrenderer/0.8.2-r0/recipe-sysroot=3D
>
> -fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-=
linux/virglrenderer/0.8.2-r0/recipe-sysroot-native=3D
>
> -fPIC -pthread -MD -MQ src/libvirgl.a.p/vrend_decode.c.o -MF
> src/libvirgl.a.p/vrend_decode.c.o.d -o src/libvirgl.a.p/vrend_decode.c.o
> -c ../git/src/vrend_decode.c
> FAILED: src/libvirgl.a.p/vrend_decode.c.o
> aarch64-overc-linux-gcc -march=3Darmv8-a+crc
> --sysroot=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/vir=
glrenderer/0.8.2-r0/recipe-sysroot
>
> -Isrc/libvirgl.a.p -Isrc -I../git/src -I../git/src/gallium/include
> -I../git/src/gallium/auxiliary -I../git/src/gallium/auxiliary/util -I.
> -I../git
> -I/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer=
/0.8.2-r0/recipe-sysroot/usr/include/libdrm
>
> -fdiagnostics-color=3Dalways -DNDEBUG -pipe -D_FILE_OFFSET_BITS=3D64
> -std=3Dgnu11 -DHAVE_CONFIG_H=3D1 -D_GNU_SOURCE=3D1
> -Werror=3Dimplicit-function-declaration -Werror=3Dmissing-prototypes
> -Wmissing-prototypes -Werror=3Dint-to-pointer-cast -fvisibility=3Dhidden=
 -O2
> -g -feliminate-unused-debug-types
> -fmacro-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-=
linux/virglrenderer/0.8.2-r0=3D/usr/src/debug/virglrenderer/0.8.2-r0
>
> -fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-=
linux/virglrenderer/0.8.2-r0=3D/usr/src/debug/virglrenderer/0.8.2-r0
>
> -fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-=
linux/virglrenderer/0.8.2-r0/recipe-sysroot=3D
>
> -fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-=
linux/virglrenderer/0.8.2-r0/recipe-sysroot-native=3D
>
> -fPIC -pthread -MD -MQ src/libvirgl.a.p/vrend_decode.c.o -MF
> src/libvirgl.a.p/vrend_decode.c.o.d -o src/libvirgl.a.p/vrend_decode.c.o
> -c ../git/src/vrend_decode.c
> In file included from ../git/src/vrend_renderer.h:34,
>                   from ../git/src/vrend_decode.c:34:
> ../git/src/virgl_gbm.h:28:10: fatal error: gbm.h: No such file or direct=
ory
>     28 | #include <gbm.h>
>        |          ^~~~~~~
> compilation terminated.
> [10/15] aarch64-overc-linux-gcc -march=3Darmv8-a+crc
> --sysroot=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/vir=
glrenderer/0.8.2-r0/recipe-sysroot
>
> -Isrc/libvirgl.a.p -Isrc -I../git/src -I../git/src/gallium/include
> -I../git/src/gallium/auxiliary -I../git/src/gallium/auxiliary/util -I.
> -I../git
> -I/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer=
/0.8.2-r0/recipe-sysroot/usr/include/libdrm
>
> -fdiagnostics-color=3Dalways -DNDEBUG -pipe -D_FILE_OFFSET_BITS=3D64
> -std=3Dgnu11 -DHAVE_CONFIG_H=3D1 -D_GNU_SOURCE=3D1
> -Werror=3Dimplicit-function-declaration -Werror=3Dmissing-prototypes
> -Wmissing-prototypes -Werror=3Dint-to-pointer-cast -fvisibility=3Dhidden=
 -O2
> -g -feliminate-unused-debug-types
> -fmacro-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-=
linux/virglrenderer/0.8.2-r0=3D/usr/src/debug/virglrenderer/0.8.2-r0
>
> -fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-=
linux/virglrenderer/0.8.2-r0=3D/usr/src/debug/virglrenderer/0.8.2-r0
>
> -fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-=
linux/virglrenderer/0.8.2-r0/recipe-sysroot=3D
>
> -fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-=
linux/virglrenderer/0.8.2-r0/recipe-sysroot-native=3D
>
> -fPIC -pthread -MD -MQ src/libvirgl.a.p/virgl_glx_context.c.o -MF
> src/libvirgl.a.p/virgl_glx_context.c.o.d -o
> src/libvirgl.a.p/virgl_glx_context.c.o -c ../git/src/virgl_glx_context.c
> FAILED: src/libvirgl.a.p/virgl_glx_context.c.o
> aarch64-overc-linux-gcc -march=3Darmv8-a+crc
> --sysroot=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/vir=
glrenderer/0.8.2-r0/recipe-sysroot
>
> -Isrc/libvirgl.a.p -Isrc -I../git/src -I../git/src/gallium/include
> -I../git/src/gallium/auxiliary -I../git/src/gallium/auxiliary/util -I.
> -I../git
> -I/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer=
/0.8.2-r0/recipe-sysroot/usr/include/libdrm
>
> -fdiagnostics-color=3Dalways -DNDEBUG -pipe -D_FILE_OFFSET_BITS=3D64
> -std=3Dgnu11 -DHAVE_CONFIG_H=3D1 -D_GNU_SOURCE=3D1
> -Werror=3Dimplicit-function-declaration -Werror=3Dmissing-prototypes
> -Wmissing-prototypes -Werror=3Dint-to-pointer-cast -fvisibility=3Dhidden=
 -O2
> -g -feliminate-unused-debug-types
> -fmacro-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-=
linux/virglrenderer/0.8.2-r0=3D/usr/src/debug/virglrenderer/0.8.2-r0
>
> -fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-=
linux/virglrenderer/0.8.2-r0=3D/usr/src/debug/virglrenderer/0.8.2-r0
>
> -fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-=
linux/virglrenderer/0.8.2-r0/recipe-sysroot=3D
>
> -fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-=
linux/virglrenderer/0.8.2-r0/recipe-sysroot-native=3D
>
> -fPIC -pthread -MD -MQ src/libvirgl.a.p/virgl_glx_context.c.o -MF
> src/libvirgl.a.p/virgl_glx_context.c.o.d -o
> src/libvirgl.a.p/virgl_glx_context.c.o -c ../git/src/virgl_glx_context.c
> In file included from ../git/src/vrend_renderer.h:34,
>                   from ../git/src/virgl_glx.h:27,
>                   from ../git/src/virgl_glx_context.c:32:
> ../git/src/virgl_gbm.h:28:10: fatal error: gbm.h: No such file or direct=
ory
>     28 | #include <gbm.h>
>        |          ^~~~~~~
> compilation terminated.
> [11/15] aarch64-overc-linux-gcc -march=3Darmv8-a+crc
> --sysroot=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/vir=
glrenderer/0.8.2-r0/recipe-sysroot
>
> -Ivtest/virgl_test_server.p -Ivtest -I../git/vtest
> -I../git/src/gallium/include -I../git/src/gallium/auxiliary
> -I../git/src/gallium/auxiliary/util -I. -I../git -Isrc -I../git/src
> -fdiagnostics-color=3Dalways -DNDEBUG -pipe -D_FILE_OFFSET_BITS=3D64
> -std=3Dgnu11 -DHAVE_CONFIG_H=3D1 -D_GNU_SOURCE=3D1
> -Werror=3Dimplicit-function-declaration -Werror=3Dmissing-prototypes
> -Wmissing-prototypes -Werror=3Dint-to-pointer-cast -fvisibility=3Dhidden=
 -O2
> -g -feliminate-unused-debug-types
> -fmacro-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-=
linux/virglrenderer/0.8.2-r0=3D/usr/src/debug/virglrenderer/0.8.2-r0
>
> -fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-=
linux/virglrenderer/0.8.2-r0=3D/usr/src/debug/virglrenderer/0.8.2-r0
>
> -fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-=
linux/virglrenderer/0.8.2-r0/recipe-sysroot=3D
>
> -fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-=
linux/virglrenderer/0.8.2-r0/recipe-sysroot-native=3D
>
> -MD -MQ vtest/virgl_test_server.p/vtest_renderer.c.o -MF
> vtest/virgl_test_server.p/vtest_renderer.c.o.d -o
> vtest/virgl_test_server.p/vtest_renderer.c.o -c
> ../git/vtest/vtest_renderer.c
> ninja: build stopped: subcommand failed.
> WARNING:
> /var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0=
.8.2-r0/temp/run.do_compile.754739:152
>
> exit 1 from 'ninja -v -j 16'
> WARNING: Backtrace (BB generated script):
>      #1: meson_do_compile,
> /var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0=
.8.2-r0/temp/run.do_compile.754739,
>
> line 152
>      #2: do_compile,
> /var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0=
.8.2-r0/temp/run.do_compile.754739,
>
> line 147
>      #3: main,
> /var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0=
.8.2-r0/temp/run.do_compile.754739,
>
> line 156
>
> Backtrace (metadata-relative locations):
>      #1: meson_do_compile,
> /home/dingo/overc/poky/meta/classes/meson.bbclass, line 180
>      #2: do_compile, autogenerated, line 2
>
>
>=20
>
>

--00000000000031773005b188c070
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Virgl only has been verified with Mesa, if your bsp provi=
des something else for virtual/libgl, it is not going to work. Please ask y=
our bsp supplier (Nvidia I guess?) what to do.=C2=A0</div><div dir=3D"auto"=
><br></div><div dir=3D"auto">Alex</div><div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Tue 13. Oct 2020 at 6.28, Yocto &l=
t;<a href=3D"mailto:yocto@optimcloud.com">yocto@optimcloud.com</a>&gt; wrot=
e:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0=
.8ex;border-left-width:1px;border-left-style:solid;padding-left:1ex;border-=
left-color:rgb(204,204,204)">virglrenderer appears broken, occurs on both F=
edora-32 and Debian-10<br>
<br>
Build Configuration:<br>
BB_VERSION=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D=
 &quot;1.47.0&quot;<br>
BUILD_SYS=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 =3D &quot;x86_64-linux&quot;<br>
NATIVELSBSTRING=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;fedora-32&quot;<br=
>
TARGET_SYS=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D=
 &quot;aarch64-overc-linux&quot;<br>
MACHINE=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 =3D &quot;jetson-xavier-nx-devkit&quot;<br>
DISTRO=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 =3D &quot;overc&quot;<br>
DISTRO_VERSION=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;1.0&quot;<br>
TUNE_FEATURES=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;aarch64 =
armv8a crc&quot;<br>
TARGET_FPU=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D=
 &quot;&quot;<br>
meta<br>
meta-poky<br>
meta-yocto-bsp=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;master:0c0b23=
6b4c72d30e0e88f5f0310476569d444e83&quot;<br>
meta-tegra=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D=
 &quot;master:01c3205183af0236101b423d48a8af167baee8b1&quot;<br>
meta-oe<br>
meta-python<br>
meta-networking<br>
meta-filesystems<br>
meta-gnome<br>
meta-xfce<br>
meta-multimedia<br>
meta-perl=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 =3D &quot;master:d25d21a8b40d3fe29298f3aa43328477ce4d8ee7&quot;<br>
meta-overc<br>
meta-cube=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 =3D &quot;master:264d1d0949fb5e9ec8e39b1f7604086d59ec2047&quot;<br>
meta-awnix=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D=
 &quot;master:c616414c6ed4f6f2ab75703ce5a3e84acacd3c47&quot;<br>
meta-virtualization=C2=A0 =3D &quot;master:43a5cc7f031da1ef75b1ff33def3ef4=
984ad72e3&quot;<br>
meta-cloud-services=C2=A0 =3D &quot;master:910195eb791d754d394ba1013a258ab=
120c995e9&quot;<br>
meta-security=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;master:3=
ce8b759c97706d6f78928c38b6ebac4edfd95a5&quot;<br>
meta-selinux=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;mas=
ter:6e1100d29aec118df2025c46c77f4c8aa8da4e76&quot;<br>
<br>
<br>
=E2=9D=AF cat <br>
/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8=
.2-r0/temp/log.do_compile.754739<br>
DEBUG: Executing shell function do_compile<br>
[1/15] rm -f src/gallium/libgallium.a &amp;&amp; aarch64-overc-linux-gcc-a=
r csrD <br>
src/gallium/libgallium.a <br>
src/gallium/libgallium.a.p/meson-generated_.._u_format_table.c.o <br>
src/gallium/libgallium.a.p/auxiliary_util_u_format.c.o <br>
src/gallium/libgallium.a.p/auxiliary_util_u_texture.c.o <br>
src/gallium/libgallium.a.p/auxiliary_util_u_hash_table.c.o <br>
src/gallium/libgallium.a.p/auxiliary_util_u_debug.c.o <br>
src/gallium/libgallium.a.p/auxiliary_util_u_cpu_detect.c.o <br>
src/gallium/libgallium.a.p/auxiliary_util_u_bitmask.c.o <br>
src/gallium/libgallium.a.p/auxiliary_util_u_surface.c.o <br>
src/gallium/libgallium.a.p/auxiliary_util_u_math.c.o <br>
src/gallium/libgallium.a.p/auxiliary_util_u_debug_describe.c.o <br>
src/gallium/libgallium.a.p/auxiliary_cso_cache_cso_cache.c.o <br>
src/gallium/libgallium.a.p/auxiliary_cso_cache_cso_hash.c.o <br>
src/gallium/libgallium.a.p/auxiliary_tgsi_tgsi_dump.c.o <br>
src/gallium/libgallium.a.p/auxiliary_tgsi_tgsi_ureg.c.o <br>
src/gallium/libgallium.a.p/auxiliary_tgsi_tgsi_build.c.o <br>
src/gallium/libgallium.a.p/auxiliary_tgsi_tgsi_scan.c.o <br>
src/gallium/libgallium.a.p/auxiliary_tgsi_tgsi_info.c.o <br>
src/gallium/libgallium.a.p/auxiliary_tgsi_tgsi_parse.c.o <br>
src/gallium/libgallium.a.p/auxiliary_tgsi_tgsi_text.c.o <br>
src/gallium/libgallium.a.p/auxiliary_tgsi_tgsi_strings.c.o <br>
src/gallium/libgallium.a.p/auxiliary_tgsi_tgsi_sanity.c.o <br>
src/gallium/libgallium.a.p/auxiliary_tgsi_tgsi_iterate.c.o <br>
src/gallium/libgallium.a.p/auxiliary_tgsi_tgsi_util.c.o <br>
src/gallium/libgallium.a.p/auxiliary_tgsi_tgsi_transform.c.o <br>
src/gallium/libgallium.a.p/auxiliary_os_os_misc.c.o<br>
[2/15] aarch64-overc-linux-gcc -march=3Darmv8-a+crc <br>
--sysroot=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virgl=
renderer/0.8.2-r0/recipe-sysroot <br>
-Ivtest/virgl_test_server.p -Ivtest -I../git/vtest <br>
-I../git/src/gallium/include -I../git/src/gallium/auxiliary <br>
-I../git/src/gallium/auxiliary/util -I. -I../git -Isrc -I../git/src <br>
-fdiagnostics-color=3Dalways -DNDEBUG -pipe -D_FILE_OFFSET_BITS=3D64 <br>
-std=3Dgnu11 -DHAVE_CONFIG_H=3D1 -D_GNU_SOURCE=3D1 <br>
-Werror=3Dimplicit-function-declaration -Werror=3Dmissing-prototypes <br>
-Wmissing-prototypes -Werror=3Dint-to-pointer-cast -fvisibility=3Dhidden -=
O2 <br>
-g -feliminate-unused-debug-types <br>
-fmacro-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-li=
nux/virglrenderer/0.8.2-r0=3D/usr/src/debug/virglrenderer/0.8.2-r0 <br>
-fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-li=
nux/virglrenderer/0.8.2-r0=3D/usr/src/debug/virglrenderer/0.8.2-r0 <br>
-fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-li=
nux/virglrenderer/0.8.2-r0/recipe-sysroot=3D <br>
-fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-li=
nux/virglrenderer/0.8.2-r0/recipe-sysroot-native=3D <br>
-MD -MQ vtest/virgl_test_server.p/vtest_shm.c.o -MF <br>
vtest/virgl_test_server.p/vtest_shm.c.o.d -o <br>
vtest/virgl_test_server.p/vtest_shm.c.o -c ../git/vtest/vtest_shm.c<br>
[3/15] aarch64-overc-linux-gcc -march=3Darmv8-a+crc <br>
--sysroot=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virgl=
renderer/0.8.2-r0/recipe-sysroot <br>
-Isrc/libvirgl.a.p -Isrc -I../git/src -I../git/src/gallium/include <br>
-I../git/src/gallium/auxiliary -I../git/src/gallium/auxiliary/util -I. <br=
>
-I../git <br>
-I/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0=
.8.2-r0/recipe-sysroot/usr/include/libdrm <br>
-fdiagnostics-color=3Dalways -DNDEBUG -pipe -D_FILE_OFFSET_BITS=3D64 <br>
-std=3Dgnu11 -DHAVE_CONFIG_H=3D1 -D_GNU_SOURCE=3D1 <br>
-Werror=3Dimplicit-function-declaration -Werror=3Dmissing-prototypes <br>
-Wmissing-prototypes -Werror=3Dint-to-pointer-cast -fvisibility=3Dhidden -=
O2 <br>
-g -feliminate-unused-debug-types <br>
-fmacro-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-li=
nux/virglrenderer/0.8.2-r0=3D/usr/src/debug/virglrenderer/0.8.2-r0 <br>
-fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-li=
nux/virglrenderer/0.8.2-r0=3D/usr/src/debug/virglrenderer/0.8.2-r0 <br>
-fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-li=
nux/virglrenderer/0.8.2-r0/recipe-sysroot=3D <br>
-fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-li=
nux/virglrenderer/0.8.2-r0/recipe-sysroot-native=3D <br>
-fPIC -pthread -MD -MQ src/libvirgl.a.p/vrend_debug.c.o -MF <br>
src/libvirgl.a.p/vrend_debug.c.o.d -o src/libvirgl.a.p/vrend_debug.c.o <br=
>
-c ../git/src/vrend_debug.c<br>
FAILED: src/libvirgl.a.p/vrend_debug.c.o<br>
aarch64-overc-linux-gcc -march=3Darmv8-a+crc <br>
--sysroot=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virgl=
renderer/0.8.2-r0/recipe-sysroot <br>
-Isrc/libvirgl.a.p -Isrc -I../git/src -I../git/src/gallium/include <br>
-I../git/src/gallium/auxiliary -I../git/src/gallium/auxiliary/util -I. <br=
>
-I../git <br>
-I/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0=
.8.2-r0/recipe-sysroot/usr/include/libdrm <br>
-fdiagnostics-color=3Dalways -DNDEBUG -pipe -D_FILE_OFFSET_BITS=3D64 <br>
-std=3Dgnu11 -DHAVE_CONFIG_H=3D1 -D_GNU_SOURCE=3D1 <br>
-Werror=3Dimplicit-function-declaration -Werror=3Dmissing-prototypes <br>
-Wmissing-prototypes -Werror=3Dint-to-pointer-cast -fvisibility=3Dhidden -=
O2 <br>
-g -feliminate-unused-debug-types <br>
-fmacro-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-li=
nux/virglrenderer/0.8.2-r0=3D/usr/src/debug/virglrenderer/0.8.2-r0 <br>
-fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-li=
nux/virglrenderer/0.8.2-r0=3D/usr/src/debug/virglrenderer/0.8.2-r0 <br>
-fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-li=
nux/virglrenderer/0.8.2-r0/recipe-sysroot=3D <br>
-fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-li=
nux/virglrenderer/0.8.2-r0/recipe-sysroot-native=3D <br>
-fPIC -pthread -MD -MQ src/libvirgl.a.p/vrend_debug.c.o -MF <br>
src/libvirgl.a.p/vrend_debug.c.o.d -o src/libvirgl.a.p/vrend_debug.c.o <br=
>
-c ../git/src/vrend_debug.c<br>
In file included from ../git/src/vrend_renderer.h:34,<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 from ../git/src/vrend_debug.c:26:<br>
../git/src/virgl_gbm.h:28:10: fatal error: gbm.h: No such file or director=
y<br>
=C2=A0=C2=A0=C2=A0 28 | #include &lt;gbm.h&gt;<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=
=C2=A0=C2=A0=C2=A0 ^~~~~~~<br>
compilation terminated.<br>
[4/15] aarch64-overc-linux-gcc -march=3Darmv8-a+crc <br>
--sysroot=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virgl=
renderer/0.8.2-r0/recipe-sysroot <br>
-Isrc/libvirgl.a.p -Isrc -I../git/src -I../git/src/gallium/include <br>
-I../git/src/gallium/auxiliary -I../git/src/gallium/auxiliary/util -I. <br=
>
-I../git <br>
-I/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0=
.8.2-r0/recipe-sysroot/usr/include/libdrm <br>
-fdiagnostics-color=3Dalways -DNDEBUG -pipe -D_FILE_OFFSET_BITS=3D64 <br>
-std=3Dgnu11 -DHAVE_CONFIG_H=3D1 -D_GNU_SOURCE=3D1 <br>
-Werror=3Dimplicit-function-declaration -Werror=3Dmissing-prototypes <br>
-Wmissing-prototypes -Werror=3Dint-to-pointer-cast -fvisibility=3Dhidden -=
O2 <br>
-g -feliminate-unused-debug-types <br>
-fmacro-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-li=
nux/virglrenderer/0.8.2-r0=3D/usr/src/debug/virglrenderer/0.8.2-r0 <br>
-fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-li=
nux/virglrenderer/0.8.2-r0=3D/usr/src/debug/virglrenderer/0.8.2-r0 <br>
-fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-li=
nux/virglrenderer/0.8.2-r0/recipe-sysroot=3D <br>
-fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-li=
nux/virglrenderer/0.8.2-r0/recipe-sysroot-native=3D <br>
-fPIC -pthread -MD -MQ src/libvirgl.a.p/vrend_renderer.c.o -MF <br>
src/libvirgl.a.p/vrend_renderer.c.o.d -o <br>
src/libvirgl.a.p/vrend_renderer.c.o -c ../git/src/vrend_renderer.c<br>
FAILED: src/libvirgl.a.p/vrend_renderer.c.o<br>
aarch64-overc-linux-gcc -march=3Darmv8-a+crc <br>
--sysroot=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virgl=
renderer/0.8.2-r0/recipe-sysroot <br>
-Isrc/libvirgl.a.p -Isrc -I../git/src -I../git/src/gallium/include <br>
-I../git/src/gallium/auxiliary -I../git/src/gallium/auxiliary/util -I. <br=
>
-I../git <br>
-I/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0=
.8.2-r0/recipe-sysroot/usr/include/libdrm <br>
-fdiagnostics-color=3Dalways -DNDEBUG -pipe -D_FILE_OFFSET_BITS=3D64 <br>
-std=3Dgnu11 -DHAVE_CONFIG_H=3D1 -D_GNU_SOURCE=3D1 <br>
-Werror=3Dimplicit-function-declaration -Werror=3Dmissing-prototypes <br>
-Wmissing-prototypes -Werror=3Dint-to-pointer-cast -fvisibility=3Dhidden -=
O2 <br>
-g -feliminate-unused-debug-types <br>
-fmacro-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-li=
nux/virglrenderer/0.8.2-r0=3D/usr/src/debug/virglrenderer/0.8.2-r0 <br>
-fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-li=
nux/virglrenderer/0.8.2-r0=3D/usr/src/debug/virglrenderer/0.8.2-r0 <br>
-fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-li=
nux/virglrenderer/0.8.2-r0/recipe-sysroot=3D <br>
-fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-li=
nux/virglrenderer/0.8.2-r0/recipe-sysroot-native=3D <br>
-fPIC -pthread -MD -MQ src/libvirgl.a.p/vrend_renderer.c.o -MF <br>
src/libvirgl.a.p/vrend_renderer.c.o.d -o <br>
src/libvirgl.a.p/vrend_renderer.c.o -c ../git/src/vrend_renderer.c<br>
In file included from ../git/src/vrend_renderer.h:34,<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 from ../git/src/vrend_renderer.c:49:<br>
../git/src/virgl_gbm.h:28:10: fatal error: gbm.h: No such file or director=
y<br>
=C2=A0=C2=A0=C2=A0 28 | #include &lt;gbm.h&gt;<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=
=C2=A0=C2=A0=C2=A0 ^~~~~~~<br>
compilation terminated.<br>
[5/15] aarch64-overc-linux-gcc -march=3Darmv8-a+crc <br>
--sysroot=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virgl=
renderer/0.8.2-r0/recipe-sysroot <br>
-Isrc/libvirgl.a.p -Isrc -I../git/src -I../git/src/gallium/include <br>
-I../git/src/gallium/auxiliary -I../git/src/gallium/auxiliary/util -I. <br=
>
-I../git <br>
-I/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0=
.8.2-r0/recipe-sysroot/usr/include/libdrm <br>
-fdiagnostics-color=3Dalways -DNDEBUG -pipe -D_FILE_OFFSET_BITS=3D64 <br>
-std=3Dgnu11 -DHAVE_CONFIG_H=3D1 -D_GNU_SOURCE=3D1 <br>
-Werror=3Dimplicit-function-declaration -Werror=3Dmissing-prototypes <br>
-Wmissing-prototypes -Werror=3Dint-to-pointer-cast -fvisibility=3Dhidden -=
O2 <br>
-g -feliminate-unused-debug-types <br>
-fmacro-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-li=
nux/virglrenderer/0.8.2-r0=3D/usr/src/debug/virglrenderer/0.8.2-r0 <br>
-fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-li=
nux/virglrenderer/0.8.2-r0=3D/usr/src/debug/virglrenderer/0.8.2-r0 <br>
-fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-li=
nux/virglrenderer/0.8.2-r0/recipe-sysroot=3D <br>
-fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-li=
nux/virglrenderer/0.8.2-r0/recipe-sysroot-native=3D <br>
-fPIC -pthread -MD -MQ src/libvirgl.a.p/vrend_blitter.c.o -MF <br>
src/libvirgl.a.p/vrend_blitter.c.o.d -o <br>
src/libvirgl.a.p/vrend_blitter.c.o -c ../git/src/vrend_blitter.c<br>
FAILED: src/libvirgl.a.p/vrend_blitter.c.o<br>
aarch64-overc-linux-gcc -march=3Darmv8-a+crc <br>
--sysroot=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virgl=
renderer/0.8.2-r0/recipe-sysroot <br>
-Isrc/libvirgl.a.p -Isrc -I../git/src -I../git/src/gallium/include <br>
-I../git/src/gallium/auxiliary -I../git/src/gallium/auxiliary/util -I. <br=
>
-I../git <br>
-I/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0=
.8.2-r0/recipe-sysroot/usr/include/libdrm <br>
-fdiagnostics-color=3Dalways -DNDEBUG -pipe -D_FILE_OFFSET_BITS=3D64 <br>
-std=3Dgnu11 -DHAVE_CONFIG_H=3D1 -D_GNU_SOURCE=3D1 <br>
-Werror=3Dimplicit-function-declaration -Werror=3Dmissing-prototypes <br>
-Wmissing-prototypes -Werror=3Dint-to-pointer-cast -fvisibility=3Dhidden -=
O2 <br>
-g -feliminate-unused-debug-types <br>
-fmacro-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-li=
nux/virglrenderer/0.8.2-r0=3D/usr/src/debug/virglrenderer/0.8.2-r0 <br>
-fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-li=
nux/virglrenderer/0.8.2-r0=3D/usr/src/debug/virglrenderer/0.8.2-r0 <br>
-fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-li=
nux/virglrenderer/0.8.2-r0/recipe-sysroot=3D <br>
-fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-li=
nux/virglrenderer/0.8.2-r0/recipe-sysroot-native=3D <br>
-fPIC -pthread -MD -MQ src/libvirgl.a.p/vrend_blitter.c.o -MF <br>
src/libvirgl.a.p/vrend_blitter.c.o.d -o <br>
src/libvirgl.a.p/vrend_blitter.c.o -c ../git/src/vrend_blitter.c<br>
In file included from ../git/src/vrend_renderer.h:34,<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 from ../git/src/vrend_blitter.c:48:<br>
../git/src/virgl_gbm.h:28:10: fatal error: gbm.h: No such file or director=
y<br>
=C2=A0=C2=A0=C2=A0 28 | #include &lt;gbm.h&gt;<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=
=C2=A0=C2=A0=C2=A0 ^~~~~~~<br>
compilation terminated.<br>
[6/15] aarch64-overc-linux-gcc -march=3Darmv8-a+crc <br>
--sysroot=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virgl=
renderer/0.8.2-r0/recipe-sysroot <br>
-Ivtest/virgl_test_server.p -Ivtest -I../git/vtest <br>
-I../git/src/gallium/include -I../git/src/gallium/auxiliary <br>
-I../git/src/gallium/auxiliary/util -I. -I../git -Isrc -I../git/src <br>
-fdiagnostics-color=3Dalways -DNDEBUG -pipe -D_FILE_OFFSET_BITS=3D64 <br>
-std=3Dgnu11 -DHAVE_CONFIG_H=3D1 -D_GNU_SOURCE=3D1 <br>
-Werror=3Dimplicit-function-declaration -Werror=3Dmissing-prototypes <br>
-Wmissing-prototypes -Werror=3Dint-to-pointer-cast -fvisibility=3Dhidden -=
O2 <br>
-g -feliminate-unused-debug-types <br>
-fmacro-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-li=
nux/virglrenderer/0.8.2-r0=3D/usr/src/debug/virglrenderer/0.8.2-r0 <br>
-fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-li=
nux/virglrenderer/0.8.2-r0=3D/usr/src/debug/virglrenderer/0.8.2-r0 <br>
-fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-li=
nux/virglrenderer/0.8.2-r0/recipe-sysroot=3D <br>
-fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-li=
nux/virglrenderer/0.8.2-r0/recipe-sysroot-native=3D <br>
-MD -MQ vtest/virgl_test_server.p/vtest_server.c.o -MF <br>
vtest/virgl_test_server.p/vtest_server.c.o.d -o <br>
vtest/virgl_test_server.p/vtest_server.c.o -c ../git/vtest/vtest_server.c<=
br>
[7/15] aarch64-overc-linux-gcc -march=3Darmv8-a+crc <br>
--sysroot=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virgl=
renderer/0.8.2-r0/recipe-sysroot <br>
-Isrc/libvirglrenderer.so.1.4.2.p -Isrc -I../git/src <br>
-I../git/src/gallium/include -I../git/src/gallium/auxiliary <br>
-I../git/src/gallium/auxiliary/util -I. -I../git <br>
-I/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0=
.8.2-r0/recipe-sysroot/usr/include/libdrm <br>
-fdiagnostics-color=3Dalways -DNDEBUG -pipe -D_FILE_OFFSET_BITS=3D64 <br>
-std=3Dgnu11 -DHAVE_CONFIG_H=3D1 -D_GNU_SOURCE=3D1 <br>
-Werror=3Dimplicit-function-declaration -Werror=3Dmissing-prototypes <br>
-Wmissing-prototypes -Werror=3Dint-to-pointer-cast -fvisibility=3Dhidden -=
O2 <br>
-g -feliminate-unused-debug-types <br>
-fmacro-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-li=
nux/virglrenderer/0.8.2-r0=3D/usr/src/debug/virglrenderer/0.8.2-r0 <br>
-fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-li=
nux/virglrenderer/0.8.2-r0=3D/usr/src/debug/virglrenderer/0.8.2-r0 <br>
-fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-li=
nux/virglrenderer/0.8.2-r0/recipe-sysroot=3D <br>
-fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-li=
nux/virglrenderer/0.8.2-r0/recipe-sysroot-native=3D <br>
-fPIC -pthread -MD -MQ src/libvirglrenderer.so.1.4.2.p/virglrenderer.c.o <=
br>
-MF src/libvirglrenderer.so.1.4.2.p/virglrenderer.c.o.d -o <br>
src/libvirglrenderer.so.1.4.2.p/virglrenderer.c.o -c <br>
../git/src/virglrenderer.c<br>
FAILED: src/libvirglrenderer.so.1.4.2.p/virglrenderer.c.o<br>
aarch64-overc-linux-gcc -march=3Darmv8-a+crc <br>
--sysroot=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virgl=
renderer/0.8.2-r0/recipe-sysroot <br>
-Isrc/libvirglrenderer.so.1.4.2.p -Isrc -I../git/src <br>
-I../git/src/gallium/include -I../git/src/gallium/auxiliary <br>
-I../git/src/gallium/auxiliary/util -I. -I../git <br>
-I/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0=
.8.2-r0/recipe-sysroot/usr/include/libdrm <br>
-fdiagnostics-color=3Dalways -DNDEBUG -pipe -D_FILE_OFFSET_BITS=3D64 <br>
-std=3Dgnu11 -DHAVE_CONFIG_H=3D1 -D_GNU_SOURCE=3D1 <br>
-Werror=3Dimplicit-function-declaration -Werror=3Dmissing-prototypes <br>
-Wmissing-prototypes -Werror=3Dint-to-pointer-cast -fvisibility=3Dhidden -=
O2 <br>
-g -feliminate-unused-debug-types <br>
-fmacro-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-li=
nux/virglrenderer/0.8.2-r0=3D/usr/src/debug/virglrenderer/0.8.2-r0 <br>
-fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-li=
nux/virglrenderer/0.8.2-r0=3D/usr/src/debug/virglrenderer/0.8.2-r0 <br>
-fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-li=
nux/virglrenderer/0.8.2-r0/recipe-sysroot=3D <br>
-fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-li=
nux/virglrenderer/0.8.2-r0/recipe-sysroot-native=3D <br>
-fPIC -pthread -MD -MQ src/libvirglrenderer.so.1.4.2.p/virglrenderer.c.o <=
br>
-MF src/libvirglrenderer.so.1.4.2.p/virglrenderer.c.o.d -o <br>
src/libvirglrenderer.so.1.4.2.p/virglrenderer.c.o -c <br>
../git/src/virglrenderer.c<br>
In file included from ../git/src/vrend_renderer.h:34,<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 from ../git/src/virglrenderer.c:37:<br>
../git/src/virgl_gbm.h:28:10: fatal error: gbm.h: No such file or director=
y<br>
=C2=A0=C2=A0=C2=A0 28 | #include &lt;gbm.h&gt;<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=
=C2=A0=C2=A0=C2=A0 ^~~~~~~<br>
compilation terminated.<br>
[8/15] aarch64-overc-linux-gcc -march=3Darmv8-a+crc <br>
--sysroot=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virgl=
renderer/0.8.2-r0/recipe-sysroot <br>
-Isrc/libvirgl.a.p -Isrc -I../git/src -I../git/src/gallium/include <br>
-I../git/src/gallium/auxiliary -I../git/src/gallium/auxiliary/util -I. <br=
>
-I../git <br>
-I/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0=
.8.2-r0/recipe-sysroot/usr/include/libdrm <br>
-fdiagnostics-color=3Dalways -DNDEBUG -pipe -D_FILE_OFFSET_BITS=3D64 <br>
-std=3Dgnu11 -DHAVE_CONFIG_H=3D1 -D_GNU_SOURCE=3D1 <br>
-Werror=3Dimplicit-function-declaration -Werror=3Dmissing-prototypes <br>
-Wmissing-prototypes -Werror=3Dint-to-pointer-cast -fvisibility=3Dhidden -=
O2 <br>
-g -feliminate-unused-debug-types <br>
-fmacro-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-li=
nux/virglrenderer/0.8.2-r0=3D/usr/src/debug/virglrenderer/0.8.2-r0 <br>
-fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-li=
nux/virglrenderer/0.8.2-r0=3D/usr/src/debug/virglrenderer/0.8.2-r0 <br>
-fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-li=
nux/virglrenderer/0.8.2-r0/recipe-sysroot=3D <br>
-fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-li=
nux/virglrenderer/0.8.2-r0/recipe-sysroot-native=3D <br>
-fPIC -pthread -MD -MQ src/libvirgl.a.p/vrend_formats.c.o -MF <br>
src/libvirgl.a.p/vrend_formats.c.o.d -o <br>
src/libvirgl.a.p/vrend_formats.c.o -c ../git/src/vrend_formats.c<br>
FAILED: src/libvirgl.a.p/vrend_formats.c.o<br>
aarch64-overc-linux-gcc -march=3Darmv8-a+crc <br>
--sysroot=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virgl=
renderer/0.8.2-r0/recipe-sysroot <br>
-Isrc/libvirgl.a.p -Isrc -I../git/src -I../git/src/gallium/include <br>
-I../git/src/gallium/auxiliary -I../git/src/gallium/auxiliary/util -I. <br=
>
-I../git <br>
-I/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0=
.8.2-r0/recipe-sysroot/usr/include/libdrm <br>
-fdiagnostics-color=3Dalways -DNDEBUG -pipe -D_FILE_OFFSET_BITS=3D64 <br>
-std=3Dgnu11 -DHAVE_CONFIG_H=3D1 -D_GNU_SOURCE=3D1 <br>
-Werror=3Dimplicit-function-declaration -Werror=3Dmissing-prototypes <br>
-Wmissing-prototypes -Werror=3Dint-to-pointer-cast -fvisibility=3Dhidden -=
O2 <br>
-g -feliminate-unused-debug-types <br>
-fmacro-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-li=
nux/virglrenderer/0.8.2-r0=3D/usr/src/debug/virglrenderer/0.8.2-r0 <br>
-fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-li=
nux/virglrenderer/0.8.2-r0=3D/usr/src/debug/virglrenderer/0.8.2-r0 <br>
-fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-li=
nux/virglrenderer/0.8.2-r0/recipe-sysroot=3D <br>
-fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-li=
nux/virglrenderer/0.8.2-r0/recipe-sysroot-native=3D <br>
-fPIC -pthread -MD -MQ src/libvirgl.a.p/vrend_formats.c.o -MF <br>
src/libvirgl.a.p/vrend_formats.c.o.d -o <br>
src/libvirgl.a.p/vrend_formats.c.o -c ../git/src/vrend_formats.c<br>
In file included from ../git/src/vrend_renderer.h:34,<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 from ../git/src/vrend_formats.c:26:<br>
../git/src/virgl_gbm.h:28:10: fatal error: gbm.h: No such file or director=
y<br>
=C2=A0=C2=A0=C2=A0 28 | #include &lt;gbm.h&gt;<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=
=C2=A0=C2=A0=C2=A0 ^~~~~~~<br>
compilation terminated.<br>
[9/15] aarch64-overc-linux-gcc -march=3Darmv8-a+crc <br>
--sysroot=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virgl=
renderer/0.8.2-r0/recipe-sysroot <br>
-Isrc/libvirgl.a.p -Isrc -I../git/src -I../git/src/gallium/include <br>
-I../git/src/gallium/auxiliary -I../git/src/gallium/auxiliary/util -I. <br=
>
-I../git <br>
-I/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0=
.8.2-r0/recipe-sysroot/usr/include/libdrm <br>
-fdiagnostics-color=3Dalways -DNDEBUG -pipe -D_FILE_OFFSET_BITS=3D64 <br>
-std=3Dgnu11 -DHAVE_CONFIG_H=3D1 -D_GNU_SOURCE=3D1 <br>
-Werror=3Dimplicit-function-declaration -Werror=3Dmissing-prototypes <br>
-Wmissing-prototypes -Werror=3Dint-to-pointer-cast -fvisibility=3Dhidden -=
O2 <br>
-g -feliminate-unused-debug-types <br>
-fmacro-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-li=
nux/virglrenderer/0.8.2-r0=3D/usr/src/debug/virglrenderer/0.8.2-r0 <br>
-fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-li=
nux/virglrenderer/0.8.2-r0=3D/usr/src/debug/virglrenderer/0.8.2-r0 <br>
-fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-li=
nux/virglrenderer/0.8.2-r0/recipe-sysroot=3D <br>
-fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-li=
nux/virglrenderer/0.8.2-r0/recipe-sysroot-native=3D <br>
-fPIC -pthread -MD -MQ src/libvirgl.a.p/vrend_decode.c.o -MF <br>
src/libvirgl.a.p/vrend_decode.c.o.d -o src/libvirgl.a.p/vrend_decode.c.o <=
br>
-c ../git/src/vrend_decode.c<br>
FAILED: src/libvirgl.a.p/vrend_decode.c.o<br>
aarch64-overc-linux-gcc -march=3Darmv8-a+crc <br>
--sysroot=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virgl=
renderer/0.8.2-r0/recipe-sysroot <br>
-Isrc/libvirgl.a.p -Isrc -I../git/src -I../git/src/gallium/include <br>
-I../git/src/gallium/auxiliary -I../git/src/gallium/auxiliary/util -I. <br=
>
-I../git <br>
-I/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0=
.8.2-r0/recipe-sysroot/usr/include/libdrm <br>
-fdiagnostics-color=3Dalways -DNDEBUG -pipe -D_FILE_OFFSET_BITS=3D64 <br>
-std=3Dgnu11 -DHAVE_CONFIG_H=3D1 -D_GNU_SOURCE=3D1 <br>
-Werror=3Dimplicit-function-declaration -Werror=3Dmissing-prototypes <br>
-Wmissing-prototypes -Werror=3Dint-to-pointer-cast -fvisibility=3Dhidden -=
O2 <br>
-g -feliminate-unused-debug-types <br>
-fmacro-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-li=
nux/virglrenderer/0.8.2-r0=3D/usr/src/debug/virglrenderer/0.8.2-r0 <br>
-fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-li=
nux/virglrenderer/0.8.2-r0=3D/usr/src/debug/virglrenderer/0.8.2-r0 <br>
-fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-li=
nux/virglrenderer/0.8.2-r0/recipe-sysroot=3D <br>
-fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-li=
nux/virglrenderer/0.8.2-r0/recipe-sysroot-native=3D <br>
-fPIC -pthread -MD -MQ src/libvirgl.a.p/vrend_decode.c.o -MF <br>
src/libvirgl.a.p/vrend_decode.c.o.d -o src/libvirgl.a.p/vrend_decode.c.o <=
br>
-c ../git/src/vrend_decode.c<br>
In file included from ../git/src/vrend_renderer.h:34,<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 from ../git/src/vrend_decode.c:34:<br>
../git/src/virgl_gbm.h:28:10: fatal error: gbm.h: No such file or director=
y<br>
=C2=A0=C2=A0=C2=A0 28 | #include &lt;gbm.h&gt;<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=
=C2=A0=C2=A0=C2=A0 ^~~~~~~<br>
compilation terminated.<br>
[10/15] aarch64-overc-linux-gcc -march=3Darmv8-a+crc <br>
--sysroot=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virgl=
renderer/0.8.2-r0/recipe-sysroot <br>
-Isrc/libvirgl.a.p -Isrc -I../git/src -I../git/src/gallium/include <br>
-I../git/src/gallium/auxiliary -I../git/src/gallium/auxiliary/util -I. <br=
>
-I../git <br>
-I/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0=
.8.2-r0/recipe-sysroot/usr/include/libdrm <br>
-fdiagnostics-color=3Dalways -DNDEBUG -pipe -D_FILE_OFFSET_BITS=3D64 <br>
-std=3Dgnu11 -DHAVE_CONFIG_H=3D1 -D_GNU_SOURCE=3D1 <br>
-Werror=3Dimplicit-function-declaration -Werror=3Dmissing-prototypes <br>
-Wmissing-prototypes -Werror=3Dint-to-pointer-cast -fvisibility=3Dhidden -=
O2 <br>
-g -feliminate-unused-debug-types <br>
-fmacro-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-li=
nux/virglrenderer/0.8.2-r0=3D/usr/src/debug/virglrenderer/0.8.2-r0 <br>
-fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-li=
nux/virglrenderer/0.8.2-r0=3D/usr/src/debug/virglrenderer/0.8.2-r0 <br>
-fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-li=
nux/virglrenderer/0.8.2-r0/recipe-sysroot=3D <br>
-fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-li=
nux/virglrenderer/0.8.2-r0/recipe-sysroot-native=3D <br>
-fPIC -pthread -MD -MQ src/libvirgl.a.p/virgl_glx_context.c.o -MF <br>
src/libvirgl.a.p/virgl_glx_context.c.o.d -o <br>
src/libvirgl.a.p/virgl_glx_context.c.o -c ../git/src/virgl_glx_context.c<b=
r>
FAILED: src/libvirgl.a.p/virgl_glx_context.c.o<br>
aarch64-overc-linux-gcc -march=3Darmv8-a+crc <br>
--sysroot=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virgl=
renderer/0.8.2-r0/recipe-sysroot <br>
-Isrc/libvirgl.a.p -Isrc -I../git/src -I../git/src/gallium/include <br>
-I../git/src/gallium/auxiliary -I../git/src/gallium/auxiliary/util -I. <br=
>
-I../git <br>
-I/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0=
.8.2-r0/recipe-sysroot/usr/include/libdrm <br>
-fdiagnostics-color=3Dalways -DNDEBUG -pipe -D_FILE_OFFSET_BITS=3D64 <br>
-std=3Dgnu11 -DHAVE_CONFIG_H=3D1 -D_GNU_SOURCE=3D1 <br>
-Werror=3Dimplicit-function-declaration -Werror=3Dmissing-prototypes <br>
-Wmissing-prototypes -Werror=3Dint-to-pointer-cast -fvisibility=3Dhidden -=
O2 <br>
-g -feliminate-unused-debug-types <br>
-fmacro-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-li=
nux/virglrenderer/0.8.2-r0=3D/usr/src/debug/virglrenderer/0.8.2-r0 <br>
-fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-li=
nux/virglrenderer/0.8.2-r0=3D/usr/src/debug/virglrenderer/0.8.2-r0 <br>
-fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-li=
nux/virglrenderer/0.8.2-r0/recipe-sysroot=3D <br>
-fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-li=
nux/virglrenderer/0.8.2-r0/recipe-sysroot-native=3D <br>
-fPIC -pthread -MD -MQ src/libvirgl.a.p/virgl_glx_context.c.o -MF <br>
src/libvirgl.a.p/virgl_glx_context.c.o.d -o <br>
src/libvirgl.a.p/virgl_glx_context.c.o -c ../git/src/virgl_glx_context.c<b=
r>
In file included from ../git/src/vrend_renderer.h:34,<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 from ../git/src/virgl_glx.h:27,<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 from ../git/src/virgl_glx_context.c:32:<br>
../git/src/virgl_gbm.h:28:10: fatal error: gbm.h: No such file or director=
y<br>
=C2=A0=C2=A0=C2=A0 28 | #include &lt;gbm.h&gt;<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=
=C2=A0=C2=A0=C2=A0 ^~~~~~~<br>
compilation terminated.<br>
[11/15] aarch64-overc-linux-gcc -march=3Darmv8-a+crc <br>
--sysroot=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virgl=
renderer/0.8.2-r0/recipe-sysroot <br>
-Ivtest/virgl_test_server.p -Ivtest -I../git/vtest <br>
-I../git/src/gallium/include -I../git/src/gallium/auxiliary <br>
-I../git/src/gallium/auxiliary/util -I. -I../git -Isrc -I../git/src <br>
-fdiagnostics-color=3Dalways -DNDEBUG -pipe -D_FILE_OFFSET_BITS=3D64 <br>
-std=3Dgnu11 -DHAVE_CONFIG_H=3D1 -D_GNU_SOURCE=3D1 <br>
-Werror=3Dimplicit-function-declaration -Werror=3Dmissing-prototypes <br>
-Wmissing-prototypes -Werror=3Dint-to-pointer-cast -fvisibility=3Dhidden -=
O2 <br>
-g -feliminate-unused-debug-types <br>
-fmacro-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-li=
nux/virglrenderer/0.8.2-r0=3D/usr/src/debug/virglrenderer/0.8.2-r0 <br>
-fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-li=
nux/virglrenderer/0.8.2-r0=3D/usr/src/debug/virglrenderer/0.8.2-r0 <br>
-fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-li=
nux/virglrenderer/0.8.2-r0/recipe-sysroot=3D <br>
-fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-li=
nux/virglrenderer/0.8.2-r0/recipe-sysroot-native=3D <br>
-MD -MQ vtest/virgl_test_server.p/vtest_renderer.c.o -MF <br>
vtest/virgl_test_server.p/vtest_renderer.c.o.d -o <br>
vtest/virgl_test_server.p/vtest_renderer.c.o -c <br>
../git/vtest/vtest_renderer.c<br>
ninja: build stopped: subcommand failed.<br>
WARNING: <br>
/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8=
.2-r0/temp/run.do_compile.754739:152 <br>
exit 1 from &#39;ninja -v -j 16&#39;<br>
WARNING: Backtrace (BB generated script):<br>
=C2=A0=C2=A0=C2=A0=C2=A0 #1: meson_do_compile, <br>
/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8=
.2-r0/temp/run.do_compile.754739, <br>
line 152<br>
=C2=A0=C2=A0=C2=A0=C2=A0 #2: do_compile, <br>
/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8=
.2-r0/temp/run.do_compile.754739, <br>
line 147<br>
=C2=A0=C2=A0=C2=A0=C2=A0 #3: main, <br>
/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8=
.2-r0/temp/run.do_compile.754739, <br>
line 156<br>
ERROR: Execution of <br>
&#39;/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrendere=
r/0.8.2-r0/temp/run.do_compile.754739&#39; <br>
failed with exit code 1:<br>
[1/15] rm -f src/gallium/libgallium.a &amp;&amp; aarch64-overc-linux-gcc-a=
r csrD <br>
src/gallium/libgallium.a <br>
src/gallium/libgallium.a.p/meson-generated_.._u_format_table.c.o <br>
src/gallium/libgallium.a.p/auxiliary_util_u_format.c.o <br>
src/gallium/libgallium.a.p/auxiliary_util_u_texture.c.o <br>
src/gallium/libgallium.a.p/auxiliary_util_u_hash_table.c.o <br>
src/gallium/libgallium.a.p/auxiliary_util_u_debug.c.o <br>
src/gallium/libgallium.a.p/auxiliary_util_u_cpu_detect.c.o <br>
src/gallium/libgallium.a.p/auxiliary_util_u_bitmask.c.o <br>
src/gallium/libgallium.a.p/auxiliary_util_u_surface.c.o <br>
src/gallium/libgallium.a.p/auxiliary_util_u_math.c.o <br>
src/gallium/libgallium.a.p/auxiliary_util_u_debug_describe.c.o <br>
src/gallium/libgallium.a.p/auxiliary_cso_cache_cso_cache.c.o <br>
src/gallium/libgallium.a.p/auxiliary_cso_cache_cso_hash.c.o <br>
src/gallium/libgallium.a.p/auxiliary_tgsi_tgsi_dump.c.o <br>
src/gallium/libgallium.a.p/auxiliary_tgsi_tgsi_ureg.c.o <br>
src/gallium/libgallium.a.p/auxiliary_tgsi_tgsi_build.c.o <br>
src/gallium/libgallium.a.p/auxiliary_tgsi_tgsi_scan.c.o <br>
src/gallium/libgallium.a.p/auxiliary_tgsi_tgsi_info.c.o <br>
src/gallium/libgallium.a.p/auxiliary_tgsi_tgsi_parse.c.o <br>
src/gallium/libgallium.a.p/auxiliary_tgsi_tgsi_text.c.o <br>
src/gallium/libgallium.a.p/auxiliary_tgsi_tgsi_strings.c.o <br>
src/gallium/libgallium.a.p/auxiliary_tgsi_tgsi_sanity.c.o <br>
src/gallium/libgallium.a.p/auxiliary_tgsi_tgsi_iterate.c.o <br>
src/gallium/libgallium.a.p/auxiliary_tgsi_tgsi_util.c.o <br>
src/gallium/libgallium.a.p/auxiliary_tgsi_tgsi_transform.c.o <br>
src/gallium/libgallium.a.p/auxiliary_os_os_misc.c.o<br>
[2/15] aarch64-overc-linux-gcc -march=3Darmv8-a+crc <br>
--sysroot=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virgl=
renderer/0.8.2-r0/recipe-sysroot <br>
-Ivtest/virgl_test_server.p -Ivtest -I../git/vtest <br>
-I../git/src/gallium/include -I../git/src/gallium/auxiliary <br>
-I../git/src/gallium/auxiliary/util -I. -I../git -Isrc -I../git/src <br>
-fdiagnostics-color=3Dalways -DNDEBUG -pipe -D_FILE_OFFSET_BITS=3D64 <br>
-std=3Dgnu11 -DHAVE_CONFIG_H=3D1 -D_GNU_SOURCE=3D1 <br>
-Werror=3Dimplicit-function-declaration -Werror=3Dmissing-prototypes <br>
-Wmissing-prototypes -Werror=3Dint-to-pointer-cast -fvisibility=3Dhidden -=
O2 <br>
-g -feliminate-unused-debug-types <br>
-fmacro-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-li=
nux/virglrenderer/0.8.2-r0=3D/usr/src/debug/virglrenderer/0.8.2-r0 <br>
-fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-li=
nux/virglrenderer/0.8.2-r0=3D/usr/src/debug/virglrenderer/0.8.2-r0 <br>
-fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-li=
nux/virglrenderer/0.8.2-r0/recipe-sysroot=3D <br>
-fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-li=
nux/virglrenderer/0.8.2-r0/recipe-sysroot-native=3D <br>
-MD -MQ vtest/virgl_test_server.p/vtest_shm.c.o -MF <br>
vtest/virgl_test_server.p/vtest_shm.c.o.d -o <br>
vtest/virgl_test_server.p/vtest_shm.c.o -c ../git/vtest/vtest_shm.c<br>
[3/15] aarch64-overc-linux-gcc -march=3Darmv8-a+crc <br>
--sysroot=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virgl=
renderer/0.8.2-r0/recipe-sysroot <br>
-Isrc/libvirgl.a.p -Isrc -I../git/src -I../git/src/gallium/include <br>
-I../git/src/gallium/auxiliary -I../git/src/gallium/auxiliary/util -I. <br=
>
-I../git <br>
-I/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0=
.8.2-r0/recipe-sysroot/usr/include/libdrm <br>
-fdiagnostics-color=3Dalways -DNDEBUG -pipe -D_FILE_OFFSET_BITS=3D64 <br>
-std=3Dgnu11 -DHAVE_CONFIG_H=3D1 -D_GNU_SOURCE=3D1 <br>
-Werror=3Dimplicit-function-declaration -Werror=3Dmissing-prototypes <br>
-Wmissing-prototypes -Werror=3Dint-to-pointer-cast -fvisibility=3Dhidden -=
O2 <br>
-g -feliminate-unused-debug-types <br>
-fmacro-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-li=
nux/virglrenderer/0.8.2-r0=3D/usr/src/debug/virglrenderer/0.8.2-r0 <br>
-fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-li=
nux/virglrenderer/0.8.2-r0=3D/usr/src/debug/virglrenderer/0.8.2-r0 <br>
-fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-li=
nux/virglrenderer/0.8.2-r0/recipe-sysroot=3D <br>
-fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-li=
nux/virglrenderer/0.8.2-r0/recipe-sysroot-native=3D <br>
-fPIC -pthread -MD -MQ src/libvirgl.a.p/vrend_debug.c.o -MF <br>
src/libvirgl.a.p/vrend_debug.c.o.d -o src/libvirgl.a.p/vrend_debug.c.o <br=
>
-c ../git/src/vrend_debug.c<br>
FAILED: src/libvirgl.a.p/vrend_debug.c.o<br>
aarch64-overc-linux-gcc -march=3Darmv8-a+crc <br>
--sysroot=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virgl=
renderer/0.8.2-r0/recipe-sysroot <br>
-Isrc/libvirgl.a.p -Isrc -I../git/src -I../git/src/gallium/include <br>
-I../git/src/gallium/auxiliary -I../git/src/gallium/auxiliary/util -I. <br=
>
-I../git <br>
-I/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0=
.8.2-r0/recipe-sysroot/usr/include/libdrm <br>
-fdiagnostics-color=3Dalways -DNDEBUG -pipe -D_FILE_OFFSET_BITS=3D64 <br>
-std=3Dgnu11 -DHAVE_CONFIG_H=3D1 -D_GNU_SOURCE=3D1 <br>
-Werror=3Dimplicit-function-declaration -Werror=3Dmissing-prototypes <br>
-Wmissing-prototypes -Werror=3Dint-to-pointer-cast -fvisibility=3Dhidden -=
O2 <br>
-g -feliminate-unused-debug-types <br>
-fmacro-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-li=
nux/virglrenderer/0.8.2-r0=3D/usr/src/debug/virglrenderer/0.8.2-r0 <br>
-fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-li=
nux/virglrenderer/0.8.2-r0=3D/usr/src/debug/virglrenderer/0.8.2-r0 <br>
-fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-li=
nux/virglrenderer/0.8.2-r0/recipe-sysroot=3D <br>
-fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-li=
nux/virglrenderer/0.8.2-r0/recipe-sysroot-native=3D <br>
-fPIC -pthread -MD -MQ src/libvirgl.a.p/vrend_debug.c.o -MF <br>
src/libvirgl.a.p/vrend_debug.c.o.d -o src/libvirgl.a.p/vrend_debug.c.o <br=
>
-c ../git/src/vrend_debug.c<br>
In file included from ../git/src/vrend_renderer.h:34,<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 from ../git/src/vrend_debug.c:26:<br>
../git/src/virgl_gbm.h:28:10: fatal error: gbm.h: No such file or director=
y<br>
=C2=A0=C2=A0=C2=A0 28 | #include &lt;gbm.h&gt;<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=
=C2=A0=C2=A0=C2=A0 ^~~~~~~<br>
compilation terminated.<br>
[4/15] aarch64-overc-linux-gcc -march=3Darmv8-a+crc <br>
--sysroot=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virgl=
renderer/0.8.2-r0/recipe-sysroot <br>
-Isrc/libvirgl.a.p -Isrc -I../git/src -I../git/src/gallium/include <br>
-I../git/src/gallium/auxiliary -I../git/src/gallium/auxiliary/util -I. <br=
>
-I../git <br>
-I/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0=
.8.2-r0/recipe-sysroot/usr/include/libdrm <br>
-fdiagnostics-color=3Dalways -DNDEBUG -pipe -D_FILE_OFFSET_BITS=3D64 <br>
-std=3Dgnu11 -DHAVE_CONFIG_H=3D1 -D_GNU_SOURCE=3D1 <br>
-Werror=3Dimplicit-function-declaration -Werror=3Dmissing-prototypes <br>
-Wmissing-prototypes -Werror=3Dint-to-pointer-cast -fvisibility=3Dhidden -=
O2 <br>
-g -feliminate-unused-debug-types <br>
-fmacro-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-li=
nux/virglrenderer/0.8.2-r0=3D/usr/src/debug/virglrenderer/0.8.2-r0 <br>
-fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-li=
nux/virglrenderer/0.8.2-r0=3D/usr/src/debug/virglrenderer/0.8.2-r0 <br>
-fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-li=
nux/virglrenderer/0.8.2-r0/recipe-sysroot=3D <br>
-fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-li=
nux/virglrenderer/0.8.2-r0/recipe-sysroot-native=3D <br>
-fPIC -pthread -MD -MQ src/libvirgl.a.p/vrend_renderer.c.o -MF <br>
src/libvirgl.a.p/vrend_renderer.c.o.d -o <br>
src/libvirgl.a.p/vrend_renderer.c.o -c ../git/src/vrend_renderer.c<br>
FAILED: src/libvirgl.a.p/vrend_renderer.c.o<br>
aarch64-overc-linux-gcc -march=3Darmv8-a+crc <br>
--sysroot=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virgl=
renderer/0.8.2-r0/recipe-sysroot <br>
-Isrc/libvirgl.a.p -Isrc -I../git/src -I../git/src/gallium/include <br>
-I../git/src/gallium/auxiliary -I../git/src/gallium/auxiliary/util -I. <br=
>
-I../git <br>
-I/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0=
.8.2-r0/recipe-sysroot/usr/include/libdrm <br>
-fdiagnostics-color=3Dalways -DNDEBUG -pipe -D_FILE_OFFSET_BITS=3D64 <br>
-std=3Dgnu11 -DHAVE_CONFIG_H=3D1 -D_GNU_SOURCE=3D1 <br>
-Werror=3Dimplicit-function-declaration -Werror=3Dmissing-prototypes <br>
-Wmissing-prototypes -Werror=3Dint-to-pointer-cast -fvisibility=3Dhidden -=
O2 <br>
-g -feliminate-unused-debug-types <br>
-fmacro-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-li=
nux/virglrenderer/0.8.2-r0=3D/usr/src/debug/virglrenderer/0.8.2-r0 <br>
-fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-li=
nux/virglrenderer/0.8.2-r0=3D/usr/src/debug/virglrenderer/0.8.2-r0 <br>
-fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-li=
nux/virglrenderer/0.8.2-r0/recipe-sysroot=3D <br>
-fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-li=
nux/virglrenderer/0.8.2-r0/recipe-sysroot-native=3D <br>
-fPIC -pthread -MD -MQ src/libvirgl.a.p/vrend_renderer.c.o -MF <br>
src/libvirgl.a.p/vrend_renderer.c.o.d -o <br>
src/libvirgl.a.p/vrend_renderer.c.o -c ../git/src/vrend_renderer.c<br>
In file included from ../git/src/vrend_renderer.h:34,<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 from ../git/src/vrend_renderer.c:49:<br>
../git/src/virgl_gbm.h:28:10: fatal error: gbm.h: No such file or director=
y<br>
=C2=A0=C2=A0=C2=A0 28 | #include &lt;gbm.h&gt;<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=
=C2=A0=C2=A0=C2=A0 ^~~~~~~<br>
compilation terminated.<br>
[5/15] aarch64-overc-linux-gcc -march=3Darmv8-a+crc <br>
--sysroot=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virgl=
renderer/0.8.2-r0/recipe-sysroot <br>
-Isrc/libvirgl.a.p -Isrc -I../git/src -I../git/src/gallium/include <br>
-I../git/src/gallium/auxiliary -I../git/src/gallium/auxiliary/util -I. <br=
>
-I../git <br>
-I/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0=
.8.2-r0/recipe-sysroot/usr/include/libdrm <br>
-fdiagnostics-color=3Dalways -DNDEBUG -pipe -D_FILE_OFFSET_BITS=3D64 <br>
-std=3Dgnu11 -DHAVE_CONFIG_H=3D1 -D_GNU_SOURCE=3D1 <br>
-Werror=3Dimplicit-function-declaration -Werror=3Dmissing-prototypes <br>
-Wmissing-prototypes -Werror=3Dint-to-pointer-cast -fvisibility=3Dhidden -=
O2 <br>
-g -feliminate-unused-debug-types <br>
-fmacro-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-li=
nux/virglrenderer/0.8.2-r0=3D/usr/src/debug/virglrenderer/0.8.2-r0 <br>
-fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-li=
nux/virglrenderer/0.8.2-r0=3D/usr/src/debug/virglrenderer/0.8.2-r0 <br>
-fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-li=
nux/virglrenderer/0.8.2-r0/recipe-sysroot=3D <br>
-fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-li=
nux/virglrenderer/0.8.2-r0/recipe-sysroot-native=3D <br>
-fPIC -pthread -MD -MQ src/libvirgl.a.p/vrend_blitter.c.o -MF <br>
src/libvirgl.a.p/vrend_blitter.c.o.d -o <br>
src/libvirgl.a.p/vrend_blitter.c.o -c ../git/src/vrend_blitter.c<br>
FAILED: src/libvirgl.a.p/vrend_blitter.c.o<br>
aarch64-overc-linux-gcc -march=3Darmv8-a+crc <br>
--sysroot=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virgl=
renderer/0.8.2-r0/recipe-sysroot <br>
-Isrc/libvirgl.a.p -Isrc -I../git/src -I../git/src/gallium/include <br>
-I../git/src/gallium/auxiliary -I../git/src/gallium/auxiliary/util -I. <br=
>
-I../git <br>
-I/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0=
.8.2-r0/recipe-sysroot/usr/include/libdrm <br>
-fdiagnostics-color=3Dalways -DNDEBUG -pipe -D_FILE_OFFSET_BITS=3D64 <br>
-std=3Dgnu11 -DHAVE_CONFIG_H=3D1 -D_GNU_SOURCE=3D1 <br>
-Werror=3Dimplicit-function-declaration -Werror=3Dmissing-prototypes <br>
-Wmissing-prototypes -Werror=3Dint-to-pointer-cast -fvisibility=3Dhidden -=
O2 <br>
-g -feliminate-unused-debug-types <br>
-fmacro-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-li=
nux/virglrenderer/0.8.2-r0=3D/usr/src/debug/virglrenderer/0.8.2-r0 <br>
-fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-li=
nux/virglrenderer/0.8.2-r0=3D/usr/src/debug/virglrenderer/0.8.2-r0 <br>
-fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-li=
nux/virglrenderer/0.8.2-r0/recipe-sysroot=3D <br>
-fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-li=
nux/virglrenderer/0.8.2-r0/recipe-sysroot-native=3D <br>
-fPIC -pthread -MD -MQ src/libvirgl.a.p/vrend_blitter.c.o -MF <br>
src/libvirgl.a.p/vrend_blitter.c.o.d -o <br>
src/libvirgl.a.p/vrend_blitter.c.o -c ../git/src/vrend_blitter.c<br>
In file included from ../git/src/vrend_renderer.h:34,<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 from ../git/src/vrend_blitter.c:48:<br>
../git/src/virgl_gbm.h:28:10: fatal error: gbm.h: No such file or director=
y<br>
=C2=A0=C2=A0=C2=A0 28 | #include &lt;gbm.h&gt;<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=
=C2=A0=C2=A0=C2=A0 ^~~~~~~<br>
compilation terminated.<br>
[6/15] aarch64-overc-linux-gcc -march=3Darmv8-a+crc <br>
--sysroot=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virgl=
renderer/0.8.2-r0/recipe-sysroot <br>
-Ivtest/virgl_test_server.p -Ivtest -I../git/vtest <br>
-I../git/src/gallium/include -I../git/src/gallium/auxiliary <br>
-I../git/src/gallium/auxiliary/util -I. -I../git -Isrc -I../git/src <br>
-fdiagnostics-color=3Dalways -DNDEBUG -pipe -D_FILE_OFFSET_BITS=3D64 <br>
-std=3Dgnu11 -DHAVE_CONFIG_H=3D1 -D_GNU_SOURCE=3D1 <br>
-Werror=3Dimplicit-function-declaration -Werror=3Dmissing-prototypes <br>
-Wmissing-prototypes -Werror=3Dint-to-pointer-cast -fvisibility=3Dhidden -=
O2 <br>
-g -feliminate-unused-debug-types <br>
-fmacro-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-li=
nux/virglrenderer/0.8.2-r0=3D/usr/src/debug/virglrenderer/0.8.2-r0 <br>
-fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-li=
nux/virglrenderer/0.8.2-r0=3D/usr/src/debug/virglrenderer/0.8.2-r0 <br>
-fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-li=
nux/virglrenderer/0.8.2-r0/recipe-sysroot=3D <br>
-fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-li=
nux/virglrenderer/0.8.2-r0/recipe-sysroot-native=3D <br>
-MD -MQ vtest/virgl_test_server.p/vtest_server.c.o -MF <br>
vtest/virgl_test_server.p/vtest_server.c.o.d -o <br>
vtest/virgl_test_server.p/vtest_server.c.o -c ../git/vtest/vtest_server.c<=
br>
[7/15] aarch64-overc-linux-gcc -march=3Darmv8-a+crc <br>
--sysroot=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virgl=
renderer/0.8.2-r0/recipe-sysroot <br>
-Isrc/libvirglrenderer.so.1.4.2.p -Isrc -I../git/src <br>
-I../git/src/gallium/include -I../git/src/gallium/auxiliary <br>
-I../git/src/gallium/auxiliary/util -I. -I../git <br>
-I/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0=
.8.2-r0/recipe-sysroot/usr/include/libdrm <br>
-fdiagnostics-color=3Dalways -DNDEBUG -pipe -D_FILE_OFFSET_BITS=3D64 <br>
-std=3Dgnu11 -DHAVE_CONFIG_H=3D1 -D_GNU_SOURCE=3D1 <br>
-Werror=3Dimplicit-function-declaration -Werror=3Dmissing-prototypes <br>
-Wmissing-prototypes -Werror=3Dint-to-pointer-cast -fvisibility=3Dhidden -=
O2 <br>
-g -feliminate-unused-debug-types <br>
-fmacro-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-li=
nux/virglrenderer/0.8.2-r0=3D/usr/src/debug/virglrenderer/0.8.2-r0 <br>
-fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-li=
nux/virglrenderer/0.8.2-r0=3D/usr/src/debug/virglrenderer/0.8.2-r0 <br>
-fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-li=
nux/virglrenderer/0.8.2-r0/recipe-sysroot=3D <br>
-fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-li=
nux/virglrenderer/0.8.2-r0/recipe-sysroot-native=3D <br>
-fPIC -pthread -MD -MQ src/libvirglrenderer.so.1.4.2.p/virglrenderer.c.o <=
br>
-MF src/libvirglrenderer.so.1.4.2.p/virglrenderer.c.o.d -o <br>
src/libvirglrenderer.so.1.4.2.p/virglrenderer.c.o -c <br>
../git/src/virglrenderer.c<br>
FAILED: src/libvirglrenderer.so.1.4.2.p/virglrenderer.c.o<br>
aarch64-overc-linux-gcc -march=3Darmv8-a+crc <br>
--sysroot=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virgl=
renderer/0.8.2-r0/recipe-sysroot <br>
-Isrc/libvirglrenderer.so.1.4.2.p -Isrc -I../git/src <br>
-I../git/src/gallium/include -I../git/src/gallium/auxiliary <br>
-I../git/src/gallium/auxiliary/util -I. -I../git <br>
-I/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0=
.8.2-r0/recipe-sysroot/usr/include/libdrm <br>
-fdiagnostics-color=3Dalways -DNDEBUG -pipe -D_FILE_OFFSET_BITS=3D64 <br>
-std=3Dgnu11 -DHAVE_CONFIG_H=3D1 -D_GNU_SOURCE=3D1 <br>
-Werror=3Dimplicit-function-declaration -Werror=3Dmissing-prototypes <br>
-Wmissing-prototypes -Werror=3Dint-to-pointer-cast -fvisibility=3Dhidden -=
O2 <br>
-g -feliminate-unused-debug-types <br>
-fmacro-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-li=
nux/virglrenderer/0.8.2-r0=3D/usr/src/debug/virglrenderer/0.8.2-r0 <br>
-fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-li=
nux/virglrenderer/0.8.2-r0=3D/usr/src/debug/virglrenderer/0.8.2-r0 <br>
-fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-li=
nux/virglrenderer/0.8.2-r0/recipe-sysroot=3D <br>
-fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-li=
nux/virglrenderer/0.8.2-r0/recipe-sysroot-native=3D <br>
-fPIC -pthread -MD -MQ src/libvirglrenderer.so.1.4.2.p/virglrenderer.c.o <=
br>
-MF src/libvirglrenderer.so.1.4.2.p/virglrenderer.c.o.d -o <br>
src/libvirglrenderer.so.1.4.2.p/virglrenderer.c.o -c <br>
../git/src/virglrenderer.c<br>
In file included from ../git/src/vrend_renderer.h:34,<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 from ../git/src/virglrenderer.c:37:<br>
../git/src/virgl_gbm.h:28:10: fatal error: gbm.h: No such file or director=
y<br>
=C2=A0=C2=A0=C2=A0 28 | #include &lt;gbm.h&gt;<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=
=C2=A0=C2=A0=C2=A0 ^~~~~~~<br>
compilation terminated.<br>
[8/15] aarch64-overc-linux-gcc -march=3Darmv8-a+crc <br>
--sysroot=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virgl=
renderer/0.8.2-r0/recipe-sysroot <br>
-Isrc/libvirgl.a.p -Isrc -I../git/src -I../git/src/gallium/include <br>
-I../git/src/gallium/auxiliary -I../git/src/gallium/auxiliary/util -I. <br=
>
-I../git <br>
-I/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0=
.8.2-r0/recipe-sysroot/usr/include/libdrm <br>
-fdiagnostics-color=3Dalways -DNDEBUG -pipe -D_FILE_OFFSET_BITS=3D64 <br>
-std=3Dgnu11 -DHAVE_CONFIG_H=3D1 -D_GNU_SOURCE=3D1 <br>
-Werror=3Dimplicit-function-declaration -Werror=3Dmissing-prototypes <br>
-Wmissing-prototypes -Werror=3Dint-to-pointer-cast -fvisibility=3Dhidden -=
O2 <br>
-g -feliminate-unused-debug-types <br>
-fmacro-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-li=
nux/virglrenderer/0.8.2-r0=3D/usr/src/debug/virglrenderer/0.8.2-r0 <br>
-fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-li=
nux/virglrenderer/0.8.2-r0=3D/usr/src/debug/virglrenderer/0.8.2-r0 <br>
-fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-li=
nux/virglrenderer/0.8.2-r0/recipe-sysroot=3D <br>
-fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-li=
nux/virglrenderer/0.8.2-r0/recipe-sysroot-native=3D <br>
-fPIC -pthread -MD -MQ src/libvirgl.a.p/vrend_formats.c.o -MF <br>
src/libvirgl.a.p/vrend_formats.c.o.d -o <br>
src/libvirgl.a.p/vrend_formats.c.o -c ../git/src/vrend_formats.c<br>
FAILED: src/libvirgl.a.p/vrend_formats.c.o<br>
aarch64-overc-linux-gcc -march=3Darmv8-a+crc <br>
--sysroot=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virgl=
renderer/0.8.2-r0/recipe-sysroot <br>
-Isrc/libvirgl.a.p -Isrc -I../git/src -I../git/src/gallium/include <br>
-I../git/src/gallium/auxiliary -I../git/src/gallium/auxiliary/util -I. <br=
>
-I../git <br>
-I/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0=
.8.2-r0/recipe-sysroot/usr/include/libdrm <br>
-fdiagnostics-color=3Dalways -DNDEBUG -pipe -D_FILE_OFFSET_BITS=3D64 <br>
-std=3Dgnu11 -DHAVE_CONFIG_H=3D1 -D_GNU_SOURCE=3D1 <br>
-Werror=3Dimplicit-function-declaration -Werror=3Dmissing-prototypes <br>
-Wmissing-prototypes -Werror=3Dint-to-pointer-cast -fvisibility=3Dhidden -=
O2 <br>
-g -feliminate-unused-debug-types <br>
-fmacro-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-li=
nux/virglrenderer/0.8.2-r0=3D/usr/src/debug/virglrenderer/0.8.2-r0 <br>
-fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-li=
nux/virglrenderer/0.8.2-r0=3D/usr/src/debug/virglrenderer/0.8.2-r0 <br>
-fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-li=
nux/virglrenderer/0.8.2-r0/recipe-sysroot=3D <br>
-fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-li=
nux/virglrenderer/0.8.2-r0/recipe-sysroot-native=3D <br>
-fPIC -pthread -MD -MQ src/libvirgl.a.p/vrend_formats.c.o -MF <br>
src/libvirgl.a.p/vrend_formats.c.o.d -o <br>
src/libvirgl.a.p/vrend_formats.c.o -c ../git/src/vrend_formats.c<br>
In file included from ../git/src/vrend_renderer.h:34,<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 from ../git/src/vrend_formats.c:26:<br>
../git/src/virgl_gbm.h:28:10: fatal error: gbm.h: No such file or director=
y<br>
=C2=A0=C2=A0=C2=A0 28 | #include &lt;gbm.h&gt;<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=
=C2=A0=C2=A0=C2=A0 ^~~~~~~<br>
compilation terminated.<br>
[9/15] aarch64-overc-linux-gcc -march=3Darmv8-a+crc <br>
--sysroot=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virgl=
renderer/0.8.2-r0/recipe-sysroot <br>
-Isrc/libvirgl.a.p -Isrc -I../git/src -I../git/src/gallium/include <br>
-I../git/src/gallium/auxiliary -I../git/src/gallium/auxiliary/util -I. <br=
>
-I../git <br>
-I/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0=
.8.2-r0/recipe-sysroot/usr/include/libdrm <br>
-fdiagnostics-color=3Dalways -DNDEBUG -pipe -D_FILE_OFFSET_BITS=3D64 <br>
-std=3Dgnu11 -DHAVE_CONFIG_H=3D1 -D_GNU_SOURCE=3D1 <br>
-Werror=3Dimplicit-function-declaration -Werror=3Dmissing-prototypes <br>
-Wmissing-prototypes -Werror=3Dint-to-pointer-cast -fvisibility=3Dhidden -=
O2 <br>
-g -feliminate-unused-debug-types <br>
-fmacro-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-li=
nux/virglrenderer/0.8.2-r0=3D/usr/src/debug/virglrenderer/0.8.2-r0 <br>
-fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-li=
nux/virglrenderer/0.8.2-r0=3D/usr/src/debug/virglrenderer/0.8.2-r0 <br>
-fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-li=
nux/virglrenderer/0.8.2-r0/recipe-sysroot=3D <br>
-fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-li=
nux/virglrenderer/0.8.2-r0/recipe-sysroot-native=3D <br>
-fPIC -pthread -MD -MQ src/libvirgl.a.p/vrend_decode.c.o -MF <br>
src/libvirgl.a.p/vrend_decode.c.o.d -o src/libvirgl.a.p/vrend_decode.c.o <=
br>
-c ../git/src/vrend_decode.c<br>
FAILED: src/libvirgl.a.p/vrend_decode.c.o<br>
aarch64-overc-linux-gcc -march=3Darmv8-a+crc <br>
--sysroot=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virgl=
renderer/0.8.2-r0/recipe-sysroot <br>
-Isrc/libvirgl.a.p -Isrc -I../git/src -I../git/src/gallium/include <br>
-I../git/src/gallium/auxiliary -I../git/src/gallium/auxiliary/util -I. <br=
>
-I../git <br>
-I/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0=
.8.2-r0/recipe-sysroot/usr/include/libdrm <br>
-fdiagnostics-color=3Dalways -DNDEBUG -pipe -D_FILE_OFFSET_BITS=3D64 <br>
-std=3Dgnu11 -DHAVE_CONFIG_H=3D1 -D_GNU_SOURCE=3D1 <br>
-Werror=3Dimplicit-function-declaration -Werror=3Dmissing-prototypes <br>
-Wmissing-prototypes -Werror=3Dint-to-pointer-cast -fvisibility=3Dhidden -=
O2 <br>
-g -feliminate-unused-debug-types <br>
-fmacro-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-li=
nux/virglrenderer/0.8.2-r0=3D/usr/src/debug/virglrenderer/0.8.2-r0 <br>
-fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-li=
nux/virglrenderer/0.8.2-r0=3D/usr/src/debug/virglrenderer/0.8.2-r0 <br>
-fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-li=
nux/virglrenderer/0.8.2-r0/recipe-sysroot=3D <br>
-fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-li=
nux/virglrenderer/0.8.2-r0/recipe-sysroot-native=3D <br>
-fPIC -pthread -MD -MQ src/libvirgl.a.p/vrend_decode.c.o -MF <br>
src/libvirgl.a.p/vrend_decode.c.o.d -o src/libvirgl.a.p/vrend_decode.c.o <=
br>
-c ../git/src/vrend_decode.c<br>
In file included from ../git/src/vrend_renderer.h:34,<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 from ../git/src/vrend_decode.c:34:<br>
../git/src/virgl_gbm.h:28:10: fatal error: gbm.h: No such file or director=
y<br>
=C2=A0=C2=A0=C2=A0 28 | #include &lt;gbm.h&gt;<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=
=C2=A0=C2=A0=C2=A0 ^~~~~~~<br>
compilation terminated.<br>
[10/15] aarch64-overc-linux-gcc -march=3Darmv8-a+crc <br>
--sysroot=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virgl=
renderer/0.8.2-r0/recipe-sysroot <br>
-Isrc/libvirgl.a.p -Isrc -I../git/src -I../git/src/gallium/include <br>
-I../git/src/gallium/auxiliary -I../git/src/gallium/auxiliary/util -I. <br=
>
-I../git <br>
-I/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0=
.8.2-r0/recipe-sysroot/usr/include/libdrm <br>
-fdiagnostics-color=3Dalways -DNDEBUG -pipe -D_FILE_OFFSET_BITS=3D64 <br>
-std=3Dgnu11 -DHAVE_CONFIG_H=3D1 -D_GNU_SOURCE=3D1 <br>
-Werror=3Dimplicit-function-declaration -Werror=3Dmissing-prototypes <br>
-Wmissing-prototypes -Werror=3Dint-to-pointer-cast -fvisibility=3Dhidden -=
O2 <br>
-g -feliminate-unused-debug-types <br>
-fmacro-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-li=
nux/virglrenderer/0.8.2-r0=3D/usr/src/debug/virglrenderer/0.8.2-r0 <br>
-fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-li=
nux/virglrenderer/0.8.2-r0=3D/usr/src/debug/virglrenderer/0.8.2-r0 <br>
-fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-li=
nux/virglrenderer/0.8.2-r0/recipe-sysroot=3D <br>
-fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-li=
nux/virglrenderer/0.8.2-r0/recipe-sysroot-native=3D <br>
-fPIC -pthread -MD -MQ src/libvirgl.a.p/virgl_glx_context.c.o -MF <br>
src/libvirgl.a.p/virgl_glx_context.c.o.d -o <br>
src/libvirgl.a.p/virgl_glx_context.c.o -c ../git/src/virgl_glx_context.c<b=
r>
FAILED: src/libvirgl.a.p/virgl_glx_context.c.o<br>
aarch64-overc-linux-gcc -march=3Darmv8-a+crc <br>
--sysroot=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virgl=
renderer/0.8.2-r0/recipe-sysroot <br>
-Isrc/libvirgl.a.p -Isrc -I../git/src -I../git/src/gallium/include <br>
-I../git/src/gallium/auxiliary -I../git/src/gallium/auxiliary/util -I. <br=
>
-I../git <br>
-I/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0=
.8.2-r0/recipe-sysroot/usr/include/libdrm <br>
-fdiagnostics-color=3Dalways -DNDEBUG -pipe -D_FILE_OFFSET_BITS=3D64 <br>
-std=3Dgnu11 -DHAVE_CONFIG_H=3D1 -D_GNU_SOURCE=3D1 <br>
-Werror=3Dimplicit-function-declaration -Werror=3Dmissing-prototypes <br>
-Wmissing-prototypes -Werror=3Dint-to-pointer-cast -fvisibility=3Dhidden -=
O2 <br>
-g -feliminate-unused-debug-types <br>
-fmacro-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-li=
nux/virglrenderer/0.8.2-r0=3D/usr/src/debug/virglrenderer/0.8.2-r0 <br>
-fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-li=
nux/virglrenderer/0.8.2-r0=3D/usr/src/debug/virglrenderer/0.8.2-r0 <br>
-fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-li=
nux/virglrenderer/0.8.2-r0/recipe-sysroot=3D <br>
-fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-li=
nux/virglrenderer/0.8.2-r0/recipe-sysroot-native=3D <br>
-fPIC -pthread -MD -MQ src/libvirgl.a.p/virgl_glx_context.c.o -MF <br>
src/libvirgl.a.p/virgl_glx_context.c.o.d -o <br>
src/libvirgl.a.p/virgl_glx_context.c.o -c ../git/src/virgl_glx_context.c<b=
r>
In file included from ../git/src/vrend_renderer.h:34,<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 from ../git/src/virgl_glx.h:27,<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 from ../git/src/virgl_glx_context.c:32:<br>
../git/src/virgl_gbm.h:28:10: fatal error: gbm.h: No such file or director=
y<br>
=C2=A0=C2=A0=C2=A0 28 | #include &lt;gbm.h&gt;<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=
=C2=A0=C2=A0=C2=A0 ^~~~~~~<br>
compilation terminated.<br>
[11/15] aarch64-overc-linux-gcc -march=3Darmv8-a+crc <br>
--sysroot=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virgl=
renderer/0.8.2-r0/recipe-sysroot <br>
-Ivtest/virgl_test_server.p -Ivtest -I../git/vtest <br>
-I../git/src/gallium/include -I../git/src/gallium/auxiliary <br>
-I../git/src/gallium/auxiliary/util -I. -I../git -Isrc -I../git/src <br>
-fdiagnostics-color=3Dalways -DNDEBUG -pipe -D_FILE_OFFSET_BITS=3D64 <br>
-std=3Dgnu11 -DHAVE_CONFIG_H=3D1 -D_GNU_SOURCE=3D1 <br>
-Werror=3Dimplicit-function-declaration -Werror=3Dmissing-prototypes <br>
-Wmissing-prototypes -Werror=3Dint-to-pointer-cast -fvisibility=3Dhidden -=
O2 <br>
-g -feliminate-unused-debug-types <br>
-fmacro-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-li=
nux/virglrenderer/0.8.2-r0=3D/usr/src/debug/virglrenderer/0.8.2-r0 <br>
-fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-li=
nux/virglrenderer/0.8.2-r0=3D/usr/src/debug/virglrenderer/0.8.2-r0 <br>
-fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-li=
nux/virglrenderer/0.8.2-r0/recipe-sysroot=3D <br>
-fdebug-prefix-map=3D/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-li=
nux/virglrenderer/0.8.2-r0/recipe-sysroot-native=3D <br>
-MD -MQ vtest/virgl_test_server.p/vtest_renderer.c.o -MF <br>
vtest/virgl_test_server.p/vtest_renderer.c.o.d -o <br>
vtest/virgl_test_server.p/vtest_renderer.c.o -c <br>
../git/vtest/vtest_renderer.c<br>
ninja: build stopped: subcommand failed.<br>
WARNING: <br>
/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8=
.2-r0/temp/run.do_compile.754739:152 <br>
exit 1 from &#39;ninja -v -j 16&#39;<br>
WARNING: Backtrace (BB generated script):<br>
=C2=A0=C2=A0=C2=A0=C2=A0 #1: meson_do_compile, <br>
/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8=
.2-r0/temp/run.do_compile.754739, <br>
line 152<br>
=C2=A0=C2=A0=C2=A0=C2=A0 #2: do_compile, <br>
/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8=
.2-r0/temp/run.do_compile.754739, <br>
line 147<br>
=C2=A0=C2=A0=C2=A0=C2=A0 #3: main, <br>
/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8=
.2-r0/temp/run.do_compile.754739, <br>
line 156<br>
<br>
Backtrace (metadata-relative locations):<br>
=C2=A0=C2=A0=C2=A0=C2=A0 #1: meson_do_compile, <br>
/home/dingo/overc/poky/meta/classes/meson.bbclass, line 180<br>
=C2=A0=C2=A0=C2=A0=C2=A0 #2: do_compile, autogenerated, line 2<br>
<br>
<br>
<br>
<br>
</blockquote></div></div>

--00000000000031773005b188c070--
