Return-Path: <amanda.r.brindle@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3DFEFE00D17; Fri, 15 Dec 2017 13:07:20 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B32CEE00B48
	for <yocto@yoctoproject.org>; Fri, 15 Dec 2017 13:07:19 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	15 Dec 2017 13:07:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.45,406,1508828400"; d="scan'208";a="12681059"
Received: from arbrindl-dev.jf.intel.com ([10.7.199.57])
	by orsmga003.jf.intel.com with ESMTP; 15 Dec 2017 13:07:17 -0800
From: Amanda Brindle <amanda.r.brindle@intel.com>
To: yocto@yoctoproject.org
Date: Fri, 15 Dec 2017 13:06:40 -0800
Message-Id: <cover.1513371419.git.amanda.r.brindle@intel.com>
X-Mailer: git-send-email 2.7.4
Cc: paul.eggleton@linux.intel.com, Amanda Brindle <amanda.r.brindle@intel.com>
Subject: [layerindex-web][PATCH v3 0/1] update_layer.py: Save and show recipe dependencies
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
X-List-Received-Date: Fri, 15 Dec 2017 21:07:20 -0000

In v3, fix bug that breaks search if keyword doesn't match one or both of the dependency items.

Add a note about how dependencies may very.

Activate tooltips so we don't have to wait for them to show.

Only display PACKAGECONFIG names.

The following changes since commit a64bfed81b3827503ff825090f1fb4b94e1cd9bd:

  recipes.html: Require keyword for recipe search (2017-12-05 10:01:10 +1300)

are available in the git repository at:

  git://git.yoctoproject.org/layerindex-web abrindle/dependencies
  http://git.yoctoproject.org/cgit.cgi/layerindex-web/log/?h=abrindle/dependencies

Amanda Brindle (1):
  update_layer.py: Save and show recipe dependencies

 layerindex/admin.py                            | 20 ++++++++++-
 layerindex/migrations/0010_add_dependencies.py | 50 ++++++++++++++++++++++++++
 layerindex/models.py                           | 24 +++++++++++++
 layerindex/update_layer.py                     | 38 ++++++++++++++++++++
 layerindex/views.py                            | 17 ++++++++-
 templates/layerindex/recipedetail.html         | 41 +++++++++++++++++++++
 6 files changed, 188 insertions(+), 2 deletions(-)
 create mode 100644 layerindex/migrations/0010_add_dependencies.py

-- 
2.7.4


