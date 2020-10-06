Received: from mail-pj1-f46.google.com (mail-pj1-f46.google.com [209.85.216.46])
 by mx.groups.io with SMTP id smtpd.web10.13885.1601989756834433196
 for <yocto@lists.yoctoproject.org>;
 Tue, 06 Oct 2020 06:09:16 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=tWXxaytl;
 spf=pass (domain: gmail.com, ip: 209.85.216.46, mailfrom: akuster808@gmail.com)
Received: by mail-pj1-f46.google.com with SMTP id nl2so1420333pjb.1
        for <yocto@lists.yoctoproject.org>; Tue, 06 Oct 2020 06:09:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id;
        bh=1SplisSoQcP7QXrD86khpSSM3Trr3BIg3imRgG/cC7s=;
        b=tWXxaytlubjlWfGGVYM/7hUoSHYp7D5TiJ52OxqdG/EUftHs0c8uODwWX8t2k+/sHY
         979vBYLsBLxWLHyvwMzBt66VdCJYJtPfoz8LFW9YzDSSApGGFFczDl73aFaWJ+/g1l3A
         q81BdUreXK3G8rjNY3nKE8HkaeDgUAOsMwgzrDxr1yWzfM8H1us0smY+kSF6UL03f8tB
         cHSj/qD45VjoyeVqgfiG9dBqZoSd60+6w4OtZoDkMKzN8XUz/8scRnYQpJtV0KUorN18
         aP/QRD/2CON30+y96K+KKGlDac4pJNHFMOrj6QdUOYIIhQBPJTjtrznAz1Yaa662LPzh
         7Amg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id;
        bh=1SplisSoQcP7QXrD86khpSSM3Trr3BIg3imRgG/cC7s=;
        b=EgkkQqPq1iLbrcPjUWKQJxY6Igf/Qm7BoBmWmEyGsnM7IQJ1Rte1C3dGvVzfqeEkLv
         doKjl+o+sfw3ZHIkYfAhKGhnQOFo8LC3QB9jYNlubq89+HGEqzUxBuYHmixyh622kAJQ
         JiXmHni8uKDawjnTDpEnV3TCY+AXSOmOWQcGLG+LWrB/GoA304R9812aHzljtvw8StVP
         DGNVoBk6CUJ6x/3AuCWas01NuA0opvoXb44LcV4czHmtNqOLXpdAbaoCZUqPFbUei51m
         uCFCdnrDhx/4JaPrSfNxvAPSEr4qjjuiEA2omRS2XY5LqwYxKxzJXhp3OXrPxAvqo9Cv
         NOUg==
X-Gm-Message-State: AOAM532pM7Vv7TtzPUKfFgJvlKbCr2O/I6zpLBbCcxxMy1qWsy3QbjJO
	H/n0SOx/V/szSEChi2kcLJA7GtaoslM=
X-Google-Smtp-Source: ABdhPJxZju7cbGZqkRw6qMizcK7nudA/3eRMkidUuIkHATOoOiHV2NMRCyOJiKntcN6Jb74WArJhHA==
X-Received: by 2002:a17:90a:160f:: with SMTP id n15mr4123146pja.75.1601989755353;
        Tue, 06 Oct 2020 06:09:15 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from akuster-ThinkPad-T460s.hsd1.ca.comcast.net ([2601:202:4180:a5c0:b0a2:cae9:29e5:459f])
        by smtp.gmail.com with ESMTPSA id h9sm3110357pgk.52.2020.10.06.06.09.13
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Oct 2020 06:09:14 -0700 (PDT)
From: "akuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 1/3] apparmor: update to 3.0
Date: Tue,  6 Oct 2020 06:09:10 -0700
Message-Id: <20201006130912.18105-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1

skip ptest for now, on todo list for fix.
Runtime test pass

