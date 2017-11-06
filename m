Return-Path: <amanda.r.brindle@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3667FE00D20; Mon,  6 Nov 2017 14:22:07 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 17A4AE00C62
	for <yocto@yoctoproject.org>; Mon,  6 Nov 2017 14:22:05 -0800 (PST)
Received: from orsmga005.jf.intel.com ([10.7.209.41])
	by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	06 Nov 2017 14:22:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.44,354,1505804400"; d="scan'208";a="170134625"
Received: from arbrindl-dev.jf.intel.com ([10.7.197.61])
	by orsmga005.jf.intel.com with ESMTP; 06 Nov 2017 14:22:05 -0800
From: Amanda Brindle <amanda.r.brindle@intel.com>
To: yocto@yoctoproject.org
Date: Mon,  6 Nov 2017 14:22:12 -0800
Message-Id: <cover.1510006644.git.amanda.r.brindle@intel.com>
X-Mailer: git-send-email 2.7.4
Cc: paul.eggleton@linux.intel.com
Subject: [layerindex-web][patch v2 0/1]
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
X-List-Received-Date: Mon, 06 Nov 2017 22:22:07 -0000

Reordered the classes and distro tabs to be consistent with the tabs on the 
layer detail pages.

The following changes since commit 44386eea41a8e1bb8a3ab831613cfc1a19ff6ecd:

  querysethelper: fix searching (2017-10-31 09:58:30 +1300)

are available in the git repository at:

  git://git.yoctoproject.org/layerindex-web abrindle/bbclass_search
  http://git.yoctoproject.org/cgit.cgi/layerindex-web/log/?h=abrindle/bbclass_search

Amanda Brindle (1):
  templates/layerindex/classes.html: Add bbclass search

 layerindex/restviews.py            | 10 ++++-
 layerindex/urls.py                 |  3 ++
 layerindex/urls_branch.py          |  6 ++-
 layerindex/views.py                | 24 ++++++++++++
 templates/layerindex/classes.html  | 75 ++++++++++++++++++++++++++++++++++++++
 templates/layerindex/distros.html  |  1 +
 templates/layerindex/layers.html   |  1 +
 templates/layerindex/machines.html |  1 +
 templates/layerindex/recipes.html  |  1 +
 9 files changed, 120 insertions(+), 2 deletions(-)
 create mode 100644 templates/layerindex/classes.html

-- 
2.7.4


