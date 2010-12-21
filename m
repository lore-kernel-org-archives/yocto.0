Return-Path: <elizabeth.flanagan@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id DBF824C80039
	for <yocto@yoctoproject.org>; Tue, 21 Dec 2010 11:24:52 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 21 Dec 2010 09:24:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,208,1291622400"; d="scan'208";a="585876432"
Received: from eflanlinux.jf.intel.com (HELO localhost) ([10.7.201.149])
	by orsmga002.jf.intel.com with ESMTP; 21 Dec 2010 09:24:52 -0800
Message-Id: <cover.1292951846.git.elizabeth.flanagan@intel.com>
From: Beth Flanagan <elizabeth.flanagan@intel.com>
Date: Tue, 21 Dec 2010 09:17:26 -0800
To: yocto@yoctoproject.org
Subject: [PATCH 0/3] Consolidate Pull Requests for Autobuilder
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
X-List-Received-Date: Tue, 21 Dec 2010 17:24:53 -0000

Scott,

This pull request updates the buildbot installer to support BuildBot 0.8.3, which was released yesterday, as well as updated build helper scripts and a new pokyABConfig.py which adds a swabber testing target,implements all current autobuilder build arches and lastly, implements sanity testing.

The buildbot installer script has been re-written in python and an INSTALL file added to explain the new installation process. I've tested it on Ubuntu 10.10 and openSUSE 11.3, and would appreciate anyone who has a different system letting me know their experiences with it (good and bad).

I've also incorporated a fix to poky-autobuild that sources the correct env script and added some missing build helper scripts, based off of what is actually on the autobuilder.

-b

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: eflanagan/bb-0.8.3
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=eflanagan/bb-0.8.3

Thanks,
    Beth Flanagan <elizabeth.flanagan@intel.com>
---


Beth Flanagan (3):
  Upgrade to Buildbot 0.8.3: scripts/poky-setup-autobuilder
  Adding new scripts to reflect a real autobuilder
  Change to poky-autobuild to source correct file:

 INSTALL                                          |   55 +++
 README                                           |    6 +-
 scripts/poky-autobuild                           |   39 ++-
 scripts/poky-autobuild-cleanoutput               |    6 +-
 scripts/poky-autobuild-copy-images               |  458 +++++++++++++++++++
 scripts/poky-autobuild-generate-release-external |  220 +++++++++
 scripts/poky-autobuild-generate-release-internal |  232 ++++++++++
 scripts/poky-autobuild-generate-sources-tarball  |   54 +++
 scripts/poky-autobuild-postprocess               |    6 +-
 scripts/poky-autobuild-preamble                  |   58 +++
 scripts/poky-autobuild-rename-release-images     |  128 ++++++
 scripts/poky-autobuild-sanitytest                |   58 +++
 scripts/poky-output-sort                         |  117 +++++
 scripts/poky-preserve-work-dir                   |   26 +-
 scripts/poky-setup-autobuilder                   |  514 +++++++++++++++-------
 scripts/pokyABConfig.py                          |  469 +++++++++++++++-----
 scripts/run-on-buildset-success                  |   11 +
 17 files changed, 2154 insertions(+), 303 deletions(-)
 create mode 100644 INSTALL
 create mode 100755 scripts/poky-autobuild-copy-images
 create mode 100755 scripts/poky-autobuild-generate-release-external
 create mode 100755 scripts/poky-autobuild-generate-release-internal
 create mode 100755 scripts/poky-autobuild-generate-sources-tarball
 create mode 100755 scripts/poky-autobuild-preamble
 create mode 100755 scripts/poky-autobuild-rename-release-images
 create mode 100755 scripts/poky-autobuild-sanitytest
 create mode 100755 scripts/poky-output-sort
 create mode 100755 scripts/run-on-buildset-success


