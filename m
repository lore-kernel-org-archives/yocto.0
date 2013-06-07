Return-Path: <ioanax.grigoropol@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 48549E00742
	for <yocto@yoctoproject.org>; Fri,  7 Jun 2013 08:13:53 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 07 Jun 2013 08:13:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,822,1363158000"; d="scan'208";a="251999335"
Received: from ideapad.rb.intel.com ([10.237.105.63])
	by AZSMGA002.ch.intel.com with ESMTP; 07 Jun 2013 08:13:27 -0700
From: Ioana Grigoropol <ioanax.grigoropol@intel.com>
To: yocto@yoctoproject.org
Date: Fri,  7 Jun 2013 17:51:15 +0300
Message-Id: <1370616683-17239-1-git-send-email-ioanax.grigoropol@intel.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [RFC Refactor[v2] 0/8] Split refactoring of RemoteHelper
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
X-List-Received-Date: Fri, 07 Jun 2013 15:13:53 -0000

- this set of patches replaces patch 2/9 from first batch of patches

Ioana Grigoropol (8):
  Move ICommandResponseHandler to org.yocto.remote.utils
  Add YoctoCommand utility class
  Add CommandResponseHandler implementation of ICommandResponseHandler
  Add ConsoleRunnable utility class
  Add ConsoleHelper utility class
  Add OutputProcessor utility class
  Add CommandOutputProcessor utilty class
  Refactor RemoteHelper class

 .../yocto/bc/bitbake/ICommandResponseHandler.java  |   15 --
 .../org.yocto.remote.utils/META-INF/MANIFEST.MF    |    8 +-
 .../yocto/remote/utils/CommandOutputProcessor.java |   43 ++++
 .../yocto/remote/utils/CommandResponseHandler.java |   44 ++++
 .../org/yocto/remote/utils/CommandRunnable.java    |   44 ++++
 .../src/org/yocto/remote/utils/ConsoleHelper.java  |   38 +++
 .../org/yocto/remote/utils/ConsoleRunnable.java    |   47 ++++
 .../remote/utils/ICommandResponseHandler.java      |   15 ++
 .../org/yocto/remote/utils/OutputProcessor.java    |  112 +++++++++
 .../src/org/yocto/remote/utils/RemoteHelper.java   |  255 ++++++++++++++++----
 .../src/org/yocto/remote/utils/RemoteMachine.java  |  202 ++++++++++++++++
 .../src/org/yocto/remote/utils/YoctoCommand.java   |   63 +++++
 12 files changed, 822 insertions(+), 64 deletions(-)
 delete mode 100644 plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/ICommandResponseHandler.java
 create mode 100644 plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/CommandOutputProcessor.java
 create mode 100644 plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/CommandResponseHandler.java
 create mode 100644 plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/CommandRunnable.java
 create mode 100644 plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/ConsoleHelper.java
 create mode 100644 plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/ConsoleRunnable.java
 create mode 100644 plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/ICommandResponseHandler.java
 create mode 100644 plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/OutputProcessor.java
 create mode 100644 plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/RemoteMachine.java
 create mode 100644 plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/YoctoCommand.java

-- 
1.7.9.5


