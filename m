Return-Path: <darren@apps.dvhart.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1A6E6E013E4
	for <yocto@yoctoproject.org>; Sat, 31 Mar 2012 07:45:02 -0700 (PDT)
Received: by mail-pb0-f48.google.com with SMTP id jt11so3527025pbb.35
	for <yocto@yoctoproject.org>; Sat, 31 Mar 2012 07:45:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=sender:from:to:subject:date:message-id:x-mailer:in-reply-to
	:references:in-reply-to:references:x-gm-message-state;
	bh=f56ZlfGDjw4vg2zVZcV0TNgTrPI3N9HXvAafM8BXd7s=;
	b=FVuWA13fGKG2+Bo5u2z9nmAnQp/FlZOQYbU9Dl+vZ87FvWWRqrI/Ru8dR4etApbcEA
	D77tEekaXPhOBnihxZcc+NlORxI0Vg8e9T4ccj+gFCTJtuqnFClMiKRvmKCfSinfHVp/
	MTJkS8mET53MZZI7YM6a+pVCpEV+mi2QrDT+/X4x5SRH7+3ssT1qjsvUsm9bp3fScl9/
	6fsvpLmpqPpPyDeYw3Sq9IULD76b9rf9GuSEzSdTPwnD+3eYYsf3gRURU29DOLowBKhj
	pB5V9/LphCFFpiYxhKMY6w63tdrigH2pNo7L8t+y9AefS8aqXO4rSDfq67EapjK6ExjH
	11bg==
Received: by 10.68.136.162 with SMTP id qb2mr6268927pbb.67.1333205102030;
	Sat, 31 Mar 2012 07:45:02 -0700 (PDT)
Received: from localhost (static-50-53-99-101.bvtn.or.frontiernet.net.
	[50.53.99.101])
	by mx.google.com with ESMTPS id l4sm9821751pbl.27.2012.03.31.07.45.00
	(version=TLSv1/SSLv3 cipher=OTHER);
	Sat, 31 Mar 2012 07:45:01 -0700 (PDT)
Sender: Darren Hart <darren@apps.dvhart.com>
From: Darren Hart <dvhart@linux.intel.com>
To: Yocto Project <yocto@yoctoproject.org>,
	Bruce Ashfield <bruce.ashfield@windriver.com>,
	Tom Zanussi <tom.zanussi@intel.com>
Date: Sat, 31 Mar 2012 07:44:45 -0700
Message-Id: <2d5c8c0f13b1cb38fe073ff81d22d5e38fd4c174.1333204567.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.5.4
In-Reply-To: <cover.1333204567.git.dvhart@linux.intel.com>
References: <cover.1333204567.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1333204567.git.dvhart@linux.intel.com>
References: <cover.1333204567.git.dvhart@linux.intel.com>
X-Gm-Message-State: ALoCoQm8dalvujy3a53SIEy6MDBa7RVDnCaGuCdQrEhACA9DdX4Cave0cCRHEgRx5mqea5Ybf99t
Subject: [PATCH 3/3] meta: Add common-pc-tiny.scc
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
X-List-Received-Date: Sat, 31 Mar 2012 14:45:02 -0000

Create the MACHINE-KTYPE description file for common-pc and tiny. This is
used by the qemux86 machine for the linux-yocto-tiny kernel recipe. Add
the common-pc hardware config, but not all the features included by the
common-pc-standard.scc file.

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
---
 .../kernel-cache/bsp/common-pc/common-pc-tiny.scc  |   12 ++++++++++++
 1 files changed, 12 insertions(+), 0 deletions(-)
 create mode 100644 meta/cfg/kernel-cache/bsp/common-pc/common-pc-tiny.scc

diff --git a/meta/cfg/kernel-cache/bsp/common-pc/common-pc-tiny.scc b/meta/cfg/kernel-cache/bsp/common-pc/common-pc-tiny.scc
new file mode 100644
index 0000000..8d7a498
--- /dev/null
+++ b/meta/cfg/kernel-cache/bsp/common-pc/common-pc-tiny.scc
@@ -0,0 +1,12 @@
+define KMACHINE common-pc
+define KTYPE tiny
+define KARCH i386
+
+include ktypes/tiny
+branch common-pc
+
+# Don't include common-pc.scc directly,
+# it pulls in too many non-hardware options
+kconf hardware common-pc.cfg
+kconf hardware common-pc-gfx.cfg
+
-- 
1.7.5.4


