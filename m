Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4E21AE00C88; Sun, 20 May 2018 20:04:48 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 49CA2E00A48
	for <yocto@yoctoproject.org>; Sun, 20 May 2018 20:04:45 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
	by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	20 May 2018 20:04:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.49,425,1520924400"; d="scan'208";a="225835553"
Received: from syadandx-mobl1.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.168.242])
	by orsmga005.jf.intel.com with ESMTP; 20 May 2018 20:04:42 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Mon, 21 May 2018 15:04:08 +1200
Message-Id: <cover.1526871767.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 2.14.3
Subject: [layerindex-web][PATCH 0/6] Layer index improvements
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
X-List-Received-Date: Mon, 21 May 2018 03:04:48 -0000

Fixes for some minor issues, plus add a few small features.


The following changes since commit 09f629b997da1e52b1cb93d36566e04908e0517c:

  Add CSV export for layer recipes (2018-05-07 15:30:04 +1200)

are available in the Git repository at:

  git://git.yoctoproject.org/layerindex-web paule/fixes2
  http://git.yoctoproject.org/cgit.cgi//log/?h=paule/fixes2

Paul Eggleton (6):
  settings: allow disabling layer publishing emails
  update_layer: drop debug message for deleting recipe file dependencies
  update_layer: avoid errors on modified & renamed files
  Add site-wide notice support
  Add a script to import layers from an existing layer index
  update_classic_status: fix matching on wrong layer

 TODO                                      |   1 -
 layerindex/admin.py                       |   1 +
 layerindex/context_processors.py          |   7 +-
 layerindex/migrations/0014_sitenotice.py  |  24 +++
 layerindex/models.py                      |  25 ++-
 layerindex/tools/import_layers.py         | 251 ++++++++++++++++++++++++++++++
 layerindex/tools/update_classic_status.py |   2 +-
 layerindex/update_layer.py                |   3 +-
 layerindex/utils.py                       |  14 ++
 layerindex/views.py                       |  66 ++++----
 requirements.txt                          |   1 +
 settings.py                               |   3 +
 templates/base.html                       |   5 +
 13 files changed, 364 insertions(+), 39 deletions(-)
 create mode 100644 layerindex/migrations/0014_sitenotice.py
 create mode 100755 layerindex/tools/import_layers.py

-- 
2.14.3


