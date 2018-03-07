Return-Path: <anuj.mittal@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 03A3EE00DF3; Wed,  7 Mar 2018 00:31:49 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 33C3FE00833
	for <yocto@yoctoproject.org>; Wed,  7 Mar 2018 00:31:46 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
	by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	07 Mar 2018 00:31:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.47,435,1515484800"; d="scan'208";a="23170695"
Received: from anmitta2-mobl1.png.intel.com ([10.221.16.69])
	by orsmga008.jf.intel.com with ESMTP; 07 Mar 2018 00:31:44 -0800
From: Anuj Mittal <anuj.mittal@intel.com>
To: yocto@yoctoproject.org
Date: Wed,  7 Mar 2018 16:22:38 +0800
Message-Id: <1520410960-459-1-git-send-email-anuj.mittal@intel.com>
X-Mailer: git-send-email 2.7.4
Subject: [meta-yocto][PATCH 1/3] linux-yocto: update genericx86* SRCREVs for v4.15
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
X-List-Received-Date: Wed, 07 Mar 2018 08:31:49 -0000

Sync with stable kernel release 4.15.7 in oe-core.

Signed-off-by: Anuj Mittal <anuj.mittal@intel.com>
---
 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.15.bbappend | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.15.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.15.bbappend
index a30a924..083f861 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.15.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.15.bbappend
@@ -4,11 +4,11 @@ KBRANCH_genericx86-64  = "v4.15/standard/base"
 KMACHINE_genericx86 ?= "common-pc"
 KMACHINE_genericx86-64 ?= "common-pc-64"
 
-SRCREV_machine_genericx86    ?= "a6a3a6a73d628798fc6eb6832bf829a9ea43f6bd"
-SRCREV_machine_genericx86-64 ?= "a6a3a6a73d628798fc6eb6832bf829a9ea43f6bd"
+SRCREV_machine_genericx86    ?= "3247d5a26cab529bd4acc137c119bcdf71c3d5ae"
+SRCREV_machine_genericx86-64 ?= "3247d5a26cab529bd4acc137c119bcdf71c3d5ae"
 
 COMPATIBLE_MACHINE_genericx86 = "genericx86"
 COMPATIBLE_MACHINE_genericx86-64 = "genericx86-64"
 
-LINUX_VERSION_genericx86 = "4.15.3"
-LINUX_VERSION_genericx86-64 = "4.15.3"
+LINUX_VERSION_genericx86 = "4.15.7"
+LINUX_VERSION_genericx86-64 = "4.15.7"
-- 
2.7.4


