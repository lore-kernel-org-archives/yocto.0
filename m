Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4C41DE00DB5; Tue, 30 Aug 2016 14:05:16 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EDDF8E00510
	for <yocto@yoctoproject.org>; Tue, 30 Aug 2016 14:05:14 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 30 Aug 2016 14:03:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.30,258,1470726000"; d="scan'208";a="1049368785"
Received: from ashuvini-mobl.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.145.135])
	by fmsmga002.fm.intel.com with ESMTP; 30 Aug 2016 14:03:53 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Wed, 31 Aug 2016 09:03:28 +1200
Message-Id: <cover.1472590929.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 2.5.5
Subject: [layerindex-web][PATCH 0/3] Layer index fixes
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
X-List-Received-Date: Tue, 30 Aug 2016 21:05:16 -0000

Some minor fixes for the recent python3 work in the layer index, but more
importantly fix parsing in master for the multiconfig changes that recently
went into bitbake.

NOTE: this depends on the bitbake patchset I just sent in order to work.


The following changes since commit 1d76228675e93add50dd5216c43e00f977e1aaa8:

  Use functools.reduce instead of reduce (2016-07-04 09:51:21 +1200)

are available in the git repository at:

  git://git.yoctoproject.org/layerindex-web paule/mc-fixes
  http://git.yoctoproject.org/cgit.cgi/layerindex-web/log/?h=paule/mc-fixes

Paul Eggleton (3):
  Use python3 commands in README
  Fix output decoding/reporting for bulk change patch download
  update_layer.py: fix up for bitbake API change

 README                             |  6 +++---
 layerindex/tools/import_classic.py | 11 +++++++----
 layerindex/update_layer.py         | 17 ++++++++++-------
 layerindex/views.py                |  3 +++
 4 files changed, 23 insertions(+), 14 deletions(-)

-- 
2.5.5


