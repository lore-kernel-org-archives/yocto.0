Return-Path: <Jackie.Huang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EE813E00D0E; Thu, 27 Jul 2017 19:32:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5C8ADE00CEF
	for <yocto@yoctoproject.org>; Thu, 27 Jul 2017 19:32:46 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id v6S2WjQc005959
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Thu, 27 Jul 2017 19:32:46 -0700 (PDT)
Received: from pek-hostel-deb01.wrs.com (128.224.153.151) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.3.294.0; Thu, 27 Jul 2017 19:32:44 -0700
From: <jackie.huang@windriver.com>
To: <yocto@yoctoproject.org>
Date: Fri, 28 Jul 2017 10:32:17 +0800
Message-ID: <31363e014183fb0ce450b5740101ffcf2e19f896.1501209083.git.jackie.huang@windriver.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <cover.1501209083.git.jackie.huang@windriver.com>
References: <cover.1501209083.git.jackie.huang@windriver.com>
MIME-Version: 1.0
Subject: [meta-cgl][PATCH 3/3] ocfs2-tools: disable stack user support explicitly in init script
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
X-List-Received-Date: Fri, 28 Jul 2017 02:32:47 -0000
Content-Type: text/plain

From: Jackie Huang <jackie.huang@windriver.com>

Disable stack user support explicitly and only support
stack 'o2cb' in init script o2cb.

Signed-off-by: Kai Kang <kai.kang@windriver.com>
Signed-off-by: Jackie Huang <jackie.huang@windriver.com>
---
 .../disable-ocfs2-stack-user-support.patch         | 42 ++++++++++++++++++++++
 .../recipes-cgl/ocfs2-tools/ocfs2-tools_1.8.4.bb   |  1 +
 2 files changed, 43 insertions(+)
 create mode 100644 meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools/disable-ocfs2-stack-user-support.patch

diff --git a/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools/disable-ocfs2-stack-user-support.patch b/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools/disable-ocfs2-stack-user-support.patch
new file mode 100644
index 0000000..8d92f0c
--- /dev/null
+++ b/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools/disable-ocfs2-stack-user-support.patch
@@ -0,0 +1,42 @@
+Only support stack 'o2cb' in init script o2cb.
+
+Source file /etc/init.d/functions rather than /lib/lsb/init-functions which
+doesn't exist in wrlinux.  /etc/init.d/functions provides functions killproc
+and pidofproc, and doesn't provides function start_daemon. It doesn't matter
+that start_daemon is used by stack 'user' only.
+
+Upstream-Status: Pending
+
+Signed-off-by: Kai Kang <kai.kang@windriver.com>
+---
+diff --git a/vendor/common/o2cb.init.sh b/vendor/common/o2cb.init.sh
+index 2e73108..926e61e 100755
+--- a/vendor/common/o2cb.init.sh
++++ b/vendor/common/o2cb.init.sh
+@@ -18,11 +18,11 @@
+ # Force LC_ALL=C
+ export LC_ALL=C
+ 
+-# Let's try to use the LSB functions
+-. /lib/lsb/init-functions
++# Let's try to use the init scripts functions
++. /etc/init.d/functions
+ if [ $? != 0 ]
+ then
+-    echo "Unable to load LSB init functions" >&2
++    echo "Unable to load init scripts functions" >&2
+     exit 1
+ fi
+ 
+@@ -72,6 +72,11 @@ VERSION=@@VERSION@@
+ # Need this default
+ [ -z "$O2CB_STACK" ] && O2CB_STACK=o2cb
+ 
++if [ "$O2CB_STACK" != "o2cb" ]; then
++    echo "Invalid cluster stack name \"$O2CB_STACK\""
++    exit 1
++fi
++
+ configfs_path()
+ {
+     # Note that this is only valid *after* configfs is loaded
diff --git a/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools_1.8.4.bb b/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools_1.8.4.bb
index be9a505..6e5b1fd 100644
--- a/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools_1.8.4.bb
+++ b/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools_1.8.4.bb
@@ -14,6 +14,7 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=94d55d512a9ba36caa9b7df079bae19f"
 
 SRC_URI = "git://oss.oracle.com/git/ocfs2-tools.git \
     file://0003-vendor-common-o2cb.ocf-add-new-conf-file.patch \
+    file://disable-ocfs2-stack-user-support.patch \
     file://o2cb.service \
     file://ocfs2.service \
 "
-- 
2.11.0


