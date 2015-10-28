Return-Path: <sgw@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C12BFE00748; Wed, 28 Oct 2015 16:12:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A3822E0059B
	for <yocto@yoctoproject.org>; Wed, 28 Oct 2015 16:12:20 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by orsmga101.jf.intel.com with ESMTP; 28 Oct 2015 16:12:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.20,212,1444719600"; d="scan'208";a="837932326"
Received: from jsreeram-duo.amr.corp.intel.com (HELO swold-mobl.jf.intel.com)
	([10.254.115.26])
	by fmsmga002.fm.intel.com with ESMTP; 28 Oct 2015 16:12:19 -0700
From: Saul Wold <sgw@linux.intel.com>
To: yocto@yoctoproject.org
Date: Wed, 28 Oct 2015 16:12:18 -0700
Message-Id: <1446073938-4172-1-git-send-email-sgw@linux.intel.com>
X-Mailer: git-send-email 2.1.0
Subject: [PATCH] linux-yocto_4.1: Update SRCREV for genericx86*
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
X-List-Received-Date: Wed, 28 Oct 2015 23:12:27 -0000

This update matches the kernel update made to oe-core linux-yocto
and address some graphics issues.

Signed-off-by: Saul Wold <sgw@linux.intel.com>
---

 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.1.bbappend | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.1.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.1.bbappend
index c70e559..5fdff25 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.1.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.1.bbappend
@@ -7,8 +7,8 @@ KBRANCH_mpc8315e-rdb = "standard/fsl-mpc8315e-rdb"
 KMACHINE_genericx86 ?= "common-pc"
 KMACHINE_genericx86-64 ?= "common-pc-64"
 
-SRCREV_machine_genericx86 ?= "a8abc111a96dd07a2884ebbba668ef8dec15f264"
-SRCREV_machine_genericx86-64 ?= "a8abc111a96dd07a2884ebbba668ef8dec15f264"
+SRCREV_machine_genericx86 ?= "dbe692d91c8e55d1430f2c45fd578c8e4e71e482"
+SRCREV_machine_genericx86-64 ?= "dbe692d91c8e55d1430f2c45fd578c8e4e71e482"
 SRCREV_machine_edgerouter ?= "79a31b9d23db126f8a6be3eb88fd683056a213f1"
 SRCREV_machine_beaglebone ?= "efb6ffb2ca96a364f916c9890ad023fc595e0e6e"
 SRCREV_machine_mpc8315e-rdb ?= "79a31b9d23db126f8a6be3eb88fd683056a213f1"
-- 
2.1.4


