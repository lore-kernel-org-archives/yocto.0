Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BB2A2E00D47; Mon,  5 Aug 2019 17:06:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [134.134.136.31 listed in list.dnswl.org]
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B74C0E00D35
	for <yocto@yoctoproject.org>; Mon,  5 Aug 2019 17:06:11 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	05 Aug 2019 17:06:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,350,1559545200"; d="scan'208";a="181823087"
Received: from yangshi1-mobl.gar.corp.intel.com (HELO localhost.localdomain)
	([10.255.155.70])
	by FMSMGA003.fm.intel.com with ESMTP; 05 Aug 2019 17:06:08 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue,  6 Aug 2019 12:05:42 +1200
Message-Id: <cover.1565049925.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [layerindex-web][PATCH 00/15] REST API / import_layers improvements (cover letter only)
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
X-List-Received-Date: Tue, 06 Aug 2019 00:06:12 -0000
Content-Transfer-Encoding: 8bit

Add some missing items to the REST API and extend the import_layers
script in order to make it possible to create and update a clone of an
existing layer index without needing to fetch and parse all of the layer
repositories.


The following changes since commit 9ce9f7d2d1870a90b95809f43bae5d4e9f1ebd93:

  dockersetup: fix regression with https enabled (2019-07-31 09:03:46 +1200)

are available in the Git repository at:

  git://git.yoctoproject.org/layerindex-web paule/importlayers
  http://git.yoctoproject.org/cgit.cgi/layerindex-web/log/?h=paule/importlayers

Paul Eggleton (15):
  API: add sources, patches, dependencies to recipes
  API: add BBAppend and IncFile objects to REST API
  import_layers: avoid importing duplicate objects
  import_layers: enable incremental LayerItem/LayerBranch import
  import_layers: import recipes
  import_layers: import other missing items
  admin: add layerbranch to BBAppend string representation
  Add simple script for testing web API
  import_layers: switch to argparse
  import_layers: allow filtering branches
  import_layers: allow filtering layers
  import_layers: delete non-matching LayerBranch objects
  import_layers: add reload option
  import_layers: show basic progress
  README: add reference to using import_layers to update

 README                            |  10 +-
 layerindex/models.py              |   2 +-
 layerindex/restviews.py           |  74 +++++-
 layerindex/tools/import_layers.py | 405 +++++++++++++++++++++++-------
 layerindex/tools/webapi-test.py   |  71 ++++++
 layerindex/urls.py                |   2 +
 6 files changed, 469 insertions(+), 95 deletions(-)
 create mode 100755 layerindex/tools/webapi-test.py

-- 
2.20.1


