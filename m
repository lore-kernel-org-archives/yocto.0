Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 51614E00BB7; Wed, 19 Sep 2018 21:12:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.55.52.120 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3626AE00BAA
	for <yocto@yoctoproject.org>; Wed, 19 Sep 2018 21:12:43 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	19 Sep 2018 21:12:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.53,397,1531810800"; d="scan'208";a="91658006"
Received: from sprithvx-mobl1.gar.corp.intel.com (HELO localhost.localdomain)
	([10.255.135.47])
	by fmsmga001.fm.intel.com with ESMTP; 19 Sep 2018 21:12:40 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Thu, 20 Sep 2018 16:12:19 +1200
Message-Id: <cover.1537416533.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 2.17.1
Subject: [layerindex-web][PATCH 00/10] Bootstrap 3, update task enhancements, etc. (cover letter only)
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
X-List-Received-Date: Thu, 20 Sep 2018 04:12:44 -0000

A bit of a mixed bag: one bugfix, move to Bootstrap 3 for the frontend,
some minor features and significant work on how update tasks for the
other distro comparison functionality works.


The following changes since commit 3aa6bf964d81a04b652499069f0454c546a5e296:

  import_layer.py: add -t option for layer_type (2018-09-20 15:53:07 +1200)

are available in the Git repository at:

  git://git.yoctoproject.org/layerindex-web paule/fixes8
  http://git.yoctoproject.org/cgit.cgi//log/?h=paule/fixes8

