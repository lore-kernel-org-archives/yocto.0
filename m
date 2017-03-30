Return-Path: <sgw@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 26BEFE00992; Thu, 30 Mar 2017 09:56:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	RCVD_IN_DNSWL_MED,T_DKIM_INVALID autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.55.52.120 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  0.0 T_DKIM_INVALID DKIM-Signature header exists but is not valid
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 03656E00826
	for <yocto@yoctoproject.org>; Thu, 30 Mar 2017 09:56:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
	d=intel.com; i=@intel.com; q=dns/txt; s=intel;
	t=1490892975; x=1522428975; h=from:to:subject:date:message-id;
	bh=Nyp1ZdM+Z+wqJeVzH3hZkTg7xZK2NzbzlmjtnsKlMts=;
	b=ZWrueCtNx1KQrJCb0E+ecKWNO0uymWcv4XxIwPOzBSSJao7b2eMR9cHa
	CYsUBpdyW5A+EVoYMvTwl/5TV3Xm5w==;
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	30 Mar 2017 09:56:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.36,247,1486454400"; d="scan'208";a="1128989771"
Received: from swold-mobl2.amr.corp.intel.com ([10.254.113.228])
	by fmsmga001.fm.intel.com with ESMTP; 30 Mar 2017 09:56:14 -0700
From: Saul Wold <sgw@linux.intel.com>
To: yocto@yoctoproject.org
Date: Thu, 30 Mar 2017 09:56:10 -0700
Message-Id: <1490892970-11447-1-git-send-email-sgw@linux.intel.com>
X-Mailer: git-send-email 2.7.4
Subject: [PATCH] i386 machine.cfg: Explicitly disable 64BIT
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
X-List-Received-Date: Thu, 30 Mar 2017 16:56:19 -0000

Since we do not set the 64 bit flags, newer kernels seem to build 64bit
config files by default. This is due to a hard-coded uname -m check that
selects the KBUILD_DEFCONFIG based on the host, not the cross target.

Similar to e9ec769926b2378e63380bd7762ce7ce201af151 in the yocto-kernel-cache repo

[YOCTO #11230]

Signed-off-by: Saul Wold <sgw@linux.intel.com>
---
 .../substrate/target/arch/i386/recipes-kernel/linux/files/machine.cfg  | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/machine.cfg b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/machine.cfg
index 3b168b7..fe5b882 100644
--- a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/machine.cfg
+++ b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/machine.cfg
@@ -1,5 +1,8 @@
 # yocto-bsp-filename {{=machine}}.cfg
 CONFIG_X86_32=y
+# Must explicitly disable 64BIT
+# CONFIG_64BIT is not set
+
 CONFIG_MATOM=y
 CONFIG_PRINTK=y
 
-- 
2.7.4


