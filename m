Return-Path: <roxana.ciobanu@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 380BEE00576; Wed,  3 Sep 2014 04:41:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 07D4EE0054C
	for <yocto@yoctoproject.org>; Wed,  3 Sep 2014 04:41:37 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by fmsmga103.fm.intel.com with ESMTP; 03 Sep 2014 04:33:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.04,456,1406617200"; d="scan'208";a="474882341"
Received: from roxana-optiplex-9010.rb.intel.com ([10.237.105.50])
	by azsmga001.ch.intel.com with ESMTP; 03 Sep 2014 04:41:36 -0700
From: Roxana Ciobanu <roxana.ciobanu@intel.com>
To: yocto@yoctoproject.org
Date: Wed,  3 Sep 2014 14:41:31 +0300
Message-Id: <cover.1409744403.git.roxana.ciobanu@intel.com>
X-Mailer: git-send-email 1.9.1
Subject: [PATCH 0/1] error-report-web
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
X-List-Received-Date: Wed, 03 Sep 2014 11:41:49 -0000

The following changes since commit 4be8e30cecedd36819b0cf14db16b5b8cb275b31:

  README: add info on the git repo and contributing (2014-08-24 16:39:11 +0100)

are available in the git repository at:

  git://git.yoctoproject.org/poky-contrib roxana/YB6537
  http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=roxana/YB6537

Roxana Ciobanu (1):
  error-report-tool: apply changes to the landing page

 Post/static/css/custom.css    |   9 +-
 Post/views.py                 |  15 +-
 project/urls.py               |   4 +-
 templates/base.html           |   6 +-
 templates/error-page.html     |  27 ++-
 templates/home.html           | 442 ++++++++++++++++++++++--------------------
 templates/latest-errors.html  | 239 +++++++++++++++++++++++
 templates/search-details.html |   2 +-
 8 files changed, 527 insertions(+), 217 deletions(-)
 create mode 100644 templates/latest-errors.html

-- 
1.9.1


