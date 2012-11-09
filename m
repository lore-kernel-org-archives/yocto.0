Return-Path: <kishore.k.bodke@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D64BBE002AB
	for <yocto@yoctoproject.org>; Fri,  9 Nov 2012 15:30:53 -0800 (PST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 09 Nov 2012 15:30:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,747,1344236400"; d="scan'208";a="215731573"
Received: from rsaxena-rosecity.sc.intel.com (HELO localhost)
	([143.183.188.86])
	by azsmga001.ch.intel.com with ESMTP; 09 Nov 2012 15:30:46 -0800
From: rahul.saxena@intel.com
To: yocto@yoctoproject.org
Date: Fri,  9 Nov 2012 15:17:05 -0800
Message-Id: <cover.1352502494.git.rahul.saxena@intel.com>
X-Mailer: git-send-email 1.7.4.1
Subject: [PATCH 0/2][meta-intel]meta-cedartrail: For cedartrail-nopvr, Update meta br SRCREV and add linux-yocto preferred version
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
X-List-Received-Date: Fri, 09 Nov 2012 23:30:54 -0000

From: Rahul Saxena <rahul.saxena@intel.com>

This patch set does the following:

Update kernel meta branch SRCREV for cedartrail-nopvr machine

Added PREFERRED_VERSION for linux-yocto for cedartrail-nopvr machine to avoid build warnings.

Please pull into danny-next branch

Signed-off-by: Rahul Saxena <rahul.saxena@intel.com>
--
The following changes since commit 41a33358619f6f29eccc2399ce701f9c3be65ab3:

  romley: Update README Instructions (2012-11-08 09:32:17 -0600)

are available in the git repository at:
  git://git.pokylinux.org/meta-intel-contrib rsaxena-danny-next
  http://git.pokylinux.org/cgit.cgi/meta-intel-contrib/log/?h=rsaxena-danny-next

Rahul Saxena (2):
  cedartrail: Update kernel meta branch SRCREV for cedartrail-nopvr
    machine
  cedartrail: Add PREFERRED_VERSION for linux-yocto for
    cedartrail-nopvr machine     Added PREFERRED_VERSION for
    linux-yocto for cedartrail-nopvr  machine to     avoid build
    warnings.

 meta-cedartrail/conf/machine/cedartrail-nopvr.conf |    2 +-
 .../recipes-kernel/linux/linux-yocto_3.0.bbappend  |    2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

-- 
1.7.4.1


