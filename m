Return-Path: <ioanax.grigoropol@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6BA6AE00498
	for <yocto@yoctoproject.org>; Wed,  5 Dec 2012 08:32:01 -0800 (PST)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 05 Dec 2012 08:32:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,223,1355126400"; d="scan'208";a="176531965"
Received: from ideapad (HELO localhost.localdomain) ([10.237.105.148])
	by AZSMGA002.ch.intel.com with ESMTP; 05 Dec 2012 08:31:59 -0800
From: Ioana Grigoropol <ioanax.grigoropol@intel.com>
To: yocto@yoctoproject.org
Date: Wed,  5 Dec 2012 18:22:15 +0200
Message-Id: <1354724537-28013-1-git-send-email-ioanax.grigoropol@intel.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [PATCH 0/2] [eclipse-poky-windows] Fix validation & command running on Linux
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
X-List-Received-Date: Wed, 05 Dec 2012 16:32:01 -0000

- Skip validating an existing git repo and only perform some "sanity" checks
- When waiting for a command to finish executing do not use the command prompt because it can change depending on the target & the connection; instead use a terminator  to mark the end of the command execution
- When running from Linux and using a Local connection, after restarting Eclipse RSE does not find the connection - fix it by manually checking for the localhost connection

Ioana Grigoropol (2):
  Remove validation for existing git repository
  Fix synchronous waiting for command prompt in Linux & connection lost
    when restarting

 .../src/org/yocto/bc/bitbake/BBSession.java        |    2 +
 .../src/org/yocto/bc/bitbake/ShellSession.java     |   24 ++----
 .../yocto/bc/remote/utils/ProcessStreamBuffer.java |   14 ++--
 .../org/yocto/bc/remote/utils/RemoteHelper.java    |   14 ++--
 .../remote/utils/YoctoHostShellProcessAdapter.java |   28 +------
 .../src/org/yocto/bc/ui/Activator.java             |   79 ++++++--------------
 .../src/org/yocto/bc/ui/model/ProjectInfo.java     |    4 +
 .../bc/ui/wizards/NewBitBakeFileRecipeWizard.java  |    7 +-
 .../ui/wizards/NewBitBakeFileRecipeWizardPage.java |   15 ++--
 .../yocto/bc/ui/wizards/install/OptionsPage.java   |   10 +--
 10 files changed, 65 insertions(+), 132 deletions(-)

-- 
1.7.9.5


