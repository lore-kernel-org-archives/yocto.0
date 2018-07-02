Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D94B1E00CF4; Mon,  2 Jul 2018 16:00:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 779BFE0080A
	for <yocto@yoctoproject.org>; Mon,  2 Jul 2018 16:00:49 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
	by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	02 Jul 2018 16:00:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.51,300,1526367600"; d="scan'208";a="52165007"
Received: from nmunfye-mobl1.gar.corp.intel.com (HELO localhost.localdomain)
	([10.249.64.227])
	by fmsmga008.fm.intel.com with ESMTP; 02 Jul 2018 16:00:25 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue,  3 Jul 2018 10:58:44 +1200
Message-Id: <cover.1530569567.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 2.17.1
Subject: [layerindex-web][PATCH 0/7] Layer index fixes
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
X-List-Received-Date: Mon, 02 Jul 2018 23:00:49 -0000

Some bug fixes as well as site-wide notice support.


The following changes since commit 5cfdfdca8b9200b5a6e4aa14661b14059a799310:

  rrs_upstream_history.py: fix set_regexes function (2018-06-06 11:25:46 +1200)

are available in the Git repository at:

  git://git.yoctoproject.org/layerindex-web paule/fixes3
  http://git.yoctoproject.org/cgit.cgi/layerindex-web/log/?h=paule/fixes3

Paul Eggleton (7):
  settings: allow disabling layer publishing emails
  update_layer: drop debug message for deleting recipe file dependencies
  update_layer: avoid errors on modified & renamed files
  recipeparse: don't error out on missing layer recommends
  update: ignore recommends when ordering layers
  utils: fix missing dependency logic in _add_dependency()
  Add site-wide notice support

 TODO                                     |  1 -
 layerindex/admin.py                      |  1 +
 layerindex/context_processors.py         |  7 ++-
 layerindex/migrations/0014_sitenotice.py | 24 +++++++++
 layerindex/models.py                     | 25 ++++++++-
 layerindex/recipeparse.py                |  6 ++-
 layerindex/update.py                     |  2 +-
 layerindex/update_layer.py               |  3 +-
 layerindex/utils.py                      | 21 +++++++-
 layerindex/views.py                      | 66 ++++++++++++------------
 requirements.txt                         |  1 +
 settings.py                              |  3 ++
 templates/base.html                      |  5 ++
 13 files changed, 123 insertions(+), 42 deletions(-)
 create mode 100644 layerindex/migrations/0014_sitenotice.py

-- 
2.17.1


