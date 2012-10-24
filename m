Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E276BE0127A
	for <yocto@yoctoproject.org>; Tue, 23 Oct 2012 21:31:02 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 23 Oct 2012 21:31:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,638,1344236400"; d="scan'208";a="209809658"
Received: from fear.jf.intel.com (HELO rage.local) ([10.7.201.160])
	by orsmga001.jf.intel.com with ESMTP; 23 Oct 2012 21:31:02 -0700
From: Darren Hart <dvhart@linux.intel.com>
To: Yocto Project <yocto@yoctoproject.org>
Date: Tue, 23 Oct 2012 21:31:16 -0700
Message-Id: <7c04daa734711e09a830b8585c29b36a875d88c3.1351053026.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.5.4
In-Reply-To: <18eb222d35f55fbf3cbd16afb6509ecffe30b7ca.1351053026.git.dvhart@linux.intel.com>
References: <18eb222d35f55fbf3cbd16afb6509ecffe30b7ca.1351053026.git.dvhart@linux.intel.com>
In-Reply-To: <18eb222d35f55fbf3cbd16afb6509ecffe30b7ca.1351053026.git.dvhart@linux.intel.com>
References: <18eb222d35f55fbf3cbd16afb6509ecffe30b7ca.1351053026.git.dvhart@linux.intel.com>
Cc: Darren Hart <dvhart@linux.intel.com>
Subject: [PATCH 2/3] fri2: README: Correct typographical and wording errors
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
X-List-Received-Date: Wed, 24 Oct 2012 04:31:03 -0000

Correct minor issues reported by Steve S.

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
Reported-by: Steve Sakoman <steve@sakoman.com>
---
 meta-fri2/README |    6 +++---
 1 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/meta-fri2/README b/meta-fri2/README
index a866174..05b7257 100644
--- a/meta-fri2/README
+++ b/meta-fri2/README
@@ -154,8 +154,8 @@ example:
 # eject /dev/sdf
 
 This should give you a bootable USB flash device.  Insert the device
-into a bootable USB socket on the target, and power on.  This should
-result in a system booted to the Sato graphical desktop.
+into one of the USB host ports on the target, and power on.  This
+should result in a system booted to the Sato graphical desktop.
 
 If you want a terminal, use the arrows at the top of the UI to move to
 different pages of available applications, one of which is named
@@ -242,7 +242,7 @@ e. GPIO
 -------
 The FRI2 has two I2C PCA555x GPIO devices used for internal control
 signals. These have not been exposed in the current release of the
-BSP, but may be in the future. Regardless, these do would not provide
+BSP, but may be in the future. Regardless, these would not provide
 general purpose IO with which to read or drive additional signals.
 
 f. MMC
-- 
1.7.5.4


