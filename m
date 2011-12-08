Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 31DE7E005B9
	for <yocto@yoctoproject.org>; Thu,  8 Dec 2011 07:18:22 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 08 Dec 2011 07:18:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="93969968"
Received: from unknown (HELO helios.ger.corp.intel.com) ([10.252.121.254])
	by fmsmga001.fm.intel.com with ESMTP; 08 Dec 2011 07:18:20 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Thu,  8 Dec 2011 15:18:14 +0000
Message-Id: <cover.1323357349.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.7.5.4
Subject: [meta-qt3] [PATCH 0/5] Qt3 fixes
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
X-List-Received-Date: Thu, 08 Dec 2011 15:18:22 -0000

A fix for a compile error plus a bunch of minor tidy-ups for meta-qt3.

The following changes since commit 0e9784d26df51bd564b8f23bd40a6c36969abd5c:

  qt-x11-free-native: fix where qmake gets linked (2011-09-14 13:41:06 -0700)

are available in the git repository at:
  git://git.yoctoproject.org/poky-contrib paule/qt3-fixes
  http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=paule/qt3-fixes

Paul Eggleton (5):
  qt-x11-free-native: add qt3-cstddef.patch
  qt-x11-free: remove version 3.3.6
  qt-x11-free: use INC_PR
  qt-x11-free(-native): remove erroneous PROVIDES
  classes: remove qt3e.bbclass

 classes/qt3e.bbclass                        |   11 -----------
 recipes-qt3/qt3/qt-x11-free-common.inc      |    2 +-
 recipes-qt3/qt3/qt-x11-free-native_3.3.5.bb |    7 +++----
 recipes-qt3/qt3/qt-x11-free_3.3.6.bb        |   13 -------------
 recipes-qt3/qt3/qt-x11-free_3.3.7.bb        |    3 +--
 5 files changed, 5 insertions(+), 31 deletions(-)
 delete mode 100644 classes/qt3e.bbclass
 delete mode 100644 recipes-qt3/qt3/qt-x11-free_3.3.6.bb

-- 
1.7.5.4


