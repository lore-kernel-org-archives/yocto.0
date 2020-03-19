Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.3956.1584582819234526666
 for <yocto@lists.yoctoproject.org>;
 Wed, 18 Mar 2020 18:53:39 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@gmail.com header.s=20161025 header.b=V1nnG51T;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: jpuhlman@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1DEA3E01885; Wed, 18 Mar 2020 18:53:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.214.178 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pl1-f178.google.com (mail-pl1-f178.google.com [209.85.214.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7B1CAE0183B
	for <yocto@yoctoproject.org>; Wed, 18 Mar 2020 18:53:37 -0700 (PDT)
Received: by mail-pl1-f178.google.com with SMTP id t16so318069plr.8
        for <yocto@yoctoproject.org>; Wed, 18 Mar 2020 18:53:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=58/0RdR0l45EjR7MM7R65Z8dglC5App6iVN6RMJcCUc=;
        b=V1nnG51T8B6smbgrKvirXw2YVtEA4QGDfuB0bVlvkMQxJDI8b4DSYa/bVfasFcyukt
         /q6+g630mFLdeAX5CPlcdTyJU9HDOXU1tHB2fd5xvomxRdw7G+QxKjjx1ST4WnC1DVv3
         w9atYYfYyPrMHsuwhKyMOgOLUy754j4GYc43gkHacT//LCed+jHr4pVTBXC3eFh05pGn
         YMSTbPeNSatkk7QEcoyN9vw4atJbidHGaJuTzvsO1XhXh2xMKu0lR2EuCgD/6rOzOq5U
         E8pPSUMViD9Yru3Upm+XAzijLDlHBzDa+uLOR3e++zWbWwM8E1/ay32a91DKe6Rtsuzi
         oH0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:content-transfer-encoding;
        bh=58/0RdR0l45EjR7MM7R65Z8dglC5App6iVN6RMJcCUc=;
        b=bo3x8hPTQomJnFtBK3TGP7+3CdmSTYCKk645k30SrwyrsXCMZ+ub+raBlSc6UGxRNV
         8jKIM9+5Ha7WSgOztUSyzDce1RFI1DKI78UWbpmFdAQVEmTYgkcUbe5ZEFNqWC6WEXUf
         dQq5wzyA/dDxnfyaeX5YxHjeKlIzPo0p2eEwgNw9hFlnZktMc5MLS8z7bpswWa3xLcEG
         KsMmeS77w3N4jfg5pmuz/SkzuxzEiUh5vCzS3CPujAWfqJkDMhOt5dp30bA8qS0X6T1W
         4quGXZ9EmRMSm5gz9AsPG+W3V90TM8mWKKF8LMgJ5QrZcQSknhSersQSJUyHB9V1UdGq
         S/oQ==
X-Gm-Message-State: ANhLgQ1pLLSsE6xweoEIlnNy89EqMFilpsLLuyOJD0+b0tb6N3S0fnZt
	2OnufQIxmku62WGO4HXe/vY=
X-Google-Smtp-Source: ADFU+vtJsxB8OCIybjhXOUrnx4cXi5KQGDaexKUApSDcFg/6qLz1wZIoUmTvS88ljGWdGS1fuUCJRg==
X-Received: by 2002:a17:90a:4487:: with SMTP id t7mr1205186pjg.104.1584582816571;
        Wed, 18 Mar 2020 18:53:36 -0700 (PDT)
Received: from workhorse.localdomain ([2600:1700:4c90:60a0:56be:f7ff:fe12:d0bd])
        by smtp.gmail.com with ESMTPSA id k5sm206661pju.29.2020.03.18.18.53.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Mar 2020 18:53:36 -0700 (PDT)
Sender: Jeremy Puhlman <jpuhlman@gmail.com>
Received: by workhorse.localdomain (Postfix, from userid 1000)
	id D2A7A2A0404; Wed, 18 Mar 2020 18:53:34 -0700 (PDT)
From: "Jeremy Puhlman" <jpuhlman@mvista.com>
To: yocto@yoctoproject.org
Cc: "Jeremy A. Puhlman" <jpuhlman@mvista.com>
Subject: [meta-cgl][PATCH 17/20] pacemaker: Update to 2.0.3
Date: Wed, 18 Mar 2020 18:53:18 -0700
Message-Id: <20200319015321.15525-17-jpuhlman@mvista.com>
X-Mailer: git-send-email 2.13.3
In-Reply-To: <20200319015321.15525-1-jpuhlman@mvista.com>
References: <20200319015321.15525-1-jpuhlman@mvista.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=y
Content-Transfer-Encoding: quoted-printable

Drop unneeded patches moving some in to metadata.
Fix up for building 2.0.3

Signed-off-by: Jeremy A. Puhlman <jpuhlman@mvista.com>
---
 .../pacemaker/0001-pacemaker-fix-xml-config.patch  |  52 --------
 ...earch-header-from-STAGING_INCDIR-to-walka.patch |  37 ------
 .../0003-pacemaker-fix-header-defs-lookup.patch    |  27 ----
 .../0004-pacemaker-do-not-build-help.patch         |  27 ----
 ...o-not-execute-target-program-while-cross-.patch |  44 -------
 ...-Fix-definition-of-curses_indented_printf.patch |  30 +++++
 ...006-pacemaker-do-not-use-libgnutls-config.patch |  35 ------
 ...-Make-the-testing-infrastructure-optional.patch | 137 ---------------=
------
 .../pacemaker/set-OCF_ROOT_DIR-to-libdir-ocf.patch |  28 -----
 .../{pacemaker_1.1.21.bb =3D> pacemaker_2.0.3.bb}    |  26 ++--
 10 files changed, 43 insertions(+), 400 deletions(-)
 delete mode 100644 meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0001-=
pacemaker-fix-xml-config.patch
 delete mode 100644 meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0002-=
pacemaker-search-header-from-STAGING_INCDIR-to-walka.patch
 delete mode 100644 meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0003-=
pacemaker-fix-header-defs-lookup.patch
 delete mode 100644 meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0004-=
pacemaker-do-not-build-help.patch
 delete mode 100644 meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0005-=
pacemaker-do-not-execute-target-program-while-cross-.patch
 create mode 100644 meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0006-=
Fix-tools-Fix-definition-of-curses_indented_printf.patch
 delete mode 100644 meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0006-=
pacemaker-do-not-use-libgnutls-config.patch
 delete mode 100644 meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0007-=
Make-the-testing-infrastructure-optional.patch
 delete mode 100644 meta-cgl-common/recipes-cgl/pacemaker/pacemaker/set-O=
CF_ROOT_DIR-to-libdir-ocf.patch
 rename meta-cgl-common/recipes-cgl/pacemaker/{pacemaker_1.1.21.bb =3D> p=
acemaker_2.0.3.bb} (82%)

diff --git a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0001-pacemak=
er-fix-xml-config.patch b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker=
/0001-pacemaker-fix-xml-config.patch
deleted file mode 100644
index 72c3a1e..0000000
--- a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0001-pacemaker-fix-=
xml-config.patch
+++ /dev/null
@@ -1,52 +0,0 @@
-From ac1ff1d538d2be205fbcc9676c6497a1395b71d8 Mon Sep 17 00:00:00 2001
-From: Changqing Li <changqing.li@windriver.com>
-Date: Fri, 10 Aug 2018 14:59:33 +0800
-Subject: [PATCH] pacemaker: fix xml config
-
-Signed-off-by: Bian Naimeng <biannm@cn.fujitsu.com>
-
-update to version 1.1.19
-Signed-off-by: Changqing Li <changqing.li@windriver.com>
----
- configure.ac | 17 ++++++-----------
- 1 file changed, 6 insertions(+), 11 deletions(-)
-
-diff --git a/configure.ac b/configure.ac
-index 3bf1914..345caeb 100644
---- a/configure.ac
-+++ b/configure.ac
-@@ -555,7 +555,6 @@ AC_PATH_PROGS(TAR, tar)
- AC_PATH_PROGS(MD5, md5)
- AC_PATH_PROGS(TEST, test)
- PKG_PROG_PKG_CONFIG
--AC_PATH_PROGS(XML2CONFIG, xml2-config)
- AC_PATH_PROGS(VALGRIND_BIN, valgrind, /usr/bin/valgrind)
- AC_DEFINE_UNQUOTED(VALGRIND_BIN, "$VALGRIND_BIN", Valgrind command)
-=20
-@@ -805,17 +804,13 @@ dnl AC_CHECK_HEADERS(netinet/icmp6.h)
- dnl AC_CHECK_HEADERS(netinet/ip6.h)
- dnl AC_CHECK_HEADERS(netinet/ip_icmp.h)
-=20
--AC_MSG_CHECKING(for special libxml2 includes)
--if test "x$XML2CONFIG" =3D "x"; then
--   AC_MSG_ERROR(libxml2 config not found)
--else
--   XML2HEAD=3D"`$XML2CONFIG --cflags`"
--   AC_MSG_RESULT($XML2HEAD)
--   AC_CHECK_LIB(xml2, xmlReadMemory)
--   AC_CHECK_LIB(xslt, xsltApplyStylesheet)
--fi
-+PKG_CHECK_MODULES([XML], [libxml-2.0])
-+PKG_CHECK_MODULES([XSLT], [libxslt])
-+
-+AC_CHECK_LIB(xml2, xmlReadMemory)
-+AC_CHECK_LIB(xslt, xsltApplyStylesheet)
-=20
--CPPFLAGS=3D"$CPPFLAGS $XML2HEAD"
-+CPPFLAGS=3D"$CPPFLAGS $XML_CFLAGS"
-=20
- AC_CHECK_HEADERS(libxml/xpath.h)
- AC_CHECK_HEADERS(libxslt/xslt.h)
---=20
-2.7.4
-
diff --git a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0002-pacemak=
er-search-header-from-STAGING_INCDIR-to-walka.patch b/meta-cgl-common/rec=
ipes-cgl/pacemaker/pacemaker/0002-pacemaker-search-header-from-STAGING_IN=
CDIR-to-walka.patch
deleted file mode 100644
index 83940d1..0000000
--- a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0002-pacemaker-sear=
ch-header-from-STAGING_INCDIR-to-walka.patch
+++ /dev/null
@@ -1,37 +0,0 @@
-From 844ec301031b0e6a3000c793906ba476f08a1e65 Mon Sep 17 00:00:00 2001
-From: Li xin <lixin.fnst@cn.fujitsu.com>
-Date: Wed, 27 Dec 2017 05:20:45 +0000
-Subject: [PATCH] pacemaker: search header from STAGING_INCDIR to walkaro=
und
- error
-
-** -I/usr/include/ is unsafe for cross-compilation
-
- ... ...
-
- ** This autoconf log indicates errors, it looked at host include and/or=
 library paths
- ** while determining system capabilities
-
-Upstream-Status: pending
-
-Signed-off-by: Bian Naimeng <biannm@cn.fujitsu.com>
-Signed-off-by: Li Xin <lixin.fnst@cn.fujitsu.com>
-Signed-off-by: Mingli Yu <Mingli.Yu@windriver.com>
-
----
- configure.ac | 3 +++
- 1 file changed, 3 insertions(+)
-
-diff --git a/configure.ac b/configure.ac
-index 5e420f2..5d442a5 100644
---- a/configure.ac
-+++ b/configure.ac
-@@ -484,6 +484,9 @@ esac
- dnl Eventually remove this
- if test "$cross_compiling" !=3D "yes"; then
-    CPPFLAGS=3D"$CPPFLAGS -I${prefix}/include/heartbeat"
-+else
-+   CFLAGS=3D"$CFLAGS -I${STAGING_INCDIR}/heartbeat"
-+   CPPFLAGS=3D"$CPPFLAGS -I${STAGING_INCDIR}/heartbeat"
- fi
-=20
- AC_SUBST(INIT_EXT)
diff --git a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0003-pacemak=
er-fix-header-defs-lookup.patch b/meta-cgl-common/recipes-cgl/pacemaker/p=
acemaker/0003-pacemaker-fix-header-defs-lookup.patch
deleted file mode 100644
index 6dc4663..0000000
--- a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0003-pacemaker-fix-=
header-defs-lookup.patch
+++ /dev/null
@@ -1,27 +0,0 @@
-From 9236fa746d43adb098c2946e72e8b29ffbc78865 Mon Sep 17 00:00:00 2001
-From: Bian Naimeng <biannm@cn.fujitsu.com>
-Date: Fri, 3 Jul 2015 16:30:25 +0900
-Subject: [PATCH] pacemaker: fix header defs lookup
-
-Signed-off-by: Bian Naimeng <biannm@cn.fujitsu.com>
-
----
- configure.ac | 5 ++---
- 1 file changed, 2 insertions(+), 3 deletions(-)
-
-diff --git a/configure.ac b/configure.ac
-index 5d442a5..1429b01 100644
---- a/configure.ac
-+++ b/configure.ac
-@@ -147,9 +147,8 @@ extract_header_define() {
- 	  Cfile=3D$srcdir/extract_define.$2.${$}
- 	  printf "#include <stdio.h>\n" > ${Cfile}.c
- 	  printf "#include <%s>\n" $1 >> ${Cfile}.c
--	  printf "int main(int argc, char **argv) { printf(\"%%s\", %s); retur=
n 0; }\n" $2 >> ${Cfile}.c
--	  $CC $CFLAGS ${Cfile}.c -o ${Cfile}
--	  value=3D`${Cfile}`
-+	  printf "\"%s\":%s\n" $2 $2 >> ${Cfile}.c
-+	  value=3D`$CC $CFLAGS -E ${Cfile}.c | grep \"$2\" | cut -f 2 -d ':' |=
 sed 's,^",,' | sed 's,"$,,'`
- 	  AC_MSG_RESULT($value)
- 	  printf $value
- 	  rm -rf ${Cfile}.c ${Cfile} ${Cfile}.dSYM ${Cfile}.gcno
diff --git a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0004-pacemak=
er-do-not-build-help.patch b/meta-cgl-common/recipes-cgl/pacemaker/pacema=
ker/0004-pacemaker-do-not-build-help.patch
deleted file mode 100644
index 4234fe5..0000000
--- a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0004-pacemaker-do-n=
ot-build-help.patch
+++ /dev/null
@@ -1,27 +0,0 @@
-From cda171512fc8dc0aa385290e1f7644ff222e5f18 Mon Sep 17 00:00:00 2001
-From: Bian Naimeng <biannm@cn.fujitsu.com>
-Date: Fri, 3 Jul 2015 17:27:52 +0900
-Subject: [PATCH] pacemaker: do not build help
-
-Signed-off-by: Bian Naimeng <biannm@cn.fujitsu.com>
-
----
- configure.ac | 5 +----
- 1 file changed, 1 insertion(+), 4 deletions(-)
-
-diff --git a/configure.ac b/configure.ac
-index 1429b01..e930e33 100644
---- a/configure.ac
-+++ b/configure.ac
-@@ -574,10 +574,7 @@ if test x"${MAKE}" =3D x""; then
-    AC_MSG_ERROR(You need (g)make installed in order to build ${PACKAGE}=
)
- fi
-=20
--AM_CONDITIONAL(BUILD_HELP, test x"${HELP2MAN}" !=3D x"")
--if test x"${HELP2MAN}" !=3D x""; then
--   PCMK_FEATURES=3D"$PCMK_FEATURES generated-manpages"
--fi
-+AM_CONDITIONAL(BUILD_HELP, test x"Do not build help" =3D x"")
-=20
- MANPAGE_XSLT=3D""
- if test x"${XSLTPROC}" !=3D x""; then
diff --git a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0005-pacemak=
er-do-not-execute-target-program-while-cross-.patch b/meta-cgl-common/rec=
ipes-cgl/pacemaker/pacemaker/0005-pacemaker-do-not-execute-target-program=
-while-cross-.patch
deleted file mode 100644
index b600fec..0000000
--- a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0005-pacemaker-do-n=
ot-execute-target-program-while-cross-.patch
+++ /dev/null
@@ -1,44 +0,0 @@
-From 6d59090df5856d32163f256912ddf1c897590447 Mon Sep 17 00:00:00 2001
-From: Changqing Li <changqing.li@windriver.com>
-Date: Wed, 21 Aug 2019 13:12:13 +0800
-Subject: [PATCH] pacemaker: do not execute target program while cross co=
mpile
-
-Signed-off-by: Bian Naimeng <biannm@cn.fujitsu.com>
-
-refresh patch to new version 1.1.21
-Signed-off-by: Changqing Li <changqing.li@windriver.com>
----
- Makefile.common | 8 +++++---
- 1 file changed, 5 insertions(+), 3 deletions(-)
-
-diff --git a/Makefile.common b/Makefile.common
-index 469417f..9f19a53 100644
---- a/Makefile.common
-+++ b/Makefile.common
-@@ -36,18 +36,20 @@ if BUILD_HELP
- man8_MANS		=3D $(sbin_PROGRAMS:%=3D%.8) $(sbin_SCRIPTS:%=3D%.8)
- endif
-=20
-++man7_MANS              =3D
-+
- %.8:	% $(MAN8DEPS)
- 	chmod a+x $(abs_builddir)/$<
- 	$(AM_V_MAN)PATH=3D$(abs_builddir):$$PATH $(HELP2MAN) --output $@ --no-=
info --section 8 --name "Part of the Pacemaker cluster resource manager" =
$(abs_builddir)/$<
-=20
- %.xml:  %
--	$(AM_V_GEN)$(abs_builddir)/$< metadata > $@
-+        @echo "xml for $<: Do not try to execute target program here"
-=20
- %.dbook: %.xml
--	$(AM_V_XSL)$(XSLTPROC) --nonet --novalid --stringparam man.name $* $(D=
BOOK_OPTS) $(top_srcdir)/xml/ocf-meta2man.xsl $(abs_builddir)/$< > $(abs_=
builddir)/$@
-+        @echo "dbook for $<: Do not try to execute target program here"
-=20
- %.7:	%.dbook
--	$(AM_V_XSL)$(XSLTPROC) $(MANPAGE_XSLT) $(abs_builddir)/$< $(PCMK_quiet=
)
-+        @echo "man7 for $<: Do not try to execute target program here"
-=20
- # Build docbook from asciidoc because XML is a PITA to edit
- #
---=20
-2.7.4
-
diff --git a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0006-Fix-too=
ls-Fix-definition-of-curses_indented_printf.patch b/meta-cgl-common/recip=
es-cgl/pacemaker/pacemaker/0006-Fix-tools-Fix-definition-of-curses_indent=
ed_printf.patch
new file mode 100644
index 0000000..f5e1829
--- /dev/null
+++ b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0006-Fix-tools-Fix-=
definition-of-curses_indented_printf.patch
@@ -0,0 +1,30 @@
+From 426f06cc088d11d6db0c45b434e5ce6b69da78b4 Mon Sep 17 00:00:00 2001
+From: Chris Lumens <clumens@redhat.com>
+Date: Thu, 2 Jan 2020 15:08:58 -0500
+Subject: [PATCH 006/207] Fix: tools: Fix definition of curses_indented_p=
rintf.
+
+The placeholder version that is built if curses is not enabled does not
+have a type that matches the header file.  Correct that.
+
+Signed-off-by: Jeremy A. Puhlman <jpuhlman@mvista.com>
+Upstream-Status: Backport[git]
+---
+ tools/crm_mon_curses.c | 2 +-
+ 1 file changed, 1 insertion(+), 1 deletion(-)
+
+diff --git a/tools/crm_mon_curses.c b/tools/crm_mon_curses.c
+index c0dbedbf0..ecd0584fe 100644
+--- a/tools/crm_mon_curses.c
++++ b/tools/crm_mon_curses.c
+@@ -368,7 +368,7 @@ curses_indented_vprintf(pcmk__output_t *out, const c=
har *format, va_list args) {
+=20
+ G_GNUC_PRINTF(2, 3)
+ void
+-curses_indented_printf(pcmk__output_t *out, const char *format, va_list=
 args) {
++curses_indented_printf(pcmk__output_t *out, const char *format, ...) {
+     return;
+ }
+=20
+--=20
+2.23.0
+
diff --git a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0006-pacemak=
er-do-not-use-libgnutls-config.patch b/meta-cgl-common/recipes-cgl/pacema=
ker/pacemaker/0006-pacemaker-do-not-use-libgnutls-config.patch
deleted file mode 100644
index c1ffc86..0000000
--- a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0006-pacemaker-do-n=
ot-use-libgnutls-config.patch
+++ /dev/null
@@ -1,35 +0,0 @@
-From 5148e0a7e3cd4293416b969f2c563faa6aca27b2 Mon Sep 17 00:00:00 2001
-From: Joe Slater <jslater@windriver.com>
-Date: Mon, 11 Mar 2013 15:47:54 -0700
-Subject: [PATCH] pacemaker: do not use libgnutls-config
-
-Do not try to use libgnutls-config when configuring.
-It has been deprecated and we do not supply it.  If a
-host version is found, bad things can happen.
-
-Upstream-Status: Inappropriate [OE specific]
-
-Signed-off-by: Joe Slater <jslater@windriver.com>
-Signed-off-by: Jackie Huang <jackie.huang@windriver.com>
-
----
- configure.ac | 6 +++---
- 1 file changed, 3 insertions(+), 3 deletions(-)
-
-diff --git a/configure.ac b/configure.ac
-index e930e33..2eade3c 100644
---- a/configure.ac
-+++ b/configure.ac
-@@ -1707,9 +1707,9 @@ dnl =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D
- AC_CHECK_HEADERS(gnutls/gnutls.h)
- AC_CHECK_HEADERS(security/pam_appl.h pam/pam_appl.h)
-=20
--dnl GNUTLS library: Attempt to determine by 'libgnutls-config' program.
--dnl If no 'libgnutls-config', try traditional autoconf means.
--AC_PATH_PROGS(LIBGNUTLS_CONFIG, libgnutls-config)
-+dnl libgnutls-config has been deprecated, so we use pkg-config
-+
-+LIBGNUTLS_CONFIG=3D"pkg-config gnutls"
-=20
- if test -n "$LIBGNUTLS_CONFIG"; then
- 	AC_MSG_CHECKING(for gnutls header flags)
diff --git a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0007-Make-th=
e-testing-infrastructure-optional.patch b/meta-cgl-common/recipes-cgl/pac=
emaker/pacemaker/0007-Make-the-testing-infrastructure-optional.patch
deleted file mode 100644
index 3417aae..0000000
--- a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0007-Make-the-testi=
ng-infrastructure-optional.patch
+++ /dev/null
@@ -1,137 +0,0 @@
-From 8a7c861e746ef13a2ffe74388891d7ea5709614b Mon Sep 17 00:00:00 2001
-From: =3D?UTF-8?q?Ferenc=3D20W=3DC3=3DA1gner?=3D <wferi@debian.org>
-Date: Thu, 29 Sep 2016 10:47:49 +0200
-Subject: [PATCH] Make the testing infrastructure optional
-MIME-Version: 1.0
-Content-Type: text/plain; charset=3DUTF-8
-Content-Transfer-Encoding: 8bit
-
-Upstream does not want this option, unfortunately.
-https://github.com/ClusterLabs/pacemaker/pull/1149
-
-Signed-off-by: Ferenc W=C3=A1gner <wferi@debian.org>
-
-It does not install test case by default
-Backport the patch from ubuntu
-http://archive.ubuntu.com/ubuntu/pool/main/p/pacemaker/pacemaker_1.1.18-=
0ubuntu1.debian.tar.xz
-Upstream-Status: Deny [https://github.com/ClusterLabs/pacemaker/pull/114=
9]
-
-Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>
----
- Makefile.am         | 2 ++
- configure.ac        | 5 +++++
- fencing/Makefile.am | 2 ++
- lrmd/Makefile.am    | 2 ++
- pengine/Makefile.am | 2 ++
- tools/Makefile.am   | 2 ++
- 6 files changed, 15 insertions(+)
-
-diff --git a/Makefile.am b/Makefile.am
-index 874f6ed..9ce8b12 100644
---- a/Makefile.am
-+++ b/Makefile.am
-@@ -35,6 +35,7 @@ ACLOCAL_AMFLAGS  =3D -I m4
- licensedir              =3D $(docdir)/licenses/
- license_DATA            =3D $(wildcard licenses/*)
-=20
-+if ENABLE_TESTS
- # Test components
- SUBDIRS	+=3D cts
-=20
-@@ -46,6 +47,7 @@ test_DATA		=3D valgrind-pcmk.suppressions
- noinst_PROGRAMS =3D scratch
- nodist_scratch_SOURCES	=3D scratch.c
- scratch_LDADD	=3D $(top_builddir)/lib/common/libcrmcommon.la -lm
-+endif
-=20
- scratch.c:
- 	echo 'int main(void){}' >$@
-diff --git a/configure.ac b/configure.ac
-index b87e61b..a0cf3e2 100644
---- a/configure.ac
-+++ b/configure.ac
-@@ -330,6 +330,11 @@ AC_ARG_WITH(configdir,
-     [ CONFIGDIR=3D"$withval" ]
- )
-=20
-+AC_ARG_ENABLE([tests],
-+    [AS_HELP_STRING([--disable-tests],[don't build and install the test=
ing components])],,
-+    [enable_tests=3Dyes])
-+AM_CONDITIONAL([ENABLE_TESTS],[test "x$enable_tests" !=3D xno])
-+
- dnl =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
- dnl General Processing
- dnl =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
-diff --git a/fencing/Makefile.am b/fencing/Makefile.am
-index 3bb628f..8c06502 100644
---- a/fencing/Makefile.am
-+++ b/fencing/Makefile.am
-@@ -18,8 +18,10 @@
- include $(top_srcdir)/Makefile.common
-=20
- ## binary progs
-+if ENABLE_TESTS
- testdir			=3D $(datadir)/$(PACKAGE)/tests/fencing
- test_SCRIPTS		=3D regression.py
-+endif
-=20
- halibdir	=3D $(CRM_DAEMON_DIR)
- halib_PROGRAMS	=3D stonithd stonith-test
-diff --git a/lrmd/Makefile.am b/lrmd/Makefile.am
-index 33611cb..ad6b88d 100644
---- a/lrmd/Makefile.am
-+++ b/lrmd/Makefile.am
-@@ -19,11 +19,13 @@ include $(top_srcdir)/Makefile.common
- lrmdlibdir		=3D $(CRM_DAEMON_DIR)
- lrmdlib_PROGRAMS	=3D lrmd lrmd_internal_ctl
-=20
-+if ENABLE_TESTS
- # Test components
- lrmdlib_PROGRAMS	+=3D lrmd_test
-=20
- testdir			=3D $(datadir)/$(PACKAGE)/tests/lrmd
- test_SCRIPTS		=3D regression.py
-+endif
-=20
- initdir			=3D $(INITDIR)
- init_SCRIPTS		=3D pacemaker_remote
-diff --git a/pengine/Makefile.am b/pengine/Makefile.am
-index 861946c..3faae3a 100644
---- a/pengine/Makefile.am
-+++ b/pengine/Makefile.am
-@@ -21,6 +21,7 @@ AM_CPPFLAGS	+=3D -I$(top_builddir) -I$(top_srcdir)
-=20
- halibdir	=3D $(CRM_DAEMON_DIR)
-=20
-+if ENABLE_TESTS
- PE_TESTS	=3D $(wildcard test10/*.scores)
-=20
- testdir			=3D $(datadir)/$(PACKAGE)/tests/pengine
-@@ -29,6 +30,7 @@ test_DATA		=3D regression.core.sh
-=20
- test10dir		=3D $(datadir)/$(PACKAGE)/tests/pengine/test10
- test10_DATA		=3D $(PE_TESTS) $(PE_TESTS:%.scores=3D%.xml) $(PE_TESTS:%.=
scores=3D%.exp) $(PE_TESTS:%.scores=3D%.dot) $(PE_TESTS:%.scores=3D%.summ=
ary) $(wildcard test10/*.stderr)
-+endif
-=20
- beekhof:
- 	echo $(shell ls -1 test10/*.xml)
-diff --git a/tools/Makefile.am b/tools/Makefile.am
-index 3548035..826396d 100644
---- a/tools/Makefile.am
-+++ b/tools/Makefile.am
-@@ -40,10 +40,12 @@ EXTRA_DIST		=3D $(sbin_SCRIPTS)
- sbin_PROGRAMS		=3D crm_simulate crmadmin cibadmin crm_node crm_attribut=
e crm_resource crm_verify \
- 			 crm_shadow attrd_updater crm_diff crm_mon iso8601 crm_ticket crm_er=
ror
-=20
-+if ENABLE_TESTS
- testdir			=3D $(datadir)/$(PACKAGE)/tests/cli
- test_SCRIPTS		=3D regression.sh
- test_DATA               =3D regression.dates.exp regression.tools.exp r=
egression.acls.exp \
- 			  regression.validity.exp
-+endif
-=20
- if BUILD_HEARTBEAT_SUPPORT
- sbin_PROGRAMS           +=3D crm_uuid
---=20
-2.7.4
-
diff --git a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/set-OCF_ROOT=
_DIR-to-libdir-ocf.patch b/meta-cgl-common/recipes-cgl/pacemaker/pacemake=
r/set-OCF_ROOT_DIR-to-libdir-ocf.patch
deleted file mode 100644
index 98c3475..0000000
--- a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/set-OCF_ROOT_DIR-to=
-libdir-ocf.patch
+++ /dev/null
@@ -1,28 +0,0 @@
-From 588800f0e2fe52a677a19b7c59636e9f391a6e75 Mon Sep 17 00:00:00 2001
-From: Mingli Yu <Mingli.Yu@windriver.com>
-Date: Wed, 27 Dec 2017 07:14:21 +0000
-Subject: [PATCH] pacemaker: set OCF_ROOT_DIR to $libdir/ocf
-
-* Set the default OCF_ROOT_DIR to $libdir/ocf
-  to make the resource agents components more
-  compatible
-
-Signed-off-by: Mingli Yu <Mingli.Yu@windriver.com>
-
----
- configure.ac | 2 +-
- 1 file changed, 1 insertion(+), 1 deletion(-)
-
-diff --git a/configure.ac b/configure.ac
-index 2eade3c..ba290cc 100644
---- a/configure.ac
-+++ b/configure.ac
-@@ -1152,7 +1152,7 @@ AC_SUBST(HA_VARLIBHBDIR)
-=20
- AC_DEFINE_UNQUOTED(UUID_FILE,"$localstatedir/lib/heartbeat/hb_uuid", Lo=
cation of Heartbeat's UUID file)
-=20
--OCF_ROOT_DIR=3D`try_extract_header_define $GLUE_HEADER OCF_ROOT_DIR /us=
r/lib/ocf`
-+OCF_ROOT_DIR=3D`try_extract_header_define $GLUE_HEADER OCF_ROOT_DIR $li=
bdir/ocf`
- if test "X$OCF_ROOT_DIR" =3D X; then
-   AC_MSG_ERROR(Could not locate OCF directory)
- fi
diff --git a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker_1.1.21.bb b/=
meta-cgl-common/recipes-cgl/pacemaker/pacemaker_2.0.3.bb
similarity index 82%
rename from meta-cgl-common/recipes-cgl/pacemaker/pacemaker_1.1.21.bb
rename to meta-cgl-common/recipes-cgl/pacemaker/pacemaker_2.0.3.bb
index 3a8db77..9b63acd 100644
--- a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker_1.1.21.bb
+++ b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker_2.0.3.bb
@@ -13,24 +13,20 @@ LIC_FILES_CHKSUM =3D "file://COPYING;md5=3D000212f361=
a81b100d9d0f0435040663"
=20
 DEPENDS =3D "corosync libxslt libxml2 gnutls resource-agents libqb pytho=
n3-native"
=20
-SRC_URI =3D "git://github.com/ClusterLabs/${BPN}.git;branch=3D1.1 \
-           file://0001-pacemaker-fix-xml-config.patch \
-           file://0002-pacemaker-search-header-from-STAGING_INCDIR-to-wa=
lka.patch \
-           file://0003-pacemaker-fix-header-defs-lookup.patch \
-           file://0004-pacemaker-do-not-build-help.patch \
-           file://0005-pacemaker-do-not-execute-target-program-while-cro=
ss-.patch \
-           file://0006-pacemaker-do-not-use-libgnutls-config.patch \
-           file://set-OCF_ROOT_DIR-to-libdir-ocf.patch \
-           file://0007-Make-the-testing-infrastructure-optional.patch \
+SRC_URI =3D "git://github.com/ClusterLabs/${BPN}.git \
+           file://0006-Fix-tools-Fix-definition-of-curses_indented_print=
f.patch \
+           file://0001-Fix-python3-usage.patch \
            file://volatiles \
            file://tmpfiles \
           "
=20
+CFLAGS +=3D "-I${STAGING_INCDIR}/heartbeat"
+CPPFLAGS +=3D"-I${STAGING_INCDIR}/heartbeat"
 SRC_URI_append_libc-musl =3D "file://0001-pacemaker-fix-compile-error-of=
-musl-libc.patch"
=20
-SRCREV =3D "f14e36fd4336874705b34266c7cddbe12119106c"
+SRCREV =3D "4b1f869f0f64ef0d248b6aa4781d38ecccf83318"
=20
-inherit autotools-brokensep pkgconfig systemd python3-dir useradd
+inherit autotools-brokensep pkgconfig systemd python3native python3-dir =
useradd
=20
 S =3D "${WORKDIR}/git"
=20
@@ -48,7 +44,11 @@ EXTRA_OECONF +=3D "STAGING_INCDIR=3D${STAGING_INCDIR} =
\
                  --without-heartbeat \
                  --disable-pretty \
                  --disable-tests \
-                "
+                 "
+
+CACHED_CONFIGUREVARS +=3D " \
+    ac_cv_path_BASH_PATH=3D/bin/bash \
+"
=20
 do_install_append() {
     install -d ${D}${sysconfdir}/default
@@ -92,7 +92,7 @@ FILES_${PN} +=3D " ${datadir}/snmp                     =
        \
                  ${libdir}/corosync/lcrso/pacemaker.lcrso    \
                  ${libdir}/${PYTHON_DIR}/dist-packages/cts/  \
                  ${libdir}/ocf/resource.d/ \
-                 ${libdir}/${PYTHON_DIR}/site-packages \
+                 ${libdir}/${PYTHON_DIR}/site-packages/cts/ \
                "
 FILES_${PN}-dbg +=3D "${libdir}/corosync/lcrso/.debug"
 RDEPENDS_${PN} =3D "bash python3-core perl libqb ${PN}-cli-utils"
--=20
2.13.3

