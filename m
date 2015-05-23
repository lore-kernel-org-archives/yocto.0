Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 547E6E009F8; Sat, 23 May 2015 08:12:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.49 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yh0-f49.google.com (mail-yh0-f49.google.com
	[209.85.213.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0FFFCE009D4
	for <yocto@yoctoproject.org>; Sat, 23 May 2015 08:12:46 -0700 (PDT)
Received: by yhrr66 with SMTP id r66so11775159yhr.3
	for <yocto@yoctoproject.org>; Sat, 23 May 2015 08:12:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=RRQ25qtWv4JueXUnjo86rK237hMuU2F1GLfdUcuVVWA=;
	b=LBxmO1pbye005dX0bL/MaAJ0GBDJl9oJfHONWVZz1QNXcP4A3F9md64ggJXV6RTiD9
	jn4eG8SKYlkWOFuMrL/ijolrIEEyEumpf2ArjRuAsN0X3f+C0iOGOEbG9dX7xXUK1hmc
	wBTq4Y1mHO6ZaD/XkWrw80AQMaO0SsA30+DWZIBhGOvMGNcG2xMrqLzMue9NeC0ccbHH
	vvRBjJ1tf1ioDLn4Z1f60TmF/fqMLjM7o2QhXurESAELtax7Pce9k9PJCHYMAywUAKzh
	TKr2ZmldJuFt2AATCgqhizcP4u9O0jNyTU+ra95s5q954BSrnH2p1Hd/jdUouOUCt/q7
	JOGw==
X-Received: by 10.170.56.78 with SMTP id 75mr15067093yky.109.1432393966326;
	Sat, 23 May 2015 08:12:46 -0700 (PDT)
Received: from localhost.localdomain ([97.84.99.160])
	by mx.google.com with ESMTPSA id f50sm978724yhc.40.2015.05.23.08.12.44
	for <yocto@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sat, 23 May 2015 08:12:45 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Sat, 23 May 2015 08:12:38 -0700
Message-Id: <1432393958-11105-3-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.3.5
In-Reply-To: <1432393958-11105-1-git-send-email-akuster808@gmail.com>
References: <1432393958-11105-1-git-send-email-akuster808@gmail.com>
Subject: [meta-security][PATCH 3/3] libewf: update to version 20140608
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
X-List-Received-Date: Sat, 23 May 2015 15:12:53 -0000

drop ubuntu patches, never used them.

Fix GCC 5.0 build.

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-forensic/libewf/files/gcc5_fix.patch       | 22 ++++++++++++++++++++++
 .../{libewf_20130416.bb => libewf_20140608.bb}     |  4 +---
 2 files changed, 23 insertions(+), 3 deletions(-)
 create mode 100644 recipes-forensic/libewf/files/gcc5_fix.patch
 rename recipes-forensic/libewf/{libewf_20130416.bb => libewf_20140608.bb} (78%)

diff --git a/recipes-forensic/libewf/files/gcc5_fix.patch b/recipes-forensic/libewf/files/gcc5_fix.patch
new file mode 100644
index 0000000..0881f25
--- /dev/null
+++ b/recipes-forensic/libewf/files/gcc5_fix.patch
@@ -0,0 +1,22 @@
+Upstream Status: pending
+
+Don't use inline with gcc 5.0
+
+fixes:
+undefined reference to `libuna_unicode_character_size_to_utf8'
+
+Signed-off-by: Armin Kuster <akuster808@gmail.com>
+
+Index: libuna/libuna_inline.h
+===================================================================
+--- a/libuna/libuna_inline.h
++++ b/libuna/libuna_inline.h
+@@ -27,7 +27,7 @@
+ #if defined( _MSC_VER )
+ #define LIBUNA_INLINE _inline
+ 
+-#elif defined( __BORLANDC__ ) || defined( __clang__ )
++#elif defined( __BORLANDC__ ) || defined( __clang__ ) || ( __GNUC__ > 4 )
+ #define LIBUNA_INLINE /* inline */
+ 
+ #else
diff --git a/recipes-forensic/libewf/libewf_20130416.bb b/recipes-forensic/libewf/libewf_20140608.bb
similarity index 78%
rename from recipes-forensic/libewf/libewf_20130416.bb
rename to recipes-forensic/libewf/libewf_20140608.bb
index c070b80..98ebcce 100644
--- a/recipes-forensic/libewf/libewf_20130416.bb
+++ b/recipes-forensic/libewf/libewf_20140608.bb
@@ -5,12 +5,10 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=58c39b26c0549f8e1bb4122173f474cd"
 DEPENDS = "virtual/gettext libtool"
 
 SRC_URI = "http://archive.ubuntu.com/ubuntu/pool/universe/libe/${BPN}/${BPN}_${PV}.orig.tar.gz;name=orig \
-        http://archive.ubuntu.com/ubuntu/pool/universe/libe/${BPN}/${BPN}_${PV}-3.debian.tar.gz;name=dpatch \
+        file://gcc5_fix.patch \
         "
 SRC_URI[orig.md5sum] = "3791d6de5910a0f6b4427cdf1e6bc663"
 SRC_URI[orig.sha256sum] = "e0f14071665b24a8077a24f4cafbf092ad5ac1859f49994dc4e843e747ba7a89"
-SRC_URI[dpatch.md5sum] = "57fb17b34344f741b52dff3ae11fbbd6"
-SRC_URI[dpatch.sha256sum] = "988ee0a94f01d452cd227ed5c55401e7674dc6fa41da8358a6ad68e67175a5cc"
 
 inherit autotools-brokensep pkgconfig
 
-- 
2.3.5


