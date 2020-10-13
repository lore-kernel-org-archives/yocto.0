Received: from mx02.optimcloud.com (mx02.optimcloud.com [46.23.93.22])
 by mx.groups.io with SMTP id smtpd.web12.4444.1602563276472034459
 for <yocto@lists.yoctoproject.org>;
 Mon, 12 Oct 2020 21:27:57 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="no key for verify" header.i=@optimcloud.com header.s=obsd header.b=NrnfGNPi;
 spf=none, err=SPF record not found (domain: optimcloud.com, ip: 46.23.93.22, mailfrom: yocto@optimcloud.com)
Received: from mx02.optimcloud.com (localhost [127.0.0.1])
	by mx02.optimcloud.com (OpenSMTPD) with ESMTP id 7bba31b1
	for <yocto@lists.yoctoproject.org>;
	Tue, 13 Oct 2020 06:27:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed; d=optimcloud.com; h=to
	:from:subject:message-id:date:mime-version:content-type
	:content-transfer-encoding; s=obsd; bh=3ijRXJRrJ0RF0MMd3tceAde4a
	XjvDlm8jfsfQhtphgY=; b=NrnfGNPiH89WzA/3W3ao2povfZxVh/KB+JM9eHQMr
	+ThxYLPXibickuVhR9FyP1A94VJ4GO+u0up5bRtbg0QQpqunpCkATll0a0BBF8pD
	gmSnlF2uarKtK2YokvBL1PUN0rzqyRqsFJOodd1cit64uppHcM8+IMgfbu3xozbI
	/Hq5zDznetrv7lFgt00Uzm+Ap9D0M/TKyeqCqcSX+JMUvfJmekJXcY8IE9LfKIry
	h2oRMxo4ZpXGUj/3ffn39Qm5iURJYE4b0WXIPprQgemvKjYbgAQbGVCjaOjFF8VF
	jRJxSvfUqaeO8c97SJ4UNTeM2+oW8Ejz9pmfF3uZ9o1gw==
DomainKey-Signature: a=rsa-sha1; c=nofws; d=optimcloud.com; h=to:from
	:subject:message-id:date:mime-version:content-type
	:content-transfer-encoding; q=dns; s=obsd; b=y4ytE8juwP7K/+2OCD4
	chgusr+qm9HiMoI+eBzdXcbJza6cYnzWb5PMkEc/Y/8xT9PF+SqvR75TfM+DlKPX
	uCpcV2qCY/8j+bxyNyFuXaYOAUVylRRGN5cpxE+fR1HRNsFkkVjIzQuDQFBryiav
	OtAKVL+syy8lCDyiKkrSBljaZFTjgpa5OH6c96J5K2TwkuQGQNk8jKUIhcREvxyF
	OLRRJznFV0jnvd9JZW0BJ7yjI4XMrN798l2fT41cWTnrnzIQhJOnW2W9INu/s4Or
	VUi4B5QjNdCMBUlRCdH6YU+wpMSa8Axhr09vRIeUOeIZ0u0wrMMkLBu9hN7TnHFX
	Zvw==
Received: 
	by mx02.optimcloud.com (OpenSMTPD) with ESMTPSA id fa9ed75d (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256:NO) auth=yes user=yocto@optimcloud.com
	for <yocto@lists.yoctoproject.org>;
	Tue, 13 Oct 2020 06:27:51 +0200 (CEST)
To: yocto@lists.yoctoproject.org
From: "Yocto" <yocto@optimcloud.com>
Subject: virglrenderer fatal error: gbm.h: No such file or directory
Message-ID: <db432deb-9818-206d-9d3f-ff7ac8342f60@optimcloud.com>
Date: Tue, 13 Oct 2020 11:27:39 +0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US

virglrenderer appears broken, occurs on both Fedora-32 and Debian-10

Build Configuration:
BB_VERSION           = "1.47.0"
BUILD_SYS            = "x86_64-linux"
NATIVELSBSTRING      = "fedora-32"
TARGET_SYS           = "aarch64-overc-linux"
MACHINE              = "jetson-xavier-nx-devkit"
DISTRO               = "overc"
DISTRO_VERSION       = "1.0"
TUNE_FEATURES        = "aarch64 armv8a crc"
TARGET_FPU           = ""
meta
meta-poky
meta-yocto-bsp       = "master:0c0b236b4c72d30e0e88f5f0310476569d444e83"
meta-tegra           = "master:01c3205183af0236101b423d48a8af167baee8b1"
meta-oe
meta-python
meta-networking
meta-filesystems
meta-gnome
meta-xfce
meta-multimedia
meta-perl            = "master:d25d21a8b40d3fe29298f3aa43328477ce4d8ee7"
meta-overc
meta-cube            = "master:264d1d0949fb5e9ec8e39b1f7604086d59ec2047"
meta-awnix           = "master:c616414c6ed4f6f2ab75703ce5a3e84acacd3c47"
meta-virtualization  = "master:43a5cc7f031da1ef75b1ff33def3ef4984ad72e3"
meta-cloud-services  = "master:910195eb791d754d394ba1013a258ab120c995e9"
meta-security        = "master:3ce8b759c97706d6f78928c38b6ebac4edfd95a5"
meta-selinux         = "master:6e1100d29aec118df2025c46c77f4c8aa8da4e76"


