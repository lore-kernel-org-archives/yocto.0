Return-Path: <kishore.k.bodke@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D0EC4E0044D
	for <yocto@yoctoproject.org>; Fri, 23 Mar 2012 14:50:33 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 23 Mar 2012 14:50:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="122607380"
Received: from kishore-desktop.sc.intel.com (HELO localhost) ([143.183.188.76])
	by azsmga001.ch.intel.com with ESMTP; 23 Mar 2012 14:50:32 -0700
From: kishore.k.bodke@intel.com
To: yocto@yoctoproject.org,
	tom.zanussi@intel.com
Date: Fri, 23 Mar 2012 14:49:23 -0700
Message-Id: <cover.1332538690.git.kishore.k.bodke@intel.com>
X-Mailer: git-send-email 1.7.5.4
Subject: [PATCH 0/1] [meta-intel] meta-romley switching kernel to 3.2
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
X-List-Received-Date: Fri, 23 Mar 2012 21:50:34 -0000

From: Kishore Bodke <kishore.k.bodke@intel.com>

These patch set is to switch the kernel version to 3.2 for romley bsp.

Please pull into meta-intel/master.

Thanks
Kishore.

The following changes since commit f89405e115d73426c8a6450b6e795b5885d6bdf3:

  MAINTAINERS: Add FRI2 maintainer (2012-03-23 09:46:15 -0700)

are available in the git repository at:
  git://git.pokylinux.org/meta-intel-contrib kishore/romley-kernel-3.2-update
  http://git.pokylinux.org/cgit.cgi/meta-intel-contrib/log/?h=kishore/romley-kernel-3.2-update

Kishore Bodke (1):
  meta-romley: switch to linux-yocto-3.2 kernel

 meta-romley/conf/machine/romley.conf               |    3 +++
 .../linux/linux-yocto-rt_3.2.bbappend              |    8 ++++++++
 .../recipes-kernel/linux/linux-yocto_3.2.bbappend  |   10 ++++++++++
 3 files changed, 21 insertions(+), 0 deletions(-)
 create mode 100644 meta-romley/recipes-kernel/linux/linux-yocto-rt_3.2.bbappend
 create mode 100644 meta-romley/recipes-kernel/linux/linux-yocto_3.2.bbappend

-- 
1.7.5.4


