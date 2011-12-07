Return-Path: <dvhart@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CC4D8E00735
	for <yocto@yoctoproject.org>; Wed,  7 Dec 2011 11:19:26 -0800 (PST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 07 Dec 2011 11:19:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="83318783"
Received: from unknown (HELO localhost) ([10.255.12.239])
	by azsmga001.ch.intel.com with ESMTP; 07 Dec 2011 11:19:26 -0800
From: Darren Hart <darren@dvhart.com>
To: yocto@yoctoproject.org, Bruce Ashfield <bruce.ashfield@windriver.com>,
	Tom Zanussi <tom.zanussi@intel.com>
Date: Wed,  7 Dec 2011 11:19:09 -0800
Message-Id: <cf1ea71a91b56b6774eca1b1b305db45ee32edb6.1323285225.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.6.4
In-Reply-To: <cover.1323285225.git.dvhart@linux.intel.com>
References: <cover.1323285225.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1323285225.git.dvhart@linux.intel.com>
References: <cover.1323285225.git.dvhart@linux.intel.com>
Subject: [PATCH 3/3] x86, efi: Convert efi_phys_get_time() args to physical addresses
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
X-List-Received-Date: Wed, 07 Dec 2011 19:19:27 -0000

From: Maurice Ma <maurice.ma@intel.com>

Because callers of efi_phys_get_time() pass virtual stack addresses as
arguments, we need to find their corresponding physical addresses and
when calling GetTime() in physical mode.

Without this patch the following line is printed on boot,

	"Oops: efitime: can't read time!"

Cc: Matthew Garrett <mjg@redhat.com>
Cc: Thomas Gleixner <tglx@linutronix.de>
Cc: Ingo Molnar <mingo@elte.hu>
Cc: "H. Peter Anvin" <hpa@zytor.com>
Cc: x86@kernel.org
Cc: Zhang Rui <rui.zhang@intel.com>
Signed-off-by: Maurice Ma <maurice.ma@intel.com>
Signed-off-by: Matt Fleming <matt.fleming@intel.com>
Integrated-by: Darren Hart <dvhart@linux.intel.com>
---
 arch/x86/platform/efi/efi.c |    3 ++-
 1 files changed, 2 insertions(+), 1 deletions(-)

diff --git a/arch/x86/platform/efi/efi.c b/arch/x86/platform/efi/efi.c
index 899e393..4fd8217 100644
--- a/arch/x86/platform/efi/efi.c
+++ b/arch/x86/platform/efi/efi.c
@@ -167,7 +167,8 @@ static efi_status_t __init phys_efi_get_time(efi_time_t *tm,
 	efi_status_t status;
 
 	efi_call_phys_prelog();
-	status = efi_call_phys2(efi_phys.get_time, tm, tc);
+	status = efi_call_phys2(efi_phys.get_time, virt_to_phys(tm),
+				virt_to_phys(tc));
 	efi_call_phys_epilog();
 	return status;
 }
-- 
1.7.6.4


