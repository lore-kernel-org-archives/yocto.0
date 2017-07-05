Return-Path: <stephano.cetola@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1631DE00718; Wed,  5 Jul 2017 11:00:39 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B83FDE00349
	for <yocto@yoctoproject.org>; Wed,  5 Jul 2017 11:00:33 -0700 (PDT)
Received: from orsmga004.jf.intel.com ([10.7.209.38])
	by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	05 Jul 2017 11:00:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.40,312,1496127600"; d="scan'208";a="104753407"
Received: from pequod.jf.intel.com ([10.54.74.4])
	by orsmga004.jf.intel.com with ESMTP; 05 Jul 2017 11:00:32 -0700
From: Stephano Cetola <stephano.cetola@linux.intel.com>
To: yocto@yoctoproject.org
Date: Wed,  5 Jul 2017 10:59:46 -0700
Message-Id: <20170705175947.31830-1-stephano.cetola@linux.intel.com>
X-Mailer: git-send-email 2.13.2
Subject: [yocto-autobuilder][PATCH V2 0/1] better matching for refkit ci
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
X-List-Received-Date: Wed, 05 Jul 2017 18:00:39 -0000

Updates since V1:
match the first line and remove the variable name, rather than skipping the
first line.

fixes [YOCTO #11720]


Stephano Cetola (1):
  ScrapeTargets.py: improve target search algorithm

 .../site-packages/autobuilder/buildsteps/ScrapeTargets.py        | 9 ++++-----
 1 file changed, 4 insertions(+), 5 deletions(-)

-- 
2.13.2


