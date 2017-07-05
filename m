Return-Path: <stephano.cetola@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 91BB0E0084A; Wed,  5 Jul 2017 11:09:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.100 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BBF8FE00349
	for <yocto@yoctoproject.org>; Wed,  5 Jul 2017 11:09:25 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga105.jf.intel.com with ESMTP; 05 Jul 2017 11:09:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.40,312,1496127600"; d="scan'208";a="1148044056"
Received: from pequod.jf.intel.com ([10.54.74.4])
	by orsmga001.jf.intel.com with ESMTP; 05 Jul 2017 11:09:24 -0700
From: Stephano Cetola <stephano.cetola@linux.intel.com>
To: yocto@yoctoproject.org
Date: Wed,  5 Jul 2017 11:08:41 -0700
Message-Id: <20170705180842.33124-1-stephano.cetola@linux.intel.com>
X-Mailer: git-send-email 2.13.2
Subject: [yocto-autobuilder][PATCH V3 0/1] better matching for refkit ci
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
X-List-Received-Date: Wed, 05 Jul 2017 18:09:26 -0000

Updates since V2:
match the first line and remove the variable name, rather than skipping the
first line. Also, removed some backslashes and submitted the correct patch
rather than resubmitting the old patch again.

fixes [YOCTO #11720]

Stephano Cetola (1):
  ScrapeTargets.py: improve target search algorithm

 .../site-packages/autobuilder/buildsteps/ScrapeTargets.py     | 11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

-- 
2.13.2


