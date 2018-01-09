Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 881BDE00DCA; Mon,  8 Jan 2018 20:21:10 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 60A08E008FB
	for <yocto@yoctoproject.org>; Mon,  8 Jan 2018 20:21:08 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
	by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	08 Jan 2018 20:21:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.46,334,1511856000"; 
   d="scan'208";a="9740726"
Received: from cooi24-mobl.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.249.70.11])
	by orsmga006.jf.intel.com with ESMTP; 08 Jan 2018 20:21:05 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue,  9 Jan 2018 17:20:23 +1300
Message-Id: <cover.1515471545.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 2.9.5
Subject: [layerindex-web][PATCH 0/6] Various fixes
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
X-List-Received-Date: Tue, 09 Jan 2018 04:21:10 -0000

Fix a bunch of issues I found recently working on the layer index. I
plan on merging these almost immediately as we need several of these
fixes in the live instance on openembedded.org.


The following changes since commit fa0b01082fb0596959841e95af8c516ae3f267a7:

  admin: fix dependency display and search (2017-12-21 16:14:17 +1300)

are available in the git repository at:

  git://git.yoctoproject.org/layerindex-web paule/fixes
  http://git.yoctoproject.org/cgit.cgi//log/?h=paule/fixes

Paul Eggleton (6):
  update_layer: fix handling of database errors
  Explicitly handle too-long field values
  Fix error on publish if no non-root superuser/staff accounts exist
  update: don't stop on unsatisfied layer dependencies
  views: fix "layer:" keyword on recipe search page
  views: fix classic recipe search redirecting to recipe page with
    single result

 layerindex/models.py       | 21 +++++++++++++++++++++
 layerindex/update.py       | 20 ++++++++++----------
 layerindex/update_layer.py |  4 ++++
 layerindex/views.py        | 11 ++++++++---
 4 files changed, 43 insertions(+), 13 deletions(-)

-- 
2.9.5


