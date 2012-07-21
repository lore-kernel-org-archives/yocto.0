Return-Path: <elvis.dowson@gmail.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B6F34E003BF
	for <yocto@yoctoproject.org>; Sat, 21 Jul 2012 11:50:40 -0700 (PDT)
Received: by pbbrq8 with SMTP id rq8so9921576pbb.35
	for <yocto@yoctoproject.org>; Sat, 21 Jul 2012 11:50:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:content-type:content-transfer-encoding:subject:date:message-id
	:to:mime-version:x-mailer;
	bh=aODpm2IyVqLm1DfBoD8P8btTfzpuwsmXwh/PYYsDyF8=;
	b=Q/pOghYL0pk6akiHhinKaqAG1QNAJq5FfJlhFjXy/DrykIjHlgQcriPHr44SPnjFfx
	DrNjVo2Cw1DBxwtwDoZH++ZelWQ5CJSsKyezTd2F4SBAHE2IRd49T0rZ+Gugzgzps78L
	Lz9hBDjlt96SrEk7GUEr4f2WxIJJBYyb/qFTq0LfQD7z7LtpuG0CoGfOFaLKCv73wXBB
	x30XG8nZNNmQRu20B9ujp6LCvMyu65uIGUq4Pb12nyO16xDKrvQUES+TRK7pLdxVl/iY
	Vb0jujaQ6BDdnN1R0hyCJF8RCiaFZMmpEPzSbrVJd7RfmsK3rkWuYGHV0e/gx6naYjH3
	f5XA==
Received: by 10.68.135.201 with SMTP id pu9mr23068964pbb.146.1342896640178;
	Sat, 21 Jul 2012 11:50:40 -0700 (PDT)
Received: from [192.168.1.101] ([94.205.108.162])
	by mx.google.com with ESMTPS id hz10sm6464448pbc.32.2012.07.21.11.50.37
	(version=TLSv1/SSLv3 cipher=OTHER);
	Sat, 21 Jul 2012 11:50:39 -0700 (PDT)
From: Elvis Dowson <elvis.dowson@gmail.com>
Date: Sat, 21 Jul 2012 22:50:33 +0400
Message-Id: <CDD20590-77F2-4644-9FD5-E9A58494A86E@gmail.com>
To: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Mime-Version: 1.0 (Apple Message framework v1278)
X-Mailer: Apple Mail (2.1278)
Subject: poky git pull merge failures
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
X-List-Received-Date: Sat, 21 Jul 2012 18:50:40 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Hi,
       I just did an update of all my yocto repositories, and I'm =
getting a whole bunch of failures.=20

Shouldn't someone be testing it, before commit everything publicly to =
the master branch?

