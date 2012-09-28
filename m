Return-Path: <kevin.strasser@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C9C9CE00344
	for <yocto@yoctoproject.org>; Thu, 27 Sep 2012 17:30:57 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 27 Sep 2012 17:30:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,498,1344236400"; d="scan'208";a="214857757"
Received: from wrk.jf.intel.com ([10.7.202.68])
	by orsmga002.jf.intel.com with ESMTP; 27 Sep 2012 17:30:47 -0700
From: Kevin Strasser <kevin.strasser@linux.intel.com>
To: yocto@yoctoproject.org
Date: Thu, 27 Sep 2012 17:30:48 -0700
Message-Id: <cover.1348791431.git.kevin.strasser@linux.intel.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [meta-baryon][PATCH 0/4] clear up build warnings
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 28 Sep 2012 00:30:57 -0000

This patch set clears up some of the warnings that are generated when
building baryon against the tip of the 1.3_M3 branch of poky.

The following changes since commit 500a124831e292d76d864a3c64a57a5007c4553a:

  kernel: enable nfsd when using the 3.4 kernel (2012-09-13 10:43:26 -0700)

are available in the git repository at:

  git://git.yoctoproject.org/poky-contrib strassek/baryon-warnings
  http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=strassek/baryon-warnings

Kevin Strasser (4):
  proftpd: remove unused directories after install
  samba: remove unused directories after install
  orc: specify the generic licenses being used
  talloc: specify the version of LGPL and include the license text

 recipes-connectivity/samba/samba.inc       |    2 ++
 recipes-extended/proftpd/proftpd_1.3.4b.bb |    1 +
 recipes-multimedia/orc/orc.inc             |    2 +-
 recipes-multimedia/orc/orc_0.4.5.bb        |    2 +-
 recipes-support/talloc/talloc_2.0.1.bb     |    6 +++---
 5 files changed, 8 insertions(+), 5 deletions(-)

-- 
1.7.9.5


