Received: from mx02.optimcloud.com (mx02.optimcloud.com [46.23.93.22])
 by mx.groups.io with SMTP id smtpd.web10.6950.1602576425801869120
 for <yocto@lists.yoctoproject.org>;
 Tue, 13 Oct 2020 01:07:07 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="no key for verify" header.i=@optimcloud.com header.s=obsd header.b=CSWUwAT3;
 spf=none, err=SPF record not found (domain: optimcloud.com, ip: 46.23.93.22, mailfrom: yocto@optimcloud.com)
Received: from mx02.optimcloud.com (localhost [127.0.0.1])
	by mx02.optimcloud.com (OpenSMTPD) with ESMTP id faf7cbd6;
	Tue, 13 Oct 2020 10:06:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed; d=optimcloud.com; h=
	subject:to:cc:references:from:message-id:date:mime-version
	:in-reply-to:content-type; s=obsd; bh=/lVK3MJqY7bOnyZnjGMJPoHIlR
	PSKItar6idQX0RXMg=; b=CSWUwAT35wPU1Utqw3fH9P+2RVwQ1e2nLoWepX9di1
	l1rBjNPy9UzrJum49/c6yHb2K2R3/zM1DVCT6Atr4+NzZegXaYur/ANcKhYdPZvW
	gbPeSfjYWjNbuK9Imw7m+bJl/rrTqmMkTsL8FiWyk1M/FaiAuNuSDIAMxYADq87f
	tUZAHSiKOdEzQTZvZa56BMWvitgYORrsENUsmGMyXxJvWA90UGK9EMk+t0HW1Muf
	YGvsO5vJNws+kVYhrzmKwsJpOYR0Pslkfps23leFdRyFjve0gn0IPKSvIt/W+snR
	037PMHCW+Kwep0PoU/6++KI6Tp1b1aRkmb/afyeGgA/A==
DomainKey-Signature: a=rsa-sha1; c=nofws; d=optimcloud.com; h=subject:to
	:cc:references:from:message-id:date:mime-version:in-reply-to
	:content-type; q=dns; s=obsd; b=s16criP0xEiO0jn/jstO1HA16Juvve0U
	PPGr66/V0KamZHfHFJ/qV8+/TS5Jt3A2iRPkNuJUyQsfuvTT9OKqpD1HKD83TsoT
	z4z0T1HksoxmQFVwuiTWTXVGLpJuM44AKH61ka41e90mJjUGbfcTbgVZ7QBSsRlR
	/60xQpNcIq7zxDACj9VepTikZEf3Gr0NCqcd4hAAEtkEXnt6Bx+vIDM5LiZqGFYO
	e3ocbBOM3JQecnqrJ2oAetGZXlFD2vLuv0yvRWV8+ZYHEtjpo5f4XuuGQcbcFr0S
	eBVD9z9656r25uCZh8LrT6mvzJ9XpqORf9yvG/bGGPPoka+oVZfGvg==
Received: 
	by mx02.optimcloud.com (OpenSMTPD) with ESMTPSA id 1390f984 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256:NO) auth=yes user=yocto@optimcloud.com;
	Tue, 13 Oct 2020 10:06:56 +0200 (CEST)
Subject: Re: [yocto] virglrenderer fatal error: gbm.h: No such file or directory
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: yocto@lists.yoctoproject.org
References: <db432deb-9818-206d-9d3f-ff7ac8342f60@optimcloud.com>
 <CANNYZj9Wt+fc8d0ETvpcJDs6JG8zbjWdFX946_Xo+T6nSSYW_w@mail.gmail.com>
From: "Yocto" <yocto@optimcloud.com>
Message-ID: <8e61138a-372e-ae5b-3ad1-3f74372d6d0f@optimcloud.com>
Date: Tue, 13 Oct 2020 15:06:49 +0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <CANNYZj9Wt+fc8d0ETvpcJDs6JG8zbjWdFX946_Xo+T6nSSYW_w@mail.gmail.com>
Content-Type: multipart/alternative;
 boundary="------------3576BDFECDBA804CF3489AE3"
Content-Language: en-US

--------------3576BDFECDBA804CF3489AE3
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

its building from meta-tegra ....

