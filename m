Return-Path: <swee.aun.khor@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 97EF9E00ACF; Wed,  5 Jul 2017 19:50:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.4 required=5.0 tests=BAYES_00, DATE_IN_PAST_06_12, 
	RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 1.5 DATE_IN_PAST_06_12 Date: is 6 to 12 hours before
	Received: date
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2344DE00A38
	for <yocto@yoctoproject.org>; Wed,  5 Jul 2017 19:50:31 -0700 (PDT)
Received: from orsmga005.jf.intel.com ([10.7.209.41])
	by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	05 Jul 2017 19:50:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.40,315,1496127600"; d="scan'208";a="121353745"
Received: from platypus.jf.intel.com ([10.54.77.139])
	by orsmga005.jf.intel.com with ESMTP; 05 Jul 2017 19:50:30 -0700
From: swee.aun.khor@intel.com
To: yocto@yoctoproject.org
Date: Wed,  5 Jul 2017 12:39:59 -0700
Message-Id: <1499283599-11297-1-git-send-email-swee.aun.khor@intel.com>
X-Mailer: git-send-email 2.7.4
X-Mailman-Approved-At: Thu, 06 Jul 2017 20:59:23 -0700
Cc: swee.aun.khor@intel.com, todor.minchev@linux.intel.com, saul.wold@intel.com
Subject: [RMC][PATCH v2] RMC: Support x32 build
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
X-List-Received-Date: Thu, 06 Jul 2017 02:50:34 -0000

From: sweeaun <swee.aun.khor@intel.com>

RMC efi is needed to compiled as 64 bits even DEFAULTTUNE is x32.

Signed-off-by: sweeaun <swee.aun.khor@intel.com>
---
 Makefile.efi | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Makefile.efi b/Makefile.efi
index 4f69dfe..95e0f8c 100644
--- a/Makefile.efi
+++ b/Makefile.efi
@@ -16,6 +16,9 @@ RMC_INSTALL_LIB_PATH := $(RMC_INSTALL_PREFIX)/lib/
 
 RMC_CFLAGS := -DRMC_EFI -Wall -I$(TOPDIR)/inc -fpic -nostdinc -nostdlib  -fno-builtin -std=gnu90
 
+#RMC efi is needed to be compiled as 64 bit even DEFAULTTUNE is x32 
+CC := $(patsubst -mx32, -m64, $(CC))
+
 all: librmcefi
 
 $(RMC_LIB_OBJ): %.efi.o: %.c
-- 
2.7.4