❯ cat 
/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/temp/log.do_compile.754739
DEBUG: Executing shell function do_compile
[1/15] rm -f src/gallium/libgallium.a && aarch64-overc-linux-gcc-ar csrD 
src/gallium/libgallium.a 
src/gallium/libgallium.a.p/meson-generated_.._u_format_table.c.o 
src/gallium/libgallium.a.p/auxiliary_util_u_format.c.o 
src/gallium/libgallium.a.p/auxiliary_util_u_texture.c.o 
src/gallium/libgallium.a.p/auxiliary_util_u_hash_table.c.o 
src/gallium/libgallium.a.p/auxiliary_util_u_debug.c.o 
src/gallium/libgallium.a.p/auxiliary_util_u_cpu_detect.c.o 
src/gallium/libgallium.a.p/auxiliary_util_u_bitmask.c.o 
src/gallium/libgallium.a.p/auxiliary_util_u_surface.c.o 
src/gallium/libgallium.a.p/auxiliary_util_u_math.c.o 
src/gallium/libgallium.a.p/auxiliary_util_u_debug_describe.c.o 
src/gallium/libgallium.a.p/auxiliary_cso_cache_cso_cache.c.o 
src/gallium/libgallium.a.p/auxiliary_cso_cache_cso_hash.c.o 
src/gallium/libgallium.a.p/auxiliary_tgsi_tgsi_dump.c.o 
src/gallium/libgallium.a.p/auxiliary_tgsi_tgsi_ureg.c.o 
src/gallium/libgallium.a.p/auxiliary_tgsi_tgsi_build.c.o 
src/gallium/libgallium.a.p/auxiliary_tgsi_tgsi_scan.c.o 
src/gallium/libgallium.a.p/auxiliary_tgsi_tgsi_info.c.o 
src/gallium/libgallium.a.p/auxiliary_tgsi_tgsi_parse.c.o 
src/gallium/libgallium.a.p/auxiliary_tgsi_tgsi_text.c.o 
src/gallium/libgallium.a.p/auxiliary_tgsi_tgsi_strings.c.o 
src/gallium/libgallium.a.p/auxiliary_tgsi_tgsi_sanity.c.o 
src/gallium/libgallium.a.p/auxiliary_tgsi_tgsi_iterate.c.o 
src/gallium/libgallium.a.p/auxiliary_tgsi_tgsi_util.c.o 
src/gallium/libgallium.a.p/auxiliary_tgsi_tgsi_transform.c.o 
src/gallium/libgallium.a.p/auxiliary_os_os_misc.c.o
[2/15] aarch64-overc-linux-gcc -march=armv8-a+crc 
--sysroot=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot 
-Ivtest/virgl_test_server.p -Ivtest -I../git/vtest 
-I../git/src/gallium/include -I../git/src/gallium/auxiliary 
-I../git/src/gallium/auxiliary/util -I. -I../git -Isrc -I../git/src 
-fdiagnostics-color=always -DNDEBUG -pipe -D_FILE_OFFSET_BITS=64 
-std=gnu11 -DHAVE_CONFIG_H=1 -D_GNU_SOURCE=1 
-Werror=implicit-function-declaration -Werror=missing-prototypes 
-Wmissing-prototypes -Werror=int-to-pointer-cast -fvisibility=hidden -O2 
-g -feliminate-unused-debug-types 
-fmacro-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0 
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0 
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot= 
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot-native= 
-MD -MQ vtest/virgl_test_server.p/vtest_shm.c.o -MF 
vtest/virgl_test_server.p/vtest_shm.c.o.d -o 
vtest/virgl_test_server.p/vtest_shm.c.o -c ../git/vtest/vtest_shm.c
[3/15] aarch64-overc-linux-gcc -march=armv8-a+crc 
--sysroot=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot 
-Isrc/libvirgl.a.p -Isrc -I../git/src -I../git/src/gallium/include 
-I../git/src/gallium/auxiliary -I../git/src/gallium/auxiliary/util -I. 
-I../git 
-I/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot/usr/include/libdrm 
-fdiagnostics-color=always -DNDEBUG -pipe -D_FILE_OFFSET_BITS=64 
-std=gnu11 -DHAVE_CONFIG_H=1 -D_GNU_SOURCE=1 
-Werror=implicit-function-declaration -Werror=missing-prototypes 
-Wmissing-prototypes -Werror=int-to-pointer-cast -fvisibility=hidden -O2 
-g -feliminate-unused-debug-types 
-fmacro-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0 
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0 
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot= 
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot-native= 
-fPIC -pthread -MD -MQ src/libvirgl.a.p/vrend_debug.c.o -MF 
src/libvirgl.a.p/vrend_debug.c.o.d -o src/libvirgl.a.p/vrend_debug.c.o 
-c ../git/src/vrend_debug.c
FAILED: src/libvirgl.a.p/vrend_debug.c.o
aarch64-overc-linux-gcc -march=armv8-a+crc 
--sysroot=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot 
-Isrc/libvirgl.a.p -Isrc -I../git/src -I../git/src/gallium/include 
-I../git/src/gallium/auxiliary -I../git/src/gallium/auxiliary/util -I. 
-I../git 
-I/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot/usr/include/libdrm 
-fdiagnostics-color=always -DNDEBUG -pipe -D_FILE_OFFSET_BITS=64 
-std=gnu11 -DHAVE_CONFIG_H=1 -D_GNU_SOURCE=1 
-Werror=implicit-function-declaration -Werror=missing-prototypes 
-Wmissing-prototypes -Werror=int-to-pointer-cast -fvisibility=hidden -O2 
-g -feliminate-unused-debug-types 
-fmacro-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0 
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0 
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot= 
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot-native= 
-fPIC -pthread -MD -MQ src/libvirgl.a.p/vrend_debug.c.o -MF 
src/libvirgl.a.p/vrend_debug.c.o.d -o src/libvirgl.a.p/vrend_debug.c.o 
-c ../git/src/vrend_debug.c
In file included from ../git/src/vrend_renderer.h:34,
                  from ../git/src/vrend_debug.c:26:
../git/src/virgl_gbm.h:28:10: fatal error: gbm.h: No such file or directory
    28 | #include <gbm.h>
       |          ^~~~~~~
compilation terminated.
[4/15] aarch64-overc-linux-gcc -march=armv8-a+crc 
--sysroot=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot 
-Isrc/libvirgl.a.p -Isrc -I../git/src -I../git/src/gallium/include 
-I../git/src/gallium/auxiliary -I../git/src/gallium/auxiliary/util -I. 
-I../git 
-I/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot/usr/include/libdrm 
-fdiagnostics-color=always -DNDEBUG -pipe -D_FILE_OFFSET_BITS=64 
-std=gnu11 -DHAVE_CONFIG_H=1 -D_GNU_SOURCE=1 
-Werror=implicit-function-declaration -Werror=missing-prototypes 
-Wmissing-prototypes -Werror=int-to-pointer-cast -fvisibility=hidden -O2 
-g -feliminate-unused-debug-types 
-fmacro-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0 
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0 
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot= 
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot-native= 
-fPIC -pthread -MD -MQ src/libvirgl.a.p/vrend_renderer.c.o -MF 
src/libvirgl.a.p/vrend_renderer.c.o.d -o 
src/libvirgl.a.p/vrend_renderer.c.o -c ../git/src/vrend_renderer.c
FAILED: src/libvirgl.a.p/vrend_renderer.c.o
aarch64-overc-linux-gcc -march=armv8-a+crc 
--sysroot=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot 
-Isrc/libvirgl.a.p -Isrc -I../git/src -I../git/src/gallium/include 
-I../git/src/gallium/auxiliary -I../git/src/gallium/auxiliary/util -I. 
-I../git 
-I/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot/usr/include/libdrm 
-fdiagnostics-color=always -DNDEBUG -pipe -D_FILE_OFFSET_BITS=64 
-std=gnu11 -DHAVE_CONFIG_H=1 -D_GNU_SOURCE=1 
-Werror=implicit-function-declaration -Werror=missing-prototypes 
-Wmissing-prototypes -Werror=int-to-pointer-cast -fvisibility=hidden -O2 
-g -feliminate-unused-debug-types 
-fmacro-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0 
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0 
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot= 
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot-native= 
-fPIC -pthread -MD -MQ src/libvirgl.a.p/vrend_renderer.c.o -MF 
src/libvirgl.a.p/vrend_renderer.c.o.d -o 
src/libvirgl.a.p/vrend_renderer.c.o -c ../git/src/vrend_renderer.c
In file included from ../git/src/vrend_renderer.h:34,
                  from ../git/src/vrend_renderer.c:49:
