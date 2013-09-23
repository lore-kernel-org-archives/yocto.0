Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8F2A9E0161F
	for <yocto@yoctoproject.org>; Mon, 23 Sep 2013 06:07:24 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga102.jf.intel.com with ESMTP; 23 Sep 2013 06:04:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.90,962,1371106800"; d="scan'208";a="399711506"
Received: from unknown (HELO helios.ger.corp.intel.com) ([10.252.120.20])
	by fmsmga001.fm.intel.com with ESMTP; 23 Sep 2013 06:07:21 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Mon, 23 Sep 2013 14:07:02 +0100
Message-Id: <c9062a1ba1c7ba60f8c8a8aa69e2040ef65ec117.1379941403.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.8.1.2
In-Reply-To: <cover.1379941403.git.paul.eggleton@linux.intel.com>
References: <cover.1379941403.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1379941403.git.paul.eggleton@linux.intel.com>
References: <cover.1379941403.git.paul.eggleton@linux.intel.com>
Subject: [meta-baryon][PATCH 3/4] ffmpeg: remove
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 23 Sep 2013 13:07:24 -0000

We now use libav provided as part of OE-Core instead.

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 recipes-multimedia/ffmpeg/ffmpeg.inc      | 114 ------------------------------
 recipes-multimedia/ffmpeg/ffmpeg_0.6.1.bb |  44 ------------
 2 files changed, 158 deletions(-)
 delete mode 100644 recipes-multimedia/ffmpeg/ffmpeg.inc
 delete mode 100644 recipes-multimedia/ffmpeg/ffmpeg_0.6.1.bb

diff --git a/recipes-multimedia/ffmpeg/ffmpeg.inc b/recipes-multimedia/ffmpeg/ffmpeg.inc
deleted file mode 100644
index 578963c..0000000
--- a/recipes-multimedia/ffmpeg/ffmpeg.inc
+++ /dev/null
@@ -1,114 +0,0 @@
-DESCRIPTION = "FFmpeg is a complete solution to record, convert and stream audio and video"
-HOMEPAGE = "http://ffmpeg.mplayerhq.hu/"
-AUTHOR = "Fabrice Bellard ffmpeg-devel@mplayerhq.hu"
-SECTION = "libs"
-LICENSE = "GPLv2+ & LGPLv2.1+"
-
-LICENSE_FLAGS = "commercial"
-
-ARM_INSTRUCTION_SET = "arm"
-
-PE = "2"
-
-DEPENDS = "zlib libogg libvorbis libtheora faac faad2 ${@base_conditional('ENTERPRISE_DISTRO', '1', '', 'lame liba52', d)}"
-RSUGGESTS_${PN} = "mplayer"
-
-INC_PR = "r17"
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
-
-PACKAGES += "${PN}-vhook-dbg ${PN}-vhook"
-
-FILES_${PN} = "${bindir}"
-FILES_${PN}-dev = "${includedir}/${PN}"
-
-FILES_${PN}-vhook = "${libdir}/vhook"
-FILES_${PN}-vhook-dbg += "${libdir}/vhook/.debug"
-
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
diff --git a/recipes-multimedia/ffmpeg/ffmpeg_0.6.1.bb b/recipes-multimedia/ffmpeg/ffmpeg_0.6.1.bb
deleted file mode 100644
index a715ad7..0000000
--- a/recipes-multimedia/ffmpeg/ffmpeg_0.6.1.bb
+++ /dev/null
@@ -1,44 +0,0 @@
-require ffmpeg.inc
-
-LICENSE = "LGPLv2.1+ & GPLv2+"
-DEPENDS += "schroedinger libgsm"
-PR = "${INC_PR}.2"
-
-SRC_URI = "http://ffmpeg.org/releases/ffmpeg-${PV}.tar.bz2"
-SRC_URI[md5sum] = "4f5d732d25eedfb072251b5314ba2093"
-SRC_URI[sha256sum] = "e348aa6d0bb199f231aa3a48e8f457f037c763219bccc8b395e007ccd87ebd5f"
-LIC_FILES_CHKSUM = "file://COPYING.GPLv2;md5=b234ee4d69f5fce4486a80fdaf4a4263 \
-                    file://libpostproc/postprocess.c;beginline=8;endline=21;md5=3163771dd725805aeda961a4e05173b5 \
-                    file://COPYING.LGPLv2.1;md5=e344c8fa836c3a41c4cbd79d7bd3a379 \
-		    file://ffmpeg.c;beginline=7;endline=20;md5=9dee9cc51a9da6c3254d39ebf4d5aa03"
-
-EXTRA_FFCONF_armv7a = "--cpu=cortex-a8"
-EXTRA_FFCONF_mipsel = "--arch=mips"
-
-EXTRA_OECONF = " \
-        --arch=${TARGET_ARCH} \
-        --cross-prefix=${TARGET_PREFIX} \
-        --disable-stripping \
-        --enable-cross-compile \
-        --enable-libgsm \
-        --enable-libmp3lame \
-        --enable-libschroedinger \
-        --enable-libtheora  \
-        --enable-libvorbis \
-        --enable-pthreads \
-        --enable-shared \
-        --enable-swscale \
-		--enable-pic \
-        --extra-cflags="${TARGET_CFLAGS} ${HOST_CC_ARCH}${TOOLCHAIN_OPTIONS}" \
-        --extra-ldflags="${TARGET_LDFLAGS} ${HOST_CC_ARCH}${TOOLCHAIN_OPTIONS}" \
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
1.8.1.2


