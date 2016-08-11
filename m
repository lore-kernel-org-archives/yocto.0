Return-Path: <timothy.t.orling@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 28469E01041; Thu, 11 Aug 2016 16:30:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E5380E01039
	for <yocto@yoctoproject.org>; Thu, 11 Aug 2016 16:30:05 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by fmsmga102.fm.intel.com with ESMTP; 11 Aug 2016 16:30:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.28,507,1464678000"; d="scan'208";a="1012911202"
Received: from timo-fedora.jf.intel.com ([10.7.201.162])
	by orsmga001.jf.intel.com with ESMTP; 11 Aug 2016 16:30:04 -0700
From: Tim Orling <timothy.t.orling@linux.intel.com>
To: yocto@yoctoproject.org
Date: Thu, 11 Aug 2016 16:31:03 -0700
Message-Id: <1470958271-28279-1-git-send-email-timothy.t.orling@linux.intel.com>
X-Mailer: git-send-email 2.7.4
Subject: [eclipse-poky][PATCH 0/8] Add neon-master
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
X-List-Received-Date: Thu, 11 Aug 2016 23:30:10 -0000

[YOCTO #9562]
Minimum required java version for Neon is 1.8.

[YOCTO #9907]
Update to latest Eclipse release (Neon v4.6).

[YOCTO #9908]
Cleanup excessive number of compiler warnings.

This series is also staged at:
http://git.yoctoproject.org/cgit/cgit.cgi/eclipse-poky-contrib/log/?h=neon-master-next

Tim Orling (8):
  Update to Neon (4.6.0) release
  fix the build
  add script to update java version; update all to JavaSE-1.8
  org.yocto.sdk/feature.xml: clean up unused dependencies
  org.yocto.bc.ui: cleanup unused imports; fix generics warnings
  org.yocto.remote.utils: fix or supress warnings
  org.yocto.sdk.ide: remove InvokeAction usage
  org.yocto.sdk.remotetools: SubProgressMonitor -> SubMonitor

 .../org.yocto.bc.headless.build/build.properties   |   4 +-
 .../org.yocto.doc.headless.build/build.properties  |   4 +-
 .../org.yocto.sdk.headless.build/build.properties  |   4 +-
 features/org.yocto.sdk/feature.xml                 |   3 -
 .../build.properties                               |   4 +-
 plugins/org.yocto.bc.ui/.classpath                 |   2 +-
 plugins/org.yocto.bc.ui/META-INF/MANIFEST.MF       |   6 +-
 .../src/org/yocto/bc/bitbake/BBRecipe.java         |  12 +-
 .../src/org/yocto/bc/bitbake/BBSession.java        | 126 +++++++++++----------
 .../org/yocto/bc/bitbake/ProjectInfoHelper.java    |   3 -
 .../src/org/yocto/bc/ui/Activator.java             |  37 +++---
 .../ui/actions/AbstractBitbakeCommandAction.java   |   5 +-
 .../yocto/bc/ui/actions/LaunchToasterDialog.java   |  17 +--
 .../bc/ui/actions/LaunchVariableWizardAction.java  |   3 +-
 .../org/yocto/bc/ui/builder/BitbakeBuilder.java    |   6 +-
 .../yocto/bc/ui/builder/ToggleNatureAction.java    |   5 +-
 .../src/org/yocto/bc/ui/decorators/ReadOnly.java   |   9 +-
 .../bc/ui/editors/bitbake/BBVariableTextHover.java |   2 +-
 .../yocto/bc/ui/filesystem/CustomLocalFile.java    |   1 +
 .../src/org/yocto/bc/ui/filesystem/OEFile.java     |   4 +-
 .../org/yocto/bc/ui/filesystem/OEFileSystem.java   |   6 +-
 .../org/yocto/bc/ui/filesystem/OEIgnoreFile.java   |  11 +-
 .../src/org/yocto/bc/ui/filesystem/Policy.java     |   4 +-
 .../perspectives/BitbakeCommanderPerspective.java  |  13 +--
 .../org/yocto/bc/ui/popup/actions/NewAction.java   |   1 -
 .../yocto/bc/ui/views/RecipeContentProvider.java   |   7 +-
 .../src/org/yocto/bc/ui/views/RecipeView.java      |   2 -
 .../bc/ui/wizards/BitbakeRecipeUIElement.java      |   6 +-
 .../org/yocto/bc/ui/wizards/FiniteStateWizard.java |  10 +-
 .../yocto/bc/ui/wizards/FiniteStateWizardPage.java |  26 ++---
 .../bc/ui/wizards/NewBitBakeFileRecipeWizard.java  |   5 +-
 .../ui/wizards/NewBitBakeFileRecipeWizardPage.java |  13 +--
 .../ui/wizards/importProject/BBCProjectPage.java   |   2 +-
 .../importProject/ImportYoctoProjectWizard.java    |  11 +-
 .../yocto/bc/ui/wizards/install/InstallWizard.java |  16 +--
 .../yocto/bc/ui/wizards/install/OptionsPage.java   |  19 +---
 .../BBConfigurationInitializeOperation.java        |   1 -
 .../newproject/CreateBBCProjectOperation.java      |   4 +-
 .../yocto/bc/ui/wizards/variable/VariablePage.java |  13 ++-
 .../bc/ui/wizards/variable/VariableWizard.java     |   8 +-
 plugins/org.yocto.cmake.managedbuilder/.classpath  |   2 +-
 .../.settings/org.eclipse.jdt.core.prefs           |   6 +-
 .../META-INF/MANIFEST.MF                           |   5 +-
 plugins/org.yocto.doc.user/.classpath              |   2 +-
 plugins/org.yocto.doc.user/META-INF/MANIFEST.MF    |   2 +-
 plugins/org.yocto.remote.utils/.classpath          |   2 +-
 .../.settings/org.eclipse.jdt.core.prefs           |   6 +-
 .../org.yocto.remote.utils/META-INF/MANIFEST.MF    |   2 +-
 .../org/yocto/remote/utils/OutputProcessor.java    |   2 +
 .../src/org/yocto/remote/utils/RemoteHelper.java   |  31 ++---
 .../src/org/yocto/remote/utils/RemoteMachine.java  |   9 +-
 .../org/yocto/remote/utils/TerminalHandler.java    |   1 +
 plugins/org.yocto.sdk.ide.doc.user/.classpath      |   2 +-
 .../.settings/org.eclipse.jdt.core.prefs           |   6 +-
 .../META-INF/MANIFEST.MF                           |   2 +-
 plugins/org.yocto.sdk.ide/.classpath               |   2 +-
 .../.settings/org.eclipse.jdt.core.prefs           |   6 +-
 plugins/org.yocto.sdk.ide/META-INF/MANIFEST.MF     |   3 +-
 plugins/org.yocto.sdk.ide/build.properties         |   3 +-
 .../src/org/yocto/sdk/ide/YoctoSDKChecker.java     |   1 -
 .../yocto/sdk/ide/actions/InvokeSyncAction.java    | 110 ------------------
 .../yocto/sdk/ide/actions/ReconfigYoctoAction.java |  44 -------
 .../sdk/ide/actions/ReconfigYoctoHandler.java      |  71 ++++--------
 .../natures/YoctoSDKAutotoolsProjectNature.java    |   1 +
 .../src/org/yocto/sdk/ide/utils/YoctoSDKUtils.java |   5 -
 plugins/org.yocto.sdk.remotetools/.classpath       |   2 +-
 .../.settings/org.eclipse.jdt.core.prefs           |   6 +-
 .../org.yocto.sdk.remotetools/META-INF/MANIFEST.MF |   2 +-
 plugins/org.yocto.sdk.remotetools/build.properties |   3 +-
 .../org/yocto/sdk/remotetools/YoctoJSONHelper.java |   6 +
 .../yocto/sdk/remotetools/actions/BaseModel.java   |  12 +-
 .../sdk/remotetools/actions/OprofileModel.java     |   6 +-
 .../sdk/remotetools/actions/PowertopModel.java     |   6 +-
 .../sdk/remotetools/actions/SystemtapHandler.java  |   2 +
 .../actions/SystemtapSettingDialog.java            |   1 +
 .../yocto/sdk/remotetools/actions/Ust2Model.java   |  16 +--
 .../yocto/sdk/remotetools/views/BaseFileView.java  |   1 +
 .../sdk/remotetools/views/TerminalViewTab.java     |   6 +-
 .../sdk/remotetools/views/TerminalViewer.java      |   3 +-
 .../remotetools/wizards/bsp/PropertiesPage.java    |   1 +
 scripts/build.sh                                   |   9 +-
 scripts/change-java-version.sh                     |  94 +++++++++++++++
 scripts/setup.sh                                   |  36 +++---
 83 files changed, 432 insertions(+), 541 deletions(-)
 delete mode 100644 plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/actions/InvokeSyncAction.java
 delete mode 100644 plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/actions/ReconfigYoctoAction.java
 create mode 100755 scripts/change-java-version.sh

-- 
2.7.4


