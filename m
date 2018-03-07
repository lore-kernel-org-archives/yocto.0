Return-Path: <anuj.mittal@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 35CFEE00E1F; Wed,  7 Mar 2018 00:31:50 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 23100E00823
	for <yocto@yoctoproject.org>; Wed,  7 Mar 2018 00:31:49 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
	by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	07 Mar 2018 00:31:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.47,435,1515484800"; d="scan'208";a="23170702"
Received: from anmitta2-mobl1.png.intel.com ([10.221.16.69])
	by orsmga008.jf.intel.com with ESMTP; 07 Mar 2018 00:31:47 -0800
From: Anuj Mittal <anuj.mittal@intel.com>
To: yocto@yoctoproject.org
Date: Wed,  7 Mar 2018 16:22:40 +0800
Message-Id: <1520410960-459-3-git-send-email-anuj.mittal@intel.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1520410960-459-1-git-send-email-anuj.mittal@intel.com>
References: <1520410960-459-1-git-send-email-anuj.mittal@intel.com>
Subject: [meta-yocto][PATCH 3/3] linux-yocto: update genericx86* SRCREVs for v4.12
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
X-List-Received-Date: Wed, 07 Mar 2018 08:31:50 -0000

Sync with 4.12.20 kernel changes in oe-core.

Signed-off-by: Anuj Mittal <anuj.mittal@intel.com>
---
 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.12.bbappend | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.12.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.12.bbappend
index 0740d9d..06e9e64 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.12.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.12.bbappend
@@ -8,8 +8,8 @@ KBRANCH_beaglebone-yocto = "standard/beaglebone"
 KMACHINE_beaglebone-yocto = "beaglebone"
 KBRANCH_mpc8315e-rdb = "standard/fsl-mpc8315e-rdb"
 
-SRCREV_machine_genericx86    ?= "1c4ad569af3e23a77994235435040e322908687f"
-SRCREV_machine_genericx86-64 ?= "1c4ad569af3e23a77994235435040e322908687f"
+SRCREV_machine_genericx86    ?= "cec3c008ec8f7acdb01b95fceb1ef7dff35d1877"
+SRCREV_machine_genericx86-64 ?= "cec3c008ec8f7acdb01b95fceb1ef7dff35d1877"
 SRCREV_machine_edgerouter ?= "257f843ea367744620f1d92910afd2f454e31483"
 SRCREV_machine_beaglebone-yocto ?= "257f843ea367744620f1d92910afd2f454e31483"
 SRCREV_machine_mpc8315e-rdb ?= "014560874f9eb2a86138c9cc35046ff1720485e1"
-- 
2.7.4


