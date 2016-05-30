Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A5155E00C39; Sun, 29 May 2016 21:32:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 374ADE00C1F
	for <yocto@yoctoproject.org>; Sun, 29 May 2016 21:32:40 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 29 May 2016 21:32:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.26,387,1459839600"; d="scan'208";a="964884321"
Received: from jialelim-mobl.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.139.83])
	by orsmga001.jf.intel.com with ESMTP; 29 May 2016 21:32:39 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Mon, 30 May 2016 16:31:11 +1200
Message-Id: <cover.1464581354.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 2.5.5
Subject: [layerindex-web][PATCH 0/5] Layer index improvements
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
X-List-Received-Date: Mon, 30 May 2016 04:32:42 -0000

Refactor the update script to hopefully make it more robust, allow
multiple branches to be updated with one command, and fix a few other
issues.


The following changes since commit b80833e1c9d2e8d4bd15903810bc981dd3a9c19e:

  TODO: drop some completed items (2016-05-30 15:28:20 +1200)

are available in the git repository at:

  git://git.yoctoproject.org/layerindex-web paule/fixes
  http://git.yoctoproject.org/cgit.cgi/layerindex-web/log/?h=paule/fixes

Paul Eggleton (5):
  Allow blanking out field values in bulk change
  update.py: refactor into two separate scripts
  update.py: allow updating all branches with one command
  Fix listing *_git.bbappend as appends for git recipe
  Increase size of Recipe provides and license fields

 README                                             |   7 +-
 TODO                                               |   2 -
 layerindex/bulkchange.py                           |  17 +-
 layerindex/forms.py                                |  19 -
 .../0011_auto__add_field_branch_updates_enabled.py | 198 ++++++++
 ...ld_recipe_license__chg_field_recipe_provides.py | 202 ++++++++
 layerindex/models.py                               |  25 +-
 layerindex/update.py                               | 523 ++------------------
 layerindex/update_layer.py                         | 547 +++++++++++++++++++++
 layerindex/views.py                                |   5 +-
 10 files changed, 1028 insertions(+), 517 deletions(-)
 create mode 100644 layerindex/migrations/0011_auto__add_field_branch_updates_enabled.py
 create mode 100644 layerindex/migrations/0012_auto__chg_field_recipe_license__chg_field_recipe_provides.py
 create mode 100644 layerindex/update_layer.py

-- 
2.5.5


