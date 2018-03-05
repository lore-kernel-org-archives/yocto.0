Return-Path: <andre.draszik@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F1252E0107B; Mon,  5 Mar 2018 01:31:25 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.128.194 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-wr0-f194.google.com (mail-wr0-f194.google.com
	[209.85.128.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 118A8E00E21
	for <yocto@yoctoproject.org>; Mon,  5 Mar 2018 01:31:23 -0800 (PST)
Received: by mail-wr0-f194.google.com with SMTP id n7so16465112wrn.5
	for <yocto@yoctoproject.org>; Mon, 05 Mar 2018 01:31:23 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references:mime-version:content-transfer-encoding;
	bh=OLYOq8maHtB2ppR1uPprIkSRpUqESaN0PJ0BnpfTm6Q=;
	b=NXHH9NjowDvddihTDjYDC8897cbAU7peRv+IyEpxatSonOiM0zURp1vLGYcwFM1KBq
	3fJlewomG1wRg1YBlDJN3OtrWj3+6Z3EYoJWKYYoRyAY/3IpLQyKIenL/UmH9MAfPTJ+
	KIreigUTqQZpMX5zAVDRmNr0dXgvKIK8bADo6n2EeLJAuAbJJmbYu116cW7et7d8kPi5
	WmjHEgngitqpmsYF6fgtYL5+iqop5ohxK2z+A1CVWfJzHKRpZK4Eb/xa+HycykyUWbL7
	dIkooIs4k2wd7W8NQsXW0fc8HPv/1UrzjEviGrHqsU6F6YLQV4o8t3/bzaihlpeMDYDr
	+RZA==
X-Gm-Message-State: APf1xPCAC4BvH5u5sFcDTGCtfvpgOjQNJNXKUrhFxeNE+Z3vhtFz6wtc
	5CYC+UUoyR9ieW0vDxkhv6k3XW5B
X-Google-Smtp-Source: AG47ELvSEgRiLRg4YhiEaQf3Bj7sUvM5Msh9iIU4LxAlZXFG5P1Rlr340Hz75U6xEEtaNay5+t60yQ==
X-Received: by 10.223.173.75 with SMTP id p69mr11948812wrc.222.1520242282606; 
	Mon, 05 Mar 2018 01:31:22 -0800 (PST)
Received: from tfsielt31850.garage.tyco.com ([77.107.218.170])
	by smtp.gmail.com with ESMTPSA id
	f142sm7255289wme.15.2018.03.05.01.31.21 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 05 Mar 2018 01:31:21 -0800 (PST)
From: =?UTF-8?q?Andr=C3=A9=20Draszik?= <git@andred.net>
To: yocto@yoctoproject.org
Date: Mon,  5 Mar 2018 09:30:59 +0000
Message-Id: <20180305093106.11858-8-git@andred.net>
X-Mailer: git-send-email 2.16.2
In-Reply-To: <20180305093106.11858-1-git@andred.net>
References: <20180305093106.11858-1-git@andred.net>
MIME-Version: 1.0
Subject: [meta-java][PATCH 07/14] openjdk-8: add patch for compiling with enabled security flags
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
X-List-Received-Date: Mon, 05 Mar 2018 09:31:26 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

From: André Draszik <andre.draszik@jci.com>

Rather than carrying an OE specific patch that just silences the
warning on some platform only, backport the upstream patch
to actually fix the issue.

Signed-off-by: André Draszik <andre.draszik@jci.com>
---
 recipes-core/openjdk/openjdk-8-release-162b12.inc  |  2 +-
 ...x-compilation-with-security-flags-enabled.patch | 41 ++++++++++++++++
 ...openjdk8-silence-d_fortify_source-warning.patch | 56 ----------------------
 3 files changed, 42 insertions(+), 57 deletions(-)
 create mode 100644 recipes-core/openjdk/patches-openjdk-8/0002-hotspot-fix-compilation-with-security-flags-enabled.patch
 delete mode 100644 recipes-core/openjdk/patches-openjdk-8/openjdk8-silence-d_fortify_source-warning.patch

diff --git a/recipes-core/openjdk/openjdk-8-release-162b12.inc b/recipes-core/openjdk/openjdk-8-release-162b12.inc
index 5a577b9..a36bc6a 100644
--- a/recipes-core/openjdk/openjdk-8-release-162b12.inc
+++ b/recipes-core/openjdk/openjdk-8-release-162b12.inc
@@ -7,6 +7,7 @@ PATCHES_URI = "\
     file://openjdk8-find-compiler-fix-env-respect.patch;striplevel=0 \
     file://openjdk8-prevent-debuginfo-in-favour-of-openembedded-package-split.patch;striplevel=0 \
     file://0001-jdk-comparison-between-pointer-and-integer.patch \
+    file://0002-hotspot-fix-compilation-with-security-flags-enabled.patch \
 "
 # some patches extracted from http://cr.openjdk.java.net/~rkennke/shark-build-hotspot/webrev.01/hotspot.patch
 # reported via http://mail.openjdk.java.net/pipermail/build-dev/2015-January/013972.html
@@ -17,7 +18,6 @@ PATCHES_URI_append_class-target = "\
     file://openjdk8-fix-shark-stdc++11.patch;striplevel=0 \
     file://openjdk8-fix-assembler-flag-handling-in-makefile.patch;striplevel=0 \
     file://openjdk8-fix-adlc-flags.patch;striplevel=0 \
-    file://openjdk8-silence-d_fortify_source-warning.patch;striplevel=0 \
     file://openjdk8-add-missing-linker-flags.patch;striplevel=0 \
     file://openjdk8-fix-libpng-neon-build.patch;striplevel=0 \
 "
diff --git a/recipes-core/openjdk/patches-openjdk-8/0002-hotspot-fix-compilation-with-security-flags-enabled.patch b/recipes-core/openjdk/patches-openjdk-8/0002-hotspot-fix-compilation-with-security-flags-enabled.patch
new file mode 100644
index 0000000..f06e791
--- /dev/null
+++ b/recipes-core/openjdk/patches-openjdk-8/0002-hotspot-fix-compilation-with-security-flags-enabled.patch
@@ -0,0 +1,41 @@
+From bdea8cf299313388ec41ea20281deca6dc4f764d Mon Sep 17 00:00:00 2001
+From: =?UTF-8?q?Andr=C3=A9=20Draszik?= <andre.draszik@jci.com>
+Date: Tue, 27 Feb 2018 14:41:06 +0000
+Subject: [PATCH 2/8] hotspot: fix compilation with security flags enabled
+MIME-Version: 1.0
+Content-Type: text/plain; charset=UTF-8
+Content-Transfer-Encoding: 8bit
+
+| hotspot/src/share/vm/code/dependencies.cpp: In function 'static void Dependencies::write_dependency_to(xmlStream*, Dependencies::DepType, GrowableArray<Dependencies::DepArgument>*, Klass*)':
+| hotspot/src/share/vm/code/dependencies.cpp:498:6: error: '%d' directive writing between 1 and 10 bytes into a region of size 9 [-Werror=format-overflow=]
+|  void Dependencies::write_dependency_to(xmlStream* xtty,
+|       ^~~~~~~~~~~~
+| hotspot/src/share/vm/code/dependencies.cpp:498:6: note: directive argument in the range [0, 2147483647]
+| hotspot/src/share/vm/code/dependencies.cpp:528:27: note: 'sprintf' output between 3 and 12 bytes into a destination of size 10
+|        char xn[10]; sprintf(xn, "x%d", j);
+|                     ~~~~~~~^~~~~~~~~~~~~~
+
+Backport a patch to fix this.
+
+Upstream-Status: Backport [http://hg.openjdk.java.net/jdk10/jdk10/hotspot/rev/eb11b3f0ae65]
+Signed-off-by: André Draszik <andre.draszik@jci.com>
+---
+ hotspot/src/share/vm/code/dependencies.cpp | 2 +-
+ 1 file changed, 1 insertion(+), 1 deletion(-)
+
+diff --git a/hotspot/src/share/vm/code/dependencies.cpp b/hotspot/src/share/vm/code/dependencies.cpp
+index 7317036d..c71d921d 100644
+--- a/hotspot/src/share/vm/code/dependencies.cpp
++++ b/hotspot/src/share/vm/code/dependencies.cpp
+@@ -525,7 +525,7 @@ void Dependencies::write_dependency_to(xmlStream* xtty,
+         xtty->object("x", arg.metadata_value());
+       }
+     } else {
+-      char xn[10]; sprintf(xn, "x%d", j);
++      char xn[12]; sprintf(xn, "x%d", j);
+       if (arg.is_oop()) {
+         xtty->object(xn, arg.oop_value());
+       } else {
+-- 
+2.16.2
+
diff --git a/recipes-core/openjdk/patches-openjdk-8/openjdk8-silence-d_fortify_source-warning.patch b/recipes-core/openjdk/patches-openjdk-8/openjdk8-silence-d_fortify_source-warning.patch
deleted file mode 100644
index 2c2e333..0000000
--- a/recipes-core/openjdk/patches-openjdk-8/openjdk8-silence-d_fortify_source-warning.patch
+++ /dev/null
@@ -1,56 +0,0 @@
-makefiles: Add -Wno-cpp to CFLAGS
-
-The security flag '-D_FORTIFY_SOURCE' requires at least -O to work,
-otherwise a warning is given. If CFLAGS additionally contains -Werror,
-this warning turns into an error. As Openjdk build system intentionally
-deoptimizes certains files due to potential bad codegen during optimization,
-build will fail when both '-D_FORTIFY_SOURCE' and '-Werror' are used.
-As turning the optimizations back on will likely break things, the
-warning is silenced instead.
-
-Upstream-Status: Inappropriate [Yocto-specific fixes]
-
-Signed-off-by: Erkka Kääriä <erkka.kaaria@intel.com>
----
- hotspot/make/linux/makefiles/amd64.make | 2 ++
- hotspot/make/linux/makefiles/i486.make  | 2 ++
- hotspot/make/linux/makefiles/zero.make  | 2 ++
- 3 files changed, 6 insertions(+)
-
-diff --git hotspot/make/linux/makefiles/amd64.make hotspot/make/linux/makefiles/amd64.make
-index 2b77dba..db3965b 100644
---- hotspot/make/linux/makefiles/amd64.make
-+++ hotspot/make/linux/makefiles/amd64.make
-@@ -31,4 +31,6 @@ CFLAGS += -DVM_LITTLE_ENDIAN
-
- CFLAGS += -D_LP64=1
-
-+CFLAGS += -Wno-cpp
-+
- OPT_CFLAGS/compactingPermGenGen.o = -O1
-diff --git hotspot/make/linux/makefiles/i486.make hotspot/make/linux/makefiles/i486.make
-index 86e825d..6a92f09 100644
---- hotspot/make/linux/makefiles/i486.make
-+++ hotspot/make/linux/makefiles/i486.make
-@@ -31,4 +31,6 @@ OPT_CFLAGS/sharedRuntimeTrans.o = $(OPT_CFLAGS/NOOPT)
- # Must also specify if CPU is little endian
- CFLAGS += -DVM_LITTLE_ENDIAN
-
-+CFLAGS += -Wno-cpp
-+
- OPT_CFLAGS/compactingPermGenGen.o = -O1
-diff --git hotspot/make/linux/makefiles/zero.make hotspot/make/linux/makefiles/zero.make
-index 0270711..2b05f33 100644
---- hotspot/make/linux/makefiles/zero.make
-+++ hotspot/make/linux/makefiles/zero.make
-@@ -28,5 +28,7 @@
- # Select which files to use (in top.make)
- TYPE = ZERO
-
-+CFLAGS += -Wno-cpp
-+
- # Install libjvm.so, etc in in server directory.
- VM_SUBDIR = server
---
-2.7.4
-
-- 
2.16.2


