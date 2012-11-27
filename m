Return-Path: <ioanax.grigoropol@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 886C4E01275
	for <yocto@yoctoproject.org>; Tue, 27 Nov 2012 07:26:13 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 27 Nov 2012 07:26:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.83,328,1352102400"; d="scan'208";a="247886174"
Received: from ideapad (HELO localhost.localdomain) ([10.237.105.148])
	by orsmga002.jf.intel.com with ESMTP; 27 Nov 2012 07:26:12 -0800
From: Ioana Grigoropol <ioanax.grigoropol@intel.com>
To: yocto@yoctoproject.org
Date: Tue, 27 Nov 2012 17:17:02 +0200
Message-Id: <1354029423-16104-3-git-send-email-ioanax.grigoropol@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1354029423-16104-1-git-send-email-ioanax.grigoropol@intel.com>
References: <1354029423-16104-1-git-send-email-ioanax.grigoropol@intel.com>
Subject: [PATCH 3/4] Fix bitbake session by disabling sanity checks
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 27 Nov 2012 15:26:13 -0000

- when creating a shell session for  Bitbake, we cannot run "bitbake -e -b recipe.bb" just by setting DISABLE_SANITY_CHECKS=1; we must first append DISABLE_SANITY_CHECKS to BB_ENV_EXTRAWHITE

Signed-off-by: Ioana Grigoropol <ioanax.grigoropol@intel.com>
---
 .../src/org/yocto/bc/bitbake/BBRecipe.java         |   10 +++++-----
 .../src/org/yocto/bc/bitbake/ShellSession.java     |   16 +++++++++-------
 2 files changed, 14 insertions(+), 12 deletions(-)

diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/BBRecipe.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/BBRecipe.java
index 7682aee..6a33ade 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/BBRecipe.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/BBRecipe.java
@@ -20,24 +20,24 @@ import java.net.URI;
  */
 public class BBRecipe extends BBSession {
 	private final BBSession session;
-	private final URI filePath;
+	private final URI fileURI;
 
 	public BBRecipe(BBSession session, URI filePath) throws IOException {
 		super(session.shell, session.pinfo.getURI());
 		this.session = session;
-		this.filePath = filePath;
-		this.parsingCmd = "DISABLE_SANITY_CHECKS=1 bitbake -e -b " + filePath;
+		this.fileURI = filePath;
+		this.parsingCmd = "DISABLE_SANITY_CHECKS=\"1\" bitbake -e -b " + filePath.getPath();
 	}
 	
 	@Override
 	public void initialize() throws Exception {
 		if (this.size() == 0) {
-			System.out.println("Failed to parse " + filePath);
+			System.out.println("Failed to parse " + fileURI);
 			//throw new IOException("Failed to parse " + filePath);
 		}
 	}
 
 	protected URI getDefaultDepends() {
-		return this.filePath;
+		return this.fileURI;
 	}
 }
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/ShellSession.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/ShellSession.java
index a8c46dd..edff746 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/ShellSession.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/ShellSession.java
@@ -46,6 +46,7 @@ public class ShellSession {
 	 */
 	public static final String TERMINATOR = "#234o987dsfkcqiuwey18837032843259d";
 	public static final String LT = System.getProperty("line.separator");
+	public static final String exportCmd = "export BB_ENV_EXTRAWHITE=\"DISABLE_SANITY_CHECKS $BB_ENV_EXTRAWHITE\"";
 	
 	public static String getFilePath(String file) throws IOException {
 		File f = new File(file);
@@ -69,7 +70,7 @@ public class ShellSession {
 
 	private OutputStream pos = null;
 	//private File initFile = null;
-	private String shellPath = null;
+//	private String shellPath = null;
 	private final String initCmd;
 	private final IHostFile root;
 //	private final Writer out;
@@ -84,10 +85,10 @@ public class ShellSession {
 //		} else {
 //			this.out = out;
 //		}
-		if (shellType == SHELL_TYPE_SH) {
-			shellPath = "/bin/sh";
-		}
-		shellPath  = "/bin/bash";
+//		if (shellType == SHELL_TYPE_SH) {
+//			shellPath = "/bin/sh";
+//		}
+//		shellPath  = "/bin/bash";
 		
 		initializeShell(new NullProgressMonitor());
 	}
@@ -95,7 +96,8 @@ public class ShellSession {
 	private void initializeShell(IProgressMonitor monitor) throws IOException {
 		try {
 			IHost connection = RemoteHelper.getRemoteConnectionByName(projectInfo.getConnection().getName());
-			RemoteHelper.runCommandRemote(connection, new YoctoCommand("source " + initCmd, root.getAbsolutePath(), ""), monitor);
+			RemoteHelper.runCommandRemote(connection, new YoctoCommand("source " + initCmd, root.getAbsolutePath(), ""), monitor);		
+			RemoteHelper.runCommandRemote(connection, new YoctoCommand(exportCmd, root.getAbsolutePath(), ""), monitor);
 		} catch (Exception e) {
 			e.printStackTrace();
 		}
@@ -110,7 +112,7 @@ public class ShellSession {
 	public String execute(String command, boolean hasErrors) throws IOException {
 		try {
 			IHost connection = RemoteHelper.getRemoteConnectionByName(projectInfo.getConnection().getName());
-			hasErrors = RemoteHelper.runCommandRemote(connection, new YoctoCommand(command, root.getAbsolutePath(), ""), new NullProgressMonitor());
+			hasErrors = RemoteHelper.runCommandRemote(connection, new YoctoCommand(command, root.getAbsolutePath() + "/build/", ""), new NullProgressMonitor());
 			return RemoteHelper.getProcessBuffer(connection).getMergedOutputLines();
 		} catch (Exception e) {
 			e.printStackTrace();
-- 
1.7.9.5


