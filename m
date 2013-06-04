Return-Path: <ioanax.grigoropol@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2D583E01409
	for <yocto@yoctoproject.org>; Tue,  4 Jun 2013 08:29:50 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 04 Jun 2013 08:30:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,800,1363158000"; d="scan'208";a="347946830"
Received: from ideapad.rb.intel.com ([10.237.105.63])
	by fmsmga002.fm.intel.com with ESMTP; 04 Jun 2013 08:29:48 -0700
From: Ioana Grigoropol <ioanax.grigoropol@intel.com>
To: yocto@yoctoproject.org
Date: Tue,  4 Jun 2013 18:07:41 +0300
Message-Id: <1370358468-20881-2-git-send-email-ioanax.grigoropol@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1370358468-20881-1-git-send-email-ioanax.grigoropol@intel.com>
References: <1370358468-20881-1-git-send-email-ioanax.grigoropol@intel.com>
Subject: [Refactor RFC 1/8] Redirect bitbake environment parsing to file & parse
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
X-List-Received-Date: Tue, 04 Jun 2013 15:29:50 -0000

- when running "bitbake -e" the output is sent to the console, poluting it
- instead, send the output to a file (bitbake.env) and parse the file accordingly
- if an error has occured while running the commad, all the error lines are collected and displayed on the console

Signed-off-by: Ioana Grigoropol <ioanax.grigoropol@intel.com>
---
 .../src/org/yocto/bc/bitbake/BBRecipe.java         |    2 +-
 .../src/org/yocto/bc/bitbake/BBSession.java        |   49 +++++++++++++-------
 .../src/org/yocto/bc/bitbake/ShellSession.java     |   14 +++---
 3 files changed, 40 insertions(+), 25 deletions(-)

diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/BBRecipe.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/BBRecipe.java
index 1baf124..6168f8c 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/BBRecipe.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/BBRecipe.java
@@ -26,7 +26,7 @@ public class BBRecipe extends BBSession {
 		super(session.shell, session.pinfo.getOriginalURI());
 		this.session = session;
 		this.fileURI = filePath;
-		this.parsingCmd = "DISABLE_SANITY_CHECKS=1 bitbake -e -b " + filePath;
+		this.parsingCmd = "DISABLE_SANITY_CHECKS=\"1\" bitbake -e -b " + filePath.getPath() + " >& " + BB_ENV_FILE;
 	}
 	
 	@Override
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/BBSession.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/BBSession.java
index fcde557..9bc4dcc 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/BBSession.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/BBSession.java
@@ -15,6 +15,8 @@ import java.io.File;
 import java.io.FileFilter;
 import java.io.IOException;
 import java.io.StringReader;
+import java.io.InputStream;
+import java.io.InputStreamReader;
 import java.net.URI;
 import java.util.ArrayList;
 import java.util.Arrays;
@@ -33,9 +35,11 @@ import org.eclipse.core.resources.IProject;
 import org.eclipse.core.resources.IResource;
 import org.eclipse.core.runtime.IProgressMonitor;
 import org.eclipse.core.runtime.IStatus;
+import org.eclipse.core.runtime.NullProgressMonitor;
 import org.eclipse.core.runtime.Status;
 import org.eclipse.jface.preference.JFacePreferences;
 import org.eclipse.jface.resource.JFaceResources;
+import org.eclipse.rse.core.model.IHost;
 import org.eclipse.ui.console.ConsolePlugin;
 import org.eclipse.ui.console.IConsole;
 import org.eclipse.ui.console.IConsoleManager;
@@ -45,6 +49,7 @@ import org.eclipse.ui.progress.WorkbenchJob;
 
 import org.yocto.bc.ui.model.IModelElement;
 import org.yocto.bc.ui.model.ProjectInfo;
