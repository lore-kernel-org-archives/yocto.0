Return-Path: <Yi.Zhao@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 08392E00E65; Wed, 13 Nov 2019 17:50:11 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	https://www.dnswl.org/, *      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9DD33E00E54
	for <yocto@yoctoproject.org>; Wed, 13 Nov 2019 17:49:52 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id xAE1npCn017005
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 13 Nov 2019 17:49:51 -0800
Received: from localhost (128.224.158.241) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.468.0;
	Wed, 13 Nov 2019 17:49:50 -0800
From: Yi Zhao <yi.zhao@windriver.com>
To: <yocto@yoctoproject.org>, <joe@deserted.net>, <Joe_MacDonald@mentor.com>
Date: Thu, 14 Nov 2019 09:48:56 +0800
Message-ID: <20191114014901.22862-15-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191114014901.22862-1-yi.zhao@windriver.com>
References: <20191114014901.22862-1-yi.zhao@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.158.241]
Subject: [meta-selinux][PATCH 14/19] selinux-sandbox: uprev to 2.9 (20190315)
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
X-List-Received-Date: Thu, 14 Nov 2019 01:50:11 -0000
Content-Type: text/plain

* Switch to python3
* Rebase patch

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 recipes-security/selinux/selinux-sandbox.inc           | 10 ++++------
 .../selinux/selinux-sandbox/sandbox-de-bashify.patch   |  9 +++++----
 recipes-security/selinux/selinux-sandbox_2.8.bb        |  7 -------
 recipes-security/selinux/selinux-sandbox_2.9.bb        |  7 +++++++
 4 files changed, 16 insertions(+), 17 deletions(-)
 delete mode 100644 recipes-security/selinux/selinux-sandbox_2.8.bb
 create mode 100644 recipes-security/selinux/selinux-sandbox_2.9.bb

diff --git a/recipes-security/selinux/selinux-sandbox.inc b/recipes-security/selinux/selinux-sandbox.inc
index 854640c..c8e335a 100644
--- a/recipes-security/selinux/selinux-sandbox.inc
+++ b/recipes-security/selinux/selinux-sandbox.inc
@@ -13,12 +13,10 @@ SRC_URI += "file://sandbox-de-bashify.patch \
 DEPENDS += "libcap-ng libselinux"
 
 RDEPENDS_${PN} += "\
-        python-core \
-        python-math \
-        python-shell \
-        python-subprocess \
-        python-textutils \
-        python-unixadmin \
+        python3-core \
+        python3-math \
+        python3-shell \
+        python3-unixadmin \
         libselinux-python \
         selinux-python \
 "
diff --git a/recipes-security/selinux/selinux-sandbox/sandbox-de-bashify.patch b/recipes-security/selinux/selinux-sandbox/sandbox-de-bashify.patch
index 18cef4b..e9622f0 100644
--- a/recipes-security/selinux/selinux-sandbox/sandbox-de-bashify.patch
+++ b/recipes-security/selinux/selinux-sandbox/sandbox-de-bashify.patch
@@ -1,4 +1,4 @@
-From d3e778e0062ca441c80e2a3ef2b508f5566e1f70 Mon Sep 17 00:00:00 2001
+From b92c39f0be5552c19923f75aef4487348a08b7dc Mon Sep 17 00:00:00 2001
 From: Joe MacDonald <joe_macdonald@mentor.com>
 Date: Fri, 20 Feb 2015 21:07:47 -0500
 Subject: [PATCH] sandbox: de-bashify
@@ -10,9 +10,10 @@ Upstream-Status: Pending
 
 Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
 Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
 ---
- sandbox/sandbox.init | 2 +-
- sandbox/sandboxX.sh  | 2 +-
+ sandbox.init | 2 +-
+ sandboxX.sh  | 2 +-
  2 files changed, 2 insertions(+), 2 deletions(-)
 
 diff --git a/sandbox.init b/sandbox.init
@@ -36,5 +37,5 @@ index eaa500d..8755d75 100644
  context=`id -Z | secon -t -l -P`
  export TITLE="Sandbox $context -- `grep ^#TITLE: ~/.sandboxrc | /usr/bin/cut -b8-80`"
 -- 
-1.9.1
+2.7.4
 
diff --git a/recipes-security/selinux/selinux-sandbox_2.8.bb b/recipes-security/selinux/selinux-sandbox_2.8.bb
deleted file mode 100644
index 1eb6c2d..0000000
--- a/recipes-security/selinux/selinux-sandbox_2.8.bb
+++ /dev/null
@@ -1,7 +0,0 @@
-include selinux_20180524.inc
-include ${BPN}.inc
-
-LIC_FILES_CHKSUM = "file://COPYING;md5=393a5ca445f6965873eca0259a17f833"
-
-SRC_URI[md5sum] = "957f5d0fc7724f93f502d1d632568894"
-SRC_URI[sha256sum] = "025f84f76e07b7bfc9ba1e9215f4ddb646d41a2e935a65e07560feaa6fc20ef3"
diff --git a/recipes-security/selinux/selinux-sandbox_2.9.bb b/recipes-security/selinux/selinux-sandbox_2.9.bb
new file mode 100644
index 0000000..b1dd462
--- /dev/null
+++ b/recipes-security/selinux/selinux-sandbox_2.9.bb
@@ -0,0 +1,7 @@
+require selinux_20190315.inc
+require ${BPN}.inc
+
+LIC_FILES_CHKSUM = "file://COPYING;md5=393a5ca445f6965873eca0259a17f833"
+
+SRC_URI[md5sum] = "3482b8fa6648160e97ba48ad26f84e7d"
+SRC_URI[sha256sum] = "01915f57f08642751dea550a87f82a6f2fcec754be48dcfa28266c14bd044262"
-- 
2.17.1


