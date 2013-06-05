Return-Path: <ioanax.grigoropol@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9A5A6E014FB
	for <yocto@yoctoproject.org>; Wed,  5 Jun 2013 10:22:29 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 05 Jun 2013 10:23:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,808,1363158000"; d="scan'208";a="348629253"
Received: from ideapad.rb.intel.com ([10.237.105.63])
	by fmsmga002.fm.intel.com with ESMTP; 05 Jun 2013 10:22:28 -0700
From: Ioana Grigoropol <ioanax.grigoropol@intel.com>
To: yocto@yoctoproject.org
Date: Wed,  5 Jun 2013 20:00:05 +0300
Message-Id: <1370451622-10619-5-git-send-email-ioanax.grigoropol@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1370451622-10619-1-git-send-email-ioanax.grigoropol@intel.com>
References: <1370451622-10619-1-git-send-email-ioanax.grigoropol@intel.com>
Subject: [RFC refactor 04/21] Remove unsed methods & inner classes from ShellSession
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
X-List-Received-Date: Wed, 05 Jun 2013 17:22:29 -0000

Signed-off-by: Ioana Grigoropol <ioanax.grigoropol@intel.com>
---
 .../src/org/yocto/bc/bitbake/ShellSession.java     |   20 --------------------
 1 file changed, 20 deletions(-)

diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/ShellSession.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/ShellSession.java
index 4e8dd47..8760503 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/ShellSession.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/ShellSession.java
@@ -130,11 +130,6 @@ public class ShellSession {
 				+ exportColumnsCmd + ";" + "cd " + getBuildDirAbsolutePath()
 				+ ";";
 	}
-
-synchronized 
-	public void execute(String command, ICommandResponseHandler handler) throws IOException {
-		execute(command, TERMINATOR, handler);
-	}
 	
 	synchronized 
 	public void execute(String command, String terminator, ICommandResponseHandler handler) throws IOException {
@@ -207,21 +202,6 @@ synchronized
 		interrupt = true;
 	}
 	
-	private class NullWriter extends Writer {
-
-		@Override
-		public void close() throws IOException {			
-		}
-
-		@Override
-		public void flush() throws IOException {			
-		}
-
-		@Override
-		public void write(char[] cbuf, int off, int len) throws IOException {			
-		}
-		
-	}
 	public void printError(String errorLines) {
 		RemoteHelper.getCommandHandler(projectInfo.getConnection()).response(errorLines, true);
 	}
-- 
1.7.9.5


