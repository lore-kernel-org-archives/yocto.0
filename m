Return-Path: <igor.stoppa@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D0A76E00D69; Tue, 10 May 2016 08:02:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B97ECE00D48
	for <yocto@yoctoproject.org>; Tue, 10 May 2016 08:02:40 -0700 (PDT)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by fmsmga104.fm.intel.com with ESMTP; 10 May 2016 08:02:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.24,604,1455004800"; d="scan'208";a="803097063"
Received: from labatc00.fi.intel.com (HELO labatc00.labatc00.fi.intel.com)
	([10.237.72.10])
	by orsmga003.jf.intel.com with ESMTP; 10 May 2016 08:02:30 -0700
From: Igor Stoppa <igor.stoppa@intel.com>
To: yocto@yoctoproject.org joshua.g.lock@intel.com
Date: Tue, 10 May 2016 18:02:08 +0300
Message-Id: <1462892529-5265-1-git-send-email-igor.stoppa@intel.com>
X-Mailer: git-send-email 2.1.4
X-Mailman-Approved-At: Thu, 12 May 2016 07:51:51 -0700
Cc: Igor Stoppa <igor.stoppa@intel.com>
Subject: [PATCH] [meta-swupd] Rebase xattr workaround for pseudo.
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
X-List-Received-Date: Tue, 10 May 2016 15:02:41 -0000

In the most recent version of swupd-server, a list of includes has changed a bit
and an older patch won't apply cleanly.

Igor Stoppa (1):
  Rebase patch for xattr workaround against pseudo.

 .../fullfiles.c-work-around-pseudo-bug.patch       | 29 +++++++++++++---------
 1 file changed, 17 insertions(+), 12 deletions(-)

-- 
2.1.4


