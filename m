Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CD803E00C1B; Sun, 22 Apr 2018 20:04:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.100 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9E9C3E009CF
	for <yocto@yoctoproject.org>; Sun, 22 Apr 2018 20:04:15 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
	by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	22 Apr 2018 20:04:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.49,315,1520924400"; d="scan'208";a="222518319"
Received: from xliu65-mobl.ccr.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.143.230])
	by fmsmga006.fm.intel.com with ESMTP; 22 Apr 2018 20:04:11 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Mon, 23 Apr 2018 15:03:13 +1200
Message-Id: <cover.1524452299.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 2.14.3
Subject: [layerindex-web][PATCH 00/16] Django 1.11 upgrade (cover letter only)
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
X-List-Received-Date: Mon, 23 Apr 2018 03:04:18 -0000

Django 1.8 has gone out of support upstream, so here are the necessary
changes to upgrade to Django 1.11.x (the next LTS release). Along the
way I switched the Bulk Change feature to use OE's code for patching
recipes, since that part was broken by the upgrade (and possibly
broken otherwise).

I've posted the cover letter only to avoid too much noise for folks
that aren't interested - see the branch for details.


The following changes since commit 611c96883c35240d3c291951146154d828745774:

  requirements.txt: use the most recent Django 1.8 version (2018-03-26 08:29:27 +1300)

are available in the Git repository at:

  git://git.yoctoproject.org/layerindex-web paule/django-upgrade
  http://git.yoctoproject.org/cgit.cgi//log/?h=paule/django-upgrade

Paul Eggleton (16):
  views: replace mimetype with content_type
  settings.py: switch to django.template.context_processors
  Make manage.py executable and tidy shebang
  Use new TEMPLATES setting
  Replace usage of model._meta.get_all_field_names()
  Stop using string name for publish view in urls.py
  urls*: Use new urlpatterns list syntax
  templatetags/addurlparameter: remove unused reference
  templates: replace use of = with ==
  views: fix history tracking to work with current django-reversion
  urls: add required exception parameter for page_not_found
  views: Adapt to template rendering API change
  utils: add function to add meta/lib/oe to sys.path
  bulkchange.py: fix regression
  bulkchange.py: use oe.recipeutils code to patch recipes
  requirements.txt: bump Django and other dependency versions

 README                                     |   4 +-
 layerindex/admin.py                        |  12 +--
 layerindex/bulkchange.py                   | 134 ++---------------------------
 layerindex/querysethelper.py               |   2 +-
 layerindex/recipeparse.py                  |  14 ---
 layerindex/templatetags/addurlparameter.py |   2 +-
 layerindex/urls.py                         |  10 +--
 layerindex/urls_branch.py                  |   4 +-
 layerindex/utils.py                        |  12 +++
 layerindex/views.py                        |  92 +++++++++++---------
 manage.py                                  |   4 +-
 requirements.txt                           |  16 ++--
 settings.py                                |  42 ++++-----
 templates/base_toplevel.html               |   4 +-
 templates/layerindex/detail.html           |   6 +-
 templates/layerindex/duplicates.html       |   4 +-
 templates/layerindex/editlayer.html        |   8 +-
 templates/layerindex/history.html          |   8 +-
 templates/layerindex/reviewdetail.html     |   6 +-
 urls.py                                    |   7 +-
 20 files changed, 139 insertions(+), 252 deletions(-)
 mode change 100644 => 100755 manage.py

-- 
2.14.3


