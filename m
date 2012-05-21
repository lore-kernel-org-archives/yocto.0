Return-Path: <kishore.k.bodke@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B3B02E0030B
	for <yocto@yoctoproject.org>; Mon, 21 May 2012 10:57:09 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 21 May 2012 10:57:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="169272205"
Received: from kishore-desktop.sc.intel.com (HELO localhost) ([143.183.188.90])
	by fmsmga002.fm.intel.com with ESMTP; 21 May 2012 10:57:08 -0700
From: kishore.k.bodke@intel.com
To: yocto@yoctoproject.org,
	tom.zanussi@intel.com
Date: Mon, 21 May 2012 10:55:52 -0700
Message-Id: <cover.1337621438.git.kishore.k.bodke@intel.com>
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
X-List-Received-Date: Mon, 21 May 2012 17:57:09 -0000

From: Kishore Bodke <kishore.k.bodke@intel.com>

Pointing to the latest version of PVR
Graphics drivers for the Cedartrail BSP.

Please pull into meta-intel/denzil

Thanks
Kishore.

The following changes since commit 7c1086df3f92d76ca1a062f9b4b1daf6823bfb63:

  emgd-driver-bin: skip insane ldflags check (2012-05-17 20:15:53 -0500)

are available in the git repository at:

  git://git.pokylinux.org/meta-intel-contrib kishore/cedartrail-pvrupdate
  http://git.pokylinux.org/cgit.cgi/meta-intel-contrib/log/?h=kishore/cedartrail-pvrupdate

Kishore Bodke (1):
  meta-cedartrail: Update PVR Graphics drivers.

 .../xorg-driver/cdv-pvr-driver.inc                 |   14 +++---
 .../xorg-driver/cdv-pvr-driver_1.0.bb              |   46 ++++++++++----------
 2 files changed, 28 insertions(+), 32 deletions(-)

-- 
1.7.9.5


