Return-Path: <ioanax.grigoropol@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F1CDBE00429
	for <yocto@yoctoproject.org>; Thu,  9 May 2013 14:39:11 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 09 May 2013 14:39:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,643,1363158000"; d="scan'208";a="334517786"
Received: from ideapad.rb.intel.com ([10.237.105.63])
	by orsmga002.jf.intel.com with ESMTP; 09 May 2013 14:39:10 -0700
From: Ioana Grigoropol <ioanax.grigoropol@intel.com>
To: yocto@yoctoproject.org
Date: Fri, 10 May 2013 00:19:07 +0300
Message-Id: <1368134354-5816-1-git-send-email-ioanax.grigoropol@intel.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [PATCH 0/6] Separate org.yocto.remote.utils plugin
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
X-List-Received-Date: Thu, 09 May 2013 21:39:12 -0000

- initial commit & populate for remote utils common plugin


Ioana Grigoropol (6):
  Initial commit for separate remote utilities plugin
  Move RSEHelper to a separate plugin
  Move RemoteShellExec to separate plugin
  Move ShellSession to org.yocto.remote.utils separate plugin
  Move CommonHelper to org.yocto.remote.utils separate plugin
  Move TerminalHandler to org.yocto.remote.utils

 plugins/org.yocto.remote.utils/.classpath          |    7 +
 plugins/org.yocto.remote.utils/.project            |   28 ++
 .../.settings/org.eclipse.jdt.core.prefs           |    7 +
 .../org.yocto.remote.utils/META-INF/MANIFEST.MF    |   28 ++
 plugins/org.yocto.remote.utils/build.properties    |    4 +
 .../org.yocto.remote.utils/resources/ust_tar.sh    |   19 +
 .../org.yocto.remote.utils/resources/yocto_tool.sh |  125 ++++++
 .../org.yocto.remote.utils/resources/yocto_ust.sh  |   35 ++
 .../src/org/yocto/remote/utils/Activator.java      |   62 +++
 .../src/org/yocto/remote/utils/CommonHelper.java   |   46 +++
 .../src/org/yocto/remote/utils/Messages.java       |   35 ++
 .../src/org/yocto/remote/utils/RSEHelper.java      |  344 ++++++++++++++++
 .../org/yocto/remote/utils/RemoteShellExec.java    |  140 +++++++
 .../src/org/yocto/remote/utils/ShellSession.java   |  327 +++++++++++++++
 .../org/yocto/remote/utils/TerminalHandler.java    |  128 ++++++
 .../org.yocto.sdk.remotetools/META-INF/MANIFEST.MF |    3 +-
 .../org.yocto.sdk.remotetools/resources/ust_tar.sh |   19 -
 .../resources/yocto_tool.sh                        |  125 ------
 .../resources/yocto_ust.sh                         |   35 --
 .../org/yocto/sdk/remotetools/CommonHelper.java    |   44 --
 .../src/org/yocto/sdk/remotetools/RSEHelper.java   |  419 --------------------
 .../org/yocto/sdk/remotetools/ShellSession.java    |  341 ----------------
 .../yocto/sdk/remotetools/actions/BaseModel.java   |    4 +-
 .../sdk/remotetools/actions/BaseSettingDialog.java |    2 +-
 .../sdk/remotetools/actions/DialogHandler.java     |    1 +
 .../sdk/remotetools/actions/OprofileModel.java     |    2 +-
 .../sdk/remotetools/actions/SystemtapModel.java    |    2 +-
 .../actions/SystemtapSettingDialog.java            |    2 +-
 .../sdk/remotetools/actions/TerminalHandler.java   |  128 ------
 .../sdk/remotetools/remote/RemoteShellExec.java    |  149 -------
 30 files changed, 1344 insertions(+), 1267 deletions(-)
 create mode 100644 plugins/org.yocto.remote.utils/.classpath
 create mode 100644 plugins/org.yocto.remote.utils/.project
 create mode 100644 plugins/org.yocto.remote.utils/.settings/org.eclipse.jdt.core.prefs
 create mode 100644 plugins/org.yocto.remote.utils/META-INF/MANIFEST.MF
 create mode 100644 plugins/org.yocto.remote.utils/build.properties
 create mode 100755 plugins/org.yocto.remote.utils/resources/ust_tar.sh
 create mode 100755 plugins/org.yocto.remote.utils/resources/yocto_tool.sh
 create mode 100755 plugins/org.yocto.remote.utils/resources/yocto_ust.sh
 create mode 100644 plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/Activator.java
 create mode 100644 plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/CommonHelper.java
 create mode 100644 plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/Messages.java
 create mode 100644 plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/RSEHelper.java
 create mode 100644 plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/RemoteShellExec.java
 create mode 100644 plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/ShellSession.java
 create mode 100644 plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/TerminalHandler.java
 delete mode 100755 plugins/org.yocto.sdk.remotetools/resources/ust_tar.sh
 delete mode 100755 plugins/org.yocto.sdk.remotetools/resources/yocto_tool.sh
 delete mode 100755 plugins/org.yocto.sdk.remotetools/resources/yocto_ust.sh
 delete mode 100644 plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/CommonHelper.java
 delete mode 100644 plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/RSEHelper.java
 delete mode 100644 plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/ShellSession.java
 delete mode 100644 plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/TerminalHandler.java
 delete mode 100644 plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/remote/RemoteShellExec.java

-- 
1.7.9.5


