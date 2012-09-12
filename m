Return-Path: <kishore.k.bodke@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DC505E00717
	for <yocto@yoctoproject.org>; Wed, 12 Sep 2012 12:28:54 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 12 Sep 2012 12:28:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,411,1344236400"; d="scan'208";a="144346356"
Received: from rsaxena-rosecity.sc.intel.com (HELO localhost)
	([143.183.188.86])
	by AZSMGA002.ch.intel.com with ESMTP; 12 Sep 2012 12:28:50 -0700
From: rahul.saxena@intel.com
To: yocto@yoctoproject.org
Date: Wed, 12 Sep 2012 12:18:28 -0700
Message-Id: <cover.1347477251.git.rahul.saxena@intel.com>
X-Mailer: git-send-email 1.7.4.1
Subject: [PATCH 0/2][meta-intel]meta-cedartrail: Cover letter for patches to add Video acceleration and update PVR driver to v1.0.3 -- master branch
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
X-List-Received-Date: Wed, 12 Sep 2012 19:28:55 -0000

From: Rahul Saxena <rahul.saxena@intel.com>

Adds  gstreamer and vaapi video acceleration components to enable acceleration with pvr driver

Update pvr driver to v1.0.3. This driver update fixes a memory leak bug.

Please pull into master branch

Signed-off-by: Rahul Saxena <rahul.saxena@intel.com>
--
The following changes since commit 66b516f3d3a287eecbf8804b2221bfc27e36db63:

  README: add info explaining meta-tlk layer purpose (2012-09-06 10:36:02 -0500)

are available in the git repository at:
  git://git.pokylinux.org/meta-intel-contrib rsaxena-pvrv103-master
  http://git.pokylinux.org/cgit.cgi/meta-intel-contrib/log/?h=rsaxena-pvrv103-master

Rahul Saxena (2):
  meta-cedartrail: Add video acceleration
  meta-cedartrail: Update PVR graphics driver to version 1.0.3

 meta-cedartrail/README                             |    2 +-
 meta-cedartrail/conf/machine/cedartrail.conf       |    4 +
 .../xorg-driver/cdv-pvr-driver_1.0.2.bb            |  140 --------------------
 3 files changed, 5 insertions(+), 141 deletions(-)
 delete mode 100644 meta-cedartrail/recipes-graphics/xorg-driver/cdv-pvr-driver_1.0.2.bb

-- 
1.7.4.1


