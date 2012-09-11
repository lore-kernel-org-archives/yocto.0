Return-Path: <kishore.k.bodke@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CC975E004AB
	for <yocto@yoctoproject.org>; Tue, 11 Sep 2012 15:32:30 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 11 Sep 2012 15:32:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,407,1344236400"; d="scan'208";a="191577678"
Received: from rsaxena-rosecity.sc.intel.com (HELO localhost)
	([143.183.188.86])
	by azsmga001.ch.intel.com with ESMTP; 11 Sep 2012 15:32:29 -0700
From: rahul.saxena@intel.com
To: yocto@yoctoproject.org
Date: Tue, 11 Sep 2012 15:22:09 -0700
Message-Id: <cover.1347401448.git.rahul.saxena@intel.com>
X-Mailer: git-send-email 1.7.4.1
Subject: [PATCH 0/1][meta-intel]meta-cedartrail:Cover letter to update PVR graphics driver to v1.0.3 - denzil branch
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
X-List-Received-Date: Tue, 11 Sep 2012 22:32:31 -0000

From: Rahul Saxena <rahul.saxena@intel.com>

Cover letter for patch to update pvr driver to v1.0.3

This driver update fixes a memory leak bug

Please pull into meta-intel/denzil

Signed-off-by: Rahul Saxena <rahul.saxena@intel.com>
--
The following changes since commit 418f6d3936bcd871102042167c699c3773bded3e:

  meta-cedartrail: Add video acceleration (2012-09-11 13:58:04 -0500)

are available in the git repository at:
  git://git.pokylinux.org/meta-intel-contrib rsaxena-denzilpvr103
  http://git.pokylinux.org/cgit.cgi/meta-intel-contrib/log/?h=rsaxena-denzilpvr103

Rahul Saxena (1):
  meta-cedartrail: Update PVR graphics driver to version 1.0.3

 meta-cedartrail/README                             |    2 +-
 ...pvr-driver_1.0.2.bb => cdv-pvr-driver_1.0.3.bb} |   27 ++++++++++---------
 2 files changed, 15 insertions(+), 14 deletions(-)
 rename meta-cedartrail/recipes-graphics/xorg-driver/{cdv-pvr-driver_1.0.2.bb => cdv-pvr-driver_1.0.3.bb} (85%)

-- 
1.7.4.1


