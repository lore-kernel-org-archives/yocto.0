Return-Path: <timothy.t.orling@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 59613E00ECF; Wed, 27 Jul 2016 14:12:29 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D674EE00ECB
	for <yocto@yoctoproject.org>; Wed, 27 Jul 2016 14:12:28 -0700 (PDT)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by orsmga103.jf.intel.com with ESMTP; 27 Jul 2016 14:12:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.28,431,1464678000"; d="scan'208";a="854795856"
Received: from timo-fedora.jf.intel.com ([10.7.201.162])
	by orsmga003.jf.intel.com with ESMTP; 27 Jul 2016 14:12:23 -0700
From: Tim Orling <timothy.t.orling@linux.intel.com>
To: yocto@yoctoproject.org
Date: Wed, 27 Jul 2016 14:12:54 -0700
Message-Id: <1469653976-19471-1-git-send-email-timothy.t.orling@linux.intel.com>
X-Mailer: git-send-email 2.7.4
Subject: [meta-qt4][master][PATCH v2 0/2] fixes for qt4-native
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
X-List-Received-Date: Wed, 27 Jul 2016 21:12:29 -0000

[YOCTO #10039]

qt4-native does not inherit from qt4-4.8.7.inc, so patches
applied to target qt4 have not been applied to native.

This blocks the -lsb images from building for Fedora-24

This series adds the Yocto Bug number to ensure that it
is resolved.

Tim Orling (2):
  qt4-native: fix build for gcc-6
  qt4-native: inhibit strip for debug packages

 recipes-qt4/qt4/qt4-native.inc | 6 ++++++
 1 file changed, 6 insertions(+)

-- 
2.7.4


