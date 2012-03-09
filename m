Return-Path: <kishore.k.bodke@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 663B8E013A7
	for <yocto@yoctoproject.org>; Fri,  9 Mar 2012 11:05:07 -0800 (PST)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 09 Mar 2012 11:05:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="75680068"
Received: from kishore-desktop.sc.intel.com (HELO localhost) ([143.183.188.67])
	by AZSMGA002.ch.intel.com with ESMTP; 09 Mar 2012 11:05:06 -0800
From: kishore.k.bodke@intel.com
To: yocto@yoctoproject.org,
	bruce.ashfield@windriver.com
Date: Fri,  9 Mar 2012 11:03:54 -0800
Message-Id: <cover.1331319522.git.kishore.k.bodke@intel.com>
X-Mailer: git-send-email 1.7.5.4
Subject: [KERNEL] [PATCH 0/1] Additional pvr patches
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
X-List-Received-Date: Fri, 09 Mar 2012 19:05:07 -0000

From: Kishore Bodke <kishore.k.bodke@intel.com>


Hi,

These addtional patches enable Cedarview hdmi and acpi.
Please pull thme to the yocto/pvr branch in linux-yocto-3.0 tree.

Thanks
Kishore.


The following changes since commit 3604d007243d3db5fea8704f78a3608862e592f9:

  yocto/pvr: integrate pvr support (2012-03-02 16:34:43 -0500)

are available in the git repository at:
  git://git.pokylinux.org/linux-yocto-2.6.37-contrib bodke/new-pvr-patch
  http://git.pokylinux.org/cgit.cgi/linux-yocto-2.6.37-contrib/log/?h=bodke/new-pvr-patch

Kishore Bodke (1):
  Add new pvr patches.     Additional pvr patches related to hdmi and
    acpi.

 drivers/acpi/video.c       |    2 --
 sound/pci/hda/patch_hdmi.c |    2 ++
 2 files changed, 2 insertions(+), 2 deletions(-)

-- 
1.7.5.4


