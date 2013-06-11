Return-Path: <ioanax.grigoropol@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9B847E01538
	for <yocto@yoctoproject.org>; Tue, 11 Jun 2013 03:53:56 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by azsmga101.ch.intel.com with ESMTP; 11 Jun 2013 03:53:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,844,1363158000"; d="scan'208";a="348079637"
Received: from ideapad.rb.intel.com ([10.237.105.63])
	by fmsmga001.fm.intel.com with ESMTP; 11 Jun 2013 03:54:22 -0700
From: Ioana Grigoropol <ioanax.grigoropol@intel.com>
To: yocto@yoctoproject.org
Date: Tue, 11 Jun 2013 13:30:39 +0300
Message-Id: <cover.1370946450.git.ioanax.grigoropol@intel.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [RFC PATCH v2 00/50] Refactor and merge windows-build to master
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
X-List-Received-Date: Tue, 11 Jun 2013 10:54:00 -0000


This is only the cover letter for the entire patch series.
Changed since v1: - implemented FIXME tasks in BBSession. 

The following changes since commit 57c5d62fab9bc1024a3cf1f3f840f7f3bcfd3167:

  Fix Thread Access exception for systemtap Dialogs (2013-05-31 15:07:01 +0300)

are available in the git repository at:

  git://git.yoctoproject.org/poky-contrib igrigorx/common-remote-refactor
  http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=igrigorx/common-remote-refactor

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
 .../src/org/yocto/bc/bitbake/BBRecipe.java         |   26 +-
 .../src/org/yocto/bc/bitbake/BBSession.java        |  117 +++--
 .../org/yocto/bc/bitbake/ProjectInfoHelper.java    |   58 +--
 .../src/org/yocto/bc/bitbake/ShellSession.java     |  164 +++---
 .../org/yocto/bc/remote/utils/ConsoleWriter.java   |   36 ++
 .../bc/remote/utils/YoctoRunnableWithProgress.java |  211 ++++++++
 .../src/org/yocto/bc/ui/Activator.java             |   83 ++-
 .../ui/actions/AbstractBitbakeCommandAction.java   |  199 --------
 .../bc/ui/actions/BitbakeBuildRecipeAction.java    |   24 -
 .../bc/ui/actions/BitbakeCleanRecipeAction.java    |   26 -
 .../yocto/bc/ui/actions/BitbakeImportAction.java   |  106 ----
 .../bc/ui/actions/BitbakeRebuildRecipeAction.java  |   29 --
 .../bc/ui/actions/LaunchVariableWizardAction.java  |   16 +-
 .../bc/ui/builder/BitbakeCommanderNature.java      |    2 +-
 .../bc/ui/editors/bitbake/BBVariableTextHover.java |   28 +-
 .../editors/bitbake/BitBakeDocumentProvider.java   |   40 +-
 .../bc/ui/editors/bitbake/BitBakeFileEditor.java   |   19 +-
 .../bitbake/BitBakeSourceViewerConfiguration.java  |   18 +-
 .../src/org/yocto/bc/ui/filesystem/OEFile.java     |  295 +++--------
 .../org/yocto/bc/ui/filesystem/OEFileSystem.java   |   37 +-
 .../bc/ui/filesystem/OEFileSystemContributor.java  |    3 +
 .../org/yocto/bc/ui/filesystem/OEIgnoreFile.java   |    7 +-
 .../org/yocto/bc/ui/filesystem/YoctoLocation.java  |   34 ++
 .../src/org/yocto/bc/ui/model/ProjectInfo.java     |   75 ++-
 .../src/org/yocto/bc/ui/model/YoctoHostFile.java   |  306 ++++++++++++
 .../yocto/bc/ui/views/RecipeContentProvider.java   |    2 +-
 .../bc/ui/wizards/BitbakeRecipeUIElement.java      |   15 +-
 .../bc/ui/wizards/NewBitBakeFileRecipeWizard.java  |   41 +-
 .../ui/wizards/NewBitBakeFileRecipeWizardPage.java |  528 +++++++++++---------
 .../importProject/ImportYoctoProjectWizard.java    |    7 +-
 .../yocto/bc/ui/wizards/install/InstallWizard.java |  347 +++----------
 .../yocto/bc/ui/wizards/install/OptionsPage.java   |  295 +++++++----
 .../BBConfigurationInitializeOperation.java        |   26 +-
 .../newproject/CreateBBCProjectOperation.java      |   20 +-
 .../org.yocto.remote.utils/META-INF/MANIFEST.MF    |    8 +-
 .../yocto/remote/utils/CommandOutputProcessor.java |   43 ++
 .../yocto/remote/utils/CommandResponseHandler.java |   44 ++
 .../org/yocto/remote/utils/CommandRunnable.java    |   44 ++
 .../src/org/yocto/remote/utils/ConsoleHelper.java  |   38 ++
 .../org/yocto/remote/utils/ConsoleRunnable.java    |   47 ++
 .../remote/utils}/ICommandResponseHandler.java     |    4 +-
 .../org/yocto/remote/utils/OutputProcessor.java    |  112 +++++
 .../yocto/remote/utils/ProcessStreamBuffer.java    |   87 ++++
 .../utils/{RSEHelper.java => RemoteHelper.java}    |  259 ++++++++--
 .../src/org/yocto/remote/utils/RemoteMachine.java  |  202 ++++++++
 .../org/yocto/remote/utils/RemoteShellExec.java    |    2 +-
 .../org/yocto/remote/utils/TerminalHandler.java    |    2 +-
 .../src/org/yocto/remote/utils/YoctoCommand.java   |   63 +++
 .../yocto/sdk/remotetools/actions/BaseModel.java   |    6 +-
 .../sdk/remotetools/actions/BaseSettingDialog.java |   12 +-
 52 files changed, 2600 insertions(+), 1679 deletions(-)
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
 rename plugins/{org.yocto.bc.ui/src/org/yocto/bc/bitbake => org.yocto.remote.utils/src/org/yocto/remote/utils}/ICommandResponseHandler.java (89%)
 create mode 100644 plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/OutputProcessor.java
 create mode 100644 plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/ProcessStreamBuffer.java
 rename plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/{RSEHelper.java => RemoteHelper.java} (60%)
 create mode 100644 plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/RemoteMachine.java
 create mode 100644 plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/YoctoCommand.java

-- 
1.7.9.5


