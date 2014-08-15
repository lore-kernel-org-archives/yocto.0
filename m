Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EFED6E0074B; Fri, 15 Aug 2014 02:49:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AAE6AE0044A
	for <yocto@yoctoproject.org>; Fri, 15 Aug 2014 02:48:51 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 15 Aug 2014 02:48:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.01,869,1400050800"; d="scan'208";a="588521279"
Received: from kmoriart-mobl.ger.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.122.210])
	by orsmga002.jf.intel.com with ESMTP; 15 Aug 2014 02:48:50 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Fri, 15 Aug 2014 10:48:40 +0100
Message-Id: <cover.1408096074.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.9.3
Subject: [auh][PATCH 0/4] Misc fixes for Automatic Upgrade Helper
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 15 Aug 2014 09:49:01 -0000

The following changes since commit a7e440395abd37722ba6ae7bc4fd02528b64a4eb:

  Fix adding new files to recipe bug (2014-08-14 14:31:59 +0100)

are available in the git repository at:

  git://git.yoctoproject.org/poky-contrib paule/auh-fixes
  http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=paule/auh-fixes

Paul Eggleton (4):
  Add ability to set machines in config file
  Simply config file option reading
  Handle upgrades for recipes with no maintainer
  README: clarify warning

 README           |  9 ++++++---
 upgradehelper.py | 27 +++++++++++++++++++--------
 2 files changed, 25 insertions(+), 11 deletions(-)

-- 
1.9.3


