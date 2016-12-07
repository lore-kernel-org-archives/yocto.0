Return-Path: <jussi.kukkonen@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 346E7E00D27; Wed,  7 Dec 2016 05:21:50 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8D4D9E00D19
	for <yocto@yoctoproject.org>; Wed,  7 Dec 2016 05:21:49 -0800 (PST)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by orsmga103.jf.intel.com with ESMTP; 07 Dec 2016 05:21:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.33,310,1477983600"; d="scan'208";a="909673811"
Received: from heimdall.fi.intel.com ([10.237.68.151])
	by orsmga003.jf.intel.com with ESMTP; 07 Dec 2016 05:21:46 -0800
From: Jussi Kukkonen <jussi.kukkonen@intel.com>
To: yocto@yoctoproject.org
Date: Wed,  7 Dec 2016 15:22:20 +0200
Message-Id: <cover.1481116465.git.jussi.kukkonen@intel.com>
X-Mailer: git-send-email 2.11.0
Subject: [matchbox-wm][PATCH 0/3] matchbox-window-manager fixes
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
X-List-Received-Date: Wed, 07 Dec 2016 13:21:50 -0000

One actual bug fix (YOCTO #10635) and a few build cleanups.

Thanks,
  Jussi


The following changes since commit 9fd1806dfa7c8f2202db18b7bc880857a3019f8c:

  Bump version, update bug-report URI (2016-06-02 14:46:42 +0300)

are available in the git repository at:

  git://github.com/jku/matchbox-window-manager net-current-desktop
  https://github.com/jku/matchbox-window-manager/tree/net-current-desktop

Jussi Kukkonen (3):
  ewmh: Actually set _NET_CURRENT_DESKTOP
  matchbox-remote: Fix execvp() argument
  Fix "unused variable" warnings

 src/ewmh.c            | 11 +++++++----
 src/matchbox-remote.c |  4 +++-
 src/mbtheme.c         |  7 -------
 src/wm.c              |  2 +-
 4 files changed, 11 insertions(+), 13 deletions(-)

-- 
2.11.0


