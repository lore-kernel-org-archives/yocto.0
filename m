Return-Path: <kishore.k.bodke@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6B94AE00596
	for <yocto@yoctoproject.org>; Mon, 27 Feb 2012 10:49:01 -0800 (PST)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 27 Feb 2012 10:49:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="70887636"
Received: from kishore-desktop.sc.intel.com (HELO localhost)
	([143.183.188.159])
	by AZSMGA002.ch.intel.com with ESMTP; 27 Feb 2012 10:49:00 -0800
From: kishore.k.bodke@intel.com
To: yocto@yoctoproject.org,
	bruce.ashfield@windriver.com
Date: Mon, 27 Feb 2012 10:47:37 -0800
Message-Id: <cover.1330368113.git.kishore.k.bodke@intel.com>
X-Mailer: git-send-email 1.7.5.4
Subject: [KERNEL] [PATCH 0/1] Add PVR feature for Cedartrail
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
X-List-Received-Date: Mon, 27 Feb 2012 18:49:01 -0000

From: Kishore Bodke <kishore.k.bodke@intel.com>

Hi,

This is a new feature added to enable PVR for the Cedartrail BSP in the kernel.

Please pull into meta/cfg/kernel-cache/cfg for both linux-yocto-3.0 and linux-yocto-3.2 .

Thanks
Kishore.


The following changes since commit 808b49474268040ab27c8ee687b60807a11547b4:

  meta: update kver to v3.0.22 (2012-02-26 00:16:19 -0500)

are available in the git repository at:
  git://git.pokylinux.org/linux-yocto-2.6.37-contrib bodke/meta-cedartrail/pvr-feature
  http://git.pokylinux.org/cgit.cgi/linux-yocto-2.6.37-contrib/log/?h=bodke/meta-cedartrail/pvr-feature

Kishore Bodke (1):
  enable pvr features.     Cedartrail has pvr kernel features enable
    it.

 meta/cfg/kernel-cache/cfg/drm-cdvpvr.cfg |    9 +++++++++
 meta/cfg/kernel-cache/cfg/drm-cdvpvr.scc |    1 +
 2 files changed, 10 insertions(+), 0 deletions(-)
 create mode 100644 meta/cfg/kernel-cache/cfg/drm-cdvpvr.cfg
 create mode 100644 meta/cfg/kernel-cache/cfg/drm-cdvpvr.scc

-- 
1.7.5.4