remove patch now included in update: 0001-regression-tests-Don-t-build-syscall_sysctl-if-missi.patch

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../{apparmor_2.13.4.bb => apparmor_3.0.bb}   | 62 +++++-------
 ...Update-make-check-to-select-tools-ba.patch | 91 ++++++++++++++++++
 .../0001-apparmor-fix-manpage-order.patch     | 43 +++++++++
 ...-Don-t-build-syscall_sysctl-if-missi.patch | 96 -------------------
 recipes-mac/AppArmor/files/functions          |  2 +-
 5 files changed, 158 insertions(+), 136 deletions(-)
 rename recipes-mac/AppArmor/{apparmor_2.13.4.bb => apparmor_3.0.bb} (70%)
 create mode 100644 recipes-mac/AppArmor/files/0001-Revert-profiles-Update-make-check-to-select-tools-ba.patch
 create mode 100644 recipes-mac/AppArmor/files/0001-apparmor-fix-manpage-order.patch
 delete mode 100644 recipes-mac/AppArmor/files/0001-regression-tests-Don-t-build-syscall_sysctl-if-missi.patch

diff --git a/recipes-mac/AppArmor/apparmor_2.13.4.bb b/recipes-mac/AppArmor/apparmor_3.0.bb
similarity index 70%
rename from recipes-mac/AppArmor/apparmor_2.13.4.bb
rename to recipes-mac/AppArmor/apparmor_3.0.bb
index 6ba1ea8..9c98199 100644
--- a/recipes-mac/AppArmor/apparmor_2.13.4.bb
+++ b/recipes-mac/AppArmor/apparmor_3.0.bb
@@ -11,10 +11,10 @@ SECTION = "admin"
 LICENSE = "GPLv2 & GPLv2+ & BSD-3-Clause & LGPLv2.1+"
 LIC_FILES_CHKSUM = "file://${S}/LICENSE;md5=fd57a4b0bc782d7b80fd431f10bbf9d0"
 
-DEPENDS = "bison-native apr gettext-native coreutils-native"
+DEPENDS = "bison-native apr gettext-native coreutils-native swig-native"
 
 SRC_URI = " \
-    git://gitlab.com/apparmor/apparmor.git;protocol=https;branch=apparmor-2.13 \
+    git://gitlab.com/apparmor/apparmor.git;protocol=https;branch=apparmor-3.0 \
     file://disable_perl_h_check.patch \
     file://crosscompile_perl_bindings.patch \
     file://apparmor.rc \
@@ -23,32 +23,31 @@ SRC_URI = " \
     file://apparmor.service \
     file://0001-Makefile.am-suppress-perllocal.pod.patch \
     file://run-ptest \
-    file://0001-regression-tests-Don-t-build-syscall_sysctl-if-missi.patch \
+    file://0001-apparmor-fix-manpage-order.patch \
+    file://0001-Revert-profiles-Update-make-check-to-select-tools-ba.patch \
     "
 
-SRCREV = "df0ac742f7a1146181d8734d03334494f2015134"
+SRCREV = "5d51483bfecf556183558644dc8958135397a7e2"
 S = "${WORKDIR}/git"
 
 PARALLEL_MAKE = ""
 
 COMPATIBLE_MACHINE_mips64 = "(!.*mips64).*"
 
-inherit pkgconfig autotools-brokensep update-rc.d python3native perlnative ptest cpan manpages systemd features_check
+inherit pkgconfig autotools-brokensep update-rc.d python3native perlnative cpan systemd features_check bash-completion
+
 REQUIRED_DISTRO_FEATURES = "apparmor"
 
-PACKAGECONFIG ??= "python perl aa-decode"
+PACKAGECONFIG ?= "python perl aa-decode"
 PACKAGECONFIG[manpages] = "--enable-man-pages, --disable-man-pages"
-PACKAGECONFIG[python] = "--with-python, --without-python, python3 swig-native"
-PACKAGECONFIG[perl] = "--with-perl, --without-perl, perl perl-native swig-native"
+PACKAGECONFIG[python] = "--with-python, --without-python, python3 , python3-core python3-modules"
+PACKAGECONFIG[perl] = "--with-perl, --without-perl, "
 PACKAGECONFIG[apache2] = ",,apache2,"
 PACKAGECONFIG[aa-decode] = ",,,bash"
 
