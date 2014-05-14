Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1EB06E00724; Wed, 14 May 2014 15:32:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.5 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU,FREEMAIL_FROM,RCVD_IN_DNSWL_LOW,RDNS_NONE autolearn=no
	version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.160.53 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from mail-pb0-f53.google.com (unknown [209.85.160.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B33E6E0053B
	for <yocto@yoctoproject.org>; Wed, 14 May 2014 15:32:49 -0700 (PDT)
Received: by mail-pb0-f53.google.com with SMTP id md12so181968pbc.40
	for <yocto@yoctoproject.org>; Wed, 14 May 2014 15:32:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=tQJ6nF4uu4+fwy8aibO/r38yc1ZU+yp19y08XvgErW8=;
	b=WDueANtk9aicSJOfb0tefvn1bgUV1hBl3PuNW9jVGEsbhdUAjObn5kHe/TpzLL4EE2
	XWP4PKCMuw6h7dXUKrDNJVTNnk+jUGO7pasq98zWV8LE7bmiVjKQSKVXH8tQuYbI5J9Y
	Xt7B4ERNR5UubZ4B0OIVChnCP+Eqt3RiQhvPrFT6sssMvkI+v0IBCLvTnqSHulJT5PpV
	tddLddKuwRKRNhPL68CKoddGGKm4WqqM/nGDcwL/sZBjD7kPk2WeWAESlmlebF2cItAC
	cOHlI0ZVaWEzOMCgI4DyDsYlH2tHemBwbTFyiNxK+psNZ0c0xlFBO3Ltpj4kdrjjG3J5
	lEwQ==
X-Received: by 10.68.196.168 with SMTP id in8mr7753183pbc.132.1400106281758;
	Wed, 14 May 2014 15:24:41 -0700 (PDT)
Received: from Pahoa2.hsd1.ca.comcast.net (c-98-239-95-55.hsd1.ca.comcast.net.
	[98.239.95.55])
	by mx.google.com with ESMTPSA id jd5sm5364684pbb.18.2014.05.14.15.24.39
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Wed, 14 May 2014 15:24:40 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: mark.hatle@windriver.com
Date: Wed, 14 May 2014 15:24:21 -0700
Message-Id: <1400106263-25100-8-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1400106263-25100-1-git-send-email-akuster808@gmail.com>
References: <1400106263-25100-1-git-send-email-akuster808@gmail.com>
Cc: yocto@yoctoproject.org
Subject: [PATCH 7/9] Update to latest swig from meta-openembedded
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
X-List-Received-Date: Wed, 14 May 2014 22:32:58 -0000

    swig: Update to latest swig from meta-openembedded

    Updated from:
     git://git.openembedded.org/meta-openembedded/meta-oe/recipes-devtools/swig

     As of commit dca466c074c9a35bc0133e7e0d65cca0731e2acf

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-devtools/swig/swig.inc       | 8 ++++++--
 recipes-devtools/swig/swig_2.0.10.bb | 9 ---------
 recipes-devtools/swig/swig_2.0.12.bb | 7 +++++++
 3 files changed, 13 insertions(+), 11 deletions(-)
 delete mode 100644 recipes-devtools/swig/swig_2.0.10.bb
 create mode 100644 recipes-devtools/swig/swig_2.0.12.bb

diff --git a/recipes-devtools/swig/swig.inc b/recipes-devtools/swig/swig.inc
index 74ce506..9821fa5 100644
--- a/recipes-devtools/swig/swig.inc
+++ b/recipes-devtools/swig/swig.inc
@@ -6,7 +6,6 @@ LIC_FILES_CHKSUM = "file://LICENSE;md5=e7807a6282784a7dde4c846626b08fc6 \
                     file://LICENSE-UNIVERSITIES;md5=8ce9dcc8f7c994de4a408b205c72ba08"
 
 SECTION = "devel"
-INC_PR = "r3"
 
 DEPENDS = "libpcre python"
 
@@ -50,10 +49,15 @@ do_configure() {
     oe_runconf
 }
 
+do_install_append_class-nativesdk() {
+    cd ${D}${bindir}
+    ln -s swig swig2.0
+}
+
 def swiglib_relpath(d):
     swiglib = d.getVar('datadir', True) + "/" + d.getVar('BPN', True) + "/" + d.getVar('PV', True)
     return os.path.relpath(swiglib, d.getVar('bindir', True))
 
 do_install_append_class-native() {
-	create_wrapper ${D}${bindir}/swig SWIG_LIB='`dirname $''realpath`'/${@swiglib_relpath(d)}
+    create_wrapper ${D}${bindir}/swig SWIG_LIB='`dirname $''realpath`'/${@swiglib_relpath(d)}
 }
diff --git a/recipes-devtools/swig/swig_2.0.10.bb b/recipes-devtools/swig/swig_2.0.10.bb
deleted file mode 100644
index 312ce11..0000000
--- a/recipes-devtools/swig/swig_2.0.10.bb
+++ /dev/null
@@ -1,9 +0,0 @@
-require ${BPN}.inc
-
-PR = "${INC_PR}.0"
-
-SRC_URI += "file://0001-Use-proc-self-exe-for-swig-swiglib-on-non-Win32-plat.patch"
-
-SRC_URI[md5sum] = "6d5e7ad05b4a404e5e85db9befb70c9a"
-SRC_URI[sha256sum] = "d1eef329e867124ce60838b5ad07c763146b6c8f250dd22a861ead7406f78e63"
-
diff --git a/recipes-devtools/swig/swig_2.0.12.bb b/recipes-devtools/swig/swig_2.0.12.bb
new file mode 100644
index 0000000..0fbcfa1
--- /dev/null
+++ b/recipes-devtools/swig/swig_2.0.12.bb
@@ -0,0 +1,7 @@
+require ${BPN}.inc
+
+SRC_URI += "file://0001-Use-proc-self-exe-for-swig-swiglib-on-non-Win32-plat.patch"
+
+SRC_URI[md5sum] = "c3fb0b2d710cc82ed0154b91e43085a4"
+SRC_URI[sha256sum] = "65e13f22a60cecd7279c59882ff8ebe1ffe34078e85c602821a541817a4317f7"
+
-- 
1.9.1


