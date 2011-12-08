Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F3C99E006B0
	for <yocto@yoctoproject.org>; Thu,  8 Dec 2011 11:56:54 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 08 Dec 2011 11:56:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="84429863"
Received: from unknown (HELO helios.ger.corp.intel.com) ([10.252.121.254])
	by orsmga001.jf.intel.com with ESMTP; 08 Dec 2011 11:56:49 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Thu,  8 Dec 2011 19:56:44 +0000
Message-Id: <cover.1323374147.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.7.5.4
Subject: [meta-qt3] [PATCH 0/3] More Qt3 fixes
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
X-List-Received-Date: Thu, 08 Dec 2011 19:56:55 -0000

These should address the failures we have been seeing on the autobuilder
and clean up a few other things.

The following changes since commit 9d58aef10d75fe5168cc0c561c480c751266d54b:

  classes: remove qt3e.bbclass (2011-12-08 15:09:06 +0000)

are available in the git repository at:
  git://git.yoctoproject.org/poky-contrib paule/qt3-fixes2
  http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=paule/qt3-fixes2

Paul Eggleton (3):
  qt-x11-free: fix installation and packaging
  qt-x11-free(-native): remove PRIORITY
  qt3: fix interaction between qt3 and qt4 in the sysroot

 classes/qt3x11.bbclass                      |    5 +-
 recipes-qt3/qt3/qt-x11-free-common.inc      |   72 +++++++++++---------------
 recipes-qt3/qt3/qt-x11-free-native_3.3.5.bb |   13 ++---
 recipes-qt3/qt3/qt-x11-free_3.3.7.bb        |    2 +-
 4 files changed, 39 insertions(+), 53 deletions(-)

-- 
1.7.5.4


