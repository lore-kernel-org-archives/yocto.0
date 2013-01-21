Return-Path: <ioanax.grigoropol@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C2993E011AF
	for <yocto@yoctoproject.org>; Mon, 21 Jan 2013 06:37:17 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 21 Jan 2013 06:37:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,506,1355126400"; d="scan'208";a="250142974"
Received: from igrigorx-mobl.ger.corp.intel.com (HELO localhost.localdomain)
	([10.237.108.177])
	by orsmga001.jf.intel.com with ESMTP; 21 Jan 2013 06:37:14 -0800
From: Ioana Grigoropol <ioanax.grigoropol@intel.com>
To: yocto@yoctoproject.org
Date: Mon, 21 Jan 2013 16:37:06 +0200
Message-Id: <1358779027-3248-1-git-send-email-ioanax.grigoropol@intel.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [PATCH v2] [eclipse-poky][branch:windows-build]Performance fix for Windows implementation
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
X-List-Received-Date: Mon, 21 Jan 2013 14:37:18 -0000

    - run each command in a separate shell - needs explicit sourcing of environment and closing for each command
    - add distinction between OEFS URI and actual URI of the remote project and files -> YoctoLocation of the project contains both URIs
	- use OEFS URI only for initialization of OEFSFileSystem,OEIgnoredPaths, OEFile (oefs://...)
	- use actual URI (file:// or rse://) for all other operations (new file, copy, save, delete)
    - tested only against Windows machine & RSE connection to BuildAppliance machine
IMPORTANT: please make sure that sshd configurations on the remote machine has variable MaxSessions set to a reasonable number (more than the default 10 sessions), otherwise an "Error creating terminal" will be thrown when more channels are opened for running remote commands (ChannelSftp)

Signed-off-by: Ioana Grigoropol <ioanax.grigoropol@intel.com>
---
 .../src/org/yocto/bc/bitbake/BBRecipe.java         |    2 +-
 .../src/org/yocto/bc/bitbake/BBSession.java        |   30 +++--
 .../src/org/yocto/bc/bitbake/ShellSession.java     |   10 +-
 .../org/yocto/bc/remote/utils/CommandRunnable.java |    3 +-
 .../org/yocto/bc/remote/utils/RemoteHelper.java    |   19 ++++
 .../org/yocto/bc/remote/utils/RemoteMachine.java   |   31 +++---
 .../src/org/yocto/bc/ui/Activator.java             |   12 +-
 .../editors/bitbake/BitBakeDocumentProvider.java   |   27 +++--
 .../bc/ui/editors/bitbake/BitBakeFileEditor.java   |    2 +-
 .../bitbake/BitBakeSourceViewerConfiguration.java  |   20 +++-
 .../src/org/yocto/bc/ui/filesystem/OEFile.java     |  115 ++++----------------
 .../org/yocto/bc/ui/filesystem/YoctoLocation.java  |   36 ++++++
 .../src/org/yocto/bc/ui/model/ProjectInfo.java     |   38 ++++---
 .../src/org/yocto/bc/ui/model/YoctoHostFile.java   |   20 ++--
 .../ui/wizards/NewBitBakeFileRecipeWizardPage.java |   19 +++-
 .../importProject/ImportYoctoProjectWizard.java    |    4 +-
 .../yocto/bc/ui/wizards/install/InstallWizard.java |    4 +-
 .../yocto/bc/ui/wizards/install/OptionsPage.java   |    8 +-
 .../BBConfigurationInitializeOperation.java        |    2 +-
 .../newproject/CreateBBCProjectOperation.java      |    7 +-
 20 files changed, 233 insertions(+), 176 deletions(-)
 create mode 100755 plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/filesystem/YoctoLocation.java

diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/BBRecipe.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/BBRecipe.java
index 6d003ce..e8e8d30 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/BBRecipe.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/BBRecipe.java
@@ -23,7 +23,7 @@ public class BBRecipe extends BBSession {
 	private final URI fileURI;
 
 	public BBRecipe(BBSession session, URI filePath) throws IOException {
-		super(session.shell, session.pinfo.getURI());
+		super(session.shell, session.pinfo.getOriginalURI());
 		this.session = session;
 		this.fileURI = filePath;
 		this.parsingCmd = "DISABLE_SANITY_CHECKS=\"1\" bitbake -e -b " + filePath.getPath() + " >& " + BB_ENV_FILE;
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/BBSession.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/BBSession.java
index 9adeb3f..8a8de22 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/BBSession.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/BBSession.java
@@ -15,6 +15,8 @@ import java.io.File;
 import java.io.FileFilter;
 import java.io.FileReader;
 import java.io.IOException;
+import java.io.InputStream;
+import java.io.InputStreamReader;
 import java.net.URI;
 import java.util.ArrayList;
 import java.util.Arrays;
@@ -33,15 +35,18 @@ import org.eclipse.core.resources.IProject;
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
 import org.eclipse.ui.console.MessageConsole;
 import org.eclipse.ui.console.MessageConsoleStream;
 import org.eclipse.ui.progress.WorkbenchJob;
+import org.yocto.bc.remote.utils.RemoteHelper;
 import org.yocto.bc.ui.model.IModelElement;
 import org.yocto.bc.ui.model.ProjectInfo;
 
@@ -60,10 +65,10 @@ public class BBSession implements IBBSessionListener, IModelElement, Map {
 
 	public static final String BB_ENV_FILE = "bitbake.env";
 
-	public static final String CONF_DIR = "/conf";
+	public static final String CONF_DIR = "conf";
 	public static final String BUILDDIR_INDICATORS [] = {
-		"/local.conf",
-		"/bblayers.conf",
+		"local.conf",
+		"bblayers.conf",
 	};
 
 	protected final ProjectInfo pinfo;
@@ -81,9 +86,9 @@ public class BBSession implements IBBSessionListener, IModelElement, Map {
 	public BBSession(ShellSession ssession, URI projectRoot) throws IOException {
 		shell = ssession;
 		this.pinfo = new ProjectInfo();
-		pinfo.setLocation(projectRoot);
+		pinfo.setLocationURI(projectRoot);
 		pinfo.setInitScriptPath(ProjectInfoHelper.getInitScriptPath(projectRoot));
-		this.parsingCmd = "sh -c 'DISABLE_SANITY_CHECKS=\"1\" bitbake -e >& " + BB_ENV_FILE + "  '" ;
+		this.parsingCmd = "DISABLE_SANITY_CHECKS=\"1\" bitbake -e >& " + BB_ENV_FILE;
 	}
 
 	public BBSession(ShellSession ssession, URI projectRoot, boolean silent) throws IOException {
@@ -190,7 +195,7 @@ public class BBSession implements IBBSessionListener, IModelElement, Map {
 	}
 
 	public URI getProjInfoRoot() {
-		return pinfo.getURI();
+		return pinfo.getOriginalURI();
 	}
 
 	/**
@@ -271,7 +276,7 @@ public class BBSession implements IBBSessionListener, IModelElement, Map {
 	 */
 	public MessageConsole getConsole() {
 		if (sessionConsole == null) {
-			String cName = ProjectInfoHelper.getProjectName(pinfo.getURI()) + " Console";
+			String cName = ProjectInfoHelper.getProjectName(pinfo.getOriginalURI()) + " Console";
 			IConsoleManager conMan = ConsolePlugin.getDefault().getConsoleManager();
 			IConsole[] existing = conMan.getConsoles();
 			for (int i = 0; i < existing.length; i++)
@@ -391,10 +396,10 @@ public class BBSession implements IBBSessionListener, IModelElement, Map {
 					String result = shell.execute(parsingCmd, hasErrors);
 
 					//FIXME : wait for bitbake to finish
-
 					properties = parseBBEnvironment(result);
 
 					initialized = true;
+					//FIXME: cleanup BB env file
 				}
 			} finally {
 				//downgrade lock
@@ -453,7 +458,10 @@ public class BBSession implements IBBSessionListener, IModelElement, Map {
 	}
 
 	protected void parse(String bbOutfilePath, Map outMap) throws Exception {
-		BufferedReader reader = new BufferedReader(new FileReader(bbOutfilePath + BB_ENV_FILE));
+		IHost connection = shell.getProjectInfo().getConnection();
+		InputStream is = RemoteHelper.getRemoteInputStream(connection, bbOutfilePath, BB_ENV_FILE, new NullProgressMonitor());
+		RemoteHelper.getRemoteHostFile(connection, bbOutfilePath + BB_ENV_FILE, new NullProgressMonitor());
+		BufferedReader reader = new BufferedReader(new InputStreamReader(is));
 		String line;
 		boolean inLine = false;
 		StringBuffer sb = null;
@@ -769,4 +777,8 @@ public class BBSession implements IBBSessionListener, IModelElement, Map {
 		return (Map<String, String>) properties;
 	}
 
+	public ProjectInfo getProjectInfo() {
+		return pinfo;
+	}
+
 }
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/ShellSession.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/ShellSession.java
index ef01d96..6603bfb 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/ShellSession.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/ShellSession.java
@@ -78,6 +78,14 @@ public class ShellSession {
 //	private final Writer out;
 	private ProjectInfo projectInfo;
 
+	public ProjectInfo getProjectInfo() {
+		return projectInfo;
+	}
+
+	public void setProjectInfo(ProjectInfo projectInfo) {
+		this.projectInfo = projectInfo;
+	}
+
 	public ShellSession(ProjectInfo pInfo, int shellType, IHostFile root, String initCmd, Writer out) throws IOException {
 		this.projectInfo = pInfo;
 		this.root = root;
@@ -129,7 +137,7 @@ public class ShellSession {
 	}
 
     private String getInitCmd() {
-    	return "source " + initCmd + " " + getBuildDirAbsolutePath() + " > tempsf; rm -rf tempsf;";
+    	return "source " + initCmd + " " + getBuildDirAbsolutePath() + " > tempsf; rm -rf tempsf;" + exportCmd + ";" + exportColumnsCmd + ";" + "cd " + getBuildDirAbsolutePath()  + ";";
 	}
 
 synchronized
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/CommandRunnable.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/CommandRunnable.java
index fe8b7a7..98c3758 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/CommandRunnable.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/CommandRunnable.java
@@ -52,6 +52,7 @@ public class CommandRunnable implements Runnable{
 			}
 			StringBuffer buffer = new StringBuffer();
 			int c;
+			if (errbr != null)
 			while ((c = errbr.read()) != -1) {
 				char ch = (char) c;
 				buffer.append(ch);
@@ -66,7 +67,7 @@ public class CommandRunnable implements Runnable{
 					buffer.delete(0, buffer.length());
 				}
 			}
-
+			if (inbr != null)
 			while ((c = inbr.read()) != -1) {
 				char ch = (char) c;
 				buffer.append(ch);
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/RemoteHelper.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/RemoteHelper.java
index 1134c8e..9bce9e3 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/RemoteHelper.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/RemoteHelper.java
@@ -11,6 +11,7 @@
 package org.yocto.bc.remote.utils;
 
 import java.io.File;
+import java.io.InputStream;
 import java.net.URI;
 import java.net.URISyntaxException;
 import java.util.HashMap;
@@ -268,6 +269,24 @@ public class RemoteHelper {
 		return null;
 	}
 
+	public static InputStream getRemoteInputStream(IHost connection, String parentPath, String remoteFilePath, IProgressMonitor monitor){
+		assert(connection != null);
+		monitor.beginTask(Messages.InfoDownload, 100);
+
+		try {
+			IFileService fileService = getConnectedRemoteFileService(connection, new SubProgressMonitor(monitor, 10));
+			
+			return fileService.getInputStream(parentPath, remoteFilePath, false, monitor);
+//			IHostFile remoteFile = fileService.getFile(remotePath.removeLastSegments(1).toString(), remotePath.lastSegment(), new SubProgressMonitor(monitor, 5));
+//			return remoteFile;
+		} catch (Exception e) {
+			e.printStackTrace();
+	    }finally {
+			monitor.done();
+		}
+		return null;
+	}
+	
 	/**
 	 * Throws a core exception with an error status object built from the given
 	 * message, lower level exception, and error code.
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/RemoteMachine.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/RemoteMachine.java
index 18c41e1..ba925ca 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/RemoteMachine.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/RemoteMachine.java
@@ -1,11 +1,11 @@
 package org.yocto.bc.remote.utils;
 
 import java.io.BufferedReader;
-import java.io.InputStreamReader;
 import java.util.ArrayList;
 import java.util.HashMap;
 import java.util.List;
 import java.util.Map;
+import java.util.concurrent.locks.Lock;
 
 import org.eclipse.core.runtime.CoreException;
 import org.eclipse.core.runtime.IProgressMonitor;
@@ -18,7 +18,6 @@ import org.eclipse.rse.core.subsystems.ISubSystem;
 import org.eclipse.rse.internal.services.local.shells.LocalShellService;
 import org.eclipse.rse.services.clientserver.messages.SystemMessageException;
 import org.eclipse.rse.services.files.IFileService;
-import org.eclipse.rse.services.shells.HostShellProcessAdapter;
 import org.eclipse.rse.services.shells.IHostShell;
 import org.eclipse.rse.services.shells.IShellService;
 import org.eclipse.rse.subsystems.files.core.servicesubsystem.IFileServiceSubSystem;
@@ -43,13 +42,16 @@ public class RemoteMachine {
 	public RemoteMachine(IHost connection) {
 		setConnection(connection);
 	}
-	private ProcessStreamBuffer processOutput(Process process, IProgressMonitor monitor) throws Exception {
-		if (process == null)
+	private ProcessStreamBuffer processOutput(IHostShell shell, IProgressMonitor monitor) throws Exception {
+		if (shell == null)
 			throw new Exception("An error has occured while trying to run remote command!");
 		ProcessStreamBuffer processBuffer = new ProcessStreamBuffer();
-
-		BufferedReader inbr = new BufferedReader(new InputStreamReader(process.getInputStream()));
-		BufferedReader errbr = new BufferedReader(new InputStreamReader(process.getErrorStream()));
+		
+		Lock lock = shell.getStandardOutputReader().getReaderLock();
+		lock.lock();
+		BufferedReader inbr =  shell.getStandardOutputReader().getReader();
+		BufferedReader errbr =  shell.getStandardErrorReader().getReader();
+		
 		boolean cancel = false;
 		while (!cancel) {
 			if(monitor.isCanceled()) {
@@ -58,6 +60,7 @@ public class RemoteMachine {
 			}
 			StringBuffer buffer = new StringBuffer();
 			int c;
+			if (errbr != null)
 			while ((c = errbr.read()) != -1) {
 				char ch = (char) c;
 				buffer.append(ch);
@@ -71,7 +74,7 @@ public class RemoteMachine {
 					buffer.delete(0, buffer.length());
 				}
 			}
-
+			if (inbr != null)
 			while ((c = inbr.read()) != -1) {
 				char ch = (char) c;
 				buffer.append(ch);
@@ -120,13 +123,13 @@ public class RemoteMachine {
 
 			IShellService shellService = getShellService(new SubProgressMonitor(monitor, 7));
 
-			HostShellProcessAdapter p = null;
+//			HostShellProcessAdapter p = null;
 			ProcessStreamBuffer buffer = null;
 			try {
 				SubProgressMonitor subMonitor = new SubProgressMonitor(monitor, 3);
 				IHostShell hostShell = shellService.runCommand("", "env" + " ; echo " + RemoteHelper.TERMINATOR + "; exit;", new String[]{}, subMonitor);
-				p = new HostShellProcessAdapter(hostShell);
-				buffer = processOutput(p, subMonitor);
+//				p = new HostShellProcessAdapter(hostShell);
+				buffer = processOutput(hostShell, subMonitor);
 				for(int i = 0; i < buffer.getOutputLines().size(); i++) {
 					String out = buffer.getOutputLines().get(i);
 					String[] tokens = out.split("=");
@@ -138,9 +141,9 @@ public class RemoteMachine {
 						environment.put(varName, varValue);
 				}
 			} catch (Exception e) {
-				if (p != null) {
-					p.destroy();
-				}
+//				if (p != null) {
+//					p.destroy();
+//				}
 				e.printStackTrace();
 			}
 
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/Activator.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/Activator.java
index 188efe6..3b97526 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/Activator.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/Activator.java
@@ -61,7 +61,7 @@ public class Activator extends AbstractUIPlugin {
 		URI key = session.getProjInfoRoot();// + filePath;
 		BBRecipe recipe = (BBRecipe) bbRecipeMap.get(key);
 		if (recipe == null) {
-			recipe = new BBRecipe(session,filePath);
+			recipe = new BBRecipe(session, filePath);
 			bbRecipeMap.put(key, recipe);
 		}
 
@@ -75,7 +75,7 @@ public class Activator extends AbstractUIPlugin {
 	 * @throws IOException
 	 */
 	public static BBSession getBBSession(ProjectInfo projectInfo, Writer out, IProgressMonitor monitor) throws IOException {
-		URI projectRoot = projectInfo.getURI();
+		URI projectRoot = projectInfo.getOriginalURI();
 		if (bbSessionMap == null) {
 			bbSessionMap = new Hashtable<URI, BBSession>();
 		}
@@ -97,7 +97,7 @@ public class Activator extends AbstractUIPlugin {
 	 * @throws Exception
 	 */
 	public static BBSession getBBSession(ProjectInfo projectInfo, IProgressMonitor monitor) throws Exception {
-		URI projectRoot = projectInfo.getURI();
+		URI projectRoot = projectInfo.getOriginalURI();
 		if (bbSessionMap == null) {
 			bbSessionMap = new Hashtable<URI, BBSession>();
 		}
@@ -151,12 +151,12 @@ public class Activator extends AbstractUIPlugin {
 		if (projInfoMap == null) {
 			projInfoMap = new Hashtable<URI, ProjectInfo>();
 		}
-		location = convertOEFSUri(location);
+//		location = convertOEFSUri(location);
 		if (location != null) {
 			ProjectInfo pi = projInfoMap.get(location);
 			if (pi == null) {
 				pi = new ProjectInfo();
-				pi.setLocation(location);
+				pi.setLocationURI(location);
 				try {
 					pi.setInitScriptPath(ProjectInfoHelper.getInitScriptPath(location));
 				} catch (IOException e) {
@@ -195,7 +195,7 @@ public class Activator extends AbstractUIPlugin {
 	 * @throws IOException
 	 */
 	private static ShellSession getShellSession(ProjectInfo projInfo, Writer out, IProgressMonitor monitor) throws IOException {
-		URI absolutePath = projInfo.getURI();
+		URI absolutePath = projInfo.getOriginalURI();
 		if (shellMap == null) {
 			shellMap = new Hashtable<String, ShellSession>();
 		}
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/editors/bitbake/BitBakeDocumentProvider.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/editors/bitbake/BitBakeDocumentProvider.java
index 2d28261..d9d5754 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/editors/bitbake/BitBakeDocumentProvider.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/editors/bitbake/BitBakeDocumentProvider.java
@@ -11,6 +11,9 @@
 package org.yocto.bc.ui.editors.bitbake;
 
 import java.net.URI;
+import java.net.URISyntaxException;
+
+import javax.security.auth.login.Configuration;
 
 import org.eclipse.core.runtime.IPath;
 import org.eclipse.core.runtime.NullProgressMonitor;
@@ -43,12 +46,18 @@ public class BitBakeDocumentProvider extends FileDocumentProvider {
 	public static final String RECIPE_COMMENT= "RECIPE_COMMENT"; //$NON-NLS-1$
 	
 	private IHost connection;
+
+	private BitBakeSourceViewerConfiguration viewerConfiguration;
 	
 	private static final String[] CONTENT_TYPES= {
 			RECIPE_CODE,
 			RECIPE_COMMENT
 	};
 
+	public BitBakeDocumentProvider(BitBakeSourceViewerConfiguration viewerConfiguration) {
+		this.viewerConfiguration = viewerConfiguration;
+	}
+
 	private IDocumentPartitioner createRecipePartitioner() {
 		IPredicateRule[] rules= { new SingleLineRule("#", null, new Token(RECIPE_COMMENT), (char) 0, true, false) }; //$NON-NLS-1$
 
@@ -73,13 +82,17 @@ public class BitBakeDocumentProvider extends FileDocumentProvider {
 		if (element instanceof IFileEditorInput) {
 			IFileEditorInput input= (IFileEditorInput) element;
 
-		    URI uri = input.getFile().getLocationURI();
-			if (uri == null)
-				return true;
-
-			if (connection == null) 
-				connection = RemoteHelper.getRemoteConnectionForURI(uri, new NullProgressMonitor());
-			return !RemoteHelper.fileExistsRemote(connection, new NullProgressMonitor(), uri.getPath());
+		    URI root = viewerConfiguration.getBBSession().getProjInfoRoot();
+		    String relPath = input.getFile().getProjectRelativePath().toPortableString();
+		    try {
+				URI fileURI = new URI(root.getScheme(), root.getHost(), root.getPath() + "/" + relPath, root.getFragment());
+				if (connection == null) 
+					//connection = RemoteHelper.getRemoteConnectionForURI(fileURI, new NullProgressMonitor());
+					connection = viewerConfiguration.getBBSession().getProjectInfo().getConnection();
+				return !RemoteHelper.fileExistsRemote(connection, new NullProgressMonitor(), fileURI.getPath());
+			} catch (URISyntaxException e) {
+				e.printStackTrace();
+			}
 		}
 
 		return super.isDeleted(element);
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/editors/bitbake/BitBakeFileEditor.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/editors/bitbake/BitBakeFileEditor.java
index be856ff..b2da775 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/editors/bitbake/BitBakeFileEditor.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/editors/bitbake/BitBakeFileEditor.java
@@ -45,7 +45,7 @@ public class BitBakeFileEditor extends AbstractDecoratedTextEditor {
 		super();
 		viewerConfiguration = new BitBakeSourceViewerConfiguration(getSharedColors(), getPreferenceStore());
 		setSourceViewerConfiguration(viewerConfiguration);
-		setDocumentProvider(new BitBakeDocumentProvider());
+		setDocumentProvider(new BitBakeDocumentProvider(viewerConfiguration));
 	}
 
 	@Override
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/editors/bitbake/BitBakeSourceViewerConfiguration.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/editors/bitbake/BitBakeSourceViewerConfiguration.java
index 98768a8..06a8233 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/editors/bitbake/BitBakeSourceViewerConfiguration.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/editors/bitbake/BitBakeSourceViewerConfiguration.java
@@ -10,6 +10,9 @@
  *******************************************************************************/
 package org.yocto.bc.ui.editors.bitbake;
 
+import java.net.URI;
+import java.net.URISyntaxException;
+
 import org.eclipse.core.resources.IFile;
 import org.eclipse.jface.preference.IPreferenceStore;
 import org.eclipse.jface.text.ITextHover;
@@ -33,9 +36,9 @@ import org.eclipse.swt.SWT;
 import org.eclipse.swt.graphics.Color;
 import org.eclipse.swt.graphics.RGB;
 import org.eclipse.ui.editors.text.TextSourceViewerConfiguration;
-
 import org.yocto.bc.bitbake.BBLanguageHelper;
 import org.yocto.bc.bitbake.BBSession;
+import org.yocto.bc.bitbake.ProjectInfoHelper;
 
 public class BitBakeSourceViewerConfiguration extends TextSourceViewerConfiguration {
 
@@ -66,7 +69,15 @@ public class BitBakeSourceViewerConfiguration extends TextSourceViewerConfigurat
 	public ITextHover getTextHover(ISourceViewer sv, String contentType) {
 		//only .bb file support Text Hover.
 		if (textHover == null && targetFile.getFileExtension().equals(BBLanguageHelper.BITBAKE_RECIPE_FILE_EXTENSION)) {
-			textHover = new BBVariableTextHover(session, targetFile.getLocationURI());
+				URI root = session.getProjInfoRoot();
+				try {
+					URI targetFIleURI = new URI(root.getScheme(), root.getHost(), root.getPath() + "/" +targetFile.getProjectRelativePath().toPortableString(), root.getFragment());
+					textHover = new BBVariableTextHover(session, targetFIleURI);
+				} catch (URISyntaxException e) {
+					// TODO Auto-generated catch block
+					e.printStackTrace();
+				}
+				
 		}
 		
 		return textHover;
@@ -192,4 +203,9 @@ public class BitBakeSourceViewerConfiguration extends TextSourceViewerConfigurat
 	public void setBBSession(BBSession session) {
 		this.session = session;		
 	}
+	
+	public BBSession getBBSession() {
+		return this.session;		
+	}
+	
 }
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/filesystem/OEFile.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/filesystem/OEFile.java
index f12d6f3..7360588 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/filesystem/OEFile.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/filesystem/OEFile.java
@@ -37,6 +37,7 @@ import org.yocto.bc.bitbake.BBSession;
 import org.yocto.bc.bitbake.ProjectInfoHelper;
 import org.yocto.bc.bitbake.ShellSession;
 import org.yocto.bc.remote.utils.RemoteHelper;
+import org.yocto.bc.ui.Activator;
 import org.yocto.bc.ui.model.ProjectInfo;
 import org.yocto.bc.ui.model.YoctoHostFile;
 
@@ -58,6 +59,10 @@ public class OEFile extends FileStore {
 	 */
 	protected final String filePath;
 
+	public String getFilePath() {
+		return filePath;
+	}
+
 	private final URI root;
 
 	/**
@@ -84,17 +89,18 @@ public class OEFile extends FileStore {
 	 */
 	private boolean isPotentialBuildDir(String path) {
 		String parentPath = path.substring(0, path.lastIndexOf("/"));
+		String name = path.substring(path.lastIndexOf("/") + 1);
 		boolean ret = true;
 		try {
 			IFileService fs = file.getFileService();
-			IHostFile hostFile = fs.getFile(parentPath, path, new NullProgressMonitor());
+			IHostFile hostFile = fs.getFile(parentPath, name, new NullProgressMonitor());
 			if (!hostFile.isDirectory())
 				return false;
-			IHostFile confDir = fs.getFile(path, path + BBSession.CONF_DIR, new NullProgressMonitor());
+			IHostFile confDir = fs.getFile(path, BBSession.CONF_DIR, new NullProgressMonitor());
 			if (!confDir.exists() || !confDir.isDirectory())
 				return false;
 			for (int i = 0; i < BBSession.BUILDDIR_INDICATORS.length && ret == true; i++) {
-				IHostFile child = fs.getFile(path, path + BBSession.CONF_DIR +  BBSession.BUILDDIR_INDICATORS[i], new NullProgressMonitor());
+				IHostFile child = fs.getFile(path + "/" + BBSession.CONF_DIR, BBSession.BUILDDIR_INDICATORS[i], new NullProgressMonitor());
 				if(!child.exists() || !child.isFile()) {
 					ret = false;
 					break;
@@ -114,10 +120,11 @@ public class OEFile extends FileStore {
 		if(isPotentialBuildDir(path)) {
 			BBSession config = null;
 			try {
-				ShellSession shell = new ShellSession(file.getProjectInfo(), ShellSession.SHELL_TYPE_BASH,
-						RemoteHelper.getRemoteHostFile(file.getConnection(), root.getPath(), new NullProgressMonitor()),
-							ProjectInfoHelper.getInitScriptPath(root) + " " + path, null);
-				config = new BBSession(shell, root, true);
+//				ShellSession shell = new ShellSession(file.getProjectInfo(), ShellSession.SHELL_TYPE_BASH,
+//						RemoteHelper.getRemoteHostFile(file.getConnection(), root.getPath(), new NullProgressMonitor()),
+//							ProjectInfoHelper.getInitScriptPath(root) + " " + path, null);
+//				config = new BBSession(shell, root, true);
+				config = Activator.getBBSession(Activator.getProjInfo(root), monitor);
 				config.initialize();
 			} catch(Exception e) {
 				e.printStackTrace();
@@ -146,7 +153,7 @@ public class OEFile extends FileStore {
 		IFileStore[] wrapped = new IFileStore[children.length];
 
 		for (int i = 0; i < wrapped.length; i++) {
-			String fullPath = file.getAbsolutePath() + File.separatorChar + children[i];
+			String fullPath = file.getAbsolutePath() + "/" + children[i];
 
 			updateIgnorePaths(fullPath, ignoredPaths, monitor);
 			if (ignoredPaths.contains(fullPath)) {
@@ -164,23 +171,7 @@ public class OEFile extends FileStore {
 		if (destFileStore instanceof OEFile) {
 			file.copy(destFileStore, monitor);
 
-//			File source = file;
-//			File destination = ((OEFile) destFile).file;
-//			//handle case variants on a case-insensitive OS, or copying between
-//			//two equivalent files in an environment that supports symbolic links.
-//			//in these nothing needs to be copied (and doing so would likely lose data)
-//			try {
-//				if (source.getCanonicalFile().equals(destination.getCanonicalFile())) {
-//					//nothing to do
-//					return;
-//				}
-//			} catch (IOException e) {
-//				String message = NLS.bind(Messages.couldNotRead, source.getAbsolutePath());
-//				Policy.error(EFS.ERROR_READ, message, e);
-//			}
 		}
-		//fall through to super implementation
-//		super.copy(destFileStore, options, monitor);
 	}
 
 	@Override
@@ -372,17 +363,6 @@ public class OEFile extends FileStore {
 
 	@Override
 	public IFileStore mkdir(int options, IProgressMonitor monitor) throws CoreException {
-//		boolean shallow = (options & EFS.SHALLOW) != 0;
-//		//must be a directory
-//		if (shallow)
-//			file.mkdir();
-//		else
-//			file.mkdirs();
-//		if (!file.isDirectory()) {
-//			checkReadOnlyParent(file, null);
-//			String message = NLS.bind(Messages.failedCreateWrongType, filePath);
-//			Policy.error(EFS.ERROR_WRONG_TYPE, message);
-//		}
 		file.mkdir(options);
 		return this;
 	}
@@ -390,64 +370,6 @@ public class OEFile extends FileStore {
 	@Override
 	public void move(IFileStore destFile, int options, IProgressMonitor monitor) throws CoreException {
 		file.move(destFile, monitor);
-//		if (!(destFile instanceof OEFile)) {
-//			super.move(destFile, options, monitor);
-//			return;
-//		}
-//		File source = file;
-//		File destination = ((OEFile) destFile).file;
-//		boolean overwrite = (options & EFS.OVERWRITE) != 0;
-//		monitor = Policy.monitorFor(monitor);
-//		try {
-//			monitor.beginTask(NLS.bind(Messages.moving, source.getAbsolutePath()), 10);
-//			//this flag captures case renaming on a case-insensitive OS, or moving
-//			//two equivalent files in an environment that supports symbolic links.
-//			//in these cases we NEVER want to delete anything
-//			boolean sourceEqualsDest = false;
-//			try {
-//				sourceEqualsDest = source.getCanonicalFile().equals(destination.getCanonicalFile());
-//			} catch (IOException e) {
-//				String message = NLS.bind(Messages.couldNotMove, source.getAbsolutePath());
-//				Policy.error(EFS.ERROR_WRITE, message, e);
-//			}
-//			if (!sourceEqualsDest && !overwrite && destination.exists()) {
-//				String message = NLS.bind(Messages.fileExists, destination.getAbsolutePath());
-//				Policy.error(EFS.ERROR_EXISTS, message);
-//			}
-//			if (source.renameTo(destination)) {
-//				// double-check to ensure we really did move
-//				// since java.io.File#renameTo sometimes lies
-//				if (!sourceEqualsDest && source.exists()) {
-//					// XXX: document when this occurs
-//					if (destination.exists()) {
-//						// couldn't delete the source so remove the destination and throw an error
-//						// XXX: if we fail deleting the destination, the destination (root) may still exist
-//						new OEFile(destination, ignoredPaths, root).delete(EFS.NONE, null);
-//						String message = NLS.bind(Messages.couldnotDelete, source.getAbsolutePath());
-//						Policy.error(EFS.ERROR_DELETE, message);
-//					}
-//					// source exists but destination doesn't so try to copy below
-//				} else {
-//					if (!destination.exists()) {
-//						// neither the source nor the destination exist. this is REALLY bad
-//						String message = NLS.bind(Messages.failedMove, source.getAbsolutePath(), destination.getAbsolutePath());
-//						Policy.error(EFS.ERROR_WRITE, message);
-//					}
-//					//the move was successful
-//					monitor.worked(10);
-//					return;
-//				}
-//			}
-//			// for some reason renameTo didn't work
-//			if (sourceEqualsDest) {
-//				String message = NLS.bind(Messages.couldNotMove, source.getAbsolutePath());
-//				Policy.error(EFS.ERROR_WRITE, message, null);
-//			}
-//			// fall back to default implementation
-//			super.move(destFile, options, Policy.subMonitorFor(monitor, 10));
-//		} finally {
-//			monitor.done();
-//		}
 	}
 
 	@Override
@@ -470,9 +392,6 @@ public class OEFile extends FileStore {
 	 */
 	@Override
 	public File toLocalFile(int options, IProgressMonitor monitor) throws CoreException {
-//		if (options == EFS.CACHE)
-//			return super.toLocalFile(options, monitor);
-//		return file;
 		return file.toLocalFile();
 	}
 
@@ -495,4 +414,8 @@ public class OEFile extends FileStore {
 	public ProjectInfo getProjectInfo() {
 		return file.getProjectInfo();
 	}
+
+	public String getParentPath() {
+		return filePath.substring(0, filePath.lastIndexOf("/"));
+	}
 }
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/filesystem/YoctoLocation.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/filesystem/YoctoLocation.java
new file mode 100755
index 0000000..1e069a3
--- /dev/null
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/filesystem/YoctoLocation.java
@@ -0,0 +1,36 @@
+package org.yocto.bc.ui.filesystem;
+
+import java.net.URI;
+import java.net.URISyntaxException;
+
+public class YoctoLocation{
+	URI oefsURI;
+	URI originalURI;
+	
+	public YoctoLocation(){
+		try {
+			oefsURI = new URI("");
+			originalURI = new URI("");
+		} catch (URISyntaxException e) {
+			e.printStackTrace();
+		}
+	}
+	
+	public URI getOEFSURI() {
+		return oefsURI;
+	}
+
+	public URI getOriginalURI() {
+		return originalURI;
+	}
+
+	public void setOriginalURI(URI originalURI) {
+		this.originalURI = originalURI;
+	}
+
+	public void setOEFSURI(URI uri) {
+		this.oefsURI = uri;
+	}
+	
+	
+}
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/model/ProjectInfo.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/model/ProjectInfo.java
index 089c1ac..743a754 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/model/ProjectInfo.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/model/ProjectInfo.java
@@ -11,19 +11,21 @@
 package org.yocto.bc.ui.model;
 
 import java.net.URI;
+import java.net.URISyntaxException;
 
 import org.eclipse.core.runtime.IProgressMonitor;
 import org.eclipse.core.runtime.NullProgressMonitor;
 import org.eclipse.ptp.remote.core.IRemoteServices;
 import org.eclipse.rse.core.model.IHost;
 import org.eclipse.rse.services.files.IFileService;
+import org.yocto.bc.bitbake.ProjectInfoHelper;
 import org.yocto.bc.remote.utils.RemoteHelper;
+import org.yocto.bc.ui.filesystem.YoctoLocation;
 
 
 public class ProjectInfo implements IModelElement {
 	private String name;
-	private URI location;
-	private URI oefsLocation;
+	private YoctoLocation location;
 	private String init;
 	private IHost connection;
 	private IRemoteServices remoteServices;
@@ -37,13 +39,13 @@ public class ProjectInfo implements IModelElement {
 	public String getProjectName() {
 		return name;
 	}
-	public URI getURI() {
-		return location;
+	public URI getOriginalURI() {
+		return location.getOriginalURI();
 	}
 	@Override
 	public void initialize() throws Exception {
 		name = new String();
-		location = new URI("");
+		location = new YoctoLocation();
 		init = new String();
 	}
 
@@ -51,8 +53,20 @@ public class ProjectInfo implements IModelElement {
 		this.init = init;
 	}
 
-	public void setLocation(URI location) {
-		this.location = location;
+	public void setLocationURI(URI location) {
+		if (this.location == null)
+			this.location = new YoctoLocation();
+		this.location.setOriginalURI(location);
+		try {
+			this.location.setOEFSURI(new URI(ProjectInfoHelper.OEFS_SCHEME + location.getPath() ));
+		} catch (URISyntaxException e) {
+			try {
+				this.location.setOEFSURI(new URI(""));
+			} catch (URISyntaxException e1) {
+				e1.printStackTrace();
+			}
+			e.printStackTrace();
+		}
 	}
 
 	public void setName(String name) {
@@ -61,7 +75,7 @@ public class ProjectInfo implements IModelElement {
 
 	public IHost getConnection() {
 		if (connection == null) {
-			connection = RemoteHelper.getRemoteConnectionForURI(location, new NullProgressMonitor());
+			connection = RemoteHelper.getRemoteConnectionForURI(location.getOriginalURI(), new NullProgressMonitor());
 		}
 		return connection;
 	}
@@ -87,11 +101,7 @@ public class ProjectInfo implements IModelElement {
 		}
 	}
 
-	public URI getOefsLocation() {
-		return oefsLocation;
-	}
-
-	public void setOefsLocation(URI oefsLocation) {
-		this.oefsLocation = oefsLocation;
+	public URI getOEFSURI() {
+		return location.getOEFSURI();
 	}
 }
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/model/YoctoHostFile.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/model/YoctoHostFile.java
index ca5a960..db5b37c 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/model/YoctoHostFile.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/model/YoctoHostFile.java
@@ -21,6 +21,7 @@ import org.eclipse.rse.services.files.IFileService;
 import org.eclipse.rse.services.files.IHostFile;
 import org.yocto.bc.remote.utils.RemoteHelper;
 import org.yocto.bc.ui.filesystem.Messages;
+import org.yocto.bc.ui.filesystem.OEFile;
 import org.yocto.bc.ui.filesystem.Policy;
 
 public class YoctoHostFile implements IHostFile{
@@ -33,12 +34,8 @@ public class YoctoHostFile implements IHostFile{
 		this.projectInfo = pInfo;
 		this.fileURI = fileURI;
 		String path = fileURI.getPath();
-//		int parentEnd = path.lastIndexOf("/");
-//		String parentPath = path.substring(0, parentEnd);
-//		String fileName = path.substring(parentEnd + 1);
 		fileService = projectInfo.getFileService(monitor);
 		file = RemoteHelper.getRemoteHostFile(projectInfo.getConnection(), path, monitor);
-//		fileService.getFile(parentPath, fileName, monitor);
 	}
 
 	public YoctoHostFile(ProjectInfo projectInfo, URI uri) {
@@ -67,11 +64,11 @@ public class YoctoHostFile implements IHostFile{
 		return file.getName();
 	}
 	public URI getProjectLocationURI() {
-		return projectInfo.getURI();
+		return projectInfo.getOriginalURI();
 	}
 	public URI getLocationURI() {
-		projectInfo.getURI().getPath().indexOf(file.getAbsolutePath());
-		return projectInfo.getURI();
+		projectInfo.getOriginalURI().getPath().indexOf(file.getAbsolutePath());
+		return projectInfo.getOriginalURI();
 	}
 	@Override
 	public boolean isDirectory() {
@@ -84,7 +81,9 @@ public class YoctoHostFile implements IHostFile{
 	public boolean copy(IFileStore destFileStore, IProgressMonitor monitor) {
 		IHostFile destFile;
 		try {
-			destFile = fileService.createFile(destFileStore.getParent().toURI().getPath(), destFileStore.getName(), monitor);
+			OEFile oeFile = (OEFile)destFileStore;
+			String parentPath = oeFile.getParentPath();
+			destFile = fileService.createFile(parentPath, destFileStore.getName(), monitor);
 			fileService.copy(file.getParentPath(), file.getName(), destFile.getParentPath(), destFile.getName(), monitor);
 		} catch (SystemMessageException e) {
 			e.printStackTrace();
@@ -250,7 +249,10 @@ public class YoctoHostFile implements IHostFile{
 
 	public URI getChildURIformPath(IPath path) {
 		try {
-			return new URI(fileURI.getScheme(), fileURI.getHost(), fileService.getFile(file.getAbsolutePath(), path.toPortableString(), null).getAbsolutePath(), fileURI.getFragment());
+			String fileName =  path.lastSegment();
+			path = path.removeLastSegments(1);
+			String newPath = fileService.getFile(file.getAbsolutePath() + "/" + path.toPortableString(), fileName, null).getAbsolutePath();
+			return new URI(fileURI.getScheme(), fileURI.getHost(), newPath, fileURI.getFragment());
 		} catch (URISyntaxException e) {
 			e.printStackTrace();
 			return null;
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/NewBitBakeFileRecipeWizardPage.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/NewBitBakeFileRecipeWizardPage.java
index dd6feea..633dc89 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/NewBitBakeFileRecipeWizardPage.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/NewBitBakeFileRecipeWizardPage.java
@@ -25,6 +25,7 @@ import org.eclipse.core.resources.IContainer;
 import org.eclipse.core.resources.IProject;
 import org.eclipse.core.resources.IResource;
 import org.eclipse.core.resources.ResourcesPlugin;
+import org.eclipse.core.runtime.CoreException;
 import org.eclipse.core.runtime.IProgressMonitor;
 import org.eclipse.core.runtime.NullProgressMonitor;
 import org.eclipse.core.runtime.Path;
@@ -52,6 +53,8 @@ import org.eclipse.ui.dialogs.ContainerSelectionDialog;
 import org.yocto.bc.remote.utils.ProcessStreamBuffer;
 import org.yocto.bc.remote.utils.RemoteHelper;
 import org.yocto.bc.remote.utils.YoctoCommand;
+import org.yocto.bc.ui.Activator;
+import org.yocto.bc.ui.model.ProjectInfo;
 
 public class NewBitBakeFileRecipeWizardPage extends WizardPage {
 	private Text containerText;
@@ -246,7 +249,17 @@ public class NewBitBakeFileRecipeWizardPage extends WizardPage {
 		}
 
 		IProject project = container.getProject();
-		metaDirLoc = RemoteHelper.createNewURI(project.getLocationURI(), "meta");
+		ProjectInfo projInfo = null;
+		try {
+			projInfo = Activator.getProjInfo(project.getLocationURI());
+		} catch (InvocationTargetException e) {
+			e.printStackTrace();
+		} catch (CoreException e) {
+			e.printStackTrace();
+		} catch (InterruptedException e) {
+			e.printStackTrace();
+		}
+		metaDirLoc = RemoteHelper.createNewURI(projInfo.getOriginalURI(), "meta");
 
 		if (fileName.length() == 0) {
 			updateStatus("File name must be specified");
@@ -356,7 +369,7 @@ public class NewBitBakeFileRecipeWizardPage extends WizardPage {
 
 					updateTempFolderPath();
 					monitor.worked(10);
-
+					
 					monitor.subTask("Downloading package sources");
 
 					updateTempFolderPath();
@@ -365,7 +378,7 @@ public class NewBitBakeFileRecipeWizardPage extends WizardPage {
 					RemoteHelper.handleRunCommandRemote(connection, wgetYCmd, new SubProgressMonitor(monitor, 40));
 
 					monitor.worked(50);
-
+					
 					monitor.subTask("Compute package checksums");
 					String md5Cmd = "md5sum " + srcFileNameExt;
 					YoctoCommand md5YCmd = new YoctoCommand(md5Cmd, tempFolderPath, "");
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/importProject/ImportYoctoProjectWizard.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/importProject/ImportYoctoProjectWizard.java
index 5e37133..82c5ab3 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/importProject/ImportYoctoProjectWizard.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/importProject/ImportYoctoProjectWizard.java
@@ -67,7 +67,7 @@ public class ImportYoctoProjectWizard extends FiniteStateWizard  implements IImp
 	public boolean performFinish() {
 		ProjectInfo pinfo = new ProjectInfo();
 		pinfo.setInitScriptPath((String) projectModel.get(ImportYoctoProjectWizard.KEY_INITPATH));
-		pinfo.setLocation((URI) projectModel.get(ImportYoctoProjectWizard.KEY_LOCATION));
+		pinfo.setLocationURI((URI) projectModel.get(ImportYoctoProjectWizard.KEY_LOCATION));
 		pinfo.setName((String) projectModel.get(ImportYoctoProjectWizard.KEY_NAME));
 		
 		try {
@@ -86,7 +86,7 @@ public class ImportYoctoProjectWizard extends FiniteStateWizard  implements IImp
 		projectModel.put(ImportYoctoProjectWizard.KEY_PINFO, pinfo);
 		//setPageComplete(valid);
 		//ProjectInfo pinfo = (ProjectInfo) projectModel.get(KEY_PINFO);
-		Activator.putProjInfo(pinfo.getURI(), pinfo);
+		Activator.putProjInfo(pinfo.getOEFSURI(), pinfo);
 		try {
 			getContainer().run(false, false, new CreateBBCProjectOperation(pinfo));
 		} catch (Exception e) {
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/install/InstallWizard.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/install/InstallWizard.java
index 071f6aa..100eee3 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/install/InstallWizard.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/install/InstallWizard.java
@@ -141,7 +141,7 @@ public class InstallWizard extends FiniteStateWizard implements IWorkbenchWizard
 				String prjName = (String) options.get(PROJECT_NAME);
 				ProjectInfo pinfo = new ProjectInfo();
 				pinfo.setInitScriptPath(initPath);
-				pinfo.setLocation(uri);
+				pinfo.setLocationURI(uri);
 				pinfo.setName(prjName);
 				pinfo.setConnection(connection);
 				pinfo.setRemoteServices(remoteServices);
@@ -153,7 +153,7 @@ public class InstallWizard extends FiniteStateWizard implements IWorkbenchWizard
 				console.newMessageStream().println(cw.getContents());
 
 				model.put(InstallWizard.KEY_PINFO, pinfo);
-				Activator.putProjInfo(pinfo.getURI(), pinfo);
+				Activator.putProjInfo(pinfo.getOEFSURI(), pinfo);
 
 				container.run(false, false, new CreateBBCProjectOperation(pinfo));
 				return true;
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/install/OptionsPage.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/install/OptionsPage.java
index 486bd8b..f8ef0d2 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/install/OptionsPage.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/install/OptionsPage.java
@@ -23,6 +23,7 @@ import org.eclipse.ptp.remote.core.IRemoteServices;
 import org.eclipse.ptp.remote.core.exception.RemoteConnectionException;
 import org.eclipse.ptp.remote.rse.core.RSEConnection;
 import org.eclipse.rse.core.model.IHost;
+import org.eclipse.rse.services.files.IFileService;
 import org.eclipse.rse.services.files.IHostFile;
 import org.eclipse.swt.SWT;
 import org.eclipse.swt.layout.GridData;
@@ -169,7 +170,12 @@ public class OptionsPage extends FiniteStateWizardPage {
 				return false;
 			}
 		} else { //git clone
-			if (repoDest.exists() && repoDest.isDirectory()) {
+			if (repoDest != null && repoDest.exists() && repoDest.isDirectory()) {
+				IHostFile[] hostFiles = RemoteHelper.getRemoteDirContent(connection, repoDest.getAbsolutePath(), "", IFileService.FILE_TYPE_FILES_AND_FOLDERS, new NullProgressMonitor());
+				if (hostFiles.length != 0) {
+					setErrorMessage("Directory " + projectPath + " is not empty, please choose another location.");
+					return false;
+				}
 				IHostFile gitDescr = RemoteHelper.getRemoteHostFile(connection, projectPath + "/.git", new NullProgressMonitor());
 				if (gitDescr != null && gitDescr.exists()) {
 					setErrorMessage("Directory " + projectPath + " contains a repository, please choose another location or skip cloning the repository.");
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/newproject/BBConfigurationInitializeOperation.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/newproject/BBConfigurationInitializeOperation.java
index 942f303..5dd8944 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/newproject/BBConfigurationInitializeOperation.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/newproject/BBConfigurationInitializeOperation.java
@@ -42,7 +42,7 @@ public class BBConfigurationInitializeOperation implements IRunnableWithProgress
 		try {
 			System.out.println("Initialize bitbake session ...");
 			monitor.beginTask("Initialize bitbake session ...", RemoteHelper.TOTALWORKLOAD);
-			ProjectInfoHelper.store(RemoteHelper.getRemoteConnectionByName(pinfo.getConnection().getName()), pinfo.getURI(), pinfo, monitor);
+			ProjectInfoHelper.store(RemoteHelper.getRemoteConnectionByName(pinfo.getConnection().getName()), pinfo.getOriginalURI(), pinfo, monitor);
 			session = Activator.getBBSession(pinfo, writer, monitor);
 			session.initialize();
 			monitor.worked(90);
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/newproject/CreateBBCProjectOperation.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/newproject/CreateBBCProjectOperation.java
index 5ba661c..338c2e6 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/newproject/CreateBBCProjectOperation.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/newproject/CreateBBCProjectOperation.java
@@ -67,12 +67,7 @@ public class CreateBBCProjectOperation extends WorkspaceModifyOperation {
 	private IProjectDescription createProjectDescription(IWorkspace workspace, ProjectInfo projInfo) throws CoreException {
 		IProjectDescription desc = workspace.newProjectDescription(projInfo.getProjectName());
 
-//		desc.setLocationURI(projInfo.getURI());
-		try {
-			desc.setLocationURI(new URI(ProjectInfoHelper.OEFS_SCHEME + projInfo.getURI().getPath()));
-		} catch (URISyntaxException e) {
-			throw new CoreException(new Status(IStatus.ERROR, Activator.PLUGIN_ID, "Unable to load filesystem.", e));
-		}
+		desc.setLocationURI(projInfo.getOEFSURI());
 		return desc;
 	}
 
-- 
1.7.9.5


