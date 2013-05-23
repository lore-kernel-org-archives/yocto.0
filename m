Return-Path: <ioanax.grigoropol@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4D65EE014F1
	for <yocto@yoctoproject.org>; Thu, 23 May 2013 07:59:39 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 23 May 2013 07:59:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,728,1363158000"; d="scan'208";a="318423582"
Received: from ideapad.rb.intel.com ([10.237.105.63])
	by orsmga001.jf.intel.com with ESMTP; 23 May 2013 07:59:37 -0700
From: Ioana Grigoropol <ioanax.grigoropol@intel.com>
To: yocto@yoctoproject.org
Date: Thu, 23 May 2013 17:38:32 +0300
Message-Id: <1369319915-25590-2-git-send-email-ioanax.grigoropol@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1369319915-25590-1-git-send-email-ioanax.grigoropol@intel.com>
References: <1369319915-25590-1-git-send-email-ioanax.grigoropol@intel.com>
Subject: [eclipse-poky][branch:windows-build][PATCH 1/4] Adapt usage of LocalHostShell lock and reader to upstream changes
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
X-List-Received-Date: Thu, 23 May 2013 14:59:39 -0000

Signed-off-by: Ioana Grigoropol <ioanax.grigoropol@intel.com>
---
 .../org/yocto/bc/remote/utils/RemoteHelper.java    |   27 +++++++++++++++-----
 1 file changed, 21 insertions(+), 6 deletions(-)

diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/RemoteHelper.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/RemoteHelper.java
index 507ac54..87c8637 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/RemoteHelper.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/RemoteHelper.java
@@ -35,6 +35,7 @@ import org.eclipse.rse.core.RSECorePlugin;
 import org.eclipse.rse.core.model.IHost;
 import org.eclipse.rse.core.model.ISystemRegistry;
 import org.eclipse.rse.core.subsystems.ISubSystem;
+import org.eclipse.rse.internal.services.local.shells.LocalHostShell;
 import org.eclipse.rse.services.IService;
 import org.eclipse.rse.services.clientserver.messages.SystemMessageException;
 import org.eclipse.rse.services.files.IFileService;
@@ -87,18 +88,31 @@ public class RemoteHelper {
 		if (hostShell == null)
 			throw new Exception("An error has occured while trying to run remote command!");
 
-		Lock lock = hostShell.getLock();
-		lock.lock();
+		Lock lock = null;
+		if (hostShell instanceof LocalHostShell) {
+			lock = ((LocalHostShell)hostShell).getLock();
+			lock.lock();
+		}
 		ProcessStreamBuffer processBuffer = new ProcessStreamBuffer();
 		
-		BufferedReader inbr = hostShell.getReader(false);
-		BufferedReader errbr = hostShell.getReader(true);
+		BufferedReader inbr = null;
+		BufferedReader errbr = null;
+
+		if (hostShell instanceof LocalHostShell) {
+			inbr = ((LocalHostShell)hostShell).getReader(false);
+			errbr = ((LocalHostShell)hostShell).getReader(true);
+		} else {
+			Process p = new HostShellProcessAdapter(hostShell);
+			inbr = new BufferedReader(new InputStreamReader(p.getInputStream()));
+			errbr = new BufferedReader(new InputStreamReader(p.getErrorStream()));
+		}
 		
 		boolean cancel = false;
 		while (!cancel) {
 			if(monitor.isCanceled()) {
 				cancel = true;
-				lock.unlock();
+				if (lock != null)
+					lock.unlock();
 				throw new InterruptedException("User Cancelled");
 			}
 			StringBuffer buffer = new StringBuffer();
@@ -135,7 +149,8 @@ public class RemoteHelper {
 				}
 			cancel = true;
 		}
-		lock.unlock();
+		if (lock != null)
+			lock.unlock();
 		return processBuffer;
 	}
 	
-- 
1.7.9.5


