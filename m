Return-Path: <mark.hatle@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 036B9E00C9E; Mon, 28 Aug 2017 13:32:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 69AB9E00C89
	for <yocto@yoctoproject.org>; Mon, 28 Aug 2017 13:32:02 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id v7SKVv2C014697
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 28 Aug 2017 13:31:57 -0700 (PDT)
Received: from msp-lpggp1.wrs.com (172.25.34.110) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.40) with Microsoft SMTP Server id 14.3.361.1;
	Mon, 28 Aug 2017 13:31:57 -0700
From: Mark Hatle <mark.hatle@windriver.com>
To: <yocto@yoctoproject.org>
Date: Mon, 28 Aug 2017 15:30:31 -0500
Message-ID: <1503952231-71689-1-git-send-email-mark.hatle@windriver.com>
X-Mailer: git-send-email 1.8.3.1
MIME-Version: 1.0
Subject: [meta-mingw][PATCH] Fix Yocto Project compatible errors
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
X-List-Received-Date: Mon, 28 Aug 2017 20:32:03 -0000
Content-Type: text/plain

Each of the recipes modified fail the YP compatible checking script because
they modify the checksum of the package, even when the mingw32 SDK is not
enabled.

This is corrected by ensuring that each of the settings is only done when
the mingw32 override is enabled.

The PACKAGECONFIG options are moved to oe-core, as there is no way to
specify they should only available in the mingw32 override is enabled.

Signed-off-by: Mark Hatle <mark.hatle@windriver.com>
---
 recipes-core/gettext/gettext_0.19.%.bbappend       | 6 +++---
 recipes-graphics/libsdl/libsdl_%.bbappend          | 5 -----
 recipes-support/libgcrypt/libgcrypt_1.8.%.bbappend | 4 ++--
 3 files changed, 5 insertions(+), 10 deletions(-)

diff --git a/recipes-core/gettext/gettext_0.19.%.bbappend b/recipes-core/gettext/gettext_0.19.%.bbappend
index 9835d7b..b33970a 100644
--- a/recipes-core/gettext/gettext_0.19.%.bbappend
+++ b/recipes-core/gettext/gettext_0.19.%.bbappend
@@ -4,14 +4,14 @@ LDFLAGS_prepend_mingw32 = " -lpthread "
 CFLAGS_append_mingw32 = " -DLIBXML_STATIC"
 EXTRA_OECONF_append_mingw32 = " --enable-threads=windows --enable-static"
 
-FILESEXTRAPATHS_prepend := "${THISDIR}/${BPN}:"
-SRC_URI_append = " \
+FILESEXTRAPATHS_prepend_mingw32 := "${THISDIR}/${BPN}:"
+SRC_URI_append_mingw32 = " \
 		file://fix-gl_cv_prog_as_underscore-test.patch \
 		"
 
 FILES_libgettextlib_mingw32 = "${bindir}/libgettextlib-*.dll"
 FILES_libgettextsrc_mingw32 = "${bindir}/libgettextsrc-*.dll"
 
-PACKAGES =+ "libintl"
+PACKAGES_prepend_mingw32 = "libintl "
 FILES_libintl_mingw32 = "${bindir}/libintl*.dll"
 
diff --git a/recipes-graphics/libsdl/libsdl_%.bbappend b/recipes-graphics/libsdl/libsdl_%.bbappend
index bb65f03..592ace5 100644
--- a/recipes-graphics/libsdl/libsdl_%.bbappend
+++ b/recipes-graphics/libsdl/libsdl_%.bbappend
@@ -1,9 +1,4 @@
 # Disable default x11 support
 PACKAGECONFIG_class-nativesdk_mingw32 = ""
 
-# Configs that only apply to Windows/MinGW
-PACKAGECONFIG[stdio-redirect] = "--enable-stdio-redirect,--disable-stdio-redirect"
-PACKAGECONFIG[directx] = "--enable-directx,--disable-directx"
-
 FILES_${PN}-bin_mingw32 = "${bindir}/*.exe ${sbindir}/*.exe"
-
diff --git a/recipes-support/libgcrypt/libgcrypt_1.8.%.bbappend b/recipes-support/libgcrypt/libgcrypt_1.8.%.bbappend
index e30e376..3da0f53 100644
--- a/recipes-support/libgcrypt/libgcrypt_1.8.%.bbappend
+++ b/recipes-support/libgcrypt/libgcrypt_1.8.%.bbappend
@@ -1,6 +1,6 @@
 
-FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
-SRC_URI_append = " \
+FILESEXTRAPATHS_prepend_mingw32 := "${THISDIR}/files:"
+SRC_URI_append_mingw32 = " \
 		file://configure.ac-Set-mym4_revision-to-0-if-not-a-git-rep.patch \
 		"
 
-- 
1.8.3.1


