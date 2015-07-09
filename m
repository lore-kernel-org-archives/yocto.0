Return-Path: <mariano.lopez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BBF98E00A51; Thu,  9 Jul 2015 13:33:42 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7FC5FE009D7
	for <yocto@yoctoproject.org>; Thu,  9 Jul 2015 13:33:37 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 09 Jul 2015 13:33:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.15,442,1432623600"; d="scan'208";a="761497469"
Received: from mlopezva-mobl2.zpn.intel.com ([10.219.24.79])
	by orsmga002.jf.intel.com with ESMTP; 09 Jul 2015 13:33:37 -0700
From: mariano.lopez@linux.intel.com
To: yocto@yoctoproject.org
Date: Thu,  9 Jul 2015 15:33:32 -0500
Message-Id: <1436474014-12101-1-git-send-email-mariano.lopez@linux.intel.com>
X-Mailer: git-send-email 1.9.1
Subject: [rrs][PATCH 0/2] Add Last Updated column
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
X-List-Received-Date: Thu, 09 Jul 2015 20:33:42 -0000

From: Mariano Lopez <mariano.lopez@linux.intel.com>

These patches a column in the recipe view that
show when a out dated recipes was updated the
last time. Also changes the date formats to iso.

views.py: Changed dates to iso
recipes.html: Add the Last updated column

Mariano Lopez (2):
  views.py: Changed date format to iso
  recipes.html: Add Last Updated column

 rrs/views.py               |  7 ++++---
 templates/rrs/recipes.html | 17 +++++++++++++----
 2 files changed, 17 insertions(+), 7 deletions(-)

-- 
1.9.1


