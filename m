Return-Path: <kishore.k.bodke@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5FE5DE0142D
	for <yocto@yoctoproject.org>; Fri, 18 May 2012 14:53:35 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 18 May 2012 14:53:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="142226630"
Received: from kishore-desktop.sc.intel.com (HELO localhost) ([143.183.188.90])
	by orsmga001.jf.intel.com with ESMTP; 18 May 2012 14:53:30 -0700
From: kishore.k.bodke@intel.com
To: yocto@yoctoproject.org,
	tom.zanussi@intel.com
Date: Fri, 18 May 2012 14:52:08 -0700
Message-Id: <cover.1337377724.git.kishore.k.bodke@intel.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [PATCH 0/1] [meta-intel] Update PVR Graphics drivers.
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
X-List-Received-Date: Fri, 18 May 2012 21:53:35 -0000

From: Kishore Bodke <kishore.k.bodke@intel.com>

Pointing to the latest version of PVR
Graphics drivers for the Cedartrail BSP.

Please pull into meta-intel/denzil

Thanks
Kishore.

The following changes since commit 7c1086df3f92d76ca1a062f9b4b1daf6823bfb63:

  emgd-driver-bin: skip insane ldflags check (2012-05-17 20:15:53 -0500)

are available in the git repository at:

  git://git.yoctoproject.org/meta-intel-contrib kishore/meta-cedartrail
  http://git.yoctoproject.org/cgit.cgi/meta-intel-contrib/log/?h=kishore/meta-cedartrail

Kishore Bodke (1):
  meta-cedartrail: Update PVR Graphics drivers.

 .../xorg-driver/cdv-pvr-driver.inc                 |   12 +++---
 .../xorg-driver/cdv-pvr-driver_1.0.bb              |   44 ++++++++++----------
 2 files changed, 26 insertions(+), 30 deletions(-)

-- 
1.7.9.5