-PAMLIB="${@bb.utils.contains('DISTRO_FEATURES', 'pam', '1', '0', d)}"
-HTTPD="${@bb.utils.contains('PACKAGECONFIG', 'apache2', '1', '0', d)}"
-
 python() {
     if 'apache2' in d.getVar('PACKAGECONFIG').split() and \
-            'webserver' not in d.getVar('BBFILE_COLLECTIONS').split():
+       'webserver' not in d.getVar('BBFILE_COLLECTIONS').split():
         raise bb.parse.SkipRecipe('Requires meta-webserver to be present.')
 }
 
@@ -64,24 +63,18 @@ do_configure() {
 }
 
 do_compile () {
-    # Fixes:
-    # | sed -ie 's///g' Makefile.perl
-    # | sed: -e expression #1, char 0: no previous regular expression
-    #| Makefile:478: recipe for target 'Makefile.perl' failed
     sed -i "s@sed -ie 's///g' Makefile.perl@@" ${S}/libraries/libapparmor/swig/perl/Makefile
-
-
     oe_runmake -C ${B}/libraries/libapparmor
     oe_runmake -C ${B}/binutils
     oe_runmake -C ${B}/utils
     oe_runmake -C ${B}/parser
     oe_runmake -C ${B}/profiles
 
-    if test -z "${HTTPD}" ; then
+    if ${@bb.utils.contains('PACKAGECONFIG','apache2','true','false', d)}; then
         oe_runmake -C ${B}/changehat/mod_apparmor
     fi
 
-    if test -z "${PAMLIB}" ; then
+    if ${@bb.utils.contains('DISTRO_FEATURES', 'pam', 'true', 'false', d)}; then
         oe_runmake -C ${B}/changehat/pam_apparmor
     fi
 }
