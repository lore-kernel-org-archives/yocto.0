Return-Path: <ioanax.grigoropol@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2802CE0070F
	for <yocto@yoctoproject.org>; Thu, 10 Jan 2013 08:04:43 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 10 Jan 2013 08:04:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,444,1355126400"; d="scan'208";a="244685147"
Received: from igrigorx-mobl.ger.corp.intel.com (HELO localhost.localdomain)
	([10.237.108.42])
	by orsmga001.jf.intel.com with ESMTP; 10 Jan 2013 08:04:28 -0800
From: Ioana Grigoropol <ioanax.grigoropol@intel.com>
To: yocto@yoctoproject.org
Date: Thu, 10 Jan 2013 18:04:14 +0200
Message-Id: <1357833857-16426-1-git-send-email-ioanax.grigoropol@intel.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [PATCH v2 0/3][eclipse-poky][branch:windows-build]Multiple fixes for windows-build branch
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
X-List-Received-Date: Thu, 10 Jan 2013 16:04:43 -0000

Ioana Grigoropol (3):
  Fix variables hoover & remote file system detection
  Allow '-' in project names
  Reinstate OEFileSystem, OEFile and Ignored Paths for Linux

 plugins/org.yocto.bc.ui/META-INF/MANIFEST.MF       |    2 +-
 plugins/org.yocto.bc.ui/plugin.xml                 |    3 +-
 .../src/org/yocto/bc/bitbake/BBSession.java        |    4 +
 .../org/yocto/bc/bitbake/ProjectInfoHelper.java    |   24 ++--
 .../src/org/yocto/bc/bitbake/ShellSession.java     |   13 ++-
 .../org/yocto/bc/remote/utils/RemoteHelper.java    |    7 +-
 .../org/yocto/bc/remote/utils/RemoteMachine.java   |    8 +-
 .../src/org/yocto/bc/ui/Activator.java             |   45 +++++---
 .../org/yocto/bc/ui/BCResourceChangeListener.java  |    1 -
 .../bc/ui/editors/bitbake/BBVariableTextHover.java |   12 +-
 .../src/org/yocto/bc/ui/filesystem/OEFile.java     |  120 ++++----------------
 .../org/yocto/bc/ui/filesystem/OEFileSystem.java   |   50 ++++++--
 .../bc/ui/filesystem/OEFileSystemContributor.java  |    7 +-
 .../org/yocto/bc/ui/filesystem/OEIgnoreFile.java   |   31 ++++-
 .../src/org/yocto/bc/ui/model/ProjectInfo.java     |   21 +++-
 .../src/org/yocto/bc/ui/model/YoctoHostFile.java   |  100 ++++++++++++----
 .../yocto/bc/ui/wizards/install/OptionsPage.java   |    3 +-
 .../newproject/CreateBBCProjectOperation.java      |   23 ++--
 18 files changed, 281 insertions(+), 193 deletions(-)

-- 
1.7.9.5


