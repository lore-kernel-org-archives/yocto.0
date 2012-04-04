Return-Path: <kishore.k.bodke@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A9AC9E0044A
	for <yocto@yoctoproject.org>; Wed,  4 Apr 2012 15:34:33 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 04 Apr 2012 15:34:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="127202472"
Received: from kishore-desktop.sc.intel.com (HELO localhost)
	([143.183.188.157])
	by azsmga001.ch.intel.com with ESMTP; 04 Apr 2012 15:34:32 -0700
From: kishore.k.bodke@intel.com
To: yocto@yoctoproject.org,
	tom.zanussi@intel.com
Date: Wed,  4 Apr 2012 15:33:14 -0700
Message-Id: <cover.1333578511.git.kishore.k.bodke@intel.com>
X-Mailer: git-send-email 1.7.5.4
Subject: [PATCH 0/1] [meta-intel] Switching romley to 3.2 kernel
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
X-List-Received-Date: Wed, 04 Apr 2012 22:34:33 -0000

From: Kishore Bodke <kishore.k.bodke@intel.com>

Adding bbappend files to switch Romley BSP to 3.2 kernel.

Thanks
Kishore.

The following changes since commit f89405e115d73426c8a6450b6e795b5885d6bdf3:

  MAINTAINERS: Add FRI2 maintainer (2012-03-23 09:46:15 -0700)

are available in the git repository at:
  git://git.pokylinux.org/meta-intel-contrib kishore/romley-switch-1.2
  http://git.pokylinux.org/cgit.cgi/meta-intel-contrib/log/?h=kishore/romley-switch-1.2

Kishore Bodke (1):
  Romley: Add new bbappend file for 3.2 kernel

 meta-romley/conf/machine/romley.conf               |    3 +++
 .../linux/linux-yocto-rt_3.2.bbappend              |    8 ++++++++
 .../recipes-kernel/linux/linux-yocto_3.2.bbappend  |    9 +++++++++
 3 files changed, 20 insertions(+), 0 deletions(-)
 create mode 100644 meta-romley/recipes-kernel/linux/linux-yocto-rt_3.2.bbappend
 create mode 100644 meta-romley/recipes-kernel/linux/linux-yocto_3.2.bbappend

-- 
1.7.5.4