../git/src/virgl_gbm.h:28:10: fatal error: gbm.h: No such file or directory
    28 | #include <gbm.h>
       |          ^~~~~~~
compilation terminated.
[5/15] aarch64-overc-linux-gcc -march=armv8-a+crc 
--sysroot=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot 
-Isrc/libvirgl.a.p -Isrc -I../git/src -I../git/src/gallium/include 
-I../git/src/gallium/auxiliary -I../git/src/gallium/auxiliary/util -I. 
-I../git 
-I/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot/usr/include/libdrm 
-fdiagnostics-color=always -DNDEBUG -pipe -D_FILE_OFFSET_BITS=64 
-std=gnu11 -DHAVE_CONFIG_H=1 -D_GNU_SOURCE=1 
-Werror=implicit-function-declaration -Werror=missing-prototypes 
-Wmissing-prototypes -Werror=int-to-pointer-cast -fvisibility=hidden -O2 
-g -feliminate-unused-debug-types 
-fmacro-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0 
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0 
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot= 
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot-native= 
-fPIC -pthread -MD -MQ src/libvirgl.a.p/vrend_blitter.c.o -MF 
src/libvirgl.a.p/vrend_blitter.c.o.d -o 
src/libvirgl.a.p/vrend_blitter.c.o -c ../git/src/vrend_blitter.c
FAILED: src/libvirgl.a.p/vrend_blitter.c.o
aarch64-overc-linux-gcc -march=armv8-a+crc 
--sysroot=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot 
-Isrc/libvirgl.a.p -Isrc -I../git/src -I../git/src/gallium/include 
-I../git/src/gallium/auxiliary -I../git/src/gallium/auxiliary/util -I. 
-I../git 
-I/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot/usr/include/libdrm 
-fdiagnostics-color=always -DNDEBUG -pipe -D_FILE_OFFSET_BITS=64 
-std=gnu11 -DHAVE_CONFIG_H=1 -D_GNU_SOURCE=1 
-Werror=implicit-function-declaration -Werror=missing-prototypes 
-Wmissing-prototypes -Werror=int-to-pointer-cast -fvisibility=hidden -O2 
-g -feliminate-unused-debug-types 
-fmacro-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0 
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0 
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot= 
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot-native= 
-fPIC -pthread -MD -MQ src/libvirgl.a.p/vrend_blitter.c.o -MF 
src/libvirgl.a.p/vrend_blitter.c.o.d -o 
src/libvirgl.a.p/vrend_blitter.c.o -c ../git/src/vrend_blitter.c
In file included from ../git/src/vrend_renderer.h:34,
                  from ../git/src/vrend_blitter.c:48:
../git/src/virgl_gbm.h:28:10: fatal error: gbm.h: No such file or directory
    28 | #include <gbm.h>
       |          ^~~~~~~
compilation terminated.
[6/15] aarch64-overc-linux-gcc -march=armv8-a+crc 
--sysroot=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot 
-Ivtest/virgl_test_server.p -Ivtest -I../git/vtest 
-I../git/src/gallium/include -I../git/src/gallium/auxiliary 
-I../git/src/gallium/auxiliary/util -I. -I../git -Isrc -I../git/src 
-fdiagnostics-color=always -DNDEBUG -pipe -D_FILE_OFFSET_BITS=64 
-std=gnu11 -DHAVE_CONFIG_H=1 -D_GNU_SOURCE=1 
-Werror=implicit-function-declaration -Werror=missing-prototypes 
-Wmissing-prototypes -Werror=int-to-pointer-cast -fvisibility=hidden -O2 
-g -feliminate-unused-debug-types 
-fmacro-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0 
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0 
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot= 
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot-native= 
-MD -MQ vtest/virgl_test_server.p/vtest_server.c.o -MF 
vtest/virgl_test_server.p/vtest_server.c.o.d -o 
vtest/virgl_test_server.p/vtest_server.c.o -c ../git/vtest/vtest_server.c
[7/15] aarch64-overc-linux-gcc -march=armv8-a+crc 
--sysroot=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot 
-Isrc/libvirglrenderer.so.1.4.2.p -Isrc -I../git/src 
-I../git/src/gallium/include -I../git/src/gallium/auxiliary 
-I../git/src/gallium/auxiliary/util -I. -I../git 
-I/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot/usr/include/libdrm 
-fdiagnostics-color=always -DNDEBUG -pipe -D_FILE_OFFSET_BITS=64 
-std=gnu11 -DHAVE_CONFIG_H=1 -D_GNU_SOURCE=1 
-Werror=implicit-function-declaration -Werror=missing-prototypes 
-Wmissing-prototypes -Werror=int-to-pointer-cast -fvisibility=hidden -O2 
-g -feliminate-unused-debug-types 
-fmacro-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0 
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0 
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot= 
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot-native= 
-fPIC -pthread -MD -MQ src/libvirglrenderer.so.1.4.2.p/virglrenderer.c.o 
-MF src/libvirglrenderer.so.1.4.2.p/virglrenderer.c.o.d -o 
src/libvirglrenderer.so.1.4.2.p/virglrenderer.c.o -c 
../git/src/virglrenderer.c
FAILED: src/libvirglrenderer.so.1.4.2.p/virglrenderer.c.o
aarch64-overc-linux-gcc -march=armv8-a+crc 
--sysroot=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot 
-Isrc/libvirglrenderer.so.1.4.2.p -Isrc -I../git/src 
-I../git/src/gallium/include -I../git/src/gallium/auxiliary 
-I../git/src/gallium/auxiliary/util -I. -I../git 
-I/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot/usr/include/libdrm 
-fdiagnostics-color=always -DNDEBUG -pipe -D_FILE_OFFSET_BITS=64 
-std=gnu11 -DHAVE_CONFIG_H=1 -D_GNU_SOURCE=1 
-Werror=implicit-function-declaration -Werror=missing-prototypes 
-Wmissing-prototypes -Werror=int-to-pointer-cast -fvisibility=hidden -O2 
-g -feliminate-unused-debug-types 
-fmacro-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0 
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0 
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot= 
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot-native= 
-fPIC -pthread -MD -MQ src/libvirglrenderer.so.1.4.2.p/virglrenderer.c.o 
-MF src/libvirglrenderer.so.1.4.2.p/virglrenderer.c.o.d -o 
src/libvirglrenderer.so.1.4.2.p/virglrenderer.c.o -c 
../git/src/virglrenderer.c
In file included from ../git/src/vrend_renderer.h:34,
                  from ../git/src/virglrenderer.c:37:
../git/src/virgl_gbm.h:28:10: fatal error: gbm.h: No such file or directory
    28 | #include <gbm.h>
       |          ^~~~~~~
