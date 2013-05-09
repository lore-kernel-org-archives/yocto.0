Return-Path: <ioanax.grigoropol@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 66DB5E01480
	for <yocto@yoctoproject.org>; Thu,  9 May 2013 01:07:09 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 09 May 2013 01:07:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,639,1363158000"; d="scan'208";a="334816979"
Received: from ideapad.rb.intel.com ([10.237.105.63])
	by fmsmga002.fm.intel.com with ESMTP; 09 May 2013 01:07:06 -0700
From: Ioana Grigoropol <ioanax.grigoropol@intel.com>
To: yocto@yoctoproject.org
Date: Thu,  9 May 2013 10:46:56 +0300
Message-Id: <1368085635-24575-1-git-send-email-ioanax.grigoropol@intel.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [PATCH 00/12] Refactor Remote tools plugin & create Remote Utils separate plugin
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
X-List-Received-Date: Thu, 09 May 2013 08:07:09 -0000

- some more refactoring for the org.yocto.sdk.remotetools 
- create & populate org.yocto.remote.utils

Ioana Grigoropol (12):
  Separate remote logic from GUI login in TerminalHandler
    implementation
  Move remote system type checkings from GUI Dialogs and to RSEHelper
  Move logic for waiting for RSE initialization to RSEHelper
  Move filtering of suitable connections to RSEHelper
  Initial commit for separate remote utilities plugin
  Move RSEHelper to a separate plugin
  Move RemoteShellExec to separate plugin
  Move ShellSession to org.yocto.remote.utils separate plugin
  Move CommonHelper to org.yocto.remote.utils separate plugin
  Move TerminalHandler to org.yocto.remote.utils
  Remove unused TCFTerminalConnectors
  Remove all plugin dependencies to RSE APi from remote tools plugin

 plugins/org.yocto.remote.utils/.classpath          |    7 +
 plugins/org.yocto.remote.utils/.project            |   28 +++
 .../.settings/org.eclipse.jdt.core.prefs           |    7 +
 .../org.yocto.remote.utils/META-INF/MANIFEST.MF    |   27 +++
 plugins/org.yocto.remote.utils/build.properties    |    4 +
 .../src/org/yocto/remote/utils/Activator.java      |   62 +++++++
 .../src/org/yocto/remote/utils}/CommonHelper.java  |   20 ++-
 .../src/org/yocto/remote/utils/Messages.java       |   35 ++++
 .../src/org/yocto/remote/utils}/RSEHelper.java     |  178 +++++++-------------
 .../org/yocto/remote/utils}/RemoteShellExec.java   |   95 +++++------
 .../src/org/yocto/remote/utils}/ShellSession.java  |   68 +++-----
 .../org/yocto/remote/utils}/TerminalHandler.java   |  121 +++++--------
 .../org.yocto.sdk.remotetools/META-INF/MANIFEST.MF |   13 +-
 .../yocto/sdk/remotetools/actions/BaseModel.java   |    4 +-
 .../sdk/remotetools/actions/BaseSettingDialog.java |   29 +---
 .../sdk/remotetools/actions/DialogHandler.java     |   42 +++++
 .../sdk/remotetools/actions/LatencytopHandler.java |    2 +-
 .../sdk/remotetools/actions/OprofileModel.java     |    2 +-
 .../yocto/sdk/remotetools/actions/PerfHandler.java |    2 +-
 .../sdk/remotetools/actions/SystemtapModel.java    |    2 +-
 .../actions/SystemtapSettingDialog.java            |    2 +-
 .../remotetools/views/TCFTerminalConnector.java    |   49 ------
 .../views/TCFTerminalConnectorImpl.java            |   98 -----------
 23 files changed, 416 insertions(+), 481 deletions(-)
 create mode 100644 plugins/org.yocto.remote.utils/.classpath
 create mode 100644 plugins/org.yocto.remote.utils/.project
 create mode 100644 plugins/org.yocto.remote.utils/.settings/org.eclipse.jdt.core.prefs
 create mode 100644 plugins/org.yocto.remote.utils/META-INF/MANIFEST.MF
 create mode 100644 plugins/org.yocto.remote.utils/build.properties
 create mode 100644 plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/Activator.java
 rename plugins/{org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools => org.yocto.remote.utils/src/org/yocto/remote/utils}/CommonHelper.java (77%)
 create mode 100644 plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/Messages.java
 rename plugins/{org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools => org.yocto.remote.utils/src/org/yocto/remote/utils}/RSEHelper.java (77%)
 rename plugins/{org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/remote => org.yocto.remote.utils/src/org/yocto/remote/utils}/RemoteShellExec.java (69%)
 rename plugins/{org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools => org.yocto.remote.utils/src/org/yocto/remote/utils}/ShellSession.java (95%)
 rename plugins/{org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions => org.yocto.remote.utils/src/org/yocto/remote/utils}/TerminalHandler.java (55%)
 create mode 100644 plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/DialogHandler.java
 delete mode 100644 plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/views/TCFTerminalConnector.java
 delete mode 100644 plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/views/TCFTerminalConnectorImpl.java

-- 
1.7.9.5


