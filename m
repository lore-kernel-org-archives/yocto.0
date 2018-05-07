Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B677FE00A75; Sun,  6 May 2018 20:36:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 71E5FE00A39
	for <yocto@yoctoproject.org>; Sun,  6 May 2018 20:36:12 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	06 May 2018 20:36:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.49,372,1520924400"; d="scan'208";a="47241948"
Received: from kllim-mobl.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.249.70.238])
	by FMSMGA003.fm.intel.com with ESMTP; 06 May 2018 20:36:09 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Mon,  7 May 2018 15:35:41 +1200
Message-Id: <cover.1525663905.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 2.14.3
Subject: [layerindex-web][PATCH 0/2] Implement CSV export for layer recipes
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
X-List-Received-Date: Mon, 07 May 2018 03:36:14 -0000

Ross asked for the ability to export a layer's recipes in CSV format,
and here it is - as well as cleanup of some old cruft that was supposed
to do a similar thing but wasn't finished.


The following changes since commit 837359e6f18aac985c2967344d035d70c05e427a:

  detail: Fix layer description not wrapping properly (2018-05-04 23:52:51 +1200)

are available in the Git repository at:

  git://git.yoctoproject.org/layerindex-web paule/recipe-csv-export
  http://git.yoctoproject.org/cgit.cgi//log/?h=paule/recipe-csv-export

Paul Eggleton (2):
  Drop old raw recipe export code
  Add CSV export for layer recipes

 layerindex/urls.py                  |  8 +-------
 layerindex/urls_branch.py           |  5 ++++-
 layerindex/views.py                 | 29 ++++++++++++++++++++++-------
 templates/layerindex/detail.html    | 14 +++++++-------
 templates/layerindex/rawrecipes.txt |  2 --
 5 files changed, 34 insertions(+), 24 deletions(-)
 delete mode 100644 templates/layerindex/rawrecipes.txt

-- 
2.14.3


