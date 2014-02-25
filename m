Return-Path: <ajlennon@gmail.com>
Received: from mail-we0-f173.google.com (mail-we0-f173.google.com
	[74.125.82.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 55442E00900
	for <yocto@yoctoproject.org>; Tue, 25 Feb 2014 10:49:55 -0800 (PST)
Received: by mail-we0-f173.google.com with SMTP id x48so779595wes.32
	for <yocto@yoctoproject.org>; Tue, 25 Feb 2014 10:49:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:from:to:subject:date:message-id:in-reply-to:references
	:in-reply-to:references;
	bh=UYYXcdXBYWPrVqHhrew8PhXXhtY8ArH1kKsxz5B2lGM=;
	b=Dhh51HdCE9FA/xT/yY/TJSAHNS/LVFfi+PhNYcVTusmJikuiCwDKwPStubPFmP6pu6
	u29A63l5u1DvInrAf0cVL2tKxyEEgXaGTyQlDeEZTRWvoyAyIHgB9y3nKGtBHkP7JBvh
	4DFB9GBNx+CG47ypDZT9/2mbODBKtC4R/K2VxDyod6BMXOC8vhKHFpdfnAkN/NabiaJI
	Ouq9+WUUF7VvL/JNv/2P56eucJNRLSjxv3klrBWfGGef7A70WOChO4yvlIWKY0eLsrhV
	2GITBmUeZkB19eKsXG6dKoAEnwBd+j8WVdJoY6VgneaI6uV+bvbu5eP2a1FPD1qRvV8j
	hMFQ==
X-Received: by 10.180.99.39 with SMTP id en7mr1507504wib.10.1393354194589;
	Tue, 25 Feb 2014 10:49:54 -0800 (PST)
Received: from localhost.localdomain
	(cpc32-live22-2-0-cust59.17-2.cable.virginm.net. [82.36.253.60])
	by mx.google.com with ESMTPSA id p1sm2648706wie.1.2014.02.25.10.49.53
	for <multiple recipients>
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Tue, 25 Feb 2014 10:49:53 -0800 (PST)
Sender: Alex Lennon <ajlennon@gmail.com>
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
To: yocto@yoctoproject.org, paul.eggleton@linux.intel.com, raj.khem@gmail.com
Date: Tue, 25 Feb 2014 18:48:17 +0000
Message-Id: <8772af88465bf1ee9e22986104dff4f17fff5501.1393353739.git.ajlennon@dynamicdevices.co.uk>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1393353739.git.ajlennon@dynamicdevices.co.uk>
References: <cover.1393353739.git.ajlennon@dynamicdevices.co.uk>
In-Reply-To: <cover.1393353739.git.ajlennon@dynamicdevices.co.uk>
References: <cover.1393353739.git.ajlennon@dynamicdevices.co.uk>
Subject: [PATCH 1/2] libgdiplus: Fix build error relating to missing freetype/tttables.h, and update to libgdiplus 2.10.8
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
X-List-Received-Date: Tue, 25 Feb 2014 18:49:56 -0000

- libgdiplus 2.10 is fairly old, released 3 years ago (cea5a3f)
- libgdiplus 2.10.8 is curently the most recent release available on GitHub and is also old, released 2 years ago (5179dd3)
- there have been a substantial number of commits since these releases so it may be worth considering a recipe to build from a specific git commit (thoughts appreciated)

@see: https://github.com/mono/libgdiplus/releases

libgdiplus-2.10 and libgdiplus-2.10.8 recipes fail to build currently with an error

 gdiplus-private.h:33:31: fatal error: freetype/tttables.h: No such file or directory

This is a known issue addressed by commit 180c02e into master on 16/12/13. From the commit message,

"As of FreeType 2.1.6 (November 2003), using #include to include Freetype libraries directly is not supported.
This has come to a head, as in FreeType 2.5.0, the location of headers has been moved around, breaking building of libgdiplus.
This slight change uses the "official" way to include the required header file, without breaking building on older versions of the library."

Signed-off-by: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
---
 ...gdiplus-2.10.x-use-freetype-include-macro.patch |   14 ++++++++++++++
 .../{libgdiplus_2.10.bb => libgdiplus_2.10.8.bb}   |    8 ++++----
 2 files changed, 18 insertions(+), 4 deletions(-)
 create mode 100644 recipes-mono/libgdiplus/files/libgdiplus-2.10/libgdiplus-2.10.x-use-freetype-include-macro.patch
 rename recipes-mono/libgdiplus/{libgdiplus_2.10.bb => libgdiplus_2.10.8.bb} (68%)

diff --git a/recipes-mono/libgdiplus/files/libgdiplus-2.10/libgdiplus-2.10.x-use-freetype-include-macro.patch b/recipes-mono/libgdiplus/files/libgdiplus-2.10/libgdiplus-2.10.x-use-freetype-include-macro.patch
new file mode 100644
index 0000000..bce4e9b
--- /dev/null
+++ b/recipes-mono/libgdiplus/files/libgdiplus-2.10/libgdiplus-2.10.x-use-freetype-include-macro.patch
@@ -0,0 +1,14 @@
+diff -ur libgdiplus-2.10.8.org/src/gdiplus-private.h libgdiplus-2.10.8/src/gdiplus-private.h
+--- libgdiplus-2.10.8.org/src/gdiplus-private.h 2014-02-05 17:50:30.979205246 +0000
++++ libgdiplus-2.10.8/src/gdiplus-private.h     2014-02-05 17:51:54.519205465 +0000
+@@ -30,7 +30,8 @@
+ #include <stdio.h>
+ #include <math.h>
+ #include <glib.h>
+-#include <freetype/tttables.h>
++#include <ft2build.h>
++#include FT_TRUETYPE_TABLES_H
+ #include <pthread.h>
+ #include <unistd.h>
+
+
diff --git a/recipes-mono/libgdiplus/libgdiplus_2.10.bb b/recipes-mono/libgdiplus/libgdiplus_2.10.8.bb
similarity index 68%
rename from recipes-mono/libgdiplus/libgdiplus_2.10.bb
rename to recipes-mono/libgdiplus/libgdiplus_2.10.8.bb
index 216e329..8326a88 100644
--- a/recipes-mono/libgdiplus/libgdiplus_2.10.bb
+++ b/recipes-mono/libgdiplus/libgdiplus_2.10.8.bb
@@ -6,9 +6,10 @@ SECTION = "libs"
 LICENSE = "MIT"
 LIC_FILES_CHKSUM = "file://COPYING;md5=fe7364dfce9f3689eb6995e7cdd56879"
 
-SRC_URI = "http://download.mono-project.com/sources/libgdiplus/libgdiplus-${PV}.tar.bz2 \
+SRC_URI = "https://github.com/mono/libgdiplus/archive/${PV}.tar.gz \
            file://libgdiplus-2.10/cairo/configure.in.diff \
            file://libgdiplus-2.10/libgdiplus-2.10.1-libpng15.patch \
+	   file://libgdiplus-2.10/libgdiplus-2.10.x-use-freetype-include-macro.patch \
 	"
 
 inherit autotools pkgconfig
@@ -17,9 +18,8 @@ DEPENDS =+ "cairo freetype fontconfig libxft libpng"
 
 PR = "r1"
 
-SRC_URI[md5sum] = "451966e8f637e3a1f02d1d30f900255d"
-SRC_URI[sha256sum] = "2d9e0397ef5583ed855eaafcdac8cabbe1d58463ed1e4b545be6dde5b63712a4"
-
+SRC_URI[md5sum] = "6fd45bbb9843f5a8851b5f44e2a5dd04"
+SRC_URI[sha256sum] = "45c533dc72af0a24d1d3a8097873f5fe1670107fe7e6d08fb71ae586c87a0f1d"
 
 FILES_${PN} += "${libdir}/libgdiplus.so"
 INSANE_SKIP_${PN} += "dev-so"
-- 
1.7.9.5


