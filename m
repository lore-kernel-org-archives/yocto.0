Return-Path: <amanda.r.brindle@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BEE08E0096A; Mon, 23 Oct 2017 17:10:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 43689E007EF
	for <yocto@yoctoproject.org>; Mon, 23 Oct 2017 17:10:38 -0700 (PDT)
Received: from orsmga005.jf.intel.com ([10.7.209.41])
	by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	23 Oct 2017 17:10:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.43,424,1503385200"; d="scan'208";a="164048462"
Received: from arbrindl-dev.jf.intel.com ([10.7.197.61])
	by orsmga005.jf.intel.com with ESMTP; 23 Oct 2017 17:10:38 -0700
From: Amanda Brindle <amanda.r.brindle@intel.com>
To: yocto@yoctoproject.org
Date: Mon, 23 Oct 2017 17:08:52 -0700
Message-Id: <cover.1508803311.git.amanda.r.brindle@intel.com>
X-Mailer: git-send-email 2.7.4
Cc: paul.eggleton@linux.intel.com, Amanda Brindle <amanda.r.brindle@intel.com>
Subject: [PATCH 0/1] Rewrite bbvars.py to use tinfoil to find variables
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
X-List-Received-Date: Tue, 24 Oct 2017 00:10:39 -0000


The following changes since commit 65d23bd7986615fdfb0f1717b615534a2a14ab80:

  README.qemu: qemuppc64 is not supported (2017-10-16 23:54:31 +0100)

are available in the git repository at:

  git://git.yoctoproject.org/poky-contrib abrindle/bbvars_tinfoil
  http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=abrindle/bbvars_tinfoil

Amanda Brindle (1):
  Rewrite bbvars.py to use tinfoil to find variables

 scripts/contrib/bbvars.py | 90 ++++++++++++++++++++++++++++++++++-------------
 1 file changed, 66 insertions(+), 24 deletions(-)

-- 
2.7.4


