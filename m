Return-Path: <jpewhacker@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EAEAFE00D74; Tue,  2 Jul 2019 13:21:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (jpewhacker[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.65 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f65.google.com (mail-io1-f65.google.com
	[209.85.166.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 356C8E00961
	for <yocto@lists.yoctoproject.org>;
	Tue,  2 Jul 2019 13:21:36 -0700 (PDT)
Received: by mail-io1-f65.google.com with SMTP id n5so40168935ioc.7
	for <yocto@lists.yoctoproject.org>;
	Tue, 02 Jul 2019 13:21:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=PcIR1JulrniFs+LW1Y9pe8zvbniSncTpERTuUOdu10E=;
	b=GkgLRdFEYdt7QT4Z879kJlAYlNVIElQwTwve948HUnNXy2v6youXD7E0TpiHgxlnvx
	K3celM+MJ6hCKQoqWmD11xOUjHq7TIpabh/bHQXnIY6WLWzbcHlIHtoM/ediAnemRse6
	s68fxKTJtFIA8y4Mb5q3NF5Qk7pS8nuyNrmjwSaamfvDTSXf6CV/6sAB4xtkurTNlYbQ
	fw9fdpio+qOix5X/+fFoE9z+J00CsnmoPRxrmRecyupjJwNdQnqVIY+Zevli8nSWhqUT
	5JKuvXAs2pRJqg5nXCW6Wfc1gqThtrMbSKTd7w5UJJzQ1B4wu+/xuhDV40y1h8RjVi9Z
	8wxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=PcIR1JulrniFs+LW1Y9pe8zvbniSncTpERTuUOdu10E=;
	b=tNP7w/0oecGH0cy2Vf3qmiGHCFoqXFuW/XI40kwlgBLvsoLwolWU9U8/MbJ+UqIJ4P
	en1ICrDnrqIemENGdQxzSjLrgGzI1GtIGpgEh/n077Kq24miQ9QHQl35V7Jhxb5HEhMU
	P43R5XaTIQz1SI5c87OQpE/WRL3l/M4upXeeLwOfDQiTWrvO+YGFSVQ9l87pZEPj/N+u
	pVCxdvOgcU/bWFZORUoFV1SR/vfF/H+H5fFuM/rrzWmU/UG48ThcS8dG8zDau8gadWSh
	C+S1GH6gg9Cvd2c8/Yrpt0e2pbSllpJ/6CVdA837HUgQuJkqO20cJCpP5PfJ7LGj+UK4
	TU/g==
X-Gm-Message-State: APjAAAW68rcovmXJ4BXRJQczHS5wuovWmEivchx9kQ+7rMLLxVbr35Dp
	hYbouEAu0dz7JBQ+LdJLDX2r4/Rg
X-Google-Smtp-Source: APXvYqxB5MkngSzzsFOIe1Ec1NITcY6b3PTgXr9lkfTA9LZMfXRC64PBHzJcV25owHnurzb4HBrY6A==
X-Received: by 2002:a6b:2cc7:: with SMTP id s190mr34636539ios.29.1562098895449;
	Tue, 02 Jul 2019 13:21:35 -0700 (PDT)
Received: from ola-842mrw1.ad.garmin.com ([204.77.163.55])
	by smtp.gmail.com with ESMTPSA id
	y18sm17986169iob.64.2019.07.02.13.21.34
	(version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
	Tue, 02 Jul 2019 13:21:34 -0700 (PDT)
From: Joshua Watt <jpewhacker@gmail.com>
X-Google-Original-From: Joshua Watt <JPEWhacker@gmail.com>
To: yocto@lists.yoctoproject.org
Date: Tue,  2 Jul 2019 15:21:32 -0500
Message-Id: <20190702202132.6715-1-JPEWhacker@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Subject: [meta-mingw][PATCH] bzip2: Update to 1.0.7
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
X-List-Received-Date: Tue, 02 Jul 2019 20:21:37 -0000
Content-Transfer-Encoding: 8bit

Updates bzip2 to version 1.0.7 to match master in oe-core. The patch to
change the path separator was properly upstreamed and hopefully will no
longer be necessary going forward.

Signed-off-by: Joshua Watt <JPEWhacker@gmail.com>
---
 .../0001-Fix-include-path-separator.patch     | 33 +++++++++++++++++++
 recipes-extended/bzip2/bzip2/fix.patch        | 13 --------
 recipes-extended/bzip2/bzip2_1.0.6.bbappend   |  4 ---
 recipes-extended/bzip2/bzip2_1.0.7.bbappend   |  4 +++
 4 files changed, 37 insertions(+), 17 deletions(-)
 create mode 100644 recipes-extended/bzip2/bzip2/0001-Fix-include-path-separator.patch
 delete mode 100644 recipes-extended/bzip2/bzip2/fix.patch
 delete mode 100644 recipes-extended/bzip2/bzip2_1.0.6.bbappend
 create mode 100644 recipes-extended/bzip2/bzip2_1.0.7.bbappend

diff --git a/recipes-extended/bzip2/bzip2/0001-Fix-include-path-separator.patch b/recipes-extended/bzip2/bzip2/0001-Fix-include-path-separator.patch
new file mode 100644
index 0000000..4c43b7a
--- /dev/null
+++ b/recipes-extended/bzip2/bzip2/0001-Fix-include-path-separator.patch
@@ -0,0 +1,33 @@
+From 84c8769b52c63cce8a8a413e5fcbad1a65681d46 Mon Sep 17 00:00:00 2001
+From: Joshua Watt <JPEW.hacker@gmail.com>
+Date: Tue, 2 Jul 2019 13:06:30 -0500
+Subject: [PATCH] Fix include path separator
+
+Changes the include path separator for Windows builds to use "/" instead
+of "\". Windows has no problems with using a forward slash as a path
+separator, but using a backslash causes problems when attempting to
+cross compile for other platforms (for example, when trying to cross
+compile for MinGW from Linux).
+
+Signed-off-by: Joshua Watt <JPEWhacker@gmail.com>
+Upstream-Status: Submitted [https://sourceware.org/ml/bzip2-devel/2019-q3/msg00004.html]
+---
+ bzip2.c | 2 +-
+ 1 file changed, 1 insertion(+), 1 deletion(-)
+
+diff --git a/bzip2.c b/bzip2.c
+index e362c65..be3b3be 100644
+--- a/bzip2.c
++++ b/bzip2.c
+@@ -128,7 +128,7 @@
+ #if BZ_LCCWIN32
+ #   include <io.h>
+ #   include <fcntl.h>
+-#   include <sys\stat.h>
++#   include <sys/stat.h>
+ 
+ #   define NORETURN       /**/
+ #   define PATH_SEP       '\\'
+-- 
+2.21.0
+
diff --git a/recipes-extended/bzip2/bzip2/fix.patch b/recipes-extended/bzip2/bzip2/fix.patch
deleted file mode 100644
index a366a5d..0000000
--- a/recipes-extended/bzip2/bzip2/fix.patch
+++ /dev/null
@@ -1,13 +0,0 @@
-Index: bzip2-1.0.6/bzip2.c
-===================================================================
---- bzip2-1.0.6.orig/bzip2.c	2010-09-10 23:04:53.000000000 +0000
-+++ bzip2-1.0.6/bzip2.c	2013-08-13 10:30:15.596120522 +0000
-@@ -128,7 +128,7 @@
- #if BZ_LCCWIN32
- #   include <io.h>
- #   include <fcntl.h>
--#   include <sys\stat.h>
-+#   include <sys/stat.h>
- 
- #   define NORETURN       /**/
- #   define PATH_SEP       '\\'
diff --git a/recipes-extended/bzip2/bzip2_1.0.6.bbappend b/recipes-extended/bzip2/bzip2_1.0.6.bbappend
deleted file mode 100644
index 882147c..0000000
--- a/recipes-extended/bzip2/bzip2_1.0.6.bbappend
+++ /dev/null
@@ -1,4 +0,0 @@
-
-FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
-
-SRC_URI_append_mingw32 = " file://fix.patch"
\ No newline at end of file
diff --git a/recipes-extended/bzip2/bzip2_1.0.7.bbappend b/recipes-extended/bzip2/bzip2_1.0.7.bbappend
new file mode 100644
index 0000000..3cc4b01
--- /dev/null
+++ b/recipes-extended/bzip2/bzip2_1.0.7.bbappend
@@ -0,0 +1,4 @@
+
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
+
+SRC_URI_append_mingw32 = " file://0001-Fix-include-path-separator.patch"
-- 
2.21.0