compilation terminated.
[8/15] aarch64-overc-linux-gcc -march=armv8-a+crc 
--sysroot=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot 
-Isrc/libvirgl.a.p -Isrc -I../git/src -I../git/src/gallium/include 
-I../git/src/gallium/auxiliary -I../git/src/gallium/auxiliary/util -I. 
-I../git 
-I/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot/usr/include/libdrm 
-fdiagnostics-color=always -DNDEBUG -pipe -D_FILE_OFFSET_BITS=64 
-std=gnu11 -DHAVE_CONFIG_H=1 -D_GNU_SOURCE=1 
-Werror=implicit-function-declaration -Werror=missing-prototypes 
-Wmissing-prototypes -Werror=int-to-pointer-cast -fvisibility=hidden -O2 
-g -feliminate-unused-debug-types 
-fmacro-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0 
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0 
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot= 
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot-native= 
-fPIC -pthread -MD -MQ src/libvirgl.a.p/vrend_formats.c.o -MF 
src/libvirgl.a.p/vrend_formats.c.o.d -o 
src/libvirgl.a.p/vrend_formats.c.o -c ../git/src/vrend_formats.c
FAILED: src/libvirgl.a.p/vrend_formats.c.o
aarch64-overc-linux-gcc -march=armv8-a+crc 
--sysroot=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot 
-Isrc/libvirgl.a.p -Isrc -I../git/src -I../git/src/gallium/include 
-I../git/src/gallium/auxiliary -I../git/src/gallium/auxiliary/util -I. 
-I../git 
-I/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot/usr/include/libdrm 
-fdiagnostics-color=always -DNDEBUG -pipe -D_FILE_OFFSET_BITS=64 
-std=gnu11 -DHAVE_CONFIG_H=1 -D_GNU_SOURCE=1 
-Werror=implicit-function-declaration -Werror=missing-prototypes 
-Wmissing-prototypes -Werror=int-to-pointer-cast -fvisibility=hidden -O2 
-g -feliminate-unused-debug-types 
-fmacro-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0 
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0 
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot= 
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot-native= 
-fPIC -pthread -MD -MQ src/libvirgl.a.p/vrend_formats.c.o -MF 
src/libvirgl.a.p/vrend_formats.c.o.d -o 
src/libvirgl.a.p/vrend_formats.c.o -c ../git/src/vrend_formats.c
In file included from ../git/src/vrend_renderer.h:34,
                  from ../git/src/vrend_formats.c:26:
../git/src/virgl_gbm.h:28:10: fatal error: gbm.h: No such file or directory
    28 | #include <gbm.h>
       |          ^~~~~~~
compilation terminated.
[9/15] aarch64-overc-linux-gcc -march=armv8-a+crc 
--sysroot=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot 
-Isrc/libvirgl.a.p -Isrc -I../git/src -I../git/src/gallium/include 
-I../git/src/gallium/auxiliary -I../git/src/gallium/auxiliary/util -I. 
-I../git 
-I/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot/usr/include/libdrm 
-fdiagnostics-color=always -DNDEBUG -pipe -D_FILE_OFFSET_BITS=64 
-std=gnu11 -DHAVE_CONFIG_H=1 -D_GNU_SOURCE=1 
-Werror=implicit-function-declaration -Werror=missing-prototypes 
-Wmissing-prototypes -Werror=int-to-pointer-cast -fvisibility=hidden -O2 
-g -feliminate-unused-debug-types 
-fmacro-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0 
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0 
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot= 
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot-native= 
-fPIC -pthread -MD -MQ src/libvirgl.a.p/vrend_decode.c.o -MF 
src/libvirgl.a.p/vrend_decode.c.o.d -o src/libvirgl.a.p/vrend_decode.c.o 
-c ../git/src/vrend_decode.c
FAILED: src/libvirgl.a.p/vrend_decode.c.o
aarch64-overc-linux-gcc -march=armv8-a+crc 
--sysroot=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot 
-Isrc/libvirgl.a.p -Isrc -I../git/src -I../git/src/gallium/include 
-I../git/src/gallium/auxiliary -I../git/src/gallium/auxiliary/util -I. 
-I../git 
-I/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot/usr/include/libdrm 
-fdiagnostics-color=always -DNDEBUG -pipe -D_FILE_OFFSET_BITS=64 
-std=gnu11 -DHAVE_CONFIG_H=1 -D_GNU_SOURCE=1 
-Werror=implicit-function-declaration -Werror=missing-prototypes 
-Wmissing-prototypes -Werror=int-to-pointer-cast -fvisibility=hidden -O2 
-g -feliminate-unused-debug-types 
-fmacro-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0 
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0 
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot= 
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot-native= 
-fPIC -pthread -MD -MQ src/libvirgl.a.p/vrend_decode.c.o -MF 
src/libvirgl.a.p/vrend_decode.c.o.d -o src/libvirgl.a.p/vrend_decode.c.o 
-c ../git/src/vrend_decode.c
In file included from ../git/src/vrend_renderer.h:34,
                  from ../git/src/vrend_decode.c:34:
../git/src/virgl_gbm.h:28:10: fatal error: gbm.h: No such file or directory
    28 | #include <gbm.h>
       |          ^~~~~~~
compilation terminated.
[10/15] aarch64-overc-linux-gcc -march=armv8-a+crc 
--sysroot=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot 
-Isrc/libvirgl.a.p -Isrc -I../git/src -I../git/src/gallium/include 
-I../git/src/gallium/auxiliary -I../git/src/gallium/auxiliary/util -I. 
-I../git 
-I/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot/usr/include/libdrm 
-fdiagnostics-color=always -DNDEBUG -pipe -D_FILE_OFFSET_BITS=64 
-std=gnu11 -DHAVE_CONFIG_H=1 -D_GNU_SOURCE=1 
-Werror=implicit-function-declaration -Werror=missing-prototypes 
-Wmissing-prototypes -Werror=int-to-pointer-cast -fvisibility=hidden -O2 
-g -feliminate-unused-debug-types 
-fmacro-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0 
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0 
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot= 
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot-native= 
-fPIC -pthread -MD -MQ src/libvirgl.a.p/virgl_glx_context.c.o -MF 
src/libvirgl.a.p/virgl_glx_context.c.o.d -o 
src/libvirgl.a.p/virgl_glx_context.c.o -c ../git/src/virgl_glx_context.c
FAILED: src/libvirgl.a.p/virgl_glx_context.c.o
aarch64-overc-linux-gcc -march=armv8-a+crc 
--sysroot=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot 
-Isrc/libvirgl.a.p -Isrc -I../git/src -I../git/src/gallium/include 
-I../git/src/gallium/auxiliary -I../git/src/gallium/auxiliary/util -I. 
-I../git 
-I/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot/usr/include/libdrm 
-fdiagnostics-color=always -DNDEBUG -pipe -D_FILE_OFFSET_BITS=64 
-std=gnu11 -DHAVE_CONFIG_H=1 -D_GNU_SOURCE=1 
-Werror=implicit-function-declaration -Werror=missing-prototypes 
-Wmissing-prototypes -Werror=int-to-pointer-cast -fvisibility=hidden -O2 
-g -feliminate-unused-debug-types 
-fmacro-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0 
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0 
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot= 
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot-native= 
-fPIC -pthread -MD -MQ src/libvirgl.a.p/virgl_glx_context.c.o -MF 
src/libvirgl.a.p/virgl_glx_context.c.o.d -o 
src/libvirgl.a.p/virgl_glx_context.c.o -c ../git/src/virgl_glx_context.c
In file included from ../git/src/vrend_renderer.h:34,
                  from ../git/src/virgl_glx.h:27,
                  from ../git/src/virgl_glx_context.c:32:
