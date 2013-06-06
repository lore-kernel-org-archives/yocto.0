Return-Path: <Sen.Zhang@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 56CD6E01565
	for <yocto@yoctoproject.org>; Thu,  6 Jun 2013 00:22:30 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail1.windriver.com (8.14.5/8.14.3) with ESMTP id r567MU4K010500
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Thu, 6 Jun 2013 00:22:30 -0700 (PDT)
Received: from jesse-wrs-desktop.corp.ad.wrs.com (128.224.162.230) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.2.342.3; Thu, 6 Jun 2013 00:22:29 -0700
From: Jesse Zhang <sen.zhang@windriver.com>
To: <yocto@yoctoproject.org>
Date: Thu, 6 Jun 2013 15:24:51 +0800
Message-ID: <2849c5ae015d7cae06bfad344a414efa73ae04a1.1370503045.git.sen.zhang@windriver.com>
X-Mailer: git-send-email 1.7.11.7
In-Reply-To: <cover.1370503045.git.sen.zhang@windriver.com>
References: <cover.1370503045.git.sen.zhang@windriver.com>
MIME-Version: 1.0
Subject: [PATCH 1/1] local.conf.sample: use ?= to assign BB_ENV_EXTRAWHITE variables
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
X-List-Received-Date: Thu, 06 Jun 2013 07:22:30 -0000
Content-Type: text/plain

Use ?= so that the BB_ENV_EXTRAWHITE variables can be overridden from
the environment.

[YOCTO #4367]

Signed-off-by: Jesse Zhang <sen.zhang@windriver.com>
---
 meta-yocto/conf/local.conf.sample          | 4 ++--
 meta-yocto/conf/local.conf.sample.extended | 2 +-
 meta-yocto/conf/site.conf.sample           | 6 +++---
 3 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/meta-yocto/conf/local.conf.sample b/meta-yocto/conf/local.conf.sample
index 1abe224..2d89282 100644
--- a/meta-yocto/conf/local.conf.sample
+++ b/meta-yocto/conf/local.conf.sample
@@ -17,12 +17,12 @@
 # These two options control how much parallelism BitBake should use. The first 
 # option determines how many tasks bitbake should run in parallel:
 #
-#BB_NUMBER_THREADS = "4"
+#BB_NUMBER_THREADS ?= "4"
 # 
 # The second option controls how many processes make should run in parallel when
 # running compile tasks:
 #
-#PARALLEL_MAKE = "-j 4"
+#PARALLEL_MAKE ?= "-j 4"
 #
 # For a quad-core machine, BB_NUMBER_THREADS = "4", PARALLEL_MAKE = "-j 4" would
 # be appropriate for example.
diff --git a/meta-yocto/conf/local.conf.sample.extended b/meta-yocto/conf/local.conf.sample.extended
index 3dc73fb..07e5cf5 100644
--- a/meta-yocto/conf/local.conf.sample.extended
+++ b/meta-yocto/conf/local.conf.sample.extended
@@ -82,7 +82,7 @@
 # Use "external-MODE" to use the precompiled external toolchains where MODE
 # is the type of external toolchain to use e.g. eabi. You need to ensure 
 # the toolchain you want to use is included in an appropriate layer
-# TCMODE = "external-eabi"
+# TCMODE ?= "external-eabi"
 
 # mklibs library size optimization is more useful to smaller images,
 # and less useful for bigger images. Also mklibs library optimization
diff --git a/meta-yocto/conf/site.conf.sample b/meta-yocto/conf/site.conf.sample
index b2d01d0..c551e8f 100644
--- a/meta-yocto/conf/site.conf.sample
+++ b/meta-yocto/conf/site.conf.sample
@@ -19,10 +19,10 @@ SCONF_VERSION = "1"
 # To use git with a proxy, you must use an external git proxy command, such as
 # the one provided by scripts/oe-git-proxy.sh. To use this script, copy it to
 # your PATH and uncomment the following:
-#GIT_PROXY_COMMAND="oe-git-proxy"
-#ALL_PROXY="socks://socks.example.com:1080"
+#GIT_PROXY_COMMAND ?= "oe-git-proxy"
+#ALL_PROXY ?= "socks://socks.example.com:1080"
 #or
-#ALL_PROXY="https://proxy.example.com:8080"
+#ALL_PROXY ?= "https://proxy.example.com:8080"
 # If you wish to use certain hosts without the proxy, specify them in NO_PROXY.
 # See the script for details on syntax.
 
-- 
1.7.11.7