/tool/yocto/poky$ git pull
Removing =
scripts/lib/bsp/substrate/target/arch/qemu/recipes-graphics/xorg-xserver/{=
{ if qemuarch =3D=3D "i386" or qemuarch =3D=3D "x86_64": }} =
xserver-xf86-config_0.1.bbappend
Removing meta/recipes-support/sqlite/sqlite3_3.7.10.bb
Removing meta/recipes-support/libsoup/libsoup_2.2.105.bb
Auto-merging meta/recipes-support/libsoup/libsoup-2.4_2.38.1.bb
Removing =
meta/recipes-support/libsoup/libsoup-2.2.105/dprintf_conflict_with_eglibc.=
patch
Auto-merging meta/recipes-support/libpcre/libpcre_8.30.bb
Removing meta/recipes-support/libgdbus/libgdbus_git.bb
Auto-merging meta/recipes-support/gpgme/gpgme_1.3.2.bb
Auto-merging meta/recipes-support/gnutls/libtasn1_2.13.bb
Removing meta/recipes-support/gnutls/gnutls_2.12.17.bb
Auto-merging meta/recipes-support/gnupg/gnupg_2.0.19.bb
Removing meta/recipes-support/gmp/gmp_5.0.4.bb
Auto-merging meta/recipes-support/db/db_5.3.15.bb
Auto-merging meta/recipes-support/curl/curl_7.26.0.bb
Removing meta/recipes-support/curl/curl/noldlibpath.patch
Auto-merging meta/recipes-support/boost/boost_1.50.0.bb
Auto-merging meta/recipes-sato/webkit/webkit-gtk_1.8.1.bb
Removing meta/recipes-sato/webkit/files/update-webkit.sh
Removing meta/recipes-sato/webkit/files/gtk-doc.make
Removing meta/recipes-sato/webkit/files/function-scope.patch
Removing meta/recipes-sato/webkit/files/configure.ac
Removing meta/recipes-sato/webkit/files/autogen.sh
Removing meta/recipes-sato/webkit/files/WebKit.pro
Removing meta/recipes-sato/webkit/files/WebKit.pri
Removing meta/recipes-sato/webkit/files/Makefile.shared
Removing meta/recipes-sato/webkit/files/Makefile
Removing meta/recipes-sato/webkit/files/GNUmakefile.am
Removing meta/recipes-sato/web/web-webkit/make-382.patch
Removing meta/recipes-sato/web/web-webkit/link-with-g++.patch
Auto-merging meta/recipes-sato/puzzles/puzzles_r9561.bb
Auto-merging meta/recipes-sato/eds/evolution-data-server_git.bb
Removing meta/recipes-sato/eds/eds-dbus_2.20.0.bb
Removing meta/recipes-sato/eds/eds-dbus/parallelmake.patch
Removing meta/recipes-sato/eds/eds-dbus/iconv-detect.h
Removing meta/recipes-sato/eds/eds-dbus-2.20.0/oh-contact.patch
Removing meta/recipes-sato/eds/eds-dbus-2.20.0/no_iconv_test.patch
Auto-merging meta/recipes-qt/qt4/qt4-x11-free_4.8.1.bb
Removing meta/recipes-qt/qt4/qt4-x11-free_4.8.0.bb
Removing meta/recipes-qt/qt4/qt4-tools-nativesdk_4.8.0.bb
Removing meta/recipes-qt/qt4/qt4-tools-nativesdk_4.7.4.bb
Removing meta/recipes-qt/qt4/qt4-native_4.8.0.bb
Removing meta/recipes-qt/qt4/qt4-native_4.7.4.bb
Auto-merging meta/recipes-qt/qt4/qt4-embedded_4.8.1.bb
Removing meta/recipes-qt/qt4/qt4-embedded_4.8.0.bb
Auto-merging meta/recipes-qt/qt4/qt-4.8.1.inc
Removing meta/recipes-qt/qt4/qt-4.8.0/linux.conf
Removing meta/recipes-qt/qt4/qt-4.8.0/hack-out-pg2-4.7.0.patch
Removing meta/recipes-qt/qt4/qt-4.8.0/fix-translations.patch
Removing =
meta/recipes-qt/qt4/qt-4.8.0/0001-Added-Openembedded-crossarch-option.patc=
h
Removing meta/recipes-qt/qt4/qt-4.7.4/pulseaudio-config.patch
Removing meta/recipes-qt/qt4/qt-4.7.4/gcc47-fix.patch
Removing meta/recipes-qt/qt4/qt-4.7.4/g++.conf
Removing meta/recipes-qt/qt4/qt-4.7.4/fix-qtbug-20925.patch
Removing meta/recipes-qt/qt4/qt-4.7.4/configure-lflags.patch
Removing meta/recipes-qt/qt4/qt-4.7.4.inc
Auto-merging meta/recipes-multimedia/pulseaudio/pulseaudio_2.0.bb
Auto-merging meta/recipes-multimedia/pulseaudio/libcanberra_0.29.bb
Auto-merging meta/recipes-multimedia/libtiff/tiff_4.0.2.bb
Removing meta/recipes-multimedia/libpng/libpng_1.2.46.bb
Auto-merging meta/recipes-multimedia/lame/lame_3.99.5.bb
Auto-merging =
meta/recipes-multimedia/gstreamer/gst-fluendo-mpegdemux_0.10.70.bb
Auto-merging meta/recipes-multimedia/alsa/alsa-tools_1.0.25.bb
Removing meta/recipes-kernel/module-init-tools/module-init-tools_3.16.bb
Removing meta/recipes-kernel/module-init-tools/module-init-tools.inc
Removing =
meta/recipes-kernel/module-init-tools/module-init-tools-cross_3.16.bb
Removing =
meta/recipes-kernel/module-init-tools/files/modutils_extension.patch
Removing =
meta/recipes-kernel/module-init-tools/files/grab_module_memset.patch
Removing meta/recipes-kernel/module-init-tools/files/disable_man.patch
Auto-merging meta/recipes-kernel/lttng-2.0/lttng2-ust_2.0.2.bb
Auto-merging meta/recipes-kernel/lttng-2.0/lttng-tools_2.0.1.bb
Removing =
meta/recipes-kernel/lttng-2.0/lttng-tools/lttng-tools-fix-compiling-error-=
for-powerpc-arm.patch
Removing meta/recipes-kernel/linux/linux-yocto_2.6.37.bb
Removing meta/recipes-kernel/linux/linux-tools.inc
Auto-merging meta/recipes-graphics/xorg-util/makedepend_1.0.4.bb
Auto-merging meta/recipes-graphics/xorg-proto/xproto_7.0.23.bb
Auto-merging meta/recipes-graphics/xorg-proto/xextproto_7.2.1.bb
Auto-merging meta/recipes-graphics/xorg-proto/xcmiscproto_1.2.2.bb
Auto-merging meta/recipes-graphics/xorg-proto/scrnsaverproto_1.2.2.bb
Auto-merging meta/recipes-graphics/xorg-proto/recordproto_1.14.2.bb
Auto-merging meta/recipes-graphics/xorg-proto/kbproto_1.0.6.bb
Auto-merging meta/recipes-graphics/xorg-proto/fontsproto_2.1.2.bb
Auto-merging meta/recipes-graphics/xorg-proto/bigreqsproto_1.1.2.bb
Auto-merging meta/recipes-graphics/xorg-lib/xtrans_1.2.7.bb
Auto-merging meta/recipes-graphics/xorg-lib/pixman_0.26.2.bb
Auto-merging meta/recipes-graphics/xorg-lib/libxt_1.1.3.bb
Auto-merging meta/recipes-graphics/xorg-lib/libxi_1.6.1.bb
Auto-merging meta/recipes-graphics/xorg-lib/libxft_2.3.1.bb
Auto-merging meta/recipes-graphics/xorg-lib/libx11_1.5.0.bb
Auto-merging meta/recipes-graphics/xorg-lib/libx11-trim_1.5.0.bb
Auto-merging =
meta/recipes-graphics/xorg-lib/libx11-trim-1.5.0/x11_disable_makekeys.patc=
h
Auto-merging meta/recipes-graphics/xorg-lib/libx11-diet_1.5.0.bb
Auto-merging =
meta/recipes-graphics/xorg-lib/libx11-diet-1.5.0/x11_disable_makekeys.patc=
h
Auto-merging =
meta/recipes-graphics/xorg-lib/libx11-diet-1.5.0/X18NCMSstubs.diff
Auto-merging =
meta/recipes-graphics/xorg-lib/libx11-1.5.0/x11_disable_makekeys.patch
Removing =
meta/recipes-graphics/xorg-lib/libx11-1.4.4/0001-Add-_XGetRequest-as-subst=
itute-for-GetReq-GetReqExtr.patch
Auto-merging meta/recipes-graphics/xorg-lib/libpciaccess_0.13.1.bb
Removing =
meta/recipes-graphics/xorg-lib/libpciaccess-0.12.902/fix_deletion_of_last_=
handle.patch
Auto-merging =
meta/recipes-graphics/xorg-driver/xf86-video-vmware_12.0.2.bb
Auto-merging meta/recipes-graphics/xorg-driver/xf86-video-vesa_2.3.1.bb
Auto-merging =
meta/recipes-graphics/xorg-driver/xf86-video-intel_2.19.0.bb
Auto-merging =
meta/recipes-graphics/xorg-driver/xf86-input-vmmouse_12.9.0.bb
Auto-merging =
meta/recipes-graphics/xorg-driver/xf86-input-synaptics_1.6.2.bb
Auto-merging meta/recipes-graphics/xorg-driver/xf86-input-mouse_1.7.2.bb
Auto-merging meta/recipes-graphics/xorg-driver/xf86-input-evdev_2.7.0.bb
Auto-merging meta/recipes-graphics/xorg-app/xmodmap_1.0.7.bb
Auto-merging meta/recipes-graphics/xorg-app/xkbcomp_1.2.4.bb
Removing meta/recipes-graphics/xorg-app/xinput_1.5.3.bb
Auto-merging meta/recipes-graphics/xorg-app/xhost_1.0.5.bb
Auto-merging meta/recipes-graphics/xorg-app/xev/diet-x11.patch
Auto-merging meta/recipes-graphics/xorg-app/xauth_1.0.7.bb
Auto-merging meta/recipes-graphics/xcb/xcb-util_0.3.9.bb
Auto-merging meta/recipes-graphics/xcb/xcb-proto_1.7.1.bb
Auto-merging meta/recipes-graphics/pong-clock/pong-clock_1.0.bb
Auto-merging meta/recipes-graphics/mx/mx_1.4.6.bb
Removing meta/recipes-graphics/mx/files/introspection-m4.patch
Auto-merging meta/recipes-graphics/menu-cache/menu-cache_0.3.3.bb
Auto-merging meta/recipes-graphics/freetype/freetype_2.4.9.bb
Auto-merging meta/recipes-graphics/fontconfig/fontconfig_2.9.0.bb
Auto-merging meta/recipes-graphics/fontconfig/fontconfig-native_2.9.0.bb
Auto-merging =
meta/recipes-graphics/fontconfig/fontconfig-2.9.0/fix-pkgconfig.patch
Auto-merging meta/recipes-graphics/drm/libdrm_2.4.35.bb
Removing meta/recipes-graphics/directfb/directfb_1.4.15.bb
Auto-merging meta/recipes-graphics/directfb/directfb-examples_1.6.0.bb
Auto-merging meta/recipes-graphics/cairo/cairo_1.12.2.bb
Auto-merging meta/recipes-gnome/gnome/gobject-introspection_1.32.1.bb
Auto-merging meta/recipes-extended/xz/xz_5.1.2alpha.bb
Auto-merging meta/recipes-extended/xinetd/xinetd_2.3.15.bb
Auto-merging meta/recipes-extended/tzdata/tzdata_2012c.bb
Removing meta/recipes-extended/sysstat/sysstat_10.0.3.bb
Auto-merging meta/recipes-extended/sudo/sudo_1.8.5p2.bb
Removing meta/recipes-extended/psmisc/psmisc_22.16.bb
Auto-merging meta/recipes-extended/mdadm/mdadm_3.2.5.bb
Auto-merging meta/recipes-extended/mc/mc_4.8.3.bb
Auto-merging meta/recipes-extended/man-pages/man-pages_3.41.bb
Auto-merging meta/recipes-extended/ltp/ltp_20120401.bb
Removing meta/recipes-extended/ltp/ltp/uclibc-getcontext.patch
Auto-merging meta/recipes-extended/lighttpd/lighttpd_1.4.31.bb
Auto-merging meta/recipes-extended/libidn/libidn_1.25.bb
Auto-merging meta/recipes-extended/iptables/iptables_1.4.13.bb
Removing meta/recipes-extended/iptables/iptables/GNUmakefile.patch
Removing meta/recipes-extended/gzip/gzip_1.4.bb
Auto-merging meta/recipes-extended/gawk/gawk_4.0.1.bb
Auto-merging meta/recipes-extended/foomatic/foomatic-filters_4.0.16.bb
Removing meta/recipes-extended/ethtool/ethtool_2.6.36.bb
Auto-merging meta/recipes-extended/cracklib/cracklib_2.8.19.bb
Auto-merging meta/recipes-devtools/strace/strace_4.7.bb
Removing =
meta/recipes-devtools/strace/strace-4.6/strace-4.6_add_x32_support.patch
Removing meta/recipes-devtools/strace/strace-4.6/sigmask.patch
Auto-merging meta/recipes-devtools/rpm/rpm_5.4.9.bb
Removing meta/recipes-devtools/rpm/rpm/rpm-nofsync.patch
Removing meta/recipes-devtools/rpm/rpm/rpm-autoconf.patch
Removing meta/recipes-devtools/rpm/rpm/remove-compiled-tests.patch
Removing meta/recipes-devtools/rpm/rpm/fprint-pointer-fix.patch
Removing meta/recipes-devtools/rpm/rpm/fix_for_automake_1.11.2.patch
Removing meta/recipes-devtools/quilt/quilt_0.51.bb
Auto-merging meta/recipes-devtools/quilt/quilt-0.60.inc
Auto-merging meta/recipes-devtools/qemu/qemu_0.15.1.bb
CONFLICT (content): Merge conflict in =
meta/recipes-devtools/qemu/qemu_0.15.1.bb
Auto-merging meta/recipes-devtools/python/python_2.7.3.bb
CONFLICT (content): Merge conflict in =
meta/recipes-devtools/python/python_2.7.3.bb
Removing =
meta/recipes-devtools/python/python/sys_platform_is_now_always_linux2.patc=
h
Auto-merging meta/recipes-devtools/python/python-native_2.7.3.bb
Auto-merging meta/recipes-devtools/python/python-dbus_1.1.0.bb
Auto-merging meta/recipes-devtools/pseudo/pseudo_git.bb
CONFLICT (content): Merge conflict in =
meta/recipes-devtools/pseudo/pseudo_git.bb
CONFLICT (modify/delete): meta/recipes-devtools/pseudo/pseudo_1.3.bb =
deleted in 15b96762f1862057c16f0a453c77bb1a0688692d and modified in =
HEAD. Version HEAD of meta/recipes-devtools/pseudo/pseudo_1.3.bb left in =
tree.
Auto-merging meta/recipes-devtools/perl/libxml-simple-perl_2.20.bb
Removing meta/recipes-devtools/opkg/opkg-0.1.8/add_vercmp.patch
Removing meta/recipes-devtools/opkg-utils/opkg-utils/shebang.patch
Removing meta/recipes-devtools/opkg-utils/opkg-utils/mtime-int.patch
Removing =
meta/recipes-devtools/opkg-utils/opkg-utils/index-ignore-filenotfound.patc=
h
Removing =
meta/recipes-devtools/opkg-utils/opkg-utils/arfile_header_split.patch
Removing =
meta/recipes-devtools/opkg-utils/opkg-utils/add-license-field.patch
Auto-merging meta/recipes-devtools/opensp/opensp_1.5.2.bb
Removing meta/recipes-devtools/opensp/opensp/rangmap-fix.patch
Removing meta/recipes-devtools/opensp/opensp/m4.patch
Removing meta/recipes-devtools/opensp/opensp/fix-docdir.patch
Removing meta/recipes-devtools/opensp/opensp/attributevalue.patch
Auto-merging meta/recipes-devtools/nasm/nasm_2.10.01.bb
Auto-merging meta/recipes-devtools/mtd/mtd-utils_1.5.0.bb
Auto-merging meta/recipes-devtools/mklibs/mklibs-native_0.1.34.bb
Removing =
meta/recipes-devtools/mklibs/files/include-unistd.h-for-gcc47.patch
Auto-merging meta/recipes-devtools/guile/guile_2.0.5.bb
Removing =
meta/recipes-devtools/guile/files/debian/0003-Include-gc.h-rather-than-gc-=
gc_version.h-in-pthread-.patch
Removing =
meta/recipes-devtools/guile/files/debian/0002-Define-_GNU_SOURCE-to-fix-th=
e-GNU-kFreeBSD-build.patch
Removing =
meta/recipes-devtools/guile/files/debian/0001-Fix-the-SRFI-60-copy-bit-doc=
umentation.patch
Auto-merging meta/recipes-devtools/gdb/gdb-cross-canadian_7.4.1.bb
Auto-merging meta/recipes-devtools/gcc/libgcc_4.7.bb
Removing meta/recipes-devtools/gcc/gcc_csl-arm-2008q1.bb
Auto-merging meta/recipes-devtools/gcc/gcc_4.7.bb
Auto-merging meta/recipes-devtools/gcc/gcc-runtime_4.7.bb
Removing meta/recipes-devtools/gcc/gcc-csl-arm/zecke-xgcc-cpp.patch
Removing =
meta/recipes-devtools/gcc/gcc-csl-arm/zecke-no-host-includes.patch
Removing meta/recipes-devtools/gcc/gcc-csl-arm/gfortran.patch
Removing meta/recipes-devtools/gcc/gcc-csl-arm/gcc_optab_arm.patch
Removing meta/recipes-devtools/gcc/gcc-csl-arm/gcc41-configure.in.patch
Removing meta/recipes-devtools/gcc/gcc-csl-arm/gcc-new-makeinfo.patch
Removing =
meta/recipes-devtools/gcc/gcc-csl-arm/gcc-configure-no-fortran.patch
Removing =
meta/recipes-devtools/gcc/gcc-csl-arm/gcc-3.4.4-makefile-fix.patch
Removing =
meta/recipes-devtools/gcc/gcc-csl-arm/gcc-3.4.4-eabi-bigendian.patch
Removing meta/recipes-devtools/gcc/gcc-csl-arm/arm-softfloat.patch
Removing meta/recipes-devtools/gcc/gcc-csl-arm/arm-nolibfloat.patch
Removing meta/recipes-devtools/gcc/gcc-csl-arm-2008q1.inc
Removing meta/recipes-devtools/gcc/gcc-csl-arm-2005q3.inc
Removing meta/recipes-devtools/gcc/gcc-crosssdk_4.6.bb
Removing meta/recipes-devtools/gcc/gcc-crosssdk-intermediate_4.6.bb
Removing meta/recipes-devtools/gcc/gcc-crosssdk-initial_4.6.bb
Removing meta/recipes-devtools/gcc/gcc-cross_csl-arm-2008q1.bb
Removing meta/recipes-devtools/gcc/gcc-cross_4.6.bb
Removing meta/recipes-devtools/gcc/gcc-cross-kernel.inc
Removing =
meta/recipes-devtools/gcc/gcc-cross-intermediate_csl-arm-2008q1.bb
Removing meta/recipes-devtools/gcc/gcc-cross-intermediate_4.6.bb
Removing meta/recipes-devtools/gcc/gcc-cross-initial_csl-arm-2008q1.bb
Removing meta/recipes-devtools/gcc/gcc-cross-initial_4.6.bb
Auto-merging meta/recipes-devtools/gcc/gcc-cross-canadian_4.7.bb
Auto-merging =
meta/recipes-devtools/gcc/gcc-4.7/use-defaults.h-and-t-oe-in-B.patch
Auto-merging meta/recipes-devtools/gcc/gcc-4.7/pr32219.patch
Auto-merging meta/recipes-devtools/gcc/gcc-4.7/optional_libstdc.patch
Auto-merging =
meta/recipes-devtools/gcc/gcc-4.7/gcc-poison-system-directories.patch
Auto-merging =
meta/recipes-devtools/gcc/gcc-4.7/gcc-poison-dir-extend.patch
Auto-merging =
meta/recipes-devtools/gcc/gcc-4.7/gcc-4.3.3-SYSROOT_CFLAGS_FOR_TARGET.patc=
h
Auto-merging =
meta/recipes-devtools/gcc/gcc-4.7/gcc-4.3.1-ARCH_FLAGS_FOR_TARGET.patch
Auto-merging =
meta/recipes-devtools/gcc/gcc-4.7/fortran-cross-compile-hack.patch
Auto-merging =
meta/recipes-devtools/gcc/gcc-4.7/disable_relax_pic_calls_flag.patch
Auto-merging meta/recipes-devtools/gcc/gcc-4.7/COLLECT_GCC_OPTIONS.patch
Auto-merging meta/recipes-devtools/gcc/gcc-4.7/740-sh-pr24836.patch
Auto-merging meta/recipes-devtools/gcc/gcc-4.7/64bithack.patch
Auto-merging =
meta/recipes-devtools/gcc/gcc-4.7/305-libmudflap-susv3-legacy.patch
Auto-merging =
meta/recipes-devtools/gcc/gcc-4.7/303-c99-complex-ugly-hack.patch
Auto-merging meta/recipes-devtools/gcc/gcc-4.7/200-uclibc-locale.patch
Auto-merging meta/recipes-devtools/gcc/gcc-4.7.inc
Removing meta/recipes-devtools/gcc/gcc-4.6/zecke-xgcc-cpp.patch
Removing meta/recipes-devtools/gcc/gcc-4.6/pr47551.patch
Removing meta/recipes-devtools/gcc/gcc-4.6/pr46934.patch
Removing meta/recipes-devtools/gcc/gcc-4.6/powerpc-e5500.patch
Removing =
meta/recipes-devtools/gcc/gcc-4.6/gcc-with-linker-hash-style.patch
Removing meta/recipes-devtools/gcc/gcc-4.6/gcc-flags-for-build.patch
Removing meta/recipes-devtools/gcc/gcc-4.6/gcc-arm-set-cost.patch
Removing meta/recipes-devtools/gcc/gcc-4.6/fix-for-ice-50099.patch
Removing meta/recipes-devtools/gcc/gcc-4.6/cache-amnesia.patch
Removing meta/recipes-devtools/gcc/gcc-4.6/arm-softfloat.patch
Removing meta/recipes-devtools/gcc/gcc-4.6/arm-nolibfloat.patch
Removing =
meta/recipes-devtools/gcc/gcc-4.6/GPLUSPLUS_INCLUDE_DIR_with_sysroot.patch=

