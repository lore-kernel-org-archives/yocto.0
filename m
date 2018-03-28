Return-Path: <anuj.mittal@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2A75BE00CF4; Tue, 27 Mar 2018 23:20:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A6F7DE00851
	for <yocto@yoctoproject.org>; Tue, 27 Mar 2018 23:19:59 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
	by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	27 Mar 2018 23:19:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.48,370,1517904000"; d="scan'208";a="211923829"
Received: from anmitta2-mobl1.gar.corp.intel.com (HELO
	anmitta2-MOBL1.png.intel.com) ([10.221.22.152])
	by orsmga005.jf.intel.com with ESMTP; 27 Mar 2018 23:19:58 -0700
From: Anuj Mittal <anuj.mittal@intel.com>
To: yocto@yoctoproject.org
Date: Wed, 28 Mar 2018 14:19:38 +0800
Message-Id: <1522217979-669-3-git-send-email-anuj.mittal@intel.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1522217979-669-1-git-send-email-anuj.mittal@intel.com>
References: <1522217979-669-1-git-send-email-anuj.mittal@intel.com>
Subject: [meta-yocto][PATCH v2 2/3] linux-yocto: update genericx86* SRCREVs for 4.14
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
X-List-Received-Date: Wed, 28 Mar 2018 06:20:00 -0000

Bump to stable kernel release 4.14.30

Signed-off-by: Anuj Mittal <anuj.mittal@intel.com>
---
 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.14.bbappend | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.14.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.14.bbappend
index e3a6963..3f73eea 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.14.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.14.bbappend
@@ -4,11 +4,11 @@ KBRANCH_genericx86-64  = "v4.14/standard/base"
 KMACHINE_genericx86 ?= "common-pc"
 KMACHINE_genericx86-64 ?= "common-pc-64"
 
-SRCREV_machine_genericx86    ?= "537602db26fe2d26c1959f1ecb43966770c10ff2"
-SRCREV_machine_genericx86-64 ?= "537602db26fe2d26c1959f1ecb43966770c10ff2"
+SRCREV_machine_genericx86    ?= "1d50ce210b0536eb9a66d1e56ae215f92176444a"
+SRCREV_machine_genericx86-64 ?= "1d50ce210b0536eb9a66d1e56ae215f92176444a"
 
 COMPATIBLE_MACHINE_genericx86 = "genericx86"
 COMPATIBLE_MACHINE_genericx86-64 = "genericx86-64"
 
-LINUX_VERSION_genericx86 = "4.14.19"
-LINUX_VERSION_genericx86-64 = "4.14.19"
+LINUX_VERSION_genericx86 = "4.14.30"
+LINUX_VERSION_genericx86-64 = "4.14.30"
-- 
2.7.4


