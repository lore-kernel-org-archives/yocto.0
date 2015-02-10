Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4042EE0093B; Mon,  9 Feb 2015 17:00:57 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_LOW,
	TVD_SPACE_RATIO autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.172 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.0 TVD_SPACE_RATIO TVD_SPACE_RATIO
Received: from mail-pd0-f172.google.com (mail-pd0-f172.google.com
	[209.85.192.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 28B25E00949
	for <yocto@yoctoproject.org>; Mon,  9 Feb 2015 17:00:54 -0800 (PST)
Received: by pdev10 with SMTP id v10so12613358pde.10
	for <yocto@yoctoproject.org>; Mon, 09 Feb 2015 17:00:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=lN+a/mJyg8BvZpmQE4S0RNC7mJjMlkVJgiveyqKiLXk=;
	b=uXBze824bOpCPy8txfOvi0oseT9+qfMNC1NI64GU8Y24O8A+rqxiIb9x62ImKOmWDW
	KDqTkJwz75csIMsButcpIZUHOZaaZGBokF2fdMZr0VSj3GVI/ZqHokdlrwNkWgqhqY6L
	bpRSVV2zPipudwOp4DXGbCIrBFg6AKNyUZSyF0RqJj5CkMtu2k/3fuiI4TCNh4g9o/wL
	VvSTXgRlC1AlRCYSAW5qiQJK0C/X2hItn2AfwhY2/oN+a/MOcpZD8HsQxeMIMj+aBPsS
	T2BPJW5krMxMGQrslOJEBRiXEcZHCNun05TLYI8W6C7ND/8W7GrYRp+4u900sjwI76eF
	DV/w==
X-Received: by 10.68.141.204 with SMTP id rq12mr33050285pbb.7.1423530053947;
	Mon, 09 Feb 2015 17:00:53 -0800 (PST)
Received: from Pahoa2.mvista.com (c-76-20-92-207.hsd1.ca.comcast.net.
	[76.20.92.207])
	by mx.google.com with ESMTPSA id df7sm7231473pdb.14.2015.02.09.17.00.52
	for <yocto@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Mon, 09 Feb 2015 17:00:52 -0800 (PST)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Mon,  9 Feb 2015 17:00:40 -0800
Message-Id: <1423530040-20457-4-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1423530040-20457-1-git-send-email-akuster808@gmail.com>
References: <1423530040-20457-1-git-send-email-akuster808@gmail.com>
Subject: [meta-security][PATCH 3/3] sleuth: add sleuthkit
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
X-List-Received-Date: Tue, 10 Feb 2015 01:00:57 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../sleuth/files/fix_host_poison.patch             | 23 ++++++++++++++++++
 recipes-forensic/sleuth/sleuthkit_4.1.3.bb         | 28 ++++++++++++++++++++++
 2 files changed, 51 insertions(+)
 create mode 100644 recipes-forensic/sleuth/files/fix_host_poison.patch
 create mode 100644 recipes-forensic/sleuth/sleuthkit_4.1.3.bb

diff --git a/recipes-forensic/sleuth/files/fix_host_poison.patch b/recipes-forensic/sleuth/files/fix_host_poison.patch
new file mode 100644
index 0000000..03b1fb9
--- /dev/null
+++ b/recipes-forensic/sleuth/files/fix_host_poison.patch
@@ -0,0 +1,23 @@
+Upstream-Status: Inappropriate [configuration]
+
+Don't use host include or lib paths in *FLAGS
+
+Signed-off-by: Armin Kuster <akuster808@gmail.com>
+
+Index: configure.ac
+===================================================================
+--- a/configure.ac
++++ b/configure.ac
+@@ -84,12 +84,6 @@ AX_PTHREAD([
+     LDFLAGS="$LDFLAGS $PTHREAD_CFLAGS"
+     CC="$PTHREAD_CC"],[])
+ 
+-dnl Not all compilers include /usr/local in the include and link path
+-if test -d /usr/local/include; then
+-    CPPFLAGS="$CPPFLAGS -I/usr/local/include"
+-    LDFLAGS="$LDFLAGS -L/usr/local/lib"
+-fi
+-
+ dnl Add enable/disable option
+ AC_ARG_ENABLE([java],
+     [AS_HELP_STRING([--disable-java], [Do not build the java bindings or jar file])])
diff --git a/recipes-forensic/sleuth/sleuthkit_4.1.3.bb b/recipes-forensic/sleuth/sleuthkit_4.1.3.bb
new file mode 100644
index 0000000..4b82616
--- /dev/null
+++ b/recipes-forensic/sleuth/sleuthkit_4.1.3.bb
@@ -0,0 +1,28 @@
+SUMMARY = "The Sleuth Kit (TSK) is a library and collection of command line tools that allow you to investigate disk images."
+HOMEPAGE = "http://www.sleuthkit.org/sleuthkit/"
+LICENSE = "IPL-1.0 & GPLv2 & CPL-1.0"
+LIC_FILES_CHKSUM = "file://licenses/GNU-COPYING;startline=4;endline=5;md5=475b4784903850b579dc6e6310bd5f08\
+    file://licenses/IBM-LICENSE;startline=1;endline=2;md5=1fc3300388b0d6e6216825dd89c2e3a2\
+    file://licenses/cpl1.0.txt;startline=1;endline=2;md5=9e58c878202c73a4e3ed4be72598fb92"
+
+DEPENDS = "libtool"
+
+SRC_URI = "http://archive.ubuntu.com/ubuntu/pool/universe/s/${BPN}/${BPN}_${PV}.orig.tar.gz;name=orig \
+            file://fix_host_poison.patch \
+        "
+SRC_URI[orig.md5sum] = "139a12f06952d8a40bbe07884994cf5d"
+SRC_URI[orig.sha256sum] = "67f9d2a31a8884d58698d6122fc1a1bfa9bf238582bde2b49228ec9b899f0327"
+
+inherit autotools-brokensep pkgconfig gettext
+
+PACKAGECONFIG ??= "aff zlib ewf"
+PACKAGECONFIG[aff] = "--with-afflib=${STAGING_DIR_HOST}/usr, --without-afflib, afflib"
+PACKAGECONFIG[zlib] = "--with-zlib=${STAGING_DIR_HOST}/usr, --without-zlib, zlib"
+PACKAGECONFIG[ewf] = "--with-libewf=${STAGING_DIR_HOST}/usr, --without-libewf, libewf"
+
+#--with-gnu-ld
+EXTRA_OECONF += "--enable-static=no --disable-java LIBS='-L${STAGING_LIBDIR}' LDFLAGS='-L${STAGING_LIBDIR}' CPPFLAGS='-I${STAGING_INCDIR}'"
+
+FILES_${PN} += " ${datadir}/tsk"
+
+RDEPENDS_${PN} += " perl"
-- 
1.9.1


