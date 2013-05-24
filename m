Return-Path: <ioanax.grigoropol@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 32447E01489
	for <yocto@yoctoproject.org>; Fri, 24 May 2013 02:06:17 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by azsmga101.ch.intel.com with ESMTP; 24 May 2013 02:06:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,734,1363158000"; d="scan'208";a="339366434"
Received: from ideapad.rb.intel.com ([10.237.105.63])
	by fmsmga001.fm.intel.com with ESMTP; 24 May 2013 02:06:21 -0700
From: Ioana Grigoropol <ioanax.grigoropol@intel.com>
To: yocto@yoctoproject.org
Date: Fri, 24 May 2013 11:45:13 +0300
Message-Id: <1369385115-31487-1-git-send-email-ioanax.grigoropol@intel.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [PATCH v3 0/2] Yocto SDK IDE cleanup
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
X-List-Received-Date: Fri, 24 May 2013 09:06:17 -0000

- org.yocto.sdk.ide clean up - remove unused classes

Ioana Grigoropol (2):
  Remove unused TCFTerminalConnectors
  Remove all plugin dependencies to RSE APi from remote tools plugin

 .../org.yocto.sdk.remotetools/META-INF/MANIFEST.MF |   10 +-
 .../remotetools/views/TCFTerminalConnector.java    |   49 ----------
 .../views/TCFTerminalConnectorImpl.java            |   98 --------------------
 3 files changed, 4 insertions(+), 153 deletions(-)
 delete mode 100644 plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/views/TCFTerminalConnector.java
 delete mode 100644 plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/views/TCFTerminalConnectorImpl.java

-- 
1.7.9.5


