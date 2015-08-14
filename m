Return-Path: <Wenzong.Fan@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 81B67E00A3C; Fri, 14 Aug 2015 00:46:08 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4CD1FE00707
	for <yocto@yoctoproject.org>; Fri, 14 Aug 2015 00:46:04 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.15.1/8.15.1) with ESMTPS id t7E7k4Hj004494
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Fri, 14 Aug 2015 00:46:04 -0700 (PDT)
Received: from pek-lpggp1.wrs.com (128.224.153.74) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.40) with Microsoft SMTP Server id 14.3.235.1;
	Fri, 14 Aug 2015 00:46:03 -0700
From: <wenzong.fan@windriver.com>
To: <yocto@yoctoproject.org>
Date: Fri, 14 Aug 2015 03:46:02 -0400
Message-ID: <1439538362-255826-1-git-send-email-wenzong.fan@windriver.com>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
Subject: [PATCH][meta-selinux] libselinux: get pywrap depends on selinux.py
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
X-List-Received-Date: Fri, 14 Aug 2015 07:46:08 -0000
Content-Type: text/plain

From: Wenzong Fan <wenzong.fan@windriver.com>

The selinux.py will be installed as selinux/__init__.py, just make sure
it has been generated completely while starting "make install-pywrap".

This fixes below errors that caused by an empty "selinux/__init__.py"
on target:

  $ /usr/sbin/semanage -h

  Traceback (most recent call last):
  File "/usr/sbin/semanage", line 30, in <module>
    import seobject
  File "/usr/lib64/python2.7/site-packages/seobject.py", line 27, in <module>
    import sepolicy
  File "/usr/lib64/python2.7/site-packages/sepolicy/__init__.py", line 226, in <module>
    def get_file_equiv_modified(fc_path = selinux.selinux_file_context_path()):
  AttributeError: 'module' object has no attribute 'selinux_file_context_path'

Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
---
 ...bselinux-get-pywrap-depends-on-selinux.py.patch | 31 ++++++++++++++++++++++
 recipes-security/selinux/libselinux_2.3.bb         |  1 +
 recipes-security/selinux/libselinux_git.bb         |  1 +
 3 files changed, 33 insertions(+)
 create mode 100644 recipes-security/selinux/libselinux/libselinux-get-pywrap-depends-on-selinux.py.patch

diff --git a/recipes-security/selinux/libselinux/libselinux-get-pywrap-depends-on-selinux.py.patch b/recipes-security/selinux/libselinux/libselinux-get-pywrap-depends-on-selinux.py.patch
new file mode 100644
index 0000000..7994be4
--- /dev/null
+++ b/recipes-security/selinux/libselinux/libselinux-get-pywrap-depends-on-selinux.py.patch
@@ -0,0 +1,31 @@
+From 187ff834e40519b42caa3fba9f1054491f48ab67 Mon Sep 17 00:00:00 2001
+From: Wenzong Fan <wenzong.fan@windriver.com>
+Date: Tue, 11 Aug 2015 16:21:13 +0800
+Subject: [PATCH] libselinux: get pywrap depends on selinux.py
+
+The selinux.py will be installed as selinux/__init__.py, just make sure
+it has been generated completely while starting "make install-pywrap".
+
+Upstream-Status: Pending
+
+Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
+---
+ src/Makefile | 2 +-
+ 1 file changed, 1 insertion(+), 1 deletion(-)
+
+diff --git a/src/Makefile b/src/Makefile
+index a4d27f4..624d25b 100644
+--- a/src/Makefile
++++ b/src/Makefile
+@@ -90,7 +90,7 @@ SWIGRUBY = swig -Wall -ruby -o $(SWIGRUBYCOUT) -outdir ./
+ 
+ all: $(LIBA) $(LIBSO) $(LIBPC)
+ 
+-pywrap: all $(SWIGSO) $(AUDIT2WHYSO)
++pywrap: all $(SWIGFILES) $(AUDIT2WHYSO)
+ 
+ rubywrap: all $(SWIGRUBYSO)
+ 
+-- 
+1.9.1
+
diff --git a/recipes-security/selinux/libselinux_2.3.bb b/recipes-security/selinux/libselinux_2.3.bb
index 81e599d..23164f1 100644
--- a/recipes-security/selinux/libselinux_2.3.bb
+++ b/recipes-security/selinux/libselinux_2.3.bb
@@ -11,4 +11,5 @@ SRC_URI += "\
         file://libselinux-make-O_CLOEXEC-optional.patch \
         file://libselinux-make-SOCK_CLOEXEC-optional.patch \
         file://libselinux-define-FD_CLOEXEC-as-necessary.patch \
+        file://libselinux-get-pywrap-depends-on-selinux.py.patch \
         "
diff --git a/recipes-security/selinux/libselinux_git.bb b/recipes-security/selinux/libselinux_git.bb
index 97d4649..4efab86 100644
--- a/recipes-security/selinux/libselinux_git.bb
+++ b/recipes-security/selinux/libselinux_git.bb
@@ -11,4 +11,5 @@ SRC_URI += "\
 	file://libselinux-make-O_CLOEXEC-optional.patch \
 	file://libselinux-make-SOCK_CLOEXEC-optional.patch \
 	file://libselinux-define-FD_CLOEXEC-as-necessary.patch \
+	file://libselinux-get-pywrap-depends-on-selinux.py.patch \
 	"
-- 
1.9.1


