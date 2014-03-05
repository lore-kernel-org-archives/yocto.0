Return-Path: <elizabeth.flanagan@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E5BEBE00A9C
	for <yocto@yoctoproject.org>; Wed,  5 Mar 2014 10:26:57 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 05 Mar 2014 10:26:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,593,1389772800"; d="scan'208";a="492922493"
Received: from qana.jf.intel.com ([10.7.201.148])
	by fmsmga002.fm.intel.com with ESMTP; 05 Mar 2014 10:26:51 -0800
Received: by qana.jf.intel.com (Postfix, from userid 1000)
	id B560E5F82A80; Wed,  5 Mar 2014 10:23:33 -0800 (PST)
From: Elizabeth Flanagan <elizabeth.flanagan@intel.com>
To: yocto@yoctoproject.org
Date: Wed,  5 Mar 2014 10:23:16 -0800
Message-Id: <23ebc3b72ed676eb97e61dae00ffc83693dab0e7.1394042358.git.elizabeth.flanagan@intel.com>
X-Mailer: git-send-email 1.8.1.2
In-Reply-To: <cover.1394042358.git.elizabeth.flanagan@intel.com>
References: <cover.1394042358.git.elizabeth.flanagan@intel.com>
In-Reply-To: <cover.1394042358.git.elizabeth.flanagan@intel.com>
References: <cover.1394042358.git.elizabeth.flanagan@intel.com>
Subject: [AB PATCH 25/27] yocto-autobuilder-setup: set the correct bb version
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
X-List-Received-Date: Wed, 05 Mar 2014 18:26:58 -0000

Signed-off-by: Elizabeth Flanagan <elizabeth.flanagan@intel.com>
---
 yocto-autobuilder-setup | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/yocto-autobuilder-setup b/yocto-autobuilder-setup
index 227d5f6..69c1e83 100644
--- a/yocto-autobuilder-setup
+++ b/yocto-autobuilder-setup
@@ -137,8 +137,8 @@ if [ -n "${config_check:+x}" ]; then
     echo ""
     echo " Ready to start the yocto autobuilder."
     echo ""
-    echo " The yocto-autobuilder runs buildbot 0.8.7p1 with some modifications to "
-    echo " layout.py and buildbot/status/master.py. "
+    echo " The yocto-autobuilder runs buildbot 0.8.8 with some modifications and"
+    echo " a different git fetcher (yoctogit.py)"
     echo ""
     echo "#########################################################################"
     buildbot upgrade-master ${PWD}/yocto-master
-- 
1.8.1.2


