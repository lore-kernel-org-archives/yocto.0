Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 71922E009CA; Sun,  7 Jun 2015 11:30:18 -0700 (PDT)
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
	*      [209.85.220.180 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f180.google.com (mail-qk0-f180.google.com
	[209.85.220.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 213B5E00293
	for <yocto@yoctoproject.org>; Sun,  7 Jun 2015 11:30:14 -0700 (PDT)
Received: by qkoo18 with SMTP id o18so67794324qko.1
	for <yocto@yoctoproject.org>; Sun, 07 Jun 2015 11:30:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=+g7pmX+V2uuXxiuolX3nN2wjPnvkQIgIVnRAaL1RiFk=;
	b=qu8inO+VQ5hoKaeFSKglwLK6NCdIl9RPxtilr32b62U+yyMKrrZ8t/ZpO4atDCp0aB
	0yyaqKpbbaswJWaShW7evWv3n5s5CoLfYCrlNi6qiojNFes3HdhTFY8nTRfYGx3YjmEE
	hhNtYx05zXd6q9fCVlNQhG+CjICPjYSF5LzM4Wes/q4Mwuwp+jtH+h3cNDOIA/lmUNkL
	4sc+pRnRsnI872mAXe5DgA3xTfion/ZF33wa5ZcVwKhWvzry3RTqk8P6kZXStBEucQ9W
	kVTQNZ+ZN2VFrC84fw4wXfjsKOwyWDXhnwMH2OldDWfg3fAOjueBY+KKAF3Q28kuRrCy
	42YQ==
X-Received: by 10.55.18.155 with SMTP id 27mr25826096qks.36.1433701814083;
	Sun, 07 Jun 2015 11:30:14 -0700 (PDT)
Received: from Pahoa2.mvista.com (c-76-20-92-207.hsd1.ca.comcast.net.
	[76.20.92.207])
	by mx.google.com with ESMTPSA id r88sm163222qkh.12.2015.06.07.11.30.12
	for <yocto@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sun, 07 Jun 2015 11:30:13 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Sun,  7 Jun 2015 11:30:05 -0700
Message-Id: <1433701806-3473-2-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.3.5
In-Reply-To: <1433701806-3473-1-git-send-email-akuster808@gmail.com>
References: <1433701806-3473-1-git-send-email-akuster808@gmail.com>
Subject: [meta-security][PATCH 2/3] python-pycrypto: add new package
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
X-List-Received-Date: Sun, 07 Jun 2015 18:30:18 -0000

adding crypto package for use by scampy.

I will remove once it is moved to meta-python

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../python/python-pycrypto/cross-compiling.patch   | 23 +++++++++++++++
 recipes-devtools/python/python-pycrypto_2.6.1.bb   | 33 ++++++++++++++++++++++
 2 files changed, 56 insertions(+)
 create mode 100644 recipes-devtools/python/python-pycrypto/cross-compiling.patch
 create mode 100644 recipes-devtools/python/python-pycrypto_2.6.1.bb

diff --git a/recipes-devtools/python/python-pycrypto/cross-compiling.patch b/recipes-devtools/python/python-pycrypto/cross-compiling.patch
new file mode 100644
index 0000000..712f3e8
--- /dev/null
+++ b/recipes-devtools/python/python-pycrypto/cross-compiling.patch
@@ -0,0 +1,23 @@
+Index: pycrypto-2.6/setup.py
+===================================================================
+--- pycrypto-2.6.orig/setup.py
++++ pycrypto-2.6/setup.py
+@@ -271,7 +271,8 @@ class PCTBuildConfigure(Command):
+         if not os.path.exists("config.status"):
+             if os.system("chmod 0755 configure") != 0:
+                 raise RuntimeError("chmod error")
+-            cmd = "sh configure"    # we use "sh" here so that it'll work on mingw32 with standard python.org binaries
++            host = os.environ.get("HOST_SYS")
++            cmd = "ac_cv_func_malloc_0_nonnull=yes sh configure --host " + host   # we use "sh" here so that it'll work on mingw32 with standard python.org binaries
+             if self.verbose < 1:
+                 cmd += " -q"
+             if os.system(cmd) != 0:
+@@ -370,7 +371,7 @@ kw = {'name':"pycrypto",
+       'ext_modules': plat_ext + [
+             # _fastmath (uses GNU mp library)
+             Extension("Crypto.PublicKey._fastmath",
+-                      include_dirs=['src/','/usr/include/'],
++                      include_dirs=['src/'],
+                       libraries=['gmp'],
+                       sources=["src/_fastmath.c"]),
+ 
diff --git a/recipes-devtools/python/python-pycrypto_2.6.1.bb b/recipes-devtools/python/python-pycrypto_2.6.1.bb
new file mode 100644
index 0000000..a2ad4d1
--- /dev/null
+++ b/recipes-devtools/python/python-pycrypto_2.6.1.bb
@@ -0,0 +1,33 @@
+DESCRIPTION = "Cryptographic modules for Python."
+HOMEPAGE = "http://www.pycrypto.org/"
+SECTION = "devel/python"
+LICENSE = "PSFv2"
+LIC_FILES_CHKSUM = "file://COPYRIGHT;md5=35f354d199e8cb7667b059a23578e63d"
+
+SRCNAME = "pycrypto"
+
+SRC_URI = "https://pypi.python.org/packages/source/p/${SRCNAME}/${SRCNAME}-${PV}.tar.gz \
+           file://cross-compiling.patch"
+
+SRC_URI[md5sum] = "55a61a054aa66812daf5161a0d5d7eda"
+SRC_URI[sha256sum] = "f2ce1e989b272cfcb677616763e0a2e7ec659effa67a88aa92b3a65528f60a3c"
+
+S = "${WORKDIR}/${SRCNAME}-${PV}"
+
+inherit distutils
+
+export STAGING_INCDIR
+export STAGING_LIBDIR
+export BUILD_SYS
+export HOST_SYS
+
+inherit autotools autotools-brokensep distutils
+
+DEPENDS += " gmp"
+
+# We explicitly call distutils_do_install, since we want it to run, but
+# *don't* want the autotools install to run, since this package doesn't
+# provide a "make install" target.
+do_install() {
+	distutils_do_install
+}
-- 
2.3.5


