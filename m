Return-Path: <anuj.mittal@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 859D6E00CED; Tue, 27 Mar 2018 23:19:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1AC47E00C72
	for <yocto@yoctoproject.org>; Tue, 27 Mar 2018 23:19:58 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
	by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	27 Mar 2018 23:19:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.48,370,1517904000"; d="scan'208";a="211923825"
Received: from anmitta2-mobl1.gar.corp.intel.com (HELO
	anmitta2-MOBL1.png.intel.com) ([10.221.22.152])
	by orsmga005.jf.intel.com with ESMTP; 27 Mar 2018 23:19:56 -0700
From: Anuj Mittal <anuj.mittal@intel.com>
To: yocto@yoctoproject.org
Date: Wed, 28 Mar 2018 14:19:37 +0800
Message-Id: <1522217979-669-2-git-send-email-anuj.mittal@intel.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1522217979-669-1-git-send-email-anuj.mittal@intel.com>
References: <1522217979-669-1-git-send-email-anuj.mittal@intel.com>
Subject: [meta-yocto][PATCH v2 1/3] linux-yocto: update genericx86* SRCREVs for 4.12
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
X-List-Received-Date: Wed, 28 Mar 2018 06:19:58 -0000

Bump to stable kernel release 4.12.21.

Signed-off-by: Anuj Mittal <anuj.mittal@intel.com>
---
 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.12.bbappend | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.12.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.12.bbappend
index 0740d9d..56e700d 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.12.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.12.bbappend
@@ -8,8 +8,8 @@ KBRANCH_beaglebone-yocto = "standard/beaglebone"
 KMACHINE_beaglebone-yocto = "beaglebone"
 KBRANCH_mpc8315e-rdb = "standard/fsl-mpc8315e-rdb"
 
-SRCREV_machine_genericx86    ?= "1c4ad569af3e23a77994235435040e322908687f"
-SRCREV_machine_genericx86-64 ?= "1c4ad569af3e23a77994235435040e322908687f"
+SRCREV_machine_genericx86    ?= "97e710ef0545c19d3c10bd81a61bdca9fe543b81"
+SRCREV_machine_genericx86-64 ?= "97e710ef0545c19d3c10bd81a61bdca9fe543b81"
 SRCREV_machine_edgerouter ?= "257f843ea367744620f1d92910afd2f454e31483"
 SRCREV_machine_beaglebone-yocto ?= "257f843ea367744620f1d92910afd2f454e31483"
 SRCREV_machine_mpc8315e-rdb ?= "014560874f9eb2a86138c9cc35046ff1720485e1"
@@ -21,8 +21,8 @@ COMPATIBLE_MACHINE_edgerouter = "edgerouter"
 COMPATIBLE_MACHINE_beaglebone-yocto = "beaglebone-yocto"
 COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
 
-LINUX_VERSION_genericx86 = "4.12.20"
-LINUX_VERSION_genericx86-64 = "4.12.20"
+LINUX_VERSION_genericx86 = "4.12.21"
+LINUX_VERSION_genericx86-64 = "4.12.21"
 LINUX_VERSION_edgerouter = "4.12.19"
 LINUX_VERSION_beaglebone-yocto = "4.12.19"
 LINUX_VERSION_mpc8315e-rdb = "4.12.19"
-- 
2.7.4