On 10/13/20 2:56 PM, Alexander Kanavin wrote:
> Virgl only has been verified with Mesa, if your bsp provides something 
> else for virtual/libgl, it is not going to work. Please ask your bsp 
> supplier (Nvidia I guess?) what to do.
>
> Alex
>
> On Tue 13. Oct 2020 at 6.28, Yocto <yocto@optimcloud.com 
> <mailto:yocto@optimcloud.com>> wrote:
>
>     virglrenderer appears broken, occurs on both Fedora-32 and Debian-10
>
>     Build Configuration:
>     BB_VERSION           = "1.47.0"
>     BUILD_SYS            = "x86_64-linux"
>     NATIVELSBSTRING      = "fedora-32"
>     TARGET_SYS           = "aarch64-overc-linux"
>     MACHINE              = "jetson-xavier-nx-devkit"
>     DISTRO               = "overc"
>     DISTRO_VERSION       = "1.0"
>     TUNE_FEATURES        = "aarch64 armv8a crc"
>     TARGET_FPU           = ""
>     meta
>     meta-poky
>     meta-yocto-bsp       =
>     "master:0c0b236b4c72d30e0e88f5f0310476569d444e83"
>     meta-tegra           =
>     "master:01c3205183af0236101b423d48a8af167baee8b1"
>     meta-oe
>     meta-python
>     meta-networking
>     meta-filesystems
>     meta-gnome
>     meta-xfce
>     meta-multimedia
>     meta-perl            =
>     "master:d25d21a8b40d3fe29298f3aa43328477ce4d8ee7"
>     meta-overc
>     meta-cube            =
>     "master:264d1d0949fb5e9ec8e39b1f7604086d59ec2047"
>     meta-awnix           =
>     "master:c616414c6ed4f6f2ab75703ce5a3e84acacd3c47"
>     meta-virtualization  =
>     "master:43a5cc7f031da1ef75b1ff33def3ef4984ad72e3"
>     meta-cloud-services  =
>     "master:910195eb791d754d394ba1013a258ab120c995e9"
>     meta-security        =
>     "master:3ce8b759c97706d6f78928c38b6ebac4edfd95a5"
>     meta-selinux         =
>     "master:6e1100d29aec118df2025c46c77f4c8aa8da4e76"
>
>
>     ❯ cat
>     /var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/temp/log.do_compile.754739
>     DEBUG: Executing shell function do_compile
>     [1/15] rm -f src/gallium/libgallium.a &&
>     aarch64-overc-linux-gcc-ar csrD
>     src/gallium/libgallium.a
>     src/gallium/libgallium.a.p/meson-generated_.._u_format_table.c.o
>     src/gallium/libgallium.a.p/auxiliary_util_u_format.c.o
>     src/gallium/libgallium.a.p/auxiliary_util_u_texture.c.o
>     src/gallium/libgallium.a.p/auxiliary_util_u_hash_table.c.o
>     src/gallium/libgallium.a.p/auxiliary_util_u_debug.c.o
>     src/gallium/libgallium.a.p/auxiliary_util_u_cpu_detect.c.o
>     src/gallium/libgallium.a.p/auxiliary_util_u_bitmask.c.o
>     src/gallium/libgallium.a.p/auxiliary_util_u_surface.c.o
>     src/gallium/libgallium.a.p/auxiliary_util_u_math.c.o
>     src/gallium/libgallium.a.p/auxiliary_util_u_debug_describe.c.o
>     src/gallium/libgallium.a.p/auxiliary_cso_cache_cso_cache.c.o
>     src/gallium/libgallium.a.p/auxiliary_cso_cache_cso_hash.c.o
>     src/gallium/libgallium.a.p/auxiliary_tgsi_tgsi_dump.c.o
>     src/gallium/libgallium.a.p/auxiliary_tgsi_tgsi_ureg.c.o
>     src/gallium/libgallium.a.p/auxiliary_tgsi_tgsi_build.c.o
>     src/gallium/libgallium.a.p/auxiliary_tgsi_tgsi_scan.c.o
>     src/gallium/libgallium.a.p/auxiliary_tgsi_tgsi_info.c.o
>     src/gallium/libgallium.a.p/auxiliary_tgsi_tgsi_parse.c.o
>     src/gallium/libgallium.a.p/auxiliary_tgsi_tgsi_text.c.o
>     src/gallium/libgallium.a.p/auxiliary_tgsi_tgsi_strings.c.o
>     src/gallium/libgallium.a.p/auxiliary_tgsi_tgsi_sanity.c.o
>     src/gallium/libgallium.a.p/auxiliary_tgsi_tgsi_iterate.c.o
>     src/gallium/libgallium.a.p/auxiliary_tgsi_tgsi_util.c.o
>     src/gallium/libgallium.a.p/auxiliary_tgsi_tgsi_transform.c.o
>     src/gallium/libgallium.a.p/auxiliary_os_os_misc.c.o
>     [2/15] aarch64-overc-linux-gcc -march=armv8-a+crc
>     --sysroot=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot
>
>     -Ivtest/virgl_test_server.p -Ivtest -I../git/vtest
>     -I../git/src/gallium/include -I../git/src/gallium/auxiliary
>     -I../git/src/gallium/auxiliary/util -I. -I../git -Isrc -I../git/src
>     -fdiagnostics-color=always -DNDEBUG -pipe -D_FILE_OFFSET_BITS=64
>     -std=gnu11 -DHAVE_CONFIG_H=1 -D_GNU_SOURCE=1
>     -Werror=implicit-function-declaration -Werror=missing-prototypes
>     -Wmissing-prototypes -Werror=int-to-pointer-cast
>     -fvisibility=hidden -O2
>     -g -feliminate-unused-debug-types
>     -fmacro-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0
>
>     -fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0
>
>     -fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot=
>
>     -fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot-native=
>
>     -MD -MQ vtest/virgl_test_server.p/vtest_shm.c.o -MF
>     vtest/virgl_test_server.p/vtest_shm.c.o.d -o
>     vtest/virgl_test_server.p/vtest_shm.c.o -c ../git/vtest/vtest_shm.c
>     [3/15] aarch64-overc-linux-gcc -march=armv8-a+crc
>     --sysroot=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot
>
>     -Isrc/libvirgl.a.p -Isrc -I../git/src -I../git/src/gallium/include
>     -I../git/src/gallium/auxiliary -I../git/src/gallium/auxiliary/util
>     -I.
>     -I../git
>     -I/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot/usr/include/libdrm
>
>     -fdiagnostics-color=always -DNDEBUG -pipe -D_FILE_OFFSET_BITS=64
>     -std=gnu11 -DHAVE_CONFIG_H=1 -D_GNU_SOURCE=1
>     -Werror=implicit-function-declaration -Werror=missing-prototypes
>     -Wmissing-prototypes -Werror=int-to-pointer-cast
>     -fvisibility=hidden -O2
>     -g -feliminate-unused-debug-types
>     -fmacro-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0
>
>     -fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0
>
>     -fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot=
>
>     -fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot-native=
>
>     -fPIC -pthread -MD -MQ src/libvirgl.a.p/vrend_debug.c.o -MF
>     src/libvirgl.a.p/vrend_debug.c.o.d -o
>     src/libvirgl.a.p/vrend_debug.c.o
>     -c ../git/src/vrend_debug.c
>     FAILED: src/libvirgl.a.p/vrend_debug.c.o
>     aarch64-overc-linux-gcc -march=armv8-a+crc
>     --sysroot=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot
>
>     -Isrc/libvirgl.a.p -Isrc -I../git/src -I../git/src/gallium/include
>     -I../git/src/gallium/auxiliary -I../git/src/gallium/auxiliary/util
>     -I.
>     -I../git
>     -I/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot/usr/include/libdrm
>
>     -fdiagnostics-color=always -DNDEBUG -pipe -D_FILE_OFFSET_BITS=64
>     -std=gnu11 -DHAVE_CONFIG_H=1 -D_GNU_SOURCE=1
>     -Werror=implicit-function-declaration -Werror=missing-prototypes
>     -Wmissing-prototypes -Werror=int-to-pointer-cast
>     -fvisibility=hidden -O2
>     -g -feliminate-unused-debug-types
>     -fmacro-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0
>
>     -fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0
>
>     -fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot=
>
>     -fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot-native=
>
>     -fPIC -pthread -MD -MQ src/libvirgl.a.p/vrend_debug.c.o -MF
>     src/libvirgl.a.p/vrend_debug.c.o.d -o
>     src/libvirgl.a.p/vrend_debug.c.o
>     -c ../git/src/vrend_debug.c
>     In file included from ../git/src/vrend_renderer.h:34,
>                       from ../git/src/vrend_debug.c:26:
>     ../git/src/virgl_gbm.h:28:10: fatal error: gbm.h: No such file or
>     directory
>         28 | #include <gbm.h>
>            |          ^~~~~~~
>     compilation terminated.
>     [4/15] aarch64-overc-linux-gcc -march=armv8-a+crc
>     --sysroot=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot
>
>     -Isrc/libvirgl.a.p -Isrc -I../git/src -I../git/src/gallium/include
>     -I../git/src/gallium/auxiliary -I../git/src/gallium/auxiliary/util
>     -I.
>     -I../git
>     -I/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot/usr/include/libdrm
>
>     -fdiagnostics-color=always -DNDEBUG -pipe -D_FILE_OFFSET_BITS=64
>     -std=gnu11 -DHAVE_CONFIG_H=1 -D_GNU_SOURCE=1
>     -Werror=implicit-function-declaration -Werror=missing-prototypes
>     -Wmissing-prototypes -Werror=int-to-pointer-cast
>     -fvisibility=hidden -O2
>     -g -feliminate-unused-debug-types
>     -fmacro-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0
>
>     -fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0
>
>     -fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot=
>
>     -fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot-native=
>
>     -fPIC -pthread -MD -MQ src/libvirgl.a.p/vrend_renderer.c.o -MF
>     src/libvirgl.a.p/vrend_renderer.c.o.d -o
>     src/libvirgl.a.p/vrend_renderer.c.o -c ../git/src/vrend_renderer.c
>     FAILED: src/libvirgl.a.p/vrend_renderer.c.o
>     aarch64-overc-linux-gcc -march=armv8-a+crc
>     --sysroot=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot
>
>     -Isrc/libvirgl.a.p -Isrc -I../git/src -I../git/src/gallium/include
>     -I../git/src/gallium/auxiliary -I../git/src/gallium/auxiliary/util
>     -I.
>     -I../git
>     -I/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot/usr/include/libdrm
>
>     -fdiagnostics-color=always -DNDEBUG -pipe -D_FILE_OFFSET_BITS=64
>     -std=gnu11 -DHAVE_CONFIG_H=1 -D_GNU_SOURCE=1
>     -Werror=implicit-function-declaration -Werror=missing-prototypes
>     -Wmissing-prototypes -Werror=int-to-pointer-cast
>     -fvisibility=hidden -O2
>     -g -feliminate-unused-debug-types
>     -fmacro-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0
>
>     -fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0
>
>     -fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot=
>
>     -fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot-native=
>
>     -fPIC -pthread -MD -MQ src/libvirgl.a.p/vrend_renderer.c.o -MF
>     src/libvirgl.a.p/vrend_renderer.c.o.d -o
>     src/libvirgl.a.p/vrend_renderer.c.o -c ../git/src/vrend_renderer.c
>     In file included from ../git/src/vrend_renderer.h:34,
>                       from ../git/src/vrend_renderer.c:49:
>     ../git/src/virgl_gbm.h:28:10: fatal error: gbm.h: No such file or
>     directory
>         28 | #include <gbm.h>
>            |          ^~~~~~~
>     compilation terminated.
>     [5/15] aarch64-overc-linux-gcc -march=armv8-a+crc
>     --sysroot=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot
>
>     -Isrc/libvirgl.a.p -Isrc -I../git/src -I../git/src/gallium/include
>     -I../git/src/gallium/auxiliary -I../git/src/gallium/auxiliary/util
>     -I.
>     -I../git
>     -I/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot/usr/include/libdrm
>
>     -fdiagnostics-color=always -DNDEBUG -pipe -D_FILE_OFFSET_BITS=64
>     -std=gnu11 -DHAVE_CONFIG_H=1 -D_GNU_SOURCE=1
>     -Werror=implicit-function-declaration -Werror=missing-prototypes
>     -Wmissing-prototypes -Werror=int-to-pointer-cast
>     -fvisibility=hidden -O2
>     -g -feliminate-unused-debug-types
>     -fmacro-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0
>
>     -fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0
>
>     -fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot=
>
>     -fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot-native=
>
>     -fPIC -pthread -MD -MQ src/libvirgl.a.p/vrend_blitter.c.o -MF
>     src/libvirgl.a.p/vrend_blitter.c.o.d -o
>     src/libvirgl.a.p/vrend_blitter.c.o -c ../git/src/vrend_blitter.c
>     FAILED: src/libvirgl.a.p/vrend_blitter.c.o
>     aarch64-overc-linux-gcc -march=armv8-a+crc
>     --sysroot=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot
>
>     -Isrc/libvirgl.a.p -Isrc -I../git/src -I../git/src/gallium/include
>     -I../git/src/gallium/auxiliary -I../git/src/gallium/auxiliary/util
>     -I.
>     -I../git
>     -I/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot/usr/include/libdrm
>
>     -fdiagnostics-color=always -DNDEBUG -pipe -D_FILE_OFFSET_BITS=64
>     -std=gnu11 -DHAVE_CONFIG_H=1 -D_GNU_SOURCE=1
>     -Werror=implicit-function-declaration -Werror=missing-prototypes
>     -Wmissing-prototypes -Werror=int-to-pointer-cast
>     -fvisibility=hidden -O2
>     -g -feliminate-unused-debug-types
>     -fmacro-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0
>
>     -fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0
>
>     -fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot=
>
>     -fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot-native=
>
>     -fPIC -pthread -MD -MQ src/libvirgl.a.p/vrend_blitter.c.o -MF
>     src/libvirgl.a.p/vrend_blitter.c.o.d -o
>     src/libvirgl.a.p/vrend_blitter.c.o -c ../git/src/vrend_blitter.c
>     In file included from ../git/src/vrend_renderer.h:34,
>                       from ../git/src/vrend_blitter.c:48:
>     ../git/src/virgl_gbm.h:28:10: fatal error: gbm.h: No such file or
>     directory
>         28 | #include <gbm.h>
>            |          ^~~~~~~
>     compilation terminated.
>     [6/15] aarch64-overc-linux-gcc -march=armv8-a+crc
>     --sysroot=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot
>
>     -Ivtest/virgl_test_server.p -Ivtest -I../git/vtest
>     -I../git/src/gallium/include -I../git/src/gallium/auxiliary
>     -I../git/src/gallium/auxiliary/util -I. -I../git -Isrc -I../git/src
>     -fdiagnostics-color=always -DNDEBUG -pipe -D_FILE_OFFSET_BITS=64
>     -std=gnu11 -DHAVE_CONFIG_H=1 -D_GNU_SOURCE=1
>     -Werror=implicit-function-declaration -Werror=missing-prototypes
>     -Wmissing-prototypes -Werror=int-to-pointer-cast
>     -fvisibility=hidden -O2
>     -g -feliminate-unused-debug-types
>     -fmacro-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0
>
>     -fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0
>
>     -fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot=
>
>     -fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot-native=
>
>     -MD -MQ vtest/virgl_test_server.p/vtest_server.c.o -MF
>     vtest/virgl_test_server.p/vtest_server.c.o.d -o
>     vtest/virgl_test_server.p/vtest_server.c.o -c
>     ../git/vtest/vtest_server.c
>     [7/15] aarch64-overc-linux-gcc -march=armv8-a+crc
>     --sysroot=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot
>
>     -Isrc/libvirglrenderer.so.1.4.2.p -Isrc -I../git/src
>     -I../git/src/gallium/include -I../git/src/gallium/auxiliary
>     -I../git/src/gallium/auxiliary/util -I. -I../git
>     -I/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot/usr/include/libdrm
>
>     -fdiagnostics-color=always -DNDEBUG -pipe -D_FILE_OFFSET_BITS=64
>     -std=gnu11 -DHAVE_CONFIG_H=1 -D_GNU_SOURCE=1
>     -Werror=implicit-function-declaration -Werror=missing-prototypes
>     -Wmissing-prototypes -Werror=int-to-pointer-cast
>     -fvisibility=hidden -O2
>     -g -feliminate-unused-debug-types
>     -fmacro-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0
>
>     -fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0
>
>     -fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot=
>
>     -fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot-native=
>
>     -fPIC -pthread -MD -MQ
>     src/libvirglrenderer.so.1.4.2.p/virglrenderer.c.o
>     -MF src/libvirglrenderer.so.1.4.2.p/virglrenderer.c.o.d -o
>     src/libvirglrenderer.so.1.4.2.p/virglrenderer.c.o -c
>     ../git/src/virglrenderer.c
>     FAILED: src/libvirglrenderer.so.1.4.2.p/virglrenderer.c.o
>     aarch64-overc-linux-gcc -march=armv8-a+crc
>     --sysroot=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot
>
>     -Isrc/libvirglrenderer.so.1.4.2.p -Isrc -I../git/src
>     -I../git/src/gallium/include -I../git/src/gallium/auxiliary
>     -I../git/src/gallium/auxiliary/util -I. -I../git
>     -I/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot/usr/include/libdrm
>
>     -fdiagnostics-color=always -DNDEBUG -pipe -D_FILE_OFFSET_BITS=64
>     -std=gnu11 -DHAVE_CONFIG_H=1 -D_GNU_SOURCE=1
>     -Werror=implicit-function-declaration -Werror=missing-prototypes
>     -Wmissing-prototypes -Werror=int-to-pointer-cast
>     -fvisibility=hidden -O2
>     -g -feliminate-unused-debug-types
>     -fmacro-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0
>
>     -fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0
>
>     -fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot=
>
>     -fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot-native=
>
>     -fPIC -pthread -MD -MQ
>     src/libvirglrenderer.so.1.4.2.p/virglrenderer.c.o
>     -MF src/libvirglrenderer.so.1.4.2.p/virglrenderer.c.o.d -o
>     src/libvirglrenderer.so.1.4.2.p/virglrenderer.c.o -c
>     ../git/src/virglrenderer.c
>     In file included from ../git/src/vrend_renderer.h:34,
>                       from ../git/src/virglrenderer.c:37:
>     ../git/src/virgl_gbm.h:28:10: fatal error: gbm.h: No such file or
>     directory
>         28 | #include <gbm.h>
>            |          ^~~~~~~
>     compilation terminated.
>     [8/15] aarch64-overc-linux-gcc -march=armv8-a+crc
>     --sysroot=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot
>
>     -Isrc/libvirgl.a.p -Isrc -I../git/src -I../git/src/gallium/include
>     -I../git/src/gallium/auxiliary -I../git/src/gallium/auxiliary/util
>     -I.
>     -I../git
>     -I/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot/usr/include/libdrm
>
>     -fdiagnostics-color=always -DNDEBUG -pipe -D_FILE_OFFSET_BITS=64
>     -std=gnu11 -DHAVE_CONFIG_H=1 -D_GNU_SOURCE=1
>     -Werror=implicit-function-declaration -Werror=missing-prototypes
>     -Wmissing-prototypes -Werror=int-to-pointer-cast
>     -fvisibility=hidden -O2
>     -g -feliminate-unused-debug-types
>     -fmacro-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0
>
>     -fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0
>
>     -fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot=
>
>     -fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot-native=
>
>     -fPIC -pthread -MD -MQ src/libvirgl.a.p/vrend_formats.c.o -MF
>     src/libvirgl.a.p/vrend_formats.c.o.d -o
>     src/libvirgl.a.p/vrend_formats.c.o -c ../git/src/vrend_formats.c
>     FAILED: src/libvirgl.a.p/vrend_formats.c.o
>     aarch64-overc-linux-gcc -march=armv8-a+crc
>     --sysroot=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot
>
>     -Isrc/libvirgl.a.p -Isrc -I../git/src -I../git/src/gallium/include
>     -I../git/src/gallium/auxiliary -I../git/src/gallium/auxiliary/util
>     -I.
>     -I../git
>     -I/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot/usr/include/libdrm
>
>     -fdiagnostics-color=always -DNDEBUG -pipe -D_FILE_OFFSET_BITS=64
>     -std=gnu11 -DHAVE_CONFIG_H=1 -D_GNU_SOURCE=1
>     -Werror=implicit-function-declaration -Werror=missing-prototypes
>     -Wmissing-prototypes -Werror=int-to-pointer-cast
>     -fvisibility=hidden -O2
>     -g -feliminate-unused-debug-types
>     -fmacro-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0
>
>     -fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0
>
>     -fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot=
>
>     -fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot-native=
>
>     -fPIC -pthread -MD -MQ src/libvirgl.a.p/vrend_formats.c.o -MF
>     src/libvirgl.a.p/vrend_formats.c.o.d -o
>     src/libvirgl.a.p/vrend_formats.c.o -c ../git/src/vrend_formats.c
>     In file included from ../git/src/vrend_renderer.h:34,
>                       from ../git/src/vrend_formats.c:26:
>     ../git/src/virgl_gbm.h:28:10: fatal error: gbm.h: No such file or
>     directory
>         28 | #include <gbm.h>
>            |          ^~~~~~~
>     compilation terminated.
>     [9/15] aarch64-overc-linux-gcc -march=armv8-a+crc
>     --sysroot=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot
>
>     -Isrc/libvirgl.a.p -Isrc -I../git/src -I../git/src/gallium/include
>     -I../git/src/gallium/auxiliary -I../git/src/gallium/auxiliary/util
>     -I.
>     -I../git
>     -I/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot/usr/include/libdrm
>
>     -fdiagnostics-color=always -DNDEBUG -pipe -D_FILE_OFFSET_BITS=64
>     -std=gnu11 -DHAVE_CONFIG_H=1 -D_GNU_SOURCE=1
>     -Werror=implicit-function-declaration -Werror=missing-prototypes
>     -Wmissing-prototypes -Werror=int-to-pointer-cast
>     -fvisibility=hidden -O2
>     -g -feliminate-unused-debug-types
>     -fmacro-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0
>
>     -fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0
>
>     -fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot=
>
>     -fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot-native=
>
>     -fPIC -pthread -MD -MQ src/libvirgl.a.p/vrend_decode.c.o -MF
>     src/libvirgl.a.p/vrend_decode.c.o.d -o
>     src/libvirgl.a.p/vrend_decode.c.o
>     -c ../git/src/vrend_decode.c
>     FAILED: src/libvirgl.a.p/vrend_decode.c.o
>     aarch64-overc-linux-gcc -march=armv8-a+crc
>     --sysroot=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot
>
>     -Isrc/libvirgl.a.p -Isrc -I../git/src -I../git/src/gallium/include
>     -I../git/src/gallium/auxiliary -I../git/src/gallium/auxiliary/util
>     -I.
>     -I../git
>     -I/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot/usr/include/libdrm
>
>     -fdiagnostics-color=always -DNDEBUG -pipe -D_FILE_OFFSET_BITS=64
>     -std=gnu11 -DHAVE_CONFIG_H=1 -D_GNU_SOURCE=1
>     -Werror=implicit-function-declaration -Werror=missing-prototypes
>     -Wmissing-prototypes -Werror=int-to-pointer-cast
>     -fvisibility=hidden -O2
>     -g -feliminate-unused-debug-types
>     -fmacro-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0
>
>     -fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0
>
>     -fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot=
>
>     -fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot-native=
>
>     -fPIC -pthread -MD -MQ src/libvirgl.a.p/vrend_decode.c.o -MF
>     src/libvirgl.a.p/vrend_decode.c.o.d -o
>     src/libvirgl.a.p/vrend_decode.c.o
>     -c ../git/src/vrend_decode.c
>     In file included from ../git/src/vrend_renderer.h:34,
>                       from ../git/src/vrend_decode.c:34:
>     ../git/src/virgl_gbm.h:28:10: fatal error: gbm.h: No such file or
>     directory
>         28 | #include <gbm.h>
>            |          ^~~~~~~
>     compilation terminated.
>     [10/15] aarch64-overc-linux-gcc -march=armv8-a+crc
>     --sysroot=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot
>
>     -Isrc/libvirgl.a.p -Isrc -I../git/src -I../git/src/gallium/include
>     -I../git/src/gallium/auxiliary -I../git/src/gallium/auxiliary/util
>     -I.
>     -I../git
>     -I/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot/usr/include/libdrm
>
>     -fdiagnostics-color=always -DNDEBUG -pipe -D_FILE_OFFSET_BITS=64
>     -std=gnu11 -DHAVE_CONFIG_H=1 -D_GNU_SOURCE=1
>     -Werror=implicit-function-declaration -Werror=missing-prototypes
>     -Wmissing-prototypes -Werror=int-to-pointer-cast
>     -fvisibility=hidden -O2
>     -g -feliminate-unused-debug-types
>     -fmacro-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0
>
>     -fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0
>
>     -fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot=
>
>     -fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot-native=
>
>     -fPIC -pthread -MD -MQ src/libvirgl.a.p/virgl_glx_context.c.o -MF
>     src/libvirgl.a.p/virgl_glx_context.c.o.d -o
>     src/libvirgl.a.p/virgl_glx_context.c.o -c
>     ../git/src/virgl_glx_context.c
>     FAILED: src/libvirgl.a.p/virgl_glx_context.c.o
>     aarch64-overc-linux-gcc -march=armv8-a+crc
>     --sysroot=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot
>
>     -Isrc/libvirgl.a.p -Isrc -I../git/src -I../git/src/gallium/include
>     -I../git/src/gallium/auxiliary -I../git/src/gallium/auxiliary/util
>     -I.
>     -I../git
>     -I/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot/usr/include/libdrm
>
>     -fdiagnostics-color=always -DNDEBUG -pipe -D_FILE_OFFSET_BITS=64
>     -std=gnu11 -DHAVE_CONFIG_H=1 -D_GNU_SOURCE=1
>     -Werror=implicit-function-declaration -Werror=missing-prototypes
>     -Wmissing-prototypes -Werror=int-to-pointer-cast
>     -fvisibility=hidden -O2
>     -g -feliminate-unused-debug-types
>     -fmacro-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0
>
>     -fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0
>
>     -fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot=
>
>     -fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot-native=
>
>     -fPIC -pthread -MD -MQ src/libvirgl.a.p/virgl_glx_context.c.o -MF
>     src/libvirgl.a.p/virgl_glx_context.c.o.d -o
>     src/libvirgl.a.p/virgl_glx_context.c.o -c
>     ../git/src/virgl_glx_context.c
>     In file included from ../git/src/vrend_renderer.h:34,
>                       from ../git/src/virgl_glx.h:27,
>                       from ../git/src/virgl_glx_context.c:32:
>     ../git/src/virgl_gbm.h:28:10: fatal error: gbm.h: No such file or
>     directory
>         28 | #include <gbm.h>
>            |          ^~~~~~~
>     compilation terminated.
>     [11/15] aarch64-overc-linux-gcc -march=armv8-a+crc
>     --sysroot=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot
>
>     -Ivtest/virgl_test_server.p -Ivtest -I../git/vtest
>     -I../git/src/gallium/include -I../git/src/gallium/auxiliary
>     -I../git/src/gallium/auxiliary/util -I. -I../git -Isrc -I../git/src
>     -fdiagnostics-color=always -DNDEBUG -pipe -D_FILE_OFFSET_BITS=64
>     -std=gnu11 -DHAVE_CONFIG_H=1 -D_GNU_SOURCE=1
>     -Werror=implicit-function-declaration -Werror=missing-prototypes
>     -Wmissing-prototypes -Werror=int-to-pointer-cast
>     -fvisibility=hidden -O2
>     -g -feliminate-unused-debug-types
>     -fmacro-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0
>
>     -fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0
>
>     -fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot=
>
>     -fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot-native=
>
>     -MD -MQ vtest/virgl_test_server.p/vtest_renderer.c.o -MF
>     vtest/virgl_test_server.p/vtest_renderer.c.o.d -o
>     vtest/virgl_test_server.p/vtest_renderer.c.o -c
>     ../git/vtest/vtest_renderer.c
>     ninja: build stopped: subcommand failed.
>     WARNING:
>     /var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/temp/run.do_compile.754739:152
>
>     exit 1 from 'ninja -v -j 16'
>     WARNING: Backtrace (BB generated script):
>          #1: meson_do_compile,
>     /var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/temp/run.do_compile.754739,
>
>     line 152
>          #2: do_compile,
>     /var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/temp/run.do_compile.754739,
>
>     line 147
>          #3: main,
>     /var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/temp/run.do_compile.754739,
>
>     line 156
>     ERROR: Execution of
>     '/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/temp/run.do_compile.754739'
>
>     failed with exit code 1:
>     [1/15] rm -f src/gallium/libgallium.a &&
>     aarch64-overc-linux-gcc-ar csrD
>     src/gallium/libgallium.a
>     src/gallium/libgallium.a.p/meson-generated_.._u_format_table.c.o
>     src/gallium/libgallium.a.p/auxiliary_util_u_format.c.o
>     src/gallium/libgallium.a.p/auxiliary_util_u_texture.c.o
>     src/gallium/libgallium.a.p/auxiliary_util_u_hash_table.c.o
>     src/gallium/libgallium.a.p/auxiliary_util_u_debug.c.o
>     src/gallium/libgallium.a.p/auxiliary_util_u_cpu_detect.c.o
>     src/gallium/libgallium.a.p/auxiliary_util_u_bitmask.c.o
>     src/gallium/libgallium.a.p/auxiliary_util_u_surface.c.o
>     src/gallium/libgallium.a.p/auxiliary_util_u_math.c.o
>     src/gallium/libgallium.a.p/auxiliary_util_u_debug_describe.c.o
>     src/gallium/libgallium.a.p/auxiliary_cso_cache_cso_cache.c.o
>     src/gallium/libgallium.a.p/auxiliary_cso_cache_cso_hash.c.o
>     src/gallium/libgallium.a.p/auxiliary_tgsi_tgsi_dump.c.o
>     src/gallium/libgallium.a.p/auxiliary_tgsi_tgsi_ureg.c.o
>     src/gallium/libgallium.a.p/auxiliary_tgsi_tgsi_build.c.o
>     src/gallium/libgallium.a.p/auxiliary_tgsi_tgsi_scan.c.o
>     src/gallium/libgallium.a.p/auxiliary_tgsi_tgsi_info.c.o
>     src/gallium/libgallium.a.p/auxiliary_tgsi_tgsi_parse.c.o
>     src/gallium/libgallium.a.p/auxiliary_tgsi_tgsi_text.c.o
>     src/gallium/libgallium.a.p/auxiliary_tgsi_tgsi_strings.c.o
>     src/gallium/libgallium.a.p/auxiliary_tgsi_tgsi_sanity.c.o
>     src/gallium/libgallium.a.p/auxiliary_tgsi_tgsi_iterate.c.o
>     src/gallium/libgallium.a.p/auxiliary_tgsi_tgsi_util.c.o
>     src/gallium/libgallium.a.p/auxiliary_tgsi_tgsi_transform.c.o
>     src/gallium/libgallium.a.p/auxiliary_os_os_misc.c.o
>     [2/15] aarch64-overc-linux-gcc -march=armv8-a+crc
>     --sysroot=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot
>
>     -Ivtest/virgl_test_server.p -Ivtest -I../git/vtest
>     -I../git/src/gallium/include -I../git/src/gallium/auxiliary
>     -I../git/src/gallium/auxiliary/util -I. -I../git -Isrc -I../git/src
>     -fdiagnostics-color=always -DNDEBUG -pipe -D_FILE_OFFSET_BITS=64
>     -std=gnu11 -DHAVE_CONFIG_H=1 -D_GNU_SOURCE=1
>     -Werror=implicit-function-declaration -Werror=missing-prototypes
>     -Wmissing-prototypes -Werror=int-to-pointer-cast
>     -fvisibility=hidden -O2
>     -g -feliminate-unused-debug-types
>     -fmacro-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0
>
>     -fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0
>
>     -fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot=
>
>     -fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot-native=
>
>     -MD -MQ vtest/virgl_test_server.p/vtest_shm.c.o -MF
>     vtest/virgl_test_server.p/vtest_shm.c.o.d -o
>     vtest/virgl_test_server.p/vtest_shm.c.o -c ../git/vtest/vtest_shm.c
>     [3/15] aarch64-overc-linux-gcc -march=armv8-a+crc
>     --sysroot=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot
>
>     -Isrc/libvirgl.a.p -Isrc -I../git/src -I../git/src/gallium/include
>     -I../git/src/gallium/auxiliary -I../git/src/gallium/auxiliary/util
>     -I.
>     -I../git
>     -I/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot/usr/include/libdrm
>
>     -fdiagnostics-color=always -DNDEBUG -pipe -D_FILE_OFFSET_BITS=64
>     -std=gnu11 -DHAVE_CONFIG_H=1 -D_GNU_SOURCE=1
>     -Werror=implicit-function-declaration -Werror=missing-prototypes
>     -Wmissing-prototypes -Werror=int-to-pointer-cast
>     -fvisibility=hidden -O2
>     -g -feliminate-unused-debug-types
>     -fmacro-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0
>
>     -fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0
>
>     -fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot=
>
>     -fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot-native=
>
>     -fPIC -pthread -MD -MQ src/libvirgl.a.p/vrend_debug.c.o -MF
>     src/libvirgl.a.p/vrend_debug.c.o.d -o
>     src/libvirgl.a.p/vrend_debug.c.o
>     -c ../git/src/vrend_debug.c
>     FAILED: src/libvirgl.a.p/vrend_debug.c.o
>     aarch64-overc-linux-gcc -march=armv8-a+crc
>     --sysroot=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot
>
>     -Isrc/libvirgl.a.p -Isrc -I../git/src -I../git/src/gallium/include
>     -I../git/src/gallium/auxiliary -I../git/src/gallium/auxiliary/util
>     -I.
>     -I../git
>     -I/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot/usr/include/libdrm
>
>     -fdiagnostics-color=always -DNDEBUG -pipe -D_FILE_OFFSET_BITS=64
>     -std=gnu11 -DHAVE_CONFIG_H=1 -D_GNU_SOURCE=1
>     -Werror=implicit-function-declaration -Werror=missing-prototypes
>     -Wmissing-prototypes -Werror=int-to-pointer-cast
>     -fvisibility=hidden -O2
>     -g -feliminate-unused-debug-types
>     -fmacro-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0
>
>     -fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0
>
>     -fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot=
>
>     -fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot-native=
>
>     -fPIC -pthread -MD -MQ src/libvirgl.a.p/vrend_debug.c.o -MF
>     src/libvirgl.a.p/vrend_debug.c.o.d -o
>     src/libvirgl.a.p/vrend_debug.c.o
>     -c ../git/src/vrend_debug.c
>     In file included from ../git/src/vrend_renderer.h:34,
>                       from ../git/src/vrend_debug.c:26:
>     ../git/src/virgl_gbm.h:28:10: fatal error: gbm.h: No such file or
>     directory
>         28 | #include <gbm.h>
>            |          ^~~~~~~
>     compilation terminated.
>     [4/15] aarch64-overc-linux-gcc -march=armv8-a+crc
>     --sysroot=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot
>
>     -Isrc/libvirgl.a.p -Isrc -I../git/src -I../git/src/gallium/include
>     -I../git/src/gallium/auxiliary -I../git/src/gallium/auxiliary/util
>     -I.
>     -I../git
>     -I/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot/usr/include/libdrm
>
>     -fdiagnostics-color=always -DNDEBUG -pipe -D_FILE_OFFSET_BITS=64
>     -std=gnu11 -DHAVE_CONFIG_H=1 -D_GNU_SOURCE=1
>     -Werror=implicit-function-declaration -Werror=missing-prototypes
>     -Wmissing-prototypes -Werror=int-to-pointer-cast
>     -fvisibility=hidden -O2
>     -g -feliminate-unused-debug-types
>     -fmacro-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0
>
>     -fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0
>
>     -fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot=
>
>     -fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot-native=
>
>     -fPIC -pthread -MD -MQ src/libvirgl.a.p/vrend_renderer.c.o -MF
>     src/libvirgl.a.p/vrend_renderer.c.o.d -o
>     src/libvirgl.a.p/vrend_renderer.c.o -c ../git/src/vrend_renderer.c
>     FAILED: src/libvirgl.a.p/vrend_renderer.c.o
>     aarch64-overc-linux-gcc -march=armv8-a+crc
>     --sysroot=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot
>
>     -Isrc/libvirgl.a.p -Isrc -I../git/src -I../git/src/gallium/include
>     -I../git/src/gallium/auxiliary -I../git/src/gallium/auxiliary/util
>     -I.
>     -I../git
>     -I/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot/usr/include/libdrm
>
>     -fdiagnostics-color=always -DNDEBUG -pipe -D_FILE_OFFSET_BITS=64
>     -std=gnu11 -DHAVE_CONFIG_H=1 -D_GNU_SOURCE=1
>     -Werror=implicit-function-declaration -Werror=missing-prototypes
>     -Wmissing-prototypes -Werror=int-to-pointer-cast
>     -fvisibility=hidden -O2
>     -g -feliminate-unused-debug-types
>     -fmacro-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0
>
>     -fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0
>
>     -fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot=
>
>     -fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot-native=
>
>     -fPIC -pthread -MD -MQ src/libvirgl.a.p/vrend_renderer.c.o -MF
>     src/libvirgl.a.p/vrend_renderer.c.o.d -o
>     src/libvirgl.a.p/vrend_renderer.c.o -c ../git/src/vrend_renderer.c
>     In file included from ../git/src/vrend_renderer.h:34,
>                       from ../git/src/vrend_renderer.c:49:
>     ../git/src/virgl_gbm.h:28:10: fatal error: gbm.h: No such file or
>     directory
>         28 | #include <gbm.h>
>            |          ^~~~~~~
>     compilation terminated.
>     [5/15] aarch64-overc-linux-gcc -march=armv8-a+crc
>     --sysroot=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot
>
>     -Isrc/libvirgl.a.p -Isrc -I../git/src -I../git/src/gallium/include
>     -I../git/src/gallium/auxiliary -I../git/src/gallium/auxiliary/util
>     -I.
>     -I../git
>     -I/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot/usr/include/libdrm
>
>     -fdiagnostics-color=always -DNDEBUG -pipe -D_FILE_OFFSET_BITS=64
>     -std=gnu11 -DHAVE_CONFIG_H=1 -D_GNU_SOURCE=1
>     -Werror=implicit-function-declaration -Werror=missing-prototypes
>     -Wmissing-prototypes -Werror=int-to-pointer-cast
>     -fvisibility=hidden -O2
>     -g -feliminate-unused-debug-types
>     -fmacro-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0
>
>     -fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0
>
>     -fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot=
>
>     -fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot-native=
>
>     -fPIC -pthread -MD -MQ src/libvirgl.a.p/vrend_blitter.c.o -MF
>     src/libvirgl.a.p/vrend_blitter.c.o.d -o
>     src/libvirgl.a.p/vrend_blitter.c.o -c ../git/src/vrend_blitter.c
>     FAILED: src/libvirgl.a.p/vrend_blitter.c.o
>     aarch64-overc-linux-gcc -march=armv8-a+crc
>     --sysroot=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot
>
>     -Isrc/libvirgl.a.p -Isrc -I../git/src -I../git/src/gallium/include
>     -I../git/src/gallium/auxiliary -I../git/src/gallium/auxiliary/util
>     -I.
>     -I../git
>     -I/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot/usr/include/libdrm
>
>     -fdiagnostics-color=always -DNDEBUG -pipe -D_FILE_OFFSET_BITS=64
>     -std=gnu11 -DHAVE_CONFIG_H=1 -D_GNU_SOURCE=1
>     -Werror=implicit-function-declaration -Werror=missing-prototypes
>     -Wmissing-prototypes -Werror=int-to-pointer-cast
>     -fvisibility=hidden -O2
>     -g -feliminate-unused-debug-types
>     -fmacro-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0
>
>     -fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0
>
>     -fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot=
>
>     -fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot-native=
>
>     -fPIC -pthread -MD -MQ src/libvirgl.a.p/vrend_blitter.c.o -MF
>     src/libvirgl.a.p/vrend_blitter.c.o.d -o
>     src/libvirgl.a.p/vrend_blitter.c.o -c ../git/src/vrend_blitter.c
>     In file included from ../git/src/vrend_renderer.h:34,
>                       from ../git/src/vrend_blitter.c:48:
>     ../git/src/virgl_gbm.h:28:10: fatal error: gbm.h: No such file or
>     directory
>         28 | #include <gbm.h>
>            |          ^~~~~~~
>     compilation terminated.
>     [6/15] aarch64-overc-linux-gcc -march=armv8-a+crc
>     --sysroot=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot
>
>     -Ivtest/virgl_test_server.p -Ivtest -I../git/vtest
>     -I../git/src/gallium/include -I../git/src/gallium/auxiliary
>     -I../git/src/gallium/auxiliary/util -I. -I../git -Isrc -I../git/src
>     -fdiagnostics-color=always -DNDEBUG -pipe -D_FILE_OFFSET_BITS=64
>     -std=gnu11 -DHAVE_CONFIG_H=1 -D_GNU_SOURCE=1
>     -Werror=implicit-function-declaration -Werror=missing-prototypes
>     -Wmissing-prototypes -Werror=int-to-pointer-cast
>     -fvisibility=hidden -O2
>     -g -feliminate-unused-debug-types
>     -fmacro-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0
>
>     -fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0
>
>     -fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot=
>
>     -fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot-native=
>
>     -MD -MQ vtest/virgl_test_server.p/vtest_server.c.o -MF
>     vtest/virgl_test_server.p/vtest_server.c.o.d -o
>     vtest/virgl_test_server.p/vtest_server.c.o -c
>     ../git/vtest/vtest_server.c
>     [7/15] aarch64-overc-linux-gcc -march=armv8-a+crc
>     --sysroot=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot
>
>     -Isrc/libvirglrenderer.so.1.4.2.p -Isrc -I../git/src
>     -I../git/src/gallium/include -I../git/src/gallium/auxiliary
>     -I../git/src/gallium/auxiliary/util -I. -I../git
>     -I/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot/usr/include/libdrm
>
>     -fdiagnostics-color=always -DNDEBUG -pipe -D_FILE_OFFSET_BITS=64
>     -std=gnu11 -DHAVE_CONFIG_H=1 -D_GNU_SOURCE=1
>     -Werror=implicit-function-declaration -Werror=missing-prototypes
>     -Wmissing-prototypes -Werror=int-to-pointer-cast
>     -fvisibility=hidden -O2
>     -g -feliminate-unused-debug-types
>     -fmacro-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0
>
>     -fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0
>
>     -fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot=
>
>     -fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot-native=
>
>     -fPIC -pthread -MD -MQ
>     src/libvirglrenderer.so.1.4.2.p/virglrenderer.c.o
>     -MF src/libvirglrenderer.so.1.4.2.p/virglrenderer.c.o.d -o
>     src/libvirglrenderer.so.1.4.2.p/virglrenderer.c.o -c
>     ../git/src/virglrenderer.c
>     FAILED: src/libvirglrenderer.so.1.4.2.p/virglrenderer.c.o
>     aarch64-overc-linux-gcc -march=armv8-a+crc
>     --sysroot=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot
>
>     -Isrc/libvirglrenderer.so.1.4.2.p -Isrc -I../git/src
>     -I../git/src/gallium/include -I../git/src/gallium/auxiliary
>     -I../git/src/gallium/auxiliary/util -I. -I../git
>     -I/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot/usr/include/libdrm
>
>     -fdiagnostics-color=always -DNDEBUG -pipe -D_FILE_OFFSET_BITS=64
>     -std=gnu11 -DHAVE_CONFIG_H=1 -D_GNU_SOURCE=1
>     -Werror=implicit-function-declaration -Werror=missing-prototypes
>     -Wmissing-prototypes -Werror=int-to-pointer-cast
>     -fvisibility=hidden -O2
>     -g -feliminate-unused-debug-types
>     -fmacro-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0
>
>     -fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0
>
>     -fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot=
>
>     -fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot-native=
>
>     -fPIC -pthread -MD -MQ
>     src/libvirglrenderer.so.1.4.2.p/virglrenderer.c.o
>     -MF src/libvirglrenderer.so.1.4.2.p/virglrenderer.c.o.d -o
>     src/libvirglrenderer.so.1.4.2.p/virglrenderer.c.o -c
>     ../git/src/virglrenderer.c
>     In file included from ../git/src/vrend_renderer.h:34,
>                       from ../git/src/virglrenderer.c:37:
>     ../git/src/virgl_gbm.h:28:10: fatal error: gbm.h: No such file or
>     directory
>         28 | #include <gbm.h>
>            |          ^~~~~~~
>     compilation terminated.
>     [8/15] aarch64-overc-linux-gcc -march=armv8-a+crc
>     --sysroot=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot
>
>     -Isrc/libvirgl.a.p -Isrc -I../git/src -I../git/src/gallium/include
>     -I../git/src/gallium/auxiliary -I../git/src/gallium/auxiliary/util
>     -I.
>     -I../git
>     -I/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot/usr/include/libdrm
>
>     -fdiagnostics-color=always -DNDEBUG -pipe -D_FILE_OFFSET_BITS=64
>     -std=gnu11 -DHAVE_CONFIG_H=1 -D_GNU_SOURCE=1
>     -Werror=implicit-function-declaration -Werror=missing-prototypes
>     -Wmissing-prototypes -Werror=int-to-pointer-cast
>     -fvisibility=hidden -O2
>     -g -feliminate-unused-debug-types
>     -fmacro-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0
>
>     -fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0
>
>     -fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot=
>
>     -fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot-native=
>
>     -fPIC -pthread -MD -MQ src/libvirgl.a.p/vrend_formats.c.o -MF
>     src/libvirgl.a.p/vrend_formats.c.o.d -o
>     src/libvirgl.a.p/vrend_formats.c.o -c ../git/src/vrend_formats.c
>     FAILED: src/libvirgl.a.p/vrend_formats.c.o
>     aarch64-overc-linux-gcc -march=armv8-a+crc
>     --sysroot=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot
>
>     -Isrc/libvirgl.a.p -Isrc -I../git/src -I../git/src/gallium/include
>     -I../git/src/gallium/auxiliary -I../git/src/gallium/auxiliary/util
>     -I.
>     -I../git
>     -I/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot/usr/include/libdrm
>
>     -fdiagnostics-color=always -DNDEBUG -pipe -D_FILE_OFFSET_BITS=64
>     -std=gnu11 -DHAVE_CONFIG_H=1 -D_GNU_SOURCE=1
>     -Werror=implicit-function-declaration -Werror=missing-prototypes
>     -Wmissing-prototypes -Werror=int-to-pointer-cast
>     -fvisibility=hidden -O2
>     -g -feliminate-unused-debug-types
>     -fmacro-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0
>
>     -fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0
>
>     -fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot=
>
>     -fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot-native=
>
>     -fPIC -pthread -MD -MQ src/libvirgl.a.p/vrend_formats.c.o -MF
>     src/libvirgl.a.p/vrend_formats.c.o.d -o
>     src/libvirgl.a.p/vrend_formats.c.o -c ../git/src/vrend_formats.c
>     In file included from ../git/src/vrend_renderer.h:34,
>                       from ../git/src/vrend_formats.c:26:
>     ../git/src/virgl_gbm.h:28:10: fatal error: gbm.h: No such file or
>     directory
>         28 | #include <gbm.h>
>            |          ^~~~~~~
>     compilation terminated.
>     [9/15] aarch64-overc-linux-gcc -march=armv8-a+crc
>     --sysroot=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot
>
>     -Isrc/libvirgl.a.p -Isrc -I../git/src -I../git/src/gallium/include
>     -I../git/src/gallium/auxiliary -I../git/src/gallium/auxiliary/util
>     -I.
>     -I../git
>     -I/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot/usr/include/libdrm
>
>     -fdiagnostics-color=always -DNDEBUG -pipe -D_FILE_OFFSET_BITS=64
>     -std=gnu11 -DHAVE_CONFIG_H=1 -D_GNU_SOURCE=1
>     -Werror=implicit-function-declaration -Werror=missing-prototypes
>     -Wmissing-prototypes -Werror=int-to-pointer-cast
>     -fvisibility=hidden -O2
>     -g -feliminate-unused-debug-types
>     -fmacro-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0
>
>     -fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0
>
>     -fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot=
>
>     -fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot-native=
>
>     -fPIC -pthread -MD -MQ src/libvirgl.a.p/vrend_decode.c.o -MF
>     src/libvirgl.a.p/vrend_decode.c.o.d -o
>     src/libvirgl.a.p/vrend_decode.c.o
>     -c ../git/src/vrend_decode.c
>     FAILED: src/libvirgl.a.p/vrend_decode.c.o
>     aarch64-overc-linux-gcc -march=armv8-a+crc
>     --sysroot=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot
>
>     -Isrc/libvirgl.a.p -Isrc -I../git/src -I../git/src/gallium/include
>     -I../git/src/gallium/auxiliary -I../git/src/gallium/auxiliary/util
>     -I.
>     -I../git
>     -I/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot/usr/include/libdrm
>
>     -fdiagnostics-color=always -DNDEBUG -pipe -D_FILE_OFFSET_BITS=64
>     -std=gnu11 -DHAVE_CONFIG_H=1 -D_GNU_SOURCE=1
>     -Werror=implicit-function-declaration -Werror=missing-prototypes
>     -Wmissing-prototypes -Werror=int-to-pointer-cast
>     -fvisibility=hidden -O2
>     -g -feliminate-unused-debug-types
>     -fmacro-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0
>
>     -fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0
>
>     -fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot=
>
>     -fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot-native=
>
>     -fPIC -pthread -MD -MQ src/libvirgl.a.p/vrend_decode.c.o -MF
>     src/libvirgl.a.p/vrend_decode.c.o.d -o
>     src/libvirgl.a.p/vrend_decode.c.o
>     -c ../git/src/vrend_decode.c
>     In file included from ../git/src/vrend_renderer.h:34,
>                       from ../git/src/vrend_decode.c:34:
>     ../git/src/virgl_gbm.h:28:10: fatal error: gbm.h: No such file or
>     directory
>         28 | #include <gbm.h>
>            |          ^~~~~~~
>     compilation terminated.
>     [10/15] aarch64-overc-linux-gcc -march=armv8-a+crc
>     --sysroot=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot
>
>     -Isrc/libvirgl.a.p -Isrc -I../git/src -I../git/src/gallium/include
>     -I../git/src/gallium/auxiliary -I../git/src/gallium/auxiliary/util
>     -I.
>     -I../git
>     -I/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot/usr/include/libdrm
>
>     -fdiagnostics-color=always -DNDEBUG -pipe -D_FILE_OFFSET_BITS=64
>     -std=gnu11 -DHAVE_CONFIG_H=1 -D_GNU_SOURCE=1
>     -Werror=implicit-function-declaration -Werror=missing-prototypes
>     -Wmissing-prototypes -Werror=int-to-pointer-cast
>     -fvisibility=hidden -O2
>     -g -feliminate-unused-debug-types
>     -fmacro-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0
>
>     -fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0
>
>     -fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot=
>
>     -fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot-native=
>
>     -fPIC -pthread -MD -MQ src/libvirgl.a.p/virgl_glx_context.c.o -MF
>     src/libvirgl.a.p/virgl_glx_context.c.o.d -o
>     src/libvirgl.a.p/virgl_glx_context.c.o -c
>     ../git/src/virgl_glx_context.c
>     FAILED: src/libvirgl.a.p/virgl_glx_context.c.o
>     aarch64-overc-linux-gcc -march=armv8-a+crc
>     --sysroot=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot
>
>     -Isrc/libvirgl.a.p -Isrc -I../git/src -I../git/src/gallium/include
>     -I../git/src/gallium/auxiliary -I../git/src/gallium/auxiliary/util
>     -I.
>     -I../git
>     -I/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot/usr/include/libdrm
>
>     -fdiagnostics-color=always -DNDEBUG -pipe -D_FILE_OFFSET_BITS=64
>     -std=gnu11 -DHAVE_CONFIG_H=1 -D_GNU_SOURCE=1
>     -Werror=implicit-function-declaration -Werror=missing-prototypes
>     -Wmissing-prototypes -Werror=int-to-pointer-cast
>     -fvisibility=hidden -O2
>     -g -feliminate-unused-debug-types
>     -fmacro-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0
>
>     -fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0
>
>     -fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot=
>
>     -fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot-native=
>
>     -fPIC -pthread -MD -MQ src/libvirgl.a.p/virgl_glx_context.c.o -MF
>     src/libvirgl.a.p/virgl_glx_context.c.o.d -o
>     src/libvirgl.a.p/virgl_glx_context.c.o -c
>     ../git/src/virgl_glx_context.c
>     In file included from ../git/src/vrend_renderer.h:34,
>                       from ../git/src/virgl_glx.h:27,
>                       from ../git/src/virgl_glx_context.c:32:
>     ../git/src/virgl_gbm.h:28:10: fatal error: gbm.h: No such file or
>     directory
>         28 | #include <gbm.h>
>            |          ^~~~~~~
>     compilation terminated.
>     [11/15] aarch64-overc-linux-gcc -march=armv8-a+crc
>     --sysroot=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot
>
>     -Ivtest/virgl_test_server.p -Ivtest -I../git/vtest
>     -I../git/src/gallium/include -I../git/src/gallium/auxiliary
>     -I../git/src/gallium/auxiliary/util -I. -I../git -Isrc -I../git/src
>     -fdiagnostics-color=always -DNDEBUG -pipe -D_FILE_OFFSET_BITS=64
>     -std=gnu11 -DHAVE_CONFIG_H=1 -D_GNU_SOURCE=1
>     -Werror=implicit-function-declaration -Werror=missing-prototypes
>     -Wmissing-prototypes -Werror=int-to-pointer-cast
>     -fvisibility=hidden -O2
>     -g -feliminate-unused-debug-types
>     -fmacro-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0
>
>     -fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0
>
>     -fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot=
>
>     -fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot-native=
>
>     -MD -MQ vtest/virgl_test_server.p/vtest_renderer.c.o -MF
>     vtest/virgl_test_server.p/vtest_renderer.c.o.d -o
>     vtest/virgl_test_server.p/vtest_renderer.c.o -c
>     ../git/vtest/vtest_renderer.c
>     ninja: build stopped: subcommand failed.
>     WARNING:
>     /var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/temp/run.do_compile.754739:152
>
>     exit 1 from 'ninja -v -j 16'
>     WARNING: Backtrace (BB generated script):
>          #1: meson_do_compile,
>     /var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/temp/run.do_compile.754739,
>
>     line 152
>          #2: do_compile,
>     /var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/temp/run.do_compile.754739,
>
>     line 147
>          #3: main,
>     /var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/temp/run.do_compile.754739,
>
>     line 156
>
>     Backtrace (metadata-relative locations):
>          #1: meson_do_compile,
>     /home/dingo/overc/poky/meta/classes/meson.bbclass, line 180
>          #2: do_compile, autogenerated, line 2
>
>
>     
>

