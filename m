Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
 by mx.groups.io with SMTP id smtpd.web09.16755.1627599970349337178
 for <yocto@lists.yoctoproject.org>;
 Thu, 29 Jul 2021 16:06:10 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=SFWHUosa;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.41, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f41.google.com with SMTP id b7so8792628wri.8
        for <yocto@lists.yoctoproject.org>; Thu, 29 Jul 2021 16:06:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=4snztNjmQ8+cMJlrC3F20uHXB219m8iUBQucDPg4Myc=;
        b=SFWHUosavVlQkFfuYEZ3wft3yLzrJdXT5wM75e8TTstamkE7dfXakE0s/Q2kXk1J/n
         bgHI61QxqxrfEPM2LzTsSi0IZj8G1QqcupjrO+KC+tEEJo8IJhw69+KhoTidh/jVw1DV
         jUX0yLblPHNR/481NPW3cIXw5tCg4nlG/Apjo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=4snztNjmQ8+cMJlrC3F20uHXB219m8iUBQucDPg4Myc=;
        b=YGhgRQu0ZfZfCe7FsOKzdK7KP4jwqdikNN2joOFhMdTKfVZZmlHGb1wwUPeGa56Q3u
         fRKwWf5Fq83vN/eFmclDtNIfM37R4EDV3KRUWsbdczZkJ2tCN5YYRtFloc3qvIqOzNmt
         RY4k8lr8fgRIqk+TGcy6Pbj3azeNqBgasE1FoE2WTMH0XjtBVK73U2Jta01P2Bh8Z1cv
         z5oFT/+LG0C1L3ZgyD8spSGdyzLlo5xmp+bFw4Ep1BxyyDSjRD9t++birIPASWZdfgy7
         5FMo6UQZyf/TeaCgV47tGKkAxVnCdHwraPsHMIqquuI7cGHiQ1LssGi6ezLAoerLM9o0
         B27w==
X-Gm-Message-State: AOAM530KSQPat+7aTbgLT6O+0KdtcLzrUWDNk9du8xakh5QUMRRbz1mT
	zrw5i5p2jqbHlESp9i0hBjAnL5VOeWBQ5w==
X-Google-Smtp-Source: ABdhPJxs+NWDXaTApPsj1+9E717DT0shDS796g/tnybMEv0sKBZIUiCgX2RjMjZDZSOPMh578TapyA==
X-Received: by 2002:adf:f68a:: with SMTP id v10mr7237805wrp.366.1627599968173;
        Thu, 29 Jul 2021 16:06:08 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex.int.rpsys.net ([2001:8b0:aba:5f3c:47e7:2d3d:e4c2:218b])
        by smtp.gmail.com with ESMTPSA id j1sm5200411wrm.86.2021.07.29.16.06.07
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Jul 2021 16:06:07 -0700 (PDT)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Subject: [meta-gplv2] [PATCH 2/3] meta-gplv2: Convert to new override syntax
Date: Fri, 30 Jul 2021 00:06:05 +0100
Message-Id: <20210729230606.3337718-2-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210729230606.3337718-1-richard.purdie@linuxfoundation.org>
References: <20210729230606.3337718-1-richard.purdie@linuxfoundation.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This converts the layer to the new override syntax. This was done using

<oe-core>/scripts/contrib/convert-overrides.py <this-layer>

with no manual fixes.

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 conf/distro/include/disable-gplv3.inc         |  4 +--
 recipes-bsp/grub/grub_0.97.bb                 |  4 +--
 recipes-core/coreutils/coreutils_6.9.bb       |  2 +-
 recipes-core/gettext/gettext_0.16.1.bb        | 28 +++++++++----------
 recipes-core/readline/readline_5.2.bb         |  4 +--
 recipes-devtools/bison/bison_2.3.bb           |  2 +-
 recipes-devtools/elfutils/elfutils_0.148.bb   | 24 ++++++++--------
 recipes-devtools/m4/m4-1.4.9.inc              |  2 +-
 recipes-devtools/mtools/mtools_3.9.9.bb       |  6 ++--
 recipes-devtools/patch/patch.inc              |  2 +-
 recipes-devtools/rsync/rsync.inc              |  2 +-
 recipes-extended/bash/bash.inc                | 22 +++++++--------
 recipes-extended/bc/bc_1.06.bb                |  2 +-
 recipes-extended/cpio/cpio_v2.inc             |  6 ++--
 recipes-extended/diffutils/diffutils.inc      |  2 +-
 recipes-extended/diffutils/diffutils_2.8.1.bb |  2 +-
 recipes-extended/ed/ed_0.5.bb                 |  6 ++--
 recipes-extended/findutils/findutils.inc      |  2 +-
 recipes-extended/gawk/gawk_3.1.5.bb           | 14 +++++-----
 recipes-extended/gperf/gperf.inc              |  2 +-
 recipes-extended/grep/grep_2.5.1a.bb          |  6 ++--
 recipes-extended/groff/groff_1.18.1.4.bb      |  4 +--
 recipes-extended/gzip/gzip.inc                |  8 +++---
 recipes-extended/libidn/libidn_0.6.14.bb      |  4 +--
 recipes-extended/mc/mc_4.7.5.2.bb             | 18 ++++++------
 recipes-extended/msmtp/msmtp_1.4.12.bb        |  4 +--
 recipes-extended/sed/sed_4.1.2.bb             |  4 +--
 recipes-extended/tar/tar.inc                  | 14 +++++-----
 recipes-extended/texinfo/texinfo_4.8.bb       | 18 ++++++------
 recipes-extended/time/time_1.7.bb             |  2 +-
 recipes-extended/which/which_2.18.bb          |  4 +--
 recipes-sato/rxvt-unicode/rxvt-unicode.inc    | 12 ++++----
 recipes-support/gdbm/gdbm_1.8.3.bb            |  2 +-
 recipes-support/gmp/gmp.inc                   |  4 +--
 recipes-support/gmp/gmp_4.2.1.bb              |  2 +-
 recipes-support/gnupg/gnupg_1.4.7.bb          |  8 +++---
 recipes-support/gnutls/gnutls.inc             | 20 ++++++-------
 recipes-support/libiconv/libiconv_1.11.1.bb   |  6 ++--
 recipes-support/nettle/nettle.inc             |  2 +-
 recipes-support/nettle/nettle_2.7.1.bb        |  2 +-
 .../shared-mime-info/shared-mime-info.inc     | 10 +++----
 41 files changed, 146 insertions(+), 146 deletions(-)

diff --git a/conf/distro/include/disable-gplv3.inc b/conf/distro/include/disable-gplv3.inc
index bded378..5d948cc 100644
--- a/conf/distro/include/disable-gplv3.inc
+++ b/conf/distro/include/disable-gplv3.inc
@@ -1,3 +1,3 @@
 INCOMPATIBLE_LICENSE = '*GPLv3*'
-WARN_QA_remove = 'incompatible-license'
-RDEPENDS_${PN}-ptest_remove_pn-glib-2.0 = "python3-dbusmock"
+WARN_QA:remove = 'incompatible-license'
+RDEPENDS:${PN}-ptest:remove:pn-glib-2.0 = "python3-dbusmock"
diff --git a/recipes-bsp/grub/grub_0.97.bb b/recipes-bsp/grub/grub_0.97.bb
index 3e4e12c..3845c94 100644
--- a/recipes-bsp/grub/grub_0.97.bb
+++ b/recipes-bsp/grub/grub_0.97.bb
@@ -9,7 +9,7 @@ LICENSE = "GPLv2+"
 LIC_FILES_CHKSUM = "file://COPYING;md5=c93c0550bd3173f4504b2cbd8991e50b \
                     file://grub/main.c;beginline=3;endline=9;md5=22a5f28d2130fff9f2a17ed54be90ed6"
 
-RDEPENDS_${PN} = "diffutils"
+RDEPENDS:${PN} = "diffutils"
 PR = "r6"
 
 SRC_URI = "http://alpha.gnu.org/gnu/grub/grub-${PV}.tar.gz; \
@@ -29,7 +29,7 @@ COMPATIBLE_HOST = "i.86.*-linux"
 
 EXTRA_OECONF = "--without-curses"
 
