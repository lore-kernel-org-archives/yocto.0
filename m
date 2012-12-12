Return-Path: <ioanax.grigoropol@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7F42BE00770
	for <yocto@yoctoproject.org>; Wed, 12 Dec 2012 03:57:07 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 12 Dec 2012 03:57:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,266,1355126400"; d="scan'208";a="232744027"
Received: from ideapad (HELO localhost.localdomain) ([10.237.105.148])
	by orsmga001.jf.intel.com with ESMTP; 12 Dec 2012 03:57:05 -0800
From: Ioana Grigoropol <ioanax.grigoropol@intel.com>
To: yocto@yoctoproject.org
Date: Wed, 12 Dec 2012 13:46:52 +0200
Message-Id: <1355312812-9173-1-git-send-email-ioanax.grigoropol@intel.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [PATCH] [eclipse-poky][branch: windows-build] Performance fix for New Bitbake project
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
X-List-Received-Date: Wed, 12 Dec 2012 11:57:07 -0000

- after creating the project, the wizard should not block waiting for the environment to be populated and instead should be ran in the background

Signed-off-by: Ioana Grigoropol <ioanax.grigoropol@intel.com>
---
 .../src/org/yocto/bc/bitbake/BBSession.java        |   81 ++++++++++++--------
 .../src/org/yocto/bc/bitbake/ShellSession.java     |    7 +-
 .../org/yocto/bc/remote/utils/RemoteHelper.java    |    3 +-
 .../remote/utils/YoctoHostShellProcessAdapter.java |   16 +++-
 .../yocto/bc/ui/wizards/FiniteStateWizardPage.java |   54 +++++++------
 .../bc/ui/wizards/NewBitBakeFileRecipeWizard.java  |   58 +++++++-------
 .../yocto/bc/ui/wizards/install/InstallWizard.java |   63 +++++++++------
 .../yocto/bc/ui/wizards/install/OptionsPage.java   |    9 ++-
 8 files changed, 173 insertions(+), 118 deletions(-)

diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/BBSession.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/BBSession.java
index 3aa4efe..a5bf1ca 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/BBSession.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/BBSession.java
@@ -13,8 +13,8 @@ package org.yocto.bc.bitbake;
 import java.io.BufferedReader;
 import java.io.File;
 import java.io.FileFilter;
+import java.io.FileReader;
 import java.io.IOException;
-import java.io.StringReader;
 import java.net.URI;
 import java.util.ArrayList;
 import java.util.Arrays;
@@ -48,7 +48,7 @@ import org.yocto.bc.ui.model.ProjectInfo;
 /**
  * BBSession encapsulates a global bitbake configuration and is the primary interface
  * for actions against a BitBake installation.
- * 
+ *
  * @author kgilmer
  *
  */
