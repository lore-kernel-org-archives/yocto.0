Return-Path: <dvhart@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D2ACAE006AB
	for <yocto@yoctoproject.org>; Thu, 11 Aug 2011 00:25:57 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 11 Aug 2011 00:26:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,355,1309762800"; d="scan'208";a="37353374"
Received: from unknown (HELO envy.home) ([10.255.14.201])
	by azsmga001.ch.intel.com with ESMTP; 11 Aug 2011 00:25:55 -0700
Message-ID: <4E438401.6010001@linux.intel.com>
Date: Thu, 11 Aug 2011 00:25:53 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:5.0) Gecko/20110707 Thunderbird/5.0
MIME-Version: 1.0
To: Yocto Project <yocto@yoctoproject.org>
Subject: [linux-yocto][PATCH] MIPS: ARC: Fix build of firmware library on
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
X-List-Received-Date: Thu, 11 Aug 2011 07:25:58 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

commit 4f55fd752fb4770a354dd2401d5043c98236cc29 upstream

Signed-off-by: Ralf Baechle <ralf@linux-mips.org>

[applied to linux-yocto standard/base]

Signed-off-by: Darren Hart <dvhart@linux.intel.com>

---
 arch/mips/include/asm/smp-ops.h |    2 ++
 1 files changed, 2 insertions(+), 0 deletions(-)

diff --git a/arch/mips/include/asm/smp-ops.h
b/arch/mips/include/asm/smp-ops.h
index 48b03ff..ef2a804 100644
--- a/arch/mips/include/asm/smp-ops.h
+++ b/arch/mips/include/asm/smp-ops.h
@@ -11,6 +11,8 @@
 #ifndef __ASM_SMP_OPS_H
 #define __ASM_SMP_OPS_H

+#include <linux/errno.h>
+
 #ifdef CONFIG_SMP

 #include <linux/cpumask.h>
-- 
1.7.6
-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

