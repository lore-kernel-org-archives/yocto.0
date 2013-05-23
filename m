Return-Path: <ioanax.grigoropol@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 51BF2E0149D
	for <yocto@yoctoproject.org>; Thu, 23 May 2013 07:59:38 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 23 May 2013 07:59:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,728,1363158000"; d="scan'208";a="318423566"
Received: from ideapad.rb.intel.com ([10.237.105.63])
	by orsmga001.jf.intel.com with ESMTP; 23 May 2013 07:59:36 -0700
From: Ioana Grigoropol <ioanax.grigoropol@intel.com>
To: yocto@yoctoproject.org
Date: Thu, 23 May 2013 17:38:31 +0300
Message-Id: <1369319915-25590-1-git-send-email-ioanax.grigoropol@intel.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [eclipse-poky][branch:windows-build][PATCH 0/4] Adapt remote bb plugin code & fix remaining issues
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
X-List-Received-Date: Thu, 23 May 2013 14:59:38 -0000

- adapted remote bitbake commander project code to use upstream changes in the LocalHostShell code
- added fixes for recipe parsing
- added fixes for messages displayed during git clone


Ioana Grigoropol (4):
  Adapt usage of LocalHostShell lock and reader to upstream changes
  Fix recipe parsing when using Remote host
  Refactor processing of commands output
  Customize Output processor for git clone command and fix message
    display

 plugins/org.yocto.bc.ui/META-INF/MANIFEST.MF       |    1 +
 .../bc/remote/utils/CommandOutputProcessor.java    |   33 +++++++
 .../org/yocto/bc/remote/utils/CommandRunnable.java |    7 +-
 .../org/yocto/bc/remote/utils/OutputProcessor.java |  102 ++++++++++++++++++++
 .../yocto/bc/remote/utils/ProcessStreamBuffer.java |   13 ++-
 .../org/yocto/bc/remote/utils/RemoteHelper.java    |   65 +------------
 .../org/yocto/bc/remote/utils/RemoteMachine.java   |   13 +--
 .../org/yocto/bc/remote/utils/YoctoCommand.java    |    2 +-
 .../bc/remote/utils/YoctoRunnableWithProgress.java |   31 +++++-
 9 files changed, 181 insertions(+), 86 deletions(-)
 create mode 100644 plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/CommandOutputProcessor.java
 create mode 100644 plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/OutputProcessor.java

-- 
1.7.9.5


