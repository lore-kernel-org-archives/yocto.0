Return-Path: <amanda.r.brindle@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D4071E00CC4; Mon,  4 Dec 2017 16:17:37 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [192.55.52.120 listed in list.dnswl.org]
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 55F3FE00B48
	for <yocto@yoctoproject.org>; Mon,  4 Dec 2017 16:17:36 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	04 Dec 2017 16:17:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.45,362,1508828400"; d="scan'208";a="13061383"
Received: from arbrindl-dev.jf.intel.com ([10.7.199.57])
	by orsmga001.jf.intel.com with ESMTP; 04 Dec 2017 16:17:35 -0800
From: Amanda Brindle <amanda.r.brindle@intel.com>
To: yocto@yoctoproject.org
Date: Mon,  4 Dec 2017 16:16:47 -0800
Message-Id: <cover.1512432610.git.amanda.r.brindle@intel.com>
X-Mailer: git-send-email 2.7.4
Cc: paul.eggleton@linux.intel.com, Amanda Brindle <amanda.r.brindle@intel.com>
Subject: [layerindex-web][PATCH v2 0/1] update_layer.py: Save and show recipe dependencies
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
X-List-Received-Date: Tue, 05 Dec 2017 00:17:37 -0000

In v2, added the migration file to update the database.

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
 layerindex/views.py                            | 11 +++++-
 templates/layerindex/recipedetail.html         | 33 +++++++++++++++++
 6 files changed, 174 insertions(+), 2 deletions(-)
 create mode 100644 layerindex/migrations/0010_add_dependencies.py

-- 
2.7.4


