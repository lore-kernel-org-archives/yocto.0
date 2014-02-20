Return-Path: <alexandru.c.georgescu@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 273CCE007C8
	for <yocto@yoctoproject.org>; Thu, 20 Feb 2014 07:21:16 -0800 (PST)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 20 Feb 2014 07:21:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,512,1389772800"; d="scan'208";a="342432644"
Received: from linux.jf.intel.com (HELO linux.intel.com) ([10.23.219.25])
	by AZSMGA002.ch.intel.com with ESMTP; 20 Feb 2014 07:21:15 -0800
Received: from localhost.localdomain (unknown [10.237.112.201])
	by linux.intel.com (Postfix) with ESMTP id 2C3526A4083;
	Thu, 20 Feb 2014 07:21:05 -0800 (PST)
From: Alexandru Georgescu <alexandru.c.georgescu@intel.com>
To: yocto@yoctoproject.org
Date: Thu, 20 Feb 2014 10:10:48 -0500
Message-Id: <1392909048-12471-1-git-send-email-alexandru.c.georgescu@intel.com>
X-Mailer: git-send-email 1.8.5.3
Subject: [eclipse-poky-kepler][PATCH] Fix cloning for a Bitbake Commander Project
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
X-List-Received-Date: Thu, 20 Feb 2014 15:21:18 -0000

Previous commit changed the way YoctoCommand sets a command forcing use of bash.
However cloning a git repo passed the repository as argument, which doesn't work anymore,
fix it by using a single command string.

[YOCTO #5757]

Signed-off-by: Alexandru Georgescu <alexandru.c.georgescu@intel.com>
---
 .../src/org/yocto/bc/ui/wizards/install/InstallWizard.java           | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/install/InstallWizard.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/install/InstallWizard.java
index 32a0b4d..f64401c 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/install/InstallWizard.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/install/InstallWizard.java
@@ -148,11 +148,10 @@ public class InstallWizard extends FiniteStateWizard implements
 			CommandResponseHandler cmdHandler = new CommandResponseHandler(RemoteHelper.getConsole(connection));
 			IWizardContainer container = this.getContainer();
 			if (((Boolean)options.get(GIT_CLONE)).booleanValue()) {
-				String cmd = "/usr/bin/git clone --progress";
-				String args = "git://git.yoctoproject.org/poky.git " + uri.getPath();
+				String cmd = "git clone --progress git://git.yoctoproject.org/poky.git " + uri.getPath();
 				String taskName = "Checking out Yocto git repository";
 
-				YoctoRunnableWithProgress adapter = new YoctoRunnableWithProgress(new YoctoCommand(cmd, "", args));
+				YoctoRunnableWithProgress adapter = new YoctoRunnableWithProgress(new YoctoCommand(cmd, "", ""));
 
 				adapter.setRemoteConnection(remoteConnection);
 				adapter.setRemoteServices(remoteServices);
-- 
1.8.5.3


