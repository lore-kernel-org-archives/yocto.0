Return-Path: <peter.kjellerstedt@axis.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0A6BCE00D41; Tue,  3 Oct 2017 13:26:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [195.60.68.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from bastet.se.axis.com (bastet.se.axis.com [195.60.68.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ABE0FE00D3A
	for <yocto@yoctoproject.org>; Tue,  3 Oct 2017 13:26:52 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by bastet.se.axis.com (Postfix) with ESMTP id 6EDDB18A5E
	for <yocto@yoctoproject.org>; Tue,  3 Oct 2017 22:26:51 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at bastet.se.axis.com
Received: from bastet.se.axis.com ([IPv6:::ffff:127.0.0.1])
	by localhost (bastet.se.axis.com [::ffff:127.0.0.1]) (amavisd-new,
	port 10024) with LMTP id QhQoP610nyuJ for <yocto@yoctoproject.org>;
	Tue,  3 Oct 2017 22:26:48 +0200 (CEST)
Received: from boulder02.se.axis.com (boulder02.se.axis.com [10.0.8.16])
	by bastet.se.axis.com (Postfix) with ESMTPS id C670D18A73
	for <yocto@yoctoproject.org>; Tue,  3 Oct 2017 22:26:46 +0200 (CEST)
Received: from boulder02.se.axis.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 47B4C1A338
	for <yocto@yoctoproject.org>; Tue,  3 Oct 2017 22:26:46 +0200 (CEST)
Received: from boulder02.se.axis.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 3CF041A337
	for <yocto@yoctoproject.org>; Tue,  3 Oct 2017 22:26:46 +0200 (CEST)
Received: from seth.se.axis.com (unknown [10.0.2.172])
	by boulder02.se.axis.com (Postfix) with ESMTP
	for <yocto@yoctoproject.org>; Tue,  3 Oct 2017 22:26:46 +0200 (CEST)
Received: from saur-2.se.axis.com (saur-2.se.axis.com [10.92.3.2])
	by seth.se.axis.com (Postfix) with ESMTP id 313E2267E
	for <yocto@yoctoproject.org>; Tue,  3 Oct 2017 22:26:46 +0200 (CEST)
Received: from saur-2.se.axis.com (localhost [127.0.0.1])
	by saur-2.se.axis.com (8.14.5/8.14.5) with ESMTP id v93KQiYI022574
	for <yocto@yoctoproject.org>; Tue, 3 Oct 2017 22:26:44 +0200
Received: (from pkj@localhost)
	by saur-2.se.axis.com (8.14.5/8.14.5/Submit) id v93KQiGe022573
	for yocto@yoctoproject.org; Tue, 3 Oct 2017 22:26:44 +0200
From: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
To: yocto@yoctoproject.org
Date: Tue,  3 Oct 2017 22:26:41 +0200
Message-Id: <20171003202642.22530-1-pkj@axis.com>
X-Mailer: git-send-email 2.12.0
X-TM-AS-GCONF: 00
Subject: [meta-gplv2][PATCH 1/2] groff: Make it build with compile time hardening enabled
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
X-List-Received-Date: Tue, 03 Oct 2017 20:26:54 -0000

This avoids the following error:

  src/devices/grohtml/post-html.cc: In member function 'void
  header_desc::write_headings(FILE*, int)':
  src/devices/grohtml/post-html.cc:1402:32: error: format not a string
  literal and no format arguments [-Werror=format-security]
      fprintf(f, buffer.contents());

Signed-off-by: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
---
 ...build-with-compile-time-hardening-enabled.patch | 35 ++++++++++++++++++++++
 recipes-extended/groff/groff_1.18.1.4.bb           | 13 ++++----
 2 files changed, 42 insertions(+), 6 deletions(-)
 create mode 100644 recipes-extended/groff/groff-1.18.1.4/0001-Make-it-build-with-compile-time-hardening-enabled.patch

diff --git a/recipes-extended/groff/groff-1.18.1.4/0001-Make-it-build-with-compile-time-hardening-enabled.patch b/recipes-extended/groff/groff-1.18.1.4/0001-Make-it-build-with-compile-time-hardening-enabled.patch
new file mode 100644
index 0000000..43404fa
--- /dev/null
+++ b/recipes-extended/groff/groff-1.18.1.4/0001-Make-it-build-with-compile-time-hardening-enabled.patch
@@ -0,0 +1,35 @@
+From a1cd31daf05023a14d8e904a409cecbfc0fae93e Mon Sep 17 00:00:00 2001
+From: Peter Kjellerstedt <pkj@axis.com>
+Date: Mon, 2 Oct 2017 14:34:14 +0200
+Subject: [PATCH 1/2] Make it build with compile time hardening enabled
+
+This avoids the following error:
+
+  src/devices/grohtml/post-html.cc: In member function 'void
+  header_desc::write_headings(FILE*, int)':
+  src/devices/grohtml/post-html.cc:1402:32: error: format not a string
+  literal and no format arguments [-Werror=format-security]
+      fprintf(f, buffer.contents());
+
+Upstream-Status: Inappropriate [legacy version]
+Signed-off-by: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
+---
+ src/devices/grohtml/post-html.cc | 2 +-
+ 1 file changed, 1 insertion(+), 1 deletion(-)
+
+diff --git a/src/devices/grohtml/post-html.cc b/src/devices/grohtml/post-html.cc
+index 3c09d7c..1ad5580 100644
+--- a/src/devices/grohtml/post-html.cc
++++ b/src/devices/grohtml/post-html.cc
+@@ -1399,7 +1399,7 @@ void header_desc::write_headings (FILE *f, int force)
+ 
+ 	  buffer += as_string(h);
+ 	  buffer += '\0';
+-	  fprintf(f, buffer.contents());
++	  fprintf(f, "%s", buffer.contents());
+ 	} else
+ 	  fputs(g->text_string, f);
+ 	h++;
+-- 
+2.12.0
+
diff --git a/recipes-extended/groff/groff_1.18.1.4.bb b/recipes-extended/groff/groff_1.18.1.4.bb
index fc7eb44..0d1520d 100644
--- a/recipes-extended/groff/groff_1.18.1.4.bb
+++ b/recipes-extended/groff/groff_1.18.1.4.bb
@@ -9,12 +9,13 @@ PR = "r1"
 LIC_FILES_CHKSUM = "file://COPYING;md5=e43fc16fccd8519fba405f0a0ff6e8a3"
 
 SRC_URI = "${GNU_MIRROR}/${BPN}/old/${BP}.tar.gz \
-          file://groff-1.18.1.4-remove-mom.patch;striplevel=1 \
-          file://man-local.patch \
-          file://mdoc-local.patch \
-          file://groff-1.18.1.4-fix-bindir.patch \
-          file://fix-narrowing-conversion-error.patch \
-" 
+           file://groff-1.18.1.4-remove-mom.patch;striplevel=1 \
+           file://man-local.patch \
+           file://mdoc-local.patch \
+           file://groff-1.18.1.4-fix-bindir.patch \
+           file://fix-narrowing-conversion-error.patch \
+           file://0001-Make-it-build-with-compile-time-hardening-enabled.patch \
+"
 
 inherit autotools texinfo
 
-- 
2.12.0


