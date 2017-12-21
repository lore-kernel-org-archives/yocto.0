Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E1B85E00E3F; Thu, 21 Dec 2017 08:33:06 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5506FE00D9C
	for <yocto@yoctoproject.org>; Thu, 21 Dec 2017 08:33:05 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
	by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	21 Dec 2017 08:33:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.45,436,1508828400"; d="scan'208";a="160761280"
Received: from kanavin-desktop.fi.intel.com ([10.237.68.161])
	by orsmga004.jf.intel.com with ESMTP; 21 Dec 2017 08:33:02 -0800
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
To: yocto@yoctoproject.org
Date: Thu, 21 Dec 2017 18:27:08 +0200
Message-Id: <cover.1513873401.git.alexander.kanavin@linux.intel.com>
X-Mailer: git-send-email 2.15.1
Subject: [auh][PATCH 00/21] Further enhancements to automatic upgrade helper
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
X-List-Received-Date: Thu, 21 Dec 2017 16:33:07 -0000

Particularly:
1) Rebase and integrate (most of) Robert's patches
2) Add musl testing support (a notorious source of failures)
3) Rework testimage support to be more straigtforward and usable locally
by maintainers
4) Other things :)

The following changes since commit fbccfa00967305bb3866d0f610cd4b83b8b7a28c:

  upgradehelper.py: revert commits that failed to build (2017-12-14 18:13:11 +0200)

are available in the Git repository at:

  git://git.yoctoproject.org/auto-upgrade-helper devel
  http://git.yoctoproject.org/cgit.cgi/auto-upgrade-helper/log/?h=devel

Alexander Kanavin (13):
  upgradehelper.py: drop automatic mode
  upgradehelper.py: replace the confusing 'maintainer' command line
    option
  weeklyjob.sh: set up a temporary branch and clean up afterwards
  Add support for compiling against non-default C libraries
  Add protection measures and information against running with existing
    build directories.
  upgradehelper.py: do not include absolute paths in the generated
    tarball
  Do not require configuration options that aren't necessary for running
    ptests
  upgradehelper.py: do not include testimage information in maintainer
    email messages
  testimage.py: clarify what arguments are passed to class constructor
  testimage.py: run even if no packages were upgraded
  testimage.py: remove all iterations (over machines, over failing
    recipes)
  testimage.py: rewrite the logic for building and running testimages
  testimage.py: collect and write out logs from bitbake and testimage

Robert Yang (8):
  upgradehelper.py: fix checking for do_checkpkg
  upgradehelper.py: support upgrade multiple recipes
  upgradehelper.py: use UniverseUpdater for all cases
  modules/steps.py: fix warn when skip compilation
  upgradehelper.py: only check email settings when -e is specified
  upgradehelper.py: always do upgrade when recipes are specified
  upgradehelper.py: print info when recipe is skipped to upgrade
  upgradehelper.py: don't build gcc-runtime when --skip-compilation

 README                   |  40 +++++---
 modules/steps.py         |   2 +-
 modules/testimage.py     | 256 ++++++++---------------------------------------
 modules/utils/bitbake.py |   7 +-
 upgradehelper.py         | 144 +++++++++++---------------
 weeklyjob.sh             |  16 ++-
 6 files changed, 142 insertions(+), 323 deletions(-)

-- 
2.15.1


