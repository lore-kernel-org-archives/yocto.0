Return-Path: <andrei@gherzan.ro>
Received: from mail-pb0-f44.google.com (mail-pb0-f44.google.com
	[209.85.160.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D5C67E006CC
	for <yocto@yoctoproject.org>; Sun, 13 Jan 2013 08:23:28 -0800 (PST)
Received: by mail-pb0-f44.google.com with SMTP id uo1so1747248pbc.17
	for <yocto@yoctoproject.org>; Sun, 13 Jan 2013 08:23:28 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:from:to:cc:subject:date:message-id:x-mailer
	:x-gm-message-state;
	bh=QxJp9hzjgNiw1dF4hoMf454P9QBpxQSvJst6cphrSig=;
	b=j4F58I+MV4MubdzadTOaVbX+Ncx2KjN0PKy6Sndc201Gb6pztfEinfKgEVUfH5ADuT
	BT3gLrsyKifkOkxqM4gM5Kol6ag26InR2C36M+fyUl5TkVLpZPM/TNzuxACwO0dHyNa7
	4H3aKSgzYommdhRynaxGTNtAOlhpNJKNM0NhOdSuH5H65YVPIX8aB23EVGcxAu/Q1bJz
	TVC49+kLpJdxASpjh85bJ2svBE+Y+7md5+7wZ5QpFJ3hlTMvrOPWemdIPKgafIo5Pgzj
	JGaXUJoQAGzkV0My2EcMXTDYQGdqAYoqvNFwmuQTWu+9tv3tLsL7po/L+x+rg6oikqrr
	w0+g==
X-Received: by 10.68.143.162 with SMTP id sf2mr245924678pbb.137.1358094208055; 
	Sun, 13 Jan 2013 08:23:28 -0800 (PST)
Received: from otp-agherzan-l1.wrs.com (5-13-223-33.residential.rdsnet.ro.
	[5.13.223.33])
	by mx.google.com with ESMTPS id wr4sm6537689pbc.72.2013.01.13.08.23.25
	(version=TLSv1.2 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Sun, 13 Jan 2013 08:23:27 -0800 (PST)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Sun, 13 Jan 2013 18:23:14 +0200
Message-Id: <1358094195-23815-1-git-send-email-andrei@gherzan.ro>
X-Mailer: git-send-email 1.7.10.4
X-Gm-Message-State: ALoCoQkwDPN98xffGZNgxcMa3hz2HamiAfz05sEkZ0an5HtsHQGtMxTd/fpn9WU/Uxh/45s0lXfB
Subject: [meta-intel][PATCH 1/2] ffmpeg: Remove package as nobody depends on it anymore
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sun, 13 Jan 2013 16:23:28 -0000

Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
---
 common/recipes-multimedia/ffmpeg/ffmpeg.inc       |  110 ---------------------
 common/recipes-multimedia/ffmpeg/ffmpeg_0.7.12.bb |   44 ---------
 2 files changed, 154 deletions(-)
 delete mode 100644 common/recipes-multimedia/ffmpeg/ffmpeg.inc
 delete mode 100644 common/recipes-multimedia/ffmpeg/ffmpeg_0.7.12.bb

diff --git a/common/recipes-multimedia/ffmpeg/ffmpeg.inc b/common/recipes-multimedia/ffmpeg/ffmpeg.inc
deleted file mode 100644
index 3ce950e..0000000
--- a/common/recipes-multimedia/ffmpeg/ffmpeg.inc
+++ /dev/null
@@ -1,110 +0,0 @@
-DESCRIPTION = "FFmpeg is a complete solution to record, convert and stream audio and video"
-HOMEPAGE = "http://ffmpeg.mplayerhq.hu/"
-AUTHOR = "Fabrice Bellard ffmpeg-devel@mplayerhq.hu"
-SECTION = "libs"
-PRIORITY = "optional"
-LICENSE = "GPLv2+ & LGPLv2.1+"
-
-LICENSE_FLAGS = "commercial"
-
-ARM_INSTRUCTION_SET = "arm"
-
-DEPENDS = "zlib libogg libvorbis libtheora liba52 libva yasm-native"
-
-INC_PR = "r0"
-
-inherit autotools pkgconfig
-
-LEAD_SONAME = "libavcodec.so"
-
-EXTRA_OECONF = "\
-        \
-        --enable-pp \
-        --enable-shared \
-        --enable-pthreads \
-        --enable-gpl \
-        \
-        --cross-prefix=${TARGET_PREFIX} \
-        --disable-debug \
-        --disable-ffserver \
-        --disable-ffplay \
-        \
-"
-
-EXTRA_OECONF_append_powerpc += "--${@['disable-altivec','enable-altivec'][bb.data.getVar('BASE_PACKAGE_ARCH',d,1) in ['ppce600']]}"
-
-FFMPEG_LIBS = "libavcodec libavdevice libavformat \
-               libavutil libpostproc libswscale libavfilter"
-
-SYSROOT_PREPROCESS_FUNCS = " \
-  ffmpeg_stage_cleanup \
-  ffmpeg_create_compat_links"
-
-ffmpeg_create_compat_links() {
-        rm -rf ${SYSROOT_DESTDIR}${includedir}/ffmpeg
-        mkdir -m 0755 ${SYSROOT_DESTDIR}${includedir}/ffmpeg
-        cd ${SYSROOT_DESTDIR}${includedir}/ffmpeg
-
-        for lib in ${FFMPEG_LIBS}; do
-                ln -s ../$lib/*.h '.' || true
-        done
-}
-
-ffmpeg_stage_cleanup() {
-        rm -rf ${SYSROOT_DESTDIR}${libdir}/vhook \
-        ${SYSROOT_DESTDIR}${datadir}
-}
-
-PACKAGES += "${PN}-vhook-dbg ${PN}-vhook"
-
-FILES_${PN} = "${bindir}"
-FILES_${PN}-dev = "${includedir}/${PN}"
-
-FILES_${PN}-vhook = "${libdir}/vhook"
-FILES_${PN}-vhook-dbg += "${libdir}/vhook/.debug"
-
-PACKAGES += "ffmpeg-x264-presets \
-             libavcodec  libavcodec-dev  libavcodec-dbg \
-             libavdevice libavdevice-dev libavdevice-dbg \
-             libavformat libavformat-dev libavformat-dbg \
-             libavutil   libavutil-dev   libavutil-dbg \
-             libpostproc libpostproc-dev libpostproc-dbg \
-             libswscale  libswscale-dev  libswscale-dbg \
-             libavfilter libavfilter-dev libavfilter-dbg \
-             libavcore   libavcore-dev   libavcore-dbg \
-            "
-
-FILES_ffmpeg-x264-presets = "${datadir}/*.ffpreset"
-
-FILES_${PN}-dev = "${includedir}"
-FILES_libavcodec = "${libdir}/libavcodec*.so.*"
-FILES_libavcodec-dev = "${libdir}/libavcodec*.so ${libdir}/pkgconfig/libavcodec.pc ${libdir}/libavcodec*.a"
-FILES_libavcodec-dbg += "${libdir}/.debug/libavcodec*"
-
-FILES_libavdevice = "${libdir}/libavdevice*.so.*"
-FILES_libavdevice-dev = "${libdir}/libavdevice*.so ${libdir}/pkgconfig/libavdevice.pc ${libdir}/libavdevice*.a"
-FILES_libavdevice-dbg += "${libdir}/.debug/libavdevice*"
-
-FILES_libavformat = "${libdir}/libavformat*.so.*"
-FILES_libavformat-dev = "${libdir}/libavformat*.so ${libdir}/pkgconfig/libavformat.pc ${libdir}/libavformat*.a"
-FILES_libavformat-dbg += "${libdir}/.debug/libavformat*"
-
-FILES_libavutil = "${libdir}/libavutil*.so.*"
-FILES_libavutil-dev = "${libdir}/libavutil*.so ${libdir}/pkgconfig/libavutil.pc ${libdir}/libavutil*.a"
-FILES_libavutil-dbg += "${libdir}/.debug/libavutil*"
-
-FILES_libpostproc = "${libdir}/libpostproc*.so.*"
-FILES_libpostproc-dev = "${libdir}/libpostproc*.so  ${libdir}/pkgconfig/libpostproc.pc ${libdir}/libpostproc*.a ${includedir}/postproc"
-FILES_libpostproc-dbg += "${libdir}/.debug/libpostproc*"
-
-FILES_libswscale = "${libdir}/libswscale*.so.*"
-FILES_libswscale-dev = "${libdir}/libswscale*.so ${libdir}/pkgconfig/libswscale.pc ${libdir}/libswscale*.a"
-FILES_libswscale-dbg += "${libdir}/.debug/libswscale*"
-
-FILES_libavfilter = "${libdir}/libavfilter*.so.*"
-FILES_libavfilter-dev = "${libdir}/libavfilter*.so ${libdir}/pkgconfig/libavfilter.pc ${libdir}/libavfilter*.a"
-FILES_libavfilter-dbg += "${libdir}/.debug/libavfilter*"
-
-FILES_libavcore = "${libdir}/libavcore*.so.*"
-FILES_libavcore-dev = "${libdir}/libavcore*.so ${libdir}/pkgconfig/libavcore.pc ${libdir}/libavcore*.a"
-FILES_libavcore-dbg += "${libdir}/.debug/libavcore*"
diff --git a/common/recipes-multimedia/ffmpeg/ffmpeg_0.7.12.bb b/common/recipes-multimedia/ffmpeg/ffmpeg_0.7.12.bb
deleted file mode 100644
index cf97a19..0000000
--- a/common/recipes-multimedia/ffmpeg/ffmpeg_0.7.12.bb
+++ /dev/null
@@ -1,44 +0,0 @@
-require ffmpeg.inc
-
-LICENSE = "LGPLv2.1+ & GPLv2+"
-PR = "${INC_PR}.2"
-
-SRC_URI = "http://ffmpeg.org/releases/ffmpeg-${PV}.tar.bz2"
-SRC_URI[md5sum] = "b4e3653b2dd930cfa2a80722f8b03182"
-SRC_URI[sha256sum] = "786511d75e5a1f95ec16ed9f0b4a3f49f145e134b8f2ccdfa9ecd2d35ff36000"
-
-LIC_FILES_CHKSUM = "file://COPYING.GPLv2;md5=b234ee4d69f5fce4486a80fdaf4a4263 \
-                    file://libpostproc/postprocess.c;beginline=8;endline=21;md5=3163771dd725805aeda961a4e05173b5 \
-                    file://COPYING.LGPLv2.1;md5=e344c8fa836c3a41c4cbd79d7bd3a379 \
-                    file://ffmpeg.c;beginline=7;endline=20;md5=9dee9cc51a9da6c3254d39ebf4d5aa03"
-
-EXTRA_FFCONF_armv7a = "--cpu=cortex-a8"
-EXTRA_FFCONF_mipsel = "--arch=mips"
-
-EXTRA_OECONF = " \
-        --arch=${TARGET_ARCH} \
-        --cross-prefix=${TARGET_PREFIX} \
-        --disable-stripping \
-        --enable-cross-compile \
-        --enable-libtheora  \
-        --enable-libvorbis \
-        --enable-pthreads \
-        --enable-shared \
-        --enable-swscale \
-        --enable-vaapi \
-        --enable-gpl \
-        --enable-yasm \
-        --extra-cflags="${TARGET_CFLAGS} ${HOST_CC_ARCH}${TOOLCHAIN_OPTIONS}" \
-        --extra-ldflags="${TARGET_LDFLAGS}" \
-        --sysroot="${STAGING_DIR_TARGET}" \
-        --prefix=${prefix}/ \
-        --target-os=linux \
-        ${EXTRA_FFCONF} \
-"
-
-do_configure() {
-        ./configure ${EXTRA_OECONF}
-}
-
-FULL_OPTIMIZATION_armv7a = "-fexpensive-optimizations  -ftree-vectorize -fomit-frame-pointer -O4 -ffast-math"
-BUILD_OPTIMIZATION = "${FULL_OPTIMIZATION}"
-- 
1.7.10.4


