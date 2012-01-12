Return-Path: <lianhao.lu@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 524D7E0072A
	for <yocto@yoctoproject.org>; Wed, 11 Jan 2012 22:39:19 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 11 Jan 2012 22:39:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="111390562"
Received: from llu-piketon.sh.intel.com (HELO localhost) ([10.239.36.146])
	by fmsmga002.fm.intel.com with ESMTP; 11 Jan 2012 22:39:18 -0800
From: Lianhao Lu <lianhao.lu@intel.com>
To: yocto@yoctoproject.org
Date: Thu, 12 Jan 2012 14:37:22 +0800
Message-Id: <99b6b2fffc64bb1b19a073b384c4e4b72837aac4.1326349703.git.lianhao.lu@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1326349703.git.lianhao.lu@intel.com>
References: <cover.1326349703.git.lianhao.lu@intel.com>
Subject: [PATCH 1/1] meta-yocto/conf: Change default signature handler.
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 12 Jan 2012 06:39:19 -0000

[YOCTO #1555]
1. Changed default signature handler to 'basichash' in poky.conf.
2. Added comment about PRservice settings in local.conf.extened.

Signed-off-by: Lianhao Lu <lianhao.lu@intel.com>
---
 meta-yocto/conf/distro/poky.conf           |    2 ++
 meta-yocto/conf/local.conf.sample.extended |    6 +++++-
 2 files changed, 7 insertions(+), 1 deletions(-)

diff --git a/meta-yocto/conf/distro/poky.conf b/meta-yocto/conf/distro/poky.conf
index 86f9bf6..7ecf639 100644
--- a/meta-yocto/conf/distro/poky.conf
+++ b/meta-yocto/conf/distro/poky.conf
@@ -65,3 +65,5 @@ CONNECTIVITY_CHECK_URIS ?= "git://git.yoctoproject.org/yocto-firewall-test;proto
                           https://eula-downloads.yoctoproject.org/index.php \
                           http://bugzilla.yoctoproject.org/report.cgi"
 
+# Default hash policy for distro
+BB_SIGNATURE_HANDLER ?= 'basichash'
diff --git a/meta-yocto/conf/local.conf.sample.extended b/meta-yocto/conf/local.conf.sample.extended
index b901c5b..af86f42 100644
--- a/meta-yocto/conf/local.conf.sample.extended
+++ b/meta-yocto/conf/local.conf.sample.extended
@@ -115,8 +115,12 @@
 #DEFAULTTUNE_virtclass-multilib-lib32 = "x86"
 
 # The network based PR service host and port
+# Uncomment the following lines to enable PRservice.
+# Set PRSERV_HOST to 'localhost' and PRSERV_PORT to '0' to automatically
+# start local PRService.
+# Set to other values to use remote PRService.
 #PRSERV_HOST = "localhost"
-#PRSERV_PORT = "8585"
+#PRSERV_PORT = "0"
 
 # Additional image generation features
 #
-- 
1.7.0.4


