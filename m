Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CFF55E00344
	for <yocto@yoctoproject.org>; Tue,  4 Sep 2012 09:49:45 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 04 Sep 2012 09:49:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,367,1344236400"; d="scan'208";a="188662030"
Received: from unknown (HELO helios.ger.corp.intel.com) ([10.252.121.161])
	by azsmga001.ch.intel.com with ESMTP; 04 Sep 2012 09:49:08 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue,  4 Sep 2012 17:49:04 +0100
Message-Id: <cover.1346777221.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [meta-qt3][PATCH 0/2] Package group fixes for meta-qt3
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
X-List-Received-Date: Tue, 04 Sep 2012 16:49:46 -0000

The following changes since commit f8475d5c5935695d4d1dfff1d7be30f49e162094:

  qt-x11-free: fix build failure in do_configure (2012-04-03 15:28:39 +0100)

are available in the git repository at:

  git://git.yoctoproject.org/poky-contrib paule/metaqt3-packagegroup-fixes
  http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=paule/metaqt3-packagegroup-fixes

Paul Eggleton (2):
  task-core-qt3: rename to packagegroup-core-qt3 and tidy up
  core-image-lsb-qt3: fix for apps-console-core removal

 recipes-qt3/images/core-image-lsb-qt3.bb           |    8 +++----
 recipes-qt3/packagegroups/packagegroup-core-qt3.bb |   16 ++++++++++++++
 recipes-qt3/tasks/task-core-qt3.bb                 |   22 --------------------
 3 files changed, 20 insertions(+), 26 deletions(-)
 create mode 100644 recipes-qt3/packagegroups/packagegroup-core-qt3.bb
 delete mode 100644 recipes-qt3/tasks/task-core-qt3.bb

-- 
1.7.9.5


