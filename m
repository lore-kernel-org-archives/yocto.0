Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0AB2FE013FA; Thu, 19 Jul 2018 06:17:58 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7876EE00874
	for <yocto@yoctoproject.org>; Thu, 19 Jul 2018 06:17:56 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	19 Jul 2018 06:17:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.51,374,1526367600"; d="scan'208";a="73712011"
Received: from wulili-mobl.ger.corp.intel.com (HELO localhost.localdomain)
	([10.252.50.201])
	by fmsmga001.fm.intel.com with ESMTP; 19 Jul 2018 06:17:52 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Thu, 19 Jul 2018 15:17:31 +0200
Message-Id: <cover.1532006209.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 2.17.1
Subject: [layerindex-web][PATCH 0/3] Bugfix, tests, doc update
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
X-List-Received-Date: Thu, 19 Jul 2018 13:17:58 -0000

A fix for a bug in the update script, some regression tests (finally!)
and a small bit for the README about setting up dependencies using
virtualenv.


The following changes since commit 49981aebf6fab9338f2a570acbb9aa67312c8865:

  Add site-wide notice support (2018-07-09 13:50:15 +0200)

are available in the Git repository at:

  git://git.yoctoproject.org/layerindex-web paule/fixes4
  http://git.yoctoproject.org/cgit.cgi//log/?h=paule/fixes4

Paul Eggleton (3):
  update: fix handling of moves outside of a layer
  Add minimal tests for update script
  README: add an example virtualenv-based setup

 .gitignore                           |   1 +
 README                               |  37 ++++-
 layerindex/tools/fixup_duplicates.py |  69 ++++++++++
 layerindex/update_layer.py           |  27 ++--
 pytest.ini                           |   4 +
 tests/test_update.py                 | 195 +++++++++++++++++++++++++++
 6 files changed, 322 insertions(+), 11 deletions(-)
 create mode 100644 layerindex/tools/fixup_duplicates.py
 create mode 100644 pytest.ini
 create mode 100644 tests/test_update.py

-- 
2.17.1


