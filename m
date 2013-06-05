Return-Path: <ioanax.grigoropol@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 286F1E0149D
	for <yocto@yoctoproject.org>; Wed,  5 Jun 2013 10:22:27 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 05 Jun 2013 10:22:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,808,1363158000"; d="scan'208";a="348629237"
Received: from ideapad.rb.intel.com ([10.237.105.63])
	by fmsmga002.fm.intel.com with ESMTP; 05 Jun 2013 10:22:25 -0700
From: Ioana Grigoropol <ioanax.grigoropol@intel.com>
To: yocto@yoctoproject.org
Date: Wed,  5 Jun 2013 20:00:03 +0300
Message-Id: <1370451622-10619-3-git-send-email-ioanax.grigoropol@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1370451622-10619-1-git-send-email-ioanax.grigoropol@intel.com>
References: <1370451622-10619-1-git-send-email-ioanax.grigoropol@intel.com>
Subject: [RFC refactor 02/21] Remove shell type from ShellSession constructor
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
X-List-Received-Date: Wed, 05 Jun 2013 17:22:27 -0000

- ShellSession is only used with shellType SHELL_BASH and thus the need to keep an extra argument is not needed
- When running commands using RemoteHelper, a shell is created per command. Its type is determined by using the IShellServiceSubSystem implementation from the target.

Signed-off-by: Ioana Grigoropol <ioanax.grigoropol@intel.com>
---
 .../src/org/yocto/bc/bitbake/ShellSession.java     |   14 +-------------
 .../src/org/yocto/bc/ui/Activator.java             |    2 +-
 2 files changed, 2 insertions(+), 14 deletions(-)

diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/ShellSession.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/ShellSession.java
index e8ed384..bc962f7 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/ShellSession.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/ShellSession.java
@@ -33,14 +33,6 @@ import org.yocto.remote.utils.YoctoCommand;
  *
  */
 public class ShellSession {
-	/**
-	 * Bash shell
-	 */
-	public static final int SHELL_TYPE_BASH = 1;
-	/**
-	 * sh shell
-	 */
-	public static final int SHELL_TYPE_SH = 2;
 	private volatile boolean interrupt = false;
 	/**
 	 * String used to isolate command execution
@@ -86,14 +78,10 @@ public class ShellSession {
 		this.projectInfo = projectInfo;
 	}
 
-	public ShellSession(ProjectInfo pInfo, int shellType, IHostFile root, String initCmd) throws IOException {
+	public ShellSession(ProjectInfo pInfo, IHostFile root, String initCmd) throws IOException {
 		this.projectInfo = pInfo;
 		this.root = root;
 		this.initCmd  = initCmd;
-		if (shellType == SHELL_TYPE_SH) {
-			shellPath = "/bin/sh";
-		}
-		shellPath  = "/bin/bash";
 
 		initializeShell(new NullProgressMonitor());
 	}
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/Activator.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/Activator.java
index dc2e858..c11b674 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/Activator.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/Activator.java
@@ -191,7 +191,7 @@ public class Activator extends AbstractUIPlugin {
 		
 		if (ss == null) {
 			IHostFile remoteHostFile = RemoteHelper.getRemoteHostFile(projInfo.getConnection(), absolutePath.getPath(), monitor);
-			ss = new ShellSession(projInfo, ShellSession.SHELL_TYPE_BASH, remoteHostFile, ProjectInfoHelper.getInitScriptPath(absolutePath));
+			ss = new ShellSession(projInfo, remoteHostFile, ProjectInfoHelper.getInitScriptPath(absolutePath));
 		}
 		
 		return ss;
-- 
1.7.9.5


