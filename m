Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9C1CAE00718; Tue, 25 Sep 2018 22:27:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [192.55.52.151 listed in list.dnswl.org]
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 98A8EE006AF
	for <yocto@yoctoproject.org>; Tue, 25 Sep 2018 22:27:55 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	25 Sep 2018 22:27:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.54,304,1534834800"; d="scan'208";a="93778834"
Received: from nsankark-mobl2.gar.corp.intel.com (HELO localhost.localdomain)
	([10.249.72.216])
	by orsmga001.jf.intel.com with ESMTP; 25 Sep 2018 22:27:52 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Wed, 26 Sep 2018 17:27:34 +1200
Message-Id: <cover.1537939505.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 2.17.1
Subject: [layerindex-web][PATCH 0/5] More minor fixes (cover letter only)
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
X-List-Received-Date: Wed, 26 Sep 2018 05:27:56 -0000

A tweak for the other distro comparison modals, some fixes for the
browse/search forms on the machines/distros/classes pages, and a fix for
where bitbake-cookerdaemon.log gets written out when parsing.


The following changes since commit 5edeb03cb1a50d68dc2b60c21f807c1f5c2db295:

  TODO: remove completed item (2018-09-20 16:04:49 +1200)

are available in the Git repository at:

  git://git.yoctoproject.org/layerindex-web paule/fixes9
  http://git.yoctoproject.org/cgit.cgi/layerindex-web/log/?h=paule/fixes9

Paul Eggleton (5):
  comparison: use style on hidden select instead of CSS class to hide
  comparisonrecipeselect: fix logic for setting modal title
  Select input box on machine/distro/class pages
  Ensure browse buttons clear input text
  recipeparse: fix bitbake-cookerdaemon.log being written out to meta/

 TODO                                          |  2 --
 layerindex/recipeparse.py                     |  5 +++++
 layerindex/static/css/additional.css          |  4 ----
 templates/layerindex/classes.html             | 19 +++++++++++++++--
 .../layerindex/comparisonrecipeselect.html    | 21 ++++++++-----------
 .../comparisonrecipeselectdetail.html         |  2 +-
 templates/layerindex/distros.html             | 19 +++++++++++++++--
 templates/layerindex/machines.html            | 19 +++++++++++++++--
 templates/layerindex/recipes.html             |  4 ++--
 9 files changed, 68 insertions(+), 27 deletions(-)

-- 
2.17.1