--------------3576BDFECDBA804CF3489AE3
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p>its building from meta-tegra .... <br>
    </p>
    <div class="moz-cite-prefix">On 10/13/20 2:56 PM, Alexander Kanavin
      wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:CANNYZj9Wt+fc8d0ETvpcJDs6JG8zbjWdFX946_Xo+T6nSSYW_w@mail.gmail.com">
      <meta http-equiv="content-type" content="text/html; charset=UTF-8">
      <div dir="auto">Virgl only has been verified with Mesa, if your
        bsp provides something else for virtual/libgl, it is not going
        to work. Please ask your bsp supplier (Nvidia I guess?) what to
        do. </div>
      <div dir="auto"><br>
      </div>
      <div dir="auto">Alex</div>
      <div><br>
        <div class="gmail_quote">
          <div dir="ltr" class="gmail_attr">On Tue 13. Oct 2020 at 6.28,
            Yocto &lt;<a href="mailto:yocto@optimcloud.com"
              moz-do-not-send="true">yocto@optimcloud.com</a>&gt; wrote:<br>
          </div>
          <blockquote class="gmail_quote" style="margin:0px 0px 0px
0.8ex;border-left-width:1px;border-left-style:solid;padding-left:1ex;border-left-color:rgb(204,204,204)">virglrenderer
            appears broken, occurs on both Fedora-32 and Debian-10<br>
            <br>
            Build Configuration:<br>
            BB_VERSION           = "1.47.0"<br>
            BUILD_SYS            = "x86_64-linux"<br>
            NATIVELSBSTRING      = "fedora-32"<br>
            TARGET_SYS           = "aarch64-overc-linux"<br>
            MACHINE              = "jetson-xavier-nx-devkit"<br>
            DISTRO               = "overc"<br>
            DISTRO_VERSION       = "1.0"<br>
            TUNE_FEATURES        = "aarch64 armv8a crc"<br>
            TARGET_FPU           = ""<br>
            meta<br>
            meta-poky<br>
            meta-yocto-bsp       =
            "master:0c0b236b4c72d30e0e88f5f0310476569d444e83"<br>
            meta-tegra           =
            "master:01c3205183af0236101b423d48a8af167baee8b1"<br>
            meta-oe<br>
            meta-python<br>
            meta-networking<br>
            meta-filesystems<br>
            meta-gnome<br>
            meta-xfce<br>
            meta-multimedia<br>
            meta-perl            =
            "master:d25d21a8b40d3fe29298f3aa43328477ce4d8ee7"<br>
            meta-overc<br>
            meta-cube            =
            "master:264d1d0949fb5e9ec8e39b1f7604086d59ec2047"<br>
            meta-awnix           =
            "master:c616414c6ed4f6f2ab75703ce5a3e84acacd3c47"<br>
            meta-virtualization  =
            "master:43a5cc7f031da1ef75b1ff33def3ef4984ad72e3"<br>
            meta-cloud-services  =
            "master:910195eb791d754d394ba1013a258ab120c995e9"<br>
            meta-security        =
            "master:3ce8b759c97706d6f78928c38b6ebac4edfd95a5"<br>
            meta-selinux         =
            "master:6e1100d29aec118df2025c46c77f4c8aa8da4e76"<br>
            <br>
            <br>
            ❯ cat <br>