../git/src/virgl_gbm.h:28:10: fatal error: gbm.h: No such file or directory
    28 | #include <gbm.h>
       |          ^~~~~~~
compilation terminated.
[11/15] aarch64-overc-linux-gcc -march=armv8-a+crc 
--sysroot=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot 
-Ivtest/virgl_test_server.p -Ivtest -I../git/vtest 
-I../git/src/gallium/include -I../git/src/gallium/auxiliary 
-I../git/src/gallium/auxiliary/util -I. -I../git -Isrc -I../git/src 
-fdiagnostics-color=always -DNDEBUG -pipe -D_FILE_OFFSET_BITS=64 
-std=gnu11 -DHAVE_CONFIG_H=1 -D_GNU_SOURCE=1 
-Werror=implicit-function-declaration -Werror=missing-prototypes 
-Wmissing-prototypes -Werror=int-to-pointer-cast -fvisibility=hidden -O2 
-g -feliminate-unused-debug-types 
-fmacro-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0 
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0 
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot= 
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot-native= 
-MD -MQ vtest/virgl_test_server.p/vtest_renderer.c.o -MF 
vtest/virgl_test_server.p/vtest_renderer.c.o.d -o 
vtest/virgl_test_server.p/vtest_renderer.c.o -c 
../git/vtest/vtest_renderer.c
ninja: build stopped: subcommand failed.
WARNING: 
/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/temp/run.do_compile.754739:152 
exit 1 from 'ninja -v -j 16'
WARNING: Backtrace (BB generated script):
     #1: meson_do_compile, 
/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/temp/run.do_compile.754739, 
line 152
     #2: do_compile, 
/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/temp/run.do_compile.754739, 
line 147
     #3: main, 
/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/temp/run.do_compile.754739, 
line 156
ERROR: Execution of 
'/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/temp/run.do_compile.754739' 
failed with exit code 1:
[1/15] rm -f src/gallium/libgallium.a && aarch64-overc-linux-gcc-ar csrD 
src/gallium/libgallium.a 
src/gallium/libgallium.a.p/meson-generated_.._u_format_table.c.o 
src/gallium/libgallium.a.p/auxiliary_util_u_format.c.o 
src/gallium/libgallium.a.p/auxiliary_util_u_texture.c.o 
src/gallium/libgallium.a.p/auxiliary_util_u_hash_table.c.o 
src/gallium/libgallium.a.p/auxiliary_util_u_debug.c.o 
src/gallium/libgallium.a.p/auxiliary_util_u_cpu_detect.c.o 
src/gallium/libgallium.a.p/auxiliary_util_u_bitmask.c.o 
src/gallium/libgallium.a.p/auxiliary_util_u_surface.c.o 
src/gallium/libgallium.a.p/auxiliary_util_u_math.c.o 
src/gallium/libgallium.a.p/auxiliary_util_u_debug_describe.c.o 
src/gallium/libgallium.a.p/auxiliary_cso_cache_cso_cache.c.o 
src/gallium/libgallium.a.p/auxiliary_cso_cache_cso_hash.c.o 
src/gallium/libgallium.a.p/auxiliary_tgsi_tgsi_dump.c.o 
src/gallium/libgallium.a.p/auxiliary_tgsi_tgsi_ureg.c.o 
src/gallium/libgallium.a.p/auxiliary_tgsi_tgsi_build.c.o 
src/gallium/libgallium.a.p/auxiliary_tgsi_tgsi_scan.c.o 
src/gallium/libgallium.a.p/auxiliary_tgsi_tgsi_info.c.o 
src/gallium/libgallium.a.p/auxiliary_tgsi_tgsi_parse.c.o 
src/gallium/libgallium.a.p/auxiliary_tgsi_tgsi_text.c.o 
src/gallium/libgallium.a.p/auxiliary_tgsi_tgsi_strings.c.o 
src/gallium/libgallium.a.p/auxiliary_tgsi_tgsi_sanity.c.o 
src/gallium/libgallium.a.p/auxiliary_tgsi_tgsi_iterate.c.o 
src/gallium/libgallium.a.p/auxiliary_tgsi_tgsi_util.c.o 
src/gallium/libgallium.a.p/auxiliary_tgsi_tgsi_transform.c.o 
src/gallium/libgallium.a.p/auxiliary_os_os_misc.c.o
[2/15] aarch64-overc-linux-gcc -march=armv8-a+crc 
--sysroot=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot 
-Ivtest/virgl_test_server.p -Ivtest -I../git/vtest 
-I../git/src/gallium/include -I../git/src/gallium/auxiliary 
-I../git/src/gallium/auxiliary/util -I. -I../git -Isrc -I../git/src 
-fdiagnostics-color=always -DNDEBUG -pipe -D_FILE_OFFSET_BITS=64 
-std=gnu11 -DHAVE_CONFIG_H=1 -D_GNU_SOURCE=1 
-Werror=implicit-function-declaration -Werror=missing-prototypes 
-Wmissing-prototypes -Werror=int-to-pointer-cast -fvisibility=hidden -O2 
-g -feliminate-unused-debug-types 
-fmacro-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0 
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0 
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot= 
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot-native= 
-MD -MQ vtest/virgl_test_server.p/vtest_shm.c.o -MF 
vtest/virgl_test_server.p/vtest_shm.c.o.d -o 
vtest/virgl_test_server.p/vtest_shm.c.o -c ../git/vtest/vtest_shm.c
[3/15] aarch64-overc-linux-gcc -march=armv8-a+crc 
--sysroot=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot 
-Isrc/libvirgl.a.p -Isrc -I../git/src -I../git/src/gallium/include 
-I../git/src/gallium/auxiliary -I../git/src/gallium/auxiliary/util -I. 
-I../git 
-I/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot/usr/include/libdrm 
-fdiagnostics-color=always -DNDEBUG -pipe -D_FILE_OFFSET_BITS=64 
-std=gnu11 -DHAVE_CONFIG_H=1 -D_GNU_SOURCE=1 
-Werror=implicit-function-declaration -Werror=missing-prototypes 
-Wmissing-prototypes -Werror=int-to-pointer-cast -fvisibility=hidden -O2 
-g -feliminate-unused-debug-types 
-fmacro-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0 
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0 
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot= 
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot-native= 
-fPIC -pthread -MD -MQ src/libvirgl.a.p/vrend_debug.c.o -MF 
src/libvirgl.a.p/vrend_debug.c.o.d -o src/libvirgl.a.p/vrend_debug.c.o 
-c ../git/src/vrend_debug.c
FAILED: src/libvirgl.a.p/vrend_debug.c.o
aarch64-overc-linux-gcc -march=armv8-a+crc 
--sysroot=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot 
-Isrc/libvirgl.a.p -Isrc -I../git/src -I../git/src/gallium/include 
-I../git/src/gallium/auxiliary -I../git/src/gallium/auxiliary/util -I. 
-I../git 
-I/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot/usr/include/libdrm 
-fdiagnostics-color=always -DNDEBUG -pipe -D_FILE_OFFSET_BITS=64 
-std=gnu11 -DHAVE_CONFIG_H=1 -D_GNU_SOURCE=1 
-Werror=implicit-function-declaration -Werror=missing-prototypes 
-Wmissing-prototypes -Werror=int-to-pointer-cast -fvisibility=hidden -O2 
-g -feliminate-unused-debug-types 
-fmacro-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0 
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0 
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot= 
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot-native= 
-fPIC -pthread -MD -MQ src/libvirgl.a.p/vrend_debug.c.o -MF 
src/libvirgl.a.p/vrend_debug.c.o.d -o src/libvirgl.a.p/vrend_debug.c.o 
-c ../git/src/vrend_debug.c
In file included from ../git/src/vrend_renderer.h:34,
                  from ../git/src/vrend_debug.c:26:
