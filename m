Return-Path: <ioanax.grigoropol@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A0F9AE0143A
	for <yocto@yoctoproject.org>; Thu,  6 Dec 2012 05:56:56 -0800 (PST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 06 Dec 2012 05:56:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,230,1355126400"; d="scan'208";a="227491070"
Received: from ideapad (HELO localhost.localdomain) ([10.237.105.148])
	by azsmga001.ch.intel.com with ESMTP; 06 Dec 2012 05:56:54 -0800
From: Ioana Grigoropol <ioanax.grigoropol@intel.com>
To: yocto@yoctoproject.org
Date: Thu,  6 Dec 2012 15:46:54 +0200
Message-Id: <1354801622-13962-1-git-send-email-ioanax.grigoropol@intel.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [PATCH 0/8] [eclipse-poky-windows] Resending patches targeting fixes for Windows plugin
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
X-List-Received-Date: Thu, 06 Dec 2012 13:56:56 -0000

- files modified under Windows are CRLF ended -> convert them to CR only and apply patch 0007 with --keep-cr

Ioana Grigoropol (8):
  Show progress bar for New Bitbake Commander project
  Show progress bar for building new Recipe in Bitbake commander
    perspective
  Validate project name and location for Bitbake command project
  Fix incompatibility with jre1.6 support for typed HashMap
  Remove validation for existing git repository
  Fix synchronous waiting for command prompt in Linux & connection lost
    when restarting
  convert CRLF line terminators to CR only
  Validate Bitbake Commander project when switching between new repo
    and existing one

 .../src/org/yocto/bc/bitbake/BBSession.java        |    2 +
 .../src/org/yocto/bc/bitbake/ShellSession.java     |  132 +++-----
 .../yocto/bc/remote/utils/ProcessStreamBuffer.java |   17 +-
 .../org/yocto/bc/remote/utils/RemoteHelper.java    |  161 +++++-----
 .../org/yocto/bc/remote/utils/RemoteMachine.java   |    4 +-
 .../remote/utils/YoctoHostShellProcessAdapter.java |  162 +++++-----
 .../bc/remote/utils/YoctoRunnableWithProgress.java |  106 +++++++
 .../src/org/yocto/bc/ui/Activator.java             |   79 ++---
 .../src/org/yocto/bc/ui/model/ProjectInfo.java     |    4 +
 .../org/yocto/bc/ui/wizards/FiniteStateWizard.java |  112 +++----
 .../yocto/bc/ui/wizards/FiniteStateWizardPage.java |  320 ++++++++++----------
 .../bc/ui/wizards/NewBitBakeFileRecipeWizard.java  |    7 +-
 .../ui/wizards/NewBitBakeFileRecipeWizardPage.java |  300 +++++++++---------
 .../yocto/bc/ui/wizards/install/InstallWizard.java |  113 ++-----
 .../yocto/bc/ui/wizards/install/OptionsPage.java   |  184 +++++------
 .../BBConfigurationInitializeOperation.java        |    6 +-
 .../newproject/CreateBBCProjectOperation.java      |   31 +-
 17 files changed, 823 insertions(+), 917 deletions(-)
 create mode 100644 plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/YoctoRunnableWithProgress.java

-- 
1.7.9.5


