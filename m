Return-Path: <mariano.lopez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8A966E0099A; Tue, 28 Jul 2015 07:27:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 14CC4E00985
	for <yocto@yoctoproject.org>; Tue, 28 Jul 2015 07:27:28 -0700 (PDT)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by orsmga101.jf.intel.com with ESMTP; 28 Jul 2015 07:27:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.15,563,1432623600"; d="scan'208";a="531671491"
Received: from mlopezva-mobl2.zpn.intel.com (HELO localhost.localdomain)
	([10.219.56.19])
	by FMSMGA003.fm.intel.com with ESMTP; 28 Jul 2015 07:27:27 -0700
From: mariano.lopez@linux.intel.com
To: yocto@yoctoproject.org
Date: Tue, 28 Jul 2015 09:27:15 -0500
Message-Id: <1438093638-7722-1-git-send-email-mariano.lopez@linux.intel.com>
X-Mailer: git-send-email 1.9.1
Subject: [rrs][PATCH 0/3] Changed behavior of last updated column
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
X-List-Received-Date: Tue, 28 Jul 2015 14:27:31 -0000

From: Mariano Lopez <mariano.lopez@linux.intel.com>

Changed the last updated column behavior and color.
Now it display the dates for all the recipes, including
the up to date column. Also changed the color of the
text to the default used in other columns.

[YOCTOC #8018]

Mariano Lopez (3):
  views.py: Show last updated date for all recipes
  rrs-additional.css: Added min-width to last update column
  recipes.html: Format change for last updated column

 rrs/static/css/rrs-additional.css |  4 ++++
 rrs/views.py                      | 13 ++++++-------
 templates/rrs/recipes.html        |  9 +--------
 3 files changed, 11 insertions(+), 15 deletions(-)

-- 
1.9.1