../git/src/virgl_gbm.h:28:10: fatal error: gbm.h: No such file or directory
    28 | #include <gbm.h>
       |          ^~~~~~~
compilation terminated.
[4/15] aarch64-overc-linux-gcc -march=armv8-a+crc 
--sysroot=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot 
-Isrc/libvirgl.a.p -Isrc -I../git/src -I../git/src/gallium/include 
-I../git/src/gallium/auxiliary -I../git/src/gallium/auxiliary/util -I. 
-I../git 
-I/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot/usr/include/libdrm 
-fdiagnostics-color=always -DNDEBUG -pipe -D_FILE_OFFSET_BITS=64 
-std=gnu11 -DHAVE_CONFIG_H=1 -D_GNU_SOURCE=1 
-Werror=implicit-function-declaration -Werror=missing-prototypes 
-Wmissing-prototypes -Werror=int-to-pointer-cast -fvisibility=hidden -O2 
-g -feliminate-unused-debug-types 
-fmacro-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0 
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0 
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot= 
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot-native= 
-fPIC -pthread -MD -MQ src/libvirgl.a.p/vrend_renderer.c.o -MF 
src/libvirgl.a.p/vrend_renderer.c.o.d -o 
src/libvirgl.a.p/vrend_renderer.c.o -c ../git/src/vrend_renderer.c
FAILED: src/libvirgl.a.p/vrend_renderer.c.o
aarch64-overc-linux-gcc -march=armv8-a+crc 
--sysroot=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot 
-Isrc/libvirgl.a.p -Isrc -I../git/src -I../git/src/gallium/include 
-I../git/src/gallium/auxiliary -I../git/src/gallium/auxiliary/util -I. 
-I../git 
-I/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot/usr/include/libdrm 
-fdiagnostics-color=always -DNDEBUG -pipe -D_FILE_OFFSET_BITS=64 
-std=gnu11 -DHAVE_CONFIG_H=1 -D_GNU_SOURCE=1 
-Werror=implicit-function-declaration -Werror=missing-prototypes 
-Wmissing-prototypes -Werror=int-to-pointer-cast -fvisibility=hidden -O2 
-g -feliminate-unused-debug-types 
-fmacro-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0 
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0 
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot= 
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot-native= 
-fPIC -pthread -MD -MQ src/libvirgl.a.p/vrend_renderer.c.o -MF 
src/libvirgl.a.p/vrend_renderer.c.o.d -o 
src/libvirgl.a.p/vrend_renderer.c.o -c ../git/src/vrend_renderer.c
In file included from ../git/src/vrend_renderer.h:34,
                  from ../git/src/vrend_renderer.c:49:
../git/src/virgl_gbm.h:28:10: fatal error: gbm.h: No such file or directory
    28 | #include <gbm.h>
       |          ^~~~~~~
compilation terminated.
[5/15] aarch64-overc-linux-gcc -march=armv8-a+crc 
--sysroot=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot 
-Isrc/libvirgl.a.p -Isrc -I../git/src -I../git/src/gallium/include 
-I../git/src/gallium/auxiliary -I../git/src/gallium/auxiliary/util -I. 
-I../git 
-I/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot/usr/include/libdrm 
-fdiagnostics-color=always -DNDEBUG -pipe -D_FILE_OFFSET_BITS=64 
-std=gnu11 -DHAVE_CONFIG_H=1 -D_GNU_SOURCE=1 
-Werror=implicit-function-declaration -Werror=missing-prototypes 
-Wmissing-prototypes -Werror=int-to-pointer-cast -fvisibility=hidden -O2 
-g -feliminate-unused-debug-types 
-fmacro-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0 
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0 
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot= 
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot-native= 
-fPIC -pthread -MD -MQ src/libvirgl.a.p/vrend_blitter.c.o -MF 
src/libvirgl.a.p/vrend_blitter.c.o.d -o 
src/libvirgl.a.p/vrend_blitter.c.o -c ../git/src/vrend_blitter.c
FAILED: src/libvirgl.a.p/vrend_blitter.c.o
aarch64-overc-linux-gcc -march=armv8-a+crc 
--sysroot=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot 
-Isrc/libvirgl.a.p -Isrc -I../git/src -I../git/src/gallium/include 
-I../git/src/gallium/auxiliary -I../git/src/gallium/auxiliary/util -I. 
-I../git 
-I/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot/usr/include/libdrm 
-fdiagnostics-color=always -DNDEBUG -pipe -D_FILE_OFFSET_BITS=64 
-std=gnu11 -DHAVE_CONFIG_H=1 -D_GNU_SOURCE=1 
-Werror=implicit-function-declaration -Werror=missing-prototypes 
-Wmissing-prototypes -Werror=int-to-pointer-cast -fvisibility=hidden -O2 
-g -feliminate-unused-debug-types 
-fmacro-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0 
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0 
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot= 
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot-native= 
-fPIC -pthread -MD -MQ src/libvirgl.a.p/vrend_blitter.c.o -MF 
src/libvirgl.a.p/vrend_blitter.c.o.d -o 
src/libvirgl.a.p/vrend_blitter.c.o -c ../git/src/vrend_blitter.c
In file included from ../git/src/vrend_renderer.h:34,
                  from ../git/src/vrend_blitter.c:48:
../git/src/virgl_gbm.h:28:10: fatal error: gbm.h: No such file or directory
    28 | #include <gbm.h>
       |          ^~~~~~~
