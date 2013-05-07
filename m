Return-Path: <ioanax.grigoropol@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 44FCEE0148E
	for <yocto@yoctoproject.org>; Tue,  7 May 2013 05:52:50 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 07 May 2013 05:52:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,628,1363158000"; d="scan'208";a="238023002"
Received: from ideapad.rb.intel.com ([10.237.105.63])
	by AZSMGA002.ch.intel.com with ESMTP; 07 May 2013 05:52:48 -0700
From: Ioana Grigoropol <ioanax.grigoropol@intel.com>
To: yocto@yoctoproject.org
Date: Tue,  7 May 2013 15:32:52 +0300
Message-Id: <1367929980-1807-1-git-send-email-ioanax.grigoropol@intel.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [PATCH v2 0/8] Refactoring of remotetools plugin
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
X-List-Received-Date: Tue, 07 May 2013 12:52:50 -0000

- refactor all remote tools plugin to have single points of control for remote utilities plugin
- remove all duplicate code

Ioana Grigoropol (8):
  Remove UstLegacyModel since it is no longer supported
  Refactor Model(s) to display customized messages
  Unify preProcess for all commands models
  Add default behaviour for post-processing commands
  Remove duplicate code when getting remote data from powertop and ust2
  Refactor RemoteApplication implementation
  Refactor powertop, oprofile and ust2 models to remove duplicate code
  Refactor Latencytop and Perf Handler to remove duplicate code

 .../yocto/sdk/remotetools/actions/BaseModel.java   |  115 +++++++---
 .../sdk/remotetools/actions/IBaseConstants.java    |    3 +
 .../sdk/remotetools/actions/LatencytopHandler.java |   22 +-
 .../sdk/remotetools/actions/OprofileModel.java     |   81 ++-----
 .../yocto/sdk/remotetools/actions/PerfHandler.java |   22 +-
 .../sdk/remotetools/actions/PowertopModel.java     |   90 ++------
 .../sdk/remotetools/actions/SystemtapModel.java    |   34 ++-
 .../sdk/remotetools/actions/TerminalHandler.java   |   16 +-
 .../yocto/sdk/remotetools/actions/Ust2Model.java   |  132 +++--------
 .../sdk/remotetools/actions/UstModelLegacy.java    |  238 --------------------
 .../sdk/remotetools/remote/RemoteApplication.java  |  155 -------------
 .../sdk/remotetools/remote/RemoteShellExec.java    |  149 ++++++++++++
 12 files changed, 348 insertions(+), 709 deletions(-)
 delete mode 100644 plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/UstModelLegacy.java
 delete mode 100644 plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/remote/RemoteApplication.java
 create mode 100644 plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/remote/RemoteShellExec.java

-- 
1.7.9.5


