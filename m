Return-Path: <kishore.k.bodke@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B729EE0027E
	for <yocto@yoctoproject.org>; Mon, 20 Aug 2012 15:06:26 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 20 Aug 2012 15:06:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.77,799,1336374000"; d="scan'208";a="211314040"
Received: from rsaxena-rosecity.sc.intel.com (HELO localhost)
	([143.183.188.83])
	by fmsmga002.fm.intel.com with ESMTP; 20 Aug 2012 15:06:19 -0700
From: rahul.saxena@intel.com
To: yocto@yoctoproject.org,
	dvhart@linux.intel.com,
	tom.zanussi@intel.com
Date: Mon, 20 Aug 2012 14:52:39 -0700
Message-Id: <cover.1345497883.git.rahul.saxena@intel.com>
X-Mailer: git-send-email 1.7.4.1
Subject: [PATCH 0/3][meta-intel] Cover letter to update pvr driver to v1.0.2 in meta-cedartrail
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
X-List-Received-Date: Mon, 20 Aug 2012 22:06:26 -0000

From: Rahul Saxena <rahul.saxena@intel.com>

Cover letter to update pvr driver to v1.0.2 in meta-cedartrail

This update of the driver supports B3 stepping of the Cedarview processor and also
supports DP/eDP ports.

Signed-off-by: Rahul Saxena <rahul.saxena@intel.com> 
--
The following changes since commit 2552a046878e4352595f6e081ad371538cceda10:

  meta-n450: explicitly specify KBRANCH we expect to use (2012-07-12 16:32:58 -0500)

are available in the git repository at:
  git://git.pokylinux.org/meta-intel-contrib rsaxena/denzelv102aug20OK
  http://git.pokylinux.org/cgit.cgi/meta-intel-contrib/log/?h=rsaxena/denzelv102aug20OK

Rahul Saxena (3):
  meta-cedartrail: update SRCREV for Cedartrail machine branch
  meta-cedartrail: update SRCREV for yocto kernel pvr branch
  meta-cedartrail: update PVR graphics driver to version 1.0.2

 meta-cedartrail/README                             |    2 +-
 .../xorg-driver/cdv-pvr-driver.inc                 |   37 -----
 .../xorg-driver/cdv-pvr-driver_1.0.2.bb            |  139 ++++++++++++++++++++
 .../xorg-driver/cdv-pvr-driver_1.0.bb              |   99 --------------
 .../recipes-kernel/linux/linux-yocto_3.0.bbappend  |    6 +-
 5 files changed, 143 insertions(+), 140 deletions(-)
 delete mode 100644 meta-cedartrail/recipes-graphics/xorg-driver/cdv-pvr-driver.inc
 create mode 100644 meta-cedartrail/recipes-graphics/xorg-driver/cdv-pvr-driver_1.0.2.bb
 delete mode 100644 meta-cedartrail/recipes-graphics/xorg-driver/cdv-pvr-driver_1.0.bb

-- 
1.7.4.1


