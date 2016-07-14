Return-Path: <william.c.randle@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8907FE00D0A; Thu, 14 Jul 2016 10:05:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [192.55.52.120 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0033FE0095F
	for <yocto@yoctoproject.org>; Thu, 14 Jul 2016 10:05:56 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by fmsmga104.fm.intel.com with ESMTP; 14 Jul 2016 10:05:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.28,363,1464678000"; d="scan'208";a="1016960559"
Received: from wcrandle-mobl1.amr.corp.intel.com (HELO
	wcrandle-mobl1.jf.intel.com) ([10.7.199.71])
	by orsmga002.jf.intel.com with ESMTP; 14 Jul 2016 10:05:56 -0700
From: Bill Randle <william.c.randle@intel.com>
To: yocto@yoctoproject.org
Date: Thu, 14 Jul 2016 10:05:48 -0700
Message-Id: <1468515952-12949-1-git-send-email-william.c.randle@intel.com>
X-Mailer: git-send-email 2.5.5
Subject: [yocto-autobuilder][PATCH 0/4] autobuilder: make toaster eventlog creation optional
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
X-List-Received-Date: Thu, 14 Jul 2016 17:05:57 -0000

Currently, a toaster eventlog is generated for most all machine specific
images (e.g., nightly-arm, nightly-x86, etc.) and placed in the top-level
build directory. Having it in the top level dir causes inotify overflow in
bitbake, due to the large number of changes to the file.

This set of patches (1) make generation of the eventlog optional, by
having a user selection in the Forced Build web pages, (2) places the
eventlog in build/tmp/log, instead of build and (3) adds a timestamp to
the eventlog filename since multiple event logs can be generated during
a multi-image buildset and otherwise only the last one would otherwise
be saved.

[YOCTO #9884]

Bill Randle (4):
  remote_kick.py: add default entry for new 'create_eventlog' property
  BuildImages.py: build toaster eventlog only when requested
  UploadToasterEventlog.py: handle multiple eventlog files
  buildset-config.controller: add new 'create_eventlog' forced build
    property

 bin/remote_kick.py                                 |  1 +
 buildset-config.controller/nightly-arm-lsb.conf    |  4 ++++
 buildset-config.controller/nightly-arm.conf        |  4 ++++
 buildset-config.controller/nightly-arm64.conf      |  4 ++++
 buildset-config.controller/nightly-mips-lsb.conf   |  4 ++++
 buildset-config.controller/nightly-mips.conf       |  4 ++++
 buildset-config.controller/nightly-mips64.conf     |  4 ++++
 buildset-config.controller/nightly-no-x11.conf     |  4 ++++
 buildset-config.controller/nightly-ppc-lsb.conf    |  4 ++++
 buildset-config.controller/nightly-ppc.conf        |  4 ++++
 buildset-config.controller/nightly-x32.conf        |  4 ++++
 buildset-config.controller/nightly-x86-64-lsb.conf |  4 ++++
 buildset-config.controller/nightly-x86-64.conf     |  4 ++++
 buildset-config.controller/nightly-x86-lsb.conf    |  4 ++++
 buildset-config.controller/nightly-x86.conf        |  4 ++++
 buildset-config.controller/nightly.conf            |  7 ++++++-
 .../autobuilder/buildsteps/BuildImages.py          | 24 +++++++++++++++++-----
 .../buildsteps/UploadToasterEventlog.py            | 16 +++++++++++-----
 18 files changed, 93 insertions(+), 11 deletions(-)

-- 
2.5.5