compilation terminated.
[6/15] aarch64-overc-linux-gcc -march=armv8-a+crc 
--sysroot=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot 
-Ivtest/virgl_test_server.p -Ivtest -I../git/vtest 
-I../git/src/gallium/include -I../git/src/gallium/auxiliary 
-I../git/src/gallium/auxiliary/util -I. -I../git -Isrc -I../git/src 
-fdiagnostics-color=always -DNDEBUG -pipe -D_FILE_OFFSET_BITS=64 
-std=gnu11 -DHAVE_CONFIG_H=1 -D_GNU_SOURCE=1 
-Werror=implicit-function-declaration -Werror=missing-prototypes 
-Wmissing-prototypes -Werror=int-to-pointer-cast -fvisibility=hidden -O2 
-g -feliminate-unused-debug-types 
-fmacro-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0 
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0 
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot= 
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot-native= 
-MD -MQ vtest/virgl_test_server.p/vtest_server.c.o -MF 
vtest/virgl_test_server.p/vtest_server.c.o.d -o 
vtest/virgl_test_server.p/vtest_server.c.o -c ../git/vtest/vtest_server.c
[7/15] aarch64-overc-linux-gcc -march=armv8-a+crc 
--sysroot=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot 
-Isrc/libvirglrenderer.so.1.4.2.p -Isrc -I../git/src 
-I../git/src/gallium/include -I../git/src/gallium/auxiliary 
-I../git/src/gallium/auxiliary/util -I. -I../git 
-I/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot/usr/include/libdrm 
-fdiagnostics-color=always -DNDEBUG -pipe -D_FILE_OFFSET_BITS=64 
-std=gnu11 -DHAVE_CONFIG_H=1 -D_GNU_SOURCE=1 
-Werror=implicit-function-declaration -Werror=missing-prototypes 
-Wmissing-prototypes -Werror=int-to-pointer-cast -fvisibility=hidden -O2 
-g -feliminate-unused-debug-types 
-fmacro-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0 
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0 
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot= 
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot-native= 
-fPIC -pthread -MD -MQ src/libvirglrenderer.so.1.4.2.p/virglrenderer.c.o 
-MF src/libvirglrenderer.so.1.4.2.p/virglrenderer.c.o.d -o 
src/libvirglrenderer.so.1.4.2.p/virglrenderer.c.o -c 
../git/src/virglrenderer.c
FAILED: src/libvirglrenderer.so.1.4.2.p/virglrenderer.c.o
aarch64-overc-linux-gcc -march=armv8-a+crc 
--sysroot=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot 
-Isrc/libvirglrenderer.so.1.4.2.p -Isrc -I../git/src 
-I../git/src/gallium/include -I../git/src/gallium/auxiliary 
-I../git/src/gallium/auxiliary/util -I. -I../git 
-I/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot/usr/include/libdrm 
-fdiagnostics-color=always -DNDEBUG -pipe -D_FILE_OFFSET_BITS=64 
-std=gnu11 -DHAVE_CONFIG_H=1 -D_GNU_SOURCE=1 
-Werror=implicit-function-declaration -Werror=missing-prototypes 
-Wmissing-prototypes -Werror=int-to-pointer-cast -fvisibility=hidden -O2 
-g -feliminate-unused-debug-types 
-fmacro-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0 
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0 
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot= 
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot-native= 
-fPIC -pthread -MD -MQ src/libvirglrenderer.so.1.4.2.p/virglrenderer.c.o 
-MF src/libvirglrenderer.so.1.4.2.p/virglrenderer.c.o.d -o 
src/libvirglrenderer.so.1.4.2.p/virglrenderer.c.o -c 
../git/src/virglrenderer.c
In file included from ../git/src/vrend_renderer.h:34,
                  from ../git/src/virglrenderer.c:37:
../git/src/virgl_gbm.h:28:10: fatal error: gbm.h: No such file or directory
    28 | #include <gbm.h>
       |          ^~~~~~~
compilation terminated.
[8/15] aarch64-overc-linux-gcc -march=armv8-a+crc 
--sysroot=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot 
-Isrc/libvirgl.a.p -Isrc -I../git/src -I../git/src/gallium/include 
-I../git/src/gallium/auxiliary -I../git/src/gallium/auxiliary/util -I. 
-I../git 
-I/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot/usr/include/libdrm 
-fdiagnostics-color=always -DNDEBUG -pipe -D_FILE_OFFSET_BITS=64 
-std=gnu11 -DHAVE_CONFIG_H=1 -D_GNU_SOURCE=1 
-Werror=implicit-function-declaration -Werror=missing-prototypes 
-Wmissing-prototypes -Werror=int-to-pointer-cast -fvisibility=hidden -O2 
-g -feliminate-unused-debug-types 
-fmacro-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0 
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0 
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot= 
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot-native= 
-fPIC -pthread -MD -MQ src/libvirgl.a.p/vrend_formats.c.o -MF 
src/libvirgl.a.p/vrend_formats.c.o.d -o 
src/libvirgl.a.p/vrend_formats.c.o -c ../git/src/vrend_formats.c
FAILED: src/libvirgl.a.p/vrend_formats.c.o
aarch64-overc-linux-gcc -march=armv8-a+crc 
--sysroot=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot 
-Isrc/libvirgl.a.p -Isrc -I../git/src -I../git/src/gallium/include 
-I../git/src/gallium/auxiliary -I../git/src/gallium/auxiliary/util -I. 
-I../git 
-I/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot/usr/include/libdrm 
-fdiagnostics-color=always -DNDEBUG -pipe -D_FILE_OFFSET_BITS=64 
-std=gnu11 -DHAVE_CONFIG_H=1 -D_GNU_SOURCE=1 
-Werror=implicit-function-declaration -Werror=missing-prototypes 
-Wmissing-prototypes -Werror=int-to-pointer-cast -fvisibility=hidden -O2 
-g -feliminate-unused-debug-types 
-fmacro-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0 
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0 
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot= 
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot-native= 
-fPIC -pthread -MD -MQ src/libvirgl.a.p/vrend_formats.c.o -MF 
src/libvirgl.a.p/vrend_formats.c.o.d -o 
src/libvirgl.a.p/vrend_formats.c.o -c ../git/src/vrend_formats.c
In file included from ../git/src/vrend_renderer.h:34,
                  from ../git/src/vrend_formats.c:26:
../git/src/virgl_gbm.h:28:10: fatal error: gbm.h: No such file or directory
    28 | #include <gbm.h>
       |          ^~~~~~~
