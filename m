Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4024DE013A0
	for <yocto@yoctoproject.org>; Tue, 25 Oct 2011 12:18:15 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 25 Oct 2011 12:18:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.69,405,1315206000"; d="scan'208";a="81916852"
Received: from unknown (HELO localhost) ([10.255.15.57])
	by fmsmga002.fm.intel.com with ESMTP; 25 Oct 2011 12:18:14 -0700
From: tom.zanussi@intel.com
To: bruce.ashfield@windriver.com,
	yocto@yoctoproject.org
Date: Tue, 25 Oct 2011 14:17:36 -0500
Message-Id: <e5bd0dd3266789e6e107f2b41f0d03e4e2054ce6.1319552233.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1319552233.git.tom.zanussi@intel.com>
References: <cover.1319552233.git.tom.zanussi@intel.com>
Subject: [PATCH 1/4][KERNEL] meta: add power feature
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
X-List-Received-Date: Tue, 25 Oct 2011 19:18:15 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Add a 'power feature' that collects power-friendly config options and
populate an initial intel-specific set.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta/cfg/kernel-cache/features/power/intel.cfg |   28 ++++++++++++++++++++++++
 meta/cfg/kernel-cache/features/power/intel.scc |    1 +
 2 files changed, 29 insertions(+), 0 deletions(-)
 create mode 100644 meta/cfg/kernel-cache/features/power/intel.cfg
 create mode 100644 meta/cfg/kernel-cache/features/power/intel.scc

diff --git a/meta/cfg/kernel-cache/features/power/intel.cfg b/meta/cfg/kernel-cache/features/power/intel.cfg
new file mode 100644
index 0000000..3ba7415
--- /dev/null
+++ b/meta/cfg/kernel-cache/features/power/intel.cfg
@@ -0,0 +1,28 @@
+# use the native intel cpuidle driver for recent Intel processors
+CONFIG_INTEL_IDLE=y
+
+# cut out the top source of unnecessary wakeups
+CONFIG_NO_HZ=y
+
+# enable apps to cut down on polling
+CONFIG_INOTIFY_USER=y
+
+# enable cpu frequency scaling and stats for powertop
+CONFIG_CPU_FREQ=y
+CONFIG_CPU_FREQ_STAT=y
+CONFIG_CPU_FREQ_TABLE=y
+CONFIG_X86_ACPI_CPUFREQ=y
+CONFIG_CPU_FREQ_GOV_ONDEMAND=y
+CONFIG_CPU_FREQ_GOV_PERFORMANCE=y
+CONFIG_CPU_FREQ_DEFAULT_GOV_ONDEMAND=y
+
+# enable power management debugging for tools like powertop
+CONFIG_PM_DEBUG=y
+CONFIG_PM_ADVANCED_DEBUG=y
+CONFIG_CAN_PM_TRACE=y
+
+# turn on run-time power management
+CONFIG_PM_RUNTIME=y
+
+# allow usb runtime power management
+CONFIG_USB_SUSPEND=y
diff --git a/meta/cfg/kernel-cache/features/power/intel.scc b/meta/cfg/kernel-cache/features/power/intel.scc
new file mode 100644
index 0000000..99ff880
--- /dev/null
+++ b/meta/cfg/kernel-cache/features/power/intel.scc
@@ -0,0 +1 @@
+kconf non-hardware intel.cfg
-- 
1.7.0.4


