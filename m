Return-Path: <ioanax.grigoropol@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A2DEEE013CE
	for <yocto@yoctoproject.org>; Wed, 28 Nov 2012 02:21:46 -0800 (PST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 28 Nov 2012 02:21:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,177,1355126400"; d="scan'208";a="223584806"
Received: from ideapad (HELO localhost.localdomain) ([10.237.105.148])
	by azsmga001.ch.intel.com with ESMTP; 28 Nov 2012 02:21:44 -0800
From: Ioana Grigoropol <ioanax.grigoropol@intel.com>
To: yocto@yoctoproject.org
Date: Wed, 28 Nov 2012 12:12:22 +0200
Message-Id: <1354097550-21312-1-git-send-email-ioanax.grigoropol@intel.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [PATCH 0/8] [eclipse-poky-windows] Multiple fixes against eclipse plugin for working on Windows agains Build Appliance
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
X-List-Received-Date: Wed, 28 Nov 2012 10:21:46 -0000

- Add fixes for Recipe wizard & Bitbake Project Wizard 
- Wait for command output in a synchronous way using semaphores
- Fix remote deletion of files
- Initialize Bitbake session & parse environment variables

Ioana Grigoropol (8):
  Add console fixes & run commands in a synchronous way
  Initialize bitbake session & environment parse variables
  Fix Bitbake commander project wizard
  Validate Recipe autopopulated fields
  Fix remote deletion of files
  Fix md5sum & sha256sum pattern checks
  Fix bitbake session by disabling sanity checks
  Do not rely on AbstractHostShellOutputReader for waiting for command
    outputs

 .../src/org/yocto/bc/bitbake/BBRecipe.java         |   10 +-
 .../src/org/yocto/bc/bitbake/BBSession.java        |   17 ++-
 .../src/org/yocto/bc/bitbake/ShellSession.java     |   58 ++++-----
 .../org/yocto/bc/remote/utils/ConsoleHelper.java   |   18 +--
 .../bc/remote/utils/ConsoleHelperRunnable.java     |   31 +++++
 .../org/yocto/bc/remote/utils/ConsoleRunnable.java |   37 ++++++
 .../org/yocto/bc/remote/utils/RemoteHelper.java    |   41 ++++--
 .../org/yocto/bc/remote/utils/RemoteMachine.java   |    6 +-
 .../remote/utils/YoctoHostShellProcessAdapter.java |  132 +++++++++++++++++---
 .../bc/ui/wizards/NewBitBakeFileRecipeWizard.java  |    2 +-
 .../ui/wizards/NewBitBakeFileRecipeWizardPage.java |   40 +++---
 .../yocto/bc/ui/wizards/install/InstallWizard.java |   85 ++++---------
 12 files changed, 297 insertions(+), 180 deletions(-)
 create mode 100644 plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/ConsoleHelperRunnable.java
 create mode 100644 plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/ConsoleRunnable.java

-- 
1.7.9.5


