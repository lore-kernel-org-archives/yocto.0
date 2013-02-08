Return-Path: <kishore.k.bodke@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 80777E0034C;
	Fri,  8 Feb 2013 15:15:58 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 08 Feb 2013 15:14:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,632,1355126400"; d="scan'208";a="260030274"
Received: from kishore-desktop.sc.intel.com (HELO localhost)
	([143.183.188.181])
	by orsmga001.jf.intel.com with ESMTP; 08 Feb 2013 15:15:57 -0800
From: kishore.k.bodke@intel.com
To: bruce.ashfield@windriver.com, dvhart@linux.intel.com,
	rahul.saxena@intel.com, song.liu@intel.com, tom.zanussi@intel.com,
	linux-yocto@yoctoproject.org, yocto@yoctoproject.org
Date: Fri,  8 Feb 2013 15:18:24 -0800
Message-Id: <cover.1360365190.git.kishore.k.bodke@intel.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [PATCH 0/1][linux-yocto] Remove Cedartrail Machine
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
X-List-Received-Date: Fri, 08 Feb 2013 23:15:58 -0000

From: Kishore Bodke <kishore.k.bodke@intel.com>


Hi,

This patch set is to remove the Cedartail Machine from 
Linux-yocto-3.4 Kernel.
Cedartrail BSP will not be supported for Yocto 1.4 Release.

Also Please remove the standard/cedartrail branch.

Please pull into linux-yocto-3.4/meta branch.

Thanks
Kishore.

The following changes since commit f697e099bc76d5df3a307a5bc0cc25021dd6dfe0:

  meta: bump to v3.4.28, rt-40 (2013-02-04 00:14:21 -0500)

are available in the git repository at:

  git://git.pokylinux.org/linux-yocto-contrib kishore/cedartrail_remove
  http://git.pokylinux.org/cgit.cgi/linux-yocto-contrib/log/?h=kishore/cedartrail_remove

Kishore Bodke (1):
  meta: Remove Cedartrail Machine

 .../bsp/cedartrail/cedartrail-preempt-rt.scc       |   13 ------
 .../bsp/cedartrail/cedartrail-standard.scc         |    8 ----
 .../cfg/kernel-cache/bsp/cedartrail/cedartrail.cfg |   46 --------------------
 .../cfg/kernel-cache/bsp/cedartrail/cedartrail.scc |   15 -------
 4 files changed, 82 deletions(-)
 delete mode 100755 meta/cfg/kernel-cache/bsp/cedartrail/cedartrail-preempt-rt.scc
 delete mode 100755 meta/cfg/kernel-cache/bsp/cedartrail/cedartrail-standard.scc
 delete mode 100755 meta/cfg/kernel-cache/bsp/cedartrail/cedartrail.cfg
 delete mode 100644 meta/cfg/kernel-cache/bsp/cedartrail/cedartrail.scc

-- 
1.7.9.5


