Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E820DE009C2; Mon, 13 Aug 2018 07:41:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.55.52.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1648BE006D8
	for <yocto@yoctoproject.org>; Mon, 13 Aug 2018 07:41:53 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
	by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	13 Aug 2018 07:41:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.53,233,1531810800"; d="scan'208";a="65776774"
Received: from kkurdej-mobl.ger.corp.intel.com (HELO localhost.localdomain)
	([10.252.36.13])
	by orsmga006.jf.intel.com with ESMTP; 13 Aug 2018 07:41:52 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Mon, 13 Aug 2018 16:41:04 +0200
Message-Id: <cover.1534170834.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 2.17.1
Subject: [layerindex-web][PATCH v2 00/31] Distro comparisons (cover letter only)
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
X-List-Received-Date: Mon, 13 Aug 2018 14:41:55 -0000

After running some more tests with Fedora metadata I've made the
following fixes:

- Turns out fedora golang rpms already have the processed name so we don't
  need the stuff in rpmmacros.py, so drop that
- Add missing __grep definition
- Handle unbracketed expressions e.g. %name instead of %{name}
- Handle parentheses around conditional values as some spec files use
  these
- Support %undefine
- Fix logic for marking recipes as deleted, since pn might be different
  than the name we got from the spec file name
- Drop unused excludevalues parameter to expand() inner function


The following changes since commit fca74f3ac3c6536c50cb0a518fe78447a284dc55:

  Update TODO list (2018-08-06 12:36:31 +0200)

are available in the Git repository at:

  git://git.yoctoproject.org/layerindex-web paule/otherdistro
  http://git.yoctoproject.org/cgit.cgi/layerindex-web/log/?h=paule/otherdistro

Paul Eggleton (31):
  forms: clear out comparison recipe/layerbranch if status doesn't
    accept them
  Add a script to import layers from an existing layer index
  update_classic_status: fix matching on wrong layer
  Add partial path macro for vcs URL fields
  Add support for other distro comparisons
  Add script to import from other distros
  update_classic_status: update for other distro comparisons
  update_classic_status: set cover_pn from pn for direct match
  update_classic_status: use source URLs to match python/perl recipes
  update_classic_status: look for certain prefixes in order to match
  update_classic_status: add skip option
  Allow searching for uncategorised recipes in the comparison search
  Enhance filtering comparisons
  views: fix unknown categories comparison stats graph to include "Not
    available"
  Add "needs attention" flag for comparison recipes
  Add support for importing Debian package info
  Support reversed other distro recipe list / filtering
  Support selecting more than one layer in other distro comparison
    search form
  Support excluding inherited classes from other distro comparison
    reversed query
  Add basic CSV export for other distro comparisons
  Add ability to store extra URLs to be displayed for comparison recipes
  rrs: show link to other distro comparison pages
  Rename LayerItem classic field to comparison
  Fix comparison layers showing up in dependencies list in edit layer
    page
  Add ability to trigger comparison updates manually from UI
  Add script to fetch all repos under a github organisation
  Add script to fetch Fedora package sources
  Show source URLs on recipe detail page
  README: add setup info for other distro comparisons
  Add side-by-side comparison detail and enhanced selection
  Show links to include files on recipe detail

 README                                        |  82 ++-
 TODO                                          |   2 -
 layerindex/admin.py                           |   6 +
 layerindex/context_processors.py              |   4 +-
 layerindex/forms.py                           |  37 +-
 layerindex/migrations/0015_comparison.py      |  24 +
 .../migrations/0016_classicrecipe_delete.py   |  19 +
 .../0017_classicrecipe_needs_attention.py     |  19 +
 .../migrations/0018_layerrecipeextraurl.py    |  26 +
 .../0019_layeritem_classic_comparison.py      |  25 +
 layerindex/migrations/0020_update_manual.py   |  50 ++
 layerindex/models.py                          | 113 +++-
 layerindex/static/css/additional.css          |  20 +
 layerindex/tasks.py                           |  23 +
 layerindex/templatetags/extrafilters.py       |  35 +
 layerindex/tools/fedora-fetch.py              | 170 +++++
 layerindex/tools/github-fetch.py              | 135 ++++
 layerindex/tools/import_classic.py            |   2 +-
 layerindex/tools/import_classic_wiki.py       |   2 +-
 layerindex/tools/import_layers.py             | 251 ++++++++
 layerindex/tools/import_otherdistro.py        | 605 ++++++++++++++++++
 layerindex/tools/update_classic_status.py     | 187 +++++-
 layerindex/update.py                          |   8 +-
 layerindex/urls.py                            |  48 +-
 layerindex/urls_branch.py                     |   5 +-
 layerindex/utils.py                           |   3 +
 layerindex/views.py                           | 502 ++++++++++++++-
 templates/base.html                           |   2 +
 templates/base_toplevel.html                  |  16 +-
 templates/layerindex/classchecklist.html      |  21 +
 templates/layerindex/classic_base.html        |  33 +-
 templates/layerindex/classicrecipedetail.html | 184 ++----
 templates/layerindex/classicrecipes.html      | 324 +++++++++-
 templates/layerindex/classicrecipes_csv.txt   |   2 +
 templates/layerindex/classicstats.html        |  16 +-
 .../layerindex/comparisonrecipebase.html      | 229 +++++++
 .../layerindex/comparisonrecipeselect.html    | 119 ++++
 .../comparisonrecipeselectdetail.html         |  98 +++
 templates/layerindex/layerchecklist.html      |  21 +
 templates/layerindex/recipedetail.html        |  29 +
 templates/layerindex/task.html                |  47 ++
 templates/layerindex/updatedetail.html        |   9 +
 templates/layerindex/updatelist.html          |   3 +-
 templates/rrs/recipedetail.html               |  13 +-
 44 files changed, 3284 insertions(+), 285 deletions(-)
 create mode 100644 layerindex/migrations/0015_comparison.py
 create mode 100644 layerindex/migrations/0016_classicrecipe_delete.py
 create mode 100644 layerindex/migrations/0017_classicrecipe_needs_attention.py
 create mode 100644 layerindex/migrations/0018_layerrecipeextraurl.py
 create mode 100644 layerindex/migrations/0019_layeritem_classic_comparison.py
 create mode 100644 layerindex/migrations/0020_update_manual.py
 create mode 100644 layerindex/templatetags/extrafilters.py
 create mode 100755 layerindex/tools/fedora-fetch.py
 create mode 100755 layerindex/tools/github-fetch.py
 create mode 100755 layerindex/tools/import_layers.py
 create mode 100755 layerindex/tools/import_otherdistro.py
 create mode 100644 templates/layerindex/classchecklist.html
 create mode 100644 templates/layerindex/classicrecipes_csv.txt
 create mode 100644 templates/layerindex/comparisonrecipebase.html
 create mode 100644 templates/layerindex/comparisonrecipeselect.html
 create mode 100644 templates/layerindex/comparisonrecipeselectdetail.html
 create mode 100644 templates/layerindex/layerchecklist.html
 create mode 100644 templates/layerindex/task.html

-- 
2.17.1