compilation terminated.
[9/15] aarch64-overc-linux-gcc -march=armv8-a+crc 
--sysroot=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot 
-Isrc/libvirgl.a.p -Isrc -I../git/src -I../git/src/gallium/include 
-I../git/src/gallium/auxiliary -I../git/src/gallium/auxiliary/util -I. 
-I../git 
-I/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot/usr/include/libdrm 
-fdiagnostics-color=always -DNDEBUG -pipe -D_FILE_OFFSET_BITS=64 
-std=gnu11 -DHAVE_CONFIG_H=1 -D_GNU_SOURCE=1 
-Werror=implicit-function-declaration -Werror=missing-prototypes 
-Wmissing-prototypes -Werror=int-to-pointer-cast -fvisibility=hidden -O2 
-g -feliminate-unused-debug-types 
-fmacro-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0 
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0 
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot= 
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot-native= 
-fPIC -pthread -MD -MQ src/libvirgl.a.p/vrend_decode.c.o -MF 
src/libvirgl.a.p/vrend_decode.c.o.d -o src/libvirgl.a.p/vrend_decode.c.o 
-c ../git/src/vrend_decode.c
FAILED: src/libvirgl.a.p/vrend_decode.c.o
aarch64-overc-linux-gcc -march=armv8-a+crc 
--sysroot=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot 
-Isrc/libvirgl.a.p -Isrc -I../git/src -I../git/src/gallium/include 
-I../git/src/gallium/auxiliary -I../git/src/gallium/auxiliary/util -I. 
-I../git 
-I/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot/usr/include/libdrm 
-fdiagnostics-color=always -DNDEBUG -pipe -D_FILE_OFFSET_BITS=64 
-std=gnu11 -DHAVE_CONFIG_H=1 -D_GNU_SOURCE=1 
-Werror=implicit-function-declaration -Werror=missing-prototypes 
-Wmissing-prototypes -Werror=int-to-pointer-cast -fvisibility=hidden -O2 
-g -feliminate-unused-debug-types 
-fmacro-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0 
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0 
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot= 
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot-native= 
-fPIC -pthread -MD -MQ src/libvirgl.a.p/vrend_decode.c.o -MF 
src/libvirgl.a.p/vrend_decode.c.o.d -o src/libvirgl.a.p/vrend_decode.c.o 
-c ../git/src/vrend_decode.c
In file included from ../git/src/vrend_renderer.h:34,
                  from ../git/src/vrend_decode.c:34:
../git/src/virgl_gbm.h:28:10: fatal error: gbm.h: No such file or directory
    28 | #include <gbm.h>
       |          ^~~~~~~
compilation terminated.
[10/15] aarch64-overc-linux-gcc -march=armv8-a+crc 
--sysroot=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot 
-Isrc/libvirgl.a.p -Isrc -I../git/src -I../git/src/gallium/include 
-I../git/src/gallium/auxiliary -I../git/src/gallium/auxiliary/util -I. 
-I../git 
-I/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot/usr/include/libdrm 
-fdiagnostics-color=always -DNDEBUG -pipe -D_FILE_OFFSET_BITS=64 
-std=gnu11 -DHAVE_CONFIG_H=1 -D_GNU_SOURCE=1 
-Werror=implicit-function-declaration -Werror=missing-prototypes 
-Wmissing-prototypes -Werror=int-to-pointer-cast -fvisibility=hidden -O2 
-g -feliminate-unused-debug-types 
-fmacro-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0 
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0 
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot= 
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot-native= 
-fPIC -pthread -MD -MQ src/libvirgl.a.p/virgl_glx_context.c.o -MF 
src/libvirgl.a.p/virgl_glx_context.c.o.d -o 
src/libvirgl.a.p/virgl_glx_context.c.o -c ../git/src/virgl_glx_context.c
FAILED: src/libvirgl.a.p/virgl_glx_context.c.o
aarch64-overc-linux-gcc -march=armv8-a+crc 
--sysroot=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot 
-Isrc/libvirgl.a.p -Isrc -I../git/src -I../git/src/gallium/include 
-I../git/src/gallium/auxiliary -I../git/src/gallium/auxiliary/util -I. 
-I../git 
-I/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot/usr/include/libdrm 
-fdiagnostics-color=always -DNDEBUG -pipe -D_FILE_OFFSET_BITS=64 
-std=gnu11 -DHAVE_CONFIG_H=1 -D_GNU_SOURCE=1 
-Werror=implicit-function-declaration -Werror=missing-prototypes 
-Wmissing-prototypes -Werror=int-to-pointer-cast -fvisibility=hidden -O2 
-g -feliminate-unused-debug-types 
-fmacro-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0 
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0 
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot= 
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot-native= 
-fPIC -pthread -MD -MQ src/libvirgl.a.p/virgl_glx_context.c.o -MF 
src/libvirgl.a.p/virgl_glx_context.c.o.d -o 
src/libvirgl.a.p/virgl_glx_context.c.o -c ../git/src/virgl_glx_context.c
In file included from ../git/src/vrend_renderer.h:34,
                  from ../git/src/virgl_glx.h:27,
                  from ../git/src/virgl_glx_context.c:32:
../git/src/virgl_gbm.h:28:10: fatal error: gbm.h: No such file or directory
    28 | #include <gbm.h>
       |          ^~~~~~~
compilation terminated.
[11/15] aarch64-overc-linux-gcc -march=armv8-a+crc 
--sysroot=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot 
-Ivtest/virgl_test_server.p -Ivtest -I../git/vtest 
-I../git/src/gallium/include -I../git/src/gallium/auxiliary 
-I../git/src/gallium/auxiliary/util -I. -I../git -Isrc -I../git/src 
-fdiagnostics-color=always -DNDEBUG -pipe -D_FILE_OFFSET_BITS=64 
-std=gnu11 -DHAVE_CONFIG_H=1 -D_GNU_SOURCE=1 
-Werror=implicit-function-declaration -Werror=missing-prototypes 
-Wmissing-prototypes -Werror=int-to-pointer-cast -fvisibility=hidden -O2 
-g -feliminate-unused-debug-types 
-fmacro-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0 
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0=/usr/src/debug/virglrenderer/0.8.2-r0 
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot= 
-fdebug-prefix-map=/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/recipe-sysroot-native= 
-MD -MQ vtest/virgl_test_server.p/vtest_renderer.c.o -MF 
vtest/virgl_test_server.p/vtest_renderer.c.o.d -o 
vtest/virgl_test_server.p/vtest_renderer.c.o -c 
../git/vtest/vtest_renderer.c
ninja: build stopped: subcommand failed.
WARNING: 
/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/temp/run.do_compile.754739:152 
exit 1 from 'ninja -v -j 16'
WARNING: Backtrace (BB generated script):
     #1: meson_do_compile, 
/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/temp/run.do_compile.754739, 
line 152
     #2: do_compile, 
/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/temp/run.do_compile.754739, 
line 147
     #3: main, 
/var/home/dingo/overc/xavier/tmp/work/armv8a-overc-linux/virglrenderer/0.8.2-r0/temp/run.do_compile.754739, 
line 156

Backtrace (metadata-relative locations):
     #1: meson_do_compile, 
/home/dingo/overc/poky/meta/classes/meson.bbclass, line 180
     #2: do_compile, autogenerated, line 2

