Return-Path: <dvhart@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1871FE0072B
	for <yocto@yoctoproject.org>; Wed,  7 Dec 2011 11:19:16 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 07 Dec 2011 11:19:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="99757827"
Received: from unknown (HELO localhost) ([10.255.12.239])
	by fmsmga002.fm.intel.com with ESMTP; 07 Dec 2011 11:19:15 -0800
From: Darren Hart <darren@dvhart.com>
To: yocto@yoctoproject.org, Bruce Ashfield <bruce.ashfield@windriver.com>,
	Tom Zanussi <tom.zanussi@intel.com>
Date: Wed,  7 Dec 2011 11:19:07 -0800
Message-Id: <c821c5590ed82fa31718a2093a100c307f6beb85.1323285225.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.6.4
In-Reply-To: <cover.1323285225.git.dvhart@linux.intel.com>
References: <cover.1323285225.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1323285225.git.dvhart@linux.intel.com>
References: <cover.1323285225.git.dvhart@linux.intel.com>
Subject: [PATCH 1/3] x86/rtc: Don't recursively acquire rtc_lock
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
X-List-Received-Date: Wed, 07 Dec 2011 19:19:16 -0000

From: Matt Fleming <matt.fleming@intel.com>

A deadlock was introduced on x86 in commit ef68c8f87ed1 ("x86:
Serialize EFI time accesses on rtc_lock") because efi_get_time()
and friends can be called with rtc_lock already held by
read_persistent_time(), e.g.:

 timekeeping_init()
    read_persistent_clock()     <-- acquire rtc_lock
        efi_get_time()
            phys_efi_get_time() <-- acquire rtc_lock <DEADLOCK>

To fix this let's push the locking down into the get_wallclock()
and set_wallclock() implementations.  Only the clock
implementations that access the x86 RTC directly need to acquire
rtc_lock, so it makes sense to push the locking down into the
rtc, vrtc and efi code.

The virtualization implementations don't require rtc_lock to be
held because they provide their own serialization.

Signed-off-by: Matt Fleming <matt.fleming@intel.com>
Acked-by: Jan Beulich <jbeulich@novell.com>
Acked-by: Avi Kivity <avi@redhat.com> [for the virtualization aspect]
Cc: "H. Peter Anvin" <hpa@zytor.com>
Cc: Zhang Rui <rui.zhang@intel.com>
Cc: Josh Boyer <jwboyer@gmail.com>
Signed-off-by: Andrew Morton <akpm@linux-foundation.org>
Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
Signed-off-by: Ingo Molnar <mingo@elte.hu>
Integrated-by: Darren Hart <dvhart@linux.intel.com>
---
 arch/x86/kernel/rtc.c         |   23 ++++++++++++-----------
 arch/x86/platform/mrst/vrtc.c |    9 +++++++++
 2 files changed, 21 insertions(+), 11 deletions(-)

diff --git a/arch/x86/kernel/rtc.c b/arch/x86/kernel/rtc.c
index 3f2ad26..ccdbc16 100644
--- a/arch/x86/kernel/rtc.c
+++ b/arch/x86/kernel/rtc.c
@@ -42,8 +42,11 @@ int mach_set_rtc_mmss(unsigned long nowtime)
 {
 	int real_seconds, real_minutes, cmos_minutes;
 	unsigned char save_control, save_freq_select;
+	unsigned long flags;
 	int retval = 0;
 
+	spin_lock_irqsave(&rtc_lock, flags);
+
 	 /* tell the clock it's being set */
 	save_control = CMOS_READ(RTC_CONTROL);
 	CMOS_WRITE((save_control|RTC_SET), RTC_CONTROL);
@@ -93,12 +96,17 @@ int mach_set_rtc_mmss(unsigned long nowtime)
 	CMOS_WRITE(save_control, RTC_CONTROL);
 	CMOS_WRITE(save_freq_select, RTC_FREQ_SELECT);
 
+	spin_unlock_irqrestore(&rtc_lock, flags);
+
 	return retval;
 }
 
 unsigned long mach_get_cmos_time(void)
 {
 	unsigned int status, year, mon, day, hour, min, sec, century = 0;
+	unsigned long flags;
+
+	spin_lock_irqsave(&rtc_lock, flags);
 
 	/*
 	 * If UIP is clear, then we have >= 244 microseconds before
@@ -125,6 +133,8 @@ unsigned long mach_get_cmos_time(void)
 	status = CMOS_READ(RTC_CONTROL);
 	WARN_ON_ONCE(RTC_ALWAYS_BCD && (status & RTC_DM_BINARY));
 
+	spin_unlock_irqrestore(&rtc_lock, flags);
+
 	if (RTC_ALWAYS_BCD || !(status & RTC_DM_BINARY)) {
 		sec = bcd2bin(sec);
 		min = bcd2bin(min);
@@ -169,24 +179,15 @@ EXPORT_SYMBOL(rtc_cmos_write);
 
 int update_persistent_clock(struct timespec now)
 {
-	unsigned long flags;
-	int retval;
-
-	spin_lock_irqsave(&rtc_lock, flags);
-	retval = x86_platform.set_wallclock(now.tv_sec);
-	spin_unlock_irqrestore(&rtc_lock, flags);
-
-	return retval;
+	return x86_platform.set_wallclock(now.tv_sec);
 }
 
 /* not static: needed by APM */
 void read_persistent_clock(struct timespec *ts)
 {
-	unsigned long retval, flags;
+	unsigned long retval;
 
-	spin_lock_irqsave(&rtc_lock, flags);
 	retval = x86_platform.get_wallclock();
-	spin_unlock_irqrestore(&rtc_lock, flags);
 
 	ts->tv_sec = retval;
 	ts->tv_nsec = 0;
diff --git a/arch/x86/platform/mrst/vrtc.c b/arch/x86/platform/mrst/vrtc.c
index 73d70d6..6d5dbcd 100644
--- a/arch/x86/platform/mrst/vrtc.c
+++ b/arch/x86/platform/mrst/vrtc.c
@@ -58,8 +58,11 @@ EXPORT_SYMBOL_GPL(vrtc_cmos_write);
 unsigned long vrtc_get_time(void)
 {
 	u8 sec, min, hour, mday, mon;
+	unsigned long flags;
 	u32 year;
 
+	spin_lock_irqsave(&rtc_lock, flags);
+
 	while ((vrtc_cmos_read(RTC_FREQ_SELECT) & RTC_UIP))
 		cpu_relax();
 
@@ -70,6 +73,8 @@ unsigned long vrtc_get_time(void)
 	mon = vrtc_cmos_read(RTC_MONTH);
 	year = vrtc_cmos_read(RTC_YEAR);
 
+	spin_unlock_irqrestore(&rtc_lock, flags);
+
 	/* vRTC YEAR reg contains the offset to 1960 */
 	year += 1960;
 
@@ -83,8 +88,10 @@ unsigned long vrtc_get_time(void)
 int vrtc_set_mmss(unsigned long nowtime)
 {
 	int real_sec, real_min;
+	unsigned long flags;
 	int vrtc_min;
 
+	spin_lock_irqsave(&rtc_lock, flags);
 	vrtc_min = vrtc_cmos_read(RTC_MINUTES);
 
 	real_sec = nowtime % 60;
@@ -95,6 +102,8 @@ int vrtc_set_mmss(unsigned long nowtime)
 
 	vrtc_cmos_write(real_sec, RTC_SECONDS);
 	vrtc_cmos_write(real_min, RTC_MINUTES);
+	spin_unlock_irqrestore(&rtc_lock, flags);
+
 	return 0;
 }
 
-- 
1.7.6.4