Removing =
meta/recipes-devtools/gcc/gcc-4.6/904-flatten-switch-stmt-00.patch
Removing meta/recipes-devtools/gcc/gcc-4.6/800-arm-bigendian.patch
Removing meta/recipes-devtools/gcc/gcc-4.6/302-c99-snprintf.patch
Removing =
meta/recipes-devtools/gcc/gcc-4.6/103-uclibc-conf-noupstream.patch
Removing meta/recipes-devtools/binutils/binutils_csl-arm-2008q1.bb
Removing meta/recipes-devtools/binutils/binutils-cross_csl-arm-2008q1.bb
Auto-merging meta/recipes-devtools/automake/automake_1.12.1.bb
Removing =
meta/recipes-devtools/automake/automake/automake_1.11.2_fix_for_pkglibexec=
_SCRIPTS.patch
Auto-merging meta/recipes-core/zlib/zlib_1.2.7.bb
Auto-merging meta/recipes-core/util-linux/util-linux_2.21.2.bb
Removing =
meta/recipes-core/util-linux/util-linux-2.21/fix_NL_TIME_FIRST_WEEKDAY.pat=
ch
Removing =
meta/recipes-core/uclibc/uclibc-git/ldso_use_arm_dl_linux_resolve_in_thumb=
_mode.patch
Removing meta/recipes-core/sysvinit/sysvinit/prerm
Removing meta/recipes-core/sysvinit/sysvinit/postinst
Auto-merging meta/recipes-core/netbase/netbase_5.0.bb
Removing meta/recipes-core/netbase/netbase-4.47/init
Auto-merging meta/recipes-core/meta/external-sourcery-toolchain.bb
Removing meta/recipes-core/meta/external-csl-toolchain/SUPPORTED
Removing meta/recipes-core/libxml/libxml2_2.7.8.bb
Removing meta/recipes-core/libxml/libxml2/fix_version_info.patch
Auto-merging meta/recipes-core/jpeg/jpeg_8d.bb
Auto-merging meta/recipes-core/jpeg/jpeg-8d/debian-libjpeg7_7-1.diff
Removing meta/recipes-core/jpeg/jpeg-8c/fix_for_automake_1.11.2.patch
Auto-merging meta/recipes-core/images/build-appliance-image.bb
Removing meta/recipes-core/glib-2.0/glib-2.0_2.30.3.bb
Removing meta/recipes-core/glib-2.0/glib-2.0/no-iconv.patch
Removing meta/recipes-core/glib-2.0/glib-2.0/g_once_init_enter.patch
Removing meta/recipes-core/expat/expat_2.0.1.bb
Auto-merging meta/recipes-core/expat/expat-2.1.0/autotools.patch
Removing meta/recipes-core/eglibc/eglibc_2.13.bb
Auto-merging =
meta/recipes-core/eglibc/eglibc-2.16/use-sysroot-cxx-headers.patch
Removing meta/recipes-core/eglibc/eglibc-2.13/stack-protector-test.patch
Removing =
meta/recipes-core/eglibc/eglibc-2.13/armv4-eabi-compile-fix.patch
Auto-merging meta/recipes-core/eglibc/cross-localedef-native_2.16.bb
Removing meta/recipes-core/eggdbus/eggdbus_0.6.bb
Removing meta/recipes-core/eggdbus/eggdbus/marshal.patch
Removing meta/recipes-core/eggdbus/eggdbus/gtk-doc.patch
Removing meta/recipes-core/dbus/dbus_1.4.16.bb
Removing meta/recipes-core/busybox/busybox-1.19.4/udhcpscript.patch
Removing =
meta/recipes-core/busybox/busybox-1.19.4/udhcpc-fix-nfsroot.patch
Removing =
meta/recipes-connectivity/wpa-supplicant/wpa-supplicant_0.7.3.bb
Auto-merging =
meta/recipes-connectivity/wpa-supplicant/wpa-supplicant-1.0.inc
Removing =
meta/recipes-connectivity/wpa-supplicant/wpa-supplicant-0.7.3/wpa_supplica=
nt_default.conf
Removing =
meta/recipes-connectivity/wpa-supplicant/wpa-supplicant-0.7.3/wpa_supplica=
nt-fix-deprecated-dbus-function.patch
Removing =
meta/recipes-connectivity/wpa-supplicant/wpa-supplicant-0.7.3/wpa_supplica=
nt-0.5.7-always-scan.patch
Removing =
meta/recipes-connectivity/wpa-supplicant/wpa-supplicant-0.7.3/init.sh
Removing =
meta/recipes-connectivity/wpa-supplicant/wpa-supplicant-0.7.3/defconfig
Removing =
meta/recipes-connectivity/wpa-supplicant/wpa-supplicant-0.7.3/defaults-san=
e
Auto-merging =
meta/recipes-connectivity/telepathy/telepathy-mission-control_5.12.0.bb
Auto-merging =
meta/recipes-connectivity/telepathy/telepathy-glib_0.19.2.bb
Auto-merging meta/recipes-connectivity/resolvconf/resolvconf_1.67.bb
Auto-merging meta/recipes-connectivity/openssl/openssl_1.0.0i.bb
Auto-merging =
meta/recipes-connectivity/openssl/openssl-1.0.0i/configure-targets.patch
Auto-merging meta/recipes-connectivity/openssh/openssh_6.0p1.bb
Removing meta/recipes-connectivity/ofono/ofono_1.5.bb
Removing meta/recipes-connectivity/iproute2/iproute2_3.2.0.bb
Removing =
meta/recipes-connectivity/iproute2/iproute2-3.2.0/configure-cross.patch
Removing meta/recipes-connectivity/gsm/libgsmd_svn.bb
Removing meta/recipes-connectivity/gsm/gsmd.inc
Removing =
meta/recipes-connectivity/gsm/files/lgsm_send_fix_return_value.patch
Removing meta/recipes-connectivity/gsm/files/install-ts-headers.patch
Removing meta/recipes-connectivity/gsm/files/gsmd
Removing meta/recipes-connectivity/gsm/files/fix_machine_init.patch
Removing meta/recipes-connectivity/gsm/files/default
Removing =
meta/recipes-connectivity/gsm/files/028_shell-phonebook-find-and-read-rang=
e-support.patch
Removing =
meta/recipes-connectivity/gsm/files/027_phonebook-find-and-read-range-supp=
ort.patch
Removing meta/recipes-connectivity/gsm/files/025_sms-status-report.patch
Removing =
meta/recipes-connectivity/gsm/files/024_sms-text-in-bracket.patch
Removing =
meta/recipes-connectivity/gsm/files/0005-Add-ask-ds-option-forSMS.patch
Removing =
meta/recipes-connectivity/gsm/files/0004-Handle-read-and-write-return-valu=
es.patch
Removing =
meta/recipes-connectivity/gsm/files/0003-Correctly-segment-incoming-usock-=
data-into-packets.patch
Removing =
meta/recipes-connectivity/gsm/files/0002-Flush-all-pending-commands-before=
-restarting-the-mod.patch
Removing meta/recipes-connectivity/gsm/files/0001-Introduce-ports.patch
Removing meta/recipes-connectivity/connman/connman_0.79.bb
Removing =
meta/recipes-connectivity/connman/connman/ethernet_default.patch
Removing =
meta/recipes-connectivity/connman/connman/disable_alg-test.patch
Removing meta/recipes-connectivity/connman/connman-gnome_0.5.bb
Removing =
meta/recipes-connectivity/connman/connman-gnome/0007-connman-gnome-fix-seg=
fault-due-to-unchecked-null-val.patch
Removing =
meta/recipes-connectivity/connman/connman-gnome/0006-Fix-status-descriptio=
ns-in-properties-tree.patch
Removing =
meta/recipes-connectivity/connman/connman-gnome/0005-Remove-all-handling-o=
f-Passphrase-property.patch
Removing =
meta/recipes-connectivity/connman/connman-gnome/0004-Handle-WiFi-authentic=
ation-using-an-agent.patch
Removing =
meta/recipes-connectivity/connman/connman-gnome/0003-Fix-setting-IPv4-conf=
iguration.patch
Removing =
meta/recipes-connectivity/connman/connman-gnome/0002-Update-for-ConnMan-0.=
79-API-changes.patch
Removing =
meta/recipes-connectivity/connman/connman-gnome/0001-Monitor-the-Manager-s=
-State-property.patch
Auto-merging =
meta/recipes-connectivity/bluez/gst-plugin-bluetooth_4.101.bb
Auto-merging meta/recipes-connectivity/bluez/bluez4_4.101.bb
Auto-merging meta/recipes-connectivity/bluez/bluez-hcidump_2.4.bb
Removing meta/lib/oe/process.py
Removing meta/conf/distro/include/distro_tracking_fields.inc
Auto-merging meta/conf/bitbake.conf
Auto-merging meta/classes/sanity.bbclass
CONFLICT (content): Merge conflict in meta/classes/sanity.bbclass
Auto-merging meta/classes/package.bbclass
CONFLICT (content): Merge conflict in meta/classes/package.bbclass
Removing meta-yocto/recipes-kernel/linux/linux-yocto_2.6.37.bbappend
Removing meta-yocto/recipes-core/netbase/netbase_4.47.bbappend
Auto-merging meta-yocto/conf/distro/poky.conf
CONFLICT (content): Merge conflict in meta-yocto/conf/distro/poky.conf
Auto-merging meta-yocto/conf/distro/poky-tiny.conf
Removing meta-demoapps/recipes-support/poppler/poppler_0.9.2.bb
Removing meta-demoapps/recipes-support/poppler/poppler.inc
Removing meta-demoapps/recipes-support/poppler/poppler-fpu.inc
Removing meta-demoapps/recipes-support/poppler/poppler-data_0.1.bb
Removing meta-demoapps/recipes-support/openobex/openobex_1.5.bb
Removing =
meta-demoapps/recipes-support/openobex/files/libusb_crosscompile_check.pat=
ch
Removing =
meta-demoapps/recipes-support/openobex/files/disable-cable-test.patch
Removing meta-demoapps/recipes-support/libfribidi/libfribidi_0.10.4.bb
Removing =
meta-demoapps/recipes-support/libfribidi/files/libtool-update.patch
Removing meta-demoapps/recipes-support/iso-codes/iso-codes_3.3.bb
Removing =
meta-demoapps/recipes-sato/matchbox-themes-gtk/matchbox-themes-gtk.bb
Removing meta-demoapps/recipes-sato/matchbox-themes-gtk/files/gtkrc
Removing =
meta-demoapps/recipes-sato/matchbox-themes-extra/matchbox-themes-extra_git=
.bb
Removing =
meta-demoapps/recipes-sato/matchbox-themes-extra/matchbox-themes-extra_0.3=
.bb
Removing meta-demoapps/recipes-sato/kf/kf_0.5.4.1.bb
Removing meta-demoapps/recipes-sato/kf/files/gcc4.patch
Removing meta-demoapps/recipes-sato/kf/files/fix-desktop-file.patch
Removing meta-demoapps/recipes-sato/kf/files/fix-configure.patch
Removing meta-demoapps/recipes-sato/epdfview/epdfview_0.1.7.bb
Removing meta-demoapps/recipes-sato/epdfview/epdfview_0.1.6.bb
Removing meta-demoapps/recipes-sato/epdfview/epdfview/owl-menus.patch
Removing meta-demoapps/recipes-sato/epdfview/epdfview/epdfview.desktop
Removing meta-demoapps/recipes-sato/epdfview/epdfview/epdfview-ui.xml
Removing =
meta-demoapps/recipes-sato/epdfview/epdfview/epdfview-ui-print.xml
Removing meta-demoapps/recipes-sato/clipboard-manager/files/script.patch
Removing =
meta-demoapps/recipes-sato/clipboard-manager/files/makefile.patch
Removing =
meta-demoapps/recipes-sato/clipboard-manager/files/daemonize.patch
Removing =
meta-demoapps/recipes-sato/clipboard-manager/clipboard-manager_0.6.4.bb
Removing meta-demoapps/recipes-sato/claws-mail/files/streamline-ui.patch
Removing =
meta-demoapps/recipes-sato/claws-mail/files/owl-window-menu.patch
Removing meta-demoapps/recipes-sato/claws-mail/files/fix-build.patch
Removing meta-demoapps/recipes-sato/claws-mail/files/desktop.patch
Removing =
meta-demoapps/recipes-sato/claws-mail/claws-plugin-rssyl_0.13.bb
Removing =
meta-demoapps/recipes-sato/claws-mail/claws-plugin-mailmbox_1.13.bb
Removing =
meta-demoapps/recipes-sato/claws-mail/claws-plugin-maildir_0.24.4.bb
Removing =
meta-demoapps/recipes-sato/claws-mail/claws-plugin-gtkhtml2-viewer_0.15.bb=