@@ -95,31 +88,21 @@ do_install () {
     oe_runmake -C ${B}/parser DESTDIR="${D}" install
     oe_runmake -C ${B}/profiles DESTDIR="${D}" install
 
-    # If perl is disabled this script won't be any good
-    if ! ${@bb.utils.contains('PACKAGECONFIG','perl','true','false', d)}; then
-        rm -f ${D}${sbindir}/aa-notify
-    fi
-
     if ! ${@bb.utils.contains('PACKAGECONFIG','aa-decode','true','false', d)}; then
         rm -f ${D}${sbindir}/aa-decode
     fi
 
-    if test -z "${HTTPD}" ; then
+    if ${@bb.utils.contains('PACKAGECONFIG','apache2','true','false', d)}; then
         oe_runmake -C ${B}/changehat/mod_apparmor DESTDIR="${D}" install
     fi
 
-    if test -z "${PAMLIB}" ; then
+    if ${@bb.utils.contains('DISTRO_FEATURES', 'pam', 'true', 'false', d)}; then
+        install -d ${D}/lib/security
         oe_runmake -C ${B}/changehat/pam_apparmor DESTDIR="${D}" install
     fi
 
-    # aa-easyprof is installed by python-tools-setup.py, fix it up
-    sed -i -e 's:/usr/bin/env.*:/usr/bin/python3:' ${D}${bindir}/aa-easyprof
-    chmod 0755 ${D}${bindir}/aa-easyprof
-
-    install ${WORKDIR}/apparmor ${D}/${INIT_D_DIR}/apparmor
-    install ${WORKDIR}/functions ${D}/lib/apparmor
-    sed -i -e 's/getconf _NPROCESSORS_ONLN/nproc/' ${D}/lib/apparmor/functions
-    sed -i -e 's/ls -AU/ls -A/' ${D}/lib/apparmor/functions  
+    install -m 755 ${WORKDIR}/apparmor ${D}/${INIT_D_DIR}/apparmor
+    install -m 755 ${WORKDIR}/functions ${D}/lib/apparmor
 
     if ${@bb.utils.contains('DISTRO_FEATURES','systemd','true','false',d)}; then
         install -d ${D}${systemd_system_unitdir}
@@ -138,8 +121,8 @@ do_compile_ptest_arm () {
 
 do_compile_ptest () {
     sed -i -e 's/cpp \-dM/${HOST_PREFIX}gcc \-dM/' ${B}/tests/regression/apparmor/Makefile
-    oe_runmake -C ${B}/tests/regression/apparmor
-    oe_runmake -C ${B}/libraries/libapparmor
+    oe_runmake -C ${B}/tests/regression/apparmor USE_SYSTEM=0
+    oe_runmake -C ${B}/libraries/libapparmor 
 }
 
 do_install_ptest () {
@@ -189,12 +172,13 @@ SYSTEMD_AUTO_ENABLE ?= "enable"
 
 PACKAGES += "mod-${PN}"
 
-FILES_${PN} += "/lib/apparmor/ ${sysconfdir}/apparmor ${PYTHON_SITEPACKAGES_DIR}"
+FILES_${PN} += "/lib/apparmor/ /lib/security/ ${sysconfdir}/apparmor ${PYTHON_SITEPACKAGES_DIR}"
 FILES_mod-${PN} = "${libdir}/apache2/modules/*"
 
 # Add coreutils and findutils only if sysvinit scripts are in use
-RDEPENDS_${PN} +=  "${@["coreutils findutils", ""][(d.getVar('VIRTUAL-RUNTIME_init_manager') == 'systemd')]} ${@bb.utils.contains('PACKAGECONFIG','python','python3-core python3-modules','', d)}"
+RDEPENDS_${PN} +=  "glibc-utils ${@["coreutils findutils", ""][(d.getVar('VIRTUAL-RUNTIME_init_manager') == 'systemd')]} ${@bb.utils.contains('PACKAGECONFIG','python','python3-core python3-modules','', d)}"
 RDEPENDS_${PN}_remove += "${@bb.utils.contains('PACKAGECONFIG','perl','','perl', d)}"
 RDEPENDS_${PN}-ptest += "perl coreutils dbus-lib bash"
 
+INSANE_SKIP_${PN} = "ldflags"
 PRIVATE_LIBS_${PN}-ptest = "libapparmor.so*"
diff --git a/recipes-mac/AppArmor/files/0001-Revert-profiles-Update-make-check-to-select-tools-ba.patch b/recipes-mac/AppArmor/files/0001-Revert-profiles-Update-make-check-to-select-tools-ba.patch
new file mode 100644
index 0000000..791437d
--- /dev/null
+++ b/recipes-mac/AppArmor/files/0001-Revert-profiles-Update-make-check-to-select-tools-ba.patch
@@ -0,0 +1,91 @@
+From 5ed21abbef4d4c2983e70bd2868fb817150e883e Mon Sep 17 00:00:00 2001
+From: Armin Kuster <akuster808@gmail.com>
+Date: Sat, 3 Oct 2020 11:26:46 -0700
+Subject: [PATCH] Revert "profiles: Update 'make check' to select tools based
+ on USE_SYSTEM"
+
+This reverts commit 6016f931ebf7b61e1358f19453ef262d9d184a4e.
+
+Upstream-Statue: OE specific
+These changes cause during packaging with perms changing.
+
+Signed-off-by: Armin Kuster <akuster808@gmail.com>
+
+---
+ profiles/Makefile | 50 ++++++++++-------------------------------------
+ 1 file changed, 10 insertions(+), 40 deletions(-)
+
+diff --git a/profiles/Makefile b/profiles/Makefile
+index ba47fc16..5384cb05 100644
+--- a/profiles/Makefile
++++ b/profiles/Makefile
+@@ -35,49 +35,9 @@ EXTRAS_SOURCE=./apparmor/profiles/extras/
+ SUBDIRS=$(shell find ${PROFILES_SOURCE} -type d -print)
+ TOPLEVEL_PROFILES=$(filter-out ${SUBDIRS}, $(wildcard ${PROFILES_SOURCE}/*))
+ 
+-ifdef USE_SYSTEM
+-    PYTHONPATH=
+-    PARSER?=apparmor_parser
+-    LOGPROF?=aa-logprof
+-else
+-    # PYTHON_DIST_BUILD_PATH based on libapparmor/swig/python/test/Makefile.am
+-    PYTHON_DIST_BUILD_PATH = ../libraries/libapparmor/swig/python/build/$$($(PYTHON) -c "import distutils.util; import platform; print(\"lib.%s-%s\" %(distutils.util.get_platform(), platform.python_version()[:3]))")
+-    LIBAPPARMOR_PATH=../libraries/libapparmor/src/.libs/
+-    LD_LIBRARY_PATH=$(LIBAPPARMOR_PATH):$(PYTHON_DIST_BUILD_PATH)
+-    PYTHONPATH=../utils/:$(PYTHON_DIST_BUILD_PATH)
+-    PARSER?=../parser/apparmor_parser
+-    # use ../utils logprof
+-    LOGPROF?=LD_LIBRARY_PATH=$(LD_LIBRARY_PATH) PYTHONPATH=$(PYTHONPATH) $(PYTHON) ../utils/aa-logprof
+-endif
+-
+ # $(PWD) is wrong when using "make -C profiles" - explicitely set it here to get the right value
+ PWD=$(shell pwd)
+ 
+-.PHONY: test-dependencies
+-test-dependencies: __parser __libapparmor
+-
+-
+-.PHONY: __parser __libapparmor
+-__parser:
+-ifndef USE_SYSTEM
+-	@if [ ! -f $(PARSER) ]; then \
+-		echo "error: $(PARSER) is missing. Pick one of these possible solutions:" 1>&2; \
+-		echo "  1) Test using the in-tree parser by building it first and then trying again. See the top-level README for help." 1>&2; \
+-		echo "  2) Test using the system parser by adding USE_SYSTEM=1 to your make command." 1>&2; \
+-		exit 1; \
+-	fi
+-endif
+-
+-__libapparmor:
+-ifndef USE_SYSTEM
+-	@if [ ! -f $(LIBAPPARMOR_PATH)libapparmor.so ]; then \
+-		echo "error: $(LIBAPPARMOR_PATH)libapparmor.so is missing. Pick one of these possible solutions:" 1>&2; \
+-		echo "  1) Build against the in-tree libapparmor by building it first and then trying again. See the top-level README for help." 1>&2; \
+-		echo "  2) Build against the system libapparmor by adding USE_SYSTEM=1 to your make command." 1>&2; \
+-		exit 1; \
+-	fi
+-endif
+-
+ local:
+ 	for profile in ${TOPLEVEL_PROFILES}; do \
+ 		fn=$$(basename $$profile); \
+@@ -109,6 +69,16 @@ else
+   Q=
+ endif
+ 
++ifndef PARSER
++# use system parser
++PARSER=../parser/apparmor_parser
++endif
++
++ifndef LOGPROF
++# use ../utils logprof
++LOGPROF=PYTHONPATH=../utils $(PYTHON) ../utils/aa-logprof
++endif
++
+ .PHONY: docs
+ # docs: should we have some here?
+ docs:
+-- 
+2.17.1
+
diff --git a/recipes-mac/AppArmor/files/0001-apparmor-fix-manpage-order.patch b/recipes-mac/AppArmor/files/0001-apparmor-fix-manpage-order.patch
new file mode 100644
index 0000000..9f3dce4
--- /dev/null
+++ b/recipes-mac/AppArmor/files/0001-apparmor-fix-manpage-order.patch
@@ -0,0 +1,43 @@
+From c9baef0c70122e1be33b627874772e6e9a5d7744 Mon Sep 17 00:00:00 2001
+From: Armin Kuster <akuster808@gmail.com>
+Date: Fri, 2 Oct 2020 19:43:44 -0700
+Subject: [PATCH] apparmor: fix manpage order
+
+It trys to create a symlink before the man pages are installed.
+
+ ln -sf aa-status.8 /(path}/apparmor/3.0-r0/image/usr/share/man/man8/apparmor_status.8
+ | ln: failed to create symbolic link '{path}/apparmor/3.0-r0/image/usr/share/man/man8/apparmor_status.8': No such file or directory
+
+Upstream-Status: Pending
+Signed-off-by: Armin Kuster <akuster808@gmail.com>
+
+...
+
+install -d /{path}/apparmor/3.0-r0/image/usr/share/man/man8 ; install -m 644 aa-status.8 /{path}/apparmor/3.0-r0/image/usr/share/man/man8;
+
+Signed-off-by: Armin Kuster <akuster@mvista.com>
+---
+ binutils/Makefile | 2 +-
+ 1 file changed, 1 insertion(+), 1 deletion(-)
+
+diff --git a/binutils/Makefile b/binutils/Makefile
+index 99e54875..3f1d0011 100644
+--- a/binutils/Makefile
++++ b/binutils/Makefile
+@@ -156,12 +156,12 @@ install-arch: arch
+ 	install -m 755 -d ${SBINDIR}
+ 	ln -sf aa-status ${SBINDIR}/apparmor_status
+ 	install -m 755 ${SBINTOOLS} ${SBINDIR}
+-	ln -sf aa-status.8 ${DESTDIR}/${MANDIR}/man8/apparmor_status.8
+ 
+ .PHONY: install-indep
+ install-indep: indep
+ 	$(MAKE) -C po install NAME=${NAME} DESTDIR=${DESTDIR}
+ 	$(MAKE) install_manpages DESTDIR=${DESTDIR}
++	ln -sf aa-status.8 ${DESTDIR}/${MANDIR}/man8/apparmor_status.8
+ 
+ ifndef VERBOSE
+ .SILENT: clean
+-- 
+2.17.1
+
diff --git a/recipes-mac/AppArmor/files/0001-regression-tests-Don-t-build-syscall_sysctl-if-missi.patch b/recipes-mac/AppArmor/files/0001-regression-tests-Don-t-build-syscall_sysctl-if-missi.patch
deleted file mode 100644
index 3cd1e88..0000000
--- a/recipes-mac/AppArmor/files/0001-regression-tests-Don-t-build-syscall_sysctl-if-missi.patch
+++ /dev/null
@@ -1,96 +0,0 @@
-From 7a7c7fb346ded6f017c8df44486778a5f032d41a Mon Sep 17 00:00:00 2001
-From: John Johansen <john.johansen@canonical.com>
-Date: Tue, 29 Sep 2020 03:05:22 -0700
-Subject: [PATCH] regression tests: Don't build syscall_sysctl if missing
- kernel headers
-
-sys/sysctl.h is not guaranteed to exist anymore since
-https://sourceware.org/pipermail/glibc-cvs/2020q2/069366.html
-
-which is a follow on to the kernel commit
-61a47c1ad3a4 sysctl: Remove the sysctl system call
-
-While the syscall_sysctl currently checks if the kernel supports
-sysctrs before running the tests. The tests can't even build if the
-kernel headers don't have the sysctl defines.
-
-Fixes: https://gitlab.com/apparmor/apparmor/-/issues/119
-Fixes: https://bugs.launchpad.net/apparmor/+bug/1897288
-MR: https://gitlab.com/apparmor/apparmor/-/merge_requests/637
-Signed-off-by: John Johansen <john.johansen@canonical.com>
-Acked-by: Steve Beattie <steve.beattie@canonical.com>
-(cherry picked from commit 2e5a266eb715fc7e526520235a6450444775791f)
-
-Upstream-Status: Backport
-Signed-off-by: Armin Kuster <akuster808@gmail.com>
-
----
- tests/regression/apparmor/Makefile          | 10 +++++++++-
- tests/regression/apparmor/syscall_sysctl.sh | 15 +++++++++++----
- 2 files changed, 20 insertions(+), 5 deletions(-)
-
-diff --git a/tests/regression/apparmor/Makefile b/tests/regression/apparmor/Makefile
-index 198ca421..c3d0cfb7 100644
---- a/tests/regression/apparmor/Makefile
-+++ b/tests/regression/apparmor/Makefile
-@@ -69,6 +69,9 @@ endif # USE_SYSTEM
- 
- CFLAGS += -g -O0 -Wall -Wstrict-prototypes
- 
-+USE_SYSCTL:=$(shell echo "#include <sys/sysctl.h>" | cpp -dM >/dev/null 2>/dev/null && echo true)
-+
-+
- SRC=access.c \
-     at_secure.c \
-     introspect.c \
-@@ -130,7 +133,6 @@ SRC=access.c \
-     syscall_sethostname.c \
-     syscall_setdomainname.c \
-     syscall_setscheduler.c \
--    syscall_sysctl.c \
-     sysctl_proc.c \
-     tcp.c \
-     transition.c \
-@@ -146,6 +148,12 @@ ifneq (,$(findstring $(shell uname -i),i386 i486 i586 i686 x86 x86_64))
- SRC+=syscall_ioperm.c syscall_iopl.c
- endif
- 
-+#only do sysctl syscall test if defines installed and OR supported by the
-+# kernel
-+ifeq ($(USE_SYSCTL),true)
-+SRC+=syscall_sysctl.c
-+endif
-+
- #only do dbus if proper libs are installl
- ifneq (,$(shell pkg-config --exists dbus-1 && echo TRUE))
- SRC+=dbus_eavesdrop.c dbus_message.c dbus_service.c dbus_unrequested_reply.c
-diff --git a/tests/regression/apparmor/syscall_sysctl.sh b/tests/regression/apparmor/syscall_sysctl.sh
-index f93946f3..5f856984 100644
---- a/tests/regression/apparmor/syscall_sysctl.sh
-+++ b/tests/regression/apparmor/syscall_sysctl.sh
-@@ -148,11 +148,18 @@ test_sysctl_proc()
- # check if the kernel supports CONFIG_SYSCTL_SYSCALL
- # generally we want to encourage kernels to disable it, but if it's
- # enabled we want to test against it
--settest syscall_sysctl
--if ! res="$(${test} ro 2>&1)" && [ "$res" = "FAIL: sysctl read failed - Function not implemented" ] ; then
--    echo "	WARNING: syscall sysctl not implemented, skipping tests ..."
-+# In addition test that sysctl exists in the kernel headers, if it does't
-+# then we can't even built the syscall_sysctl test
-+if  echo "#include <sys/sysctl.h>" | cpp -dM >/dev/null 2>/dev/null ; then
-+    settest syscall_sysctl
-+
-+    if ! res="$(${test} ro 2>&1)" && [ "$res" = "FAIL: sysctl read failed - Function not implemented" ] ; then
-+	echo "	WARNING: syscall sysctl not implemented, skipping tests ..."
-+    else
-+	test_syscall_sysctl
-+    fi
- else
--    test_syscall_sysctl
-+    echo "	WARNING: syscall sysctl not supported by kernel headers, skipping tests ..."
- fi
- 
- # now test /proc/sys/ paths
--- 
-2.17.1
-
diff --git a/recipes-mac/AppArmor/files/functions b/recipes-mac/AppArmor/files/functions
index cef8cfe..e9e2bbf 100644
--- a/recipes-mac/AppArmor/files/functions
+++ b/recipes-mac/AppArmor/files/functions
@@ -144,7 +144,7 @@ clear_cache_var() {
 
 read_features_dir()
 {
-	for f in `ls -AU "$1"` ; do
+	for f in `ls -A "$1"` ; do
 		if [ -f "$1/$f" ] ; then
 			read -r KF < "$1/$f" || true
 			echo -n "$f {$KF } "
-- 
2.17.1

