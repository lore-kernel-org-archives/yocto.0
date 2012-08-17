Return-Path: <mihaix.lindner@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AD797E0027F
	for <yocto@yoctoproject.org>; Fri, 17 Aug 2012 08:53:41 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 17 Aug 2012 08:53:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.77,785,1336374000"; d="scan'208";a="187795170"
Received: from linux.jf.intel.com (HELO linux.intel.com) ([10.23.232.205])
	by orsmga002.jf.intel.com with ESMTP; 17 Aug 2012 08:53:41 -0700
Received: from moolinex.rb.intel.com (qa.rb.intel.com [10.237.100.11])
	by linux.intel.com (Postfix) with ESMTP id 496622C8001;
	Fri, 17 Aug 2012 08:53:41 -0700 (PDT)
From: Mihai Lindner <mihaix.lindner@linux.intel.com>
To: yocto@yoctoproject.org,
	kishore.k.bodke@intel.com
Date: Fri, 17 Aug 2012 18:53:33 +0300
Message-Id: <cover.1345218399.git.mihaix.lindner@linux.intel.com>
X-Mailer: git-send-email 1.7.8.6
Subject: [PATCH 0/1] meta-cedartrail: fix PREFERRED_VERSION_linux-yocto
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
X-List-Received-Date: Fri, 17 Aug 2012 15:53:41 -0000

Missing PREFERRED_VERSION_linux-yocto generated NOTEs when building.
"""
NOTE: preferred version 3.4% of linux-yocto not available (for item
virtual/kernel)
"""

[YOCTO #2962]

Signed-off-by: Mihai Lindner <mihaix.lindner@linux.intel.com>
---
The following changes since commit 50b22497cb34c3502f3dca1407aecdcd4dfc52b1:

  layer.conf: Clarify BBFILES comments regarding recipe-* directories (2012-08-15 15:43:01 -0700)

are available in the git repository at:
  git://git.yoctoproject.org/poky-contrib mihai/bug2962
  http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=mihai/bug2962

Mihai Lindner (1):
  meta-cedartrail: fixed PREFERRED_VERSION_linux-yocto

 meta-cedartrail/conf/machine/cedartrail.conf |    1 +
 1 files changed, 1 insertions(+), 0 deletions(-)

-- 
1.7.8.6


