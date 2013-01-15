Return-Path: <ioanax.grigoropol@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EA376E01248
	for <yocto@yoctoproject.org>; Tue, 15 Jan 2013 07:10:56 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 15 Jan 2013 07:10:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,473,1355126400"; d="scan'208";a="274027460"
Received: from ideapad (HELO localhost.localdomain) ([10.237.105.62])
	by fmsmga001.fm.intel.com with ESMTP; 15 Jan 2013 07:10:33 -0800
From: Ioana Grigoropol <ioanax.grigoropol@intel.com>
To: yocto@yoctoproject.org
Date: Tue, 15 Jan 2013 16:57:29 +0200
Message-Id: <1358261849-5021-6-git-send-email-ioanax.grigoropol@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1358261849-5021-1-git-send-email-ioanax.grigoropol@intel.com>
References: <1358261849-5021-1-git-send-email-ioanax.grigoropol@intel.com>
Subject: [PATCH v3 5/5] Send output from bitbake environment parsing in the background
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
X-List-Received-Date: Tue, 15 Jan 2013 15:10:57 -0000

- after creating the project, the wizard should not block waiting for the environment to be populated and instead should be ran in the background

Signed-off-by: Ioana Grigoropol <ioanax.grigoropol@intel.com>
---
 .../src/org/yocto/bc/bitbake/BBSession.java        |   27 +++++----
 .../src/org/yocto/bc/bitbake/ShellSession.java     |    3 +-
 .../org/yocto/bc/remote/utils/RemoteHelper.java    |    3 +-
 .../org/yocto/bc/remote/utils/RemoteMachine.java   |   23 +++----
 .../remote/utils/YoctoHostShellProcessAdapter.java |   14 ++++-
 .../org/yocto/bc/ui/filesystem/OEFileSystem.java   |   14 ++---
 .../yocto/bc/ui/wizards/FiniteStateWizardPage.java |   54 +++++++++--------
 .../bc/ui/wizards/NewBitBakeFileRecipeWizard.java  |   58 +++++++++---------
 .../ui/wizards/NewBitBakeFileRecipeWizardPage.java |    5 +-
 .../yocto/bc/ui/wizards/install/InstallWizard.java |   63 +++++++++++++-------
 .../yocto/bc/ui/wizards/install/OptionsPage.java   |    1 +
 .../BBConfigurationInitializeOperation.java        |    2 +
 12 files changed, 149 insertions(+), 118 deletions(-)

diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/BBSession.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/BBSession.java
index 037d8aa..9adeb3f 100644
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
@@ -58,6 +58,8 @@ public class BBSession implements IBBSessionListener, IModelElement, Map {
 	public static final int TYPE_STATEMENT = 3;
 	public static final int TYPE_FLAG = 4;
 
+	public static final String BB_ENV_FILE = "bitbake.env";
+
 	public static final String CONF_DIR = "/conf";
 	public static final String BUILDDIR_INDICATORS [] = {
 		"/local.conf",
@@ -81,7 +83,7 @@ public class BBSession implements IBBSessionListener, IModelElement, Map {
 		this.pinfo = new ProjectInfo();
 		pinfo.setLocation(projectRoot);
 		pinfo.setInitScriptPath(ProjectInfoHelper.getInitScriptPath(projectRoot));
-		this.parsingCmd = "DISABLE_SANITY_CHECKS=\"1\" bitbake -e";
+		this.parsingCmd = "sh -c 'DISABLE_SANITY_CHECKS=\"1\" bitbake -e >& " + BB_ENV_FILE + "  '" ;
 	}
 
 	public BBSession(ShellSession ssession, URI projectRoot, boolean silent) throws IOException {
@@ -387,11 +389,11 @@ public class BBSession implements IBBSessionListener, IModelElement, Map {
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
@@ -450,10 +452,8 @@ public class BBSession implements IBBSessionListener, IModelElement, Map {
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
@@ -520,11 +520,11 @@ public class BBSession implements IBBSessionListener, IModelElement, Map {
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
@@ -768,4 +768,5 @@ public class BBSession implements IBBSessionListener, IModelElement, Map {
 	public Map<String, String> getProperties() {
 		return (Map<String, String>) properties;
 	}
+
 }
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/ShellSession.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/ShellSession.java
index 38e2557..6441029 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/ShellSession.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/ShellSession.java
@@ -108,7 +108,8 @@ public class ShellSession {
 		try {
 			if (projectInfo.getConnection() != null) {
 				hasErrors = RemoteHelper.runCommandRemote(projectInfo.getConnection(), new YoctoCommand(command, root.getAbsolutePath() + "/build/", ""));
-				return RemoteHelper.getProcessBuffer(projectInfo.getConnection()).getMergedOutputLines();
+//				return RemoteHelper.getProcessBuffer(projectInfo.getConnection()).getMergedOutputLines();
+				return root.getAbsolutePath() + "/build/";
 			}
 			return null;
 		} catch (Exception e) {
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/RemoteHelper.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/RemoteHelper.java
index e511e06..814e3a5 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/RemoteHelper.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/RemoteHelper.java
@@ -272,7 +272,6 @@ public class RemoteHelper {
 					getHostShell(connection).writeToShell(fullRemoteCommand);
 					while (!adapter.isFinished())
 						Thread.sleep(2);
-//					return hostShellProcessAdapter.hasErrors();
 				} catch (Exception e) {
 					e.printStackTrace();
 				}
@@ -281,7 +280,7 @@ public class RemoteHelper {
 		return true;
 	}
 
-	public static void runBatchRemote(IHost connection, List<YoctoCommand> cmds, boolean waitForOutput) throws CoreException {
+	public static void runBatchRemote(IHost connection, List<YoctoCommand> cmds, boolean displayOutput) throws CoreException {
 		try {
 			String remoteCommand = "";
 			for (YoctoCommand cmd : cmds) {
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/RemoteMachine.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/RemoteMachine.java
index a25eea4..d4cdb23 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/RemoteMachine.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/RemoteMachine.java
@@ -8,8 +8,6 @@ import org.eclipse.core.runtime.IProgressMonitor;
 import org.eclipse.core.runtime.NullProgressMonitor;
 import org.eclipse.core.runtime.OperationCanceledException;
 import org.eclipse.core.runtime.Status;
-import org.eclipse.ptp.remote.core.IRemoteConnection;
-import org.eclipse.ptp.remote.core.IRemoteServices;
 import org.eclipse.rse.core.model.IHost;
 import org.eclipse.rse.core.subsystems.ISubSystem;
 import org.eclipse.rse.services.clientserver.messages.SystemMessageException;
@@ -23,8 +21,8 @@ import org.yocto.bc.ui.wizards.install.Messages;
 
 public class RemoteMachine {
 	public static final String PROXY = "proxy";
-	
-	private Map<String, String> environment; 	
+
+	private Map<String, String> environment;
 	private MessageConsole console;
 	private CommandResponseHandler cmdHandler;
 	private IHostShell hostShell;
@@ -39,7 +37,7 @@ public class RemoteMachine {
 	public RemoteMachine(IHost connection) {
 		setConnection(connection);
 	}
-	
+
 	public Map<String, String> getEnvironment() {
 		return environment;
 	}
@@ -70,7 +68,7 @@ public class RemoteMachine {
 		}
 		return hostShell;
 	}
-	
+
 	public YoctoHostShellProcessAdapter getHostShellProcessAdapter() {
 		try {
 			if (hostShellProcessAdapter == null)
@@ -81,11 +79,11 @@ public class RemoteMachine {
 			return null;
 		}
 	}
-	
+
 	public IShellService getShellService(IProgressMonitor monitor) throws Exception {
 		if (shellService != null)
 			return shellService;
-		
+
 		final ISubSystem subsystem = getShellSubsystem();
 
 		if (subsystem == null)
@@ -123,9 +121,6 @@ public class RemoteMachine {
 	}
 
 	public IHost getConnection() {
-//		if (connection == null) {
-//			connection = RemoteHelper.getRemoteConnectionForURI(, new NullProgressMonitor());
-//		}
 		return connection;
 	}
 	public void setConnection(IHost connection) {
@@ -134,7 +129,7 @@ public class RemoteMachine {
 
 	public IFileService getRemoteFileService(IProgressMonitor monitor) throws Exception {
 		if (fileService == null) {
-	
+
 			while(getFileSubsystem() == null)
 				Thread.sleep(2);
 			try {
@@ -144,10 +139,10 @@ public class RemoteMachine {
 			} catch (OperationCanceledException e) {
 				throw new CoreException(Status.CANCEL_STATUS);
 			}
-	
+
 			if (!getFileSubsystem().isConnected())
 				throw new Exception(Messages.ErrorConnectSubsystem);
-	
+
 			fileService = ((IFileServiceSubSystem) getFileSubsystem()).getFileService();
 		}
 		return fileService;
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/YoctoHostShellProcessAdapter.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/YoctoHostShellProcessAdapter.java
index bb137b1..aca6a6e 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/YoctoHostShellProcessAdapter.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/YoctoHostShellProcessAdapter.java
@@ -140,7 +140,8 @@ public class YoctoHostShellProcessAdapter extends  HostShellProcessAdapter {
 				}
 				System.out.println(value);
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
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/filesystem/OEFileSystem.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/filesystem/OEFileSystem.java
index 5efdcdc..df6b8d4 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/filesystem/OEFileSystem.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/filesystem/OEFileSystem.java
@@ -42,23 +42,17 @@ public class OEFileSystem extends FileSystem {
 		return ref;
 	}
 
-	private Map fileStoreCache;
+	private Map<URI, OEFile> fileStoreCache;
 
 	public OEFileSystem() {
 		ref = this;
-		fileStoreCache = new Hashtable();
+		fileStoreCache = new Hashtable<URI, OEFile>();
 	}
 
-//	public OEFileSystem(ProjectInfo pInfo) {
-//		ref = this;
-//		projInfo = pInfo;
-//		fileStoreCache = new Hashtable();
-//	}
-
 	@Override
 	public IFileStore getStore(URI uri) {
 
-		OEFile uf = (OEFile) fileStoreCache.get(uri);
+		OEFile uf = fileStoreCache.get(uri);
 		setProjInfo(uri);
 
 		if (uf == null) {
@@ -75,7 +69,7 @@ public class OEFileSystem extends FileSystem {
 				throw new RuntimeException("Invalid local.conf: TMPDIR or DL_DIR or SSTATE_DIR undefined.");
 			}
 
-			List ignoreList = new ArrayList();
+			List<Object> ignoreList = new ArrayList<Object>();
 
 			//These directories are ignored because they contain too many files for Eclipse to handle efficiently.
 			ignoreList.add(config.get("TMPDIR"));
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
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/NewBitBakeFileRecipeWizardPage.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/NewBitBakeFileRecipeWizardPage.java
index a52c2fe..c55f8d7 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/NewBitBakeFileRecipeWizardPage.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/NewBitBakeFileRecipeWizardPage.java
@@ -407,7 +407,10 @@ public class NewBitBakeFileRecipeWizardPage extends WizardPage {
 
 	private String retrieveSum(String arg, String pattern) {
 		ProcessStreamBuffer buffer = RemoteHelper.getProcessBuffer(this.connection);
-		return buffer.getOutputLineContaining(arg, pattern);
+		String sum = buffer.getOutputLineContaining(arg, pattern);
+		if (sum == null)
+			return "";
+		return sum;
 	}
 
 	private URI extractPackage(URI srcURI) {
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
index 7a705aa..486bd8b 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/install/OptionsPage.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/install/OptionsPage.java
@@ -29,6 +29,7 @@ import org.eclipse.swt.layout.GridData;
 import org.eclipse.swt.layout.GridLayout;
 import org.eclipse.swt.widgets.Button;
 import org.eclipse.swt.widgets.Composite;
+import org.eclipse.swt.widgets.Group;
 import org.eclipse.swt.widgets.Label;
 import org.eclipse.swt.widgets.Text;
 import org.yocto.bc.remote.utils.RemoteHelper;
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/newproject/BBConfigurationInitializeOperation.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/newproject/BBConfigurationInitializeOperation.java
index 7a68ed5..942f303 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/newproject/BBConfigurationInitializeOperation.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/newproject/BBConfigurationInitializeOperation.java
@@ -40,12 +40,14 @@ public class BBConfigurationInitializeOperation implements IRunnableWithProgress
 	public void run(IProgressMonitor monitor) throws InvocationTargetException, InterruptedException {
 		BBSession session;
 		try {
+			System.out.println("Initialize bitbake session ...");
 			monitor.beginTask("Initialize bitbake session ...", RemoteHelper.TOTALWORKLOAD);
 			ProjectInfoHelper.store(RemoteHelper.getRemoteConnectionByName(pinfo.getConnection().getName()), pinfo.getURI(), pinfo, monitor);
 			session = Activator.getBBSession(pinfo, writer, monitor);
 			session.initialize();
 			monitor.worked(90);
 			monitor.done();
+			System.out.println("Bitbake session initialized successfully.");
 		} catch (Exception e) {
 			throw new InvocationTargetException(e);
 		}
-- 
1.7.9.5


