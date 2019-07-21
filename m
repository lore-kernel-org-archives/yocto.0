Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C1583E00D3A; Sat, 20 Jul 2019 19:41:26 -0700 (PDT)
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
	*      [209.85.210.194 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com
	[209.85.210.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6DF06E00D38
	for <yocto@yoctoproject.org>; Sat, 20 Jul 2019 19:41:25 -0700 (PDT)
Received: by mail-pf1-f194.google.com with SMTP id r1so15766868pfq.12
	for <yocto@yoctoproject.org>; Sat, 20 Jul 2019 19:41:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id;
	bh=5IZzEqDL7JSMsLjvGf4cec9NvYqPJVl0xLaLHs5heE0=;
	b=q8L767+VquJ2RPR7SoQCZyuVkX+Mqb0K7zXFEO1USQupu4smovD4QyBC2ootoCZCtf
	Ta7Qtz/3NsAxPTGoblBcdfuVPn3w52jrn4fxcdMVMtlKojAy7mxeLv4Em1kW5DMIPTf1
	/WOiFpLvhPDsuqpDRffjEUQa0z3u/CUg+wjeJZviEuoHPEPPItN9NJJGPh34Tq+ql5Uu
	lRfYBmlXY8JYpch2hXmRszQL4QskBEVaodq3tySq5G6vpDKVXHk+4/aK2PHuilZnOMIb
	IKSv4WiARMb9pzgWrl8RXtv5WSTQ3aZKm/gjiFQwJYkpuDBeQqA1bvjYWQmrXNLbm6ES
	bHew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=5IZzEqDL7JSMsLjvGf4cec9NvYqPJVl0xLaLHs5heE0=;
	b=Q3WVLDV82YblDmQekvcB984LU24uef4WQvngzYPt7SMeo0mqwpkxmFBO5BOJoM2KqG
	79VOqZDQPRoqGNTF7Evrbi0J09DydwwCitLJsmNo6UwUyx78BbeLarU7dw2Bqt2IW0a1
	KrQj1eIuF0H0LjsPjZi5AOoVJBnxrlh8b3YtKpOW/Bp0OsNs+OyhMxbmd9IIjFuNUAsk
	RrBfgzLETkoM90T0IaiPXxqse3oN2pHQlAfkwG4sN/IiPq9EnHy+a5ZCMXxB0/5K13rY
	1xpKWVLs/lms4W2UBaAh2rJa81g5PWb6KijIP/uiSSgdyedSd/+ngw3o1xHOEt/cM8cv
	BTAQ==
X-Gm-Message-State: APjAAAXvn2W9DWgFm0WWt0pXr/eTLi0U8kUL/O/PlSJQ/FR8pdtl08n9
	y1blkq57IN8P3m+jkFPu4ZdzQZVx
X-Google-Smtp-Source: APXvYqzyUy3XLRJqq0DSw2pmCFEP1BLxZbJyOQN4dkfLStLfqNIAkocuPHtROsSP4TnU5S3JlXg6hQ==
X-Received: by 2002:a65:6497:: with SMTP id e23mr61375225pgv.89.1563676884598; 
	Sat, 20 Jul 2019 19:41:24 -0700 (PDT)
Received: from akuster-ThinkPad-T460s.mvista.com
	([2601:202:4180:c33:bd4d:a6f4:da99:27b4])
	by smtp.gmail.com with ESMTPSA id
	x24sm33212461pgl.84.2019.07.20.19.41.23 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sat, 20 Jul 2019 19:41:24 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Sat, 20 Jul 2019 19:41:22 -0700
Message-Id: <1563676882-26294-1-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
Subject: [meta-security][PATCH] samhain: update to 4.3.3
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
X-List-Received-Date: Sun, 21 Jul 2019 02:41:26 -0000

remove PV from recipes names to make package update easier.

PV set in include file now

drop samhain-cross-compile.patch as stripping appears to have been removed.

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../samhain/files/samhain-cross-compile.patch      | 51 ----------------------
 .../{samhain-client_4.3.2.bb => samhain-client.bb} |  0
 .../{samhain-server_4.3.2.bb => samhain-server.bb} |  0
 ...n-standalone_4.3.2.bb => samhain-standalone.bb} |  0
 recipes-ids/samhain/samhain.inc                    |  6 +--
 5 files changed, 3 insertions(+), 54 deletions(-)
 delete mode 100644 recipes-ids/samhain/files/samhain-cross-compile.patch
 rename recipes-ids/samhain/{samhain-client_4.3.2.bb => samhain-client.bb} (100%)
 rename recipes-ids/samhain/{samhain-server_4.3.2.bb => samhain-server.bb} (100%)
 rename recipes-ids/samhain/{samhain-standalone_4.3.2.bb => samhain-standalone.bb} (100%)

diff --git a/recipes-ids/samhain/files/samhain-cross-compile.patch b/recipes-ids/samhain/files/samhain-cross-compile.patch
deleted file mode 100644
index 7f80a5c..0000000
--- a/recipes-ids/samhain/files/samhain-cross-compile.patch
+++ /dev/null
@@ -1,51 +0,0 @@
-From f63908427b2adb1792c59edbe38618e14ef5bc7b Mon Sep 17 00:00:00 2001
-From: Jackie Huang <jackie.huang@windriver.com>
-Date: Fri, 15 Jan 2016 00:48:58 -0500
-Subject: [PATCH] Enable obfuscating binaries natively.
-
-Enable obfuscating binaries natively.
-
-The samhain build process involves an obfuscation step that attempts to
-defeat decompilation or other binary analysis techniques which might reveal
-secret information that should be known only to the system administrator.
-The obfuscation step builds several applications which run on the build host
-and then generate target code, which is then built into target binaries.
-
-This patch creates a basic infrastructure that supports building the
-obfuscation binaries natively then cross-compiling the target code by adding
-a special configure option.  In the absence of this option the old behaviour
-is preserved.
-
-Upstream-Status: Inappropriate [cross compile specific]
-    
-Signed-off-by: Aws Ismail <aws.ismail@windriver.com>
-Signed-off-by: Jackie Huang <jackie.huang@windriver.com>
----
- Makefile.in | 4 +---
- 1 file changed, 1 insertion(+), 3 deletions(-)
-
-diff --git a/Makefile.in b/Makefile.in
-index 684e92b..fb090e2 100644
---- a/Makefile.in
-+++ b/Makefile.in
-@@ -54,7 +54,7 @@ selectconfig = @selectconfig@
- top_builddir = .
- 
- INSTALL = @INSTALL@
--INSTALL_PROGRAM = @INSTALL@ -s -m 700
-+INSTALL_PROGRAM = @INSTALL@ -m 700
- INSTALL_SHELL = @INSTALL@ -m 700
- INSTALL_DATA = @INSTALL@ -m 600
- INSTALL_MAN = @INSTALL@ -m 644
-@@ -525,8 +525,6 @@ install-program: $(PROGRAMS) sstrip
- 	      echo " $(INSTALL_PROGRAM) $$p $$target"; \
- 	      $(INSTALL_PROGRAM) $$p $$target; \
- 	      chmod 0700 $$target; \
--	      echo " ./sstrip $$target"; \
--	      ./sstrip $$target; \
- 	    else \
- 	      echo " $(INSTALL_SHELL) $$p $$target"; \
- 	      $(INSTALL_SHELL) $$p $$target; \
--- 
-1.9.1
-
diff --git a/recipes-ids/samhain/samhain-client_4.3.2.bb b/recipes-ids/samhain/samhain-client.bb
similarity index 100%
rename from recipes-ids/samhain/samhain-client_4.3.2.bb
rename to recipes-ids/samhain/samhain-client.bb
diff --git a/recipes-ids/samhain/samhain-server_4.3.2.bb b/recipes-ids/samhain/samhain-server.bb
similarity index 100%
rename from recipes-ids/samhain/samhain-server_4.3.2.bb
rename to recipes-ids/samhain/samhain-server.bb
diff --git a/recipes-ids/samhain/samhain-standalone_4.3.2.bb b/recipes-ids/samhain/samhain-standalone.bb
similarity index 100%
rename from recipes-ids/samhain/samhain-standalone_4.3.2.bb
rename to recipes-ids/samhain/samhain-standalone.bb
diff --git a/recipes-ids/samhain/samhain.inc b/recipes-ids/samhain/samhain.inc
index 1b9af39..16222ba 100644
--- a/recipes-ids/samhain/samhain.inc
+++ b/recipes-ids/samhain/samhain.inc
@@ -3,9 +3,9 @@ HOMEPAGE    = "http://www.la-samhna.de/samhain/"
 LICENSE     = "GPLv2"
 LIC_FILES_CHKSUM = "file://LICENSE;md5=8ca43cbc842c2336e835926c2166c28b"
 
+PV = "4.3.3"
 
 SRC_URI = "http://la-samhna.de/archive/samhain_signed-${PV}.tar.gz \
-           file://samhain-cross-compile.patch \
            file://samhain-mips64-aarch64-dnmalloc-hash-fix.patch \
            file://samhain-samhainrc.patch \
            file://samhain-samhainrc-fix-files-dirs-path.patch \
@@ -19,8 +19,8 @@ SRC_URI = "http://la-samhna.de/archive/samhain_signed-${PV}.tar.gz \
            file://samhain.service \
            "
 
-SRC_URI[md5sum] = "eae4674164d7c78f5bb39c72b7029c8b"
-SRC_URI[sha256sum] = "0582864ef56ab796031e8e611ed66c48adeb3a30ec34e1a8d0088572442035fc"
+SRC_URI[md5sum] = "7be46ae7d03f53ba21afafd41cff8926"
+SRC_URI[sha256sum] = "33ad4bc3dad4699694553bd9635a6b5827939f965d1f0f05fce0b4e9cdadf21b"
 
 UPSTREAM_CHECK_URI = "https://www.la-samhna.de/samhain/archive.html"
 UPSTREAM_CHECK_REGEX = "samhain_signed-(?P<pver>(\d+(\.\d+)+))\.tar"
-- 
2.7.4


