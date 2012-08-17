Return-Path: <mihaix.lindner@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8211AE00283
	for <yocto@yoctoproject.org>; Fri, 17 Aug 2012 08:53:45 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 17 Aug 2012 08:53:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.77,785,1336374000"; d="scan'208";a="182037068"
Received: from linux.jf.intel.com (HELO linux.intel.com) ([10.23.232.205])
	by orsmga001.jf.intel.com with ESMTP; 17 Aug 2012 08:53:45 -0700
Received: from moolinex.rb.intel.com (qa.rb.intel.com [10.237.100.11])
	by linux.intel.com (Postfix) with ESMTP id 330982C8001;
	Fri, 17 Aug 2012 08:53:44 -0700 (PDT)
From: Mihai Lindner <mihaix.lindner@linux.intel.com>
To: yocto@yoctoproject.org,
	kishore.k.bodke@intel.com
Date: Fri, 17 Aug 2012 18:53:34 +0300
Message-Id: <43dcdb1922fe530749e6050df3a77bc95ba49620.1345218399.git.mihaix.lindner@linux.intel.com>
X-Mailer: git-send-email 1.7.8.6
In-Reply-To: <cover.1345218399.git.mihaix.lindner@linux.intel.com>
References: <cover.1345218399.git.mihaix.lindner@linux.intel.com>
In-Reply-To: <cover.1345218399.git.mihaix.lindner@linux.intel.com>
References: <cover.1345218399.git.mihaix.lindner@linux.intel.com>
Subject: [PATCH 1/1] meta-cedartrail: fixed PREFERRED_VERSION_linux-yocto
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
X-List-Received-Date: Fri, 17 Aug 2012 15:53:45 -0000

Missing PREFERRED_VERSION_linux-yocto generated NOTEs when building.
"""
NOTE: preferred version 3.4% of linux-yocto not available (for item
virtual/kernel)
"""

[YOCTO #2962]

Signed-off-by: Mihai Lindner <mihaix.lindner@linux.intel.com>
---
 meta-cedartrail/conf/machine/cedartrail.conf |    1 +
 1 files changed, 1 insertions(+), 0 deletions(-)

diff --git a/meta-cedartrail/conf/machine/cedartrail.conf b/meta-cedartrail/conf/machine/cedartrail.conf
index dbd7d95..d6e7a57 100644
--- a/meta-cedartrail/conf/machine/cedartrail.conf
+++ b/meta-cedartrail/conf/machine/cedartrail.conf
@@ -13,6 +13,7 @@ XSERVER ?= "${XSERVER_IA32_BASE} \
            ${XSERVER_IA32_EXT} \
            cdv-pvr-driver \
            "
+PREFERRED_VERSION_linux-yocto ?= "3.0%"
 PREFERRED_VERSION_xserver-xorg ?= "1.9.3"
 PREFERRED_VERSION_mesa-dri ?= "7.11"
 PREFERRED_VERSION_xf86-input-evdev ?= "2.6.0"
-- 
1.7.8.6


