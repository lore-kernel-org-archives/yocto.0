Return-Path: <jussi.kukkonen@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 30E5CE00E44; Fri, 29 Apr 2016 00:47:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D545EE00E41
	for <yocto@yoctoproject.org>; Fri, 29 Apr 2016 00:47:32 -0700 (PDT)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by orsmga101.jf.intel.com with ESMTP; 29 Apr 2016 00:47:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.24,550,1455004800"; d="scan'208";a="794840193"
Received: from heimdall.fi.intel.com ([10.237.68.38])
	by orsmga003.jf.intel.com with ESMTP; 29 Apr 2016 00:47:31 -0700
From: Jussi Kukkonen <jussi.kukkonen@intel.com>
To: yocto@yoctoproject.org
Date: Fri, 29 Apr 2016 10:47:28 +0300
Message-Id: <cover.1461913863.git.jussi.kukkonen@intel.com>
X-Mailer: git-send-email 2.8.1
Subject: [xsettings-daemon][PATCH 0/2] Upgrade to Gdk3
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
X-List-Received-Date: Fri, 29 Apr 2016 07:47:36 -0000

No code changes needed, just link with the newer library.

This patchset is part of the quest to make Sato compatible with GTK+3.
Complete WIP collection of patches can be found in jku/matchbox-wip
branch at git://git.yoctoproject.org/poky-contrib


The following changes since commit 9a99528b02255450db81176abd9bbcc1dab9a4c1:

  xsettings-dump: Add debug tool (2013-04-19 15:47:25 +0100)

are available in the git repository at:

  git://github.com/jku/xsettings-daemon gtk3
  https://github.com/jku/xsettings-daemon/tree/gtk3

Jussi Kukkonen (2):
  Need -lx11 in linker flags
  Use gdk-x11-3.0 instead of 2.0

 configure.ac | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

-- 
2.8.1


