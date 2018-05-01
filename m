Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 64864E00C59; Mon, 30 Apr 2018 19:24:20 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D2A38E00C44
	for <yocto@yoctoproject.org>; Mon, 30 Apr 2018 19:24:18 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
	by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	30 Apr 2018 19:24:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.49,349,1520924400"; d="scan'208";a="224709026"
Received: from xiaopen1-mobl.ccr.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.249.65.55])
	by fmsmga005.fm.intel.com with ESMTP; 30 Apr 2018 19:24:11 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue,  1 May 2018 14:23:29 +1200
Message-Id: <cover.1525139239.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 2.14.3
MIME-Version: 1.0
Subject: [layerindex-web][PATCH 000/242] Integrate and improve Recipe Reporting System (cover letter only)
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
X-List-Received-Date: Tue, 01 May 2018 02:24:20 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

The Recipe Reporting System (RRS - live instance at
http://recipes.yoctoproject.org) was originally developed as a fork of
the layer index (live instance at http://layers.openembedded.org) - this
set of changes rebases it on top of master and makes the functionality
possible to activate for other layers. I've introduced the concept of a
"Maintenance Plan" to tie together the recipe maintenance information
for one or more layers and used it to replace all the parts that assumed
Poky or OE-Core were the repositories/layers being tracked. I've also
made it possible again for the application to gather data going back to
1.6 across the python 2/3 divide, and made various cleanups and
optimisations in the code.

Along the way I have added some capabilities to the layer index that the
RRS makes use of, including source URL and patch tracking. These were
re-implemented with a more detailed structure rather than using what had
been done in the rrs branch previously. The patch tracking will import
patch upstream status, and the RRS can present some simple graphs using
the data.

There are quite a lot of patches in this patchset, thus I have sent the
cover letter only. The first part consists of rebased commits from the
rrs branch, mostly untouched; then my changes follow. The RRS remains a
separate logical application which is disabled by default in settings.py
 - see README.rrs for setup instructions.


The following changes since commit b4cfb049d9fda7fe82f97f8532abdb7272cf0a76:

  requirements.txt: bump Django and other dependency versions (2018-05-01 10:10:21 +1200)

are available in the Git repository at:

  git://git.yoctoproject.org/layerindex-web paule/rrs-rebase
  http://git.yoctoproject.org/cgit.cgi//log/?h=paule/rrs-rebase

Aníbal Limón (120):
  rrs: Add application
  rrs: Add README.rrs to help in setup.
  rrs: Add milestone selection bar for recipes and milestone.
  rrs: Add support for store RecipeUpstreamHistory
  rrs: Add initial support of recipes page
  rrs: Recipes add url validation
  rrs: Add support for Recipe detail page
  rrs: Recipes page improve table display
  rrs: Add support for filter in recipes page.
  README.rrs: Add instruction for serve static content in development
  rrs: Add support for Recipe maintainership history
  rrs/models.py: fix RecipeMaintainerHistory get_by_end_date.
  rrs: RecipeDetail view fix
  rrs/views.py: Recipes modularize improve milestone statistics
  rrs: Add Maintainer statistics page.
  rrs: Recipes when upstream_status is Downgrade display as Unknown
  templates/rrs/maintainers.html: Change the link from maintainer ownership from name to assigned recipes.
  rrs: Maintainers add support for display statistics of recipe upgrades by week in Milestone.
  rrs: Now display recipes when not found upstream info.
  rrs: Frontend improvments
  rrs/fixtures/initial_data.json: Improve Milestone names.
  rrs: Add support for display Can't be updated recipe upstream status.
  rrs: Improve recipes filtering
  rrs: Maintainers page fix maintainer count
  rrs: Maintainer statistics frontend improvments
  templates/rrs/recipes.html: Add button for search
  rrs: Add support to display version by Milestone based on RecipeUpgrade's
  rrs: Recipes don't display if don't exit in Milestone
  rrs: Add support for Release
  rrs: Add support for export Recipes reports by Release/Milestone
  rrs/fixtures/initial_data.json: Fix end_date of 1.8All Milestone
  rrs: Maintainers add support for display Milestone intervals
  rrs: Add missing __init__.py in migrations
  templates/rrs/{recipes, maintainers}.html: Improvment in alert div no records
  rrs/models.py: RecipeMaintainerHistory if not found return the first record
  rrs/views.py: Now if a recipe have history but not upstream info set to Unknown state.
  rrs: Frontend improvments
  rrs: Recipes frontend improvments clean search when select filter
  rrs: Add support to display sort status Recipes and Maintainers UI
  rrs: Add img assets used to display sort status
  templates/rrs/base_toplevel.html: Remove Recipes word in statistics bar
  rrs: Add support to display no update reason
  rrs: UI add clear search button in Recipes and Maintainers
  rrs: Maintainers statistics fixed sorting of weeks
  rrs: Release/Milestone improvments
  rrs/views.py: Recipes remove unnedded extra_url_params
  templates/rrs/recipes.html: Fix url params in JS
  templates/rrs/recipes.html: Only apply sort to Recipe column at load
  rrs/fixtures/initial_data.json: Update dates from Release/Milestone
  rrs: RecipeDetail show milestone instead of all in upgrades table
  templates/rrs: Recipes and Maintainers UI search improvments
  rrs: Add wsgi file for serve with gunicorn
  rrs: Add database indexes in models.py
  rrs: Add missing date indexes in RecipeUpstreamHistory
  rrs: Update uitablefilter
  README.rrs: Add Maintaince infomation
  requirements: Add tabular.
  conf/local.conf: Add RRS configuration commented.
  rrs: jquery.tablesorter.js remove ^M characters.
  rrs/tools/common.py: Add library with common functionality.
  rrs/tools: Add recipe maintainer history script.
  rrs/models.py: RecipeUpgrade fix selection by milestone.
  rrs/tools/common.py: Add get_pv_type function.
  rrs/tools/rrs_unique_recipes.py: Add script for filter recipes.
  rrs/tools/rrs_upgrade_history.py: Add script for update the recipe upgrades history.
  rrs/tools/rrs_: Reorder imports.
  rrs/tools: Add script for send email to maintainers.
  rrs/tools/rrs_unique_recipes.py: Remove wrong info at top comment.
  rrs/tools/common.py: Add load_recipes function.
  rrs/tools/rrs_upgrade_history.py: Improve version detection.
  rrs/tools/common.py: Add get_logger function.
  rrs/tools/rrs_unique_recipes.py: Change to use get_logger from common.
  rrs/tools/common.py: Handle exception when load_recipes caused by expand PV variable.
  rrs/tools/rrs_upgrade_history.py: Only run upgrade detection when detect recipe files in commit.
  rrs/tools: Change to use get_logger from common.
  rrs/tools/rrs_unique_recipes.py: Also filter -source recipes.
  rrs/tools.py: Create standalone get_recipe_pv_without_srcpv function.
  rrs/tools/common.py: Add import of FetchError and display parse errors
  rrs/tools/rrs_upgrade_history.py: WORKAROUND Run recipe parse as different proccess.
  settings.py: Add TOOLS_LOG_DIR for store RRS logs.
  rrs/tools/rrs_unique_recipes.py: Now only filter same pn recipes.
  rrs/views.py: RecipeList always use recipe from Recipe upgrades.
  rrs/tools/rrs_upstream_history.py: Add recipe upstream script.
  rrs/tools: Remove call to tinfoil shutdown method.
  rrs/tools: Convert unicode strings from Django models to strings.
  rrs/tools/rrs_upstream_history.py: Remove unneeded histroy save at end.
  rrs/tools: Add rrs_distros script.
  README.rrs: Updated update scripts section with new ones.
  rrs/tools/rrs_maintainer_history.py: Set new recipes to No maintainer if don't have
  rrs/views.py: RecipeListView always use recipes from history.
  rrs/tools/rrs_upgrade_history.py: Don't take into account git recipes without versioning.
  rrs/tools: Add daily_run.sh script for provide updates.
  rrs: Fix last updated.
  rrs/tools: get_recipe_pv_without_srcrev add support for discard prefixes
  rrs/tools: UpstreamHistory only load current recipe files.
  rrs_upstream_history.py: Use regexes in SPECIAL_PKGSUFFIX packages
  templates/rrs/recipes.html: Re-add the sort property into Maintainer.
  rrs_upstream_history.py: Fix use regexes in packages
  rrs/urls.py: Disable permanent (301) redirection on main view.
  rrs/recipes: Add support for persist search and filters.
  rrs/tools/rrs_upstream_email.py: Update message to point recipe file instead of deprecated upstream tracking file.
  rrs: Fix frontpage redirect
  tools/rrs_distros.py: Fix distro_check.create_distro_packages_list call
  rrs/tools/rrs_maintainer_history.py: Update to point new meta-poky repository.
  rrs: Frontend update to work with Python3 and django
  layerindex,rrs: Minor changes to work with python3.
  rrs/tools/common.py: common_setup() Add layerindex to the path.
  rrs/tools/rrs_upgrade_history.py: Fix import of split_recipe_fn
  rrs/tools/common.py: When load a recipe use tinfoil cache
  templates/rrs/recipedetail.html: Fix unneeded quotes in url call
  rrs/tools: Upgrade to use transaction.atomic() in Django 1.6
  rrs/tools: Upgrade to use new API of tinfoil
  rrs/tools/common.py: Fix typo when load recipes
  rrs/tools/rrs_upgrade_history.py: Remove mp process related code
  rrs/tools/rrs_distros.py: Don't open files in binary mode
  rrs/tools/rrs_upstream_history.py: Disable threads due to new tinfoil API
  rrs/views.py: When export to csv use release_milestone.csv
  templates/rrs/recipedetail.html: Change Maintainer to Committer
  rrs/tools/rrs_upstream_history.py: Change regex variables to tuple
  rrs/tools/rrs_{distros,upstream_history}: Add path for poky meta lib

Belen Barros Pena (7):
  readme: add missing instruction
  Remove milestone name from recipe details page
  rrs: Set of UI improvments
  rrs: remove sorting from the 'No update reason' column
  rrs: avoid too many columns in the recipes table
  Update tool URL in status email
  Show the 'Upstream version' column only when relevant

Mariano Lopez (21):
  rrs/views.py: Fix exception in Maintainer view
  templates/rrs/maintainers.html: Added total row at the end of the table.
  templates/rrs/maintainers.html: Added links to recipe page.
  rrs/static/css/rrs-additional.css: Added formating to the table footer.
  views.py: Added validation in recipe detail
  rrs/models.py: Added raw SQL calls
  rrs/views.py: Changed ORM to raw SQL calls
  views.py: Add how long a recipe hasn't been updated
  views.py: Fix version in current milestone
  views.py: Fix current up to date percentage
  models.py: Added Raw SQL for percentage updated
  views.py: Changed the behavior of percentage done
  base_toplevel.html: Changed format of percentage done
  views.py: Changed date format to iso
  recipes.html: Add Last Updated column
  models.py: Code cleanup
  views.py: Show last updated date for all recipes
  rrs-additional.css: Added min-width to last update column
  recipes.html: Format change for last updated column
  rrs/views.py: Added percentages for navbar
  rrs/base_toplevel.html: Navbar redesign
  rrs/views: Fix mismatch in summary and recipe list

Paul Eggleton (94):
  layerindex: Add support for rrs in settings.py and urls.py
  about: add RRS contributors
  rrs/models: move Raw class to views.py
  rrs/tools/rrs_unique_recipes: drop
  Drop "load url from future"
  Rename RRS URLs to have rrs_ prefix
  Use this layer index's URL for layer branch
  rrs/tools: add dry-run option to each script
  rrs: drop old migrations
  rrs: add initial migration
  rrs: add maintenance plans
  rrs: add Release link to MaintenancePlan
  rrs: show full name in admin
  rrs/tools: avoid unnecessary checkouts
  rrs_upgrade_history.py: add maintenance plan handling
  rrs: fix model string representations for Python 3
  utils: decode command output in runcmd() as UTF-8
  rrs/tools/common.py: import sys/os at top
  rrs_maintainer_history.py: support maintenance plans and remove poky hardcoding
  rrs_upstream_history.py: drop threading
  rrs_upstream_history.py: support maintenance plans and remove poky hardcoding
  rrs_upgrade_history: drop unused import
  rrs_upstream_history: properly handle missing Recipe
  rrs/tools: print debug message when parsing recipes
  rrs_distros: support maintenance plans and remove poky hardcoding
  rrs/tools: drop update_repo()
  rrs/models: add fields for more flexible email handling
  rrs_upstream_email: rework
  rrs_upstream_email: Adapt to template rendering API change
  rrs: handle maintenance plans in views
  rrs/models: handle All missing in milestones
  rrs/views: fix case in table names
  rrs/views: fix SQL parameter in get_reup_by_last_updated()
  rrs: replace fixtures with initial data migration
  rrs: add maintenance plan selection
  rrs: use default milestone instead of "All" for release drop-down
  Add link to maintenance plan in layer detail
  rrs: handle dependency field differences
  rrs: add titles to maintainers/recipes page
  rrs: add breadcrumb to recipe detail page
  rrs/tools: run all tools scripts with python3
  Move run_command_interruptible() to utils
  rrs_upgrade_history.py: enable to work across python2/3 versions
  rrs_upgrade_history.py: ensure we shut down tinfoil safely
  common: ensure we pass a string to loadDataFull()
  rrs_upgrade_history: add a --fullreload option
  rrs_upgrade_history: handle multiple recipes with same pn per layer
  rrs_upgrade_history: use date/commit of last recipe upgrade import
  rrs_upstream_history: use try...finally to ensure tinfoil is shut down
  rrs_upgrade_history: only look at commits that actually change recipes
  rrs/tools: use layer index lock
  rrs_upgrade_history: handle broken version numbers
  rrs_upgrade_history: show text of any exception that blocks parsing
  rrs_upgrade_history: ignore files outside of the layer
  rrs_upgrade_history: Add debug option to process specific commit
  README.rrs: update
  rrs/tools: ensure recipe parsing code deletes temporary dir
  rrs_upgrade_history: handle only .inc file changing
  rrs_upgrade_history: drop final clean
  rrs_maintainer_history: add --fullreload option
  rrs_maintainer_history: avoid unnecessary checkouts
  Replace mimetype with content_type
  rrs: handle linking maintainership
  rrs: Add link to layer detail to breadcrumb on recipe detail
  Add a link from the Tools drop-down to the RRS if enabled
  admin: use more dynamic method of setting recipe read-only fields
  Save recipe source URLs
  rrs: support new source structure in recipe detail
  Implement layer web repo commit URL
  models: implement layerindex method to get recursive dependencies
  Fix layer description not wrapping properly
  utils: add common function to check out a specific git revision
  rrs_upgrade_history: improve checkout logic
  Turn URLs into links in layer notes
  rrs: restore full-width pages
  Implement patch tracking
  rrs: add patch listing to recipe list and detail
  rrs: add charts page
  rrs: releases should be unique by plan and name, not just name
  rrs: default python2/3 environments for new maintenance plan layer branches
  rrs: duplicate releases from first plan when adding a new plan
  rrs: improve admin for Release/Milestone objects
  rrs/tools: add -p/--plan option
  rrs: drop a couple of unused functions from Raw class
  rrs: link maintenance/upstream history to layerbranch
  rrs/urls: Use new urlpatterns list syntax
  templates/rrs: replace use of = with ==
  rrs: validate that a layerbranch is only part of one plan
  rrs_upgrade_history: skip commits that don't touch the layer
  rrs_upstream_history: make more robust
  rrs: add flag to MaintenancePlan to specify layer-wide maintainers
  rrs: admin: validate that email address fields are set
  rrs: fix unique constraint on RecipeMaintainerHistory sha1 field
  TODO: add RRS items

 README.rrs                                         |   61 ++
 TODO                                               |   19 +
 conf/local.conf                                    |    7 +
 layerindex/admin.py                                |   19 +-
 layerindex/context_processors.py                   |    4 +-
 layerindex/forms.py                                |    9 +-
 layerindex/migrations/0011_source.py               |   22 +
 .../migrations/0012_layeritem_vcs_commit_url.py    |   37 +
 layerindex/migrations/0013_patch.py                |   28 +
 layerindex/models.py                               |   82 ++
 layerindex/recipeparse.py                          |    6 +-
 layerindex/static/css/additional.css               |    1 +
 layerindex/tools/import_layer.py                   |   10 +-
 layerindex/tools/import_wiki_layers.py             |   11 +-
 layerindex/update.py                               |   35 +-
 layerindex/update_layer.py                         |   98 +-
 layerindex/utils.py                                |   63 +-
 layerindex/views.py                                |    7 +-
 rrs/__init__.py                                    |    2 +
 rrs/admin.py                                       |  186 ++++
 rrs/apps.py                                        |    6 +
 rrs/context_processors.py                          |   19 +
 rrs/migrations/0001_initial.py                     |  337 +++++++
 rrs/migrations/0002_maintenanceplan.py             |   33 +
 rrs/migrations/0003_release_plan.py                |   19 +
 rrs/migrations/0004_maint_plan_default.py          |   39 +
 rrs/migrations/0005_release_plan_nonnull.py        |   19 +
 rrs/migrations/0006_maintplan_email.py             |   41 +
 rrs/migrations/0007_python23.py                    |   31 +
 rrs/migrations/0008_upgrade_info.py                |   24 +
 rrs/migrations/0009_rmh_layerbranch.py             |   20 +
 rrs/migrations/0010_recipemaintenancelink.py       |   40 +
 rrs/migrations/0011_release_name_unique.py         |   23 +
 rrs/migrations/0012_reup_layerbranch_field.py      |   19 +
 rrs/migrations/0013_reup_layerbranch_populate.py   |   29 +
 rrs/migrations/0014_reup_layerbranch_nonnull.py    |   19 +
 rrs/migrations/0015_rmh_layerbranch_populate.py    |   29 +
 rrs/migrations/0016_rmh_layerbranch_nonnull.py     |   19 +
 .../0017_maintenanceplan_maintainer_style.py       |   20 +
 rrs/migrations/0018_rmh_unique.py                  |   25 +
 rrs/migrations/__init__.py                         |    0
 rrs/models.py                                      |  453 +++++++++
 rrs/static/css/rrs-additional.css                  |  125 +++
 rrs/static/img/small.gif                           |  Bin 0 -> 60 bytes
 rrs/static/img/small_asc.gif                       |  Bin 0 -> 53 bytes
 rrs/static/img/small_desc.gif                      |  Bin 0 -> 53 bytes
 rrs/static/js/jquery.tablesorter.js                | 1031 ++++++++++++++++++++
 rrs/static/js/uitablefilter.js                     |  117 +++
 rrs/tools/common.py                                |  154 +++
 rrs/tools/daily_run.sh                             |   16 +
 rrs/tools/rrs_distros.py                           |  162 +++
 rrs/tools/rrs_maintainer_history.py                |  234 +++++
 rrs/tools/rrs_upgrade_history.py                   |  230 +++++
 rrs/tools/rrs_upstream_email.py                    |  187 ++++
 rrs/tools/rrs_upstream_history.py                  |  236 +++++
 rrs/tools/upgrade_history_internal.py              |  295 ++++++
 rrs/urls.py                                        |   33 +
 rrs/views.py                                       |  939 ++++++++++++++++++
 rrs/wsgi.py                                        |    6 +
 settings.py                                        |    3 +
 templates/base.html                                |    5 +-
 templates/layerindex/about.html                    |    3 +
 templates/layerindex/detail.html                   |   15 +-
 templates/layerindex/editlayer.html                |   14 +
 templates/layerindex/recipedetail.html             |   22 +
 templates/rrs/base_toplevel.html                   |  148 +++
 templates/rrs/maintainers.html                     |  265 +++++
 templates/rrs/recipedetail.html                    |  233 +++++
 templates/rrs/recipes.html                         |  353 +++++++
 templates/rrs/report_email.txt                     |   26 +
 templates/rrs/rrs_stats.html                       |   48 +
 urls.py                                            |   10 +
 72 files changed, 6810 insertions(+), 71 deletions(-)
 create mode 100644 README.rrs
 create mode 100644 layerindex/migrations/0011_source.py
 create mode 100644 layerindex/migrations/0012_layeritem_vcs_commit_url.py
 create mode 100644 layerindex/migrations/0013_patch.py
 create mode 100644 rrs/__init__.py
 create mode 100644 rrs/admin.py
 create mode 100644 rrs/apps.py
 create mode 100644 rrs/context_processors.py
 create mode 100644 rrs/migrations/0001_initial.py
 create mode 100644 rrs/migrations/0002_maintenanceplan.py
 create mode 100644 rrs/migrations/0003_release_plan.py
 create mode 100644 rrs/migrations/0004_maint_plan_default.py
 create mode 100644 rrs/migrations/0005_release_plan_nonnull.py
 create mode 100644 rrs/migrations/0006_maintplan_email.py
 create mode 100644 rrs/migrations/0007_python23.py
 create mode 100644 rrs/migrations/0008_upgrade_info.py
 create mode 100644 rrs/migrations/0009_rmh_layerbranch.py
 create mode 100644 rrs/migrations/0010_recipemaintenancelink.py
 create mode 100644 rrs/migrations/0011_release_name_unique.py
 create mode 100644 rrs/migrations/0012_reup_layerbranch_field.py
 create mode 100644 rrs/migrations/0013_reup_layerbranch_populate.py
 create mode 100644 rrs/migrations/0014_reup_layerbranch_nonnull.py
 create mode 100644 rrs/migrations/0015_rmh_layerbranch_populate.py
 create mode 100644 rrs/migrations/0016_rmh_layerbranch_nonnull.py
 create mode 100644 rrs/migrations/0017_maintenanceplan_maintainer_style.py
 create mode 100644 rrs/migrations/0018_rmh_unique.py
 create mode 100644 rrs/migrations/__init__.py
 create mode 100644 rrs/models.py
 create mode 100644 rrs/static/css/rrs-additional.css
 create mode 100644 rrs/static/img/small.gif
 create mode 100644 rrs/static/img/small_asc.gif
 create mode 100644 rrs/static/img/small_desc.gif
 create mode 100644 rrs/static/js/jquery.tablesorter.js
 create mode 100644 rrs/static/js/uitablefilter.js
 create mode 100644 rrs/tools/common.py
 create mode 100755 rrs/tools/daily_run.sh
 create mode 100755 rrs/tools/rrs_distros.py
 create mode 100755 rrs/tools/rrs_maintainer_history.py
 create mode 100755 rrs/tools/rrs_upgrade_history.py
 create mode 100755 rrs/tools/rrs_upstream_email.py
 create mode 100755 rrs/tools/rrs_upstream_history.py
 create mode 100644 rrs/tools/upgrade_history_internal.py
 create mode 100644 rrs/urls.py
 create mode 100644 rrs/views.py
 create mode 100644 rrs/wsgi.py
 create mode 100644 templates/rrs/base_toplevel.html
 create mode 100644 templates/rrs/maintainers.html
 create mode 100644 templates/rrs/recipedetail.html
 create mode 100644 templates/rrs/recipes.html
 create mode 100644 templates/rrs/report_email.txt
 create mode 100644 templates/rrs/rrs_stats.html

-- 
2.14.3


