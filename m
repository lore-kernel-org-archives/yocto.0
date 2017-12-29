Return-Path: <Mingli.Yu@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 85E60E00DE4; Thu, 28 Dec 2017 22:25:02 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B86D3E00D83
	for <yocto@yoctoproject.org>; Thu, 28 Dec 2017 22:24:57 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id vBT6Ovub011625
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Thu, 28 Dec 2017 22:24:57 -0800 (PST)
Received: from pek-hostel-deb02.wrs.com (128.224.153.152) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.3.361.1; Thu, 28 Dec 2017 22:24:56 -0800
From: <mingli.yu@windriver.com>
To: <yocto@yoctoproject.org>
Date: Fri, 29 Dec 2017 14:04:28 +0800
Message-ID: <20171229060428.8067-4-mingli.yu@windriver.com>
X-Mailer: git-send-email 2.13.3
In-Reply-To: <20171229060428.8067-1-mingli.yu@windriver.com>
References: <20171229060428.8067-1-mingli.yu@windriver.com>
MIME-Version: 1.0
Subject: [meta-cgl-common][PATCH 3/3] pacemaker: set OCF_ROOT_DIR to $libdir/ocf
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
X-List-Received-Date: Fri, 29 Dec 2017 06:25:02 -0000
Content-Type: text/plain

From: Mingli Yu <Mingli.Yu@windriver.com>

* Set the default OCF_ROOT_DIR to $libdir/ocf
  to make the resource agents components more
  compatible

Signed-off-by: Mingli Yu <Mingli.Yu@windriver.com>
---
 .../pacemaker/set-OCF_ROOT_DIR-to-libdir-ocf.patch | 30 ++++++++++++++++++++++
 .../recipes-cgl/pacemaker/pacemaker_1.1.16.bb      |  1 +
 2 files changed, 31 insertions(+)
 create mode 100644 meta-cgl-common/recipes-cgl/pacemaker/pacemaker/set-OCF_ROOT_DIR-to-libdir-ocf.patch

diff --git a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/set-OCF_ROOT_DIR-to-libdir-ocf.patch b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/set-OCF_ROOT_DIR-to-libdir-ocf.patch
new file mode 100644
index 0000000..4898389
--- /dev/null
+++ b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/set-OCF_ROOT_DIR-to-libdir-ocf.patch
@@ -0,0 +1,30 @@
+From 24c1ddc572df59061c1f4fcec6e764dcb3edac80 Mon Sep 17 00:00:00 2001
+From: Mingli Yu <Mingli.Yu@windriver.com>
+Date: Wed, 27 Dec 2017 07:14:21 +0000
+Subject: [PATCH] pacemaker: set OCF_ROOT_DIR to $libdir/ocf
+
+* Set the default OCF_ROOT_DIR to $libdir/ocf
+  to make the resource agents components more
+  compatible
+
+Signed-off-by: Mingli Yu <Mingli.Yu@windriver.com>
+---
+ configure.ac | 2 +-
+ 1 file changed, 1 insertion(+), 1 deletion(-)
+
+diff --git a/configure.ac b/configure.ac
+index 2eade3c..ba290cc 100644
+--- a/configure.ac
++++ b/configure.ac
+@@ -1152,7 +1152,7 @@ AC_SUBST(HA_VARLIBHBDIR)
+ 
+ AC_DEFINE_UNQUOTED(UUID_FILE,"$localstatedir/lib/heartbeat/hb_uuid", Location of Heartbeat's UUID file)
+ 
+-OCF_ROOT_DIR=`try_extract_header_define $GLUE_HEADER OCF_ROOT_DIR /usr/lib/ocf`
++OCF_ROOT_DIR=`try_extract_header_define $GLUE_HEADER OCF_ROOT_DIR $libdir/ocf`
+ if test "X$OCF_ROOT_DIR" = X; then
+   AC_MSG_ERROR(Could not locate OCF directory)
+ fi
+-- 
+2.11.0
+
diff --git a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker_1.1.16.bb b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker_1.1.16.bb
index 9ef29b9..328bf88 100755
--- a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker_1.1.16.bb
+++ b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker_1.1.16.bb
@@ -21,6 +21,7 @@ SRC_URI = "https://github.com/ClusterLabs/${BPN}/archive/Pacemaker-${PV}.zip \
            file://0005-pacemaker-do-not-execute-target-program-while-cross-.patch \
            file://0006-pacemaker-do-not-use-libgnutls-config.patch \
            file://fix_missing_qb_array.patch \
+           file://set-OCF_ROOT_DIR-to-libdir-ocf.patch \
            file://volatiles \
            file://tmpfiles \
           "
-- 
2.13.3