/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/temp/log.do_compile.754739<br>
            DEBUG: Executing shell function do_compile<br>
            [1/15] rm -f src/gallium/libgallium.a &amp;&amp;
            aarch64-overc-linux-gcc-ar csrD <br>
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
            src/gallium/libgallium.a.p/auxiliary_cso_cache_cso_cache.c.o
            <br>
            src/gallium/libgallium.a.p/auxiliary_cso_cache_cso_hash.c.o
            <br>
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
            src/gallium/libgallium.a.p/auxiliary_tgsi_tgsi_transform.c.o
            <br>
            src/gallium/libgallium.a.p/auxiliary_os_os_misc.c.o<br>
            [2/15] aarch64-overc-linux-gcc -march=armv8-a+crc <br>
--sysroot=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot
            <br>
            -Ivtest/virgl_test_server.p -Ivtest -I../git/vtest <br>
            -I../git/src/gallium/include -I../git/src/gallium/auxiliary
            <br>
            -I../git/src/gallium/auxiliary/util -I. -I../git -Isrc
            -I../git/src <br>
            -fdiagnostics-color=always -DNDEBUG -pipe
            -D_FILE_OFFSET_BITS=64 <br>
            -std=gnu11 -DHAVE_CONFIG_H=1 -D_GNU_SOURCE=1 <br>
            -Werror=implicit-function-declaration
            -Werror=missing-prototypes <br>
            -Wmissing-prototypes -Werror=int-to-pointer-cast
            -fvisibility=hidden -O2 <br>
            -g -feliminate-unused-debug-types <br>
