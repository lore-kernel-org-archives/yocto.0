Return-Path: <tom.zanussi@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7AE6FE006D2
	for <yocto@yoctoproject.org>; Thu, 24 Jan 2013 21:36:48 -0800 (PST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 24 Jan 2013 21:36:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,535,1355126400"; d="scan'208";a="248230189"
Received: from unknown (HELO [10.255.14.235]) ([10.255.14.235])
	by azsmga001.ch.intel.com with ESMTP; 24 Jan 2013 21:36:46 -0800
Message-ID: <1359092206.1544.28.camel@empanada>
From: Tom Zanussi <tom.zanussi@intel.com>
To: Andrei Gherzan <andrei@gherzan.ro>
Date: Thu, 24 Jan 2013 23:36:46 -0600
In-Reply-To: <CAK18fxFNKEToVa0Y20YjhaFj59uxuCfoq6SfvtEqx=73uggOSA@mail.gmail.com>
References: <1358094195-23815-1-git-send-email-andrei@gherzan.ro>
	<CAK18fxFNKEToVa0Y20YjhaFj59uxuCfoq6SfvtEqx=73uggOSA@mail.gmail.com>
X-Mailer: Evolution 3.4.1 (3.4.1-2.fc17) 
Mime-Version: 1.0
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-intel][PATCH 1/2] ffmpeg: Remove package as nobody depends on it anymore
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
X-List-Received-Date: Fri, 25 Jan 2013 05:36:48 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2013-01-24 at 21:10 +0200, Andrei Gherzan wrote:
> Ping
> 

Pulled into meta-intel/master.

Thanks,

Tom

