Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0F8C5E0137C
	for <yocto@yoctoproject.org>; Wed, 14 Mar 2012 10:38:54 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 14 Mar 2012 10:38:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="77518613"
Received: from unknown (HELO helios.ger.corp.intel.com) ([10.252.123.190])
	by AZSMGA002.ch.intel.com with ESMTP; 14 Mar 2012 10:38:50 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Wed, 14 Mar 2012 17:38:47 +0000
Message-Id: <cover.1331746641.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.7.5.4
Subject: [meta-qt3] [PATCH 0/1] Fix QA errors
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
X-List-Received-Date: Wed, 14 Mar 2012 17:38:54 -0000

The following changes since commit 13df95beabc0c4ae374b245ce195174e64004a5d:

  qt-x11-free-common: Add version to LICENSE fields (2012-03-13 23:50:06 +0000)

are available in the git repository at:
  git://git.yoctoproject.org/poky-contrib paule/qt3-qa
  http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=paule/qt3-qa

Paul Eggleton (1):
  qt-x11-free: fix QA errors

 recipes-qt3/qt3/qt-x11-free-common.inc        |    3 +
 recipes-qt3/qt3/qt-x11-free-native/qmake.conf |   90 +++++++++++++++++++++++++
 recipes-qt3/qt3/qt-x11-free-native_3.3.5.bb   |    6 +-
 recipes-qt3/qt3/qt-x11-free_3.3.7.bb          |    2 +-
 4 files changed, 98 insertions(+), 3 deletions(-)
 create mode 100644 recipes-qt3/qt3/qt-x11-free-native/qmake.conf

-- 
1.7.5.4


