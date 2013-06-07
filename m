Return-Path: <jessica.zhang@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 28D51E0155A
	for <yocto@yoctoproject.org>; Thu,  6 Jun 2013 17:29:09 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 06 Jun 2013 17:29:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,818,1363158000"; d="scan'208";a="313486694"
Received: from orsmsx101.amr.corp.intel.com ([10.22.225.128])
	by azsmga001.ch.intel.com with ESMTP; 06 Jun 2013 17:29:08 -0700
Received: from orsmsx155.amr.corp.intel.com (10.22.240.21) by
	ORSMSX101.amr.corp.intel.com (10.22.225.128) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Thu, 6 Jun 2013 17:29:07 -0700
Received: from orsmsx103.amr.corp.intel.com ([169.254.2.22]) by
	ORSMSX155.amr.corp.intel.com ([169.254.7.29]) with mapi id
	14.03.0123.003; Thu, 6 Jun 2013 17:29:08 -0700
From: "Zhang, Jessica" <jessica.zhang@intel.com>
To: "Grigoropol, IoanaX" <ioanax.grigoropol@intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] [Refactor RFC 0/9] Merging of windows-build with master
Thread-Index: AQHOYSpcLHXoEPKF7UeOLj1Q/Mrba5kpaW0g
Date: Fri, 7 Jun 2013 00:29:07 +0000
Message-ID: <C6510F6D410BB64A8C15398EDC6B847C73C380D2@ORSMSX103.amr.corp.intel.com>
References: <1370352368-18730-1-git-send-email-ioanax.grigoropol@intel.com>
In-Reply-To: <1370352368-18730-1-git-send-email-ioanax.grigoropol@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Re: [Refactor RFC 0/9] Merging of windows-build with master
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
X-List-Received-Date: Fri, 07 Jun 2013 00:29:09 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Ioana,

I've provided detailed info regarding each patch.  Please have them address=
ed and resubmit.  I'll hold off review of the other RFC series till we have=
 this set settled.

Thanks,
Jessica

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Ioana Grigoropol
Sent: Tuesday, June 04, 2013 6:26 AM
To: yocto@yoctoproject.org
Subject: [yocto] [Refactor RFC 0/9] Merging of windows-build with master


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
 .../src/org/yocto/remote/utils/RemoteHelper.java   |  503 ++++++++++++++++=
++++
 .../src/org/yocto/remote/utils/RemoteMachine.java  |  206 ++++++++
 .../org/yocto/remote/utils/RemoteShellExec.java    |    2 +-
 .../src/org/yocto/remote/utils/Session.java        |  117 +++++
 .../org/yocto/remote/utils/TerminalHandler.java    |    2 +-
 .../src/org/yocto/remote/utils/YoctoCommand.java   |   53 +++
 .../yocto/sdk/remotetools/actions/BaseModel.java   |    6 +-
 .../sdk/remotetools/actions/BaseSettingDialog.java |   12 +-
 44 files changed, 1591 insertions(+), 1046 deletions(-)  delete mode 10064=
4 plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/ICommandResponseHandler.=
java
 delete mode 100644 plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/actions/Abs=
tractBitbakeCommandAction.java
 delete mode 100644 plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/actions/Bit=
bakeBuildRecipeAction.java
 delete mode 100644 plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/actions/Bit=
bakeCleanRecipeAction.java
 delete mode 100644 plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/actions/Bit=
bakeImportAction.java
 delete mode 100644 plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/actions/Bit=
bakeRebuildRecipeAction.java
 create mode 100755 plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/filesystem/=
YoctoLocation.java
 create mode 100644 plugins/org.yocto.remote.utils/src/org/yocto/remote/uti=
ls/CommandOutputProcessor.java
 create mode 100644 plugins/org.yocto.remote.utils/src/org/yocto/remote/uti=
ls/CommandResponseHandler.java
 create mode 100644 plugins/org.yocto.remote.utils/src/org/yocto/remote/uti=
ls/CommandRunnable.java
 create mode 100644 plugins/org.yocto.remote.utils/src/org/yocto/remote/uti=
ls/ConsoleHelper.java
 create mode 100644 plugins/org.yocto.remote.utils/src/org/yocto/remote/uti=
ls/ConsoleRunnable.java
 create mode 100644 plugins/org.yocto.remote.utils/src/org/yocto/remote/uti=
ls/ICommandResponseHandler.java
 create mode 100644 plugins/org.yocto.remote.utils/src/org/yocto/remote/uti=
ls/OutputProcessor.java
 create mode 100644 plugins/org.yocto.remote.utils/src/org/yocto/remote/uti=
ls/ProcessStreamBuffer.java
 delete mode 100644 plugins/org.yocto.remote.utils/src/org/yocto/remote/uti=
ls/RSEHelper.java
 create mode 100644 plugins/org.yocto.remote.utils/src/org/yocto/remote/uti=
ls/RemoteHelper.java
 create mode 100644 plugins/org.yocto.remote.utils/src/org/yocto/remote/uti=
ls/RemoteMachine.java
 create mode 100644 plugins/org.yocto.remote.utils/src/org/yocto/remote/uti=
ls/Session.java
 create mode 100644 plugins/org.yocto.remote.utils/src/org/yocto/remote/uti=
ls/YoctoCommand.java

--
1.7.9.5

_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

