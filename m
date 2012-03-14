Return-Path: <darren@apps.dvhart.com>
Received: from mail-ey0-f176.google.com (mail-ey0-f176.google.com
	[209.85.215.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 15865E013BF
	for <yocto@yoctoproject.org>; Wed, 14 Mar 2012 13:05:05 -0700 (PDT)
Received: by mail-ey0-f176.google.com with SMTP id i1so1557484eaa.35
	for <yocto@yoctoproject.org>; Wed, 14 Mar 2012 13:05:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=sender:from:to:cc:subject:date:message-id:x-mailer:in-reply-to
	:references:in-reply-to:references:x-gm-message-state;
	bh=JYga0zk41eTnOvdDedFgx6W5rUnbK5TBU7hNr+0bhF4=;
	b=mCsuhrDGMwQAbLAyXyqQYPCWHK9ALa9Es35DVEaikSd0MEYX+sgbcqQkVeqPEgNHOg
	eNxOusswEpg/5v1mw1XBaB+/kVrDzH7TOdeagRhL7N3c2+unl54YC+453og+yPWvr97D
	KpH9p2OULs+2aVcWAvSpAE5a4s/e6ySjmFmnrNyBXMANQx98sXkl/tAp1vFcQdBfqbx7
	iNj1CX5tg2DIWSSYprh8C3PHCmz9UwLqyiR5DOmS/eDMnN3fDU3f4teE3UATg8dKb7wS
	BGrUkPDQiaUR4Sgacmv3XK1Lc9lTDAuP0JEKaYjMGcG9wX4avGccPYICiO33XVQS09//
	XzPw==
Received: by 10.50.217.137 with SMTP id oy9mr6878121igc.31.1331755504760;
	Wed, 14 Mar 2012 13:05:04 -0700 (PDT)
Received: from localhost (static-50-53-102-193.bvtn.or.frontiernet.net.
	[50.53.102.193])
	by mx.google.com with ESMTPS id hq3sm1017543igc.0.2012.03.14.13.05.03
	(version=TLSv1/SSLv3 cipher=OTHER);
	Wed, 14 Mar 2012 13:05:03 -0700 (PDT)
Sender: Darren Hart <darren@apps.dvhart.com>
From: Darren Hart <dvhart@linux.intel.com>
To: Yocto Project <yocto@yoctoproject.org>
Date: Wed, 14 Mar 2012 13:04:49 -0700
Message-Id: <d79c62bd6ecacd7953d5e509834b9c32f054fbec.1331755469.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.5.4
In-Reply-To: <1331755490-2148-1-git-send-email-dvhart@linux.intel.com>
References: <1331755490-2148-1-git-send-email-dvhart@linux.intel.com>
In-Reply-To: <20c253b945137412fbf82f09cb60958d2e544510.1331755469.git.dvhart@linux.intel.com>
References: <20c253b945137412fbf82f09cb60958d2e544510.1331755469.git.dvhart@linux.intel.com>
X-Gm-Message-State: ALoCoQn37XKPLLirBVB7ntHSBaH3DmURf/FkINUCnu49hIfDuemcyV1aiAkeOeaYnDxdOZ98KW5T
Cc: Darren Hart <dvhart@linux.intel.com>
Subject: [PATCH 3/4] fri2: Autoload module iwlwifi
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
X-List-Received-Date: Wed, 14 Mar 2012 20:05:06 -0000

iwlwifi uses a firmware blob that must exist on the FS at the time
the driver is loaded. If the driver is built-in, the blob must exist
in the initrd. We avoid this by building as a module, but we still
want this to load at boot - so add it to autoload.

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
---
 .../linux/linux-yocto-rt_3.0.bbappend              |    2 ++
 .../recipes-kernel/linux/linux-yocto_3.0.bbappend  |    2 ++
 2 files changed, 4 insertions(+), 0 deletions(-)

diff --git a/meta-fri2/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend b/meta-fri2/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
index 4563101..d3b4f81 100644
--- a/meta-fri2/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
+++ b/meta-fri2/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
@@ -7,3 +7,5 @@ KBRANCH_fri2 = "yocto/standard/preempt-rt/base"
 COMPATIBLE_MACHINE_fri2-noemgd = "fri2-noemgd"
 KMACHINE_fri2-noemgd = "fri2"
 KBRANCH_fri2-noemgd = "yocto/standard/preempt-rt/base"
+
+module_autoload_iwlwifi = "iwlwifi"
diff --git a/meta-fri2/recipes-kernel/linux/linux-yocto_3.0.bbappend b/meta-fri2/recipes-kernel/linux/linux-yocto_3.0.bbappend
index bacd6a5..e53991a 100644
--- a/meta-fri2/recipes-kernel/linux/linux-yocto_3.0.bbappend
+++ b/meta-fri2/recipes-kernel/linux/linux-yocto_3.0.bbappend
@@ -7,3 +7,5 @@ KBRANCH_fri2 = "yocto/standard/fri2"
 COMPATIBLE_MACHINE_fri2-noemgd = "fri2-noemgd"
 KMACHINE_fri2-noemgd = "fri2"
 KBRANCH_fri2-noemgd = "yocto/standard/fri2"
+
+module_autoload_iwlwifi = "iwlwifi"
-- 
1.7.5.4