Removing meta-demoapps/recipes-sato/claws-mail/claws-mail_2.9.1.bb
Removing meta-demoapps/recipes-sato/claws-mail/claws-mail.inc
Removing meta-demoapps/recipes-graphics/xournal/xournal_0.2.bb
Removing meta-demoapps/recipes-graphics/xournal/files/no-printing.diff
Removing meta-demoapps/recipes-graphics/xournal/files/ldflags.patch
Removing =
meta-demoapps/recipes-graphics/xorg-proto/xproxymanagementprotocol_1.0.3.b=
b
Removing meta-demoapps/recipes-graphics/xorg-lib/libxkbui_1.0.2.bb
Removing meta-demoapps/recipes-graphics/xorg-lib/libxevie_1.0.2.bb
Removing meta-demoapps/recipes-graphics/xorg-lib/libxaw_1.0.5.bb
Removing meta-demoapps/recipes-graphics/xorg-lib/liblbxutil_1.1.0.bb
Removing =
meta-demoapps/recipes-graphics/xorg-lib/liblbxutil/mkg3states.patch
Removing meta-demoapps/recipes-graphics/xorg-app/xrdb_1.0.5.bb
Removing meta-demoapps/recipes-graphics/xorg-app/xrdb/60XDefaults.sh
Removing meta-demoapps/recipes-graphics/xorg-app/xeyes_1.0.1.bb
Removing meta-demoapps/recipes-graphics/xorg-app/xev_1.0.3.bb
Removing meta-demoapps/recipes-graphics/xorg-app/xbacklight_1.1.bb
Removing meta-demoapps/recipes-graphics/libxklavier/libxklavier_3.9.bb
Removing =
meta-demoapps/recipes-graphics/libxklavier/libxklavier/pkgconfigfix.patch
Removing meta-demoapps/recipes-graphics/clutter/tidy_git.bb
Removing =
meta-demoapps/recipes-graphics/clutter/tidy/tidy-enable-tests.patch
Removing meta-demoapps/recipes-graphics/clutter/tidy/autofoo.patch
Removing meta-demoapps/recipes-graphics/clutter/tidy.inc
Removing meta-demoapps/recipes-gnome/wv/wv_1.2.0.bb
Removing meta-demoapps/recipes-gnome/wv/wv-1.2.0/pkgconfig.patch
Removing meta-demoapps/recipes-gnome/libgtkstylus/libgtkstylus_0.5.bb
Removing meta-demoapps/recipes-gnome/libgtkstylus/files/gtkstylus.sh
Removing meta-demoapps/recipes-gnome/libgsf/libgsf_1.14.5.bb
Removing meta-demoapps/recipes-gnome/gnome/libgnomekbd_2.26.0.bb
Removing meta-demoapps/recipes-gnome/gnome/libgnomecanvas_2.20.0.bb
Removing meta-demoapps/recipes-gnome/gnome/gnome-terminal_2.26.3.bb
Removing =
meta-demoapps/recipes-gnome/gnome/gnome-terminal/30f29e7d8e1b67c40cd18a715=
5ba30c4382692d5.patch
Removing =
meta-demoapps/recipes-gnome/gnome/gnome-settings-daemon_2.26.1.bb
Removing =
meta-demoapps/recipes-gnome/gnome/gnome-settings-daemon/mount-plugin.patch=

