Return-Path: <tom.zanussi@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 79A5BE01415
	for <yocto@yoctoproject.org>; Fri, 25 May 2012 14:50:20 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 25 May 2012 14:50:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="144781995"
Received: from unknown (HELO localhost) ([10.255.12.14])
	by orsmga001.jf.intel.com with ESMTP; 25 May 2012 14:50:19 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Fri, 25 May 2012 16:50:30 -0500
Message-Id: <44a58b7b740ebd75649f6bc3c975011a5ca72b79.1337981719.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <a5a4b657ee72340fc000206e5f8208a8bfbdad1a.1337981719.git.tom.zanussi@intel.com>
References: <a5a4b657ee72340fc000206e5f8208a8bfbdad1a.1337981719.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1337981713.git.tom.zanussi@intel.com>
References: <cover.1337981713.git.tom.zanussi@intel.com>
Subject: [PATCH 05/22] ffmpeg: new recipe
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
X-List-Received-Date: Fri, 25 May 2012 21:50:20 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

This is a modified version of the ffmpeg recipe from oe-classic
(git://git.openembedded.org/openembedded), updated to ffmpeg-0.7.12,
along with some changes take from meta-demo
(git://git.yoctoproject.org/meta-demo).

The starting point ffmpeg recipe taken from oe-classic version was
ffmpeg_0.6.1.bb:

    commit 5316c5b1416391f15277ce867489e525b7eccd6e
    Author: Andreas Oberritter <obi@opendreambox.org>
    Date:   Wed Dec 8 22:08:40 2010 +0000

        ffmpeg: add recipe for 0.6.1 (LGPLv2.1+)

        Signed-off-by: Andreas Oberritter <obi@opendreambox.org>
        Signed-off-by: Khem Raj <raj.khem@gmail.com>

The starting point ffmpeg.inc taken from oe-classic corresponds to the
starting commit:

    commit 709c4d66e0b107ca606941b988bad717c0b45d9b
    Author: Denys Dmytriyenko <denis@denix.org>
    Date:   Tue Mar 17 14:32:59 2009 -0400

        rename packages/ to recipes/ per earlier agreement

        See links below for more details:
        http://thread.gmane.org/gmane.comp.handhelds.openembedded/21326
        http://thread.gmane.org/gmane.comp.handhelds.openembedded/21816

        Signed-off-by: Denys Dmytriyenko <denis@denix.org>
        Acked-by: Mike Westerhof <mwester@dls.net>
        Acked-by: Philip Balister <philip@balister.org>
        Acked-by: Khem Raj <raj.khem@gmail.com>
        Acked-by: Marcin Juszkiewicz <hrw@openembedded.org>
        Acked-by: Koen Kooi <koen@openembedded.org>
        Acked-by: Frans Meulenbroeks <fransmeulenbroeks@gmail.com>

up to the following commit:

    commit 18d59f5fad41e4ea05b5d5a8c1588a0bdbdbf815
    Author: Andreas Oberritter <obi@opendreambox.org>
    Date:   Wed Dec 8 22:08:39 2010 +0000

        ffmpeg: set default license to GPLv2+, because --enable-gpl is used.

        * See http://www.ffmpeg.org/legal.html

        Signed-off-by: Andreas Oberritter <obi@opendreambox.org>

The following changes were taken from meta-demo for ffmpeg.inc:

    commit 33513db7658b9c72bb8c6d477c57b2ab62dab669
    Author: Joshua Lock <josh@linux.intel.com>
    Date:   Tue Jan 25 18:00:00 2011 +0000

        ffmpeg: Fix some path references that broke with latest master of poky

        Signed-off-by: Joshua Lock <josh@linux.intel.com>

    commit ef61afc110ee4444a1c893290079f11c96e0d560
    Author: Joshua Lock <josh@linux.intel.com>
    Date:   Tue Mar 1 17:10:20 2011 +0000

        ffmpeg: fix header installation

        Change merged from OpenEmbedded

        Signed-off-by: Joshua Lock <josh@linux.intel.com>

    commit cae78e5c49423e9ce967f05a5a7c46920ca0cd6b
    Author: Darren Hart <dvhart@linux.intel.com>
    Date:   Wed Nov 10 14:41:24 2010 -0800

        License audit for meta-demo layer

        Correct .bb and .inc files to include the proper LICENSE and LIC_FILES_CHKSUM
        variables. Note that in most cases the "(at your option) a later version" clause
        to the L?GPL is contained in a source file, not COPYING. In those case, add a
        more or less core source file to the LIC_FILES_CHKSUM list.

        Signed-off-by: Darren Hart <dvhart@linux.intel.com>
        Acked-by: Saul Wold <sgw@linux.intel.com>

To get the latest bug and security fixes:

- updated to ffmpeg-0.7.12

Some additional changes were made to simplify and remove components
that weren't strictly necessary for current needs:

- removed shroedinger and libgsm dependencies
- removed faac faad2 lame dependencies
- removed --libgsm, --libmp3lame, --libschroedinger
- removed RSUGGESTS mplayer

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 common/recipes-multimedia/ffmpeg/ffmpeg.inc       |  108 +++++++++++++++++++++
 common/recipes-multimedia/ffmpeg/ffmpeg_0.7.12.bb |   41 ++++++++
 2 files changed, 149 insertions(+), 0 deletions(-)
 create mode 100644 common/recipes-multimedia/ffmpeg/ffmpeg.inc
 create mode 100644 common/recipes-multimedia/ffmpeg/ffmpeg_0.7.12.bb

diff --git a/common/recipes-multimedia/ffmpeg/ffmpeg.inc b/common/recipes-multimedia/ffmpeg/ffmpeg.inc
new file mode 100644
index 0000000..fc8b854
--- /dev/null
+++ b/common/recipes-multimedia/ffmpeg/ffmpeg.inc
@@ -0,0 +1,108 @@
+DESCRIPTION = "FFmpeg is a complete solution to record, convert and stream audio and video"
+HOMEPAGE = "http://ffmpeg.mplayerhq.hu/"
+AUTHOR = "Fabrice Bellard ffmpeg-devel@mplayerhq.hu"
+SECTION = "libs"
+PRIORITY = "optional"
+LICENSE = "GPLv2+ & LGPLv2.1+"
+
+ARM_INSTRUCTION_SET = "arm"
+
+DEPENDS = "zlib libogg libvorbis libtheora liba52"
+
+INC_PR = "r0"
+
+inherit autotools pkgconfig
+
+LEAD_SONAME = "libavcodec.so"
+
+EXTRA_OECONF = "\
+        \
+        --enable-pp \
+        --enable-shared \
+        --enable-pthreads \
+        --enable-gpl \
+        \
+        --cross-prefix=${TARGET_PREFIX} \
+        --disable-debug \
+        --disable-ffserver \
+        --disable-ffplay \
+        \
+"
+
+EXTRA_OECONF_append_powerpc += "--${@['disable-altivec','enable-altivec'][bb.data.getVar('BASE_PACKAGE_ARCH',d,1) in ['ppce600']]}"
+
+FFMPEG_LIBS = "libavcodec libavdevice libavformat \
+               libavutil libpostproc libswscale libavfilter"
+
+SYSROOT_PREPROCESS_FUNCS = " \
+  ffmpeg_stage_cleanup \
+  ffmpeg_create_compat_links"
+
+ffmpeg_create_compat_links() {
+        rm -rf ${SYSROOT_DESTDIR}${includedir}/ffmpeg
+        mkdir -m 0755 ${SYSROOT_DESTDIR}${includedir}/ffmpeg
+        cd ${SYSROOT_DESTDIR}${includedir}/ffmpeg
+
+        for lib in ${FFMPEG_LIBS}; do
+                ln -s ../$lib/*.h '.' || true
+        done
+}
+
+ffmpeg_stage_cleanup() {
+        rm -rf ${SYSROOT_DESTDIR}${libdir}/vhook \
+        ${SYSROOT_DESTDIR}${datadir}
+}
+
+PACKAGES += "${PN}-vhook-dbg ${PN}-vhook"
+
+FILES_${PN} = "${bindir}"
+FILES_${PN}-dev = "${includedir}/${PN}"
+
+FILES_${PN}-vhook = "${libdir}/vhook"
+FILES_${PN}-vhook-dbg += "${libdir}/vhook/.debug"
+
+PACKAGES += "ffmpeg-x264-presets \
+             libavcodec  libavcodec-dev  libavcodec-dbg \
+             libavdevice libavdevice-dev libavdevice-dbg \
+             libavformat libavformat-dev libavformat-dbg \
+             libavutil   libavutil-dev   libavutil-dbg \
+             libpostproc libpostproc-dev libpostproc-dbg \
+             libswscale  libswscale-dev  libswscale-dbg \
+             libavfilter libavfilter-dev libavfilter-dbg \
+             libavcore   libavcore-dev   libavcore-dbg \
+            "
+
+FILES_ffmpeg-x264-presets = "${datadir}/*.ffpreset"
+
+FILES_${PN}-dev = "${includedir}"
+FILES_libavcodec = "${libdir}/libavcodec*.so.*"
+FILES_libavcodec-dev = "${libdir}/libavcodec*.so ${libdir}/pkgconfig/libavcodec.pc ${libdir}/libavcodec*.a"
+FILES_libavcodec-dbg += "${libdir}/.debug/libavcodec*"
+
+FILES_libavdevice = "${libdir}/libavdevice*.so.*"
+FILES_libavdevice-dev = "${libdir}/libavdevice*.so ${libdir}/pkgconfig/libavdevice.pc ${libdir}/libavdevice*.a"
+FILES_libavdevice-dbg += "${libdir}/.debug/libavdevice*"
+
+FILES_libavformat = "${libdir}/libavformat*.so.*"
+FILES_libavformat-dev = "${libdir}/libavformat*.so ${libdir}/pkgconfig/libavformat.pc ${libdir}/libavformat*.a"
+FILES_libavformat-dbg += "${libdir}/.debug/libavformat*"
+
+FILES_libavutil = "${libdir}/libavutil*.so.*"
+FILES_libavutil-dev = "${libdir}/libavutil*.so ${libdir}/pkgconfig/libavutil.pc ${libdir}/libavutil*.a"
+FILES_libavutil-dbg += "${libdir}/.debug/libavutil*"
+
+FILES_libpostproc = "${libdir}/libpostproc*.so.*"
+FILES_libpostproc-dev = "${libdir}/libpostproc*.so  ${libdir}/pkgconfig/libpostproc.pc ${libdir}/libpostproc*.a ${includedir}/postproc"
+FILES_libpostproc-dbg += "${libdir}/.debug/libpostproc*"
+
+FILES_libswscale = "${libdir}/libswscale*.so.*"
+FILES_libswscale-dev = "${libdir}/libswscale*.so ${libdir}/pkgconfig/libswscale.pc ${libdir}/libswscale*.a"
+FILES_libswscale-dbg += "${libdir}/.debug/libswscale*"
+
+FILES_libavfilter = "${libdir}/libavfilter*.so.*"
+FILES_libavfilter-dev = "${libdir}/libavfilter*.so ${libdir}/pkgconfig/libavfilter.pc ${libdir}/libavfilter*.a"
+FILES_libavfilter-dbg += "${libdir}/.debug/libavfilter*"
+
+FILES_libavcore = "${libdir}/libavcore*.so.*"
+FILES_libavcore-dev = "${libdir}/libavcore*.so ${libdir}/pkgconfig/libavcore.pc ${libdir}/libavcore*.a"
+FILES_libavcore-dbg += "${libdir}/.debug/libavcore*"
diff --git a/common/recipes-multimedia/ffmpeg/ffmpeg_0.7.12.bb b/common/recipes-multimedia/ffmpeg/ffmpeg_0.7.12.bb
new file mode 100644
index 0000000..023c25f
--- /dev/null
+++ b/common/recipes-multimedia/ffmpeg/ffmpeg_0.7.12.bb
@@ -0,0 +1,41 @@
+require ffmpeg.inc
+
+LICENSE = "LGPLv2.1+ & GPLv2+"
+PR = "${INC_PR}.1"
+
+SRC_URI = "http://ffmpeg.org/releases/ffmpeg-${PV}.tar.bz2"
+SRC_URI[md5sum] = "e4d0c32c0a7cc763922ee8c34e688b5a"
+SRC_URI[sha256sum] = "4d383af2614fd55ab9e11ab3d5366b9a1453a4e4edf0ac2a1b1411927d577249"
+
+LIC_FILES_CHKSUM = "file://COPYING.GPLv2;md5=b234ee4d69f5fce4486a80fdaf4a4263 \
+                    file://libpostproc/postprocess.c;beginline=8;endline=21;md5=3163771dd725805aeda961a4e05173b5 \
+                    file://COPYING.LGPLv2.1;md5=e344c8fa836c3a41c4cbd79d7bd3a379 \
+                    file://ffmpeg.c;beginline=7;endline=20;md5=9dee9cc51a9da6c3254d39ebf4d5aa03"
+
+EXTRA_FFCONF_armv7a = "--cpu=cortex-a8"
+EXTRA_FFCONF_mipsel = "--arch=mips"
+
+EXTRA_OECONF = " \
+        --arch=${TARGET_ARCH} \
+        --cross-prefix=${TARGET_PREFIX} \
+        --disable-stripping \
+        --enable-cross-compile \
+        --enable-libtheora  \
+        --enable-libvorbis \
+        --enable-pthreads \
+        --enable-shared \
+        --enable-swscale \
+        --extra-cflags="${TARGET_CFLAGS} ${HOST_CC_ARCH}${TOOLCHAIN_OPTIONS}" \
+        --extra-ldflags="${TARGET_LDFLAGS}" \
+        --sysroot="${STAGING_DIR_TARGET}" \
+        --prefix=${prefix}/ \
+        --target-os=linux \
+        ${EXTRA_FFCONF} \
+"
+
+do_configure() {
+        ./configure ${EXTRA_OECONF}
+}
+
+FULL_OPTIMIZATION_armv7a = "-fexpensive-optimizations  -ftree-vectorize -fomit-frame-pointer -O4 -ffast-math"
+BUILD_OPTIMIZATION = "${FULL_OPTIMIZATION}"
-- 
1.7.0.4


