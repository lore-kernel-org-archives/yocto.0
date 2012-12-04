Return-Path: <ioanax.grigoropol@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8B176E0142A
	for <yocto@yoctoproject.org>; Tue,  4 Dec 2012 05:36:02 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 04 Dec 2012 05:35:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,215,1355126400"; d="scan'208";a="228753501"
Received: from ideapad (HELO localhost.localdomain) ([10.237.105.148])
	by orsmga001.jf.intel.com with ESMTP; 04 Dec 2012 05:36:00 -0800
From: Ioana Grigoropol <ioanax.grigoropol@intel.com>
To: yocto@yoctoproject.org
Date: Tue,  4 Dec 2012 15:26:20 +0200
Message-Id: <1354627583-16084-1-git-send-email-ioanax.grigoropol@intel.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [PATCH 0/3] [eclipse-poky] Eclipse plugin on Windows - fixes for progress update on wizards & input validation
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
X-List-Received-Date: Tue, 04 Dec 2012 13:36:02 -0000

- Resending patches with proper header for eclipse-poky
- Include fixes for showing progress information for long time running tasks on wizards for Bitbake Commander project & Bitbake recipe
- Includes validation for the location & name of a new Bitbake Commander in a new repo clone or an existing one
 
Ioana Grigoropol (3):
  Show progress bar for New Bitbake Commander project
  Show progress bar for building new Recipe in Bitbake commander
    perspective
  Validate project name and location for Bitbake command project

 .../src/org/yocto/bc/bitbake/ShellSession.java     |  116 +++-----
 .../yocto/bc/remote/utils/ProcessStreamBuffer.java |    3 +-
 .../org/yocto/bc/remote/utils/RemoteHelper.java    |  155 +++++------
 .../org/yocto/bc/remote/utils/RemoteMachine.java   |    4 +-
 .../remote/utils/YoctoHostShellProcessAdapter.java |  136 +++++-----
 .../bc/remote/utils/YoctoRunnableWithProgress.java |  106 ++++++++
 .../bc/ui/wizards/NewBitBakeFileRecipeWizard.java  |    2 +-
 .../ui/wizards/NewBitBakeFileRecipeWizardPage.java |  285 ++++++++++----------
 .../yocto/bc/ui/wizards/install/InstallWizard.java |  113 ++------
 .../yocto/bc/ui/wizards/install/OptionsPage.java   |  178 ++++++------
 .../BBConfigurationInitializeOperation.java        |    6 +-
 .../newproject/CreateBBCProjectOperation.java      |   31 +--
 12 files changed, 551 insertions(+), 584 deletions(-)
 create mode 100644 plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/YoctoRunnableWithProgress.java

-- 
1.7.9.5


