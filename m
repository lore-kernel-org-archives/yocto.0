Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 21E37E00CE5; Wed,  8 Jun 2016 06:20:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B215BE00CE5
	for <yocto@yoctoproject.org>; Wed,  8 Jun 2016 06:20:47 -0700 (PDT)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by fmsmga102.fm.intel.com with ESMTP; 08 Jun 2016 06:20:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.26,439,1459839600"; d="scan'208";a="824133509"
Received: from mshirsix-mobl.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.147.125])
	by orsmga003.jf.intel.com with ESMTP; 08 Jun 2016 06:20:35 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Thu,  9 Jun 2016 01:19:53 +1200
Message-Id: <cover.1465391621.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 2.5.5
Subject: [layerindex-web][PATCH v2 00/15] Layer index improvements
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
X-List-Received-Date: Wed, 08 Jun 2016 13:20:52 -0000

Refactor the update script to hopefully make it more robust, allow
multiple branches to be updated with one command, support Python 3
and Django 1.6 and fix a few other issues.

Changes since v1:
The Python 3 change hit while the original patchset was in review,
which has broken parsing of master. It's just as well I did the
refactoring of the update script, because that was critical to
allow branches requiring Python 2 and others requiring Python 3
to be able to be parsed within the same index. This new version
handles this, supports (and requires) Python 3 itself, and as a
follow on now uses Django 1.6 and updated versions of other
Django-related components, along with a few pre-emptive fixes for
Django 1.8 which I intend to upgrade to after the dust settles on
this set of changes.


The following changes since commit b80833e1c9d2e8d4bd15903810bc981dd3a9c19e:

  TODO: drop some completed items (2016-05-30 15:28:20 +1200)

are available in the git repository at:

  git://git.yoctoproject.org/layerindex-web paule/fixes
  http://git.yoctoproject.org/cgit.cgi/layerindex-web/log/?h=paule/fixes

Paul Eggleton (15):
  Allow blanking out field values in bulk change
  update.py: refactor into two separate scripts
  update.py: allow updating all branches with one command
  Fix listing *_git.bbappend as appends for git recipe
  Increase size of Recipe provides and license fields
  bulkchange: drop temp paths in multi-patch tarball
  Upgrade to Django 1.6+
  Fix for changes in modern django-reversion
  Support (and require) Python 3
  update_layer.py: rename confusing loop variables
  update_layer.py: fix handling of renames with newer GitPython
  Handle Python 2 and Python 3 branches in the same index
  Preemptive auto_now fix for Django 1.8
  update_layer.py: use new-style transaction API
  Explicitly specify temporary redirection

 README                                             |  53 +-
 TODO                                               |   2 -
 layerindex/admin.py                                |   1 +
 layerindex/bulkchange.py                           |  29 +-
 layerindex/forms.py                                |  32 +-
 .../0011_auto__add_field_branch_updates_enabled.py | 198 +++++++
 ...ld_recipe_license__chg_field_recipe_provides.py | 202 +++++++
 ...ronment__add_field_branch_update_environment.py | 218 ++++++++
 layerindex/models.py                               |  78 ++-
 layerindex/recipedesc.py                           |   4 +-
 layerindex/restviews.py                            |   4 +-
 layerindex/templatetags/addurlparameter.py         |   2 +-
 layerindex/tools/import_layer.py                   |   2 +-
 layerindex/update.py                               | 528 ++----------------
 layerindex/update_layer.py                         | 616 +++++++++++++++++++++
 layerindex/urls.py                                 |  20 +-
 layerindex/urls_branch.py                          |   5 +-
 layerindex/utils.py                                |  13 +-
 layerindex/views.py                                |  59 +-
 manage.py                                          |  20 +-
 requirements.txt                                   |  38 +-
 settings.py                                        |   2 +-
 templates/404.html                                 |   2 +-
 templates/base.html                                |  22 +-
 templates/base_toplevel.html                       |   3 +-
 templates/layerindex/about.html                    |   2 +-
 templates/layerindex/bulkchange.html               |   2 +-
 templates/layerindex/bulkchangereview.html         |   8 +-
 templates/layerindex/bulkchangesearch.html         |   8 +-
 templates/layerindex/classic_base.html             |  10 +-
 templates/layerindex/classicrecipedetail.html      |   2 +-
 templates/layerindex/classicrecipes.html           |  10 +-
 templates/layerindex/classicstats.html             |   4 +-
 templates/layerindex/detail.html                   |  14 +-
 templates/layerindex/duplicates.html               |   1 -
 templates/layerindex/editlayernote.html            |   2 +-
 templates/layerindex/layers.html                   |   8 +-
 templates/layerindex/machines.html                 |  10 +-
 templates/layerindex/profile.html                  |   2 +-
 templates/layerindex/recipedetail.html             |  12 +-
 templates/layerindex/recipes.html                  |  12 +-
 templates/layerindex/reviewdetail.html             |  14 +-
 templates/layerindex/reviewlist.html               |   2 +-
 templates/registration/activate.html               |   2 +-
 templates/registration/activation_email.txt        |   2 +-
 templates/registration/login.html                  |   4 +-
 .../registration/password_reset_complete.html      |   2 +-
 templates/registration/password_reset_email.html   |   2 +-
 urls.py                                            |   6 +-
 49 files changed, 1557 insertions(+), 737 deletions(-)
 create mode 100644 layerindex/migrations/0011_auto__add_field_branch_updates_enabled.py
 create mode 100644 layerindex/migrations/0012_auto__chg_field_recipe_license__chg_field_recipe_provides.py
 create mode 100644 layerindex/migrations/0013_auto__add_pythonenvironment__add_field_branch_update_environment.py
 create mode 100644 layerindex/update_layer.py

-- 
2.5.5


