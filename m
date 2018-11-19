Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6AF6FE00C43; Mon, 19 Nov 2018 15:07:50 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [134.134.136.126 listed in list.dnswl.org]
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3C992E00C3C
	for <yocto@yoctoproject.org>; Mon, 19 Nov 2018 15:07:48 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
	by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	19 Nov 2018 15:07:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.56,254,1539673200"; d="scan'208";a="87196595"
Received: from pprabhak-mobl.gar.corp.intel.com (HELO localhost.localdomain)
	([10.255.141.112])
	by fmsmga007.fm.intel.com with ESMTP; 19 Nov 2018 15:07:45 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue, 20 Nov 2018 12:07:01 +1300
Message-Id: <cover.1542668705.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 2.17.2
Subject: [layerindex-web][PATCH 00/30] Misc improvements (cover letter only)
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
X-List-Received-Date: Mon, 19 Nov 2018 23:07:50 -0000

A bunch of assorted improvements for the layer index.


The following changes since commit 24b6e13442c403ae6d4a2b1782a5b5f06b643e22:

  docker: add TASK_LOG_DIR to docker settings file (2018-10-04 11:15:39 +1300)

are available in the Git repository at:

  git://git.yoctoproject.org/layerindex-web paule/fixes11
  http://git.yoctoproject.org/cgit.cgi//log/?h=paule/fixes11

Paul Eggleton (30):
  Track and enable reporting on duplicate inc files
  Replace nvd3 with Chart.js
  update: handle if there is no origin/master branch in bitbake repo
  settings: add settings for CAPTCHA accessibility
  views: fix incorrect class usage in ClassSearchView
  Add CAPTCHA to registration/password reset forms
  Implement "delete account" function
  Allow user to edit their username in the Edit Profile form
  Restrict the number of username change attempts
  Use django-axes to lockout after multiple failed logins
  requirements.txt: update GitPython dependencies
  Add a script to help keep requirements.txt up to date
  Enable password strength validation by default
  Add some text to the password reset email
  Improve password form formatting
  Require re-registration if user changes email address
  Tweak activation complete page
  tools/github-fetch: handle non-fast-forward merges
  tools/github-fetch: fix marking deleted
  Exclude "Distro-specific" from "unknown/not available" in other distro search
  Use prop() instead of attr() to set checked property
  Replace uitablefilter usage with jQuery
  Add search to duplicates/comparison layer filter dialog
  Add search to layer dependencies list on edit/submit layer form
  README: add missing mention of TableSorter
  requirements.txt: bump versions
  Return to previous page after Edit profile
  Make login button return user to previous page
  Fix Submit/Edit layer form field rendering issue
  Fix drop-down alignment on duplicates page

 README                                        |     6 +-
 TODO                                          |     1 -
 check_requirements.sh                         |    39 +
 docker/settings.py                            |    43 +-
 layerindex/admin.py                           |    10 +
 layerindex/auth_forms.py                      |    34 +
 layerindex/auth_views.py                      |    63 +
 layerindex/context_processors.py              |     5 +
 layerindex/forms.py                           |    28 +-
 layerindex/migrations/0026_incfile.py         |    24 +
 layerindex/models.py                          |    12 +
 layerindex/recipeparse.py                     |     4 +-
 layerindex/static/css/additional.css          |     7 +-
 layerindex/static/css/nv.d3.css               |   645 -
 layerindex/static/js/Chart.js                 | 14384 ++++++++++++++++
 layerindex/static/js/Chart.min.js             |    10 +
 layerindex/static/js/d3.js                    |  9275 ----------
 layerindex/static/js/nv.d3.js                 | 14369 ---------------
 layerindex/static/js/uitablefilter.js         |    91 -
 layerindex/tools/github-fetch.py              |     6 +-
 layerindex/update.py                          |     8 +-
 layerindex/update_layer.py                    |    24 +-
 layerindex/views.py                           |    83 +-
 password_validation.py                        |    25 +
 requirements.txt                              |    44 +-
 rrs/models.py                                 |     2 +-
 rrs/static/js/uitablefilter.js                |   117 -
 rrs/views.py                                  |    22 +-
 settings.py                                   |    43 +-
 templates/base.html                           |     6 +-
 templates/layerindex/about.html               |     3 +-
 templates/layerindex/classicrecipes.html      |    36 +-
 templates/layerindex/classicstats.html        |    70 +-
 templates/layerindex/deleteaccount.html       |    56 +
 templates/layerindex/detail.html              |    33 +-
 templates/layerindex/duplicates.html          |    72 +-
 templates/layerindex/editlayer.html           |    27 +-
 templates/layerindex/layerchecklist.html      |     2 +-
 templates/layerindex/layers.html              |    83 +-
 templates/layerindex/profile.html             |     5 +-
 .../registration/activation_complete.html     |     8 +-
 templates/registration/login.html             |     3 +
 .../registration/password_change_form.html    |    23 +-
 .../registration/password_reset_confirm.html  |    23 +-
 .../registration/password_reset_done.html     |     2 +-
 .../registration/password_reset_email.txt     |     7 +-
 .../registration/password_reset_form.html     |    23 +-
 templates/registration/registration_form.html |    23 +-
 templates/registration/reregister.html        |     6 +
 templates/rrs/maintainers.html                |    13 +-
 templates/rrs/recipes.html                    |     6 +-
 templates/rrs/rrs_stats.html                  |    75 +-
 urls.py                                       |    17 +-
 53 files changed, 15358 insertions(+), 24688 deletions(-)
 create mode 100644 check_requirements.sh
 create mode 100644 layerindex/auth_forms.py
 create mode 100644 layerindex/auth_views.py
 create mode 100644 layerindex/migrations/0026_incfile.py
 delete mode 100644 layerindex/static/css/nv.d3.css
 create mode 100644 layerindex/static/js/Chart.js
 create mode 100644 layerindex/static/js/Chart.min.js
 delete mode 100644 layerindex/static/js/d3.js
 delete mode 100644 layerindex/static/js/nv.d3.js
 delete mode 100644 layerindex/static/js/uitablefilter.js
 create mode 100644 password_validation.py
 delete mode 100644 rrs/static/js/uitablefilter.js
 create mode 100644 templates/layerindex/deleteaccount.html
 create mode 100644 templates/registration/reregister.html

-- 
2.17.2


