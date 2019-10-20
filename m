Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 581F4E00AE6; Sun, 20 Oct 2019 15:50:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [134.134.136.20 listed in list.dnswl.org]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EB38AE0097C
	for <yocto@yoctoproject.org>; Sun, 20 Oct 2019 15:50:13 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
	by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	20 Oct 2019 15:50:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,320,1566889200"; d="scan'208";a="398487173"
Received: from tchoongs-mobl.gar.corp.intel.com (HELO linux.fritz.box)
	([10.255.184.244])
	by fmsmga006.fm.intel.com with ESMTP; 20 Oct 2019 15:50:10 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Mon, 21 Oct 2019 11:49:49 +1300
Message-Id: <cover.1571611698.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [layerindex-web][PATCH 0/3] Branch comparison functionality
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
X-List-Received-Date: Sun, 20 Oct 2019 22:50:16 -0000
Content-Transfer-Encoding: 8bit

Add the ability to compare the available recipes and their versions in
two different branches, plus one unrelated patch to fix an issue I
noticed recently with cgit URLs.


The following changes since commit 1ce4a85d257ac928307ac0de6edf4cb80b50adce:

  editlayer: Be more specific on the searches (2019-10-14 09:20:33 +1300)

are available in the Git repository at:

  git://git.yoctoproject.org/layerindex-web paule/branch_comparison
  http://git.yoctoproject.org/cgit.cgi/layerindex-web/log/?h=paule/branch_comparison

Paul Eggleton (3):
  Track SRCREV for each recipe
  Add branch comparison function
  Fix cgit commit URL setting

 layerindex/forms.py                          |  19 ++
 layerindex/migrations/0043_recipe_srcrev.py  |  20 ++
 layerindex/models.py                         |   1 +
 layerindex/update_layer.py                   |   4 +
 layerindex/urls.py                           |  12 +-
 layerindex/views.py                          | 113 +++++++++-
 templates/base.html                          |   1 +
 templates/layerindex/branchcompare.html      | 214 +++++++++++++++++++
 templates/layerindex/branchcompare_plain.txt |  17 ++
 templates/layerindex/editlayer.html          |   2 +-
 templates/layerindex/recipedetail.html       |   2 +-
 11 files changed, 401 insertions(+), 4 deletions(-)
 create mode 100644 layerindex/migrations/0043_recipe_srcrev.py
 create mode 100644 templates/layerindex/branchcompare.html
 create mode 100644 templates/layerindex/branchcompare_plain.txt

-- 
2.20.1


