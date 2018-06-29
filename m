Return-Path: <joe.slater@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1BB8BE010F0; Fri, 29 Jun 2018 16:38:57 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3B96CE004F6
	for <yocto@yoctoproject.org>; Fri, 29 Jun 2018 16:38:55 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com ([147.11.189.41])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id w5TNcspk004428
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Fri, 29 Jun 2018 16:38:54 -0700 (PDT)
Received: from ala-lpggp5.wrs.com (147.11.105.121) by ALA-HCB.corp.ad.wrs.com
	(147.11.189.41) with Microsoft SMTP Server id 14.3.399.0;
	Fri, 29 Jun 2018 16:38:53 -0700
From: Joe Slater <joe.slater@windriver.com>
To: <yocto@yoctoproject.org>
Date: Fri, 29 Jun 2018 16:38:53 -0700
Message-ID: <20180629233853.14284-1-joe.slater@windriver.com>
X-Mailer: git-send-email 2.13.0
MIME-Version: 1.0
Cc: joe.slater@windriver.com
Subject: [meta-cgl][PATCH 1/1] ocfs2-tools: fix some script issues
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
X-List-Received-Date: Fri, 29 Jun 2018 23:38:57 -0000
Content-Type: text/plain

Add a conditional RDEPENDS for lsbinitscripts which are
needed by the o2cb and ofcs2 services and not supplied
by systemd.

Also, do not look for a redhat-release file in the o2cb
and ocfs2 scripts.  Just use /etc/init.d/functions if
it exists.

Signed-off-by: Joe Slater <joe.slater@windriver.com>
---
 .../ocfs2-tools/ocfs2-tools/no-redhat.patch        | 22 ++++++++++++++++++++++
 .../recipes-cgl/ocfs2-tools/ocfs2-tools_1.8.5.bb   |  8 +++++++-
 2 files changed, 29 insertions(+), 1 deletion(-)
 create mode 100644 meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools/no-redhat.patch

diff --git a/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools/no-redhat.patch b/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools/no-redhat.patch
new file mode 100644
index 0000000..7347786
--- /dev/null
+++ b/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools/no-redhat.patch
@@ -0,0 +1,22 @@
+--- a/vendor/common/o2cb.init.sh
++++ b/vendor/common/o2cb.init.sh
+@@ -18,7 +18,7 @@
+ # Force LC_ALL=C
+ export LC_ALL=C
+ 
+-if [ -f /etc/redhat-release ]
++if [ -f /etc/init.d/functions ]
+ then
+ . /etc/init.d/functions
+ 
+--- a/vendor/common/ocfs2.init
++++ b/vendor/common/ocfs2.init
+@@ -17,7 +17,7 @@
+ # Description:  Mount OCFS2 volumes at boot.
+ ### END INIT INFO
+ 
+-if [ -f /etc/redhat-release ]
++if [ -f /etc/init.d/functions ]
+ then
+ . /etc/init.d/functions
+ 
diff --git a/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools_1.8.5.bb b/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools_1.8.5.bb
index 946423e..5aeb053 100644
--- a/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools_1.8.5.bb
+++ b/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools_1.8.5.bb
@@ -16,6 +16,7 @@ SRC_URI = "git://github.com/markfasheh/ocfs2-tools \
     file://0003-vendor-common-o2cb.ocf-add-new-conf-file.patch \
     file://ocfs2-fix-compile-error-when-glibc-upgrade.patch \
     file://ocfs2-tools-1.8.5-format-fortify.patch \
+    file://no-redhat.patch \
     file://o2cb.service \
     file://ocfs2.service \
 "
@@ -28,7 +29,12 @@ DEPENDS = "corosync pacemaker \
     libxml2 linux-libc-headers libaio \
     e2fsprogs e2fsprogs-native \
 "
-RDEPENDS_${PN} = "bash coreutils net-tools module-init-tools e2fsprogs chkconfig glib-2.0"
+
+# lsbinitscripts are needed to replace /etc/init.d/functions supplied by initscripts (systemv)
+# They are not the same code!
+#
+RDEPENDS_${PN} = "bash coreutils net-tools module-init-tools e2fsprogs chkconfig glib-2.0 \
+                  ${@bb.utils.contains('DISTRO_FEATURES','systemd','lsbinitscripts','',d)}"
 
 ASNEEDED_pn-${PN} = ""
 PARALLEL_MAKE = ""
-- 
2.7.4


