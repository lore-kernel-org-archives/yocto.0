Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C8ECFE006CA
	for <yocto@yoctoproject.org>; Tue, 13 Sep 2011 12:33:32 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 13 Sep 2011 12:33:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="47973320"
Received: from unknown (HELO envy.home) ([10.255.14.152])
	by orsmga001.jf.intel.com with ESMTP; 13 Sep 2011 12:33:32 -0700
Message-ID: <4E6FB00C.2070200@linux.intel.com>
Date: Tue, 13 Sep 2011 12:33:32 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:6.0) Gecko/20110816 Thunderbird/6.0
MIME-Version: 1.0
To: Yocto Project <yocto@yoctoproject.org>
Subject: [PATCH][linux-yocto] preempt-rt/base: correct 3.0.3->3.0.4 mismerge for, stop_machine.c
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
X-List-Received-Date: Thu, 15 Sep 2011 03:50:27 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Commit 0b805cce57f61a244eb3b8fce460b14f1be442b3 dropped a change making
stop_cpus_mutex non-static, resulting in a build failure for 3.0.4-rt
kernels.

Restore the move to non-static from commit
6857336c7fddaf460a13adc0c395698fcf9423ff.

Reported-by: Kishore Bodke <kishore.k.bodke@intel.com>
Signed-off-by: Darren Hart <dvhart@linux.intel.com>
CC: Bruce Ashfield <bruce.ashfield@windriver.com>
---
 kernel/stop_machine.c |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/kernel/stop_machine.c b/kernel/stop_machine.c
index c54d0fa..d6b3ac2 100644
--- a/kernel/stop_machine.c
+++ b/kernel/stop_machine.c
@@ -150,8 +150,8 @@ void stop_one_cpu_nowait(unsigned int cpu, cpu_stop_fn_t fn, void *arg,
 	cpu_stop_queue_work(&per_cpu(cpu_stopper, cpu), work_buf);
 }
 
+DEFINE_MUTEX(stop_cpus_mutex);
 /* static data for stop_cpus */
-static DEFINE_MUTEX(stop_cpus_mutex);
 static DEFINE_MUTEX(stopper_lock);
 static DEFINE_PER_CPU(struct cpu_stop_work, stop_cpus_work);
 
-- 
1.7.6
-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