Paul Eggleton (10):
  import_otherdistro: fix update recording code
  Upgrade to Bootstrap 3
  Add admin link to tools dropdown menu
  models: add a get_checkout_branch() function
  Show actual branch on layer detail
  Show update task output more smoothly
  Show progress when running comparison update tasks
  Properly show update task success/failure
  Allow stopping update task
  TODO: remove completed item

 README                                        |     4 +-
 TODO                                          |     1 -
 docker/settings.py                            |     4 +-
 layerindex/forms.py                           |    35 +-
 layerindex/migrations/0025_update_retcode.py  |    20 +
 layerindex/models.py                          |    16 +-
 layerindex/static/css/additional.css          |    59 +-
 .../static/css/bootstrap-responsive.css       |  1109 --
 .../static/css/bootstrap-responsive.min.css   |     9 -
 layerindex/static/css/bootstrap-theme.css     |   587 +
 layerindex/static/css/bootstrap-theme.css.map |     1 +
 layerindex/static/css/bootstrap-theme.min.css |     6 +
 .../static/css/bootstrap-theme.min.css.map    |     1 +
 layerindex/static/css/bootstrap.css           | 10591 ++++++++--------
 layerindex/static/css/bootstrap.css.map       |     1 +
 layerindex/static/css/bootstrap.min.css       |    13 +-
 layerindex/static/css/bootstrap.min.css.map   |     1 +
 .../fonts/glyphicons-halflings-regular.eot    |   Bin 0 -> 20127 bytes
 .../fonts/glyphicons-halflings-regular.svg    |   288 +
 .../fonts/glyphicons-halflings-regular.ttf    |   Bin 0 -> 45404 bytes
 .../fonts/glyphicons-halflings-regular.woff   |   Bin 0 -> 23424 bytes
 .../fonts/glyphicons-halflings-regular.woff2  |   Bin 0 -> 18028 bytes
 .../static/img/glyphicons-halflings-white.png |   Bin 8777 -> 0 bytes
 .../static/img/glyphicons-halflings.png       |   Bin 12799 -> 0 bytes
 layerindex/static/js/bootstrap.js             |  3331 ++---
 layerindex/static/js/bootstrap.min.js         |    11 +-
 layerindex/static/js/jquery-1.7.2.js          |  9404 --------------
 layerindex/static/js/jquery-3.3.1.js          | 10364 +++++++++++++++
 layerindex/tasks.py                           |    23 +-
 layerindex/templatetags/extrafilters.py       |    21 +-
 layerindex/tools/import_otherdistro.py        |    14 +-
 layerindex/urls.py                            |     8 +-
 layerindex/utils.py                           |   117 +-
 layerindex/views.py                           |    52 +-
 rrs/static/css/rrs-additional.css             |     7 +-
 settings.py                                   |     7 +-
 templates/base.html                           |    48 +-
 templates/base_toplevel.html                  |    12 +-
 templates/layerindex/about.html               |     4 +-
 templates/layerindex/bulkchange.html          |    10 +-
 templates/layerindex/bulkchangeedit.html      |     8 +-
 templates/layerindex/bulkchangereview.html    |     8 +-
 templates/layerindex/bulkchangesearch.html    |    22 +-
 templates/layerindex/classes.html             |    19 +-
 templates/layerindex/classic_base.html        |     4 +-
 templates/layerindex/classicrecipedetail.html |     4 +-
 templates/layerindex/classicrecipes.html      |   166 +-
 templates/layerindex/classicstats.html        |     2 +-
 .../layerindex/comparisonrecipebase.html      |    10 +-
 .../layerindex/comparisonrecipeselect.html    |    97 +-
 .../comparisonrecipeselectdetail.html         |    90 +-
 templates/layerindex/deleteconfirm.html       |     4 +-
 templates/layerindex/detail.html              |   122 +-
 templates/layerindex/distros.html             |    20 +-
 templates/layerindex/duplicates.html          |    92 +-
 templates/layerindex/editlayer.html           |    32 +-
 templates/layerindex/editlayernote.html       |     4 +-
 templates/layerindex/layers.html              |    50 +-
 templates/layerindex/machines.html            |    20 +-
 templates/layerindex/profile.html             |     8 +-
 templates/layerindex/recipedetail.html        |    30 +-
 templates/layerindex/recipes.html             |    25 +-
 templates/layerindex/reviewdetail.html        |    32 +-
 templates/layerindex/reviewlist.html          |     6 +-
 templates/layerindex/stats.html               |     2 +-
 templates/layerindex/task.html                |    94 +-
 templates/layerindex/updatedetail.html        |     6 +-
 templates/layerindex/updatelist.html          |     9 +-
 templates/pagination.html                     |     4 +-
 templates/registration/login.html             |     2 +-
 .../registration/password_change_form.html    |     2 +-
 .../registration/password_reset_confirm.html  |     2 +-
 .../registration/password_reset_form.html     |     2 +-
 templates/registration/registration_form.html |     2 +-
 templates/rrs/base_toplevel.html              |    81 +-
 templates/rrs/maintainers.html                |    48 +-
 templates/rrs/recipedetail.html               |    32 +-
 templates/rrs/recipes.html                    |    48 +-
 templates/rrs/rrs_stats.html                  |     2 +-
 79 files changed, 19611 insertions(+), 17779 deletions(-)
 create mode 100644 layerindex/migrations/0025_update_retcode.py
 delete mode 100644 layerindex/static/css/bootstrap-responsive.css
 delete mode 100644 layerindex/static/css/bootstrap-responsive.min.css
 create mode 100644 layerindex/static/css/bootstrap-theme.css
 create mode 100644 layerindex/static/css/bootstrap-theme.css.map
 create mode 100644 layerindex/static/css/bootstrap-theme.min.css
 create mode 100644 layerindex/static/css/bootstrap-theme.min.css.map
 create mode 100644 layerindex/static/css/bootstrap.css.map
 create mode 100644 layerindex/static/css/bootstrap.min.css.map
 create mode 100644 layerindex/static/fonts/glyphicons-halflings-regular.eot
 create mode 100644 layerindex/static/fonts/glyphicons-halflings-regular.svg
 create mode 100644 layerindex/static/fonts/glyphicons-halflings-regular.ttf
 create mode 100644 layerindex/static/fonts/glyphicons-halflings-regular.woff
 create mode 100644 layerindex/static/fonts/glyphicons-halflings-regular.woff2
 delete mode 100644 layerindex/static/img/glyphicons-halflings-white.png
 delete mode 100644 layerindex/static/img/glyphicons-halflings.png
 delete mode 100644 layerindex/static/js/jquery-1.7.2.js
 create mode 100644 layerindex/static/js/jquery-3.3.1.js

-- 
2.17.1


