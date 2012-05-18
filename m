Return-Path: <kishore.k.bodke@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 14A6AE013B7
	for <yocto@yoctoproject.org>; Fri, 18 May 2012 12:17:10 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 18 May 2012 12:17:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="168230743"
Received: from kishore-desktop.sc.intel.com (HELO localhost) ([143.183.188.90])
	by fmsmga002.fm.intel.com with ESMTP; 18 May 2012 12:17:09 -0700
From: kishore.k.bodke@intel.com
To: yocto@yoctoproject.org,
	bruce.ashfield@windriver.com
Date: Fri, 18 May 2012 12:15:48 -0700
Message-Id: <cover.1337368253.git.kishore.k.bodke@intel.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [PATCH 0/1] [KERNEL] Cedartrail: Move PVR specific to meta
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
X-List-Received-Date: Fri, 18 May 2012 19:17:10 -0000

From: Kishore Bodke <kishore.k.bodke@intel.com>

Moving the Cedartrail PVR specific kernel 
features to the meta area and removing 
them from the BSP.

Please pull into linux-yocto-3.0/meta.

Thanks
Kishore.

The following changes since commit 34e0d2b4b4e9778b31f9ea99ca43f0dc71a7ee23:

  meta: Clean up BSPs kernel config (2012-04-17 16:01:19 -0400)

are available in the git repository at:

  git://git.pokylinux.org/linux-yocto-2.6.37-contrib kishore/cedartrail
  http://git.pokylinux.org/cgit.cgi/linux-yocto-2.6.37-contrib/log/?h=kishore/cedartrail

Kishore Bodke (1):
  Cedartrail: Move PVR specific to meta

 .../bsp/cedartrail/cedartrail-pvr-merge.scc        |    6 ++++++
 1 file changed, 6 insertions(+)

-- 
1.7.9.5