-do_install_append_vmware() {
+do_install:append_vmware() {
 	mkdir -p ${D}/boot/
 	ln -sf ../usr/lib/grub/{$TARGET_ARCH}{$TARGET_VENDOR}/ ${D}/boot/grub
 }
diff --git a/recipes-core/coreutils/coreutils_6.9.bb b/recipes-core/coreutils/coreutils_6.9.bb
index 69e5489..8f24556 100644
--- a/recipes-core/coreutils/coreutils_6.9.bb
+++ b/recipes-core/coreutils/coreutils_6.9.bb
@@ -92,7 +92,7 @@ inherit update-alternatives
 
 ALTERNATIVE_PRIORITY = "100"
 
-ALTERNATIVE_${PN} = "lbracket ${bindir_progs} ${base_bindir_progs} ${sbindir_progs}"
+ALTERNATIVE:${PN} = "lbracket ${bindir_progs} ${base_bindir_progs} ${sbindir_progs}"
 
 ALTERNATIVE_PRIORITY[uptime] = "10"
 ALTERNATIVE_PRIORITY[hostname] = "10"
diff --git a/recipes-core/gettext/gettext_0.16.1.bb b/recipes-core/gettext/gettext_0.16.1.bb
index 1907ea5..76c2a01 100644
--- a/recipes-core/gettext/gettext_0.16.1.bb
+++ b/recipes-core/gettext/gettext_0.16.1.bb
@@ -7,9 +7,9 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=9ea3144f04c41cd2eada5d3f472e6ea5"
 
 PR = "r6"
 DEPENDS = "virtual/libiconv"
-DEPENDS_class-native = ""
+DEPENDS:class-native = ""
 PROVIDES = "virtual/libintl virtual/gettext"
-PROVIDES_class-native = "virtual/gettext-native"
+PROVIDES:class-native = "virtual/gettext-native"
 
 SRC_URI = "${GNU_MIRROR}/gettext/gettext-${PV}.tar.gz \
            file://gettext-vpath.patch \
@@ -37,7 +37,7 @@ EXTRA_OECONF += "--without-lispdir \
                  --disable-openmp \
                  --without-emacs \
                 "
-EXTRA_OECONF_append_libc-musl = "\
+EXTRA_OECONF:append:libc-musl = "\
                                  gt_cv_func_gnugettext1_libc=yes \
                                  gt_cv_func_gnugettext2_libc=yes \
                                 "
@@ -46,11 +46,11 @@ acpaths = '-I ${S}/autoconf-lib-link/m4/ \
            -I ${S}/gettext-runtime/m4 \
            -I ${S}/gettext-tools/m4'
 
-do_configure_prepend() {
+do_configure:prepend() {
 	rm -f ${S}/config/m4/libtool.m4
 }
 
-do_install_append_libc-musl () {
+do_install:append:libc-musl () {
 	rm -f ${D}${libdir}/charset.alias
 }
 
@@ -65,24 +65,24 @@ do_install_append_libc-musl () {
 # 4       KiB /ep93xx/libgcc-s-dev_4.2.2-r2_ep93xx.ipk
 
 PACKAGES =+ "libgettextlib libgettextsrc"
-FILES_libgettextlib = "${libdir}/libgettextlib-*.so*"
-FILES_libgettextsrc = "${libdir}/libgettextsrc-*.so*"
+FILES:libgettextlib = "${libdir}/libgettextlib-*.so*"
+FILES:libgettextsrc = "${libdir}/libgettextsrc-*.so*"
 
 PACKAGES =+ "gettext-runtime gettext-runtime-dev gettext-runtime-staticdev gettext-runtime-doc"
 
-FILES_${PN} += "${libdir}/${BPN}/*"
+FILES:${PN} += "${libdir}/${BPN}/*"
 
-FILES_gettext-runtime = "${bindir}/gettext \
+FILES:gettext-runtime = "${bindir}/gettext \
                          ${bindir}/ngettext \
                          ${bindir}/envsubst \
                          ${bindir}/gettext.sh \
                          ${libdir}/libasprintf${SODEV} \
                          ${libdir}/GNU.Gettext.dll \
                         "
-FILES_gettext-runtime-staticdev += "${libdir}/libasprintf.a"
-FILES_gettext-runtime-dev += "${includedir}/autosprintf.h \
+FILES:gettext-runtime-staticdev += "${libdir}/libasprintf.a"
+FILES:gettext-runtime-dev += "${includedir}/autosprintf.h \
                               ${libdir}/libasprintf${SOLIBDEV}"
-FILES_gettext-runtime-doc = "${mandir}/man1/gettext.* \
+FILES:gettext-runtime-doc = "${mandir}/man1/gettext.* \
                              ${mandir}/man1/ngettext.* \
                              ${mandir}/man1/envsubst.* \
                              ${mandir}/man1/.* \
@@ -97,11 +97,11 @@ FILES_gettext-runtime-doc = "${mandir}/man1/gettext.* \
                              ${infodir}/autosprintf.info \
                             "
 
-do_install_append() {
+do_install:append() {
     rm -f ${D}${libdir}/preloadable_libintl.so
 }
 
-do_install_append_class-native () {
+do_install:append:class-native () {
 	rm ${D}${datadir}/aclocal/*
 	rm ${D}${datadir}/gettext/config.rpath
 	rm ${D}${datadir}/gettext/po/Makefile.in.in
diff --git a/recipes-core/readline/readline_5.2.bb b/recipes-core/readline/readline_5.2.bb
index c1007a2..aa2799e 100644
--- a/recipes-core/readline/readline_5.2.bb
+++ b/recipes-core/readline/readline_5.2.bb
@@ -69,13 +69,13 @@ EXTRA_AUTORECONF += "--exclude=autoheader"
 
 LEAD_SONAME = "libreadline.so"
 
-do_configure_prepend () {
+do_configure:prepend () {
 	if [ ! -e ${S}/acinclude.m4 ]; then
 		cat ${S}/aclocal.m4 > ${S}/acinclude.m4
 	fi
 }
 
-do_install_append () {
+do_install:append () {
 	# Make install doesn't properly install these
 	oe_libinstall -so -C shlib libhistory ${D}${libdir}
 	oe_libinstall -so -C shlib libreadline ${D}${libdir}
diff --git a/recipes-devtools/bison/bison_2.3.bb b/recipes-devtools/bison/bison_2.3.bb
index 182e880..c84fd9a 100644
--- a/recipes-devtools/bison/bison_2.3.bb
+++ b/recipes-devtools/bison/bison_2.3.bb
@@ -20,7 +20,7 @@ SRC_URI[sha256sum] = "52f78aa4761a74ceb7fdf770f3554dd84308c3b93c4255e3a5c17558ec
 inherit autotools gettext texinfo
 acpaths = "-I ${S}/m4"
 
-do_configure_prepend () {
+do_configure:prepend () {
 	rm -f ${S}/m4/*gl.m4
 	cp ${STAGING_DATADIR_NATIVE}/gettext/po/Makefile.in.in ${S}/runtime-po/
 }
diff --git a/recipes-devtools/elfutils/elfutils_0.148.bb b/recipes-devtools/elfutils/elfutils_0.148.bb
index 3c0f9f0..848e2cf 100644
--- a/recipes-devtools/elfutils/elfutils_0.148.bb
+++ b/recipes-devtools/elfutils/elfutils_0.148.bb
@@ -42,11 +42,11 @@ SRC_URI += "\
 "
 
 # Only apply when building musl based target recipe
-SRC_URI_append_libc-musl = " file://musl-support-for-elfutils-0.148.patch"
+SRC_URI:append:libc-musl = " file://musl-support-for-elfutils-0.148.patch"
 
 # The buildsystem wants to generate 2 .h files from source using a binary it just built,
 # which can not pass the cross compiling, so let's work around it by adding 2 .h files
-# along with the do_configure_prepend()
+# along with the do_configure:prepend()
 
 SRC_URI += "\
         file://i386_dis.h \
@@ -67,9 +67,9 @@ CFLAGS += "-Wno-error=format-truncation="
 CFLAGS += "-Wno-error=stringop-overflow="
 
 EXTRA_OECONF = "--program-prefix=eu- --without-lzma"
-EXTRA_OECONF_append_class-native = " --without-bzlib"
+EXTRA_OECONF:append:class-native = " --without-bzlib"
 
-do_configure_prepend() {
+do_configure:prepend() {
     sed -i '/^i386_dis.h:/,+4 {/.*/d}' ${S}/libcpu/Makefile.am
 
     cp ${WORKDIR}/*dis.h ${S}/libcpu
@@ -79,15 +79,15 @@ do_configure_prepend() {
 # but some recipes e.g. gcc 4.5 depends on libelf so we
 # build only libelf for musl cases
 
-EXTRA_OEMAKE_libc-musl = "-C libelf"
-EXTRA_OEMAKE_class-native = ""
-EXTRA_OEMAKE_class-nativesdk = ""
+EXTRA_OEMAKE:libc-musl = "-C libelf"
+EXTRA_OEMAKE:class-native = ""
+EXTRA_OEMAKE:class-nativesdk = ""
 
 BBCLASSEXTEND = "native nativesdk"
 
 # Package utilities separately
 PACKAGES =+ "${PN}-binutils libelf libasm libdw"
-FILES_${PN}-binutils = "\
+FILES:${PN}-binutils = "\
     ${bindir}/eu-addr2line \
     ${bindir}/eu-ld \
     ${bindir}/eu-nm \
@@ -95,13 +95,13 @@ FILES_${PN}-binutils = "\
     ${bindir}/eu-size \
     ${bindir}/eu-strip"
 
-FILES_libelf = "${libdir}/libelf-${PV}.so ${libdir}/libelf.so.*"
-FILES_libasm = "${libdir}/libasm-${PV}.so ${libdir}/libasm.so.*"
-FILES_libdw  = "${libdir}/libdw-${PV}.so ${libdir}/libdw.so.* ${libdir}/elfutils/lib*"
+FILES:libelf = "${libdir}/libelf-${PV}.so ${libdir}/libelf.so.*"
+FILES:libasm = "${libdir}/libasm-${PV}.so ${libdir}/libasm.so.*"
+FILES:libdw  = "${libdir}/libdw-${PV}.so ${libdir}/libdw.so.* ${libdir}/elfutils/lib*"
 # Some packages have the version preceeding the .so instead properly
 # versioned .so.<version>, so we need to reorder and repackage.
 #FILES_${PN} += "${libdir}/*-${PV}.so ${base_libdir}/*-${PV}.so"
 #FILES_SOLIBSDEV = "${libdir}/libasm.so ${libdir}/libdw.so ${libdir}/libelf.so"
 
 # The package contains symlinks that trip up insane
-INSANE_SKIP_${MLPREFIX}libdw = "dev-so"
+INSANE_SKIP:${MLPREFIX}libdw = "dev-so"
diff --git a/recipes-devtools/m4/m4-1.4.9.inc b/recipes-devtools/m4/m4-1.4.9.inc
index 8c75dab..41f46cd 100644
--- a/recipes-devtools/m4/m4-1.4.9.inc
+++ b/recipes-devtools/m4/m4-1.4.9.inc
@@ -8,7 +8,7 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=751419260aa954499f7abaabaa882bbe\
 PR = "r2"
 SRC_URI += "file://fix_for_circular_dependency.patch"
 
-SRC_URI_append_class-target = "\
+SRC_URI:append:class-target = "\
     file://0001-freeze-fix-compilation-error-with-security-flags-ena.patch \
     file://0002-build-don-t-need-charset.alias-when-building-for-mus.patch \
 "
diff --git a/recipes-devtools/mtools/mtools_3.9.9.bb b/recipes-devtools/mtools/mtools_3.9.9.bb
index d28fc48..8e106b0 100644
--- a/recipes-devtools/mtools/mtools_3.9.9.bb
+++ b/recipes-devtools/mtools/mtools_3.9.9.bb
@@ -8,8 +8,8 @@ PR = "r6"
 
 DEPENDS += "virtual/libiconv"
 
-RDEPENDS_${PN}_libc-glibc = "glibc-gconv-ibm850"
-RRECOMMENDS_${PN}_libc-glibc = "\
+RDEPENDS:${PN}:libc-glibc = "glibc-gconv-ibm850"
+RRECOMMENDS:${PN}:libc-glibc = "\
 	glibc-gconv-ibm437 \
 	glibc-gconv-ibm737 \
 	glibc-gconv-ibm775 \
@@ -46,7 +46,7 @@ BBCLASSEXTEND = "native nativesdk"
 PACKAGECONFIG ??= ""
 PACKAGECONFIG[libbsd] = "ac_cv_lib_bsd_main=yes,ac_cv_lib_bsd_main=no,libbsd"
 
-do_install_prepend () {
+do_install:prepend () {
     # Create bindir to fix parallel installation issues
     mkdir -p ${D}/${bindir}
     mkdir -p ${D}/${datadir}
diff --git a/recipes-devtools/patch/patch.inc b/recipes-devtools/patch/patch.inc
index cbfb8cf..a12d426 100644
--- a/recipes-devtools/patch/patch.inc
+++ b/recipes-devtools/patch/patch.inc
@@ -10,5 +10,5 @@ S = "${WORKDIR}/patch-${PV}"
 
 inherit autotools update-alternatives
 
-ALTERNATIVE_${PN} = "patch"
+ALTERNATIVE:${PN} = "patch"
 ALTERNATIVE_PRIORITY = "100"
diff --git a/recipes-devtools/rsync/rsync.inc b/recipes-devtools/rsync/rsync.inc
index 26c023a..00e0860 100644
--- a/recipes-devtools/rsync/rsync.inc
+++ b/recipes-devtools/rsync/rsync.inc
@@ -10,7 +10,7 @@ SRC_URI = "https://download.samba.org/pub/${BPN}/src/${BP}.tar.gz \
 
 inherit autotools
 
-do_install_append() {
+do_install:append() {
 	install -d ${D}${sysconfdir}
 	install -m 0644 ${WORKDIR}/rsyncd.conf ${D}${sysconfdir}
 }
diff --git a/recipes-extended/bash/bash.inc b/recipes-extended/bash/bash.inc
index 0f0d679..4767618 100644
--- a/recipes-extended/bash/bash.inc
+++ b/recipes-extended/bash/bash.inc
@@ -14,21 +14,21 @@ EXTRA_OECONF = "--enable-job-control --without-bash-malloc"
 # This is what other major distros do. And this is what we wanted. See bug#5359 and bug#7137.
 CFLAGS += "-DNON_INTERACTIVE_LOGIN_SHELLS"
 
-ALTERNATIVE_${PN} = "bash sh"
+ALTERNATIVE:${PN} = "bash sh"
 ALTERNATIVE_LINK_NAME[bash] = "${base_bindir}/bash"
 ALTERNATIVE_TARGET[bash] = "${base_bindir}/bash"
 ALTERNATIVE_LINK_NAME[sh] = "${base_bindir}/sh"
 ALTERNATIVE_TARGET[sh] = "${base_bindir}/bash.${BPN}"
 ALTERNATIVE_PRIORITY = "100"
 
-RDEPENDS_${PN} += "base-files"
-RDEPENDS_${PN}_class-nativesdk = ""
-RDEPENDS_${PN}-ptest += "make"
+RDEPENDS:${PN} += "base-files"
+RDEPENDS:${PN}:class-nativesdk = ""
+RDEPENDS:${PN}-ptest += "make"
 
 USERADD_PACKAGES = "${PN}-ptest"
-USERADD_PARAM_${PN}-ptest = "--create-home --user-group test"
+USERADD_PARAM:${PN}-ptest = "--create-home --user-group test"
 
-do_configure_prepend () {
+do_configure:prepend () {
 	if [ ! -e ${S}/acinclude.m4 ]; then
 		cat ${S}/aclocal.m4 > ${S}/acinclude.m4
 	fi
@@ -38,14 +38,14 @@ do_compile_ptest () {
 	oe_runmake buildtest
 }
 
-do_install_append () {
+do_install:append () {
 	# Move /usr/bin/bash to /bin/bash, if need
 	if [ "${base_bindir}" != "${bindir}" ]; then
 		mkdir -p ${D}${base_bindir}
 		mv ${D}${bindir}/bash ${D}${base_bindir}
 	fi
 }
-do_install_append_class-target () {
+do_install:append:class-target () {
 	# Clean host path in bashbug
 	sed -i -e "s,--sysroot=${STAGING_DIR_TARGET},,g" \
 		-e "s,-I${WORKDIR}/\S* ,,g" ${D}${bindir}/bashbug
@@ -58,12 +58,12 @@ do_install_ptest () {
 	    -e "s,${S},,g" -e "s,${B},,g" -e "s,${STAGING_DIR_NATIVE},,g" ${D}${PTEST_PATH}/Makefile
 }
 
-pkg_postinst_${PN} () {
+pkg_postinst:${PN} () {
 	grep -q "^${base_bindir}/bash$" $D${sysconfdir}/shells || echo ${base_bindir}/bash >> $D${sysconfdir}/shells
 }
 
-pkg_postrm_${PN} () {
+pkg_postrm:${PN} () {
 	printf "$(grep -v "^${base_bindir}/bash$" $D${sysconfdir}/shells)\n" > $D${sysconfdir}/shells
 }
 
-RPROVIDES_${PN} += "${@bb.utils.contains('DISTRO_FEATURES', 'usrmerge', '/bin/sh /bin/bash', '', d)}"
+RPROVIDES:${PN} += "${@bb.utils.contains('DISTRO_FEATURES', 'usrmerge', '/bin/sh /bin/bash', '', d)}"
diff --git a/recipes-extended/bc/bc_1.06.bb b/recipes-extended/bc/bc_1.06.bb
index 3de1b24..82143a4 100644
--- a/recipes-extended/bc/bc_1.06.bb
+++ b/recipes-extended/bc/bc_1.06.bb
@@ -20,7 +20,7 @@ SRC_URI[sha256sum] = "4ef6d9f17c3c0d92d8798e35666175ecd3d8efac4009d6457b5c99cea7
 
 inherit autotools texinfo update-alternatives
 
-ALTERNATIVE_${PN} = "bc dc"
+ALTERNATIVE:${PN} = "bc dc"
 ALTERNATIVE_PRIORITY = "100"
 
 BBCLASSEXTEND = "native"
diff --git a/recipes-extended/cpio/cpio_v2.inc b/recipes-extended/cpio/cpio_v2.inc
index 31adb71..f202d5f 100644
--- a/recipes-extended/cpio/cpio_v2.inc
+++ b/recipes-extended/cpio/cpio_v2.inc
@@ -26,14 +26,14 @@ do_install () {
 
 PACKAGES =+ "${PN}-rmt"
 
-FILES_${PN}-rmt = "${base_sbindir}/rmt*"
+FILES:${PN}-rmt = "${base_sbindir}/rmt*"
 
 inherit update-alternatives
 
 ALTERNATIVE_PRIORITY = "100"
 
-ALTERNATIVE_${PN} = "cpio"
-ALTERNATIVE_${PN}-rmt = "rmt"
+ALTERNATIVE:${PN} = "cpio"
+ALTERNATIVE:${PN}-rmt = "rmt"
 
 ALTERNATIVE_LINK_NAME[cpio] = "${base_bindir}/cpio"
 
diff --git a/recipes-extended/diffutils/diffutils.inc b/recipes-extended/diffutils/diffutils.inc
index c81348b..08ebaa9 100644
--- a/recipes-extended/diffutils/diffutils.inc
+++ b/recipes-extended/diffutils/diffutils.inc
@@ -6,6 +6,6 @@ SECTION = "base"
 
 inherit autotools texinfo update-alternatives gettext
 
-ALTERNATIVE_${PN} = "diff cmp"
+ALTERNATIVE:${PN} = "diff cmp"
 ALTERNATIVE_PRIORITY = "100"
 
diff --git a/recipes-extended/diffutils/diffutils_2.8.1.bb b/recipes-extended/diffutils/diffutils_2.8.1.bb
index 7c43c4b..6e48dc6 100644
--- a/recipes-extended/diffutils/diffutils_2.8.1.bb
+++ b/recipes-extended/diffutils/diffutils_2.8.1.bb
@@ -21,6 +21,6 @@ CACHED_CONFIGUREVARS = "\
     jm_cv_func_working_realloc=yes \
 "
 
-do_configure_prepend () {
+do_configure:prepend () {
 	chmod u+w ${S}/po/Makefile.in.in
 }
diff --git a/recipes-extended/ed/ed_0.5.bb b/recipes-extended/ed/ed_0.5.bb
index e2df13f..8305e6b 100644
--- a/recipes-extended/ed/ed_0.5.bb
+++ b/recipes-extended/ed/ed_0.5.bb
@@ -15,6 +15,6 @@ inherit autotools texinfo
 
 EXTRA_OECONF = "'CC=${CC}' 'CXX=${CXX}' 'CFLAGS=${CFLAGS}' 'CXXFLAGS=${CXXFLAGS}' 'CPPFLAGS=${CPPFLAGS}' 'LDFLAGS=${LDFLAGS}'"
 
-CONFIGUREOPTS_remove = "--disable-dependency-tracking"
-CONFIGUREOPTS_remove = "--disable-silent-rules"
-EXTRA_OECONF_remove = "--disable-static"
+CONFIGUREOPTS:remove = "--disable-dependency-tracking"
+CONFIGUREOPTS:remove = "--disable-silent-rules"
+EXTRA_OECONF:remove = "--disable-static"
diff --git a/recipes-extended/findutils/findutils.inc b/recipes-extended/findutils/findutils.inc
index ad36429..8887675 100644
--- a/recipes-extended/findutils/findutils.inc
+++ b/recipes-extended/findutils/findutils.inc
@@ -10,7 +10,7 @@ SRC_URI = "${GNU_MIRROR}/${BPN}/${BP}.tar.gz"
 
 inherit autotools gettext texinfo update-alternatives upstream-version-is-even
 
-ALTERNATIVE_${PN} = "find xargs"
+ALTERNATIVE:${PN} = "find xargs"
 ALTERNATIVE_PRIORITY = "100"
 
 BBCLASSEXTEND = "native nativesdk"
diff --git a/recipes-extended/gawk/gawk_3.1.5.bb b/recipes-extended/gawk/gawk_3.1.5.bb
index 63fd32f..933c140 100644
--- a/recipes-extended/gawk/gawk_3.1.5.bb
+++ b/recipes-extended/gawk/gawk_3.1.5.bb
@@ -11,8 +11,8 @@ SECTION = "console/utils"
 LICENSE = "GPLv2"
 LIC_FILES_CHKSUM = "file://COPYING;md5=59530bdf33659b29e73d4adb9f9f6552"
 
-RDEPENDS_gawk += "gawk-common"
-RDEPENDS_pgawk += "gawk-common"
+RDEPENDS:gawk += "gawk-common"
+RDEPENDS:pgawk += "gawk-common"
 PR = "r2"
 
 SRC_URI = "\
@@ -28,17 +28,17 @@ inherit autotools gettext texinfo update-alternatives
 
 PACKAGES += "gawk-common pgawk"
 
-FILES_${PN} = "${bindir}/gawk* ${bindir}/igawk"
-FILES_gawk-common += "${datadir}/awk/* ${libexecdir}/awk/*"
-FILES_pgawk = "${bindir}/pgawk*"
+FILES:${PN} = "${bindir}/gawk* ${bindir}/igawk"
+FILES:gawk-common += "${datadir}/awk/* ${libexecdir}/awk/*"
+FILES:pgawk = "${bindir}/pgawk*"
 
-ALTERNATIVE_${PN} = "awk"
+ALTERNATIVE:${PN} = "awk"
 ALTERNATIVE_TARGET[awk] = "${bindir}/gawk"
 ALTERNATIVE_PRIORITY = "100"
 
 CFLAGS += "-D PROTOTYPES"
 
-do_install_append() {
+do_install:append() {
 	# remove the link since we don't package it
 	rm ${D}${bindir}/awk
 }
diff --git a/recipes-extended/gperf/gperf.inc b/recipes-extended/gperf/gperf.inc
index a8ce230..10738e4 100644
--- a/recipes-extended/gperf/gperf.inc
+++ b/recipes-extended/gperf/gperf.inc
@@ -13,7 +13,7 @@ inherit autotools
 # duplicating acinclude.m4 in every subdirectory, use absolute include path to aclocal
 EXTRA_AUTORECONF += " -I ${S}"
 
-do_configure_prepend() {
+do_configure:prepend() {
         if [ ! -e ${S}/acinclude.m4 ]; then
                 cat ${S}/aclocal.m4 > ${S}/acinclude.m4
         fi
diff --git a/recipes-extended/grep/grep_2.5.1a.bb b/recipes-extended/grep/grep_2.5.1a.bb
index 5445c7e..1a3231e 100644
--- a/recipes-extended/grep/grep_2.5.1a.bb
+++ b/recipes-extended/grep/grep_2.5.1a.bb
@@ -27,13 +27,13 @@ SRC_URI[sha256sum] = "38c8a2bb9223d1fb1b10bdd607cf44830afc92fd451ac4cd07619bf92b
 inherit autotools gettext texinfo
 
 EXTRA_OECONF_INCLUDED_REGEX = "--without-included-regex"
-EXTRA_OECONF_INCLUDED_REGEX_libc-musl = "--with-included-regex"
+EXTRA_OECONF_INCLUDED_REGEX:libc-musl = "--with-included-regex"
 
 EXTRA_OECONF = "--disable-perl-regexp \
                 ${EXTRA_OECONF_INCLUDED_REGEX}"
 
 CFLAGS += "-D PROTOTYPES"
-do_configure_prepend () {
+do_configure:prepend () {
 	rm -f ${S}/m4/init.m4
 	cp -f ${WORKDIR}/Makevars ${S}/po/
 }
@@ -53,7 +53,7 @@ inherit update-alternatives
 
 ALTERNATIVE_PRIORITY = "100"
 
-ALTERNATIVE_${PN} = "grep egrep fgrep"
+ALTERNATIVE:${PN} = "grep egrep fgrep"
 ALTERNATIVE_LINK_NAME[grep] = "${base_bindir}/grep"
 ALTERNATIVE_LINK_NAME[egrep] = "${base_bindir}/egrep"
 ALTERNATIVE_LINK_NAME[fgrep] = "${base_bindir}/fgrep"
diff --git a/recipes-extended/groff/groff_1.18.1.4.bb b/recipes-extended/groff/groff_1.18.1.4.bb
index a31cbf1..84b0d78 100644
--- a/recipes-extended/groff/groff_1.18.1.4.bb
+++ b/recipes-extended/groff/groff_1.18.1.4.bb
@@ -30,7 +30,7 @@ do_configure (){
     oe_runconf
 }
 
-do_install_append() {
+do_install:append() {
 	# Some distros have both /bin/perl and /usr/bin/perl, but we set perl location
 	# for target as /usr/bin/perl, so fix it to /usr/bin/perl.
 	for i in afmtodit mmroff; do
@@ -44,7 +44,7 @@ do_install_append() {
 	cp -rf ${D}${datadir}/groff/site-tmac/* ${D}${datadir}/groff/${PV}/tmac/
 }
 
-pkg_postinst_${PN}() {
+pkg_postinst:${PN}() {
 	ln -s tbl $D${bindir}/gtbl
 	echo "export GROFF_FONT_PATH=/usr/share/groff/${PV}/font" >> $D${sysconfdir}/profile
 	echo "export GROFF_TMAC_PATH=/usr/share/groff/${PV}/tmac" >> $D${sysconfdir}/profile
diff --git a/recipes-extended/gzip/gzip.inc b/recipes-extended/gzip/gzip.inc
index 04f8f95..15fd665 100644
--- a/recipes-extended/gzip/gzip.inc
+++ b/recipes-extended/gzip/gzip.inc
@@ -8,10 +8,10 @@ SECTION = "console/utils"
 inherit autotools texinfo
 export DEFS="NO_ASM"
 
-EXTRA_OEMAKE_class-target = "GREP=${base_bindir}/grep"
-EXTRA_OECONF_append_libc-musl = " gl_cv_func_fflush_stdin=yes "
+EXTRA_OEMAKE:class-target = "GREP=${base_bindir}/grep"
+EXTRA_OECONF:append:libc-musl = " gl_cv_func_fflush_stdin=yes "
 
-do_install_append () {
+do_install:append () {
 	if [ "${base_bindir}" != "${bindir}" ]; then
 		# Rename and move files into /bin (FHS), which is typical place for gzip
 		install -d ${D}${base_bindir}
@@ -25,7 +25,7 @@ do_install_append () {
 inherit update-alternatives
 
 ALTERNATIVE_PRIORITY = "100"
-ALTERNATIVE_${PN} = "gunzip gzip zcat"
+ALTERNATIVE:${PN} = "gunzip gzip zcat"
 ALTERNATIVE_LINK_NAME[gunzip] = "${base_bindir}/gunzip"
 ALTERNATIVE_LINK_NAME[gzip] = "${base_bindir}/gzip"
 ALTERNATIVE_LINK_NAME[zcat] = "${base_bindir}/zcat"
diff --git a/recipes-extended/libidn/libidn_0.6.14.bb b/recipes-extended/libidn/libidn_0.6.14.bb
index c681560..dfd9c6e 100644
--- a/recipes-extended/libidn/libidn_0.6.14.bb
+++ b/recipes-extended/libidn/libidn_0.6.14.bb
@@ -16,7 +16,7 @@ SRC_URI = "http://alpha.gnu.org/gnu/libidn/${BPN}-${PV}.tar.gz"
 SRC_URI[md5sum] = "040f012a45feb56168853998bb87ad4d"
 SRC_URI[sha256sum] = "98910c2ad664bdf4eed2c2fff88e24f8882636ec9d26669366ff03b469c05ae3"
 
-do_configure_prepend() {
+do_configure:prepend() {
 	# this version of libidn copies AC_USE_SYSTEM_EXTENSIONS from 
 	# autoconf CVS because atm the autoconf it uses is a bit old
 	# now with cross autotool, that macro is already there and this
@@ -27,7 +27,7 @@ do_configure_prepend() {
 	rm -f ${S}/lib/gl/m4/extensions.m4
 }
 
-do_install_append() {
+do_install:append() {
 	rm -rf ${D}${libdir}/Libidn.dll
 	rm -rf ${D}${datadir}/emacs
 }
diff --git a/recipes-extended/mc/mc_4.7.5.2.bb b/recipes-extended/mc/mc_4.7.5.2.bb
index 5f56641..2d30fe7 100644
--- a/recipes-extended/mc/mc_4.7.5.2.bb
+++ b/recipes-extended/mc/mc_4.7.5.2.bb
@@ -4,7 +4,7 @@ LICENSE = "GPLv2"
 LIC_FILES_CHKSUM = "file://COPYING;md5=59530bdf33659b29e73d4adb9f9f6552"
 SECTION = "console/utils"
 DEPENDS = "ncurses glib-2.0"
-RDEPENDS_${PN} = "ncurses-terminfo"
+RDEPENDS:${PN} = "ncurses-terminfo"
 
 PR = "r3"
 
@@ -21,7 +21,7 @@ inherit autotools gettext pkgconfig
 
 EXTRA_OECONF = "--with-screen=ncurses --without-gpm-mouse --without-x --without-samba"
 
-do_install_append () {
+do_install:append () {
 	sed -i -e '1s,#!.*perl,#!${bindir}/env perl,' ${D}${libexecdir}/mc/extfs.d/*
 	# These use python2 which is no longer supported
 	rm ${D}${libexecdir}/mc/extfs.d/s3+
@@ -30,18 +30,18 @@ do_install_append () {
 
 PACKAGES =+ "${BPN}-helpers-perl ${BPN}-helpers ${BPN}-fish"
 
-SUMMARY_${BPN}-helpers-perl = "Midnight Commander Perl-based helper scripts"
-FILES_${BPN}-helpers-perl = "${libexecdir}/mc/extfs.d/a+ ${libexecdir}/mc/extfs.d/apt+ \
+SUMMARY:${BPN}-helpers-perl = "Midnight Commander Perl-based helper scripts"
+FILES:${BPN}-helpers-perl = "${libexecdir}/mc/extfs.d/a+ ${libexecdir}/mc/extfs.d/apt+ \
                              ${libexecdir}/mc/extfs.d/deb ${libexecdir}/mc/extfs.d/deba \
                              ${libexecdir}/mc/extfs.d/debd ${libexecdir}/mc/extfs.d/dpkg+ \
                              ${libexecdir}/mc/extfs.d/mailfs ${libexecdir}/mc/extfs.d/patchfs \ 
                              ${libexecdir}/mc/extfs.d/rpms+ ${libexecdir}/mc/extfs.d/ulib \ 
                              ${libexecdir}/mc/extfs.d/uzip"
-RDEPENDS_${BPN}-helpers-perl = "perl"
+RDEPENDS:${BPN}-helpers-perl = "perl"
 
-SUMMARY_${BPN}-helpers = "Midnight Commander shell helper scripts"
-FILES_${BPN}-helpers = "${libexecdir}/mc/extfs.d/* ${libexecdir}/mc/ext.d/*"
+SUMMARY:${BPN}-helpers = "Midnight Commander shell helper scripts"
+FILES:${BPN}-helpers = "${libexecdir}/mc/extfs.d/* ${libexecdir}/mc/ext.d/*"
 
-SUMMARY_${BPN}-fish = "Midnight Commander Fish scripts"
-FILES_${BPN}-fish = "${libexecdir}/mc/fish"
+SUMMARY:${BPN}-fish = "Midnight Commander Fish scripts"
+FILES:${BPN}-fish = "${libexecdir}/mc/fish"
 
diff --git a/recipes-extended/msmtp/msmtp_1.4.12.bb b/recipes-extended/msmtp/msmtp_1.4.12.bb
index e03d432..21d9f81 100644
--- a/recipes-extended/msmtp/msmtp_1.4.12.bb
+++ b/recipes-extended/msmtp/msmtp_1.4.12.bb
@@ -24,12 +24,12 @@ PACKAGECONFIG[libidn] = "--with-libidn,--without-libidn,libidn"
 
 inherit gettext autotools update-alternatives
 
-ALTERNATIVE_${PN} = "sendmail"
+ALTERNATIVE:${PN} = "sendmail"
 ALTERNATIVE_TARGET[sendmail] = "${bindir}/msmtp"
 ALTERNATIVE_LINK_NAME[sendmail] = "${sbindir}/sendmail"
 ALTERNATIVE_PRIORITY = "100"
 
-pkg_postinst_${PN}_linuxstdbase () {
+pkg_postinst:${PN}:linuxstdbase () {
     # /usr/lib/sendmail is required by LSB specification
     [ ! -L $D/usr/lib/sendmail ] && ln -sf ${sbindir}/sendmail $D/usr/lib
 }
diff --git a/recipes-extended/sed/sed_4.1.2.bb b/recipes-extended/sed/sed_4.1.2.bb
index 4a58442..24f479e 100644
--- a/recipes-extended/sed/sed_4.1.2.bb
+++ b/recipes-extended/sed/sed_4.1.2.bb
@@ -18,7 +18,7 @@ SRC_URI[sha256sum] = "638e837ba765d5da0a30c98b57c2953cecea96827882f594612acace93
 
 inherit autotools texinfo update-alternatives gettext
 
-do_configure_prepend () {
+do_configure:prepend () {
 	cp ${WORKDIR}/Makevars ${S}/po/
 }
 
@@ -31,7 +31,7 @@ do_install () {
 	fi
 }
 
-ALTERNATIVE_${PN} = "sed"
+ALTERNATIVE:${PN} = "sed"
 ALTERNATIVE_LINK_NAME[sed] = "${base_bindir}/sed"
 ALTERNATIVE_PRIORITY = "100"
 
diff --git a/recipes-extended/tar/tar.inc b/recipes-extended/tar/tar.inc
index 93e4da1..e035fa6 100644
--- a/recipes-extended/tar/tar.inc
+++ b/recipes-extended/tar/tar.inc
@@ -21,7 +21,7 @@ do_install () {
     ln -s tar ${D}${bindir}/gtar
 }
 
-do_install_append_class-target() {
+do_install:append:class-target() {
     if [ "${base_bindir}" != "${bindir}" ]; then
         install -d ${D}${base_bindir}
         mv ${D}${bindir}/tar ${D}${base_bindir}/tar
@@ -32,21 +32,21 @@ do_install_append_class-target() {
 
 PACKAGES =+ "${PN}-rmt"
 
-FILES_${PN}-rmt = "${base_sbindir}/rmt*"
+FILES:${PN}-rmt = "${base_sbindir}/rmt*"
 
 inherit update-alternatives
 
 ALTERNATIVE_PRIORITY = "100"
 
-ALTERNATIVE_${PN} = "tar"
-ALTERNATIVE_${PN}-rmt = "rmt"
-ALTERNATIVE_${PN}_class-nativesdk = ""
-ALTERNATIVE_${PN}-rmt_class-nativesdk = ""
+ALTERNATIVE:${PN} = "tar"
+ALTERNATIVE:${PN}-rmt = "rmt"
+ALTERNATIVE:${PN}:class-nativesdk = ""
+ALTERNATIVE:${PN}-rmt:class-nativesdk = ""
 
 ALTERNATIVE_LINK_NAME[tar] = "${base_bindir}/tar"
 ALTERNATIVE_LINK_NAME[rmt] = "${base_sbindir}/rmt"
 
-PROVIDES_append_class-native = " tar-replacement-native"
+PROVIDES:append:class-native = " tar-replacement-native"
 NATIVE_PACKAGE_PATH_SUFFIX = "/${PN}"
 
 BBCLASSEXTEND = "native nativesdk"
diff --git a/recipes-extended/texinfo/texinfo_4.8.bb b/recipes-extended/texinfo/texinfo_4.8.bb
index 13678e0..ea269cc 100644
--- a/recipes-extended/texinfo/texinfo_4.8.bb
+++ b/recipes-extended/texinfo/texinfo_4.8.bb
@@ -7,15 +7,15 @@ SECTION = "console/utils"
 LICENSE = "GPLv2"
 LIC_FILES_CHKSUM = "file://COPYING;md5=94d55d512a9ba36caa9b7df079bae19f"
 
-PROVIDES_append_class-native = " texinfo-4.8-replacement-native"
+PROVIDES:append:class-native = " texinfo-4.8-replacement-native"
 
 DEPENDS = "zlib ncurses texinfo-4.8-replacement-native"
-DEPENDS_class-native = "zlib-native ncurses-native"
+DEPENDS:class-native = "zlib-native ncurses-native"
 
 TARGET_PATCH = "file://use_host_makedoc.patch \
            file://using-native-makeinfo.patch \
 "
-TARGET_PATCH_class-native = ""
+TARGET_PATCH:class-native = ""
 
 SRC_URI = "${GNU_MIRROR}/texinfo/${BP}.tar.gz \
            file://check-locale-h.patch \
@@ -30,25 +30,25 @@ tex_texinfo = "texmf/tex/texinfo"
 
 inherit gettext autotools
 
-do_install_append() {
+do_install:append() {
 	mkdir -p ${D}${datadir}/${tex_texinfo}
 	install -p -m644 ${S}/doc/texinfo.tex ${S}/doc/txi-??.tex ${D}${datadir}/${tex_texinfo}
 }
 
-do_install_append_class-native() {
+do_install:append:class-native() {
 	install -m 755 info/makedoc ${D}${bindir}
 	install -m 755 makeinfo/makeinfo ${D}${bindir}
 }
 
 PACKAGES += "info info-doc"
 
-FILES_info = "${bindir}/info ${bindir}/infokey ${bindir}/install-info"
-FILES_info-doc = "${infodir}/info.info ${infodir}/dir ${infodir}/info-*.info \
+FILES:info = "${bindir}/info ${bindir}/infokey ${bindir}/install-info"
+FILES:info-doc = "${infodir}/info.info ${infodir}/dir ${infodir}/info-*.info \
                   ${mandir}/man1/info.1* ${mandir}/man5/info.5* \
                   ${mandir}/man1/infokey.1* ${mandir}/man1/install-info.1*"
 
-FILES_${PN} = "${bindir}/makeinfo ${bindir}/texi* ${bindir}/pdftexi2dvi ${bindir}/pod2texi ${datadir}/texinfo"
-FILES_${PN}-doc = "${infodir}/texinfo* \
+FILES:${PN} = "${bindir}/makeinfo ${bindir}/texi* ${bindir}/pdftexi2dvi ${bindir}/pod2texi ${datadir}/texinfo"
+FILES:${PN}-doc = "${infodir}/texinfo* \
                    ${datadir}/${tex_texinfo} \
                    ${mandir}/man1 ${mandir}/man5"
 
diff --git a/recipes-extended/time/time_1.7.bb b/recipes-extended/time/time_1.7.bb
index e5713db..ccc7788 100644
--- a/recipes-extended/time/time_1.7.bb
+++ b/recipes-extended/time/time_1.7.bb
@@ -8,7 +8,7 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=8ca43cbc842c2336e835926c2166c28b"
 
 inherit texinfo update-alternatives
 
-ALTERNATIVE_${PN} = "time"
+ALTERNATIVE:${PN} = "time"
 ALTERNATIVE_PRIORITY = "100"
 
 BBCLASSEXTEND = "native nativesdk"
diff --git a/recipes-extended/which/which_2.18.bb b/recipes-extended/which/which_2.18.bb
index eb6cc99..63b43c4 100644
--- a/recipes-extended/which/which_2.18.bb
+++ b/recipes-extended/which/which_2.18.bb
@@ -23,12 +23,12 @@ DEPENDS = "cwautomacros-native"
 
 inherit autotools texinfo update-alternatives
 
-do_configure_prepend() {
+do_configure:prepend() {
 	OLD="@ACLOCAL_CWFLAGS@"
 	NEW="-I ${STAGING_DIR_NATIVE}/${datadir}/cwautomacros/m4"
 	sed -i "s#${OLD}#${NEW}#g" `grep -rl ${OLD} ${S}`
 }
 
-ALTERNATIVE_${PN} = "which"
+ALTERNATIVE:${PN} = "which"
 ALTERNATIVE_PRIORITY = "100"
 
diff --git a/recipes-sato/rxvt-unicode/rxvt-unicode.inc b/recipes-sato/rxvt-unicode/rxvt-unicode.inc
index b568f04..4da2596 100644
--- a/recipes-sato/rxvt-unicode/rxvt-unicode.inc
+++ b/recipes-sato/rxvt-unicode/rxvt-unicode.inc
@@ -15,10 +15,10 @@ SRC_URI = "http://dist.schmorp.de/rxvt-unicode/Attic/rxvt-unicode-${PV}.tar.bz2
 inherit autotools pkgconfig update-alternatives
 
 PROVIDES = "virtual/x-terminal-emulator"
-ALTERNATIVE_${PN} = "x-terminal-emulator"
+ALTERNATIVE:${PN} = "x-terminal-emulator"
 ALTERNATIVE_TARGET[x-terminal-emulator] = "${bindir}/rxvt"
 
-CFLAGS_append = " -fpermissive"
+CFLAGS:append = " -fpermissive"
 
 EXTRA_OECONF = "--enable-xim \
 		--enable-utmp --enable-wtmp --enable-lastlog \
@@ -33,20 +33,20 @@ EXTRA_OECONF = "--enable-xim \
 PACKAGECONFIG ??= ""
 PACKAGECONFIG[startup] = "--enable-startup-notification,--disable-startup-notification,startup-notification,"
 
-do_configure_prepend () {
+do_configure:prepend () {
 	if [ ! -e ${S}/acinclude.m4 ]; then
 		cp ${S}/aclocal.m4 ${S}/acinclude.m4
 	fi
 }
 
-do_compile_prepend () {
+do_compile:prepend () {
 	echo '#define UTMP_FILE "${localstatedir}/run/utmp"' >> config.h
 	echo '#define WTMP_FILE "${localstatedir}/log/wtmp"' >> config.h
 	echo '#define LASTLOG_FILE "${localstatedir}/log/lastlog"' >> config.h
 	echo '#define HAVE_XLOCALE 1' >> config.h
 }
 
-do_install_append () {
+do_install:append () {
 	install -d ${D}/${datadir}
 	install -d ${D}/${datadir}/applications
 	install -d ${D}/${datadir}/pixmaps/
@@ -55,4 +55,4 @@ do_install_append () {
 	install -m 0644 ${WORKDIR}/rxvt.desktop ${D}/${datadir}/applications
 }
 
-FILES_${PN} += "${datadir}/applications/rxvt.desktop ${datadir}/pixmaps/rxvt.png"
+FILES:${PN} += "${datadir}/applications/rxvt.desktop ${datadir}/pixmaps/rxvt.png"
diff --git a/recipes-support/gdbm/gdbm_1.8.3.bb b/recipes-support/gdbm/gdbm_1.8.3.bb
index b253dc1..b7551ad 100644
--- a/recipes-support/gdbm/gdbm_1.8.3.bb
+++ b/recipes-support/gdbm/gdbm_1.8.3.bb
@@ -18,7 +18,7 @@ inherit autotools texinfo
 
 BBCLASSEXTEND = "native nativesdk"
 
-do_install_append () {
+do_install:append () {
     oe_runmake install-compat DESTDIR=${D}
     install -d ${D}${includedir}/gdbm
     install -m 0644 ${S}/dbm.h ${D}${includedir}/
diff --git a/recipes-support/gmp/gmp.inc b/recipes-support/gmp/gmp.inc
index abac8cf..60520c2 100644
--- a/recipes-support/gmp/gmp.inc
+++ b/recipes-support/gmp/gmp.inc
@@ -8,5 +8,5 @@ inherit autotools texinfo
 PACKAGECONFIG ??= ""
 PACKAGECONFIG[readline] = "--with-readline=yes,--with-readline=no,readline"
 
-ARM_INSTRUCTION_SET_armv4 = "arm"
-ARM_INSTRUCTION_SET_armv5 = "arm"
+ARM_INSTRUCTION_SET:armv4 = "arm"
+ARM_INSTRUCTION_SET:armv5 = "arm"
diff --git a/recipes-support/gmp/gmp_4.2.1.bb b/recipes-support/gmp/gmp_4.2.1.bb
index 029e728..88d8f9b 100644
--- a/recipes-support/gmp/gmp_4.2.1.bb
+++ b/recipes-support/gmp/gmp_4.2.1.bb
@@ -1,7 +1,7 @@
 require gmp.inc
 
 LICENSE = "LGPLv2.1+ & GPLv2+"
-LICENSE_${PN} = "LGPLv2.1+"
+LICENSE:${PN} = "LGPLv2.1+"
 
 LIC_FILES_CHKSUM = "file://COPYING;md5=892f569a555ba9c07a568a7c0c4fa63a \
                     file://COPYING.LIB;md5=fbc093901857fcd118f065f900982c24 \
diff --git a/recipes-support/gnupg/gnupg_1.4.7.bb b/recipes-support/gnupg/gnupg_1.4.7.bb
index c7da052..7f146a1 100644
--- a/recipes-support/gnupg/gnupg_1.4.7.bb
+++ b/recipes-support/gnupg/gnupg_1.4.7.bb
@@ -100,14 +100,14 @@ do_install () {
 }
 
 # split out gpgv from main package
-RDEPENDS_${PN} = "gpgv"
-RDEPENDS_${PN}_class-native = ""
+RDEPENDS:${PN} = "gpgv"
+RDEPENDS:${PN}:class-native = ""
 
 PACKAGES =+ "gpgv"
-FILES_gpgv = "${bindir}/gpgv"
+FILES:gpgv = "${bindir}/gpgv"
 
 # Exclude debug files from the main packages
-FILES_${PN} = "${bindir}/* ${datadir}/${BPN} ${libexecdir}/${BPN}/*"
+FILES:${PN} = "${bindir}/* ${datadir}/${BPN} ${libexecdir}/${BPN}/*"
 
 PACKAGECONFIG ??= ""
 PACKAGECONFIG[curl] = "--with-libcurl=${STAGING_LIBDIR},--without-libcurl,curl"
diff --git a/recipes-support/gnutls/gnutls.inc b/recipes-support/gnutls/gnutls.inc
index 6b46e54..491fdbf 100644
--- a/recipes-support/gnutls/gnutls.inc
+++ b/recipes-support/gnutls/gnutls.inc
@@ -3,16 +3,16 @@ HOMEPAGE = "http://www.gnu.org/software/gnutls/"
 BUGTRACKER = "https://savannah.gnu.org/support/?group=gnutls"
 
 LICENSE = "GPLv3+ & LGPLv2.1+"
-LICENSE_${PN} = "LGPLv2.1+"
-LICENSE_${PN}-xx = "LGPLv2.1+"
-LICENSE_${PN}-bin = "GPLv3+"
-LICENSE_${PN}-openssl = "GPLv3+"
+LICENSE:${PN} = "LGPLv2.1+"
+LICENSE:${PN}-xx = "LGPLv2.1+"
+LICENSE:${PN}-bin = "GPLv3+"
+LICENSE:${PN}-openssl = "GPLv3+"
 
 LIC_FILES_CHKSUM = "file://COPYING;md5=d32239bcb673463ab874e80d47fae504 \
                     file://COPYING.LESSER;md5=a6f89e2100d9b6cdffcea4f398e37343"
 
 DEPENDS = "nettle gmp virtual/libiconv"
-DEPENDS_append_libc-musl = " argp-standalone"
+DEPENDS:append:libc-musl = " argp-standalone"
 
 SHRT_VER = "${@d.getVar('PV').split('.')[0]}.${@d.getVar('PV').split('.')[1]}"
 
@@ -38,9 +38,9 @@ EXTRA_OECONF = " \
     --with-libpthread-prefix=${STAGING_DIR_HOST}${prefix} \
 "
 
-LDFLAGS_append_libc-musl = " -largp"
+LDFLAGS:append:libc-musl = " -largp"
 
-do_configure_prepend() {
+do_configure:prepend() {
 	for dir in . lib; do
 		rm -f ${dir}/aclocal.m4 ${dir}/m4/libtool.m4 ${dir}/m4/lt*.m4
 	done
@@ -48,8 +48,8 @@ do_configure_prepend() {
 
 PACKAGES =+ "${PN}-openssl ${PN}-xx"
 
-FILES_${PN}-dev += "${bindir}/gnutls-cli-debug"
-FILES_${PN}-openssl = "${libdir}/libgnutls-openssl.so.*"
-FILES_${PN}-xx = "${libdir}/libgnutlsxx.so.*"
+FILES:${PN}-dev += "${bindir}/gnutls-cli-debug"
+FILES:${PN}-openssl = "${libdir}/libgnutls-openssl.so.*"
+FILES:${PN}-xx = "${libdir}/libgnutlsxx.so.*"
 
 BBCLASSEXTEND = "native nativesdk"
diff --git a/recipes-support/libiconv/libiconv_1.11.1.bb b/recipes-support/libiconv/libiconv_1.11.1.bb
index f28e64a..1e6668e 100644
--- a/recipes-support/libiconv/libiconv_1.11.1.bb
+++ b/recipes-support/libiconv/libiconv_1.11.1.bb
@@ -31,17 +31,17 @@ EXTRA_OECONF += "--enable-shared --enable-static --enable-relocatable"
 
 LEAD_SONAME = "libiconv.so"
 
-do_configure_prepend () {
+do_configure:prepend () {
 	rm -f ${S}/m4/libtool.m4 ${S}/m4/ltoptions.m4 ${S}/m4/ltsugar.m4 ${S}/m4/ltversion.m4 ${S}/m4/lt~obsolete.m4 ${S}/libcharset/m4/libtool.m4 ${S}/libcharset/m4/ltoptions.m4 ${S}/libcharset/m4/ltsugar.m4 ${S}/libcharset/m4/ltversion.m4 ${S}/libcharset/m4/lt~obsolete.m4
 }
 
-do_configure_append () {
+do_configure:append () {
         # forcibly remove RPATH from libtool
         sed -i 's|^hardcode_libdir_flag_spec=.*|hardcode_libdir_flag_spec=""|g' *libtool
         sed -i 's|^runpath_var=LD_RUN_PATH|runpath_var=_NO_RPATH_|g' *libtool
 }
 
-do_install_append () {
+do_install:append () {
 	rm -rf ${D}${libdir}/preloadable_libiconv.so
 	rm -rf ${D}${libdir}/charset.alias
 }
diff --git a/recipes-support/nettle/nettle.inc b/recipes-support/nettle/nettle.inc
index af51fb6..5c27c1e 100644
--- a/recipes-support/nettle/nettle.inc
+++ b/recipes-support/nettle/nettle.inc
@@ -15,7 +15,7 @@ inherit autotools ptest
 
 EXTRA_OECONF = "--disable-openssl"
 
-do_configure_prepend() {
+do_configure:prepend() {
        if [ ! -e ${S}/acinclude.m4 -a -e ${S}/aclocal.m4 ]; then
                cp ${S}/aclocal.m4 ${S}/acinclude.m4
        fi
diff --git a/recipes-support/nettle/nettle_2.7.1.bb b/recipes-support/nettle/nettle_2.7.1.bb
index 2006146..7ff03dd 100644
--- a/recipes-support/nettle/nettle_2.7.1.bb
+++ b/recipes-support/nettle/nettle_2.7.1.bb
@@ -1,7 +1,7 @@
 require nettle.inc
 
 LICENSE = "LGPLv2.1+ & GPLv2"
-LICENSE_${PN} = "LGPLv2.1+"
+LICENSE:${PN} = "LGPLv2.1+"
 
 LIC_FILES_CHKSUM = "file://COPYING.LIB;md5=2d5025d4aa3495befef8f17206a5b0a1 \
                     file://serpent-decrypt.c;beginline=53;endline=67;md5=bcfd4745d53ca57f82907089898e390d \
diff --git a/recipes-support/shared-mime-info/shared-mime-info.inc b/recipes-support/shared-mime-info/shared-mime-info.inc
index 2614d3a..06d0422 100644
--- a/recipes-support/shared-mime-info/shared-mime-info.inc
+++ b/recipes-support/shared-mime-info/shared-mime-info.inc
@@ -13,14 +13,14 @@ inherit autotools pkgconfig gettext mime
 
 EXTRA_OECONF = "--disable-update-mimedb"
 
-FILES_${PN} += "${datadir}/mime"
-FILES_${PN}-dev += "${datadir}/pkgconfig/shared-mime-info.pc"
+FILES:${PN} += "${datadir}/mime"
+FILES:${PN}-dev += "${datadir}/pkgconfig/shared-mime-info.pc"
 
 # freedesktop.org.xml is only required when updating the mime database,
 # package it separately
 PACKAGES =+ "shared-mime-info-data"
-FILES_shared-mime-info-data = "${datadir}/mime/packages/freedesktop.org.xml"
-RDEPENDS_shared-mime-info-data = "shared-mime-info"
+FILES:shared-mime-info-data = "${datadir}/mime/packages/freedesktop.org.xml"
+RDEPENDS:shared-mime-info-data = "shared-mime-info"
 
 do_install () {
 	autotools_do_install
@@ -28,7 +28,7 @@ do_install () {
 	update-mime-database ${D}${datadir}/mime
 }
 
-do_install_class-native () {
+do_install:class-native () {
 	autotools_do_install
 
 	${B}/update-mime-database ${D}${datadir}/mime
-- 
2.30.2