-fmacro-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0
            <br>
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0
            <br>
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot=
            <br>
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot-native=
            <br>
            -MD -MQ vtest/virgl_test_server.p/vtest_shm.c.o -MF <br>
            vtest/virgl_test_server.p/vtest_shm.c.o.d -o <br>
            vtest/virgl_test_server.p/vtest_shm.c.o -c
            ../git/vtest/vtest_shm.c<br>
            [3/15] aarch64-overc-linux-gcc -march=armv8-a+crc <br>
--sysroot=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot
            <br>
            -Isrc/libvirgl.a.p -Isrc -I../git/src
            -I../git/src/gallium/include <br>
            -I../git/src/gallium/auxiliary
            -I../git/src/gallium/auxiliary/util -I. <br>
            -I../git <br>
-I/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot/usr/include/libdrm
            <br>
            -fdiagnostics-color=always -DNDEBUG -pipe
            -D_FILE_OFFSET_BITS=64 <br>
            -std=gnu11 -DHAVE_CONFIG_H=1 -D_GNU_SOURCE=1 <br>
            -Werror=implicit-function-declaration
            -Werror=missing-prototypes <br>
            -Wmissing-prototypes -Werror=int-to-pointer-cast
            -fvisibility=hidden -O2 <br>
            -g -feliminate-unused-debug-types <br>
-fmacro-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0
            <br>
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0
            <br>
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot=
            <br>
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot-native=
            <br>
            -fPIC -pthread -MD -MQ src/libvirgl.a.p/vrend_debug.c.o -MF
            <br>
            src/libvirgl.a.p/vrend_debug.c.o.d -o
            src/libvirgl.a.p/vrend_debug.c.o <br>
            -c ../git/src/vrend_debug.c<br>
            FAILED: src/libvirgl.a.p/vrend_debug.c.o<br>
            aarch64-overc-linux-gcc -march=armv8-a+crc <br>
--sysroot=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot
            <br>
            -Isrc/libvirgl.a.p -Isrc -I../git/src
            -I../git/src/gallium/include <br>
            -I../git/src/gallium/auxiliary
            -I../git/src/gallium/auxiliary/util -I. <br>
            -I../git <br>
-I/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot/usr/include/libdrm
            <br>
            -fdiagnostics-color=always -DNDEBUG -pipe
            -D_FILE_OFFSET_BITS=64 <br>
            -std=gnu11 -DHAVE_CONFIG_H=1 -D_GNU_SOURCE=1 <br>
            -Werror=implicit-function-declaration
            -Werror=missing-prototypes <br>
            -Wmissing-prototypes -Werror=int-to-pointer-cast
            -fvisibility=hidden -O2 <br>
            -g -feliminate-unused-debug-types <br>
-fmacro-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0
            <br>
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0
            <br>
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot=
            <br>
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot-native=
            <br>
            -fPIC -pthread -MD -MQ src/libvirgl.a.p/vrend_debug.c.o -MF
            <br>
            src/libvirgl.a.p/vrend_debug.c.o.d -o
            src/libvirgl.a.p/vrend_debug.c.o <br>
            -c ../git/src/vrend_debug.c<br>
            In file included from ../git/src/vrend_renderer.h:34,<br>
                              from ../git/src/vrend_debug.c:26:<br>
            ../git/src/virgl_gbm.h:28:10: fatal error: gbm.h: No such
            file or directory<br>
                28 | #include &lt;gbm.h&gt;<br>
                   |          ^~~~~~~<br>
            compilation terminated.<br>
            [4/15] aarch64-overc-linux-gcc -march=armv8-a+crc <br>
--sysroot=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot
            <br>
            -Isrc/libvirgl.a.p -Isrc -I../git/src
            -I../git/src/gallium/include <br>
            -I../git/src/gallium/auxiliary
            -I../git/src/gallium/auxiliary/util -I. <br>
            -I../git <br>
-I/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot/usr/include/libdrm
            <br>
            -fdiagnostics-color=always -DNDEBUG -pipe
            -D_FILE_OFFSET_BITS=64 <br>
            -std=gnu11 -DHAVE_CONFIG_H=1 -D_GNU_SOURCE=1 <br>
            -Werror=implicit-function-declaration
            -Werror=missing-prototypes <br>
            -Wmissing-prototypes -Werror=int-to-pointer-cast
            -fvisibility=hidden -O2 <br>
            -g -feliminate-unused-debug-types <br>
-fmacro-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0
            <br>
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0
            <br>
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot=
            <br>
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot-native=
            <br>
            -fPIC -pthread -MD -MQ src/libvirgl.a.p/vrend_renderer.c.o
            -MF <br>
            src/libvirgl.a.p/vrend_renderer.c.o.d -o <br>
            src/libvirgl.a.p/vrend_renderer.c.o -c
            ../git/src/vrend_renderer.c<br>
            FAILED: src/libvirgl.a.p/vrend_renderer.c.o<br>
            aarch64-overc-linux-gcc -march=armv8-a+crc <br>
--sysroot=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot
            <br>
            -Isrc/libvirgl.a.p -Isrc -I../git/src
            -I../git/src/gallium/include <br>
            -I../git/src/gallium/auxiliary
            -I../git/src/gallium/auxiliary/util -I. <br>
            -I../git <br>
-I/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot/usr/include/libdrm
            <br>
            -fdiagnostics-color=always -DNDEBUG -pipe
            -D_FILE_OFFSET_BITS=64 <br>
            -std=gnu11 -DHAVE_CONFIG_H=1 -D_GNU_SOURCE=1 <br>
            -Werror=implicit-function-declaration
            -Werror=missing-prototypes <br>
            -Wmissing-prototypes -Werror=int-to-pointer-cast
            -fvisibility=hidden -O2 <br>
            -g -feliminate-unused-debug-types <br>
-fmacro-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0
            <br>
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0
            <br>
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot=
            <br>
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot-native=
            <br>
            -fPIC -pthread -MD -MQ src/libvirgl.a.p/vrend_renderer.c.o
            -MF <br>
            src/libvirgl.a.p/vrend_renderer.c.o.d -o <br>
            src/libvirgl.a.p/vrend_renderer.c.o -c
            ../git/src/vrend_renderer.c<br>
            In file included from ../git/src/vrend_renderer.h:34,<br>
                              from ../git/src/vrend_renderer.c:49:<br>
            ../git/src/virgl_gbm.h:28:10: fatal error: gbm.h: No such
            file or directory<br>
                28 | #include &lt;gbm.h&gt;<br>
                   |          ^~~~~~~<br>
            compilation terminated.<br>
            [5/15] aarch64-overc-linux-gcc -march=armv8-a+crc <br>
--sysroot=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot
            <br>
            -Isrc/libvirgl.a.p -Isrc -I../git/src
            -I../git/src/gallium/include <br>
            -I../git/src/gallium/auxiliary
            -I../git/src/gallium/auxiliary/util -I. <br>
            -I../git <br>
-I/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot/usr/include/libdrm
            <br>
            -fdiagnostics-color=always -DNDEBUG -pipe
            -D_FILE_OFFSET_BITS=64 <br>
            -std=gnu11 -DHAVE_CONFIG_H=1 -D_GNU_SOURCE=1 <br>
            -Werror=implicit-function-declaration
            -Werror=missing-prototypes <br>
            -Wmissing-prototypes -Werror=int-to-pointer-cast
            -fvisibility=hidden -O2 <br>
            -g -feliminate-unused-debug-types <br>
-fmacro-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0
            <br>
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0
            <br>
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot=
            <br>
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot-native=
            <br>
            -fPIC -pthread -MD -MQ src/libvirgl.a.p/vrend_blitter.c.o
            -MF <br>
            src/libvirgl.a.p/vrend_blitter.c.o.d -o <br>
            src/libvirgl.a.p/vrend_blitter.c.o -c
            ../git/src/vrend_blitter.c<br>
            FAILED: src/libvirgl.a.p/vrend_blitter.c.o<br>
            aarch64-overc-linux-gcc -march=armv8-a+crc <br>
--sysroot=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot
            <br>
            -Isrc/libvirgl.a.p -Isrc -I../git/src
            -I../git/src/gallium/include <br>
            -I../git/src/gallium/auxiliary
            -I../git/src/gallium/auxiliary/util -I. <br>
            -I../git <br>
