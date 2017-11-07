Return-Path: <amanda.r.brindle@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4C67AE00CC2; Tue,  7 Nov 2017 14:31:31 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D3D69E00C82
	for <yocto@yoctoproject.org>; Tue,  7 Nov 2017 14:31:30 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	07 Nov 2017 14:31:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.44,361,1505804400"; 
   d="scan'208";a="2052307"
Received: from arbrindl-dev.jf.intel.com ([10.7.197.61])
	by orsmga001.jf.intel.com with ESMTP; 07 Nov 2017 14:31:29 -0800
From: Amanda Brindle <amanda.r.brindle@intel.com>
To: yocto@yoctoproject.org
Date: Tue,  7 Nov 2017 14:28:55 -0800
Message-Id: <cover.1510093646.git.amanda.r.brindle@intel.com>
X-Mailer: git-send-email 2.7.4
Cc: paul.eggleton@linux.intel.com, Amanda Brindle <amanda.r.brindle@intel.com>
Subject: [layerindex-web][patch v3 0/1] recipes.html: Require keyword for recipe search
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
X-List-Received-Date: Tue, 07 Nov 2017 22:31:31 -0000

For v3, updated recipes.html to use bootstrap's error state and added the browse option
for Classes.

The following changes since commit 78c2561181f07b1c39f1dc3516a9110a39d874f2:

  templates/layerindex/classes.html: Add bbclass search (2017-11-07 16:54:46 +1300)

are available in the git repository at:

  git://git.yoctoproject.org/layerindex-web abrindle/recipe_search
  http://git.yoctoproject.org/cgit.cgi/layerindex-web/log/?h=abrindle/recipe_search

Amanda Brindle (1):
  recipes.html: Require keyword for recipe search

 layerindex/views.py                | 15 ++++++++++++---
 templates/layerindex/classes.html  |  3 ++-
 templates/layerindex/distros.html  |  3 ++-
 templates/layerindex/machines.html |  3 ++-
 templates/layerindex/recipes.html  | 27 +++++++++++++++++++++------
 5 files changed, 39 insertions(+), 12 deletions(-)

-- 
2.7.4


