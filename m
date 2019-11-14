Return-Path: <Yi.Zhao@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 82CCBE00E43; Wed, 13 Nov 2019 17:49:24 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ED499E00E3C
	for <yocto@yoctoproject.org>; Wed, 13 Nov 2019 17:49:14 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id xAE1nCxQ016990
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 13 Nov 2019 17:49:13 -0800
Received: from localhost (128.224.158.241) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.468.0;
	Wed, 13 Nov 2019 17:49:12 -0800
From: Yi Zhao <yi.zhao@windriver.com>
To: <yocto@yoctoproject.org>, <joe@deserted.net>, <Joe_MacDonald@mentor.com>
Date: Thu, 14 Nov 2019 09:48:44 +0800
Message-ID: <20191114014901.22862-3-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191114014901.22862-1-yi.zhao@windriver.com>
References: <20191114014901.22862-1-yi.zhao@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.158.241]
Subject: [meta-selinux][PATCH 02/19] selinux: uprev inc files to 2.9 (20190315)
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
X-List-Received-Date: Thu, 14 Nov 2019 01:49:24 -0000
Content-Type: text/plain

* Update SRC_URI
* Add UPSTREAM_CHECK_URI and UPSTREAM_CHECK_REGEX

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 recipes-security/selinux/selinux_20180524.inc | 5 -----
 recipes-security/selinux/selinux_20190315.inc | 8 ++++++++
 recipes-security/selinux/selinux_common.inc   | 4 +---
 3 files changed, 9 insertions(+), 8 deletions(-)
 delete mode 100644 recipes-security/selinux/selinux_20180524.inc
 create mode 100644 recipes-security/selinux/selinux_20190315.inc

diff --git a/recipes-security/selinux/selinux_20180524.inc b/recipes-security/selinux/selinux_20180524.inc
deleted file mode 100644
index b36b333..0000000
--- a/recipes-security/selinux/selinux_20180524.inc
+++ /dev/null
@@ -1,5 +0,0 @@
-SELINUX_RELEASE = "20180524"
-
-SRC_URI = "https://raw.githubusercontent.com/wiki/SELinuxProject/selinux/files/releases/${SELINUX_RELEASE}/${BPN}-${PV}.tar.gz"
-
-include selinux_common.inc
diff --git a/recipes-security/selinux/selinux_20190315.inc b/recipes-security/selinux/selinux_20190315.inc
new file mode 100644
index 0000000..e79dd54
--- /dev/null
+++ b/recipes-security/selinux/selinux_20190315.inc
@@ -0,0 +1,8 @@
+SELINUX_RELEASE = "20190315"
+
+SRC_URI = "https://github.com/SELinuxProject/selinux/releases/download/${SELINUX_RELEASE}/${BPN}-${PV}.tar.gz"
+
+UPSTREAM_CHECK_URI = "https://github.com/SELinuxProject/selinux/releases"
+UPSTREAM_CHECK_REGEX = "libselinux-(?P<pver>.+)\.tar\.gz"
+
+require selinux_common.inc
diff --git a/recipes-security/selinux/selinux_common.inc b/recipes-security/selinux/selinux_common.inc
index 383f62d..f6c4a6b 100644
--- a/recipes-security/selinux/selinux_common.inc
+++ b/recipes-security/selinux/selinux_common.inc
@@ -1,9 +1,7 @@
 HOMEPAGE = "https://github.com/SELinuxProject"
 
 do_compile() {
-    oe_runmake all \
-            INCLUDEDIR='${STAGING_INCDIR}' \
-            LIBDIR='${STAGING_LIBDIR}'
+    oe_runmake all
 }
 
 do_install() {
-- 
2.17.1


