Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5B873E00D67; Tue, 16 Jul 2019 16:41:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [134.134.136.100 listed in list.dnswl.org]
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CE406E00D46
	for <yocto@yoctoproject.org>; Tue, 16 Jul 2019 16:41:50 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
	by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	16 Jul 2019 16:41:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,272,1559545200"; d="scan'208";a="158289965"
Received: from vbui1-mobl2.ccr.corp.intel.com (HELO localhost.localdomain)
	([10.255.186.12])
	by orsmga007.jf.intel.com with ESMTP; 16 Jul 2019 16:41:45 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Wed, 17 Jul 2019 11:41:25 +1200
Message-Id: <cover.1563320190.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [layerindex-web][PATCH 0/7] Recipe reporting system fixes (cover letter only)
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
X-List-Received-Date: Tue, 16 Jul 2019 23:41:51 -0000
Content-Transfer-Encoding: 8bit

A bunch of fixes mostly for the Recipe Reporting System (RRS) part of
the layer index. In particular, 5/7 fixes the RRS for layers in
meta-openembedded.


The following changes since commit ce5141fc39b2b171383fca002b2bc5cf082b31f4:

  RRS: add tool to import/export upstream history data (2019-02-14 10:05:53 +1300)

are available in the Git repository at:

  git://git.yoctoproject.org/layerindex-web paule/fixes13
  http://git.yoctoproject.org/cgit.cgi/layerindex-web/log/?h=paule/fixes13

Paul Eggleton (7):
  Split out patch status read to a method on the Patch model
  Record patch application order and use as default sorting
  Add admin handling for Patch objects
  RRS: Fix raw SQL statements to use parameters
  RRS: fix showing all recipes for multi-layer maintenance plans
  RRS: move Export button and restore Tools drop-down menu
  RRS: add missing migration

 layerindex/admin.py                           |  11 +-
 .../migrations/0027_patch_apply_order.py      |  24 +++
 layerindex/models.py                          |  31 ++++
 layerindex/tools/import_otherdistro.py        |   5 +-
 layerindex/update_layer.py                    |  34 +----
 .../0019_maintplan_admin_delete_null.py       |  22 +++
 rrs/views.py                                  | 143 +++++++++---------
 templates/base.html                           |   4 +
 templates/rrs/base_toplevel.html              |   5 +-
 templates/rrs/recipes.html                    |   2 +
 10 files changed, 173 insertions(+), 108 deletions(-)
 create mode 100644 layerindex/migrations/0027_patch_apply_order.py
 create mode 100644 rrs/migrations/0019_maintplan_admin_delete_null.py

-- 
2.20.1


