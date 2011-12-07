Return-Path: <dvhart@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9BA73E00728
	for <yocto@yoctoproject.org>; Wed,  7 Dec 2011 11:19:20 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 07 Dec 2011 11:19:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="99757858"
Received: from unknown (HELO localhost) ([10.255.12.239])
	by fmsmga002.fm.intel.com with ESMTP; 07 Dec 2011 11:19:20 -0800
From: Darren Hart <darren@dvhart.com>
To: yocto@yoctoproject.org, Bruce Ashfield <bruce.ashfield@windriver.com>,
	Tom Zanussi <tom.zanussi@intel.com>
Date: Wed,  7 Dec 2011 11:19:08 -0800
Message-Id: <476c1061382b3b2e75fc8243663f382cfeac195c.1323285225.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.6.4
In-Reply-To: <cover.1323285225.git.dvhart@linux.intel.com>
References: <cover.1323285225.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1323285225.git.dvhart@linux.intel.com>
References: <cover.1323285225.git.dvhart@linux.intel.com>
Subject: [PATCH 2/3] x86, efi: Make efi_call_phys_prelog() CONFIG_RELOCATABLE-aware
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
X-List-Received-Date: Wed, 07 Dec 2011 19:19:20 -0000

From: Matt Fleming <matt.fleming@intel.com>

efi_call_phys_prelog() assumes that the kernel was loaded at a
physical address within the first 8MB of ram, usually
0x1000000. However, this isn't the case with a CONFIG_RELOCATABLE=y
kernel which could have been loaded anywhere in the physical address
space.

Replace the hardcoded pgd_index(0) and pgd_index(PAGE_OFFSET) with the
runtime addresses of the kernel in the physical and virtual space,
respectively.

Cc: Thomas Gleixner <tglx@linutronix.de>
Cc: Ingo Molnar <mingo@elte.hu>
Cc: "H. Peter Anvin" <hpa@zytor.com>
Cc: Matthew Garrett <mjg@redhat.com>
Signed-off-by: Matt Fleming <matt.fleming@intel.com>
Integrated-by: Darren Hart <dvhart@linux.intel.com>
---
 arch/x86/platform/efi/efi_32.c |   22 +++++++++++++---------
 1 files changed, 13 insertions(+), 9 deletions(-)

diff --git a/arch/x86/platform/efi/efi_32.c b/arch/x86/platform/efi/efi_32.c
index 5cab48e..1156e9a 100644
--- a/arch/x86/platform/efi/efi_32.c
+++ b/arch/x86/platform/efi/efi_32.c
@@ -44,8 +44,12 @@ void efi_call_phys_prelog(void)
 {
 	unsigned long cr4;
 	unsigned long temp;
+	unsigned long phys_addr, virt_addr;
 	struct desc_ptr gdt_descr;
 
+	virt_addr = (unsigned long)_text;
+	phys_addr = virt_addr - PAGE_OFFSET;
+
 	local_irq_save(efi_rt_eflags);
 
 	/*
@@ -57,18 +61,18 @@ void efi_call_phys_prelog(void)
 
 	if (cr4 & X86_CR4_PAE) {
 		efi_bak_pg_dir_pointer[0].pgd =
-		    swapper_pg_dir[pgd_index(0)].pgd;
-		swapper_pg_dir[0].pgd =
-		    swapper_pg_dir[pgd_index(PAGE_OFFSET)].pgd;
+		    swapper_pg_dir[pgd_index(phys_addr)].pgd;
+		swapper_pg_dir[pgd_index(phys_addr)].pgd =
+		    swapper_pg_dir[pgd_index(virt_addr)].pgd;
 	} else {
 		efi_bak_pg_dir_pointer[0].pgd =
-		    swapper_pg_dir[pgd_index(0)].pgd;
+		    swapper_pg_dir[pgd_index(phys_addr)].pgd;
 		efi_bak_pg_dir_pointer[1].pgd =
-		    swapper_pg_dir[pgd_index(0x400000)].pgd;
-		swapper_pg_dir[pgd_index(0)].pgd =
-		    swapper_pg_dir[pgd_index(PAGE_OFFSET)].pgd;
-		temp = PAGE_OFFSET + 0x400000;
-		swapper_pg_dir[pgd_index(0x400000)].pgd =
+		    swapper_pg_dir[pgd_index(phys_addr + 0x400000)].pgd;
+		swapper_pg_dir[pgd_index(phys_addr)].pgd =
+		    swapper_pg_dir[pgd_index(virt_addr)].pgd;
+		temp = virt_addr + 0x400000;
+		swapper_pg_dir[pgd_index(phys_addr + 0x400000)].pgd =
 		    swapper_pg_dir[pgd_index(temp)].pgd;
 	}
 
-- 
1.7.6.4


