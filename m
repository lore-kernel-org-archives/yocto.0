Return-Path: <andre.draszik@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1A5E8E00EAB; Mon, 12 Mar 2018 09:38:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.128.193 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-wr0-f193.google.com (mail-wr0-f193.google.com
	[209.85.128.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 98271E00A61
	for <yocto@yoctoproject.org>; Mon, 12 Mar 2018 09:38:15 -0700 (PDT)
Received: by mail-wr0-f193.google.com with SMTP id n12so5223277wra.2
	for <yocto@yoctoproject.org>; Mon, 12 Mar 2018 09:38:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references:mime-version:content-transfer-encoding;
	bh=H9KYDHhoyAOyaUQpJ2f9AlII+WyfCaqvFvgBoKvVt70=;
	b=Oz7WgyKZXtREieLw28bRpMEgyfODUhYry9pTKdUo5nXQ3NdbSIl1j8xfZGnI/NCmrM
	0eJj2GBNu0+Z+N2ZKWuujFfftZCixdtRwk7tekRHNEyQNEbVqbQ42s1ph7IoQ/Q0n/M1
	TNBPm16qZQhXj/WZ4o/IfMUHuU32VIRBn8X2aSf1GfU+J5Ih86qcUCGR4QDZr4bDSqkE
	QFuFyvq2r1ElZkozDndUGQKJViLxj1a1IYtVG6Q+I4MV2xfEIqzyQKGDl/ZMcYo8zDmu
	ED+W6c5jzvpMitM6ZJm1WVmJvoJSS5DF+PNOawQ30+97fZS8LrNQyW4ege7cbK+ijOd1
	gLrA==
X-Gm-Message-State: AElRT7EpYqWa50Q+7vkioRp6/qdxgj4D9Gcz6c3k3nHjlbgFTt83Bl2W
	QfdZBcXv/PJR51Nmfrw3cHhnp/VN
X-Google-Smtp-Source: AG47ELs5PdfluHxEYPvnHz02+AHWOtJIlaAffeoFbM04W+/Ig5DFpH1X6KzUyXu6IKz1XTU2hhORrw==
X-Received: by 10.223.151.1 with SMTP id r1mr3517254wrb.126.1520872693973;
	Mon, 12 Mar 2018 09:38:13 -0700 (PDT)
Received: from tfsielt31850.garage.tyco.com ([77.107.218.170])
	by smtp.gmail.com with ESMTPSA id
	m15sm8134623wrb.58.2018.03.12.09.38.11 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 12 Mar 2018 09:38:11 -0700 (PDT)
From: =?UTF-8?q?Andr=C3=A9=20Draszik?= <git@andred.net>
To: yocto@yoctoproject.org
Date: Mon, 12 Mar 2018 16:38:06 +0000
Message-Id: <20180312163806.16943-2-git@andred.net>
X-Mailer: git-send-email 2.16.2
In-Reply-To: <20180312163806.16943-1-git@andred.net>
References: <20180312163806.16943-1-git@andred.net>
MIME-Version: 1.0
Subject: [meta-java][PATCH 2/2] openjdk-8: fix build with --as-needed host toolchains (Ubuntu 16.04)
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
X-List-Received-Date: Mon, 12 Mar 2018 16:38:17 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

From: André Draszik <andre.draszik@jci.com>

As per the commit message - build on hosts with --as-needed
toolchains (Ubuntu 16.04) using system provided zlib fails:

If the (host) toolchain has been configured to
unconditionally add --as-needed to the linker command line
then linking can fail when using system libraries.

The reason is that the order of command line arguments
becomes important with --as-needed and the JDK build system
places needed system libraries at the beginning of the
command line where it would normally place the object files
from its own bundled compiled version.

Having those system libraries early in the command line is
not useful, as they are discarded by the linker at that
point in time as it hasn't seen any reference to the
symbols provided yet.

As it seems a generic pattern in the makefiles here, just
place the $EXPECTED_OBJS early in the command line, before
any additional libraries, so as to fix this once and for
all.

Change-Id: I568067011bb8899700c63aa3ee9ca952045cce05
Signed-off-by: André Draszik <andre.draszik@jci.com>
---
 recipes-core/openjdk/openjdk-8-release-16xbyy.inc  |  1 +
 ...fix-build-on-as-needed-toolchains-generic.patch | 91 ++++++++++++++++++++++
 2 files changed, 92 insertions(+)
 create mode 100644 recipes-core/openjdk/patches-openjdk-8/0010-build-fix-build-on-as-needed-toolchains-generic.patch

diff --git a/recipes-core/openjdk/openjdk-8-release-16xbyy.inc b/recipes-core/openjdk/openjdk-8-release-16xbyy.inc
index ab72830..bd4a349 100644
--- a/recipes-core/openjdk/openjdk-8-release-16xbyy.inc
+++ b/recipes-core/openjdk/openjdk-8-release-16xbyy.inc
@@ -15,6 +15,7 @@ PATCHES_URI = "\
     file://0007-jdk-use-correct-include-for-poll.patch \
     file://0008-jdk-use-correct-include-for-signal.patch \
     file://0009-jdk-disable-backtrace-musl-build-fix.patch \
+    file://0010-build-fix-build-on-as-needed-toolchains-generic.patch \
 "
 # some patches extracted from http://cr.openjdk.java.net/~rkennke/shark-build-hotspot/webrev.01/hotspot.patch
 # reported via http://mail.openjdk.java.net/pipermail/build-dev/2015-January/013972.html
diff --git a/recipes-core/openjdk/patches-openjdk-8/0010-build-fix-build-on-as-needed-toolchains-generic.patch b/recipes-core/openjdk/patches-openjdk-8/0010-build-fix-build-on-as-needed-toolchains-generic.patch
new file mode 100644
index 0000000..2d02b7c
--- /dev/null
+++ b/recipes-core/openjdk/patches-openjdk-8/0010-build-fix-build-on-as-needed-toolchains-generic.patch
@@ -0,0 +1,91 @@
+From 84bcdb9cdab0e0be9cdfededfb518d3cea9009e3 Mon Sep 17 00:00:00 2001
+From: =?UTF-8?q?Andr=C3=A9=20Draszik?= <andre.draszik@jci.com>
+Date: Mon, 12 Mar 2018 15:40:58 +0000
+Subject: [PATCH] build: fix build on --as-needed toolchains (generic)
+MIME-Version: 1.0
+Content-Type: text/plain; charset=UTF-8
+Content-Transfer-Encoding: 8bit
+
+If the (host) toolchain has been configured to
+unconditionally add --as-needed to the linker command line
+then linking fails when using the system zlib:
+  + ...gcc -lz -L<sysroot>/usr/lib -L<sysroot>/lib \
+               -Wl,-rpath-link,<sysroot>/usr/lib -Wl,-rpath-link,<sysroot>/lib \
+               -Wl,-rpath,<sysroot>/usr/lib -Wl,-rpath,<sysroot>/lib \
+           -Wl,-O1 -Xlinker --hash-style=both -Xlinker -z -Xlinker defs -Xlinker -O1 \
+           -Xlinker --allow-shlib-undefined -Xlinker -soname=libunpack.so \
+           -Xlinker -z -Xlinker origin -Xlinker -rpath -Xlinker '$ORIGIN' \
+           -lc \
+           -Xlinker -version-script=<src>/jdk/make/mapfiles/libunpack/mapfile-vers-unpack200 \
+           -o $build/jdk/objs/unpackexe/unpack200 \
+           $build/jdk/objs/unpackexe/bands.o $build/jdk/objs/unpackexe/bytes.o \
+           $build/jdk/objs/unpackexe/coding.o $build/jdk/objs/unpackexe/main.o \
+           $build/jdk/objs/unpackexe/unpack.o $build/jdk/objs/unpackexe/utils.o \
+           $build/jdk/objs/unpackexe/zip.o -lstdc++
+  $build/jdk/objs/unpackexe/zip.o: In function `jar::deflate_bytes(bytes&, bytes&)':
+  $src/jdk/src/share/native/com/sun/java/util/jar/pack/zip.cpp:464: undefined reference to `deflateInit2_'
+  $src/jdk/src/share/native/com/sun/java/util/jar/pack/zip.cpp:507: undefined reference to `deflate'
+  $src/jdk/src/share/native/com/sun/java/util/jar/pack/zip.cpp:514: undefined reference to `deflateEnd'
+  $src/jdk/src/share/native/com/sun/java/util/jar/pack/zip.cpp:502: undefined reference to `deflate'
+  $src/jdk/src/share/native/com/sun/java/util/jar/pack/zip.cpp:518: undefined reference to `deflateEnd'
+  $build/jdk/objs/unpackexe/zip.o: In function `jar::get_crc32(unsigned int, unsigned char*, unsigned int)':
+  $src/jdk/src/share/native/com/sun/java/util/jar/pack/zip.cpp:61: undefined reference to `crc32'
+  $src/jdk/src/share/native/com/sun/java/util/jar/pack/zip.cpp:61: undefined reference to `crc32'
+  $src/jdk/src/share/native/com/sun/java/util/jar/pack/zip.cpp:61: undefined reference to `crc32'
+  $build/jdk/objs/unpackexe/zip.o: In function `gunzip::free()':
+  $src/jdk/src/share/native/com/sun/java/util/jar/pack/zip.cpp:645: undefined reference to `inflateEnd'
+  $build/jdk/objs/unpackexe/zip.o: In function `read_input_via_gzip(unpacker*, void*, long, long)':
+  $src/jdk/src/share/native/com/sun/java/util/jar/pack/zip.cpp:548: undefined reference to `inflate'
+  $src/jdk/src/share/native/com/sun/java/util/jar/pack/zip.cpp:548: undefined reference to `inflate'
+  $build/jdk/objs/unpackexe/zip.o: In function `gunzip::start(int)':
+  $src/jdk/src/share/native/com/sun/java/util/jar/pack/zip.cpp:637: undefined reference to `inflateInit2_'
+  collect2: error: ld returned 1 exit status
+
+(as happened on a Ubuntu 16.04 xenial host:
+  gcc --version
+  gcc (Ubuntu 5.4.0-6ubuntu1~16.04.9) 5.4.0 20160609
+  Copyright (C) 2015 Free Software Foundation, Inc.
+  This is free software; see the source for copying conditions.  There is NO
+  warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
+)
+
+The reason is that the order of command line arguments
+becomes important with --as-needed and the JDK build system
+places -lz at the beginning of the command line where it
+would normally place the zlib object files from its own
+bundled compiled version.
+
+Having -lz early in the command line is not useful, as it
+is discarded by the linker at that point in time as it
+hasn't seen any reference to the symbols provided yet.
+
+As it seems a generic pattern in the makefiles here, just
+place the $EXPECTED_OBJS early in the command line, before
+any additional libraries, so as to fix this once and for
+all.
+
+Signed-off-by: André Draszik <andre.draszik@jci.com>
+---
+Upstream-Status: Pending
+ make/common/NativeCompilation.gmk | 5 ++---
+ 1 file changed, 2 insertions(+), 3 deletions(-)
+
+diff --git a/make/common/NativeCompilation.gmk b/make/common/NativeCompilation.gmk
+index e7ea22ce..79f081fd 100644
+--- a/make/common/NativeCompilation.gmk
++++ b/make/common/NativeCompilation.gmk
+@@ -477,9 +477,8 @@ define SetupNativeCompilation
+ 
+     $$($1_TARGET) : $$($1_EXPECTED_OBJS) $$($1_RES) $$($1_GEN_MANIFEST)
+ 	$$(call LINKING_EXE_MSG,$$($1_BASENAME))
+-	$$($1_LDEXE) $$($1_LDFLAGS) $$($1_EXTRA_LDFLAGS) $(EXE_OUT_OPTION)$$($1_TARGET) \
+-	$$($1_EXPECTED_OBJS) $$($1_RES) $$($1_LDFLAGS_SUFFIX) \
+-	$$($1_EXTRA_LDFLAGS_SUFFIX)
++	$$($1_LDEXE) $$($1_EXPECTED_OBJS) $$($1_LDFLAGS) $$($1_EXTRA_LDFLAGS) $(EXE_OUT_OPTION)$$($1_TARGET) \
++	$$($1_RES) $$($1_LDFLAGS_SUFFIX) $$($1_EXTRA_LDFLAGS_SUFFIX)
+         ifneq (,$$($1_GEN_MANIFEST))
+ 	  $(MT) -nologo -manifest $$($1_GEN_MANIFEST) -outputresource:$$@;#1
+         endif
+-- 
+2.16.2
+
-- 
2.16.2


