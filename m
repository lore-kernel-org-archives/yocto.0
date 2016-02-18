Return-Path: <Liezhi.Yang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E7D78E00BF8; Wed, 17 Feb 2016 18:47:54 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8EDF5E00B8B
	for <yocto@yoctoproject.org>; Wed, 17 Feb 2016 18:47:52 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id u1I2lpvT012831
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Wed, 17 Feb 2016 18:47:52 -0800 (PST)
Received: from ala-blade47.wrs.com (147.11.105.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.248.2;
	Wed, 17 Feb 2016 18:47:51 -0800
From: Robert Yang <liezhi.yang@windriver.com>
To: <yocto@yoctoproject.org>
Date: Wed, 17 Feb 2016 18:47:50 -0800
Message-ID: <1455763670-30916-2-git-send-email-liezhi.yang@windriver.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1455763670-30916-1-git-send-email-liezhi.yang@windriver.com>
References: <1455763670-30916-1-git-send-email-liezhi.yang@windriver.com>
MIME-Version: 1.0
Subject: [meta-selinux] [PATCH 2/2] libsepol: fix libsepol.pc failed sanity test
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
X-List-Received-Date: Thu, 18 Feb 2016 02:47:55 -0000
Content-Type: text/plain

ERROR: libselinux-2.4-r0 do_populate_sysroot: QA Issue: libselinux.pc failed sanity test (tmpdir) in path /path/to/sysroot-destdir//usr/lib/pkgconfig [pkgconfig]

Signed-off-by: Robert Yang <liezhi.yang@windriver.com>
---
 ...-Makefile-fix-includedir-in-libselinux.pc.patch |   28 ++++++++++++++++++++
 recipes-security/selinux/libselinux_2.4.bb         |    1 +
 recipes-security/selinux/libselinux_git.bb         |    1 +
 3 files changed, 30 insertions(+)
 create mode 100644 recipes-security/selinux/libselinux/0001-src-Makefile-fix-includedir-in-libselinux.pc.patch

diff --git a/recipes-security/selinux/libselinux/0001-src-Makefile-fix-includedir-in-libselinux.pc.patch b/recipes-security/selinux/libselinux/0001-src-Makefile-fix-includedir-in-libselinux.pc.patch
new file mode 100644
index 0000000..72b97df
--- /dev/null
+++ b/recipes-security/selinux/libselinux/0001-src-Makefile-fix-includedir-in-libselinux.pc.patch
@@ -0,0 +1,28 @@
+From 63d2c02a4dfa5ccd5d62a9f80b6a50cbb9946fbb Mon Sep 17 00:00:00 2001
+From: Robert Yang <liezhi.yang@windriver.com>
+Date: Thu, 18 Feb 2016 02:39:16 +0000
+Subject: [PATCH] src/Makefile: fix includedir in libselinux.pc
+
+Upstream-Status: Pending
+
+Signed-off-by: Robert Yang <liezhi.yang@windriver.com>
+---
+ src/Makefile | 2 +-
+ 1 file changed, 1 insertion(+), 1 deletion(-)
+
+diff --git a/src/Makefile b/src/Makefile
+index 1920029..06d291d 100644
+--- a/src/Makefile
++++ b/src/Makefile
+@@ -115,7 +115,7 @@ $(LIBSO): $(LOBJS)
+ 	ln -sf $@ $(TARGET) 
+ 
+ $(LIBPC): $(LIBPC).in ../VERSION
+-	sed -e 's/@VERSION@/$(VERSION)/; s:@prefix@:$(PREFIX):; s:@libdir@:$(LIBBASE):; s:@includedir@:$(INCLUDEDIR):' < $< > $@
++	sed -e 's/@VERSION@/$(VERSION)/; s:@prefix@:$(PREFIX):; s:@libdir@:$(LIBBASE):; s:@includedir@:${prefix}/include:' < $< > $@
+ 
+ selinuxswig_python_exception.i: ../include/selinux/selinux.h
+ 	bash exception.sh > $@ 
+-- 
+2.5.0
+
diff --git a/recipes-security/selinux/libselinux_2.4.bb b/recipes-security/selinux/libselinux_2.4.bb
index e084df2..ac80bdd 100644
--- a/recipes-security/selinux/libselinux_2.4.bb
+++ b/recipes-security/selinux/libselinux_2.4.bb
@@ -12,4 +12,5 @@ SRC_URI += "\
         file://libselinux-make-SOCK_CLOEXEC-optional.patch \
         file://libselinux-define-FD_CLOEXEC-as-necessary.patch \
         file://libselinux-get-pywrap-depends-on-selinux.py.patch \
+        file://0001-src-Makefile-fix-includedir-in-libselinux.pc.patch \
         "
diff --git a/recipes-security/selinux/libselinux_git.bb b/recipes-security/selinux/libselinux_git.bb
index 4efab86..1cd4dde 100644
--- a/recipes-security/selinux/libselinux_git.bb
+++ b/recipes-security/selinux/libselinux_git.bb
@@ -12,4 +12,5 @@ SRC_URI += "\
 	file://libselinux-make-SOCK_CLOEXEC-optional.patch \
 	file://libselinux-define-FD_CLOEXEC-as-necessary.patch \
 	file://libselinux-get-pywrap-depends-on-selinux.py.patch \
+	file://0001-src-Makefile-fix-includedir-in-libselinux.pc.patch \
 	"
-- 
1.7.9.5


