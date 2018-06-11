Return-Path: <aaron.chun.yew.chan@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EAD04E01E19; Sun, 10 Jun 2018 23:02:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.126 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C8505E01E0D
	for <yocto@yoctoproject.org>; Sun, 10 Jun 2018 23:02:35 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
	by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	10 Jun 2018 23:02:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.49,500,1520924400"; d="scan'208";a="231533776"
Received: from aaronchu-mobl1.png.intel.com ([10.221.23.106])
	by orsmga005.jf.intel.com with ESMTP; 10 Jun 2018 23:02:33 -0700
From: aaron.chun.yew.chan@intel.com
To: yocto@yoctoproject.org
Date: Mon, 11 Jun 2018 14:02:31 +0800
Message-Id: <1528696951-19965-1-git-send-email-aaron.chun.yew.chan@intel.com>
X-Mailer: git-send-email 2.7.4
Cc: Aaron Chan <aaron.chun.yew.chan@intel.com>
Subject: [PATCH] [yocto-autobuilder2] Fixes on schedulers default build-appliance
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
X-List-Received-Date: Mon, 11 Jun 2018 06:02:37 -0000

From: Aaron Chan <aaron.chun.yew.chan@intel.com>

---
 schedulers.py | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/schedulers.py b/schedulers.py
index 8f3dbc5..02e4340 100644
--- a/schedulers.py
+++ b/schedulers.py
@@ -63,7 +63,7 @@ def props_for_builder(builder):
         props.append(util.BooleanParameter(
             name="deploy_artifacts",
             label="Do we want to deploy artifacts? ",
-            default=Boolean
+            default=False
         ))
 
     props = props + repos_for_builder(builder)
-- 
2.7.4


