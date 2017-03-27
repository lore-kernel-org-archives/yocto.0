Return-Path: <jose.a.lamego@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0DCA4E0098A; Mon, 27 Mar 2017 11:41:06 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9252BE00887
	for <yocto@yoctoproject.org>; Mon, 27 Mar 2017 11:41:05 -0700 (PDT)
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
	by orsmga105.jf.intel.com with ESMTP; 27 Mar 2017 11:41:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.36,232,1486454400"; d="scan'208";a="81553796"
Received: from jalamego-mobl2.zpn.intel.com ([10.219.128.123])
	by fmsmga006.fm.intel.com with ESMTP; 27 Mar 2017 11:41:04 -0700
From: Jose Lamego <jose.a.lamego@linux.intel.com>
To: yocto@yoctoproject.org
Date: Mon, 27 Mar 2017 12:40:48 -0600
Message-Id: <1490640050-10619-1-git-send-email-jose.a.lamego@linux.intel.com>
X-Mailer: git-send-email 2.7.4
Subject: [patchwork][PATCH 0/2] patchwork: keep archive query parameter in views
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
X-List-Received-Date: Mon, 27 Mar 2017 18:41:06 -0000

patchwork pagination links do not keep "archive" filtering parameter,
which may lead to inaccurate data displayed in the next views.

These changes read the "archive" parameter from current GET request and add it
to the pagination links.

[YOCTO #11200]

Jose Lamego (2):
  patchwork/paginator.py: Add archive parameter
  pagination.html: Add archive parameter to links

 patchwork/paginator.py                        |  1 +
 patchwork/templates/patchwork/pagination.html | 10 +++++-----
 2 files changed, 6 insertions(+), 5 deletions(-)

-- 
2.7.4