+import org.yocto.remote.utils.RemoteHelper;
 
 /**
  * BBSession encapsulates a global bitbake configuration and is the primary interface
@@ -59,6 +64,7 @@ public class BBSession implements IBBSessionListener, IModelElement, Map {
 	public static final int TYPE_STATEMENT = 3;
 	public static final int TYPE_FLAG = 4;
 	
+	public static final String BB_ENV_FILE = "bitbake.env";
 	public static final String BUILDDIR_INDICATORS [] = {
 		File.separatorChar + "conf" + File.separatorChar + "local.conf",
 		File.separatorChar + "conf" + File.separatorChar + "bblayers.conf",
@@ -69,19 +75,21 @@ public class BBSession implements IBBSessionListener, IModelElement, Map {
 	protected Map<?,?> properties = null;
 	protected List <URI> depends = null;
 	protected boolean initialized = false;
+	protected boolean errorOccured = false;
 	protected MessageConsole sessionConsole;
 	private final ReentrantReadWriteLock rwlock = new ReentrantReadWriteLock();
 	private final Lock rlock = rwlock.readLock();
 	private final Lock wlock = rwlock.writeLock();
 	protected String parsingCmd;
 	private boolean silent = false;
-	
+	private String errorLines = "";
+
 	public BBSession(ShellSession ssession, URI projectRoot) throws IOException {
 		shell = ssession;
 		this.pinfo = new ProjectInfo();
 		pinfo.setLocationURI(projectRoot);
 		pinfo.setInitScriptPath(ProjectInfoHelper.getInitScriptPath(projectRoot));
-		this.parsingCmd = "DISABLE_SANITY_CHECKS=1 bitbake -e";
+		this.parsingCmd = "DISABLE_SANITY_CHECKS=\"1\" bitbake -e >& " + BB_ENV_FILE;
 	}
 
 	public BBSession(ShellSession ssession, URI projectRoot, boolean silent) throws IOException {
@@ -330,18 +338,17 @@ public class BBSession implements IBBSessionListener, IModelElement, Map {
 		}
 	}
 
-	protected int checkExecuteError(String result, int code) {
+	protected void checkExecuteError(String result, boolean hasErrors) {
 		URI recipeURI = getDefaultDepends();
 		String text = "Parsing " + ((recipeURI != null) ? ("recipe " + recipeURI) : "base configurations");
-		if (code != 0) {
+		if (hasErrors) {
 			text = text + " ERROR!\n" + result;
 		}else {
 				text = text + " SUCCESS.\n";
 		}
 		if(!silent) {
-			displayInConsole(text, code, false);
+			displayInConsole(text, -1, false);
 		}
-		return code;
 	}
 
 	protected void displayInConsole(final String result, final int code, boolean clear) {
@@ -378,14 +385,21 @@ public class BBSession implements IBBSessionListener, IModelElement, Map {
 			}
 			try {
 				if(!initialized) { //recheck
-					int [] codes = {-1};
-					String result = shell.execute(parsingCmd, codes);
-					if(checkExecuteError(result, codes[0]) == 0) {
-						properties = parseBBEnvironment(result);
+					boolean hasErrors = false;
+					String result = shell.execute(parsingCmd, hasErrors);
+
+					//FIXME : wait for bitbake to finish
+					properties = parseBBEnvironment(result);
+
+					if (properties.size() == 0) { // there was an error in sourcing bitbake environment
+						shell.printError(errorLines);
+						errorOccured = true;
 					} else {
-						properties = parseBBEnvironment("");
+						errorLines = "";
+						errorOccured = false;
+						initialized = true;
 					}
-					initialized = true;
+					//FIXME: cleanup BB env file
 				}
 			} finally {
 				//downgrade lock
@@ -440,8 +454,11 @@ public class BBSession implements IBBSessionListener, IModelElement, Map {
 		}
 	}
 
-	protected void parse(String content, Map outMap) throws Exception {
-		BufferedReader reader = new BufferedReader(new StringReader(content));
+	protected void parse(String bbOutfilePath, Map outMap) throws Exception {
+		IHost connection = shell.getProjectInfo().getConnection();
+		InputStream is = RemoteHelper.getRemoteInputStream(connection, bbOutfilePath, BB_ENV_FILE, new NullProgressMonitor());
+		RemoteHelper.getRemoteHostFile(connection, bbOutfilePath + BB_ENV_FILE, new NullProgressMonitor());
+		BufferedReader reader = new BufferedReader(new InputStreamReader(is));
 		String line;
 		boolean inLine = false;
 		StringBuffer sb = null;
@@ -508,11 +525,11 @@ public class BBSession implements IBBSessionListener, IModelElement, Map {
 		return null;
 	}
 	
-	protected Map parseBBEnvironment(String bbOut) throws Exception {
+	protected Map parseBBEnvironment(String bbOutFilePath) throws Exception {
 		Map env = new Hashtable();
 		this.depends = new ArrayList<URI>();
 
-		parse(bbOut, env);
+		parse(bbOutFilePath, env);
 
 		String included = (String) env.get("BBINCLUDED");
 		if(getDefaultDepends() != null) {
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/ShellSession.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/ShellSession.java
index 44b2696..129d1d9 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/ShellSession.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/ShellSession.java
@@ -21,6 +21,7 @@ import java.io.Writer;
 import org.eclipse.rse.services.files.IHostFile;
 import org.yocto.bc.ui.model.ProjectInfo;
 import org.yocto.remote.utils.ICommandResponseHandler;
+import org.yocto.remote.utils.RemoteHelper;
 
 /**
  * A class for Linux shell sessions.
@@ -112,11 +113,11 @@ public class ShellSession {
 
 	synchronized 
 	public String execute(String command) throws IOException {
-		return execute(command, (int [])null);
+		return execute(command, false);
 	}
 
 	synchronized 
-	public String execute(String command, int[] retCode) throws IOException {
+	public String execute(String command, boolean hasErrors) throws IOException {
 		String errorMessage = null;
 		interrupt = false;
 		out.write(command);
@@ -150,12 +151,6 @@ public class ShellSession {
 			process.destroy();
 			initializeShell();
 			interrupt = false;
-		}else if (line != null && retCode != null) {
-			try {
-				retCode[0]=Integer.parseInt(line.substring(0,line.lastIndexOf(TERMINATOR)));
-			}catch (NumberFormatException e) {
-				throw new IOException("Can NOT get return code" + command + LT + line);
-			}
 		}
 		
 		if (errorMessage != null) {
@@ -259,4 +254,7 @@ synchronized
 		}
 		
 	}
+	public void printError(String errorLines) {
+		RemoteHelper.getCommandHandler(projectInfo.getConnection()).response(errorLines, true);
+	}
 }
-- 
1.7.9.5


