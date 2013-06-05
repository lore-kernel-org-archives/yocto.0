Return-Path: <ioanax.grigoropol@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 28A19E006C2
	for <yocto@yoctoproject.org>; Wed,  5 Jun 2013 10:22:25 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 05 Jun 2013 10:22:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,808,1363158000"; d="scan'208";a="348629208"
Received: from ideapad.rb.intel.com ([10.237.105.63])
	by fmsmga002.fm.intel.com with ESMTP; 05 Jun 2013 10:22:23 -0700
From: Ioana Grigoropol <ioanax.grigoropol@intel.com>
To: yocto@yoctoproject.org
Date: Wed,  5 Jun 2013 20:00:01 +0300
Message-Id: <1370451622-10619-1-git-send-email-ioanax.grigoropol@intel.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [RFC refactor 00/21] Merging windows-build with master
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
X-List-Received-Date: Wed, 05 Jun 2013 17:22:25 -0000

- 3rd batch of refactoring & merging windows-build with master
- applies on top of the second batch of 8 patches
- still one more class to refactor(OptionsPage)

Ioana Grigoropol (21):
  Fix ShellSession execute
  Remove shell type from ShellSession constructor
  Use / as separator  instead of OS separator
  Remove unsed methods & inner classes from ShellSession
  Save active connection for Bitbake recipe
  Initialize and store the connection on Recipe Wizard
  Store connection for recipe in Recipe Wizard Page
  Refactor Wizard Page fields to have consistent names
  Refactor populate method name
  Break handlePopulate into remote and local functions
  Use uri instead of string to determine location of recipe & determine
    archive type
  Store metadata location as URI instead of String
  Refactor Recipe Wizard Page to use Remote target Api
  Run all Recipe task in wizard container
  Enable Populate button when src URI changes
  Store reference to OptionsPage in InstallWizard
  Collect Bitbake error lines
  Refactor Bitbake wizard to use RemoteHelper API
  Retrieve console from RemoteHelper instead of recreating it
  Remove LongRunningTask,ICalculatePercentage from InstallWizard
  Create separated class for ConsoleWriter

 plugins/org.yocto.bc.ui/META-INF/MANIFEST.MF       |    4 +-
 .../src/org/yocto/bc/bitbake/BBSession.java        |   10 +
 .../src/org/yocto/bc/bitbake/ShellSession.java     |  138 ++---
 .../org/yocto/bc/remote/utils/ConsoleWriter.java   |   36 ++
 .../bc/remote/utils/YoctoRunnableWithProgress.java |  211 ++++++++
 .../src/org/yocto/bc/ui/Activator.java             |    2 +-
 .../bc/ui/editors/bitbake/BitBakeFileEditor.java   |    1 +
 .../bc/ui/wizards/BitbakeRecipeUIElement.java      |   15 +-
 .../bc/ui/wizards/NewBitBakeFileRecipeWizard.java  |   41 +-
 .../ui/wizards/NewBitBakeFileRecipeWizardPage.java |  528 +++++++++++---------
 .../yocto/bc/ui/wizards/install/InstallWizard.java |  275 +++-------
 .../BBConfigurationInitializeOperation.java        |   23 +-
 12 files changed, 710 insertions(+), 574 deletions(-)
 create mode 100644 plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/ConsoleWriter.java
 create mode 100644 plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/YoctoRunnableWithProgress.java

-- 
1.7.9.5


