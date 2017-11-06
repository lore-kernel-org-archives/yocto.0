Return-Path: <amanda.r.brindle@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 635FCE00D24; Mon,  6 Nov 2017 11:01:34 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CD7D6E00D1F
	for <yocto@yoctoproject.org>; Mon,  6 Nov 2017 11:01:33 -0800 (PST)
Received: from orsmga004.jf.intel.com ([10.7.209.38])
	by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	06 Nov 2017 11:01:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.44,353,1505804400"; d="scan'208";a="146587706"
Received: from arbrindl-dev.jf.intel.com ([10.7.197.61])
	by orsmga004.jf.intel.com with ESMTP; 06 Nov 2017 11:01:31 -0800
From: Amanda Brindle <amanda.r.brindle@intel.com>
To: yocto@yoctoproject.org
Date: Mon,  6 Nov 2017 11:01:08 -0800
Message-Id: <cover.1509994707.git.amanda.r.brindle@intel.com>
X-Mailer: git-send-email 2.7.4
Cc: paul.eggleton@linux.intel.com, Amanda Brindle <amanda.r.brindle@intel.com>
Subject: [layerindex-web][patch v1 0/1] recipes.html: Require keyword for recipe search
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
X-List-Received-Date: Mon, 06 Nov 2017 19:01:34 -0000

The following changes since commit 44386eea41a8e1bb8a3ab831613cfc1a19ff6ecd:

  querysethelper: fix searching (2017-10-31 09:58:30 +1300)

are available in the git repository at:

  git://git.yoctoproject.org/layerindex-web abrindle/recipe_search
  http://git.yoctoproject.org/cgit.cgi/layerindex-web/log/?h=abrindle/recipe_search

Amanda Brindle (1):
  recipes.html: Require keyword for recipe search

 layerindex/views.py                | 10 ++++++++--
 templates/layerindex/distros.html  |  3 ++-
 templates/layerindex/machines.html |  3 ++-
 templates/layerindex/recipes.html  | 17 ++++++++++++++++-
 4 files changed, 28 insertions(+), 5 deletions(-)

-- 
2.7.4


