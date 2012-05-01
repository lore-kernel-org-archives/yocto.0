Return-Path: <dvhart@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0F53FE013DC
	for <yocto@yoctoproject.org>; Tue,  1 May 2012 15:13:26 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 01 May 2012 15:13:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="137625674"
Received: from unknown (HELO localhost) ([10.255.12.136])
	by azsmga001.ch.intel.com with ESMTP; 01 May 2012 15:13:25 -0700
From: Darren Hart <dvhart@linux.intel.com>
To: Yocto Project <yocto@yoctoproject.org>, Tom Zanussi <tom.zanussi@intel.com>
Date: Tue,  1 May 2012 15:12:46 -0700
Message-Id: <866d9b1b42ec7c5057077e5e74a739d164292b40.1335909082.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.7.6
In-Reply-To: <cover.1335909082.git.dvhart@linux.intel.com>
References: <cover.1335909082.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1335909082.git.dvhart@linux.intel.com>
References: <cover.1335909082.git.dvhart@linux.intel.com>
Subject: [PATCH 2/7] linux-firmware: Move fri2 linux-firmware append to common
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
X-List-Received-Date: Tue, 01 May 2012 22:13:26 -0000

In preparation for linux-firmware updates from new BSPs, move
the fri2 linux-firmware bbappend into meta-intel/common. Eventually
this should be moved into oe-core.

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
---
 .../linux-firmware/linux-firmware_git.bbappend     |    0
 1 files changed, 0 insertions(+), 0 deletions(-)
 rename {meta-fri2 => common}/recipes-kernel/linux-firmware/linux-firmware_git.bbappend (100%)

diff --git a/meta-fri2/recipes-kernel/linux-firmware/linux-firmware_git.bbappend b/common/recipes-kernel/linux-firmware/linux-firmware_git.bbappend
similarity index 100%
rename from meta-fri2/recipes-kernel/linux-firmware/linux-firmware_git.bbappend
rename to common/recipes-kernel/linux-firmware/linux-firmware_git.bbappend
-- 
1.7.7.6


