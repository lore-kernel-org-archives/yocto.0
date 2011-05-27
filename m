Return-Path: <tom.zanussi@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 3C9414C80479
	for <yocto@yoctoproject.org>; Fri, 27 May 2011 15:46:07 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 27 May 2011 13:46:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,282,1304319600"; d="scan'208";a="10112172"
Received: from unknown (HELO localhost) ([10.255.12.115])
	by fmsmga001.fm.intel.com with ESMTP; 27 May 2011 13:46:01 -0700
From: tom.zanussi@intel.com
To: bruce.ashfield@windriver.com, rahul.saxena@intel.com,
	kishore.k.bodke@intel.com, yocto@yoctoproject.org
Date: Fri, 27 May 2011 15:44:56 -0500
Message-Id: <10a6a349dc99351000955bceeb2237636cbc37e4.1306509168.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <ea461ebf3e667c1607afd57abfc0db226bd4033e.1306509168.git.tom.zanussi@intel.com>
References: <ea461ebf3e667c1607afd57abfc0db226bd4033e.1306509168.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1306509168.git.tom.zanussi@intel.com>
References: <cover.1306509168.git.tom.zanussi@intel.com>
Subject: [PATCH 02/14][KERNEL] meta: replace open-coded hpet options with hpet feature
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
X-List-Received-Date: Fri, 27 May 2011 20:46:07 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Have common-pc-64 use the hpet feature, and remove the corresponding
options in common-pc64.cfg.  Also remove the hpet options from arm and
ppc machines where they're noops.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 .../arm-versatile-926ejs/arm-versatile-926ejs.cfg  |    1 -
 .../kernel-cache/bsp/common-pc-64/common-pc-64.cfg |    3 ---
 .../kernel-cache/bsp/common-pc-64/common-pc-64.scc |    1 +
 .../cfg/kernel-cache/bsp/qemu-ppc32/qemu-ppc32.cfg |    1 -
 4 files changed, 1 insertions(+), 5 deletions(-)

diff --git a/meta/cfg/kernel-cache/bsp/arm-versatile-926ejs/arm-versatile-926ejs.cfg b/meta/cfg/kernel-cache/bsp/arm-versatile-926ejs/arm-versatile-926ejs.cfg
index fc006f8..616df5b 100644
--- a/meta/cfg/kernel-cache/bsp/arm-versatile-926ejs/arm-versatile-926ejs.cfg
+++ b/meta/cfg/kernel-cache/bsp/arm-versatile-926ejs/arm-versatile-926ejs.cfg
@@ -85,7 +85,6 @@ CONFIG_TIMER_STATS=y
 
 # CONFIG_NO_HZ is not set
 # CONFIG_HIGH_RES_TIMERS is not set
-CONFIG_HPET_TIMER=y
 CONFIG_CPU_FREQ_GOV_ONDEMAND=y
 CONFIG_USB_SUSPEND=y
 CONFIG_SND_AC97_POWER_SAVE=y
diff --git a/meta/cfg/kernel-cache/bsp/common-pc-64/common-pc-64.cfg b/meta/cfg/kernel-cache/bsp/common-pc-64/common-pc-64.cfg
index deedd17..4914266 100644
--- a/meta/cfg/kernel-cache/bsp/common-pc-64/common-pc-64.cfg
+++ b/meta/cfg/kernel-cache/bsp/common-pc-64/common-pc-64.cfg
@@ -26,8 +26,6 @@ CONFIG_X86_CPUID=y
 CONFIG_SCHED_SMT=y
 CONFIG_NR_CPUS=24
 
-CONFIG_HPET_TIMER=y
-
 CONFIG_PM=y
 CONFIG_ACPI=y
 # CONFIG_ACPI_AC is not set
@@ -57,7 +55,6 @@ CONFIG_E1000=y
 
 CONFIG_RTC_CLASS=y
 CONFIG_RTC_DRV_CMOS=y
-CONFIG_HPET_EMULATE_RTC=y
 
 CONFIG_PARPORT=m
 CONFIG_PARPORT_PC=m
diff --git a/meta/cfg/kernel-cache/bsp/common-pc-64/common-pc-64.scc b/meta/cfg/kernel-cache/bsp/common-pc-64/common-pc-64.scc
index a468b71..e193206 100644
--- a/meta/cfg/kernel-cache/bsp/common-pc-64/common-pc-64.scc
+++ b/meta/cfg/kernel-cache/bsp/common-pc-64/common-pc-64.scc
@@ -1,5 +1,6 @@
 kconf hardware common-pc-64.cfg
 kconf hardware common-pc-64-graphics.cfg
 
+include features/hpet/hpet.scc
 include features/latencytop/latencytop.scc
 include features/profiling/profiling.scc
diff --git a/meta/cfg/kernel-cache/bsp/qemu-ppc32/qemu-ppc32.cfg b/meta/cfg/kernel-cache/bsp/qemu-ppc32/qemu-ppc32.cfg
index 311c622..950d87a 100644
--- a/meta/cfg/kernel-cache/bsp/qemu-ppc32/qemu-ppc32.cfg
+++ b/meta/cfg/kernel-cache/bsp/qemu-ppc32/qemu-ppc32.cfg
@@ -36,7 +36,6 @@ CONFIG_X86_UP_APIC=y
 CONFIG_X86_LOCAL_APIC=y
 
 CONFIG_TIMER_STATS=y
-CONFIG_HPET_TIMER=y
 CONFIG_CPU_FREQ_ONDEMAND=y
 CONFIG_USB_SUSPEND=y
 CONFIG_TIMER_STATS=y
-- 
1.7.0.4


