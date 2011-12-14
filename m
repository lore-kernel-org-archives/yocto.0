Return-Path: <rahul.saxena@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D267FE00744
	for <yocto@yoctoproject.org>; Wed, 14 Dec 2011 16:02:43 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 14 Dec 2011 16:02:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="102330119"
Received: from rsaxena-desktop.sc.intel.com (HELO localhost) ([143.183.188.84])
	by fmsmga002.fm.intel.com with ESMTP; 14 Dec 2011 16:02:41 -0800
From: rahul.saxena@intel.com
To: yocto@yoctoproject.org,
	bruce.ashfield@windriver.com
Date: Wed, 14 Dec 2011 09:02:59 -0800
Message-Id: <cover.1323878947.git.rahul.saxena@intel.com>
X-Mailer: git-send-email 1.7.0.4
Subject: [PATCH 0/1][KERNEL] meta: Add cedartrail
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
X-List-Received-Date: Thu, 15 Dec 2011 00:02:44 -0000

From: Rahul Saxena <rahul.saxena@intel.com>

This is the initial version of a BSP for the Cedar Trail platform.
The Cedar Trail platform consists of the Intel Cedarview Atom processor
and Tiger Point Chipset.  I have succesfully booted Sato image on Cedar Trail
CRB, desktop and mobile pre-production sample boards and tested features
such as wired networking, VESA graphics, SATA, USB ports 

Please pull into linux-yocto-3.0/meta and linux-yocto-dev/meta

Also, please create a new "yocto/standard/cedarview" machine branch in each
of the above, based on yocto/standard/base.

Thanks
Rahul

Signed=off-by: Rahul Saxena <rahul.saxena@intel.com>
---

The following changes since commit caa74f86f42f6ecc22c3e9f380176b2695579e18:
  Darren Hart (1):
        Add EFI scc and cfg files

are available in the git repository at:

  git://git.yoctoproject.org/linux-yocto-2.6.37-contrib rsaxena/meta-cedartrail
  http://git.yoctoproject.org/cgit.cgi/linux-yocto-2.6.37-contrib/log/?h=rsaxena/meta-cedartrail

Rahul Saxena (1):
  meta: Add cedartrail     Signed-off-by: Rahul Saxena
    <rahul.saxena@.intel.com>

 .../bsp/cedartrail/cedartrail-preempt-rt.scc       |    7 +++
 .../bsp/cedartrail/cedartrail-standard.scc         |    7 +++
 .../cfg/kernel-cache/bsp/cedartrail/cedartrail.cfg |   58 ++++++++++++++++++++
 .../cfg/kernel-cache/bsp/cedartrail/cedartrail.scc |   17 ++++++
 4 files changed, 89 insertions(+), 0 deletions(-)
 create mode 100755 meta/cfg/kernel-cache/bsp/cedartrail/cedartrail-preempt-rt.scc
 create mode 100755 meta/cfg/kernel-cache/bsp/cedartrail/cedartrail-standard.scc
 create mode 100755 meta/cfg/kernel-cache/bsp/cedartrail/cedartrail.cfg
 create mode 100755 meta/cfg/kernel-cache/bsp/cedartrail/cedartrail.scc