-I/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot/usr/include/libdrm
            <br>
            -fdiagnostics-color=always -DNDEBUG -pipe
            -D_FILE_OFFSET_BITS=64 <br>
            -std=gnu11 -DHAVE_CONFIG_H=1 -D_GNU_SOURCE=1 <br>
            -Werror=implicit-function-declaration
            -Werror=missing-prototypes <br>
            -Wmissing-prototypes -Werror=int-to-pointer-cast
            -fvisibility=hidden -O2 <br>
            -g -feliminate-unused-debug-types <br>
-fmacro-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0
            <br>
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0
            <br>
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot=
            <br>
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot-native=
            <br>
            -fPIC -pthread -MD -MQ src/libvirgl.a.p/vrend_blitter.c.o
            -MF <br>
            src/libvirgl.a.p/vrend_blitter.c.o.d -o <br>
            src/libvirgl.a.p/vrend_blitter.c.o -c
            ../git/src/vrend_blitter.c<br>
            In file included from ../git/src/vrend_renderer.h:34,<br>
                              from ../git/src/vrend_blitter.c:48:<br>
            ../git/src/virgl_gbm.h:28:10: fatal error: gbm.h: No such
            file or directory<br>
                28 | #include &lt;gbm.h&gt;<br>
                   |          ^~~~~~~<br>
            compilation terminated.<br>
            [6/15] aarch64-overc-linux-gcc -march=armv8-a+crc <br>
--sysroot=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot
            <br>
            -Ivtest/virgl_test_server.p -Ivtest -I../git/vtest <br>
            -I../git/src/gallium/include -I../git/src/gallium/auxiliary
            <br>
            -I../git/src/gallium/auxiliary/util -I. -I../git -Isrc
            -I../git/src <br>
            -fdiagnostics-color=always -DNDEBUG -pipe
            -D_FILE_OFFSET_BITS=64 <br>
            -std=gnu11 -DHAVE_CONFIG_H=1 -D_GNU_SOURCE=1 <br>
            -Werror=implicit-function-declaration
            -Werror=missing-prototypes <br>
            -Wmissing-prototypes -Werror=int-to-pointer-cast
            -fvisibility=hidden -O2 <br>
            -g -feliminate-unused-debug-types <br>
-fmacro-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0
            <br>
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0
            <br>
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot=
            <br>
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot-native=
            <br>
            -MD -MQ vtest/virgl_test_server.p/vtest_server.c.o -MF <br>
            vtest/virgl_test_server.p/vtest_server.c.o.d -o <br>
            vtest/virgl_test_server.p/vtest_server.c.o -c
            ../git/vtest/vtest_server.c<br>
            [7/15] aarch64-overc-linux-gcc -march=armv8-a+crc <br>
--sysroot=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot
            <br>
            -Isrc/libvirglrenderer.so.1.4.2.p -Isrc -I../git/src <br>
            -I../git/src/gallium/include -I../git/src/gallium/auxiliary
            <br>
            -I../git/src/gallium/auxiliary/util -I. -I../git <br>
-I/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot/usr/include/libdrm
            <br>
            -fdiagnostics-color=always -DNDEBUG -pipe
            -D_FILE_OFFSET_BITS=64 <br>
            -std=gnu11 -DHAVE_CONFIG_H=1 -D_GNU_SOURCE=1 <br>
            -Werror=implicit-function-declaration
            -Werror=missing-prototypes <br>
            -Wmissing-prototypes -Werror=int-to-pointer-cast
            -fvisibility=hidden -O2 <br>
            -g -feliminate-unused-debug-types <br>
-fmacro-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0
            <br>
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0
            <br>
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot=
            <br>
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot-native=
            <br>
            -fPIC -pthread -MD -MQ
            src/libvirglrenderer.so.1.4.2.p/virglrenderer.c.o <br>
            -MF src/libvirglrenderer.so.1.4.2.p/virglrenderer.c.o.d -o <br>
            src/libvirglrenderer.so.1.4.2.p/virglrenderer.c.o -c <br>
            ../git/src/virglrenderer.c<br>
            FAILED: src/libvirglrenderer.so.1.4.2.p/virglrenderer.c.o<br>
            aarch64-overc-linux-gcc -march=armv8-a+crc <br>
--sysroot=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot
            <br>
            -Isrc/libvirglrenderer.so.1.4.2.p -Isrc -I../git/src <br>
            -I../git/src/gallium/include -I../git/src/gallium/auxiliary
            <br>
            -I../git/src/gallium/auxiliary/util -I. -I../git <br>
-I/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot/usr/include/libdrm
            <br>
            -fdiagnostics-color=always -DNDEBUG -pipe
            -D_FILE_OFFSET_BITS=64 <br>
            -std=gnu11 -DHAVE_CONFIG_H=1 -D_GNU_SOURCE=1 <br>
            -Werror=implicit-function-declaration
            -Werror=missing-prototypes <br>
            -Wmissing-prototypes -Werror=int-to-pointer-cast
            -fvisibility=hidden -O2 <br>
            -g -feliminate-unused-debug-types <br>
-fmacro-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0
            <br>
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0
            <br>
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot=
            <br>
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot-native=
            <br>
            -fPIC -pthread -MD -MQ
            src/libvirglrenderer.so.1.4.2.p/virglrenderer.c.o <br>
            -MF src/libvirglrenderer.so.1.4.2.p/virglrenderer.c.o.d -o <br>
            src/libvirglrenderer.so.1.4.2.p/virglrenderer.c.o -c <br>
            ../git/src/virglrenderer.c<br>
            In file included from ../git/src/vrend_renderer.h:34,<br>
                              from ../git/src/virglrenderer.c:37:<br>
            ../git/src/virgl_gbm.h:28:10: fatal error: gbm.h: No such
            file or directory<br>
                28 | #include &lt;gbm.h&gt;<br>
                   |          ^~~~~~~<br>
            compilation terminated.<br>
            [8/15] aarch64-overc-linux-gcc -march=armv8-a+crc <br>
--sysroot=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot
            <br>
            -Isrc/libvirgl.a.p -Isrc -I../git/src
            -I../git/src/gallium/include <br>
            -I../git/src/gallium/auxiliary
            -I../git/src/gallium/auxiliary/util -I. <br>
            -I../git <br>
-I/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot/usr/include/libdrm
            <br>
            -fdiagnostics-color=always -DNDEBUG -pipe
            -D_FILE_OFFSET_BITS=64 <br>
            -std=gnu11 -DHAVE_CONFIG_H=1 -D_GNU_SOURCE=1 <br>
            -Werror=implicit-function-declaration
            -Werror=missing-prototypes <br>
            -Wmissing-prototypes -Werror=int-to-pointer-cast
            -fvisibility=hidden -O2 <br>
            -g -feliminate-unused-debug-types <br>
-fmacro-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0
            <br>
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0
            <br>
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot=
            <br>
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot-native=
            <br>
            -fPIC -pthread -MD -MQ src/libvirgl.a.p/vrend_formats.c.o
            -MF <br>
            src/libvirgl.a.p/vrend_formats.c.o.d -o <br>
            src/libvirgl.a.p/vrend_formats.c.o -c
            ../git/src/vrend_formats.c<br>
            FAILED: src/libvirgl.a.p/vrend_formats.c.o<br>
            aarch64-overc-linux-gcc -march=armv8-a+crc <br>
--sysroot=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot
            <br>
            -Isrc/libvirgl.a.p -Isrc -I../git/src
            -I../git/src/gallium/include <br>
            -I../git/src/gallium/auxiliary
            -I../git/src/gallium/auxiliary/util -I. <br>
            -I../git <br>
-I/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot/usr/include/libdrm
            <br>
            -fdiagnostics-color=always -DNDEBUG -pipe
            -D_FILE_OFFSET_BITS=64 <br>
            -std=gnu11 -DHAVE_CONFIG_H=1 -D_GNU_SOURCE=1 <br>
            -Werror=implicit-function-declaration
            -Werror=missing-prototypes <br>
            -Wmissing-prototypes -Werror=int-to-pointer-cast
            -fvisibility=hidden -O2 <br>
            -g -feliminate-unused-debug-types <br>
-fmacro-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0
            <br>
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0
            <br>
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot=
            <br>
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot-native=
            <br>
            -fPIC -pthread -MD -MQ src/libvirgl.a.p/vrend_formats.c.o
            -MF <br>
            src/libvirgl.a.p/vrend_formats.c.o.d -o <br>
            src/libvirgl.a.p/vrend_formats.c.o -c
            ../git/src/vrend_formats.c<br>
            In file included from ../git/src/vrend_renderer.h:34,<br>
                              from ../git/src/vrend_formats.c:26:<br>
            ../git/src/virgl_gbm.h:28:10: fatal error: gbm.h: No such
            file or directory<br>
                28 | #include &lt;gbm.h&gt;<br>
                   |          ^~~~~~~<br>
            compilation terminated.<br>
            [9/15] aarch64-overc-linux-gcc -march=armv8-a+crc <br>
--sysroot=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot
            <br>
            -Isrc/libvirgl.a.p -Isrc -I../git/src
            -I../git/src/gallium/include <br>
            -I../git/src/gallium/auxiliary
            -I../git/src/gallium/auxiliary/util -I. <br>
            -I../git <br>
-I/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot/usr/include/libdrm
            <br>
            -fdiagnostics-color=always -DNDEBUG -pipe
            -D_FILE_OFFSET_BITS=64 <br>
            -std=gnu11 -DHAVE_CONFIG_H=1 -D_GNU_SOURCE=1 <br>
            -Werror=implicit-function-declaration
            -Werror=missing-prototypes <br>
            -Wmissing-prototypes -Werror=int-to-pointer-cast
            -fvisibility=hidden -O2 <br>
            -g -feliminate-unused-debug-types <br>
-fmacro-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0
            <br>
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0
            <br>
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot=
            <br>
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot-native=
            <br>
            -fPIC -pthread -MD -MQ src/libvirgl.a.p/vrend_decode.c.o -MF
            <br>
            src/libvirgl.a.p/vrend_decode.c.o.d -o
            src/libvirgl.a.p/vrend_decode.c.o <br>
            -c ../git/src/vrend_decode.c<br>
            FAILED: src/libvirgl.a.p/vrend_decode.c.o<br>
            aarch64-overc-linux-gcc -march=armv8-a+crc <br>
--sysroot=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot
            <br>
            -Isrc/libvirgl.a.p -Isrc -I../git/src
            -I../git/src/gallium/include <br>
            -I../git/src/gallium/auxiliary
            -I../git/src/gallium/auxiliary/util -I. <br>
            -I../git <br>
-I/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot/usr/include/libdrm
            <br>
            -fdiagnostics-color=always -DNDEBUG -pipe
            -D_FILE_OFFSET_BITS=64 <br>
            -std=gnu11 -DHAVE_CONFIG_H=1 -D_GNU_SOURCE=1 <br>
            -Werror=implicit-function-declaration
            -Werror=missing-prototypes <br>
            -Wmissing-prototypes -Werror=int-to-pointer-cast
            -fvisibility=hidden -O2 <br>
            -g -feliminate-unused-debug-types <br>
-fmacro-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0
            <br>
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0
            <br>
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot=
            <br>
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot-native=
            <br>
            -fPIC -pthread -MD -MQ src/libvirgl.a.p/vrend_decode.c.o -MF
            <br>
            src/libvirgl.a.p/vrend_decode.c.o.d -o
            src/libvirgl.a.p/vrend_decode.c.o <br>
            -c ../git/src/vrend_decode.c<br>
            In file included from ../git/src/vrend_renderer.h:34,<br>
                              from ../git/src/vrend_decode.c:34:<br>
            ../git/src/virgl_gbm.h:28:10: fatal error: gbm.h: No such
            file or directory<br>
                28 | #include &lt;gbm.h&gt;<br>
                   |          ^~~~~~~<br>
            compilation terminated.<br>
            [10/15] aarch64-overc-linux-gcc -march=armv8-a+crc <br>
--sysroot=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot
            <br>
            -Isrc/libvirgl.a.p -Isrc -I../git/src
            -I../git/src/gallium/include <br>
            -I../git/src/gallium/auxiliary
            -I../git/src/gallium/auxiliary/util -I. <br>
            -I../git <br>
-I/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot/usr/include/libdrm
            <br>
            -fdiagnostics-color=always -DNDEBUG -pipe
            -D_FILE_OFFSET_BITS=64 <br>
            -std=gnu11 -DHAVE_CONFIG_H=1 -D_GNU_SOURCE=1 <br>
            -Werror=implicit-function-declaration
            -Werror=missing-prototypes <br>
            -Wmissing-prototypes -Werror=int-to-pointer-cast
            -fvisibility=hidden -O2 <br>
            -g -feliminate-unused-debug-types <br>
-fmacro-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0
            <br>
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0
            <br>
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot=
            <br>
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot-native=
            <br>
            -fPIC -pthread -MD -MQ
            src/libvirgl.a.p/virgl_glx_context.c.o -MF <br>
            src/libvirgl.a.p/virgl_glx_context.c.o.d -o <br>
            src/libvirgl.a.p/virgl_glx_context.c.o -c
            ../git/src/virgl_glx_context.c<br>
            FAILED: src/libvirgl.a.p/virgl_glx_context.c.o<br>
            aarch64-overc-linux-gcc -march=armv8-a+crc <br>
--sysroot=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot
            <br>
            -Isrc/libvirgl.a.p -Isrc -I../git/src
            -I../git/src/gallium/include <br>
            -I../git/src/gallium/auxiliary
            -I../git/src/gallium/auxiliary/util -I. <br>
            -I../git <br>
-I/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot/usr/include/libdrm
            <br>
            -fdiagnostics-color=always -DNDEBUG -pipe
            -D_FILE_OFFSET_BITS=64 <br>
            -std=gnu11 -DHAVE_CONFIG_H=1 -D_GNU_SOURCE=1 <br>
            -Werror=implicit-function-declaration
            -Werror=missing-prototypes <br>
            -Wmissing-prototypes -Werror=int-to-pointer-cast
            -fvisibility=hidden -O2 <br>
            -g -feliminate-unused-debug-types <br>
-fmacro-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0
            <br>
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0
            <br>
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot=
            <br>
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot-native=
            <br>
            -fPIC -pthread -MD -MQ
            src/libvirgl.a.p/virgl_glx_context.c.o -MF <br>
            src/libvirgl.a.p/virgl_glx_context.c.o.d -o <br>
            src/libvirgl.a.p/virgl_glx_context.c.o -c
            ../git/src/virgl_glx_context.c<br>
            In file included from ../git/src/vrend_renderer.h:34,<br>
                              from ../git/src/virgl_glx.h:27,<br>
                              from ../git/src/virgl_glx_context.c:32:<br>
            ../git/src/virgl_gbm.h:28:10: fatal error: gbm.h: No such
            file or directory<br>
                28 | #include &lt;gbm.h&gt;<br>
                   |          ^~~~~~~<br>
            compilation terminated.<br>
            [11/15] aarch64-overc-linux-gcc -march=armv8-a+crc <br>
