Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B779C433F5
	for <webhook@archiver.kernel.org>; Wed, 18 May 2022 19:08:42 +0000 (UTC)
Received: from mail-pg1-f173.google.com (mail-pg1-f173.google.com
 [209.85.215.173])
 by mx.groups.io with SMTP id smtpd.web10.627.1652900916489534191
 for <yocto@lists.yoctoproject.org>;
 Wed, 18 May 2022 12:08:36 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=ItVu4l+J;
 spf=pass (domain: gmail.com, ip: 209.85.215.173,
 mailfrom: akuster808@gmail.com)
Received: by mail-pg1-f173.google.com with SMTP id r71so3026601pgr.0
        for <yocto@lists.yoctoproject.org>;
 Wed, 18 May 2022 12:08:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=tG/3wkl1lJbmi5mTUNRueBsGHCND9JNDHKIPhJxVprM=;
        b=ItVu4l+JkCNXqGaYfCSGLGCPysrIix0SfATzwtFbXyHll+V0UC0gtfbjeSpmqMeilt
         KhuFZa4zzJ43n+gU+2UTIOQNuKtyiYgFqN3Z4XNiVURELDsYZo2JvrqoCW6IsxuFwp8v
         BRpRCszb0S29eSPg3T+VT8L6/cGG9I8zhS6rsjURqhPSCim37UhhObiqZKGIxkRvmjvW
         6VFqXcFMEPLtCd1xq9qcjW7odroFEjTaDC742Dj8rvKPn70xY9dfAPEYymi5oM0ZXIzX
         sGRQHtrP8AztXyxrHUbYf486KFXHwiRurh3tDJb7BtI2ekrNKrruqNfK3FFsdh6roBZ3
         OAaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=tG/3wkl1lJbmi5mTUNRueBsGHCND9JNDHKIPhJxVprM=;
        b=Gw3Qc1fFsRwVydNzdcZJk11F+Lf+CSXJDnwd51mz1GWD5er8IaYsU0f4gGxJK+S2Fc
         0m9e8ONe4KHG7VOAStLg/GxZUl8I5byiYVDD8+cJjG5ot3ZFf9nSFnWyx6C9bNL8Fxgy
         +g3GNbwwXzPFifTmTlUYPCWmcLtFZObea2CG1S2cgOc78Ooo7eXcs1fysoc91sC+wx9Z
         1Eai9sbitRmg/btxEIVULv4ezgPiisY7alujcZ1fSj9H9nRcJl94I6CNWmk4+QI2gefg
         VvX4rngKxWaUt/syziK5Y/2b7FBsiSeEUD7Jbm517aAdNCwOYcDDChC0jUmILxByCFRZ
         oDXw==
X-Gm-Message-State: AOAM530H1Pc6/mPPLJsDm2CarbafMiBdau/ATbMolmYPZdTqX7IfsvrJ
	DPUo+fA70xPLO/u8Z6Yxa0CXvOLROQmKOA==
X-Google-Smtp-Source: 
 ABdhPJxR7AhBmLNwgdiLg4dxslInYxk7dwCTcSTpUmccWT2ODLYpcUaFYFibY4xZB+liokLCy+eW/A==
X-Received: by 2002:a63:2cc3:0:b0:3db:5e24:67fa with SMTP id
 s186-20020a632cc3000000b003db5e2467famr767932pgs.46.1652900915251;
        Wed, 18 May 2022 12:08:35 -0700 (PDT)
Received: from keaua.hsd1.ca.comcast.net
 ([2601:202:4180:a5c0:fee:4904:d15c:6dba])
        by smtp.gmail.com with ESMTPSA id
 s23-20020a170902989700b0015e8d4eb1fbsm2072162plp.69.2022.05.18.12.08.33
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 May 2022 12:08:34 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH] ima-evm-utils: Update to 1.4
Date: Wed, 18 May 2022 12:08:32 -0700
Message-Id: <20220518190832.2662730-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 18 May 2022 19:08:42 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57131

Switch from git to https in SRC_URI
Drop patches not upstreamed.

Passes OEQA:
RESULTS - ima.IMACheck.test_ima_enabled: PASSED (1.05s)
RESULTS - ima.IMACheck.test_ima_hash: PASSED (6.13s)
RESULTS - ima.IMACheck.test_ima_overwrite: PASSED (131.31s)
RESULTS - ima.IMACheck.test_ima_signature: PASSED (69.03s)

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 ...nd-line-apply-operation-to-all-paths.patch | 68 -------------------
 .../ima-evm-utils/disable-doc-creation.patch  | 50 --------------
 ...t-depend-on-xattr.h-with-IMA-defines.patch | 47 -------------
 ...-evm-utils_git.bb => ima-evm-utils_1.4.bb} | 18 +----
 4 files changed, 2 insertions(+), 181 deletions(-)
 delete mode 100644 meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils/command-line-apply-operation-to-all-paths.patch
 delete mode 100644 meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils/disable-doc-creation.patch
 delete mode 100644 meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils/evmctl.c-do-not-depend-on-xattr.h-with-IMA-defines.patch
 rename meta-integrity/recipes-security/ima-evm-utils/{ima-evm-utils_git.bb => ima-evm-utils_1.4.bb} (52%)

