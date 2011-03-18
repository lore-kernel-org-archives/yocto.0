Return-Path: <josh@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 01B094C80AB0
	for <yocto@yoctoproject.org>; Fri, 18 Mar 2011 08:43:48 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 18 Mar 2011 06:43:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,205,1299484800"; d="scan'208";a="668704380"
Received: from unknown (HELO localhost) ([10.255.16.25])
	by fmsmga002.fm.intel.com with ESMTP; 18 Mar 2011 06:43:47 -0700
Message-Id: <71249ae1f3c337db4c1394697488b6f6d34946fa.1300455727.git.josh@linux.intel.com>
In-Reply-To: <cover.1300455727.git.josh@linux.intel.com>
References: <cover.1300455727.git.josh@linux.intel.com>
Old-Date: Fri, 18 Mar 2011 13:27:07 +0000
Date: Fri, 18 Mar 2011 13:43:42 +0000
To: yocto@yoctoproject.org
CC: 
From: Joshua Lock <josh@linux.intel.com>
Subject: [PATCH 1/1] emenlow.conf: no need to set PACKAGE_EXTRA_ARCHS
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
X-List-Received-Date: Fri, 18 Mar 2011 13:43:49 -0000

From: Joshua Lock <josh@linux.intel.com>

x86 and core2 are added to this variable by the tune-atom.inc file

Signed-off-by: Joshua Lock <josh@linux.intel.com>
---
 meta-emenlow/conf/machine/emenlow.conf |    1 -
 1 files changed, 0 insertions(+), 1 deletions(-)

diff --git a/meta-emenlow/conf/machine/emenlow.conf b/meta-emenlow/conf/machine/emenlow.conf
index 78fec25..db98706 100644
--- a/meta-emenlow/conf/machine/emenlow.conf
+++ b/meta-emenlow/conf/machine/emenlow.conf
@@ -5,7 +5,6 @@
 # Webs-2120 box.
 
 TARGET_ARCH = "i586"
-PACKAGE_EXTRA_ARCHS = "x86 core2"
 
 include conf/machine/include/tune-atom.inc
 
-- 
1.7.4


