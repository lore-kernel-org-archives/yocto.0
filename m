Return-Path: <tom.zanussi@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 30EC9E01238
	for <yocto@yoctoproject.org>; Wed, 17 Aug 2011 09:51:20 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 17 Aug 2011 09:51:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.68,240,1312182000"; d="scan'208";a="39480917"
Received: from unknown (HELO localhost) ([10.255.14.5])
	by azsmga001.ch.intel.com with ESMTP; 17 Aug 2011 09:51:30 -0700
From: tom.zanussi@intel.com
To: dvhart@linux.intel.com,
	yocto@yoctoproject.org
Date: Wed, 17 Aug 2011 11:51:13 -0500
Message-Id: <dd97478bd641fe78c84fff98cbecef9b159874a8.1313598804.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <9391ba93d0385e0768062df5c4c087d9673a827b.1313598804.git.tom.zanussi@intel.com>
References: <9391ba93d0385e0768062df5c4c087d9673a827b.1313598804.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1313598804.git.tom.zanussi@intel.com>
References: <cover.1313598804.git.tom.zanussi@intel.com>
Subject: [PATCH 12/12] meta-intel: crownbay/fri2 README update for COMMERCIAL_LICENSE
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
X-List-Received-Date: Wed, 17 Aug 2011 16:51:20 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Document an alternative mechanism for users to deal with
COMMERCIAL_LICENSE in the crownbay and fri2 BSPs.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta-crownbay/README |    6 ++++++
 meta-fri2/README     |    6 ++++++
 2 files changed, 12 insertions(+), 0 deletions(-)

diff --git a/meta-crownbay/README b/meta-crownbay/README
index c82f2c4..c3d2520 100644
--- a/meta-crownbay/README
+++ b/meta-crownbay/README
@@ -85,6 +85,12 @@ As mentioned in Section I, you need to add the line:
 
 to the local.conf file in order for the build to succeed.
 
+Alternatively, if clearing COMMERCIAL_LICENSE is not precise enough
+for your needs, you can also simply comment out the following line in
+meta-crownbay/conf/layer.conf to achieve the same result:
+
+  COMMERCIAL_LICENSE += "emgd-driver-bin"
+
 The crownbay BSP COMMERCIAL_LICENSE default setting causes the build
 to fail in order to prevent users from inadvertently creating and
 possibly distributing images containing packages with non-free
diff --git a/meta-fri2/README b/meta-fri2/README
index e2e7bd0..81ced36 100644
--- a/meta-fri2/README
+++ b/meta-fri2/README
@@ -87,6 +87,12 @@ As mentioned in Section I, you need to add the line:
 
 to the local.conf file in order for the build to succeed.
 
+Alternatively, if clearing COMMERCIAL_LICENSE is not precise enough
+for your needs, you can also simply comment out the following line in
+meta-fri/conf/layer.conf to achieve the same result:
+
+  COMMERCIAL_LICENSE += "emgd-driver-bin"
+
 The fri2 BSP COMMERCIAL_LICENSE default setting causes the build to
 fail in order to prevent users from inadvertently creating and
 possibly distributing images containing packages with non-free
-- 
1.7.0.4


