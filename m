Return-Path: <mingli.yu@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DF357C38A06
	for <webhook@archiver.kernel.org>; Tue, 12 Apr 2022 16:46:39 +0000 (UTC)
Received: from mail1.wrs.com (mail1.wrs.com [147.11.3.146])
 by mx.groups.io with SMTP id smtpd.web09.5124.1649723897211242901
 for <yocto@lists.yoctoproject.org>;
 Mon, 11 Apr 2022 17:38:18 -0700
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=permerror,
 err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid
 domain name (domain: windriver.com, ip: 147.11.3.146,
 mailfrom: mingli.yu@windriver.com)
Received: from mail.windriver.com (mail.wrs.com [147.11.1.11])
	by mail1.wrs.com (8.15.2/8.15.2) with ESMTPS id 23C0cFRV011886
	(version=TLSv1.1 cipher=DHE-RSA-AES256-SHA bits=256 verify=FAIL)
	for <yocto@lists.yoctoproject.org>; Mon, 11 Apr 2022 17:38:15 -0700
Received: from ala-exchng01.corp.ad.wrs.com (ala-exchng01.corp.ad.wrs.com
 [147.11.82.252])
	by mail.windriver.com (8.15.2/8.15.2) with ESMTPS id 23C0c9eG003167
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL)
	for <yocto@lists.yoctoproject.org>; Mon, 11 Apr 2022 17:38:15 -0700 (PDT)
Received: from ALA-EXCHNG02.corp.ad.wrs.com (147.11.82.254) by
 ala-exchng01.corp.ad.wrs.com (147.11.82.252) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Mon, 11 Apr 2022 17:38:08 -0700
Received: from ala-exchng01.corp.ad.wrs.com (147.11.82.252) by
 ALA-EXCHNG02.corp.ad.wrs.com (147.11.82.254) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Mon, 11 Apr 2022 17:38:09 -0700
Received: from pek-lpg-core2.wrs.com (128.224.153.41) by
 ala-exchng01.corp.ad.wrs.com (147.11.82.252) with Microsoft SMTP Server id
 15.1.2242.12 via Frontend Transport; Mon, 11 Apr 2022 17:38:07 -0700
From: <mingli.yu@windriver.com>
To: <yocto@lists.yoctoproject.org>
Subject: [meta-gplv2][PATCH] readline: add config file for pkgconfig
Date: Tue, 12 Apr 2022 08:38:08 +0800
Message-ID: <20220412003808.2858492-1-mingli.yu@windriver.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 12 Apr 2022 16:46:39 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56736

From: Mingli Yu <mingli.yu@windriver.com>

After bind upgrade to 9.18.x, the below change introduced [1],
all supported libraries have accompanying .pc files now.
ba2376b9e0 Update and cleanup the readline library support

Otherwise, there comes below error during do_configure.
 $ bitbake bind
 | configure: error: Package requirements (readline) were not met:
 |
 | No package 'readline' found

So backport patches [2] to add support .pc file for readline to
fix the above issue.

[1] https://gitlab.isc.org/isc-projects/bind9/-/commit/ba2376b9e03b9bd214242c987609a658ef24ec41
[2] https://git.savannah.gnu.org/cgit/readline.git/commit/?id=d49a9082c0e15bba8cd3d8cc0a994409cf823cac

Signed-off-by: Mingli Yu <mingli.yu@windriver.com>
---
 .../0001-Makefile.in-add-readline.pc.in.patch | 135 ++++++++++++++++++
 .../readline/readline-5.2/readline.pc.in      |  12 ++
 recipes-core/readline/readline_5.2.bb         |   6 +-
 3 files changed, 152 insertions(+), 1 deletion(-)
 create mode 100644 recipes-core/readline/readline-5.2/0001-Makefile.in-add-readline.pc.in.patch
 create mode 100644 recipes-core/readline/readline-5.2/readline.pc.in