@@ -57,7 +57,9 @@ public class BBSession implements IBBSessionListener, IModelElement, Map {
 	public static final int TYPE_UNKNOWN = 2;
 	public static final int TYPE_STATEMENT = 3;
 	public static final int TYPE_FLAG = 4;
-	
+
+	public static final String BB_ENV_FILE = "bitbake.env";
+
 	public static final String BUILDDIR_INDICATORS [] = {
 		"/conf/local.conf",
 		"/conf/bblayers.conf",
@@ -74,20 +76,20 @@ public class BBSession implements IBBSessionListener, IModelElement, Map {
 	private final Lock wlock = rwlock.writeLock();
 	protected String parsingCmd;
 	private boolean silent = false;
-	
+
 	public BBSession(ShellSession ssession, URI projectRoot) throws IOException {
 		shell = ssession;
 		this.pinfo = new ProjectInfo();
 		pinfo.setLocation(projectRoot);
 		pinfo.setInitScriptPath(ProjectInfoHelper.getInitScriptPath(projectRoot));
-		this.parsingCmd = "DISABLE_SANITY_CHECKS=\"1\" bitbake -e";
+		this.parsingCmd = "sh -c 'DISABLE_SANITY_CHECKS=\"1\" bitbake -e >& " + BB_ENV_FILE + "  '" ;
 	}
 
 	public BBSession(ShellSession ssession, URI projectRoot, boolean silent) throws IOException {
 		this(ssession, projectRoot);
 		this.silent = silent;
 	}
-	
+
 	private Collection adapttoIPath(List<File> asList, IProject project) {
 
 		List pathList = new ArrayList();
@@ -102,7 +104,7 @@ public class BBSession implements IBBSessionListener, IModelElement, Map {
 
 		return pathList;
 	}
-	
+
 	private String appendAll(String[] elems, int st) {
 		StringBuffer sb = new StringBuffer();
 
@@ -112,7 +114,7 @@ public class BBSession implements IBBSessionListener, IModelElement, Map {
 
 		return sb.toString();
 	}
-	
+
 	private int charCount(String trimmed, char c) {
 		int i = 0;
 		int p = 0;
@@ -124,11 +126,13 @@ public class BBSession implements IBBSessionListener, IModelElement, Map {
 
 		return i;
 	}
-	
+
+	@Override
 	public void clear() {
 		throw new RuntimeException("BB configuration is read-only.");
 	}
 
+	@Override
 	public boolean containsKey(Object arg0) {
 		try {
 			checkValidAndLock(true);
@@ -141,6 +145,7 @@ public class BBSession implements IBBSessionListener, IModelElement, Map {
 		}
 	}
 
+	@Override
 	public boolean containsValue(Object arg0) {
 		try {
 			checkValidAndLock(true);
@@ -153,6 +158,7 @@ public class BBSession implements IBBSessionListener, IModelElement, Map {
 		}
 	}
 
+	@Override
 	public Set entrySet() {
 		try {
 			checkValidAndLock(true);
@@ -188,7 +194,7 @@ public class BBSession implements IBBSessionListener, IModelElement, Map {
 
 	/**
 	 * Recursively generate list of Recipe files from a root directory.
-	 * 
+	 *
 	 * @param rootDir
 	 * @param recipes
 	 * @param fileExtension
@@ -197,6 +203,7 @@ public class BBSession implements IBBSessionListener, IModelElement, Map {
 	private void findRecipes(File rootDir, List recipes, final String fileExtension, IProject project) {
 		File[] children = rootDir.listFiles(new FileFilter() {
 
+			@Override
 			public boolean accept(File pathname) {
 				return pathname.isFile() && pathname.getName().endsWith(fileExtension);
 			}
@@ -209,6 +216,7 @@ public class BBSession implements IBBSessionListener, IModelElement, Map {
 
 		File[] childDirs = rootDir.listFiles(new FileFilter() {
 
+			@Override
 			public boolean accept(File pathname) {
 				return pathname.isDirectory();
 			}
@@ -240,6 +248,7 @@ public class BBSession implements IBBSessionListener, IModelElement, Map {
 		return recipes;
 	}
 
+	@Override
 	public Object get(Object arg0) {
 		try {
 			checkValidAndLock(true);
@@ -274,9 +283,9 @@ public class BBSession implements IBBSessionListener, IModelElement, Map {
 				conMan.addConsoles(new IConsole[] { sessionConsole });
 			}
 		}
-		
+
 		ConsolePlugin.getDefault().getConsoleManager().showConsoleView(sessionConsole);
-		
+
 		return sessionConsole;
 	}
 
@@ -348,6 +357,7 @@ public class BBSession implements IBBSessionListener, IModelElement, Map {
 		if(clear)
 			console.clearConsole();
 		new WorkbenchJob("Display parsing result") {
+			@Override
 			public IStatus runInUIThread(IProgressMonitor monitor) {
 				if(code != 0) {
 					info.setColor(JFaceResources.getColorRegistry().get(JFacePreferences.ERROR_COLOR));
@@ -378,11 +388,11 @@ public class BBSession implements IBBSessionListener, IModelElement, Map {
 				if(!initialized) { //recheck
 					boolean hasErrors = false;
 					String result = shell.execute(parsingCmd, hasErrors);
-					if(!hasErrors) {
-						properties = parseBBEnvironment(result);
-					} else {
-						properties = parseBBEnvironment("");
-					}
+
+					//FIXME : wait for bitbake to finish
+
+					properties = parseBBEnvironment(result);
+
 					initialized = true;
 				}
 			} finally {
@@ -396,6 +406,7 @@ public class BBSession implements IBBSessionListener, IModelElement, Map {
 		//not release lock
 	}
 
+	@Override
 	public void initialize() throws Exception {
 		try {
 			checkValidAndLock(false);
@@ -414,6 +425,7 @@ public class BBSession implements IBBSessionListener, IModelElement, Map {
 		// return trimmed.indexOf('{') > -1 && trimmed.indexOf('}') == -1;
 	}
 
+	@Override
 	public boolean isEmpty() {
 		try {
 			checkValidAndLock(true);
@@ -425,7 +437,8 @@ public class BBSession implements IBBSessionListener, IModelElement, Map {
 			rlock.unlock();
 		}
 	}
-	
+
+	@Override
 	public Set keySet() {
 		try {
 			checkValidAndLock(true);
@@ -438,10 +451,8 @@ public class BBSession implements IBBSessionListener, IModelElement, Map {
 		}
 	}
 
-	protected void parse(String content, Map outMap) throws Exception {
-		if (content == null)
-			return;	
-		BufferedReader reader = new BufferedReader(new StringReader(content));
+	protected void parse(String bbOutfilePath, Map outMap) throws Exception {
+		BufferedReader reader = new BufferedReader(new FileReader(bbOutfilePath + BB_ENV_FILE));
 		String line;
 		boolean inLine = false;
 		StringBuffer sb = null;
@@ -484,7 +495,7 @@ public class BBSession implements IBBSessionListener, IModelElement, Map {
 			parseLine(line, outMap);
 		}
 	}
-	
+
 	private void parseAdditiveAssignment(String line, String operator, Map mo) throws Exception {
 		String[] elems = splitAssignment(line, "\\+=");
 
@@ -507,18 +518,18 @@ public class BBSession implements IBBSessionListener, IModelElement, Map {
 	protected URI getDefaultDepends() {
 		return null;
 	}
-	
-	protected Map parseBBEnvironment(String bbOut) throws Exception {
+
+	protected Map parseBBEnvironment(String bbOutFilePath) throws Exception {
 		Map env = new Hashtable();
 		this.depends = new ArrayList<URI>();
 
-		parse(bbOut, env);
+		parse(bbOutFilePath, env);
 
 		String included = (String) env.get("BBINCLUDED");
 		if(getDefaultDepends() != null) {
 			this.depends.add(getDefaultDepends());
-		} 
-		
+		}
+
 		if(included != null) {
 			String[] includedSplitted = included.split(" ");
 			for (String incl : includedSplitted){
@@ -531,13 +542,13 @@ public class BBSession implements IBBSessionListener, IModelElement, Map {
 
 		return env;
 	}
-	
+
 
 	private List parseBBFiles(String bbfiles) {
 		return Arrays.asList(bbfiles.split(" "));
 	}
-	
-	//Map delegate methods 
+
+	//Map delegate methods
 
 	private void parseConditionalAssignment(String line, Map mo) throws Exception {
 		String[] elems = splitAssignment(line, "\\?=");
@@ -611,14 +622,17 @@ public class BBSession implements IBBSessionListener, IModelElement, Map {
 		return l;
 	}
 
+	@Override
 	public Object put(Object arg0, Object arg1) {
 		throw new RuntimeException("BB configuration is read-only.");
 	}
 
+	@Override
 	public void putAll(Map arg0) {
 		throw new RuntimeException("BB configuration is read-only.");
 	}
 
+	@Override
 	public Object remove(Object arg0) {
 		throw new RuntimeException("BB configuration is read-only.");
 	}
@@ -637,6 +651,7 @@ public class BBSession implements IBBSessionListener, IModelElement, Map {
 		return line;
 	}
 
+	@Override
 	public int size() {
 		try {
 			checkValidAndLock(true);
@@ -686,7 +701,7 @@ public class BBSession implements IBBSessionListener, IModelElement, Map {
 
 	/**
 	 * Return a string with variable substitutions in place.
-	 * 
+	 *
 	 * @param expression
 	 * @return Input string with any substitutions from this file.
 	 */
@@ -710,6 +725,7 @@ public class BBSession implements IBBSessionListener, IModelElement, Map {
 		return expression;
 	}
 
+	@Override
 	public Collection values() {
 		try {
 			checkValidAndLock(true);
@@ -722,6 +738,7 @@ public class BBSession implements IBBSessionListener, IModelElement, Map {
 		}
 	}
 
+	@Override
 	public void changeNotified(IResource[] added, IResource[] removed, IResource[] changed) {
 		wlock.lock();
 		try {
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/ShellSession.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/ShellSession.java
index c127c25..c27edac 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/ShellSession.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/ShellSession.java
@@ -20,7 +20,6 @@ import java.io.Writer;
 
 import org.eclipse.core.runtime.IProgressMonitor;
 import org.eclipse.core.runtime.NullProgressMonitor;
-import org.eclipse.rse.core.model.IHost;
 import org.eclipse.rse.services.files.IHostFile;
 import org.yocto.bc.remote.utils.RemoteHelper;
 import org.yocto.bc.remote.utils.YoctoCommand;
@@ -103,9 +102,9 @@ public class ShellSession {
 
 		try {
 			if (projectInfo.getConnection() != null) {
-				IHost connection = RemoteHelper.getRemoteConnectionByName(projectInfo.getConnection().getName());
-				hasErrors = RemoteHelper.runCommandRemote(connection, new YoctoCommand(command, root.getAbsolutePath() + "/build/", ""));
-				return RemoteHelper.getProcessBuffer(connection).getMergedOutputLines();
+				hasErrors = RemoteHelper.runCommandRemote(projectInfo.getConnection(), new YoctoCommand(command, root.getAbsolutePath() + "/build/", ""));
+//				return RemoteHelper.getProcessBuffer(projectInfo.getConnection()).getMergedOutputLines();
+				return root.getAbsolutePath() + "/build/";
 			}
 			return null;
 		} catch (Exception e) {
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/RemoteHelper.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/RemoteHelper.java
index c230fd6..2798d6e 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/RemoteHelper.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/RemoteHelper.java
@@ -267,7 +267,6 @@ public class RemoteHelper {
 					getHostShell(connection).writeToShell(fullRemoteCommand);
 					while (!adapter.isFinished())
 						Thread.sleep(2);
-//					return hostShellProcessAdapter.hasErrors();
 				} catch (Exception e) {
 					e.printStackTrace();
 				}
@@ -276,7 +275,7 @@ public class RemoteHelper {
 		return true;
 	}
 
-	public static void runBatchRemote(IHost connection, List<YoctoCommand> cmds, boolean waitForOutput) throws CoreException {
+	public static void runBatchRemote(IHost connection, List<YoctoCommand> cmds, boolean displayOutput) throws CoreException {
 		try {
 			String remoteCommand = "";
 			for (YoctoCommand cmd : cmds) {
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/YoctoHostShellProcessAdapter.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/YoctoHostShellProcessAdapter.java
index bb137b1..2072102 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/YoctoHostShellProcessAdapter.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/YoctoHostShellProcessAdapter.java
@@ -138,9 +138,10 @@ public class YoctoHostShellProcessAdapter extends  HostShellProcessAdapter {
 				if (value.isEmpty()) {
 					continue;
 				}
-				System.out.println(value);
+//				System.out.println(value);
 				this.processStreamBuffer.addErrorLine(value);
-				this.commandResponseHandler.response(value, false);
+				if (this.commandResponseHandler != null)
+					this.commandResponseHandler.response(value, false);
 			}
 		} else {
 			for (IHostOutput line : lines) {
@@ -156,7 +157,8 @@ public class YoctoHostShellProcessAdapter extends  HostShellProcessAdapter {
 				reportProgress(value);
 				System.out.println(value);
 				this.processStreamBuffer.addOutputLine(value);
-				this.commandResponseHandler.response(value, false);
+				if (this.commandResponseHandler != null)
+					this.commandResponseHandler.response(value, false);
 			}
 		}
 
@@ -185,4 +187,12 @@ public class YoctoHostShellProcessAdapter extends  HostShellProcessAdapter {
 		return new NullProgressMonitor();
 	}
 
+	public CommandResponseHandler getCommandResponseHandler() {
+		return commandResponseHandler;
+	}
+
+	public void setCommandResponseHandler(CommandResponseHandler commandResponseHandler) {
+		this.commandResponseHandler = commandResponseHandler;
+	}
+
 }
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/FiniteStateWizardPage.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/FiniteStateWizardPage.java
index 2ef150a..ef795ff 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/FiniteStateWizardPage.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/FiniteStateWizardPage.java
@@ -29,21 +29,22 @@ public abstract class FiniteStateWizardPage extends WizardPage {
 
     /*
      * (non-Javadoc)
-     * 
+     *
      * @see org.eclipse.jface.dialogs.IDialogPage#createControl(org.eclipse.swt.widgets.Composite)
      */
-    public abstract void createControl(Composite parent);
+    @Override
+	public abstract void createControl(Composite parent);
 
     protected void setModelWizard() {
         if (wizard == null) {
             wizard = (FiniteStateWizard)FiniteStateWizardPage.this.getWizard();
         }
     }
-    
+
     /**
      * Add page validation logic here. Returning <code>true</code> means that
      * the page is complete and the user can go to the next page.
-     * 
+     *
      * @return
      */
     protected abstract boolean validatePage();
@@ -63,28 +64,29 @@ public abstract class FiniteStateWizardPage extends WizardPage {
     protected boolean hasContents(String value) {
         if (value == null || value.length() == 0) {
             return false;
-        } 
-        
+        }
+
         return true;
     }
-    
+
     /**
      * This method is called right before a page is displayed.
      * This occurs on user action (Next/Back buttons).
      */
     public abstract void pageDisplay();
-    
+
 	/**
 	 * This method is called on the concrete WizardPage after the user has
 	 * gone to the page after.
 	 */
 	public abstract void pageCleanup();
-	
+
 	/* (non-Javadoc)
 	 * @see org.eclipse.jface.dialogs.IDialogPage#setVisible(boolean)
 	 */
+	@Override
 	public void setVisible(boolean arg0) {
-	    
+
 		if (!arg0 && previousState) {
 			pageCleanup();
 		} else if (arg0 && !previousState) {
@@ -92,59 +94,63 @@ public abstract class FiniteStateWizardPage extends WizardPage {
 		} else if (arg0 && previousState) {
 			pageDisplay();
 		}
-		
+
 		previousState = arg0;
-		
+
 		super.setVisible(arg0);
 	}
-	
+
     public class ValidationListener implements SelectionListener, ModifyListener, Listener, ISelectionChangedListener, FocusListener {
 
         /*
          * (non-Javadoc)
-         * 
+         *
          * @see org.eclipse.swt.events.SelectionListener#widgetSelected(org.eclipse.swt.events.SelectionEvent)
          */
-        public void widgetSelected(SelectionEvent e) {
+        @Override
+		public void widgetSelected(SelectionEvent e) {
             validate();
         }
 
         /*
          * (non-Javadoc)
-         * 
+         *
          * @see org.eclipse.swt.events.SelectionListener#widgetDefaultSelected(org.eclipse.swt.events.SelectionEvent)
          */
-        public void widgetDefaultSelected(SelectionEvent e) {
+        @Override
+		public void widgetDefaultSelected(SelectionEvent e) {
         }
 
         /*
          * (non-Javadoc)
-         * 
+         *
          * @see org.eclipse.swt.events.ModifyListener#modifyText(org.eclipse.swt.events.ModifyEvent)
          */
-        public void modifyText(ModifyEvent e) {
+        @Override
+		public void modifyText(ModifyEvent e) {
             validate();
         }
 
-        public void validate() {                       
+        public void validate() {
             if (validatePage()) {
                 updateModel();
                 setPageComplete(true);
                 return;
             }
-
             setPageComplete(false);
         }
 
         /* (non-Javadoc)
          * @see org.eclipse.swt.widgets.Listener#handleEvent(org.eclipse.swt.widgets.Event)
          */
-        public void handleEvent(Event event) {
-            
+        @Override
+		public void handleEvent(Event event) {
+
             validate();
         }
 
-        public void selectionChanged(SelectionChangedEvent event) {
+        @Override
+		public void selectionChanged(SelectionChangedEvent event) {
             validate();
         }
 
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/NewBitBakeFileRecipeWizard.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/NewBitBakeFileRecipeWizard.java
index 8457996..7345b77 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/NewBitBakeFileRecipeWizard.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/NewBitBakeFileRecipeWizard.java
@@ -26,7 +26,6 @@ import org.eclipse.core.resources.ResourcesPlugin;
 import org.eclipse.core.runtime.CoreException;
 import org.eclipse.core.runtime.IProgressMonitor;
 import org.eclipse.core.runtime.IStatus;
-import org.eclipse.core.runtime.NullProgressMonitor;
 import org.eclipse.core.runtime.Path;
 import org.eclipse.core.runtime.Status;
 import org.eclipse.jface.dialogs.MessageDialog;
@@ -51,12 +50,12 @@ public class NewBitBakeFileRecipeWizard extends Wizard implements INewWizard {
 	private NewBitBakeFileRecipeWizardPage page;
 	private ISelection selection;
 	private IHost connection;
-	
+
 	public NewBitBakeFileRecipeWizard() {
 		super();
 		setNeedsProgressMonitor(true);
 	}
- 
+
 	@Override
 	public void addPages() {
 		page = new NewBitBakeFileRecipeWizardPage(selection, connection);
@@ -72,12 +71,12 @@ public class NewBitBakeFileRecipeWizard extends Wizard implements INewWizard {
 			throwCoreException("Container \"" + element.getContainer() + "\" does not exist.");
 		}
 		IContainer container = (IContainer) resource;
-		
+
 		// If the extension wasn't specified, assume .bb
 		if (!fileName.endsWith(".bb") && !fileName.endsWith(".inc") && !fileName.endsWith(".conf")) {
 			fileName = fileName + ".bb";
 		}
-		
+
 		final IFile file = container.getFile(new Path(fileName));
 		try {
 			InputStream stream = openContentStream(element);
@@ -92,6 +91,7 @@ public class NewBitBakeFileRecipeWizard extends Wizard implements INewWizard {
 		monitor.worked(1);
 		monitor.setTaskName("Opening file for editing...");
 		getShell().getDisplay().asyncExec(new Runnable() {
+			@Override
 			public void run() {
 				IWorkbenchPage page = PlatformUI.getWorkbench().getActiveWorkbenchWindow().getActivePage();
 				try {
@@ -106,14 +106,15 @@ public class NewBitBakeFileRecipeWizard extends Wizard implements INewWizard {
 	/**
 	 * We will accept the selection in the workbench to see if we can initialize
 	 * from it.
-	 * 
+	 *
 	 * @see IWorkbenchWizard#init(IWorkbench, IStructuredSelection)
 	 */
+	@Override
 	public void init(IWorkbench workbench, IStructuredSelection selection) {
 		this.selection = selection;
 		if (selection instanceof IStructuredSelection) {
-			Object element = ((IStructuredSelection)selection).getFirstElement();
-			
+			Object element = selection.getFirstElement();
+
 			if (element instanceof IResource) {
 				IProject p = ((IResource)element).getProject();
 				try {
@@ -126,28 +127,28 @@ public class NewBitBakeFileRecipeWizard extends Wizard implements INewWizard {
 				} catch (InterruptedException e) {
 					e.printStackTrace();
 				}
-				
+
 			}
 		}
 	}
 
 	/**
 	 * We will initialize file contents with a sample text.
-	 * @param srcuri 
-	 * @param author 
-	 * @param homepage 
-	 * @param license 
-	 * @param description 
-	 * @param fileName 
-	 * @param newPage 
+	 * @param srcuri
+	 * @param author
+	 * @param homepage
+	 * @param license
+	 * @param description
+	 * @param fileName
+	 * @param newPage
 	 */
 
 	private InputStream openContentStream(BitbakeRecipeUIElement element) {
-		
+
 		StringBuffer sb = new StringBuffer();
-		
+
 		sb.append("DESCRIPTION = \"" + element.getDescription() + "\"\n");
-		
+
 		if (element.getAuthor().length() > 0) {
 			sb.append("AUTHOR = \"" + element.getAuthor() + "\"\n");
 		}
@@ -155,11 +156,11 @@ public class NewBitBakeFileRecipeWizard extends Wizard implements INewWizard {
 		if (element.getHomePage().length() > 0) {
 			sb.append("HOMEPAGE = \"" + element.getHomePage() + "\"\n");
 		}
-		
+
 		if (element.getSection().length() > 0) {
 			sb.append("SECTION = \"" + element.getSection() + "\"\n");
 		}
-		
+
 		if (element.getLicense().length() > 0) {
 			sb.append("LICENSE = \"" + element.getLicense() + "\"\n");
 		}
@@ -167,26 +168,26 @@ public class NewBitBakeFileRecipeWizard extends Wizard implements INewWizard {
 		if (element.getChecksum().length() > 0) {
 			sb.append("LIC_FILES_CHKSUM = \"" + element.getChecksum() + "\"\n");
 		}
-		
+
 		if (element.getSrcuri().length() > 0) {
 			sb.append("SRC_URI = \"" + element.getSrcuri() + "\"\n");
 		}
-		
+
 		if (element.getMd5sum().length() > 0) {
 			sb.append("SRC_URI[md5sum] = \"" + element.getMd5sum() + "\"\n");
 		}
-	
+
 		if (element.getsha256sum().length() > 0) {
 			sb.append("SRC_URI[sha256sum] = \"" + element.getsha256sum() + "\"\n");
 		}
-		
+
 		ArrayList<String> inheritance = element.getInheritance();
 		if (!inheritance.isEmpty()) {
 			Object ia[] = inheritance.toArray();
 			String inheritance_str = "inherit ";
 			for(int i=0; i<ia.length; i++)
 				inheritance_str += ((String) ia[i]) + " ";
-			sb.append(inheritance_str); 
+			sb.append(inheritance_str);
 		}
 		sb.append("\n");
 
@@ -195,10 +196,11 @@ public class NewBitBakeFileRecipeWizard extends Wizard implements INewWizard {
 
 	@Override
 	public boolean performFinish() {
-		
+
 		final BitbakeRecipeUIElement element = page.populateUIElement();
-		
+
 		IRunnableWithProgress op = new IRunnableWithProgress() {
+			@Override
 			public void run(IProgressMonitor monitor) throws InvocationTargetException {
 				try {
 					doFinish(element, monitor);
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/install/InstallWizard.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/install/InstallWizard.java
index 77f4d2c..4fbaca3 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/install/InstallWizard.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/install/InstallWizard.java
@@ -6,6 +6,7 @@ import java.util.Hashtable;
 import java.util.Map;
 
 import org.eclipse.core.runtime.IStatus;
+import org.eclipse.core.runtime.NullProgressMonitor;
 import org.eclipse.core.runtime.Status;
 import org.eclipse.jface.viewers.IStructuredSelection;
 import org.eclipse.jface.wizard.IWizardContainer;
@@ -28,13 +29,13 @@ import org.yocto.bc.ui.wizards.newproject.CreateBBCProjectOperation;
 
 /**
  * A wizard for installing a fresh copy of an OE system.
- * 
+ *
  * @author kgilmer
- * 
+ *
  * A Wizard for creating a fresh Yocto bitbake project and new poky build tree from git
- * 
+ *
  * @modified jzhang
- * 
+ *
  */
 public class InstallWizard extends FiniteStateWizard implements IWorkbenchWizard {
 
@@ -43,14 +44,14 @@ public class InstallWizard extends FiniteStateWizard implements IWorkbenchWizard
 	protected static final String INSTALL_SCRIPT = "INSTALL_SCRIPT";
 	protected static final String INSTALL_DIRECTORY = "Install Directory";
 	protected static final String INIT_SCRIPT = "Init Script";
-	
+
 	protected static final String SELECTED_CONNECTION = "SEL_CONNECTION";
 	protected static final String SELECTED_REMOTE_SERVICE = "SEL_REMOTE_SERVICE";
 
 	protected static final String PROJECT_NAME = "Project Name";
 	protected static final String DEFAULT_INIT_SCRIPT = "oe-init-build-env";
 	protected static final String DEFAULT_INSTALL_DIR = "~/yocto";
-	
+
 	protected static final String GIT_CLONE = "Git Clone";
 	public static final String VALIDATION_FILE = DEFAULT_INIT_SCRIPT;
 
@@ -61,12 +62,11 @@ public class InstallWizard extends FiniteStateWizard implements IWorkbenchWizard
 		this.model = new Hashtable<String, Object>();
 		model.put(INSTALL_DIRECTORY, DEFAULT_INSTALL_DIR);
 		model.put(INIT_SCRIPT, DEFAULT_INIT_SCRIPT);
-		
+
 		setWindowTitle("Yocto Project BitBake Commander");
 		setNeedsProgressMonitor(true);
-		
-	}
 
+	}
 
 	public InstallWizard(IStructuredSelection selection) {
 		model = new Hashtable<String, Object>();
@@ -77,13 +77,13 @@ public class InstallWizard extends FiniteStateWizard implements IWorkbenchWizard
 	 * instanceof WelcomePage) { if (model.containsKey(WelcomePage.ACTION_USE))
 	 * { return bbcProjectPage; } } else if (page instanceof ProgressPage) {
 	 * return bitbakePage; }
-	 * 
+	 *
 	 * if (super.getNextPage(page) != null) { System.out.println("next page: " +
 	 * super.getNextPage(page).getClass().getName()); } else {
 	 * System.out.println("end page"); }
-	 * 
+	 *
 	 * return super.getNextPage(page); }
-	 * 
+	 *
 	 * @Override public boolean canFinish() { System.out.println("can finish: "
 	 * + super.canFinish()); return super.canFinish(); }
 	 */
@@ -102,7 +102,7 @@ public class InstallWizard extends FiniteStateWizard implements IWorkbenchWizard
 		WizardPage page = (WizardPage) getPage("Options");
 		page.setPageComplete(true);
 		Map<String, Object> options = model;
-		
+
 		try {
 			URI uri = new URI("");
 			if (options.containsKey(INSTALL_DIRECTORY)) {
@@ -110,20 +110,20 @@ public class InstallWizard extends FiniteStateWizard implements IWorkbenchWizard
 			}
 			IRemoteConnection remoteConnection = ((IRemoteConnection)model.get(InstallWizard.SELECTED_CONNECTION));
 			IRemoteServices remoteServices = ((IRemoteServices)model.get(InstallWizard.SELECTED_REMOTE_SERVICE));
-			IHost connection = RemoteHelper.getRemoteConnectionByName(remoteConnection.getName());
-			CommandResponseHandler cmdHandler = RemoteHelper.getCommandHandler(connection);
-				
+			final IHost connection = RemoteHelper.getRemoteConnectionByName(remoteConnection.getName());
+			final CommandResponseHandler cmdHandler = RemoteHelper.getCommandHandler(connection);
+			final YoctoRunnableWithProgress adapter = (YoctoRunnableWithProgress)RemoteHelper.getHostShellProcessAdapter(connection);
+			final IWizardContainer container = this.getContainer();
 			if (((Boolean)options.get(GIT_CLONE)).booleanValue()) {
 				String cmd = "/usr/bin/git clone --progress";
 				String args = "git://git.yoctoproject.org/poky.git " + uri.getPath();
 				String taskName = "Checking out Yocto git repository";
-				YoctoRunnableWithProgress adapter = (YoctoRunnableWithProgress)RemoteHelper.getHostShellProcessAdapter(connection);
+
 				adapter.setRemoteConnection(remoteConnection);
 				adapter.setRemoteServices(remoteServices);
 				adapter.setTaskName(taskName);
 				adapter.setCmd(cmd);
 				adapter.setArgs(args);
-				IWizardContainer container = this.getContainer();
 				try {
 					container.run(true, true, adapter);
 				} catch (InvocationTargetException e) {
@@ -146,19 +146,35 @@ public class InstallWizard extends FiniteStateWizard implements IWorkbenchWizard
 				pinfo.setName(prjName);
 				pinfo.setConnection(connection);
 				pinfo.setRemoteServices(remoteServices);
-			
-				ConsoleWriter cw = new ConsoleWriter();
-				this.getContainer().run(true, true, new BBConfigurationInitializeOperation(pinfo, cw));
+
+				final ConsoleWriter cw = new ConsoleWriter();
+				final ProjectInfo pInfoFinal = pinfo;
+
+				Thread t = new Thread(new Runnable() {
+
+					@Override
+					public void run() {
+						try {
+							Thread.sleep(2000);
+							new BBConfigurationInitializeOperation(pInfoFinal, null).run(new NullProgressMonitor());
+						} catch (InvocationTargetException e) {
+							e.printStackTrace();
+						} catch (InterruptedException e) {
+							e.printStackTrace();
+						}
+					}
+				});
+
 				console = RemoteHelper.getConsole(connection);
 				console.newMessageStream().println(cw.getContents());
 
 				model.put(InstallWizard.KEY_PINFO, pinfo);
 				Activator.putProjInfo(pinfo.getURI(), pinfo);
 
-				this.getContainer().run(true, true, new CreateBBCProjectOperation(pinfo));
+				container.run(true, true, new CreateBBCProjectOperation(pinfo));
+				t.start();
 				return true;
 			}
-			return true;
 		} catch (Exception e) {
 			Activator.getDefault().getLog().log(new Status(IStatus.ERROR, Activator.PLUGIN_ID,
 					IStatus.ERROR, e.getMessage(), e));
@@ -167,6 +183,7 @@ public class InstallWizard extends FiniteStateWizard implements IWorkbenchWizard
 		return false;
 	}
 
+	@Override
 	public void init(IWorkbench workbench, IStructuredSelection selection) {
 	}
 
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/install/OptionsPage.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/install/OptionsPage.java
index 72aeec2..6c624be 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/install/OptionsPage.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/install/OptionsPage.java
@@ -89,8 +89,13 @@ public class OptionsPage extends FiniteStateWizardPage {
 			@Override
 			public void reportError(String errorMessage, boolean infoOnly) {
 				setMessage(errorMessage);
-				validatePage();
-				updateModel();
+				if (validatePage()) {
+	                updateModel();
+	                setPageComplete(true);
+	                return;
+	            }
+
+	            setPageComplete(false);
 			}
 		};
 
-- 
1.7.9.5


