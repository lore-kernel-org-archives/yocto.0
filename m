Return-Path: <dvhart@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D0751E01409
	for <yocto@yoctoproject.org>; Tue,  1 May 2012 15:13:28 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 01 May 2012 15:13:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="137625688"
Received: from unknown (HELO localhost) ([10.255.12.136])
	by azsmga001.ch.intel.com with ESMTP; 01 May 2012 15:13:27 -0700
From: Darren Hart <dvhart@linux.intel.com>
To: Yocto Project <yocto@yoctoproject.org>, Tom Zanussi <tom.zanussi@intel.com>
Date: Tue,  1 May 2012 15:12:48 -0700
Message-Id: <e0890e71c4f1ef6c5acb64556c340ab5d0eaa753.1335909082.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.7.6
In-Reply-To: <cover.1335909082.git.dvhart@linux.intel.com>
References: <cover.1335909082.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1335909082.git.dvhart@linux.intel.com>
References: <cover.1335909082.git.dvhart@linux.intel.com>
Subject: [PATCH 4/7] sys940x: prefer xf86-input-evdev 2.6.0
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
X-List-Received-Date: Tue, 01 May 2012 22:13:29 -0000

Per the following commit, sys940x also uses emgd and requires the same
treatment.

    commit b612c79f600b7e904aeab37df5aaa3ca5d306b4d
    Author: Richard Purdie <richard.purdie@linuxfoundation.org>
    Date:   Wed Apr 25 21:15:06 2012 +0100

        common/meta-graphics: Add xf86-input-evdev 2.6.0

        This is needed by the pvr graphics stacks since newer versions won't build
	with the older xserver those platforms are using.

        Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
---
 meta-sys940x/conf/machine/sys940x.conf |    1 +
 1 files changed, 1 insertions(+), 0 deletions(-)

diff --git a/meta-sys940x/conf/machine/sys940x.conf b/meta-sys940x/conf/machine/sys940x.conf
index 2315564..7123653 100644
--- a/meta-sys940x/conf/machine/sys940x.conf
+++ b/meta-sys940x/conf/machine/sys940x.conf
@@ -17,6 +17,7 @@ XSERVER ?= "${XSERVER_IA32_BASE} \
 
 PREFERRED_VERSION_xserver-xorg ?= "1.9.3"
 PREFERRED_VERSION_mesa-dri ?= "7.11"
+PREFERRED_VERSION_xf86-input-evdev ?= "2.6.0"
 PREFERRED_VERSION_emgd-driver-bin ?= "1.8"
 
 SERIAL_CONSOLE = "115200 ttyS0"
-- 
1.7.7.6


