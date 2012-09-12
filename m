Return-Path: <kishore.k.bodke@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A1559E00344
	for <yocto@yoctoproject.org>; Wed, 12 Sep 2012 15:09:50 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 12 Sep 2012 15:09:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,413,1344236400"; d="scan'208";a="221396944"
Received: from rsaxena-rosecity.sc.intel.com (HELO localhost)
	([143.183.188.86])
	by fmsmga001.fm.intel.com with ESMTP; 12 Sep 2012 15:09:49 -0700
From: rahul.saxena@intel.com
To: yocto@yoctoproject.org,
	tom.zanussi@intel.com
Date: Wed, 12 Sep 2012 14:59:27 -0700
Message-Id: <cover.1347486881.git.rahul.saxena@intel.com>
X-Mailer: git-send-email 1.7.4.1
Subject: [PATCH 0/2][meta-intel]meta-cedartrail:Cover letter for patches to add Video acceleration and update PVR driver to v1.0.3 -- master branch
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
X-List-Received-Date: Wed, 12 Sep 2012 22:09:50 -0000

From: Rahul Saxena <rahul.saxena@intel.com>

Cover letter for patch set that does following:

Adds  gstreamer and vaapi video acceleration components to enable acceleration with pvr driver

Update pvr driver to v1.0.3. This driver update fixes a memory leak bug.

Please pull into master branch

Signed-off-by: Rahul Saxena <rahul.saxena@intel.com>
--
The following changes since commit 66b516f3d3a287eecbf8804b2221bfc27e36db63:

  README: add info explaining meta-tlk layer purpose (2012-09-06 10:36:02 -0500)

are available in the git repository at:
  git://git.pokylinux.org/meta-intel-contrib rsaxena-pvr_103r3master
  http://git.pokylinux.org/cgit.cgi/meta-intel-contrib/log/?h=rsaxena-pvr_103r3master

Rahul Saxena (2):
  meta-cedartrail: Add video acceleration
  meta-cedartrail: Update PVR graphics driver to version 1.0.3

 meta-cedartrail/README                             |    2 +-
 meta-cedartrail/conf/machine/cedartrail.conf       |    4 ++
 ...pvr-driver_1.0.2.bb => cdv-pvr-driver_1.0.3.bb} |   34 ++++++++++++-------
 3 files changed, 26 insertions(+), 14 deletions(-)
 rename meta-cedartrail/recipes-graphics/xorg-driver/{cdv-pvr-driver_1.0.2.bb => cdv-pvr-driver_1.0.3.bb} (84%)

-- 
1.7.4.1


