Return-Path: <ioanax.grigoropol@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 02CF7E01407
	for <yocto@yoctoproject.org>; Wed,  8 May 2013 11:04:13 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 08 May 2013 11:04:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,636,1363158000"; d="scan'208";a="334521761"
Received: from ideapad.rb.intel.com ([10.237.105.63])
	by fmsmga002.fm.intel.com with ESMTP; 08 May 2013 11:04:12 -0700
From: Ioana Grigoropol <ioanax.grigoropol@intel.com>
To: yocto@yoctoproject.org
Date: Wed,  8 May 2013 20:44:16 +0300
Message-Id: <1368035063-19401-1-git-send-email-ioanax.grigoropol@intel.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [PATCH v2 0/7] Initial commit & functionalities for org.yocto.remote.utils
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
X-List-Received-Date: Wed, 08 May 2013 18:04:14 -0000

- created separate org.yocto.remote.utils plugin
- move all functionality from org.yocto.sdk.remotetools that perform remote actions to org.yocto.remote.utils
- remove all dependencies to RSE Api from org.yocto.sdk.remotetools that are no longer needed

Ioana Grigoropol (7):
  Move RSEHelper to a separate plugin
  Move RemoteShellExec to separate plugin
  Move ShellSession to org.yocto.remote.utils separate plugin
  Move CommonHelper to org.yocto.remote.utils separate plugin
  Move TerminalHandler to org.yocto.remote.utils
  Remove unused TCFTerminalConnectors
  Remove all plugin dependencies to RSE APi from remote tools plugin

 .../org.yocto.remote.utils/META-INF/MANIFEST.MF    |   17 +
 .../src/org/yocto/remote/utils/Activator.java      |    4 +-
 .../src/org/yocto/remote/utils/CommonHelper.java   |   46 +++
 .../src/org/yocto/remote/utils/Messages.java       |   35 ++
 .../src/org/yocto/remote/utils/RSEHelper.java      |  344 ++++++++++++++++
 .../org/yocto/remote/utils/RemoteShellExec.java    |  140 +++++++
 .../src/org/yocto/remote/utils/ShellSession.java   |  327 +++++++++++++++
 .../org/yocto/remote/utils/TerminalHandler.java    |  128 ++++++
 .../org.yocto.sdk.remotetools/META-INF/MANIFEST.MF |   13 +-
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
 .../remotetools/views/TCFTerminalConnector.java    |   49 ---
 .../views/TCFTerminalConnectorImpl.java            |   98 -----
 22 files changed, 1053 insertions(+), 1242 deletions(-)
 create mode 100644 plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/CommonHelper.java
 create mode 100644 plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/Messages.java
 create mode 100644 plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/RSEHelper.java
 create mode 100644 plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/RemoteShellExec.java
 create mode 100644 plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/ShellSession.java
 create mode 100644 plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/TerminalHandler.java
 delete mode 100644 plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/CommonHelper.java
 delete mode 100644 plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/RSEHelper.java
 delete mode 100644 plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/ShellSession.java
 delete mode 100644 plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/TerminalHandler.java
 delete mode 100644 plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/remote/RemoteShellExec.java
 delete mode 100644 plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/views/TCFTerminalConnector.java
 delete mode 100644 plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/views/TCFTerminalConnectorImpl.java

-- 
1.7.9.5


