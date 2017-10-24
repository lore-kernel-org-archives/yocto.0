Return-Path: <stephano.cetola@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4980DE00D04; Tue, 24 Oct 2017 07:36:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E76FCE00CEF
	for <yocto@yoctoproject.org>; Tue, 24 Oct 2017 07:36:45 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	24 Oct 2017 07:36:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.43,428,1503385200"; 
   d="scan'208";a="1377104"
Received: from paokafor-mobl.amr.corp.intel.com ([10.254.119.141])
	by orsmga002.jf.intel.com with ESMTP; 24 Oct 2017 07:36:45 -0700
From: Stephano Cetola <stephano.cetola@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue, 24 Oct 2017 07:36:41 -0700
Message-Id: <20171024143643.91520-1-stephano.cetola@linux.intel.com>
X-Mailer: git-send-email 2.14.2
Subject: [yocto-autobuilder][PATCH 0/2] add musl buildsets
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
X-List-Received-Date: Tue, 24 Oct 2017 14:36:46 -0000

These patches add musl buildsets for 64 bit on the main autobuilders
and 32 bit on the meta-intel autobuilder.

Stephano Cetola (2):
  nightly-musl-x86-64: add 64bit musl build
  meta-intel: nightly-musl: add 32 bit buildset

 .../nightly-musl-x86-64.conf                       | 18 ++++++++
 buildset-config.controller/nightly.conf            |  1 +
 buildset-config.meta-intel/nightly-meta-intel.conf |  3 +-
 .../nightly-musl-core2-32.conf                     | 53 ++++++++++++++++++++++
 4 files changed, 74 insertions(+), 1 deletion(-)
 create mode 100644 buildset-config.controller/nightly-musl-x86-64.conf
 create mode 100644 buildset-config.meta-intel/nightly-musl-core2-32.conf

-- 
2.14.2


