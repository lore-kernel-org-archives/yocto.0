Return-Path: <alejandro.franco@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9AA5AE00A49; Thu, 29 Oct 2015 17:06:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 469D7E007FE
	for <yocto@yoctoproject.org>; Thu, 29 Oct 2015 17:06:21 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 29 Oct 2015 17:05:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.20,216,1444719600"; d="scan'208";a="838425846"
Received: from afshjern.zpn.intel.com ([10.219.5.147])
	by orsmga002.jf.intel.com with ESMTP; 29 Oct 2015 17:05:57 -0700
From: Alex Franco <alejandro.franco@linux.intel.com>
To: yocto@yoctoproject.org
Date: Thu, 29 Oct 2015 18:06:37 -0600
Message-Id: <1446163599-25855-1-git-send-email-alejandro.franco@linux.intel.com>
X-Mailer: git-send-email 2.6.1
Cc: paul.eggleton@intel.com
Subject: [PATCH 0/2] [layerindex-web] search enhancements
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
X-List-Received-Date: Fri, 30 Oct 2015 00:06:26 -0000

Take layer name into account when searching for recipes and change
recipe search results behavior so that when a single search result
is returned, it redirects to that recipe detail view.

[YOCTO #6618]

Alex Franco (2):
  [layerindex-web] views.py: single result redirect
  [layerindex-web] views.py: layer in recipe search

 layerindex/views.py | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

-- 
2.6.1


