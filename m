Return-Path: <amanda.r.brindle@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0DA12E00E01; Wed, 24 Jan 2018 13:47:19 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7AC22E00B78
	for <yocto@yoctoproject.org>; Wed, 24 Jan 2018 13:47:18 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	24 Jan 2018 13:47:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.46,409,1511856000"; d="scan'208";a="22079683"
Received: from arbrindl-dev.jf.intel.com ([10.7.199.57])
	by orsmga003.jf.intel.com with ESMTP; 24 Jan 2018 13:47:17 -0800
From: Amanda Brindle <amanda.r.brindle@intel.com>
To: yocto@yoctoproject.org
Date: Wed, 24 Jan 2018 13:44:13 -0800
Message-Id: <cover.1516828653.git.amanda.r.brindle@intel.com>
X-Mailer: git-send-email 2.7.4
Cc: paul.eggleton@linux.intel.com, Amanda Brindle <amanda.r.brindle@intel.com>
Subject: [error-report-web][PATCH 0/1] purge.py: Create script that will purge database
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
X-List-Received-Date: Wed, 24 Jan 2018 21:47:19 -0000

The following changes since commit 9c9e34d0fdcc543945951e374e75b8678e71c35d:

  latest-errors: Use the key value instead of display value for filter (2016-06-23 12:24:17 +0100)

are available in the git repository at:

  git://push.yoctoproject.org/error-report-web abrindle/purge_script

Amanda Brindle (1):
  purge.py: Create script that will purge database

 Post/migrations/0006_buildfailure_referer.py | 19 ++++++++++++++++++
 Post/models.py                               | 10 ++++++++++
 Post/purge.py                                | 29 ++++++++++++++++++++++++++++
 Post/views.py                                | 16 +++++++++++++--
 4 files changed, 72 insertions(+), 2 deletions(-)
 create mode 100644 Post/migrations/0006_buildfailure_referer.py
 create mode 100644 Post/purge.py

-- 
2.7.4