Removing =
meta-demoapps/recipes-gnome/gnome/gnome-settings-daemon/mojito-cleanup.pat=
ch
Removing =
meta-demoapps/recipes-gnome/gnome/gnome-settings-daemon/gnome-settings-dae=
mon-fix-gthread.patch
Removing =
meta-demoapps/recipes-gnome/gnome/gnome-settings-daemon/gnome-settings-dae=
mon-2.24.0-catch-deviceadded.patch
Removing =
meta-demoapps/recipes-gnome/gnome/gnome-settings-daemon/desktop-moblin.pat=
ch
Removing =
meta-demoapps/recipes-gnome/gnome/gnome-settings-daemon/configurefix.patch=

Removing meta-demoapps/recipes-gnome/gcalctool/gcalctool_5.8.17.bb
Removing meta-demoapps/recipes-gnome/gcalctool/gcalctool_5.7.32.bb
Removing =
meta-demoapps/recipes-gnome/gcalctool/gcalctool/fix-includedir.patch
Removing meta-demoapps/recipes-gnome/abiword/abiword_svn.bb
Removing meta-demoapps/recipes-gnome/abiword/abiword_2.5.2.bb
Removing meta-demoapps/recipes-gnome/abiword/abiword.inc
Removing meta-demoapps/recipes-gnome/abiword/abiword-embedded_2.5.2.bb
Removing meta-demoapps/recipes-gnome/abiword/abiword-2.5.inc
Removing meta-demoapps/recipes-connectivity/wbxml/wbxml2_0.9.2.bb
Removing =
meta-demoapps/recipes-connectivity/wbxml/files/no-doc-install.patch
Removing =
meta-demoapps/recipes-connectivity/telepathy/telepathy-gabble_0.7.8.bb
Removing =
meta-demoapps/recipes-connectivity/telepathy/telepathy-gabble/gabble.manag=
er
Removing =
meta-demoapps/recipes-connectivity/telepathy/telepathy-farsight_0.0.7.bb
Removing meta-demoapps/recipes-connectivity/telepathy/empathy_2.26.1.bb
Removing =
meta-demoapps/recipes-connectivity/telepathy/empathy/no-gnome-doc.patch
Removing meta-demoapps/recipes-connectivity/opensync/msynctool_0.38.bb
Removing meta-demoapps/recipes-connectivity/opensync/libsyncml_0.5.4.bb
Removing =
meta-demoapps/recipes-connectivity/opensync/libsyncml/build-in-src.patch
Removing meta-demoapps/recipes-connectivity/opensync/libsync_git.bb
Removing meta-demoapps/recipes-connectivity/opensync/libopensync_0.37.bb
Removing =
meta-demoapps/recipes-connectivity/opensync/libopensync-plugin_0.36.inc
Removing =
meta-demoapps/recipes-connectivity/opensync/libopensync-plugin-vformat_0.3=
7.bb
Removing =
meta-demoapps/recipes-connectivity/opensync/libopensync-plugin-syncml_0.38=
.bb
Removing =
meta-demoapps/recipes-connectivity/opensync/libopensync-plugin-syncml/fixe=
rror.patch
Removing =
meta-demoapps/recipes-connectivity/opensync/libopensync-plugin-irmc_0.36.b=
b
Removing =
meta-demoapps/recipes-connectivity/opensync/libopensync-plugin-google-cale=
ndar_0.36.bb
Removing =
meta-demoapps/recipes-connectivity/opensync/libopensync-plugin-file_0.37.b=
b
Removing =
meta-demoapps/recipes-connectivity/opensync/libopensync-plugin-evolution2_=
0.36.bb
Removing =
meta-demoapps/recipes-connectivity/opensync/libopensync-plugin-evolution2/=
0.37-fixes.patch
Removing =
meta-demoapps/recipes-connectivity/opensync/libopensync-0.37/no-python-che=
ck.patch
Removing =
meta-demoapps/recipes-connectivity/opensync/libopensync-0.37/cmake.patch
Removing =
meta-demoapps/recipes-connectivity/opensync/libopensync-0.37/build-in-src.=
patch
Removing meta-demoapps/recipes-connectivity/openswan/openswan_2.4.7.bb
Removing =
meta-demoapps/recipes-connectivity/openswan/openswan-2.4.7/openswan-2.4.7-=
gentoo.patch
Removing =
meta-demoapps/recipes-connectivity/openswan/openswan-2.4.7/ld-library-path=
-breakage.patch
Removing =
meta-demoapps/recipes-connectivity/openswan/openswan-2.4.7/installflags.pa=
tch
Removing meta-demoapps/recipes-connectivity/loudmouth/loudmouth_1.4.0.bb
Removing meta-demoapps/recipes-connectivity/libetpan/libetpan_0.54.bb
Removing =
meta-demoapps/recipes-connectivity/libetpan/files/cxx-is-here.patch
Removing meta-demoapps/recipes-connectivity/farsight/libnice_0.0.6.bb
Removing meta-demoapps/recipes-connectivity/farsight/farsight2_0.0.9.bb
Auto-merging documentation/yocto-project-qs/yocto-project-qs.xml
Auto-merging documentation/poky-ref-manual/ref-images.xml
CONFLICT (content): Merge conflict in =
documentation/poky-ref-manual/ref-images.xml
Auto-merging documentation/poky-ref-manual/poky-ref-manual.xml
CONFLICT (content): Merge conflict in =
documentation/poky-ref-manual/poky-ref-manual.xml
Removing documentation/poky-ref-manual/development.xml
Auto-merging documentation/kernel-manual/kernel-manual.xml
CONFLICT (content): Merge conflict in =
documentation/kernel-manual/kernel-manual.xml
Removing documentation/dev-manual/figures/kernel-overview-3.png
Removing documentation/dev-manual/figures/kernel-example-repos.png
Auto-merging documentation/dev-manual/dev-manual.xml
CONFLICT (content): Merge conflict in =
documentation/dev-manual/dev-manual.xml
Auto-merging documentation/dev-manual/dev-manual-start.xml
CONFLICT (content): Merge conflict in =
documentation/dev-manual/dev-manual-start.xml
Auto-merging documentation/dev-manual/dev-manual-newbie.xml
Auto-merging documentation/dev-manual/dev-manual-model.xml
CONFLICT (content): Merge conflict in =
documentation/dev-manual/dev-manual-model.xml
Auto-merging documentation/dev-manual/dev-manual-kernel-appendix.xml
CONFLICT (content): Merge conflict in =
documentation/dev-manual/dev-manual-kernel-appendix.xml
Auto-merging documentation/dev-manual/dev-manual-common-tasks.xml
Auto-merging documentation/dev-manual/dev-manual-bsp-appendix.xml
CONFLICT (content): Merge conflict in =
documentation/dev-manual/dev-manual-bsp-appendix.xml
Auto-merging documentation/bsp-guide/bsp.xml
Auto-merging documentation/bsp-guide/bsp-guide.xml
CONFLICT (content): Merge conflict in =
documentation/bsp-guide/bsp-guide.xml
Auto-merging documentation/adt-manual/adt-manual.xml
CONFLICT (content): Merge conflict in =
documentation/adt-manual/adt-manual.xml
Auto-merging documentation/adt-manual/adt-eclipse.xml
Auto-merging bitbake/lib/bb/ui/crumbs/hobeventhandler.py
CONFLICT (content): Merge conflict in =
bitbake/lib/bb/ui/crumbs/hobeventhandler.py
Auto-merging bitbake/lib/bb/ui/crumbs/hig.py
CONFLICT (content): Merge conflict in bitbake/lib/bb/ui/crumbs/hig.py
Auto-merging bitbake/lib/bb/ui/crumbs/builder.py
Auto-merging bitbake/lib/bb/event.py
CONFLICT (content): Merge conflict in bitbake/lib/bb/event.py
Automatic merge failed; fix conflicts and then commit the result.


Elvis Dowson=

