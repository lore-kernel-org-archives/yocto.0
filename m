Return-Path: <ioanax.grigoropol@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 267DDE006F9
	for <yocto@yoctoproject.org>; Thu,  9 May 2013 14:39:41 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 09 May 2013 14:39:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,643,1363158000"; d="scan'208";a="335164002"
Received: from ideapad.rb.intel.com ([10.237.105.63])
	by fmsmga002.fm.intel.com with ESMTP; 09 May 2013 14:39:39 -0700
From: Ioana Grigoropol <ioanax.grigoropol@intel.com>
To: yocto@yoctoproject.org
Date: Fri, 10 May 2013 00:19:42 +0300
Message-Id: <1368134384-5868-1-git-send-email-ioanax.grigoropol@intel.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [PATCH 0/2] Clean-up and dependencies removal
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
X-List-Received-Date: Thu, 09 May 2013 21:39:41 -0000

- clean-up and dependencies to RSE api from org.yocto.sdk.remotetools

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


