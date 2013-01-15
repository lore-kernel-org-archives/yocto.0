Return-Path: <ioanax.grigoropol@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4C092E01248
	for <yocto@yoctoproject.org>; Tue, 15 Jan 2013 07:10:27 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 15 Jan 2013 07:10:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,473,1355126400"; d="scan'208";a="274027405"
Received: from ideapad (HELO localhost.localdomain) ([10.237.105.62])
	by fmsmga001.fm.intel.com with ESMTP; 15 Jan 2013 07:10:25 -0800
From: Ioana Grigoropol <ioanax.grigoropol@intel.com>
To: yocto@yoctoproject.org
Date: Tue, 15 Jan 2013 16:57:24 +0200
Message-Id: <1358261849-5021-1-git-send-email-ioanax.grigoropol@intel.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [PATCH v3 0/5][eclipse-poky][branch:windows-build]Multiple fixes
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
X-List-Received-Date: Tue, 15 Jan 2013 15:10:27 -0000

- applies onto commit  5a27bb1f9e45f0a9408453f9e7e70cc333b97afe (windows-build HEAD)

Ioana Grigoropol (5):
  Fix variables hoover & remote file system detection
  Allow '-' in project names
  Reinstate OEFileSystem, OEFile and Ignored Paths for Linux
  Disable "Finish" when project location is invalid
  Send output from bitbake environment parsing in the background

 plugins/org.yocto.bc.ui/META-INF/MANIFEST.MF       |    2 +-
 plugins/org.yocto.bc.ui/plugin.xml                 |    3 +-
 .../src/org/yocto/bc/bitbake/BBSession.java        |   91 ++++++++-----
 .../org/yocto/bc/bitbake/ProjectInfoHelper.java    |   24 ++--
 .../src/org/yocto/bc/bitbake/ShellSession.java     |   14 +-
 .../org/yocto/bc/remote/utils/RemoteHelper.java    |   10 +-
 .../org/yocto/bc/remote/utils/RemoteMachine.java   |   25 ++--
 .../remote/utils/YoctoHostShellProcessAdapter.java |   14 +-
 .../src/org/yocto/bc/ui/Activator.java             |   45 ++++--
 .../org/yocto/bc/ui/BCResourceChangeListener.java  |    1 -
 .../bc/ui/editors/bitbake/BBVariableTextHover.java |   12 +-
 .../src/org/yocto/bc/ui/filesystem/OEFile.java     |  143 ++++++--------------
 .../org/yocto/bc/ui/filesystem/OEFileSystem.java   |   52 ++++---
 .../bc/ui/filesystem/OEFileSystemContributor.java  |    7 +-
 .../org/yocto/bc/ui/filesystem/OEIgnoreFile.java   |   31 ++++-
 .../src/org/yocto/bc/ui/model/ProjectInfo.java     |   21 ++-
 .../src/org/yocto/bc/ui/model/YoctoHostFile.java   |  110 ++++++++++++---
 .../yocto/bc/ui/wizards/FiniteStateWizardPage.java |   54 ++++----
 .../bc/ui/wizards/NewBitBakeFileRecipeWizard.java  |   58 ++++----
 .../ui/wizards/NewBitBakeFileRecipeWizardPage.java |    5 +-
 .../yocto/bc/ui/wizards/install/InstallWizard.java |   63 +++++----
 .../yocto/bc/ui/wizards/install/OptionsPage.java   |   11 +-
 .../BBConfigurationInitializeOperation.java        |    2 +
 .../newproject/CreateBBCProjectOperation.java      |   23 ++--
 24 files changed, 494 insertions(+), 327 deletions(-)

-- 
1.7.9.5


