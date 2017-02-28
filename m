Return-Path: <jose.a.lamego@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4209BE004E5; Mon, 27 Feb 2017 17:25:47 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [134.134.136.31 listed in list.dnswl.org]
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EE601E00405
	for <yocto@yoctoproject.org>; Mon, 27 Feb 2017 17:25:45 -0800 (PST)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by orsmga104.jf.intel.com with ESMTP; 27 Feb 2017 17:25:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.35,216,1484035200"; d="scan'208";a="938780725"
Received: from skhalsa-mobl1.amr.corp.intel.com (HELO
	jalamego-MOBL2.amr.corp.intel.com) ([10.254.178.181])
	by orsmga003.jf.intel.com with ESMTP; 27 Feb 2017 17:25:44 -0800
From: Jose Lamego <jose.a.lamego@linux.intel.com>
To: yocto@yoctoproject.org
Date: Mon, 27 Feb 2017 19:25:32 -0600
Message-Id: <1488245135-7709-1-git-send-email-jose.a.lamego@linux.intel.com>
X-Mailer: git-send-email 2.7.4
Subject: [patchwork][PATCH 0/3] Series: Add multiple select/change controls
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
X-List-Received-Date: Tue, 28 Feb 2017 01:25:47 -0000

Patches displayed at Series view must be individually opened to allow change
status or add them to a bundle, increasing needed time and providing a poor
user experience.

These changes add to Series view multiple select controls and the required
functionality for status change, bundle addition and new bundle creation.

[YOCTO #10822]

Jose Lamego (3):
  series.py: add patch and bundle edition actions to view
  series.html: add patch and bundle edition forms and checkboxes
  series.js: add patch-selection-checkbox control functions

 htdocs/js/series.js                       | 145 +++++++++++++++++++++----
 patchwork/templates/patchwork/series.html | 172 ++++++++++++++++++++++--------
 patchwork/views/series.py                 |  88 ++++++++-------
 3 files changed, 307 insertions(+), 98 deletions(-)

-- 
2.7.4


