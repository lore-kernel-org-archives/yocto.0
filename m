Return-Path: <tom.zanussi@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2078DE00B52; Tue,  3 May 2016 09:29:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6FF9EE007E4
	for <yocto@yoctoproject.org>; Tue,  3 May 2016 09:29:05 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga103.fm.intel.com with ESMTP; 03 May 2016 09:29:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.24,573,1455004800"; d="scan'208";a="971693829"
Received: from tzanussi-mobl.amr.corp.intel.com (HELO localhost)
	([10.255.82.108])
	by fmsmga002.fm.intel.com with ESMTP; 03 May 2016 09:28:40 -0700
From: Tom Zanussi <tom.zanussi@linux.intel.com>
To: srifenbark@gmail.com,
	yocto@yoctoproject.org
Date: Tue,  3 May 2016 11:28:32 -0500
Message-Id: <cover.1462292535.git.tom.zanussi@linux.intel.com>
X-Mailer: git-send-email 1.9.3
Subject: [PATCH 0/2] kernel-dev manual fixes, V2
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
X-List-Received-Date: Tue, 03 May 2016 16:29:09 -0000

This is a fix for Yocto bug 9124, against yocto-docs/master.

V2: Fix a typo in the commit message and update README update, as the
cc: to the maintainer listed there bounced.

The following changes since commit 0b9ee8da66ff81e0724465f18b0323f1216cb9fa:

  ref-manual: Added GObject Introspection to 2.1 migration section. (2016-04-20 07:27:43 -0700)

are available in the git repository at:

  git://git.yoctoproject.org/poky-contrib tzanussi/kernel-dev-manual-fixes
  http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/log/?h=tzanussi/kernel-dev-manual-fixes

Tom Zanussi (2):
  kernel-dev: Fix the locations of .config and source directory
  README: Add correct email for Yocto documentation maintainer

 README                                         |  2 +-
 documentation/kernel-dev/kernel-dev-common.xml | 20 +++++++++++++++-----
 2 files changed, 16 insertions(+), 6 deletions(-)

-- 
1.9.3


