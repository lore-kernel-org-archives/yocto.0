Return-Path: <ioanax.grigoropol@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 964F5E01567
	for <yocto@yoctoproject.org>; Wed, 12 Jun 2013 03:44:19 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 12 Jun 2013 03:44:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,851,1363158000"; d="scan'208";a="315805832"
Received: from ideapad.rb.intel.com ([10.237.105.63])
	by azsmga001.ch.intel.com with ESMTP; 12 Jun 2013 03:43:59 -0700
From: Ioana Grigoropol <ioanax.grigoropol@intel.com>
To: yocto@yoctoproject.org
Date: Wed, 12 Jun 2013 13:20:41 +0300
Message-Id: <cover.1371032387.git.ioanax.grigoropol@intel.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [RFC v3 PATCH 00/50] Refactor and merge windows-build to master
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
X-List-Received-Date: Wed, 12 Jun 2013 10:44:23 -0000

This is only the cover letter for the entire patch series.
Changed since v2: fixed license for files.

Please review the following changes for suitability for inclusion. If you have
any objections or suggestions for improvement, please respond to the patches. If
you agree with the changes, please provide your Acked-by.

The following changes since commit 0b2dc574b1b08eab2102b37f3b64ab7bd70d9595:

  Add resources to remote.util bin [yocto #4596] (2013-06-04 14:42:15 -0700)

are available in the git repository at:

  git://git.yoctoproject.org/poky-contrib igrigorx/common-remote-refactor2
  http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=igrigorx/common-remote-refactor2

Ioana Grigoropol (50):
  Rename RSEHelper to RemoteHelper to match usages in
    org.yocto.bc.ui.plugin
  Add ProcessStreamBuffer utility class
  Move ICommandResponseHandler to org.yocto.remote.utils
  Add YoctoCommand utility class
  Add CommandResponseHandler implementation of ICommandResponseHandler
  Add ConsoleRunnable utility class
  Add ConsoleHelper utility class
  Add OutputProcessor utility class
  Add CommandOutputProcessor utilty class
  Refactor RemoteHelper class
  Remove ICommandResponseHandler from plugin and use
    org.yocto.remote.utils implementation
  Remove unused Bitbake Actions
  Remove storing of init script location
  Remove unused method loadInit in Activator
  Remove unused getInitScript from ProjectInfoHelper
  Use URI for storing project locations
  Redirect bitbake environment parsing to file & parse
  Use YoctoHostFile for storing OEFile(s)
  Remove unused checkReadOnlyParent method of OEFile
  Fix full path of OEFile
  Fix NullPointerException when detecting changed files
  Fix Hob launching on Linux host
  Enable edit&save of remote files
  Fix variables hoover
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
  Remove unused ConsoleWriter
  Add implicit constructror for OEFileSystemContributor
  Refactor and clean-up of OptionsPage fields
  Refactor OptionsPage to use Remote Location box & validation
  Validate project name to check for invalid characters

 plugins/org.yocto.bc.ui/META-INF/MANIFEST.MF       |   11 +-
 plugins/org.yocto.bc.ui/plugin.xml                 |   55 --
 .../src/org/yocto/bc/bitbake/BBRecipe.java         |   29 +-
 .../src/org/yocto/bc/bitbake/BBSession.java        |  120 +++--
 .../org/yocto/bc/bitbake/ProjectInfoHelper.java    |   61 +--
 .../src/org/yocto/bc/bitbake/ShellSession.java     |  167 +++---
 .../org/yocto/bc/remote/utils/ConsoleWriter.java   |   46 ++
 .../bc/remote/utils/YoctoRunnableWithProgress.java |  221 ++++++++
 .../src/org/yocto/bc/ui/Activator.java             |   86 ++--
 .../ui/actions/AbstractBitbakeCommandAction.java   |  199 --------
 .../bc/ui/actions/BitbakeBuildRecipeAction.java    |   24 -
 .../bc/ui/actions/BitbakeCleanRecipeAction.java    |   26 -
 .../yocto/bc/ui/actions/BitbakeImportAction.java   |  106 ----
 .../bc/ui/actions/BitbakeRebuildRecipeAction.java  |   29 --
 .../bc/ui/actions/LaunchVariableWizardAction.java  |   21 +-
 .../bc/ui/builder/BitbakeCommanderNature.java      |    5 +-
 .../bc/ui/editors/bitbake/BBVariableTextHover.java |   43 +-
 .../editors/bitbake/BitBakeDocumentProvider.java   |   43 +-
 .../bc/ui/editors/bitbake/BitBakeFileEditor.java   |   24 +-
 .../bitbake/BitBakeSourceViewerConfiguration.java  |   21 +-
 .../src/org/yocto/bc/ui/filesystem/OEFile.java     |  298 +++--------
 .../org/yocto/bc/ui/filesystem/OEFileSystem.java   |   40 +-
 .../bc/ui/filesystem/OEFileSystemContributor.java  |    6 +-
 .../org/yocto/bc/ui/filesystem/OEIgnoreFile.java   |   10 +-
 .../org/yocto/bc/ui/filesystem/YoctoLocation.java  |   44 ++
 .../src/org/yocto/bc/ui/model/ProjectInfo.java     |   78 ++-
 .../src/org/yocto/bc/ui/model/YoctoHostFile.java   |  316 ++++++++++++
 .../yocto/bc/ui/views/RecipeContentProvider.java   |    7 +-
 .../bc/ui/wizards/BitbakeRecipeUIElement.java      |   18 +-
 .../bc/ui/wizards/NewBitBakeFileRecipeWizard.java  |   46 +-
 .../ui/wizards/NewBitBakeFileRecipeWizardPage.java |  533 +++++++++++---------
 .../importProject/ImportYoctoProjectWizard.java    |   10 +-
 .../yocto/bc/ui/wizards/install/InstallWizard.java |  358 +++----------
 .../yocto/bc/ui/wizards/install/OptionsPage.java   |  306 +++++++----
 .../BBConfigurationInitializeOperation.java        |   29 +-
 .../newproject/CreateBBCProjectOperation.java      |   23 +-
 .../org.yocto.remote.utils/META-INF/MANIFEST.MF    |    8 +-
 .../yocto/remote/utils/CommandOutputProcessor.java |   43 ++
 .../yocto/remote/utils/CommandResponseHandler.java |   44 ++
 .../org/yocto/remote/utils/CommandRunnable.java    |   44 ++
 .../src/org/yocto/remote/utils/ConsoleHelper.java  |   38 ++
 .../org/yocto/remote/utils/ConsoleRunnable.java    |   47 ++
 .../remote/utils}/ICommandResponseHandler.java     |    5 +-
 .../org/yocto/remote/utils/OutputProcessor.java    |  112 ++++
 .../yocto/remote/utils/ProcessStreamBuffer.java    |   87 ++++
 .../utils/{RSEHelper.java => RemoteHelper.java}    |  259 ++++++++--
 .../src/org/yocto/remote/utils/RemoteMachine.java  |  202 ++++++++
 .../org/yocto/remote/utils/RemoteShellExec.java    |    2 +-
 .../org/yocto/remote/utils/TerminalHandler.java    |    2 +-
 .../src/org/yocto/remote/utils/YoctoCommand.java   |   63 +++
 .../yocto/sdk/remotetools/actions/BaseModel.java   |    6 +-
 .../sdk/remotetools/actions/BaseSettingDialog.java |   15 +-
 52 files changed, 2725 insertions(+), 1711 deletions(-)
 create mode 100644 plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/ConsoleWriter.java
 create mode 100644 plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/YoctoRunnableWithProgress.java
 delete mode 100644 plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/actions/AbstractBitbakeCommandAction.java
 delete mode 100644 plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/actions/BitbakeBuildRecipeAction.java
 delete mode 100644 plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/actions/BitbakeCleanRecipeAction.java
 delete mode 100644 plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/actions/BitbakeImportAction.java
 delete mode 100644 plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/actions/BitbakeRebuildRecipeAction.java
 create mode 100755 plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/filesystem/YoctoLocation.java
 create mode 100644 plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/model/YoctoHostFile.java
 create mode 100644 plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/CommandOutputProcessor.java
 create mode 100644 plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/CommandResponseHandler.java
 create mode 100644 plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/CommandRunnable.java
 create mode 100644 plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/ConsoleHelper.java
 create mode 100644 plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/ConsoleRunnable.java
 rename plugins/{org.yocto.bc.ui/src/org/yocto/bc/bitbake => org.yocto.remote.utils/src/org/yocto/remote/utils}/ICommandResponseHandler.java (78%)
 create mode 100644 plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/OutputProcessor.java
 create mode 100644 plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/ProcessStreamBuffer.java
 rename plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/{RSEHelper.java => RemoteHelper.java} (60%)
 create mode 100644 plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/RemoteMachine.java
 create mode 100644 plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/YoctoCommand.java

-- 
1.7.9.5


