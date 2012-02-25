Return-Path: <kishore.k.bodke@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BD816E003E3
	for <yocto@yoctoproject.org>; Fri, 24 Feb 2012 16:36:19 -0800 (PST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 24 Feb 2012 16:36:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="110593400"
Received: from kishore-desktop.sc.intel.com (HELO localhost) ([143.183.188.74])
	by azsmga001.ch.intel.com with ESMTP; 24 Feb 2012 16:36:19 -0800
From: kishore.k.bodke@intel.com
To: yocto@yoctoproject.org,
	bruce.ashfield@windriver.com
Date: Fri, 24 Feb 2012 16:35:06 -0800
Message-Id: <cover.1330129499.git.kishore.k.bodke@intel.com>
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
X-List-Received-Date: Sat, 25 Feb 2012 00:36:19 -0000

From: Kishore Bodke <kishore.k.bodke@intel.com>

Hi,

This is a new feature added to enable PVR for the Cedartrail BSP in the kernel.

Please pull into meta/cfg/kernel-cache/cfg for both linux-yocto-3.0 and linux-yocto-3.2 .

Thanks
Kishore.

The following changes since commit b78a519841bd8b477cad599af8d38df6760445c1:

  fri2: use emgd-1.10 (2012-02-05 00:55:05 -0500)

are available in the git repository at:
  git://git.pokylinux.org/linux-yocto-2.6.37-contrib kishore/meta-cedartrail/pvr-feature
  http://git.pokylinux.org/cgit.cgi/linux-yocto-2.6.37-contrib/log/?h=kishore/meta-cedartrail/pvr-feature

Kishore Bodke (1):
  enable pvr features.     Cedartrail has pvr kernel features and
    patches.

 meta/cfg/kernel-cache/cfg/drm-cdvpvr.cfg |    9 +++++++++
 meta/cfg/kernel-cache/cfg/drm-cdvpvr.scc |    2 ++
 2 files changed, 11 insertions(+), 0 deletions(-)
 create mode 100644 meta/cfg/kernel-cache/cfg/drm-cdvpvr.cfg
 create mode 100644 meta/cfg/kernel-cache/cfg/drm-cdvpvr.scc

-- 
1.7.5.4


