Return-Path: <ioanax.grigoropol@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F233AE0156E
	for <yocto@yoctoproject.org>; Tue,  4 Jun 2013 06:48:44 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by azsmga102.ch.intel.com with ESMTP; 04 Jun 2013 06:48:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,799,1363158000"; d="scan'208";a="344571067"
Received: from ideapad.rb.intel.com ([10.237.105.63])
	by fmsmga001.fm.intel.com with ESMTP; 04 Jun 2013 06:48:29 -0700
From: Ioana Grigoropol <ioanax.grigoropol@intel.com>
To: yocto@yoctoproject.org
Date: Tue,  4 Jun 2013 16:25:59 +0300
Message-Id: <1370352368-18730-1-git-send-email-ioanax.grigoropol@intel.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [Refactor RFC 0/9] Merging of windows-build with master
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
X-List-Received-Date: Tue, 04 Jun 2013 13:48:45 -0000


Ioana Grigoropol (9):
  Rename RSEHelper to RemoteHelper to match usages in
    org.yocto.bc.ui.plugin
  Add remote tools classes needed for bitbake remote capabilities
  Remove ICommandResponseHandler from plugin and use
    org.yocto.remote.utils implementation
  Remove unused Bitbake Actions
  Remove storing of init script location
  Remove unused method loadInit in Activator
  Remove unused getInitScript from ProjectInfoHelper
  Use URI for storing project locations
  Redirect bitbake environment parsing to file & parse

 plugins/org.yocto.bc.ui/META-INF/MANIFEST.MF       |    7 +-
 plugins/org.yocto.bc.ui/plugin.xml                 |   55 ---
 .../src/org/yocto/bc/bitbake/BBRecipe.java         |   26 +-
 .../src/org/yocto/bc/bitbake/BBSession.java        |   83 ++--
 .../yocto/bc/bitbake/ICommandResponseHandler.java  |   15 -
 .../org/yocto/bc/bitbake/ProjectInfoHelper.java    |   58 +--
 .../src/org/yocto/bc/bitbake/ShellSession.java     |   32 +-
 .../src/org/yocto/bc/ui/Activator.java             |   83 ++--
 .../ui/actions/AbstractBitbakeCommandAction.java   |  199 --------
 .../bc/ui/actions/BitbakeBuildRecipeAction.java    |   24 -
 .../bc/ui/actions/BitbakeCleanRecipeAction.java    |   26 -
 .../yocto/bc/ui/actions/BitbakeImportAction.java   |  106 -----
 .../bc/ui/actions/BitbakeRebuildRecipeAction.java  |   29 --
 .../bc/ui/actions/LaunchVariableWizardAction.java  |   16 +-
 .../bc/ui/editors/bitbake/BBVariableTextHover.java |   16 +-
 .../bc/ui/editors/bitbake/BitBakeFileEditor.java   |   16 +-
 .../bitbake/BitBakeSourceViewerConfiguration.java  |   14 +-
 .../src/org/yocto/bc/ui/filesystem/OEFile.java     |   13 +-
 .../org/yocto/bc/ui/filesystem/OEFileSystem.java   |   24 +-
 .../org/yocto/bc/ui/filesystem/YoctoLocation.java  |   34 ++
 .../src/org/yocto/bc/ui/model/ProjectInfo.java     |   75 ++-
 .../yocto/bc/ui/views/RecipeContentProvider.java   |    2 +-
 .../importProject/ImportYoctoProjectWizard.java    |    7 +-
 .../yocto/bc/ui/wizards/install/InstallWizard.java |   39 +-
 .../BBConfigurationInitializeOperation.java        |    3 +-
 .../newproject/CreateBBCProjectOperation.java      |   20 +-
 .../org.yocto.remote.utils/META-INF/MANIFEST.MF    |    8 +-
 .../yocto/remote/utils/CommandOutputProcessor.java |   33 ++
 .../yocto/remote/utils/CommandResponseHandler.java |   36 ++
 .../org/yocto/remote/utils/CommandRunnable.java    |   34 ++
 .../src/org/yocto/remote/utils/ConsoleHelper.java  |   28 ++
 .../org/yocto/remote/utils/ConsoleRunnable.java    |   37 ++
 .../remote/utils/ICommandResponseHandler.java      |   15 +
 .../org/yocto/remote/utils/OutputProcessor.java    |  102 ++++
 .../yocto/remote/utils/ProcessStreamBuffer.java    |   77 +++
 .../src/org/yocto/remote/utils/RSEHelper.java      |  344 -------------
 .../src/org/yocto/remote/utils/RemoteHelper.java   |  503 ++++++++++++++++++++
 .../src/org/yocto/remote/utils/RemoteMachine.java  |  206 ++++++++
 .../org/yocto/remote/utils/RemoteShellExec.java    |    2 +-
 .../src/org/yocto/remote/utils/Session.java        |  117 +++++
 .../org/yocto/remote/utils/TerminalHandler.java    |    2 +-
 .../src/org/yocto/remote/utils/YoctoCommand.java   |   53 +++
 .../yocto/sdk/remotetools/actions/BaseModel.java   |    6 +-
 .../sdk/remotetools/actions/BaseSettingDialog.java |   12 +-
 44 files changed, 1591 insertions(+), 1046 deletions(-)
 delete mode 100644 plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/ICommandResponseHandler.java
 delete mode 100644 plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/actions/AbstractBitbakeCommandAction.java
 delete mode 100644 plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/actions/BitbakeBuildRecipeAction.java
 delete mode 100644 plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/actions/BitbakeCleanRecipeAction.java
 delete mode 100644 plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/actions/BitbakeImportAction.java
 delete mode 100644 plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/actions/BitbakeRebuildRecipeAction.java
 create mode 100755 plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/filesystem/YoctoLocation.java
 create mode 100644 plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/CommandOutputProcessor.java
 create mode 100644 plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/CommandResponseHandler.java
 create mode 100644 plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/CommandRunnable.java
 create mode 100644 plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/ConsoleHelper.java
 create mode 100644 plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/ConsoleRunnable.java
 create mode 100644 plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/ICommandResponseHandler.java
 create mode 100644 plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/OutputProcessor.java
 create mode 100644 plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/ProcessStreamBuffer.java
 delete mode 100644 plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/RSEHelper.java
 create mode 100644 plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/RemoteHelper.java
 create mode 100644 plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/RemoteMachine.java
 create mode 100644 plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/Session.java
 create mode 100644 plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/YoctoCommand.java

-- 
1.7.9.5