diff --git a/meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils/command-line-apply-operation-to-all-paths.patch b/meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils/command-line-apply-operation-to-all-paths.patch
deleted file mode 100644
index 35c3162..0000000
--- a/meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils/command-line-apply-operation-to-all-paths.patch
+++ /dev/null
@@ -1,68 +0,0 @@
-From 5834216fb3aa4e5e59ee13e871c70db1b4e13f02 Mon Sep 17 00:00:00 2001
-From: Patrick Ohly <patrick.ohly@intel.com>
-Date: Fri, 30 Sep 2016 10:22:16 +0200
-Subject: [PATCH] command line: apply operation to all paths
-
-Previously, invocations like "evmctl ima_hash foo bar" silently
-ignored all parameters after the first path name ("foo" in this
-example).
-
-Now evmctl iterates over all specified paths. It aborts with an
-error as soon as the selected operation fails for a path.
-
-Supporting more than one parameter is useful in combination with
-"find" and "xargs" because it is noticably faster than invoking
-evmutil separately for each file, in particular when run under pseudo
-(a fakeroot environment used by the OpenEmbedded build system).
-
-This complements the recursive mode and can be used when more control
-over file selection is needed.
-
-Signed-off-by: Patrick Ohly <patrick.ohly@intel.com>
----
- src/evmctl.c | 21 ++++++++++++---------
- 1 file changed, 12 insertions(+), 9 deletions(-)
-
-diff --git a/src/evmctl.c b/src/evmctl.c
-index 23cf54c..2072034 100644
---- a/src/evmctl.c
-+++ b/src/evmctl.c
-@@ -626,7 +626,7 @@ static int get_file_type(const char *path, const char *search_type)
- static int do_cmd(struct command *cmd, find_cb_t func)
- {
- 	char *path = g_argv[optind++];
--	int err, dts = REG_MASK; /* only regular files by default */
-+	int err = 0, dts = REG_MASK; /* only regular files by default */
- 
- 	if (!path) {
- 		log_err("Parameters missing\n");
-@@ -634,15 +634,18 @@ static int do_cmd(struct command *cmd, find_cb_t func)
- 		return -1;
- 	}
- 
--	if (recursive) {
--		if (search_type) {
--			dts = get_file_type(path, search_type);
--			if (dts < 0)
--				return dts;
-+	while (path && !err) {
-+		if (recursive) {
-+			if (search_type) {
-+				dts = get_file_type(path, search_type);
-+				if (dts < 0)
-+					return dts;
-+			}
-+			err = find(path, dts, func);
-+		} else {
-+			err = func(path);
- 		}
--		err = find(path, dts, func);
--	} else {
--		err = func(path);
-+		path = g_argv[optind++];
- 	}
- 
- 	return err;
--- 
-2.1.4
-
diff --git a/meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils/disable-doc-creation.patch b/meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils/disable-doc-creation.patch
deleted file mode 100644
index 75076f5..0000000
--- a/meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils/disable-doc-creation.patch
+++ /dev/null
@@ -1,50 +0,0 @@
-From 321a602098d11ee712ebd01f51033b5fd369eae9 Mon Sep 17 00:00:00 2001
-From: Patrick Ohly <patrick.ohly@intel.com>
-Date: Wed, 13 May 2015 03:41:02 -0700
-Subject: [PATCH] Makefile.am: disable man page creation
-
-Depends on asciidoc, which is not available.
-
-Upstream-Status: Inappropriate [embedded specific]
-
-Signed-off-by: Patrick Ohly <patrick.ohly@intel.com>
----
- Makefile.am | 19 ++++++++++++++++++-
- 1 file changed, 18 insertions(+), 1 deletion(-)
-
-diff --git a/Makefile.am b/Makefile.am
-index 06ebf59..4ddd52c 100644
---- a/Makefile.am
-+++ b/Makefile.am
-@@ -1,5 +1,5 @@
- SUBDIRS = src
--dist_man_MANS = evmctl.1
-+# dist_man_MANS = evmctl.1
- 
- doc_DATA =  examples/ima-genkey-self.sh examples/ima-genkey.sh examples/ima-gen-local-ca.sh
- EXTRA_DIST = autogen.sh $(doc_DATA)
-@@ -39,4 +39,21 @@ rmman:
- 
- doc: evmctl.1.html rmman evmctl.1
- 
-+# requires asciidoc, xslproc, docbook-xsl
-+# FIXME Disabled until docbook-xsl is unavaliable on tizen.org
-+#MANPAGE_DOCBOOK_XSL = /usr/share/xml/docbook/stylesheet/docbook-xsl/manpages/docbook.xsl
-+#
-+#evmctl.1.html: README
-+#	@asciidoc -o $@ $<
-+#
-+#evmctl.1:
-+#	asciidoc -d manpage -b docbook -o evmctl.1.xsl README
-+#	xsltproc --nonet -o $@ $(MANPAGE_DOCBOOK_XSL) evmctl.1.xsl
-+#	rm -f evmctl.1.xsl
-+#
-+#rmman:
-+#	rm -f evmctl.1
-+#
-+#doc: evmctl.1.html rmman evmctl.1
-+
- .PHONY: $(tarname)
--- 
-1.8.4.5
-
diff --git a/meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils/evmctl.c-do-not-depend-on-xattr.h-with-IMA-defines.patch b/meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils/evmctl.c-do-not-depend-on-xattr.h-with-IMA-defines.patch
deleted file mode 100644
index ffa65df..0000000
--- a/meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils/evmctl.c-do-not-depend-on-xattr.h-with-IMA-defines.patch
+++ /dev/null
@@ -1,47 +0,0 @@
-From 2dec9199f8a8a2c84b25a3d3e7e2f41b71e07834 Mon Sep 17 00:00:00 2001
-From: Patrick Ohly <patrick.ohly@intel.com>
-Date: Wed, 17 Jun 2015 14:28:18 +0200
-Subject: [PATCH 20/20] evmctl.c: do not depend on xattr.h with IMA defines
-
-Compilation on older Linux distros (like Ubuntu 12.04) fails
-because linux/xattr.h does not yet have the IMA defines. Compiling
-there makes sense when only the tools are needed, for example when
-signing an image in cross-compile mode.
-
-To support this, add fallbacks for the two defines which are needed.
-Their value is part of the Linux ABI and thus fixed.
-
-Upstream-status: Submitted [linux-ima-devel@lists.sourceforge.net]
-
-Signed-off-by: Patrick Ohly <patrick.ohly@intel.com>
-
----
- src/evmctl.c | 12 ++++++++++++
- 1 file changed, 12 insertions(+)
-
-diff --git a/src/evmctl.c b/src/evmctl.c
-index c54efbb..23cf54c 100644
---- a/src/evmctl.c
-+++ b/src/evmctl.c
-@@ -57,6 +57,18 @@
- #include <termios.h>
- #include <assert.h>
- 
-+/*
-+ * linux/xattr.h might be old to have this. Allow compilation on older
-+ * Linux distros (like Ubuntu 12.04) by falling back to our own
-+ * definition.
-+ */
-+#ifndef XATTR_IMA_SUFFIX
-+# define XATTR_IMA_SUFFIX "ima"
-+#endif
-+#ifndef XATTR_NAME_IMA
-+# define XATTR_NAME_IMA XATTR_SECURITY_PREFIX XATTR_IMA_SUFFIX
-+#endif
-+
- #include <openssl/sha.h>
- #include <openssl/pem.h>
- #include <openssl/hmac.h>
--- 
-2.1.4
-
diff --git a/meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils_git.bb b/meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils_1.4.bb
similarity index 52%
rename from meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils_git.bb
rename to meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils_1.4.bb
index fc7a2d6..4f1d1a3 100644
--- a/meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils_git.bb
+++ b/meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils_1.4.bb
@@ -6,22 +6,8 @@ DEPENDS += "openssl attr keyutils"
 
 DEPENDS:class-native += "openssl-native keyutils-native"
 
-PV = "1.2.1+git${SRCPV}"
-SRCREV = "3eab1f93b634249c1720f65fcb495b1996f0256e"
-SRC_URI = "git://git.code.sf.net/p/linux-ima/ima-evm-utils;branch=ima-evm-utils-1.2.y"
-
-# Documentation depends on asciidoc, which we do not have, so
-# do not build documentation.
-SRC_URI += "file://disable-doc-creation.patch"
-
-# Workaround for upstream incompatibility with older Linux distros.
-# Relevant for us when compiling ima-evm-utils-native.
-SRC_URI += "file://evmctl.c-do-not-depend-on-xattr.h-with-IMA-defines.patch"
-
-# Required for xargs with more than one path as argument (better for performance).
-SRC_URI += "file://command-line-apply-operation-to-all-paths.patch"
-
-S = "${WORKDIR}/git"
+SRC_URI = "https://sourceforge.net/projects/linux-ima/files/${BPN}/${BP}.tar.gz"
+SRC_URI[sha256sum] = "fcf85b31d6292051b3679e5f17ffa7f89b6898957aad0f59aa4e9878884b27d1"
 
 inherit pkgconfig autotools features_check
 
-- 
2.25.1


