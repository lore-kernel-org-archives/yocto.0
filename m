Return-Path: <mariano.lopez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BB975E00AAF; Mon, 17 Aug 2015 08:30:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 90FACE0097F
	for <yocto@yoctoproject.org>; Mon, 17 Aug 2015 08:30:34 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by orsmga103.jf.intel.com with ESMTP; 17 Aug 2015 08:30:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.15,695,1432623600"; d="scan'208";a="785364138"
Received: from mlopezva-mobl2.zpn.intel.com (HELO localhost.localdomain)
	([10.219.24.49])
	by fmsmga002.fm.intel.com with ESMTP; 17 Aug 2015 08:30:23 -0700
From: mariano.lopez@linux.intel.com
To: yocto@yoctoproject.org
Date: Mon, 17 Aug 2015 10:30:11 -0500
Message-Id: <1439825413-6276-1-git-send-email-mariano.lopez@linux.intel.com>
X-Mailer: git-send-email 1.9.1
Subject: [rrs][PATCH 0/2] Changes to the navbar
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
X-List-Received-Date: Mon, 17 Aug 2015 15:30:40 -0000

From: Mariano Lopez <mariano.lopez@linux.intel.com>

These patches change the design of the navbar.
It makes more clear what is the meaning of the
percentage in there and adds more information.

Mariano Lopez (2):
  rrs/views.py: Added percentages for navbar
  rrs/base_toplevel.html: Navbar redesign

 rrs/static/css/rrs-additional.css | 13 ++++---
 rrs/views.py                      | 71 ++++++++++++++++++++++++++++++---------
 templates/rrs/base_toplevel.html  | 44 ++++++++++++++----------
 3 files changed, 91 insertions(+), 37 deletions(-)

-- 
1.9.1


