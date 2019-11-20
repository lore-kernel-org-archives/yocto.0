Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 49DCAE00E2F; Wed, 20 Nov 2019 05:59:18 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at https://www.dnswl.org/,
	high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 53D11E00E13
	for <yocto@yoctoproject.org>; Wed, 20 Nov 2019 05:59:15 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
	by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	20 Nov 2019 05:59:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,222,1571727600"; d="scan'208";a="196860299"
Received: from joshkche-mobl.gar.corp.intel.com (HELO shodan.fritz.box)
	([10.255.167.107])
	by orsmga007.jf.intel.com with ESMTP; 20 Nov 2019 05:59:12 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Thu, 21 Nov 2019 02:58:24 +1300
Message-Id: <cover.1574257954.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [layerindex-web][PATCH 00/29] RRS: rework upgrade history collection [cover letter only]
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
X-List-Received-Date: Wed, 20 Nov 2019 13:59:18 -0000
Content-Transfer-Encoding: 8bit

Taking a hard look at the recipe upgrade functionality, there were a
number of shortcomings in how the data was collected which led to
upgrades being missed, history disappearing when recipes were removed or
renamed and scenarios such as multiple recipes with the same name not being
handled correctly. This patchset introduces the concept of a RecipeSymbol
(acting as an umbrella for RRS records for the same named recipe but
independent of actual Recipe records which may be transient) and also
fixes a number of issues in the upgrade data collection for much greater
accuracy.


The following changes since commit 50fc6780e022a95b452fdb6f57b4e1c6b37084f2:

  requirements.txt: bump a couple more versions (2019-10-29 10:22:59 +1300)

are available in the Git repository at:

  git://git.yoctoproject.org/layerindex-web paule/recipesymbol
  http://git.yoctoproject.org/cgit.cgi/layerindex-web/log/?h=paule/recipesymbol

Paul Eggleton (29):
  RRS: collect history independent of current recipes
  RRS: Add deleted recipe handling
  RRS: use more robust RFC2822 date conversion
  RRS: skip problematic OE-Core commits (when a dependency)
  RRS: handle downgrades
  RRS: use more robust method of getting last upgrade record
  rrs_upgrade_history: record start marker in log file
  RRS: handle recipe moves without overwriting data
  RRS: support grouping upgrades by version for multi-version recipes
  RRS: use RecipeUpgradeGroup to determine downgrades
  RRS: detect PN changing without move
  rrs_upgrade_history: implement file path filtering
  RRS: record previous version
  rrs_upgrade_history: add stop commit option
  RRS: fixup handling of upgrades where recipe moved to inc
  RRS: fix some more bad OE-Core commits
  RRS: ensure upgrades recorded at exact same time are correctly ordered
  RRS: avoid historical parsing bug in bitbake
  recipeparse: handle recipes at root of repository
  RRS: handle when recipes get deleted and later re-added
  RRS: exclude lib/ subdirectory of layers to avoid picking up templates
  RRS: ensure default URLs for release/milestone are the latest
  RRS: detect changes in SRCREV as upgrades
  RRS: Add tool to dump upgrades
  RRS: enable grouping recipe upgrades by license
  RRS: Handle two versions added on same day then later one deleted
  Add recipe dependencies tool
  RRS: do not ignore non-numeric characters in versions
  TODO: add some more tasks

 TODO                                          |  16 +
 layerindex/admin.py                           |   1 +
 layerindex/forms.py                           |  13 +
 .../migrations/0044_extendedprovides.py       |  46 ++
 layerindex/models.py                          |   8 +
 layerindex/recipeparse.py                     |  19 +-
 layerindex/update_layer.py                    |   2 +
 layerindex/urls.py                            |   6 +-
 layerindex/views.py                           | 116 ++++-
 rrs/admin.py                                  |  26 +-
 rrs/migrations/0020_recipesymbol_initial.py   |  63 +++
 rrs/migrations/0021_recipesymbol_nonnull.py   |  31 ++
 rrs/migrations/0022_recipesymbol_finish.py    |  27 ++
 rrs/migrations/0023_recipeupgrade_deleted.py  |  25 +
 .../0024_recipeupgrade_downgrade.py           |  20 +
 rrs/migrations/0025_recipeupgrade_move.py     |  25 +
 rrs/migrations/0026_recipeupgrade_grouping.py |  39 ++
 .../0027_recipeupgrade_prev_version.py        |  20 +
 rrs/migrations/0028_recipeupgrade_srcrev.py   |  20 +
 rrs/migrations/0029_rrs_license_group.py      |  44 ++
 rrs/models.py                                 | 145 +++++-
 rrs/tools/common.py                           |  12 +-
 rrs/tools/dump_upgrades.py                    |  89 ++++
 rrs/tools/rrs_maintainer_history.py           |  32 +-
 rrs/tools/rrs_upgrade_history.py              |  68 ++-
 rrs/tools/rrs_upstream_history.py             |  36 +-
 rrs/tools/upgrade_history_internal.py         | 431 +++++++++++++++---
 rrs/views.py                                  | 177 ++++---
 templates/base.html                           |   1 +
 templates/layerindex/recipedeps.html          | 209 +++++++++
 templates/rrs/recipedetail.html               |  27 +-
 31 files changed, 1598 insertions(+), 196 deletions(-)
 create mode 100644 layerindex/migrations/0044_extendedprovides.py
 create mode 100644 rrs/migrations/0020_recipesymbol_initial.py
 create mode 100644 rrs/migrations/0021_recipesymbol_nonnull.py
 create mode 100644 rrs/migrations/0022_recipesymbol_finish.py
 create mode 100644 rrs/migrations/0023_recipeupgrade_deleted.py
 create mode 100644 rrs/migrations/0024_recipeupgrade_downgrade.py
 create mode 100644 rrs/migrations/0025_recipeupgrade_move.py
 create mode 100644 rrs/migrations/0026_recipeupgrade_grouping.py
 create mode 100644 rrs/migrations/0027_recipeupgrade_prev_version.py
 create mode 100644 rrs/migrations/0028_recipeupgrade_srcrev.py
 create mode 100644 rrs/migrations/0029_rrs_license_group.py
 create mode 100755 rrs/tools/dump_upgrades.py
 create mode 100644 templates/layerindex/recipedeps.html

-- 
2.20.1


