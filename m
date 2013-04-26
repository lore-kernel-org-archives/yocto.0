Return-Path: <ioanax.grigoropol@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 18068E014E4
	for <yocto@yoctoproject.org>; Fri, 26 Apr 2013 07:50:59 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 26 Apr 2013 07:50:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,559,1363158000"; d="scan'208";a="293621248"
Received: from ideapad.rb.intel.com ([10.237.105.63])
	by azsmga001.ch.intel.com with ESMTP; 26 Apr 2013 07:50:57 -0700
From: Ioana Grigoropol <ioanax.grigoropol@intel.com>
To: yocto@yoctoproject.org
Date: Fri, 26 Apr 2013 17:31:59 +0300
Message-Id: <1366986723-27748-1-git-send-email-ioanax.grigoropol@intel.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [PATCH 0/4] Initial changes for developing a common remote plugin
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
X-List-Received-Date: Fri, 26 Apr 2013 14:51:00 -0000

- create a separate plugin in which to drop all tools needed for remote support
  - will leave it empty until all functionalilty is properly separated & the util remote code is clearly distinguised
- code refactoring for remote tools plugin in order to simplify code and create single point of control over commands stages

[Yocto #4362]
Ioana Grigoropol (4):
  Initial commit for remote separate plugin
  Refactor Model(s) to display customized messages
  Unify preProcess for all commands models
  Add default behaviour for commands for post processing    
    Signed-off-by: Ioana Grigoropol <ioanax.grigoropol@intel.com>

 plugins/org.yocto.remote.utils/.classpath          |    7 ++
 plugins/org.yocto.remote.utils/.project            |   28 ++++++
 .../.settings/org.eclipse.jdt.core.prefs           |    7 ++
 .../org.yocto.remote.utils/META-INF/MANIFEST.MF    |   10 +++
 plugins/org.yocto.remote.utils/build.properties    |    4 +
 .../src/org/yocto/remote/utils/Activator.java      |   50 +++++++++++
 .../yocto/sdk/remotetools/actions/BaseModel.java   |   89 +++++++++++++-------
 .../sdk/remotetools/actions/OprofileModel.java     |   53 ++++--------
 .../sdk/remotetools/actions/PowertopModel.java     |   47 ++++-------
 .../sdk/remotetools/actions/SystemtapModel.java    |   34 ++++----
 .../yocto/sdk/remotetools/actions/Ust2Model.java   |   63 ++++----------
 .../sdk/remotetools/actions/UstModelLegacy.java    |   54 ++++--------
 12 files changed, 243 insertions(+), 203 deletions(-)
 create mode 100644 plugins/org.yocto.remote.utils/.classpath
 create mode 100644 plugins/org.yocto.remote.utils/.project
 create mode 100644 plugins/org.yocto.remote.utils/.settings/org.eclipse.jdt.core.prefs
 create mode 100644 plugins/org.yocto.remote.utils/META-INF/MANIFEST.MF
 create mode 100644 plugins/org.yocto.remote.utils/build.properties
 create mode 100644 plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/Activator.java

-- 
1.7.9.5


