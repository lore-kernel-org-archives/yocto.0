Return-Path: <tom.rini@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A3ED8E00B47; Tue, 13 Jun 2017 19:18:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.213.172 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-yb0-f172.google.com (mail-yb0-f172.google.com
	[209.85.213.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 28A77E009A5
	for <yocto@yoctoproject.org>; Tue, 13 Jun 2017 19:18:25 -0700 (PDT)
Received: by mail-yb0-f172.google.com with SMTP id 4so40874443ybl.1
	for <yocto@yoctoproject.org>; Tue, 13 Jun 2017 19:18:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=xos+HFXHSwTNxiSVewr/7JqamB2f95mZ0TXG4cQYeDk=;
	b=sd2WpilDjbzjVPBAgTWxe8hTZ9BbtSW02FIC012XCpuPNxBr97OjM2snXdV25qlHSj
	Yg+h7KEXPa6UFW3hjlqv2qHWWfZBLrvhlhNVKUEzoDJ7lFLQHBFVA7VHk0YQKinsS8qe
	jHFiBZJB8xwAGNNhOPNs3a/6MAt5zrhqfSuuDhVk+mJt1CcIZt+/SlM2oVzwIxnpxQkm
	YAa+WZ4zcxyt64Z3I9QJOhKglf2mamg9O50NG7gkZih3tW8Dxubh1UXpY13E2Nty8pe1
	YIxUmNjEb+C4lnkxsITGpvkEt48ho+rxwzY1mI8m9+LkuzdjeC5945IEND+fuESwsVVZ
	meXA==
X-Gm-Message-State: AKS2vOy9KCnCgot3eSp9wO6vDMkt+LWtzyFCjoQqmTbt9heLH+Wuv49Q
	m6SuIPRieA6lbqFV
X-Received: by 10.37.202.140 with SMTP id a134mr5699131ybg.182.1497406704756; 
	Tue, 13 Jun 2017 19:18:24 -0700 (PDT)
Received: from localhost.localdomain (cpe-75-180-228-133.ec.res.rr.com.
	[75.180.228.133]) by smtp.gmail.com with ESMTPSA id
	q20sm5761740ywa.20.2017.06.13.19.18.23 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Tue, 13 Jun 2017 19:18:24 -0700 (PDT)
From: Tom Rini <trini@konsulko.com>
To: yocto@yoctoproject.org
Date: Tue, 13 Jun 2017 22:18:45 -0400
Message-Id: <1497406725-20467-1-git-send-email-trini@konsulko.com>
X-Mailer: git-send-email 1.9.1
Subject: [meta-security][PATCH] apparmor: Rework such that the utilities are functional by default
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
X-List-Received-Date: Wed, 14 Jun 2017 02:18:27 -0000

This introduces a number of changes:
- Fix the python PACKAGECONFIG knob
  - The included python support is python3-based, so use those classes.
  - When set, make sure to RDEPEND on the python modules the tools use.
- Fix the perl PACKAGECONFIG knob
  - Add two patches so that configure will find perl and then compile
    will cross-compile the library correctly.
  - So that we place perl modules in the correct location we need cpan
    to be inherited.
  - When disabled, remove the RDEPENDS on perl as the RDEPENDS comes in
    via inherit.
- Default to enabling the python and perl PACKAGECONFIG knobs as the
  majority of the userspace tools are python3 based, and the few that
  aren't that nor C based are perl based.
- Because of the above we must drop the -python package because it's
  required for the utilities in the main package.

Signed-off-by: Tom Rini <trini@konsulko.com>
---
This has been tested with some brief poking in qemux86 with the apparmor
DISTRO_FEATURE added and apparmor included in core-image-minimal.  This
is also a handy way of seeing how much doesn't work in the package
without this change.
---
 recipes-security/AppArmor/apparmor_2.11.0.bb       | 17 +++++++++------
 .../files/crosscompile_perl_bindings.patch         | 25 ++++++++++++++++++++++
 .../AppArmor/files/disable_perl_h_check.patch      | 19 ++++++++++++++++
 3 files changed, 54 insertions(+), 7 deletions(-)
 create mode 100644 recipes-security/AppArmor/files/crosscompile_perl_bindings.patch
 create mode 100644 recipes-security/AppArmor/files/disable_perl_h_check.patch

diff --git a/recipes-security/AppArmor/apparmor_2.11.0.bb b/recipes-security/AppArmor/apparmor_2.11.0.bb
index 591a673d8ec7..647ab124f115 100644
--- a/recipes-security/AppArmor/apparmor_2.11.0.bb
+++ b/recipes-security/AppArmor/apparmor_2.11.0.bb
@@ -15,6 +15,8 @@ DEPENDS = "bison-native apr apache2 gettext-native coreutils-native"
 
 SRC_URI = " \
 	http://archive.ubuntu.com/ubuntu/pool/main/a/${BPN}/${BPN}_${PV}.orig.tar.gz \
+	file://disable_perl_h_check.patch \
+	file://crosscompile_perl_bindings.patch \
 	file://apparmor.rc \
 	file://functions \
 	file://apparmor \
@@ -27,15 +29,15 @@ SRC_URI[sha256sum] = "b1c489ea11e7771b8e6b181532cafbf9ebe6603e3cb00e2558f21b7a5b
 
 PARALLEL_MAKE = ""
 
-inherit pkgconfig autotools-brokensep update-rc.d python-dir perlnative ptest
+inherit pkgconfig autotools-brokensep update-rc.d python3native perlnative ptest cpan
 inherit ${@bb.utils.contains('VIRTUAL-RUNTIME_init_manager','systemd','systemd','', d)}
 
 S = "${WORKDIR}/apparmor-${PV}"
 
-PACKAGECONFIG ?="man"
+PACKAGECONFIG ?="man python perl"
 PACKAGECONFIG[man] = "--enable-man-pages, --disable-man-pages"
-PACKAGECONFIG[python] = "--with-python, --without-python, python swig-native"
-PACKAGECONFIG[perl] = "--with-perl, --without-perl, perl perl-native"
+PACKAGECONFIG[python] = "--with-python, --without-python, python3 swig-native"
+PACKAGECONFIG[perl] = "--with-perl, --without-perl, perl perl-native swig-native"
 
 PAMLIB="${@bb.utils.contains('DISTRO_FEATURES', 'pam', '1', '0', d)}"
 
@@ -116,11 +118,12 @@ SYSTEMD_PACKAGES = "${PN}"
 SYSTEMD_SERVICE_${PN} = "apparmor.service"
 SYSTEMD_AUTO_ENABLE = "disable"
 
-PACKAGES += "python-${PN} mod-${PN}"
+PACKAGES += "mod-${PN}"
 
-FILES_${PN} += "/lib/apparmor/ ${sysconfdir}/apparmor"
+FILES_${PN} += "/lib/apparmor/ ${sysconfdir}/apparmor ${PYTHON_SITEPACKAGES_DIR}"
 FILES_mod-${PN} = "${libdir}/apache2/modules/*"
-FILES_python-${PN} = "${PYTHON_SITEPACKAGES_DIR}"
 
 RDEPENDS_${PN} += "bash lsb"
+RDEPENDS_${PN} += "${@bb.utils.contains('PACKAGECONFIG','python','python3 python3-argparse python3-json','', d)}"
+RDEPENDS_${PN}_remove += "${@bb.utils.contains('PACKAGECONFIG','perl','','perl', d)}"
 RDEPENDS_${PN}-ptest += "coreutils dbus-lib"
diff --git a/recipes-security/AppArmor/files/crosscompile_perl_bindings.patch b/recipes-security/AppArmor/files/crosscompile_perl_bindings.patch
new file mode 100644
index 000000000000..ef55de717e18
--- /dev/null
+++ b/recipes-security/AppArmor/files/crosscompile_perl_bindings.patch
@@ -0,0 +1,25 @@
+Upstream-Status: Inappropriate [configuration]
+
+As we're cross-compiling here we need to override CC/LD that MakeMaker has
+stuck in the generated Makefile with our cross tools.  In this case, linking is
+done via the compiler rather than the linker directly so pass in CC not LD
+here.
+
+Signed-Off-By: Tom Rini <trini@konsulko.com>
+
+--- a/libraries/libapparmor/swig/perl/Makefile.am.orig	2017-06-13 19:04:43.296676212 -0400
++++ b/libraries/libapparmor/swig/perl/Makefile.am	2017-06-13 19:05:03.488676693 -0400
+@@ -16,11 +16,11 @@
+ 
+ LibAppArmor.so: libapparmor_wrap.c Makefile.perl
+ 	if test ! -f libapparmor_wrap.c; then cp $(srcdir)/libapparmor_wrap.c . ; fi
+-	$(MAKE) -fMakefile.perl
++	$(MAKE) -fMakefile.perl CC='$(CC)' LD='$(CC)'
+ 	if test $(top_srcdir) != $(top_builddir) ; then rm -f libapparmor_wrap.c ; fi
+ 
+ install-exec-local: Makefile.perl
+-	$(MAKE) -fMakefile.perl install_vendor
++	$(MAKE) -fMakefile.perl install_vendor CC='$(CC)' LD='$(CC)'
+ 
+ # sadly there is no make uninstall for perl
+ #uninstall-local: Makefile.perl
diff --git a/recipes-security/AppArmor/files/disable_perl_h_check.patch b/recipes-security/AppArmor/files/disable_perl_h_check.patch
new file mode 100644
index 000000000000..cf2640fce2be
--- /dev/null
+++ b/recipes-security/AppArmor/files/disable_perl_h_check.patch
@@ -0,0 +1,19 @@
+Upstream-Status: Inappropriate [configuration]
+
+Remove file check for $perl_includedir/perl.h.  AC_CHECK_FILE will fail on
+cross compilation.  Rather than try and get a compile check to work here,
+we know that we have what's required via our metadata so remove only this
+check.
+
+Signed-Off-By: Tom Rini <trini@konsulko.com>
+
+--- a/libraries/libapparmor/configure.ac.orig	2017-06-13 16:41:38.668471495 -0400
++++ b/libraries/libapparmor/configure.ac	2017-06-13 16:41:40.708471543 -0400
+@@ -58,7 +58,6 @@
+    AC_PATH_PROG(PERL, perl)
+    test -z "$PERL" && AC_MSG_ERROR([perl is required when enabling perl bindings])
+    perl_includedir="`$PERL -e 'use Config; print $Config{archlib}'`/CORE"
+-   AC_CHECK_FILE($perl_includedir/perl.h, enable_perl=yes, enable_perl=no)
+ fi
+ 
+ 
-- 
1.9.1


