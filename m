Return-Path: <william.c.randle@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2BB12E00E08; Wed,  6 Jul 2016 13:16:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6675CE00990
	for <yocto@yoctoproject.org>; Wed,  6 Jul 2016 13:16:44 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by fmsmga103.fm.intel.com with ESMTP; 06 Jul 2016 13:16:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.28,320,1464678000"; d="scan'208";a="990298153"
Received: from wcrandle-mobl1.jf.intel.com ([10.7.199.53])
	by orsmga001.jf.intel.com with ESMTP; 06 Jul 2016 13:16:44 -0700
From: Bill Randle <william.c.randle@intel.com>
To: yocto@yoctoproject.org
Date: Wed,  6 Jul 2016 13:16:38 -0700
Message-Id: <1467836200-30512-1-git-send-email-william.c.randle@intel.com>
X-Mailer: git-send-email 2.5.5
Subject: [yocto-autobuilder][PATCH 0/2] publish wic images
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
X-List-Received-Date: Wed, 06 Jul 2016 20:16:48 -0000

QA started testing wic images in Yocto 2.1, but was building them
themselves. Have the autobuilder publish the wic images so they are
available for testing.

[YOCTO #9397]

Bill Randle (2):
  PublishArtifacts.py: create md5sum files in same dir as artifacts
  publish build artifacts for wic images

 buildset-config.controller/nightly-wic.conf        |  8 ++---
 .../autobuilder/buildsteps/PublishArtifacts.py     | 40 +++++++++++++++-------
 2 files changed, 30 insertions(+), 18 deletions(-)

-- 
2.5.5