--sysroot=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot
            <br>
            -Ivtest/virgl_test_server.p -Ivtest -I../git/vtest <br>
            -I../git/src/gallium/include -I../git/src/gallium/auxiliary
            <br>
            -I../git/src/gallium/auxiliary/util -I. -I../git -Isrc
            -I../git/src <br>
            -fdiagnostics-color=always -DNDEBUG -pipe
            -D_FILE_OFFSET_BITS=64 <br>
            -std=gnu11 -DHAVE_CONFIG_H=1 -D_GNU_SOURCE=1 <br>
            -Werror=implicit-function-declaration
            -Werror=missing-prototypes <br>
            -Wmissing-prototypes -Werror=int-to-pointer-cast
            -fvisibility=hidden -O2 <br>
            -g -feliminate-unused-debug-types <br>
-fmacro-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0
            <br>
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0
            <br>
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot=
            <br>
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot-native=
            <br>
            -MD -MQ vtest/virgl_test_server.p/vtest_renderer.c.o -MF <br>
            vtest/virgl_test_server.p/vtest_renderer.c.o.d -o <br>
            vtest/virgl_test_server.p/vtest_renderer.c.o -c <br>
            ../git/vtest/vtest_renderer.c<br>
            ninja: build stopped: subcommand failed.<br>
            WARNING: <br>
/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/temp/run.do_compile.754739:152
            <br>
            exit 1 from 'ninja -v -j 16'<br>
            WARNING: Backtrace (BB generated script):<br>
                 #1: meson_do_compile, <br>
/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/temp/run.do_compile.754739,
            <br>
            line 152<br>
                 #2: do_compile, <br>
/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/temp/run.do_compile.754739,
            <br>
            line 147<br>
                 #3: main, <br>
/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/temp/run.do_compile.754739,
            <br>
            line 156<br>
            ERROR: Execution of <br>
'/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/temp/run.do_compile.754739'
            <br>
            failed with exit code 1:<br>
            [1/15] rm -f src/gallium/libgallium.a &amp;&amp;
            aarch64-overc-linux-gcc-ar csrD <br>
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
            src/gallium/libgallium.a.p/auxiliary_cso_cache_cso_cache.c.o
            <br>
            src/gallium/libgallium.a.p/auxiliary_cso_cache_cso_hash.c.o
            <br>
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
            src/gallium/libgallium.a.p/auxiliary_tgsi_tgsi_transform.c.o
            <br>
            src/gallium/libgallium.a.p/auxiliary_os_os_misc.c.o<br>
            [2/15] aarch64-overc-linux-gcc -march=armv8-a+crc <br>
--sysroot=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot
            <br>
            -Ivtest/virgl_test_server.p -Ivtest -I../git/vtest <br>
            -I../git/src/gallium/include -I../git/src/gallium/auxiliary
            <br>
            -I../git/src/gallium/auxiliary/util -I. -I../git -Isrc
            -I../git/src <br>
            -fdiagnostics-color=always -DNDEBUG -pipe
            -D_FILE_OFFSET_BITS=64 <br>
            -std=gnu11 -DHAVE_CONFIG_H=1 -D_GNU_SOURCE=1 <br>
            -Werror=implicit-function-declaration
            -Werror=missing-prototypes <br>
            -Wmissing-prototypes -Werror=int-to-pointer-cast
            -fvisibility=hidden -O2 <br>
            -g -feliminate-unused-debug-types <br>
-fmacro-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0
            <br>
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0
            <br>
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot=
            <br>
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot-native=
            <br>
            -MD -MQ vtest/virgl_test_server.p/vtest_shm.c.o -MF <br>
            vtest/virgl_test_server.p/vtest_shm.c.o.d -o <br>
            vtest/virgl_test_server.p/vtest_shm.c.o -c
            ../git/vtest/vtest_shm.c<br>
            [3/15] aarch64-overc-linux-gcc -march=armv8-a+crc <br>
--sysroot=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot
            <br>
            -Isrc/libvirgl.a.p -Isrc -I../git/src
            -I../git/src/gallium/include <br>
            -I../git/src/gallium/auxiliary
            -I../git/src/gallium/auxiliary/util -I. <br>
            -I../git <br>
-I/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot/usr/include/libdrm
            <br>
            -fdiagnostics-color=always -DNDEBUG -pipe
            -D_FILE_OFFSET_BITS=64 <br>
            -std=gnu11 -DHAVE_CONFIG_H=1 -D_GNU_SOURCE=1 <br>
            -Werror=implicit-function-declaration
            -Werror=missing-prototypes <br>
            -Wmissing-prototypes -Werror=int-to-pointer-cast
            -fvisibility=hidden -O2 <br>
            -g -feliminate-unused-debug-types <br>
-fmacro-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0
            <br>
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0
            <br>
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot=
            <br>
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot-native=
            <br>
            -fPIC -pthread -MD -MQ src/libvirgl.a.p/vrend_debug.c.o -MF
            <br>
            src/libvirgl.a.p/vrend_debug.c.o.d -o
            src/libvirgl.a.p/vrend_debug.c.o <br>
            -c ../git/src/vrend_debug.c<br>
            FAILED: src/libvirgl.a.p/vrend_debug.c.o<br>
            aarch64-overc-linux-gcc -march=armv8-a+crc <br>
--sysroot=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot
            <br>
            -Isrc/libvirgl.a.p -Isrc -I../git/src
            -I../git/src/gallium/include <br>
            -I../git/src/gallium/auxiliary
            -I../git/src/gallium/auxiliary/util -I. <br>
            -I../git <br>
-I/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot/usr/include/libdrm
            <br>
            -fdiagnostics-color=always -DNDEBUG -pipe
            -D_FILE_OFFSET_BITS=64 <br>
            -std=gnu11 -DHAVE_CONFIG_H=1 -D_GNU_SOURCE=1 <br>
            -Werror=implicit-function-declaration
            -Werror=missing-prototypes <br>
            -Wmissing-prototypes -Werror=int-to-pointer-cast
            -fvisibility=hidden -O2 <br>
            -g -feliminate-unused-debug-types <br>
-fmacro-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0
            <br>
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0
            <br>
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot=
            <br>
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot-native=
            <br>
            -fPIC -pthread -MD -MQ src/libvirgl.a.p/vrend_debug.c.o -MF
            <br>
            src/libvirgl.a.p/vrend_debug.c.o.d -o
            src/libvirgl.a.p/vrend_debug.c.o <br>
            -c ../git/src/vrend_debug.c<br>
            In file included from ../git/src/vrend_renderer.h:34,<br>
                              from ../git/src/vrend_debug.c:26:<br>
            ../git/src/virgl_gbm.h:28:10: fatal error: gbm.h: No such
            file or directory<br>
                28 | #include &lt;gbm.h&gt;<br>
                   |          ^~~~~~~<br>
            compilation terminated.<br>
            [4/15] aarch64-overc-linux-gcc -march=armv8-a+crc <br>
--sysroot=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot
            <br>
            -Isrc/libvirgl.a.p -Isrc -I../git/src
            -I../git/src/gallium/include <br>
            -I../git/src/gallium/auxiliary
            -I../git/src/gallium/auxiliary/util -I. <br>
            -I../git <br>
-I/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot/usr/include/libdrm
            <br>
            -fdiagnostics-color=always -DNDEBUG -pipe
            -D_FILE_OFFSET_BITS=64 <br>
            -std=gnu11 -DHAVE_CONFIG_H=1 -D_GNU_SOURCE=1 <br>
            -Werror=implicit-function-declaration
            -Werror=missing-prototypes <br>
            -Wmissing-prototypes -Werror=int-to-pointer-cast
            -fvisibility=hidden -O2 <br>
            -g -feliminate-unused-debug-types <br>
-fmacro-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0
            <br>
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0
            <br>
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot=
            <br>
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot-native=
            <br>
            -fPIC -pthread -MD -MQ src/libvirgl.a.p/vrend_renderer.c.o
            -MF <br>
            src/libvirgl.a.p/vrend_renderer.c.o.d -o <br>
            src/libvirgl.a.p/vrend_renderer.c.o -c
            ../git/src/vrend_renderer.c<br>
            FAILED: src/libvirgl.a.p/vrend_renderer.c.o<br>
            aarch64-overc-linux-gcc -march=armv8-a+crc <br>
--sysroot=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot
            <br>
            -Isrc/libvirgl.a.p -Isrc -I../git/src
            -I../git/src/gallium/include <br>
            -I../git/src/gallium/auxiliary
            -I../git/src/gallium/auxiliary/util -I. <br>
            -I../git <br>
-I/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot/usr/include/libdrm
            <br>
            -fdiagnostics-color=always -DNDEBUG -pipe
            -D_FILE_OFFSET_BITS=64 <br>
            -std=gnu11 -DHAVE_CONFIG_H=1 -D_GNU_SOURCE=1 <br>
            -Werror=implicit-function-declaration
            -Werror=missing-prototypes <br>
            -Wmissing-prototypes -Werror=int-to-pointer-cast
            -fvisibility=hidden -O2 <br>
            -g -feliminate-unused-debug-types <br>
-fmacro-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0
            <br>
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0
            <br>
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot=
            <br>
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot-native=
            <br>
            -fPIC -pthread -MD -MQ src/libvirgl.a.p/vrend_renderer.c.o
            -MF <br>
            src/libvirgl.a.p/vrend_renderer.c.o.d -o <br>
            src/libvirgl.a.p/vrend_renderer.c.o -c
            ../git/src/vrend_renderer.c<br>
            In file included from ../git/src/vrend_renderer.h:34,<br>
                              from ../git/src/vrend_renderer.c:49:<br>
            ../git/src/virgl_gbm.h:28:10: fatal error: gbm.h: No such
            file or directory<br>
                28 | #include &lt;gbm.h&gt;<br>
                   |          ^~~~~~~<br>
            compilation terminated.<br>
            [5/15] aarch64-overc-linux-gcc -march=armv8-a+crc <br>
--sysroot=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot
            <br>
            -Isrc/libvirgl.a.p -Isrc -I../git/src
            -I../git/src/gallium/include <br>
            -I../git/src/gallium/auxiliary
            -I../git/src/gallium/auxiliary/util -I. <br>
            -I../git <br>
-I/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot/usr/include/libdrm
            <br>
            -fdiagnostics-color=always -DNDEBUG -pipe
            -D_FILE_OFFSET_BITS=64 <br>
            -std=gnu11 -DHAVE_CONFIG_H=1 -D_GNU_SOURCE=1 <br>
            -Werror=implicit-function-declaration
            -Werror=missing-prototypes <br>
            -Wmissing-prototypes -Werror=int-to-pointer-cast
            -fvisibility=hidden -O2 <br>
            -g -feliminate-unused-debug-types <br>
-fmacro-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0
            <br>
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0
            <br>
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot=
            <br>
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot-native=
            <br>
            -fPIC -pthread -MD -MQ src/libvirgl.a.p/vrend_blitter.c.o
            -MF <br>
            src/libvirgl.a.p/vrend_blitter.c.o.d -o <br>
            src/libvirgl.a.p/vrend_blitter.c.o -c
            ../git/src/vrend_blitter.c<br>
            FAILED: src/libvirgl.a.p/vrend_blitter.c.o<br>
            aarch64-overc-linux-gcc -march=armv8-a+crc <br>
--sysroot=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot
            <br>
            -Isrc/libvirgl.a.p -Isrc -I../git/src
            -I../git/src/gallium/include <br>
            -I../git/src/gallium/auxiliary
            -I../git/src/gallium/auxiliary/util -I. <br>
            -I../git <br>
-I/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot/usr/include/libdrm
            <br>
            -fdiagnostics-color=always -DNDEBUG -pipe
            -D_FILE_OFFSET_BITS=64 <br>
            -std=gnu11 -DHAVE_CONFIG_H=1 -D_GNU_SOURCE=1 <br>
            -Werror=implicit-function-declaration
            -Werror=missing-prototypes <br>
            -Wmissing-prototypes -Werror=int-to-pointer-cast
            -fvisibility=hidden -O2 <br>
            -g -feliminate-unused-debug-types <br>
-fmacro-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0
            <br>
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0
            <br>
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot=
            <br>
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot-native=
            <br>
            -fPIC -pthread -MD -MQ src/libvirgl.a.p/vrend_blitter.c.o
            -MF <br>
            src/libvirgl.a.p/vrend_blitter.c.o.d -o <br>
            src/libvirgl.a.p/vrend_blitter.c.o -c
            ../git/src/vrend_blitter.c<br>
            In file included from ../git/src/vrend_renderer.h:34,<br>
                              from ../git/src/vrend_blitter.c:48:<br>
            ../git/src/virgl_gbm.h:28:10: fatal error: gbm.h: No such
            file or directory<br>
                28 | #include &lt;gbm.h&gt;<br>
                   |          ^~~~~~~<br>
            compilation terminated.<br>
            [6/15] aarch64-overc-linux-gcc -march=armv8-a+crc <br>
--sysroot=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot
            <br>
            -Ivtest/virgl_test_server.p -Ivtest -I../git/vtest <br>
            -I../git/src/gallium/include -I../git/src/gallium/auxiliary
            <br>
            -I../git/src/gallium/auxiliary/util -I. -I../git -Isrc
            -I../git/src <br>
            -fdiagnostics-color=always -DNDEBUG -pipe
            -D_FILE_OFFSET_BITS=64 <br>
            -std=gnu11 -DHAVE_CONFIG_H=1 -D_GNU_SOURCE=1 <br>
            -Werror=implicit-function-declaration
            -Werror=missing-prototypes <br>
            -Wmissing-prototypes -Werror=int-to-pointer-cast
            -fvisibility=hidden -O2 <br>
            -g -feliminate-unused-debug-types <br>
-fmacro-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0
            <br>
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0
            <br>
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot=
            <br>
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot-native=
            <br>
            -MD -MQ vtest/virgl_test_server.p/vtest_server.c.o -MF <br>
            vtest/virgl_test_server.p/vtest_server.c.o.d -o <br>
            vtest/virgl_test_server.p/vtest_server.c.o -c
            ../git/vtest/vtest_server.c<br>
            [7/15] aarch64-overc-linux-gcc -march=armv8-a+crc <br>
