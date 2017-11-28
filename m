Return-Path: <amanda.r.brindle@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B2660E00C0E; Mon, 27 Nov 2017 16:34:07 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9DE22E00B1E
	for <yocto@yoctoproject.org>; Mon, 27 Nov 2017 16:34:06 -0800 (PST)
Received: from orsmga005.jf.intel.com ([10.7.209.41])
	by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	27 Nov 2017 16:34:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.44,466,1505804400"; d="scan'208";a="178500310"
Received: from arbrindl-dev.jf.intel.com ([10.7.199.57])
	by orsmga005.jf.intel.com with ESMTP; 27 Nov 2017 16:34:05 -0800
From: Amanda Brindle <amanda.r.brindle@intel.com>
To: yocto@yoctoproject.org
Date: Mon, 27 Nov 2017 16:33:21 -0800
Message-Id: <cover.1511828935.git.amanda.r.brindle@intel.com>
X-Mailer: git-send-email 2.7.4
Cc: paul.eggleton@linux.intel.com, Amanda Brindle <amanda.r.brindle@intel.com>
Subject: [layerindex-web 0/1] update_layer.py: Save and show recipe dependencies
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
X-List-Received-Date: Tue, 28 Nov 2017 00:34:07 -0000

The following changes since commit 78c2561181f07b1c39f1dc3516a9110a39d874f2:

  templates/layerindex/classes.html: Add bbclass search (2017-11-07 16:54:46 +1300)

are available in the git repository at:

  git://git.yoctoproject.org/layerindex-web abrindle/dependencies
  http://git.yoctoproject.org/cgit.cgi/layerindex-web/log/?h=abrindle/dependencies

Amanda Brindle (1):
  update_layer.py: Save and show recipe dependencies

 layerindex/admin.py                    | 20 +++++++++++++++++-
 layerindex/models.py                   | 24 +++++++++++++++++++++
 layerindex/update_layer.py             | 38 ++++++++++++++++++++++++++++++++++
 layerindex/views.py                    | 11 +++++++++-
 templates/layerindex/recipedetail.html | 33 +++++++++++++++++++++++++++++
 5 files changed, 124 insertions(+), 2 deletions(-)

-- 
2.7.4


