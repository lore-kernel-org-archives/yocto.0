Return-Path: <timothy.t.orling@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 21B49E00EC6; Wed, 27 Jul 2016 13:45:21 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AFCBBE009C9
	for <yocto@yoctoproject.org>; Wed, 27 Jul 2016 13:45:18 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by fmsmga101.fm.intel.com with ESMTP; 27 Jul 2016 13:45:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.28,431,1464678000"; d="scan'208";a="1025121634"
Received: from timo-fedora.jf.intel.com ([10.7.201.162])
	by orsmga002.jf.intel.com with ESMTP; 27 Jul 2016 13:45:06 -0700
From: Tim Orling <timothy.t.orling@linux.intel.com>
To: yocto@yoctoproject.org
Date: Wed, 27 Jul 2016 13:45:53 -0700
Message-Id: <1469652355-27486-1-git-send-email-timothy.t.orling@linux.intel.com>
X-Mailer: git-send-email 2.7.4
Subject: [meta-qt4][krogoth 0/2] fixes for qt4-native
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
X-List-Received-Date: Wed, 27 Jul 2016 20:45:21 -0000

[YOCTO #10038]

qt4-native does not inherit from qt4-4.8.7.inc, so patches
applied to target qt4 have not been applied to native.

This blocks the -lsb images from building for Fedora-24

A separate series will also be sent for master, tracked
on a separate bug to make sure the issue is resolved.

Obsoletes prior series with similar intent.

Tim Orling (2):
  qt4-native: fix build for gcc-6
  qt4-native: inhibit strip for debug packages

 recipes-qt4/qt4/qt4-native.inc | 6 ++++++
 1 file changed, 6 insertions(+)

-- 
2.7.4


