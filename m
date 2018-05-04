Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 75AD1E00C50; Fri,  4 May 2018 04:56:02 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4CB95E00C25
	for <yocto@yoctoproject.org>; Fri,  4 May 2018 04:56:01 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
	by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	04 May 2018 04:56:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.49,362,1520924400"; d="scan'208";a="221609858"
Received: from sruthimx-mobl1.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.145.245])
	by orsmga005.jf.intel.com with ESMTP; 04 May 2018 04:55:57 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Fri,  4 May 2018 23:55:24 +1200
Message-Id: <cover.1525434801.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 2.14.3
Subject: [layerindex-web][PATCH 0/3] Fixes for some recent changes
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
X-List-Received-Date: Fri, 04 May 2018 11:56:02 -0000

Fix a few regressions I recently introduced.


The following changes since commit b4cfb049d9fda7fe82f97f8532abdb7272cf0a76:

  requirements.txt: bump Django and other dependency versions (2018-05-01 10:10:21 +1200)

are available in the Git repository at:

  git://git.yoctoproject.org/layerindex-web paule/fixes1
  http://git.yoctoproject.org/cgit.cgi//log/?h=paule/fixes1

Paul Eggleton (3):
  views: fix regression in publish email sending code
  requirements.txt: fix some conflicting requirements
  detail: Fix layer description not wrapping properly

 layerindex/views.py              | 9 ++++-----
 requirements.txt                 | 6 +++---
 templates/layerindex/detail.html | 2 +-
 3 files changed, 8 insertions(+), 9 deletions(-)

-- 
2.14.3