--sysroot=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot
            <br>
            -Isrc/libvirglrenderer.so.1.4.2.p -Isrc -I../git/src <br>
            -I../git/src/gallium/include -I../git/src/gallium/auxiliary
            <br>
            -I../git/src/gallium/auxiliary/util -I. -I../git <br>
-I/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot/usr/include/libdrm
            <br>
            -fdiagnostics-color=always -DNDEBUG -pipe
            -D_FILE_OFFSET_BITS=64 <br>
            -std=gnu11 -DHAVE_CONFIG_H=1 -D_GNU_SOURCE=1 <br>
            -Werror=implicit-function-declaration
            -Werror=missing-prototypes <br>
            -Wmissing-prototypes -Werror=int-to-pointer-cast
            -fvisibility=hidden -O2 <br>
            -g -feliminate-unused-debug-types <br>
-fmacro-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0
            <br>
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0
            <br>
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot=
            <br>
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot-native=
            <br>
            -fPIC -pthread -MD -MQ
            src/libvirglrenderer.so.1.4.2.p/virglrenderer.c.o <br>
            -MF src/libvirglrenderer.so.1.4.2.p/virglrenderer.c.o.d -o <br>
            src/libvirglrenderer.so.1.4.2.p/virglrenderer.c.o -c <br>
            ../git/src/virglrenderer.c<br>
            FAILED: src/libvirglrenderer.so.1.4.2.p/virglrenderer.c.o<br>
            aarch64-overc-linux-gcc -march=armv8-a+crc <br>
--sysroot=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot
            <br>
            -Isrc/libvirglrenderer.so.1.4.2.p -Isrc -I../git/src <br>
            -I../git/src/gallium/include -I../git/src/gallium/auxiliary
            <br>
            -I../git/src/gallium/auxiliary/util -I. -I../git <br>
-I/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot/usr/include/libdrm
            <br>
            -fdiagnostics-color=always -DNDEBUG -pipe
            -D_FILE_OFFSET_BITS=64 <br>
            -std=gnu11 -DHAVE_CONFIG_H=1 -D_GNU_SOURCE=1 <br>
            -Werror=implicit-function-declaration
            -Werror=missing-prototypes <br>
            -Wmissing-prototypes -Werror=int-to-pointer-cast
            -fvisibility=hidden -O2 <br>
            -g -feliminate-unused-debug-types <br>
-fmacro-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0
            <br>
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0
            <br>
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot=
            <br>
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot-native=
            <br>
            -fPIC -pthread -MD -MQ
            src/libvirglrenderer.so.1.4.2.p/virglrenderer.c.o <br>
            -MF src/libvirglrenderer.so.1.4.2.p/virglrenderer.c.o.d -o <br>
            src/libvirglrenderer.so.1.4.2.p/virglrenderer.c.o -c <br>
            ../git/src/virglrenderer.c<br>
            In file included from ../git/src/vrend_renderer.h:34,<br>
                              from ../git/src/virglrenderer.c:37:<br>
            ../git/src/virgl_gbm.h:28:10: fatal error: gbm.h: No such
            file or directory<br>
                28 | #include &lt;gbm.h&gt;<br>
                   |          ^~~~~~~<br>
            compilation terminated.<br>
            [8/15] aarch64-overc-linux-gcc -march=armv8-a+crc <br>
--sysroot=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot
            <br>
            -Isrc/libvirgl.a.p -Isrc -I../git/src
            -I../git/src/gallium/include <br>
            -I../git/src/gallium/auxiliary
            -I../git/src/gallium/auxiliary/util -I. <br>
            -I../git <br>
-I/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot/usr/include/libdrm
            <br>
            -fdiagnostics-color=always -DNDEBUG -pipe
            -D_FILE_OFFSET_BITS=64 <br>
            -std=gnu11 -DHAVE_CONFIG_H=1 -D_GNU_SOURCE=1 <br>
            -Werror=implicit-function-declaration
            -Werror=missing-prototypes <br>
            -Wmissing-prototypes -Werror=int-to-pointer-cast
            -fvisibility=hidden -O2 <br>
            -g -feliminate-unused-debug-types <br>
-fmacro-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0
            <br>
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0
            <br>
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot=
            <br>
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot-native=
            <br>
            -fPIC -pthread -MD -MQ src/libvirgl.a.p/vrend_formats.c.o
            -MF <br>
            src/libvirgl.a.p/vrend_formats.c.o.d -o <br>
            src/libvirgl.a.p/vrend_formats.c.o -c
            ../git/src/vrend_formats.c<br>
            FAILED: src/libvirgl.a.p/vrend_formats.c.o<br>
            aarch64-overc-linux-gcc -march=armv8-a+crc <br>
--sysroot=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot
            <br>
            -Isrc/libvirgl.a.p -Isrc -I../git/src
            -I../git/src/gallium/include <br>
            -I../git/src/gallium/auxiliary
            -I../git/src/gallium/auxiliary/util -I. <br>
            -I../git <br>
-I/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot/usr/include/libdrm
            <br>
            -fdiagnostics-color=always -DNDEBUG -pipe
            -D_FILE_OFFSET_BITS=64 <br>
            -std=gnu11 -DHAVE_CONFIG_H=1 -D_GNU_SOURCE=1 <br>
            -Werror=implicit-function-declaration
            -Werror=missing-prototypes <br>
            -Wmissing-prototypes -Werror=int-to-pointer-cast
            -fvisibility=hidden -O2 <br>
            -g -feliminate-unused-debug-types <br>
-fmacro-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0
            <br>
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0
            <br>
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot=
            <br>
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot-native=
            <br>
            -fPIC -pthread -MD -MQ src/libvirgl.a.p/vrend_formats.c.o
            -MF <br>
            src/libvirgl.a.p/vrend_formats.c.o.d -o <br>
            src/libvirgl.a.p/vrend_formats.c.o -c
            ../git/src/vrend_formats.c<br>
            In file included from ../git/src/vrend_renderer.h:34,<br>
                              from ../git/src/vrend_formats.c:26:<br>
            ../git/src/virgl_gbm.h:28:10: fatal error: gbm.h: No such
            file or directory<br>
                28 | #include &lt;gbm.h&gt;<br>
                   |          ^~~~~~~<br>
            compilation terminated.<br>
            [9/15] aarch64-overc-linux-gcc -march=armv8-a+crc <br>
--sysroot=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot
            <br>
            -Isrc/libvirgl.a.p -Isrc -I../git/src
            -I../git/src/gallium/include <br>
            -I../git/src/gallium/auxiliary
            -I../git/src/gallium/auxiliary/util -I. <br>
            -I../git <br>
-I/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot/usr/include/libdrm
            <br>
            -fdiagnostics-color=always -DNDEBUG -pipe
            -D_FILE_OFFSET_BITS=64 <br>
            -std=gnu11 -DHAVE_CONFIG_H=1 -D_GNU_SOURCE=1 <br>
            -Werror=implicit-function-declaration
            -Werror=missing-prototypes <br>
            -Wmissing-prototypes -Werror=int-to-pointer-cast
            -fvisibility=hidden -O2 <br>
            -g -feliminate-unused-debug-types <br>
-fmacro-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0
            <br>
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0
            <br>
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot=
            <br>
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot-native=
            <br>
            -fPIC -pthread -MD -MQ src/libvirgl.a.p/vrend_decode.c.o -MF
            <br>
            src/libvirgl.a.p/vrend_decode.c.o.d -o
            src/libvirgl.a.p/vrend_decode.c.o <br>
            -c ../git/src/vrend_decode.c<br>
            FAILED: src/libvirgl.a.p/vrend_decode.c.o<br>
            aarch64-overc-linux-gcc -march=armv8-a+crc <br>
--sysroot=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot
            <br>
            -Isrc/libvirgl.a.p -Isrc -I../git/src
            -I../git/src/gallium/include <br>
            -I../git/src/gallium/auxiliary
            -I../git/src/gallium/auxiliary/util -I. <br>
            -I../git <br>
-I/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot/usr/include/libdrm
            <br>
            -fdiagnostics-color=always -DNDEBUG -pipe
            -D_FILE_OFFSET_BITS=64 <br>
            -std=gnu11 -DHAVE_CONFIG_H=1 -D_GNU_SOURCE=1 <br>
            -Werror=implicit-function-declaration
            -Werror=missing-prototypes <br>
            -Wmissing-prototypes -Werror=int-to-pointer-cast
            -fvisibility=hidden -O2 <br>
            -g -feliminate-unused-debug-types <br>
-fmacro-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0
            <br>
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0
            <br>
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot=
            <br>
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot-native=
            <br>
            -fPIC -pthread -MD -MQ src/libvirgl.a.p/vrend_decode.c.o -MF
            <br>
            src/libvirgl.a.p/vrend_decode.c.o.d -o
            src/libvirgl.a.p/vrend_decode.c.o <br>
            -c ../git/src/vrend_decode.c<br>
            In file included from ../git/src/vrend_renderer.h:34,<br>
                              from ../git/src/vrend_decode.c:34:<br>
            ../git/src/virgl_gbm.h:28:10: fatal error: gbm.h: No such
            file or directory<br>
                28 | #include &lt;gbm.h&gt;<br>
                   |          ^~~~~~~<br>
            compilation terminated.<br>
            [10/15] aarch64-overc-linux-gcc -march=armv8-a+crc <br>
--sysroot=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot
            <br>
            -Isrc/libvirgl.a.p -Isrc -I../git/src
            -I../git/src/gallium/include <br>
            -I../git/src/gallium/auxiliary
            -I../git/src/gallium/auxiliary/util -I. <br>
            -I../git <br>
-I/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot/usr/include/libdrm
            <br>
            -fdiagnostics-color=always -DNDEBUG -pipe
            -D_FILE_OFFSET_BITS=64 <br>
            -std=gnu11 -DHAVE_CONFIG_H=1 -D_GNU_SOURCE=1 <br>
            -Werror=implicit-function-declaration
            -Werror=missing-prototypes <br>
            -Wmissing-prototypes -Werror=int-to-pointer-cast
            -fvisibility=hidden -O2 <br>
            -g -feliminate-unused-debug-types <br>
-fmacro-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0
            <br>
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0
            <br>
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot=
            <br>
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot-native=
            <br>
            -fPIC -pthread -MD -MQ
            src/libvirgl.a.p/virgl_glx_context.c.o -MF <br>
            src/libvirgl.a.p/virgl_glx_context.c.o.d -o <br>
            src/libvirgl.a.p/virgl_glx_context.c.o -c
            ../git/src/virgl_glx_context.c<br>
            FAILED: src/libvirgl.a.p/virgl_glx_context.c.o<br>
            aarch64-overc-linux-gcc -march=armv8-a+crc <br>
--sysroot=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot
            <br>
            -Isrc/libvirgl.a.p -Isrc -I../git/src
            -I../git/src/gallium/include <br>
            -I../git/src/gallium/auxiliary
            -I../git/src/gallium/auxiliary/util -I. <br>
            -I../git <br>
-I/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot/usr/include/libdrm
            <br>
            -fdiagnostics-color=always -DNDEBUG -pipe
            -D_FILE_OFFSET_BITS=64 <br>
            -std=gnu11 -DHAVE_CONFIG_H=1 -D_GNU_SOURCE=1 <br>
            -Werror=implicit-function-declaration
            -Werror=missing-prototypes <br>
            -Wmissing-prototypes -Werror=int-to-pointer-cast
            -fvisibility=hidden -O2 <br>
            -g -feliminate-unused-debug-types <br>
-fmacro-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0
            <br>
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0
            <br>
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot=
            <br>
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot-native=
            <br>
            -fPIC -pthread -MD -MQ
            src/libvirgl.a.p/virgl_glx_context.c.o -MF <br>
            src/libvirgl.a.p/virgl_glx_context.c.o.d -o <br>
            src/libvirgl.a.p/virgl_glx_context.c.o -c
            ../git/src/virgl_glx_context.c<br>
            In file included from ../git/src/vrend_renderer.h:34,<br>
                              from ../git/src/virgl_glx.h:27,<br>
                              from ../git/src/virgl_glx_context.c:32:<br>
            ../git/src/virgl_gbm.h:28:10: fatal error: gbm.h: No such
            file or directory<br>
                28 | #include &lt;gbm.h&gt;<br>
                   |          ^~~~~~~<br>
            compilation terminated.<br>
            [11/15] aarch64-overc-linux-gcc -march=armv8-a+crc <br>
--sysroot=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot
            <br>
            -Ivtest/virgl_test_server.p -Ivtest -I../git/vtest <br>
            -I../git/src/gallium/include -I../git/src/gallium/auxiliary
            <br>
            -I../git/src/gallium/auxiliary/util -I. -I../git -Isrc
            -I../git/src <br>
            -fdiagnostics-color=always -DNDEBUG -pipe
            -D_FILE_OFFSET_BITS=64 <br>
            -std=gnu11 -DHAVE_CONFIG_H=1 -D_GNU_SOURCE=1 <br>
            -Werror=implicit-function-declaration
            -Werror=missing-prototypes <br>
            -Wmissing-prototypes -Werror=int-to-pointer-cast
            -fvisibility=hidden -O2 <br>
            -g -feliminate-unused-debug-types <br>
-fmacro-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0
            <br>
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0
            <br>
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot=
            <br>
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot-native=
            <br>
            -MD -MQ vtest/virgl_test_server.p/vtest_renderer.c.o -MF <br>
            vtest/virgl_test_server.p/vtest_renderer.c.o.d -o <br>
            vtest/virgl_test_server.p/vtest_renderer.c.o -c <br>
            ../git/vtest/vtest_renderer.c<br>
            ninja: build stopped: subcommand failed.<br>
            WARNING: <br>
/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/temp/run.do_compile.754739:152
            <br>
            exit 1 from 'ninja -v -j 16'<br>
            WARNING: Backtrace (BB generated script):<br>
                 #1: meson_do_compile, <br>
/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/temp/run.do_compile.754739,
            <br>
            line 152<br>
                 #2: do_compile, <br>
/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/temp/run.do_compile.754739,
            <br>
            line 147<br>
                 #3: main, <br>
/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/temp/run.do_compile.754739,
            <br>
            line 156<br>
            <br>
            Backtrace (metadata-relative locations):<br>
                 #1: meson_do_compile, <br>
            /home/dingo/overc/poky/meta/classes/meson.bbclass, line 180<br>
                 #2: do_compile, autogenerated, line 2<br>
            <br>
            <br>
            <br>
            <br>
          </blockquote>
        </div>
      </div>
    </blockquote>
  </body>
</html>

--------------3576BDFECDBA804CF3489AE3--
