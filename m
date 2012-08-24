Return-Path: <kishore.k.bodke@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 692FFE0027E
	for <yocto@yoctoproject.org>; Fri, 24 Aug 2012 16:24:51 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 24 Aug 2012 16:24:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,307,1344236400"; d="scan'208";a="184680627"
Received: from rsaxena-rosecity.sc.intel.com (HELO localhost)
	([143.183.188.83])
	by azsmga001.ch.intel.com with ESMTP; 24 Aug 2012 16:24:50 -0700
From: rahul.saxena@intel.com
To: yocto@yoctoproject.org,
	tom.zanussi@intel.com,
	dvhart@linux.intel.com
Date: Fri, 24 Aug 2012 16:10:56 -0700
Message-Id: <cover.1345849179.git.rahul.saxena@intel.com>
X-Mailer: git-send-email 1.7.4.1
Subject: [PATCH 0/2][meta-intel] Cover letter to update pvr driver to v1.0.2 in meta-cedartral, denzil branch
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
X-List-Received-Date: Fri, 24 Aug 2012 23:24:51 -0000

From: Rahul Saxena <rahul.saxena@intel.com>

Cover letter to update pvr driver to v1.0.2 in meta-cedartrail.

This update of the driver supports B3 stepping of the Cedarview processor
and also supports DP/eDP ports.

Please update denzil branch with this patch series.

Signed-off-by: Rahul Saxena <rahul.saxena@intel.com>

--
The following changes since commit ff7fdafba88a5b7676f601b3d16a97ce7d48c4a9:

  crownbay: make v3.4 the default kernel (2012-07-31 23:08:05 -0500)

are available in the git repository at:
  git://git.pokylinux.org/meta-intel-contrib rsaxena_1_3_M3
  http://git.pokylinux.org/cgit.cgi/meta-intel-contrib/log/?h=rsaxena_1_3_M3

Rahul Saxena (2):
  meta-cedartrail: Update SRCREV for the linux-yocto kernel pvr branch
  meta-cedartrail: Update PVR graphics driver to version 1.0.2

 meta-cedartrail/README                             |    2 +-
 .../xorg-driver/cdv-pvr-driver.inc                 |   37 -----
 .../xorg-driver/cdv-pvr-driver_1.0.2.bb            |  143 ++++++++++++++++++++
 .../xorg-driver/cdv-pvr-driver_1.0.bb              |   99 --------------
 .../recipes-kernel/linux/linux-yocto_3.0.bbappend  |    2 +-
 5 files changed, 145 insertions(+), 138 deletions(-)
 delete mode 100644 meta-cedartrail/recipes-graphics/xorg-driver/cdv-pvr-driver.inc
 create mode 100644 meta-cedartrail/recipes-graphics/xorg-driver/cdv-pvr-driver_1.0.2.bb
 delete mode 100644 meta-cedartrail/recipes-graphics/xorg-driver/cdv-pvr-driver_1.0.bb

-- 
1.7.4.1


