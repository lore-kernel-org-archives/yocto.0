Return-Path: <kishore.k.bodke@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6DA68E002AB
	for <yocto@yoctoproject.org>; Thu, 16 Aug 2012 11:49:51 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 16 Aug 2012 11:49:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.77,780,1336374000"; d="scan'208";a="181900807"
Received: from rsaxena-rosecity.sc.intel.com (HELO localhost)
	([143.183.188.83])
	by azsmga001.ch.intel.com with ESMTP; 16 Aug 2012 11:49:50 -0700
From: rahul.saxena@intel.com
To: yocto@yoctoproject.org, tom.zanussi@intel.com,
	bruce.ashfield@windriver.com, kishore.k.bodke@intel.com
Date: Thu, 16 Aug 2012 11:36:26 -0700
Message-Id: <cover.1345077384.git.rahul.saxena@intel.com>
X-Mailer: git-send-email 1.7.4.1
Subject: [PATCH 0/1][meta-intel] Cover letter to upgrade meta-cedartrail pvr driver to v1.0.2
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
X-List-Received-Date: Thu, 16 Aug 2012 18:49:51 -0000

From: Rahul Saxena <rahul.saxena@intel.com>

Cover letter to upgrade meta-cedartrail pvr driver to v1.0.2
    
This update of the driver enables support for B3 stepping of Cedarview
processor and also support for DP/eDP ports.
    
Signed-off-by: Rahul Saxena <rahul.saxena@intel.com>
--
The following changes since commit 2552a046878e4352595f6e081ad371538cceda10:

  meta-n450: explicitly specify KBRANCH we expect to use (2012-07-12 16:32:58 -0500)

are available in the git repository at:
  git://git.pokylinux.org/meta-intel-contrib denzelv102checkin15augOK
  http://git.pokylinux.org/cgit.cgi/meta-intel-contrib/log/?h=denzelv102checkin15augOK

Rahul Saxena (1):
  meta-cedartrail: update PVR graphics driver to version 1.0.2

 meta-cedartrail/README                             |    2 +-
 meta-cedartrail/conf/machine/cedartrail.conf       |    2 +-
 .../xorg-driver/cdv-pvr-driver.inc                 |   37 -----
 .../xorg-driver/cdv-pvr-driver_1.0.2.bb            |  143 ++++++++++++++++++++
 .../xorg-driver/cdv-pvr-driver_1.0.bb              |   99 --------------
 .../recipes-kernel/linux/linux-yocto_3.0.bbappend  |    6 +-
 6 files changed, 148 insertions(+), 141 deletions(-)
 delete mode 100644 meta-cedartrail/recipes-graphics/xorg-driver/cdv-pvr-driver.inc
 create mode 100644 meta-cedartrail/recipes-graphics/xorg-driver/cdv-pvr-driver_1.0.2.bb
 delete mode 100644 meta-cedartrail/recipes-graphics/xorg-driver/cdv-pvr-driver_1.0.bb

-- 
1.7.4.1