diff --git a/recipes-core/readline/readline-5.2/0001-Makefile.in-add-readline.pc.in.patch b/recipes-core/readline/readline-5.2/0001-Makefile.in-add-readline.pc.in.patch
new file mode 100644
index 0000000..d9d36a0
--- /dev/null
+++ b/recipes-core/readline/readline-5.2/0001-Makefile.in-add-readline.pc.in.patch
@@ -0,0 +1,135 @@
+From 20141946db72908e23c11d946937e945fb7e527d Mon Sep 17 00:00:00 2001
+From: Chet Ramey <chet.ramey@case.edu>
+Date: Mon, 11 Apr 2022 18:06:03 +0800
+Subject: [PATCH] Makefile.in: add readline.pc.in
+
+Add config file for pkgconfig.
+
+Upstream-Status: Backport [https://git.savannah.gnu.org/cgit/readline.git/commit/?id=d49a9082c0e15bba8cd3d8cc0a994409cf823cac]
+
+Signed-off-by: Mingli Yu <mingli.yu@windriver.com>
+---
+ MANIFEST     |  1 +
+ Makefile.in  | 26 ++++++++++++++++++++------
+ configure.in | 11 ++++++++++-
+ 3 files changed, 31 insertions(+), 7 deletions(-)
+
+diff --git a/MANIFEST b/MANIFEST
+index b288fb6..f5b583b 100644
+--- a/MANIFEST
++++ b/MANIFEST
+@@ -19,6 +19,7 @@ config.h.in	f
+ configure	f
+ configure.in	f
+ Makefile.in	f
++readline.pc.in	f
+ ansi_stdlib.h	f
+ chardefs.h	f
+ history.h	f
+diff --git a/Makefile.in b/Makefile.in
+index 87df428..e4233f7 100644
+--- a/Makefile.in
++++ b/Makefile.in
+@@ -57,6 +57,7 @@ mandir = @mandir@
+ includedir = @includedir@
+ datadir = @datadir@
+ localedir = $(datadir)/locale
++pkgconfigdir = ${libdir}/pkgconfig
+ 
+ infodir = @infodir@
+ 
+@@ -133,7 +134,7 @@ DOCUMENTATION = $(DOCSOURCE) $(DOCOBJECT) $(DOCSUPPORT)
+ 
+ CREATED_MAKEFILES = Makefile doc/Makefile examples/Makefile shlib/Makefile
+ CREATED_CONFIGURE = config.status config.h config.cache config.log \
+-		    stamp-config stamp-h
++		    stamp-config stamp-h readline.pc
+ CREATED_TAGS = TAGS tags
+ 
+ INSTALLED_HEADERS = readline.h chardefs.h keymaps.h history.h tilde.h \
+@@ -217,9 +218,18 @@ uninstall-headers:
+ 
+ maybe-uninstall-headers: uninstall-headers
+ 
++install-pc: installdirs
++	-$(INSTALL_DATA) $(BUILD_DIR)/readline.pc $(DESTDIR)$(pkgconfigdir)/readline.pc
++
++uninstall-pc:
++	-test -n "$(pkgconfigdir)" && cd $(DESTDIR)$(pkgconfigdir) && \
++		${RM} readline.pc
++
++maybe-uninstall-pc: uninstall-pc
++
+ install:	$(INSTALL_TARGETS)
+ 
+-install-static: installdirs $(STATIC_LIBS) install-headers install-doc
++install-static: installdirs $(STATIC_LIBS) install-headers install-doc install-pc
+ 	-$(MV) $(DESTDIR)$(libdir)/libreadline.a $(DESTDIR)$(libdir)/libreadline.old
+ 	$(INSTALL_DATA) libreadline.a $(DESTDIR)$(libdir)/libreadline.a
+ 	-test -n "$(RANLIB)" && $(RANLIB) $(DESTDIR)$(libdir)/libreadline.a
+@@ -230,17 +240,18 @@ install-static: installdirs $(STATIC_LIBS) install-headers install-doc
+ installdirs: $(srcdir)/support/mkinstalldirs
+ 	-$(SHELL) $(srcdir)/support/mkinstalldirs $(DESTDIR)$(includedir) \
+ 		$(DESTDIR)$(includedir)/readline $(DESTDIR)$(libdir) \
+-		$(DESTDIR)$(infodir) $(DESTDIR)$(man3dir)
++		$(DESTDIR)$(infodir) $(DESTDIR)$(man3dir) \
++		$(DESTDIR)$(pkgconfigdir)
+ 
+-uninstall: uninstall-headers uninstall-doc
++uninstall: uninstall-headers uninstall-doc uninstall-pc
+ 	-test -n "$(DESTDIR)$(libdir)" && cd $(DESTDIR)$(libdir) && \
+ 		${RM} libreadline.a libreadline.old libhistory.a libhistory.old $(SHARED_LIBS)
+ 	-( cd shlib; ${MAKE} ${MFLAGS} DESTDIR=${DESTDIR} uninstall )
+ 
+-install-shared: installdirs install-headers shared install-doc
++install-shared: installdirs install-headers shared install-doc install-pc
+ 	-( cd shlib ; ${MAKE} ${MFLAGS} DESTDIR=${DESTDIR} install )
+ 	
+-uninstall-shared: maybe-uninstall-headers
++uninstall-shared: maybe-uninstall-headers maybe-uninstall-pc
+ 	-( cd shlib; ${MAKE} ${MFLAGS} DESTDIR=${DESTDIR} uninstall )
+ 
+ install-doc:	installdirs
+@@ -281,6 +292,9 @@ distclean maintainer-clean: clean
+ 	$(RM) $(CREATED_CONFIGURE)
+ 	$(RM) $(CREATED_TAGS)
+ 
++readline.pc:	config.status $(srcdir)/readline.pc.in
++	$(SHELL) config.status
++
+ info dvi:
+ 	-( cd doc && $(MAKE) $(MFLAGS) $@ )
+ 
+diff --git a/configure.in b/configure.in
+index 9d1f3fb..1186fc3 100644
+--- a/configure.in
++++ b/configure.in
+@@ -191,6 +191,14 @@ if test "$TERMCAP_LIB" = "./lib/termcap/libtermcap.a"; then
+ 	fi
+ fi
+ 
++case "$TERMCAP_LIB" in
++-ltinfo)  TERMCAP_PKG_CONFIG_LIB=tinfo ;;
++-lcurses) TERMCAP_PKG_CONFIG_LIB=ncurses ;;
++-lncurses) TERMCAP_PKG_CONFIG_LIB=ncurses ;;
++-ltermcap) TERMCAP_PKG_CONFIG_LIB=termcap ;;
++*) TERMCAP_PKG_CONFIG_LIB=termcap ;;
++esac
++
+ BASH_CHECK_MULTIBYTE
+ 
+ case "$host_cpu" in
+@@ -288,8 +296,9 @@ AC_SUBST(host_os)
+ AC_SUBST(LIBVERSION)
+ 
+ AC_SUBST(TERMCAP_LIB)
++AC_SUBST(TERMCAP_PKG_CONFIG_LIB)
+ 
+-AC_OUTPUT([Makefile doc/Makefile examples/Makefile shlib/Makefile],
++AC_OUTPUT([Makefile doc/Makefile examples/Makefile shlib/Makefile readline.pc],
+ [
+ # Makefile uses this timestamp file to record whether config.h is up to date.
+ echo > stamp-h
+-- 
+2.25.1
+
diff --git a/recipes-core/readline/readline-5.2/readline.pc.in b/recipes-core/readline/readline-5.2/readline.pc.in
new file mode 100644
index 0000000..ff79d71
--- /dev/null
+++ b/recipes-core/readline/readline-5.2/readline.pc.in
@@ -0,0 +1,12 @@
+prefix=@prefix@
+exec_prefix=@exec_prefix@
+libdir=@libdir@
+includedir=@includedir@
+
+Name: Readline
+Description: Gnu Readline library for command line editing
+URL: http://tiswww.cwru.edu/php/chet/readline/rltop.html
+Version: @LIBVERSION@
+Requires.private: @TERMCAP_PKG_CONFIG_LIB@
+Libs: -L${libdir} -lreadline
+Cflags: -I${includedir}
diff --git a/recipes-core/readline/readline_5.2.bb b/recipes-core/readline/readline_5.2.bb
index d42ce8b..5ce1d3f 100644
--- a/recipes-core/readline/readline_5.2.bb
+++ b/recipes-core/readline/readline_5.2.bb
@@ -29,7 +29,9 @@ SRC_URI = "${GNU_MIRROR}/readline/${BPN}-${PV}.tar.gz;name=archive \
            ${GNU_MIRROR}/readline/readline-5.2-patches/readline52-014;name=patch14;apply=yes;striplevel=0 \
            file://configure-fix.patch \
            file://config-dirent-symbols.patch \
-           file://fix-redundant-rpath.patch"
+           file://fix-redundant-rpath.patch \
+           file://0001-Makefile.in-add-readline.pc.in.patch \
+           file://readline.pc.in"
 
 SRC_URI[archive.md5sum] = "e39331f32ad14009b9ff49cc10c5e751"
 SRC_URI[archive.sha256sum] = "12e88d96aee2cd1192500356f0535540db499282ca7f76339fb4228c31249f45"
@@ -66,6 +68,7 @@ SRC_URI[patch14.sha256sum] = "6f1a68320d01522ca1ea5a737124ecc8739f3dcbfea2dee21e
 inherit autotools
 
 EXTRA_AUTORECONF += "--exclude=autoheader"
+EXTRA_OECONF += "bash_cv_termcap_lib=ncurses"
 
 LEAD_SONAME = "libreadline.so"
 
@@ -73,6 +76,7 @@ do_configure:prepend () {
 	if [ ! -e ${S}/acinclude.m4 ]; then
 		cat ${S}/aclocal.m4 > ${S}/acinclude.m4
 	fi
+	cp -r ${WORKDIR}/readline.pc.in ${S}
 }
 
 do_install:append () {
-- 
2.25.1


