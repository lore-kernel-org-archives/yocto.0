Return-Path: <kishore.k.bodke@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 57566E0146B
	for <yocto@yoctoproject.org>; Mon, 10 Sep 2012 10:44:33 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 10 Sep 2012 10:44:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,398,1344236400"; d="scan'208";a="190990570"
Received: from rsaxena-rosecity.sc.intel.com (HELO localhost)
	([143.183.188.86])
	by azsmga001.ch.intel.com with ESMTP; 10 Sep 2012 10:44:32 -0700
From: rahul.saxena@intel.com
To: yocto@yoctoproject.org,
	tom.zanussi@intel.com
Date: Mon, 10 Sep 2012 10:34:16 -0700
Message-Id: <cover.1347297888.git.rahul.saxena@intel.com>
X-Mailer: git-send-email 1.7.4.1
Subject: [PATCH 0/1][meta-intel] Add video acceleration Cedartrail BSP denzil branch
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
X-List-Received-Date: Mon, 10 Sep 2012 17:44:33 -0000

From: Rahul Saxena <rahul.saxena@intel.com>

This adds gstreamer and vaapi video acceleration components to enable video
acceleration with pvr driver in meta-cedartrail BSP

Please pull into denzil branch.
    
Signed-off-by: Rahul Saxena  <rahul.saxena@intel.com>
--
The following changes since commit 63f88d16e50384ffab41b548af0ad9b536d22069:

  meta-cedartrail: Update PVR graphics driver to version 1.0.2 (2012-08-20 15:25:25 -0700)

are available in the git repository at:
  git://git.pokylinux.org/meta-intel-contrib rsaxena-denzel3-gsrtOK
  http://git.pokylinux.org/cgit.cgi/meta-intel-contrib/log/?h=rsaxena-denzel3-gsrtOK

Rahul Saxena (1):
  meta-cedartrail: Add video acceleration

 meta-cedartrail/conf/machine/cedartrail.conf |    4 ++++
 1 files changed, 4 insertions(+), 0 deletions(-)

-- 
1.7.4.1


