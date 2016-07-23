Return-Path: <william.c.randle@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 16EBAE0104B; Sat, 23 Jul 2016 08:11:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [192.55.52.120 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 64991E01040
	for <yocto@yoctoproject.org>; Sat, 23 Jul 2016 08:11:10 -0700 (PDT)
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
	by fmsmga104.fm.intel.com with ESMTP; 23 Jul 2016 08:11:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.28,409,1464678000"; d="scan'208";a="144267900"
Received: from wcrandle-mobl1.amr.corp.intel.com ([10.252.139.212])
	by fmsmga004.fm.intel.com with ESMTP; 23 Jul 2016 08:11:10 -0700
From: Bill Randle <william.c.randle@intel.com>
To: yocto@yoctoproject.org
Date: Sat, 23 Jul 2016 08:11:03 -0700
Message-Id: <1469286665-16059-1-git-send-email-william.c.randle@intel.com>
X-Mailer: git-send-email 2.5.5
Subject: [yocto-autobuilder][PATCH 0/2] Allow OPTIMIZED_GIT_CLONE to be False
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
X-List-Received-Date: Sat, 23 Jul 2016 15:11:50 -0000

The autobuilder code assumes OPTIMIZED_GIT_CLONE is always set True,
because things break if it is set to False. I had a case where it
needed to be set False because the git trash folder was on a different
file system than the build directory. This caused the CheckOutLayers build
step to fail.

In addition, I still wanted to use the git mirror even with OPTIMIZED_GIT_CLONE
set False, so allow that case, too.

[YOCTO #10010]

Bill Randle (2):
  BuildSet.py: allow using local git mirror even if OPTIMIZED_GIT_CLONE is False
  yoctogit.py: ensure mirrordir is set before trying to use it

 lib/python2.7/site-packages/autobuilder/BuildSet.py                | 2 ++
 .../buildbot-0.8.8-py2.7.egg/buildbot/steps/source/yoctogit.py     | 7 +++++--
 2 files changed, 7 insertions(+), 2 deletions(-)

-- 
2.5.5


