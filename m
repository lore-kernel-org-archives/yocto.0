Return-Path: <darren@apps.dvhart.com>
Received: from mail-ey0-f176.google.com (mail-ey0-f176.google.com
	[209.85.215.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 98EE7E0137C
	for <yocto@yoctoproject.org>; Wed, 14 Mar 2012 13:05:03 -0700 (PDT)
Received: by eaai1 with SMTP id i1so1557484eaa.35
	for <yocto@yoctoproject.org>; Wed, 14 Mar 2012 13:05:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=sender:from:to:cc:subject:date:message-id:x-mailer:in-reply-to
	:references:in-reply-to:references:x-gm-message-state;
	bh=oQb3nidQW+RULbGF04+QZw3EaMfGl1x7yEVjRmldGl0=;
	b=km36Jat9Egy+G4dIRVm6aolL/3FHA0xNFvLsz6fF1+p4itZYcJj7jZdAbesgdR3YFr
	vxgzvQaYWp7KUq/KDMv95yUERsZW9dRBHcEGzV3Zvg9LvFC696maRcQjT71YMtcV3mG+
	dR6CCH3PYuktDnOsoP736OOKd2KcQAbByQ8dx3dd2LldPgrbcNXDGQZdPZFgTIbd56Zp
	fRxJYu761ziM5lUi/ZxqX5nSZujWP5IrfY1gxX2tqtZhKlwVAasgiQrvuAdALk0YG/5Z
	KJDsgmjZS9vZ7xWhXAJWWPjS13JH4GbUWyhz+8L7MIQuwX1lJ1/s2TxCOmtVWeE5lnoa
	LA/w==
Received: by 10.50.180.135 with SMTP id do7mr6628557igc.56.1331755501542;
	Wed, 14 Mar 2012 13:05:01 -0700 (PDT)
Received: from localhost (static-50-53-102-193.bvtn.or.frontiernet.net.
	[50.53.102.193])
	by mx.google.com with ESMTPS id vr4sm10870363igb.1.2012.03.14.13.04.59
	(version=TLSv1/SSLv3 cipher=OTHER);
	Wed, 14 Mar 2012 13:05:00 -0700 (PDT)
Sender: Darren Hart <darren@apps.dvhart.com>
From: Darren Hart <dvhart@linux.intel.com>
To: Yocto Project <yocto@yoctoproject.org>
Date: Wed, 14 Mar 2012 13:04:48 -0700
Message-Id: <efbd3052de8b61b3a34dbfe7b336ab15e08b9166.1331755469.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.5.4
In-Reply-To: <1331755490-2148-1-git-send-email-dvhart@linux.intel.com>
References: <1331755490-2148-1-git-send-email-dvhart@linux.intel.com>
In-Reply-To: <20c253b945137412fbf82f09cb60958d2e544510.1331755469.git.dvhart@linux.intel.com>
References: <20c253b945137412fbf82f09cb60958d2e544510.1331755469.git.dvhart@linux.intel.com>
X-Gm-Message-State: ALoCoQnOQwXaLgZeBc761rEwUClPYaoYkLYJYq31W1o+/ACXNcXic4P+tFlS/Frude692bre3fdx
Cc: Darren Hart <dvhart@linux.intel.com>
Subject: [PATCH 2/4] fri2: Update KMACHINE and KBRANCH variables
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
X-List-Received-Date: Wed, 14 Mar 2012 20:05:04 -0000

Specify only the machine itself in KMACHINE and set the branch
explicitly. Use an fri2 specific branch in non-rt while we sort
out whether or not to create these dynamically or not.

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
---
 .../linux/linux-yocto-rt_3.0.bbappend              |    9 ++++-----
 .../recipes-kernel/linux/linux-yocto_3.0.bbappend  |   14 ++++----------
 2 files changed, 8 insertions(+), 15 deletions(-)

diff --git a/meta-fri2/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend b/meta-fri2/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
index 3af5891..4563101 100644
--- a/meta-fri2/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
+++ b/meta-fri2/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
@@ -1,10 +1,9 @@
 FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
+
 COMPATIBLE_MACHINE_fri2 = "fri2"
 KMACHINE_fri2 = "fri2"
+KBRANCH_fri2 = "yocto/standard/preempt-rt/base"
+
 COMPATIBLE_MACHINE_fri2-noemgd = "fri2-noemgd"
 KMACHINE_fri2-noemgd = "fri2"
-
-# Update the following to use a different BSP branch or meta SRCREV
-#KBRANCH_fri2 = "yocto/standard/preempt-rt/base"
-#SRCREV_machine_pn-linux-yocto-rt_fri2 ?= XXXX
-#SRCREV_meta_pn-linux-yocto-rt_fri2 ?= XXXX
+KBRANCH_fri2-noemgd = "yocto/standard/preempt-rt/base"
diff --git a/meta-fri2/recipes-kernel/linux/linux-yocto_3.0.bbappend b/meta-fri2/recipes-kernel/linux/linux-yocto_3.0.bbappend
index 205370e..bacd6a5 100644
--- a/meta-fri2/recipes-kernel/linux/linux-yocto_3.0.bbappend
+++ b/meta-fri2/recipes-kernel/linux/linux-yocto_3.0.bbappend
@@ -1,15 +1,9 @@
 FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
 
 COMPATIBLE_MACHINE_fri2 = "fri2"
-KMACHINE_fri2  = "yocto/standard/fri2"
-KERNEL_FEATURES_append_fri2 += " cfg/smp.scc cfg/efi-ext.scc"
+KMACHINE_fri2 = "fri2"
+KBRANCH_fri2 = "yocto/standard/fri2"
 
 COMPATIBLE_MACHINE_fri2-noemgd = "fri2-noemgd"
-KMACHINE_fri2-noemgd  = "yocto/standard/fri2"
-KERNEL_FEATURES_append_fri2-noemgd += " cfg/smp.scc cfg/efi-ext.scc"
-
-SRCREV_machine_pn-linux-yocto_fri2 ?= "16a35563a2a5cb3debc9d0666cbdc3b8d5d43b74"
-SRCREV_meta_pn-linux-yocto_fri2 ?= "59314a3523e360796419d76d78c6f7d8c5ef2593"
-
-SRCREV_machine_pn-linux-yocto_fri2-noemgd ?= "16a35563a2a5cb3debc9d0666cbdc3b8d5d43b74"
-SRCREV_meta_pn-linux-yocto_fri2-noemgd ?= "59314a3523e360796419d76d78c6f7d8c5ef2593"
+KMACHINE_fri2-noemgd = "fri2"
+KBRANCH_fri2-noemgd = "yocto/standard/fri2"
-- 
1.7.5.4


