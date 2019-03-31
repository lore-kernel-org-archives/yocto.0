Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 62747E00C38; Sun, 31 Mar 2019 10:29:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.215.180 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pg1-f180.google.com (mail-pg1-f180.google.com
	[209.85.215.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 506EAE00C38
	for <yocto@yoctoproject.org>; Sun, 31 Mar 2019 10:29:03 -0700 (PDT)
Received: by mail-pg1-f180.google.com with SMTP id y3so3529565pgk.12
	for <yocto@yoctoproject.org>; Sun, 31 Mar 2019 10:29:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id;
	bh=X+rMjw+R2SvAVzxczXJffhXOlq4eCB6T0rX9Iv9Aaow=;
	b=W9VM+fFLyhU3e4et5Lo0VOUqBaJt4yHkXK3Qt2Wd1GxNwMcFdYyUfsS3g1WcS1o9YP
	i0muH3P+q5pfXnTBxra7x8f0nlZ1Ik634EP78Z6NOUcBrlDeGi9gjim9HtPY7z/sdnLo
	kV1hPo7MDnEZMYmIeVas/RF6SDFpAX0aH7xN61vn5iG9w7fuxDypWoawShg4OoocEq1f
	NrYJSEWt04wvqi42MpZQQ1jX7l3KWZ6bZPQDo/gxA+ciXoUg70TCEOfU2pZKve3jMkBq
	NqXBUaBbB6QWGrJQsgDKw/IQN69XL2CkMVwmAVSi4SeIvXs1kGFYFoCm6dDOopFN2wgr
	J4qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=X+rMjw+R2SvAVzxczXJffhXOlq4eCB6T0rX9Iv9Aaow=;
	b=KGz+1DQ5E9bNkLopZLNgzfQtc1i99Y3pEKks5E3qkJfzYR9LGJtdEXmZlSBCAnmnwU
	N1oSxRN2W7PfMoco4IwFXNRVvqj4QmMqheTOSc8rmG4gwvhkYdTnHTJ2g3WcRsXctNuc
	KuXp91ibnp40JXdtqZDVggpTpiTleB7qXgD8nxlBXmgwxJALchF3N8BFGhxGZsPFEyo9
	6rOOdJ/6VVbqLCbA9uLgntTo0IRXWW2H08XINu7FZe+6ef+5bpqXjJdrlqQTSxAS5XTA
	BO3KDRlAYE8j5z0uphQTtrroRx0CNvJsOH6BiFrqqNt0OE+jlZdw7lEeXtpsB8NiRFNU
	jjyw==
X-Gm-Message-State: APjAAAXdNDL2RDPEn6JUCVDPF9W9/LG4Evct8S+b6NKF6jdv52ksJ/bf
	QTlZR2/VDKcTxJwX33HjanLIW2iW
X-Google-Smtp-Source: APXvYqzCLw4kB3K0nroCujZ8HzUkMrcaSP7TsuvNowSdI0V4aFV6fwPCRpas7LzqKb8oIx4foPQNkQ==
X-Received: by 2002:a65:5249:: with SMTP id q9mr36182342pgp.104.1554053342453; 
	Sun, 31 Mar 2019 10:29:02 -0700 (PDT)
Received: from pahoa2.kama-aina.net (c-67-181-203-136.hsd1.ca.comcast.net.
	[67.181.203.136]) by smtp.gmail.com with ESMTPSA id
	j16sm10333893pfi.58.2019.03.31.10.29.01 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 31 Mar 2019 10:29:01 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Sun, 31 Mar 2019 10:28:57 -0700
Message-Id: <20190331172900.28894-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
Subject: [meta-security][PATCH 1/4] apparmor: update to 2.13.2
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
X-List-Received-Date: Sun, 31 Mar 2019 17:29:05 -0000

Drop patch included in update:
tool-paths.patch

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../{apparmor_2.12.bb => apparmor_2.13.2.bb}  | 12 ++++--
 recipes-mac/AppArmor/files/tool-paths.patch   | 37 -------------------
 2 files changed, 9 insertions(+), 40 deletions(-)
 rename recipes-mac/AppArmor/{apparmor_2.12.bb => apparmor_2.13.2.bb} (91%)
 delete mode 100644 recipes-mac/AppArmor/files/tool-paths.patch

diff --git a/recipes-mac/AppArmor/apparmor_2.12.bb b/recipes-mac/AppArmor/apparmor_2.13.2.bb
similarity index 91%
rename from recipes-mac/AppArmor/apparmor_2.12.bb
rename to recipes-mac/AppArmor/apparmor_2.13.2.bb
index efa93e6..62ed611 100644
--- a/recipes-mac/AppArmor/apparmor_2.12.bb
+++ b/recipes-mac/AppArmor/apparmor_2.13.2.bb
@@ -17,7 +17,6 @@ SRC_URI = " \
 	http://archive.ubuntu.com/ubuntu/pool/main/a/${BPN}/${BPN}_${PV}.orig.tar.gz \
 	file://disable_perl_h_check.patch \
 	file://crosscompile_perl_bindings.patch \
-	file://tool-paths.patch \
 	file://apparmor.rc \
 	file://functions \
 	file://apparmor \
@@ -25,8 +24,8 @@ SRC_URI = " \
 	file://run-ptest \
 	"
 
-SRC_URI[md5sum] = "49054f58042f8e51ea92cc866575a833"
-SRC_URI[sha256sum] = "8a2b0cd083faa4d0640f579024be3a629faa7db3b99540798a1a050e2eaba056"
+SRC_URI[md5sum] = "2439b35266b5a3a461b0a2dba6e863c3"
+SRC_URI[sha256sum] = "844def9926dfda5c7858428d06e44afc80573f9706458b6e7282edbb40b11a30"
 
 PARALLEL_MAKE = ""
 
@@ -60,6 +59,13 @@ do_configure() {
 }
 
 do_compile () {
+        # Fixes:
+        # | sed -ie 's///g' Makefile.perl
+        # | sed: -e expression #1, char 0: no previous regular expression
+        #| Makefile:478: recipe for target 'Makefile.perl' failed
+        sed -i "s@sed -ie 's///g' Makefile.perl@@" ${S}/libraries/libapparmor/swig/perl/Makefile
+
+
 	oe_runmake -C ${B}/libraries/libapparmor
         oe_runmake -C ${B}/binutils
         oe_runmake -C ${B}/utils
diff --git a/recipes-mac/AppArmor/files/tool-paths.patch b/recipes-mac/AppArmor/files/tool-paths.patch
deleted file mode 100644
index aaf08da..0000000
--- a/recipes-mac/AppArmor/files/tool-paths.patch
+++ /dev/null
@@ -1,37 +0,0 @@
-Upstream-Status: Backport
-Signed-off-by: Ross Burton <ross.burton@intel.com>
-
-From e7edd937adcbf1b3c8d38a31de5bacb2029b1965 Mon Sep 17 00:00:00 2001
-From: John Johansen <john.johansen@canonical.com>
-Date: Thu, 4 Oct 2018 23:15:28 -0700
-Subject: [PATCH] parser: fix Makefile hardcoded paths to flex and bison
-
-The hardcoded paths for flex and python can break builds on systems
-where those tools are stored in an alternate location. Use which
-to lookup where flex and bison are available.
-
-This fixes issue #4
-
-Signed-off-by: John Johansen <john.johansen@canonical.com>
----
- parser/Makefile | 4 ++--
- 1 file changed, 2 insertions(+), 2 deletions(-)
-
-diff --git a/parser/Makefile b/parser/Makefile
-index 4d370c36..015c218d 100644
---- a/parser/Makefile
-+++ b/parser/Makefile
-@@ -27,9 +27,9 @@ INSTALL_CONFDIR=${DESTDIR}${CONFDIR}
- LOCALEDIR=/usr/share/locale
- MANPAGES=apparmor.d.5 apparmor.7 apparmor_parser.8 subdomain.conf.5
- 
--YACC	:= /usr/bin/bison
-+YACC	:= bison
- YFLAGS	:= -d
--LEX	:= /usr/bin/flex
-+LEX	:= flex
- LEXFLAGS = -B -v
- WARNINGS = -Wall
- EXTRA_WARNINGS = -Wsign-compare -Wmissing-field-initializers -Wformat-security -Wunused-parameter
--- 
-2.11.0
-- 
2.17.1


