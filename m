Return-Path: <tom.zanussi@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7670B4C80A7A
	for <yocto@yoctoproject.org>; Fri, 27 May 2011 15:46:07 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 27 May 2011 13:46:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,282,1304319600"; d="scan'208";a="10112171"
Received: from unknown (HELO localhost) ([10.255.12.115])
	by fmsmga001.fm.intel.com with ESMTP; 27 May 2011 13:45:59 -0700
From: tom.zanussi@intel.com
To: bruce.ashfield@windriver.com, rahul.saxena@intel.com,
	kishore.k.bodke@intel.com, yocto@yoctoproject.org
Date: Fri, 27 May 2011 15:44:55 -0500
Message-Id: <ea461ebf3e667c1607afd57abfc0db226bd4033e.1306509168.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1306509168.git.tom.zanussi@intel.com>
References: <cover.1306509168.git.tom.zanussi@intel.com>
Subject: [PATCH 01/14][KERNEL] meta: add hpet feature
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

Add a general-purpose feature for turning on common HPET options, such
as basic HPET support and the hpet device w/mmap support.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta/cfg/kernel-cache/features/hpet/hpet.cfg |    6 ++++++
 meta/cfg/kernel-cache/features/hpet/hpet.scc |    1 +
 2 files changed, 7 insertions(+), 0 deletions(-)
 create mode 100644 meta/cfg/kernel-cache/features/hpet/hpet.cfg
 create mode 100644 meta/cfg/kernel-cache/features/hpet/hpet.scc

diff --git a/meta/cfg/kernel-cache/features/hpet/hpet.cfg b/meta/cfg/kernel-cache/features/hpet/hpet.cfg
new file mode 100644
index 0000000..2ae1555
--- /dev/null
+++ b/meta/cfg/kernel-cache/features/hpet/hpet.cfg
@@ -0,0 +1,6 @@
+CONFIG_HPET_TIMER=y
+CONFIG_HPET_EMULATE_RTC=y
+
+# enable /dev/hpet and allow it to be mmapped
+CONFIG_HPET=y
+CONFIG_HPET_MMAP=y
diff --git a/meta/cfg/kernel-cache/features/hpet/hpet.scc b/meta/cfg/kernel-cache/features/hpet/hpet.scc
new file mode 100644
index 0000000..1727606
--- /dev/null
+++ b/meta/cfg/kernel-cache/features/hpet/hpet.scc
@@ -0,0 +1 @@
+kconf non-hardware hpet.cfg
-- 
1.7.0.4