> 
> On Sun, Jan 13, 2013 at 6:23 PM, Andrei Gherzan <andrei@gherzan.ro>
> wrote:
>         Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
>         ---
>          common/recipes-multimedia/ffmpeg/ffmpeg.inc       |  110
>         ---------------------
>          common/recipes-multimedia/ffmpeg/ffmpeg_0.7.12.bb |   44
>         ---------
>          2 files changed, 154 deletions(-)
>          delete mode 100644
>         common/recipes-multimedia/ffmpeg/ffmpeg.inc
>          delete mode 100644
>         common/recipes-multimedia/ffmpeg/ffmpeg_0.7.12.bb
>         
>         diff --git a/common/recipes-multimedia/ffmpeg/ffmpeg.inc
>         b/common/recipes-multimedia/ffmpeg/ffmpeg.inc
>         deleted file mode 100644
>         index 3ce950e..0000000
>         --- a/common/recipes-multimedia/ffmpeg/ffmpeg.inc
>         +++ /dev/null
>         @@ -1,110 +0,0 @@
>         -DESCRIPTION = "FFmpeg is a complete solution to record,
>         convert and stream audio and video"
>         -HOMEPAGE = "http://ffmpeg.mplayerhq.hu/"
>         -AUTHOR = "Fabrice Bellard ffmpeg-devel@mplayerhq.hu"
>         -SECTION = "libs"
>         -PRIORITY = "optional"
>         -LICENSE = "GPLv2+ & LGPLv2.1+"
>         -
>         -LICENSE_FLAGS = "commercial"
>         -
>         -ARM_INSTRUCTION_SET = "arm"
>         -
>         -DEPENDS = "zlib libogg libvorbis libtheora liba52 libva
>         yasm-native"
>         -
>         -INC_PR = "r0"
>         -
>         -inherit autotools pkgconfig
>         -
>         -LEAD_SONAME = "libavcodec.so"
>         -
>         -EXTRA_OECONF = "\
>         -        \
>         -        --enable-pp \
>         -        --enable-shared \
>         -        --enable-pthreads \
>         -        --enable-gpl \
>         -        \
>         -        --cross-prefix=${TARGET_PREFIX} \
>         -        --disable-debug \
>         -        --disable-ffserver \
>         -        --disable-ffplay \
>         -        \
>         -"
>         -
>         -EXTRA_OECONF_append_powerpc +=
>         "--${@['disable-altivec','enable-altivec'][bb.data.getVar('BASE_PACKAGE_ARCH',d,1) in ['ppce600']]}"
>         -
>         -FFMPEG_LIBS = "libavcodec libavdevice libavformat \
>         -               libavutil libpostproc libswscale libavfilter"
>         -
>         -SYSROOT_PREPROCESS_FUNCS = " \
>         -  ffmpeg_stage_cleanup \
>         -  ffmpeg_create_compat_links"
>         -
>         -ffmpeg_create_compat_links() {
>         -        rm -rf ${SYSROOT_DESTDIR}${includedir}/ffmpeg
>         -        mkdir -m 0755 ${SYSROOT_DESTDIR}${includedir}/ffmpeg
>         -        cd ${SYSROOT_DESTDIR}${includedir}/ffmpeg
>         -
>         -        for lib in ${FFMPEG_LIBS}; do
>         -                ln -s ../$lib/*.h '.' || true
>         -        done
>         -}
>         -
>         -ffmpeg_stage_cleanup() {
>         -        rm -rf ${SYSROOT_DESTDIR}${libdir}/vhook \
>         -        ${SYSROOT_DESTDIR}${datadir}
>         -}
>         -
>         -PACKAGES += "${PN}-vhook-dbg ${PN}-vhook"
>         -
>         -FILES_${PN} = "${bindir}"
>         -FILES_${PN}-dev = "${includedir}/${PN}"
>         -
>         -FILES_${PN}-vhook = "${libdir}/vhook"
>         -FILES_${PN}-vhook-dbg += "${libdir}/vhook/.debug"
>         -
>         -PACKAGES += "ffmpeg-x264-presets \
>         -             libavcodec  libavcodec-dev  libavcodec-dbg \
>         -             libavdevice libavdevice-dev libavdevice-dbg \
>         -             libavformat libavformat-dev libavformat-dbg \
>         -             libavutil   libavutil-dev   libavutil-dbg \
>         -             libpostproc libpostproc-dev libpostproc-dbg \
>         -             libswscale  libswscale-dev  libswscale-dbg \
>         -             libavfilter libavfilter-dev libavfilter-dbg \
>         -             libavcore   libavcore-dev   libavcore-dbg \
>         -            "
>         -
>         -FILES_ffmpeg-x264-presets = "${datadir}/*.ffpreset"
>         -
>         -FILES_${PN}-dev = "${includedir}"
>         -FILES_libavcodec = "${libdir}/libavcodec*.so.*"
>         -FILES_libavcodec-dev = "${libdir}/libavcodec*.so
>         ${libdir}/pkgconfig/libavcodec.pc ${libdir}/libavcodec*.a"
>         -FILES_libavcodec-dbg += "${libdir}/.debug/libavcodec*"
>         -
>         -FILES_libavdevice = "${libdir}/libavdevice*.so.*"
>         -FILES_libavdevice-dev = "${libdir}/libavdevice*.so
>         ${libdir}/pkgconfig/libavdevice.pc ${libdir}/libavdevice*.a"
>         -FILES_libavdevice-dbg += "${libdir}/.debug/libavdevice*"
>         -
>         -FILES_libavformat = "${libdir}/libavformat*.so.*"
>         -FILES_libavformat-dev = "${libdir}/libavformat*.so
>         ${libdir}/pkgconfig/libavformat.pc ${libdir}/libavformat*.a"
>         -FILES_libavformat-dbg += "${libdir}/.debug/libavformat*"
>         -
>         -FILES_libavutil = "${libdir}/libavutil*.so.*"
>         -FILES_libavutil-dev = "${libdir}/libavutil*.so
>         ${libdir}/pkgconfig/libavutil.pc ${libdir}/libavutil*.a"
>         -FILES_libavutil-dbg += "${libdir}/.debug/libavutil*"
>         -
>         -FILES_libpostproc = "${libdir}/libpostproc*.so.*"
>         -FILES_libpostproc-dev = "${libdir}/libpostproc*.so
>          ${libdir}/pkgconfig/libpostproc.pc ${libdir}/libpostproc*.a
>         ${includedir}/postproc"
>         -FILES_libpostproc-dbg += "${libdir}/.debug/libpostproc*"
>         -
>         -FILES_libswscale = "${libdir}/libswscale*.so.*"
>         -FILES_libswscale-dev = "${libdir}/libswscale*.so
>         ${libdir}/pkgconfig/libswscale.pc ${libdir}/libswscale*.a"
>         -FILES_libswscale-dbg += "${libdir}/.debug/libswscale*"
>         -
>         -FILES_libavfilter = "${libdir}/libavfilter*.so.*"
>         -FILES_libavfilter-dev = "${libdir}/libavfilter*.so
>         ${libdir}/pkgconfig/libavfilter.pc ${libdir}/libavfilter*.a"
>         -FILES_libavfilter-dbg += "${libdir}/.debug/libavfilter*"
>         -
>         -FILES_libavcore = "${libdir}/libavcore*.so.*"
>         -FILES_libavcore-dev = "${libdir}/libavcore*.so
>         ${libdir}/pkgconfig/libavcore.pc ${libdir}/libavcore*.a"
>         -FILES_libavcore-dbg += "${libdir}/.debug/libavcore*"
>         diff --git a/common/recipes-multimedia/ffmpeg/ffmpeg_0.7.12.bb
>         b/common/recipes-multimedia/ffmpeg/ffmpeg_0.7.12.bb
>         deleted file mode 100644
>         index cf97a19..0000000
>         --- a/common/recipes-multimedia/ffmpeg/ffmpeg_0.7.12.bb
>         +++ /dev/null
>         @@ -1,44 +0,0 @@
>         -require ffmpeg.inc
>         -
>         -LICENSE = "LGPLv2.1+ & GPLv2+"
>         -PR = "${INC_PR}.2"
>         -
>         -SRC_URI = "http://ffmpeg.org/releases/ffmpeg-${PV}.tar.bz2"
>         -SRC_URI[md5sum] = "b4e3653b2dd930cfa2a80722f8b03182"
>         -SRC_URI[sha256sum] =
>         "786511d75e5a1f95ec16ed9f0b4a3f49f145e134b8f2ccdfa9ecd2d35ff36000"
>         -
>         -LIC_FILES_CHKSUM =
>         "file://COPYING.GPLv2;md5=b234ee4d69f5fce4486a80fdaf4a4263 \
>         -
>          file://libpostproc/postprocess.c;beginline=8;endline=21;md5=3163771dd725805aeda961a4e05173b5 \
>         -
>          file://COPYING.LGPLv2.1;md5=e344c8fa836c3a41c4cbd79d7bd3a379
>         \
>         -
>          file://ffmpeg.c;beginline=7;endline=20;md5=9dee9cc51a9da6c3254d39ebf4d5aa03"
>         -
>         -EXTRA_FFCONF_armv7a = "--cpu=cortex-a8"
>         -EXTRA_FFCONF_mipsel = "--arch=mips"
>         -
>         -EXTRA_OECONF = " \
>         -        --arch=${TARGET_ARCH} \
>         -        --cross-prefix=${TARGET_PREFIX} \
>         -        --disable-stripping \
>         -        --enable-cross-compile \
>         -        --enable-libtheora  \
>         -        --enable-libvorbis \
>         -        --enable-pthreads \
>         -        --enable-shared \
>         -        --enable-swscale \
>         -        --enable-vaapi \
>         -        --enable-gpl \
>         -        --enable-yasm \
>         -        --extra-cflags="${TARGET_CFLAGS}
>         ${HOST_CC_ARCH}${TOOLCHAIN_OPTIONS}" \
>         -        --extra-ldflags="${TARGET_LDFLAGS}" \
>         -        --sysroot="${STAGING_DIR_TARGET}" \
>         -        --prefix=${prefix}/ \
>         -        --target-os=linux \
>         -        ${EXTRA_FFCONF} \
>         -"
>         -
>         -do_configure() {
>         -        ./configure ${EXTRA_OECONF}
>         -}
>         -
>         -FULL_OPTIMIZATION_armv7a = "-fexpensive-optimizations
>          -ftree-vectorize -fomit-frame-pointer -O4 -ffast-math"
>         -BUILD_OPTIMIZATION = "${FULL_OPTIMIZATION}"
>         --
>         1.7.10.4
>         
> 
> 
> 
> 
> -- 
> 
> Andrei Gherzan
> m: +40.744.478.414 |  f: +40.31.816.28.12
> 
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



