Return-Path: <jussi.kukkonen@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6ECDFE00DAB; Wed, 13 Jul 2016 06:12:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DF0D2E00D7B
	for <yocto@yoctoproject.org>; Wed, 13 Jul 2016 06:12:18 -0700 (PDT)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by fmsmga102.fm.intel.com with ESMTP; 13 Jul 2016 06:12:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.28,357,1464678000"; d="scan'208";a="845509923"
Received: from heimdall.fi.intel.com ([10.237.68.147])
	by orsmga003.jf.intel.com with ESMTP; 13 Jul 2016 06:12:17 -0700
From: Jussi Kukkonen <jussi.kukkonen@intel.com>
To: yocto@yoctoproject.org
Date: Wed, 13 Jul 2016 16:12:10 +0300
Message-Id: <cover.1468415080.git.jussi.kukkonen@intel.com>
X-Mailer: git-send-email 2.8.1
Subject: [matchbox-panel-2][PATCH 0/4] Port to ScalingImage2
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
X-List-Received-Date: Wed, 13 Jul 2016 13:12:19 -0000

Port all remaining applets to ScalingImage2.
Also fix a bug in ScalingImage2.

The following changes since commit 145a8075c66952dad9ab5f36d944c78c1ae3f4ab:

  Release 2.10, update contact info (2016-06-02 15:08:14 +0300)

are available in the git repository at:

  git://github.com/jku/matchbox-panel-2 scaling-image
  https://github.com/jku/matchbox-panel-2/tree/scaling-image

Jussi Kukkonen (4):
  mb-panel: Remove leftover call from old ScalingImage
  battery: Port to ScalingImage2
  startup: Port to ScalingImage2
  launcher: Port to ScalingImage2

 applets/battery/battery-acpi.c           |  1 +
 applets/battery/battery.c                | 10 ++++++----
 applets/battery/battery.h                |  2 --
 applets/launcher/launcher.c              |  8 ++++----
 applets/startup/startup.c                | 12 +++++-------
 matchbox-panel/mb-panel-scaling-image2.c |  1 -
 6 files changed, 16 insertions(+), 18 deletions(-)

-- 
2.8.1


