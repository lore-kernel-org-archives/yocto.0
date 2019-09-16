Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 278E3E00D51; Sun, 15 Sep 2019 22:19:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [134.134.136.100 listed in list.dnswl.org]
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A4449E00D4A
	for <yocto@yoctoproject.org>; Sun, 15 Sep 2019 22:19:49 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
	by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	15 Sep 2019 22:19:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,510,1559545200"; d="scan'208";a="337545119"
Received: from bletchu-mobl1.gar.corp.intel.com (HELO linux.fritz.box)
	([10.255.184.21])
	by orsmga004.jf.intel.com with ESMTP; 15 Sep 2019 22:19:47 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Mon, 16 Sep 2019 17:19:36 +1200
Message-Id: <cover.1568611075.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [layerindex-web][PATCH 0/3] REST API fixes
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
X-List-Received-Date: Mon, 16 Sep 2019 05:19:50 -0000
Content-Transfer-Encoding: 8bit

Some fixes relating to the REST API performance issues experienced with
the recent upgrade on layers.openembedded.org.


The following changes since commit 73198bd5483c16b9852121c6855dc6dac96a98a0:

  README: add reference to using import_layers to update (2019-08-06 12:04:17 +1200)

are available in the Git repository at:

  git://git.yoctoproject.org/layerindex-web paule/restapi-fixes
  http://git.yoctoproject.org/cgit.cgi/layerindex-web/log/?h=paule/restapi-fixes

Paul Eggleton (3):
  API: fix recipes API performance regression
  import_layers: use recipesExtended viewset
  import_layers: fix output when importing layers from scratch

 layerindex/restviews.py           | 25 +++++++-
 layerindex/tools/import_layers.py | 94 ++++++++++++++++++-------------
 layerindex/urls.py                |  1 +
 3 files changed, 79 insertions(+), 41 deletions(-)

-- 
2.20.1


