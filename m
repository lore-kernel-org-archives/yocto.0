Return-Path: <ioanax.grigoropol@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 03399E014E8
	for <yocto@yoctoproject.org>; Fri, 25 Jan 2013 04:22:39 -0800 (PST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 25 Jan 2013 04:22:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,538,1355126400"; d="scan'208";a="248337503"
Received: from ideapad (HELO localhost.localdomain) ([10.237.105.62])
	by azsmga001.ch.intel.com with ESMTP; 25 Jan 2013 04:22:38 -0800
From: Ioana Grigoropol <ioanax.grigoropol@intel.com>
To: yocto@yoctoproject.org
Date: Fri, 25 Jan 2013 14:08:52 +0200
Message-Id: <1359115732-20806-1-git-send-email-ioanax.grigoropol@intel.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [PATCH] Capture and display bitbake errors
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
X-List-Received-Date: Fri, 25 Jan 2013 12:22:40 -0000

- if an error has occured when trying to initializes the bitbake session, this should be display appropriately
- when creating a new Bitbake project, if an error occured while initializing bitbake environment (bitbake -e), we should:
	- display the error in the wizard
	- prevent the new project creation
	- recreate the console command handler

Signed-off-by: Ioana Grigoropol <ioanax.grigoropol@intel.com>
---
 .../src/org/yocto/bc/bitbake/BBSession.java        |   21 ++++++++++++++++++-
 .../src/org/yocto/bc/bitbake/ShellSession.java     |    4 ++++
 .../yocto/bc/ui/wizards/install/InstallWizard.java |   22 +++++++++++++-------
 .../BBConfigurationInitializeOperation.java        |   22 +++++++++++++++++++-
 .../newproject/CreateBBCProjectOperation.java      |    5 +++++
 5 files changed, 65 insertions(+), 9 deletions(-)

diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/BBSession.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/BBSession.java
index 8a8de22..892bcc8 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/BBSession.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/BBSession.java
@@ -76,12 +76,14 @@ public class BBSession implements IBBSessionListener, IModelElement, Map {
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
+	private String errorLines = "";
 
 	public BBSession(ShellSession ssession, URI projectRoot) throws IOException {
 		shell = ssession;
@@ -398,7 +400,15 @@ public class BBSession implements IBBSessionListener, IModelElement, Map {
 					//FIXME : wait for bitbake to finish
 					properties = parseBBEnvironment(result);
 
-					initialized = true;
+					if (properties.size() == 0) { // there was an error in sourcing bitbake environment
+						shell.printError(errorLines);
+						errorOccured = true;
+					} else {
+						errorLines = "";
+						errorOccured = false;
+						initialized = true;
+					}
+					
 					//FIXME: cleanup BB env file
 				}
 			} finally {
@@ -468,6 +478,7 @@ public class BBSession implements IBBSessionListener, IModelElement, Map {
 		Stack blockStack = new Stack();
 
 		while ((line = reader.readLine()) != null) {
+			errorLines += line;
 			String trimmed = line.trim();
 			if (trimmed.length() == 0 || line.startsWith("#")) {
 				// weed out the blank and comment lines
@@ -781,4 +792,12 @@ public class BBSession implements IBBSessionListener, IModelElement, Map {
 		return pinfo;
 	}
 
+	public boolean errorOccured() {
+		return errorOccured;
+	}
+
+	public String getErrorLines() {
+		return errorLines;
+	}
+
 }
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/ShellSession.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/ShellSession.java
index 6603bfb..365c832 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/ShellSession.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/ShellSession.java
@@ -218,4 +218,8 @@ synchronized
 		interrupt = true;
 	}
 
+	public void printError(String errorLines) {
+		RemoteHelper.getCommandHandler(projectInfo.getConnection()).response(errorLines, true);
+	}
+
 }
\ No newline at end of file
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/install/InstallWizard.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/install/InstallWizard.java
index 100eee3..624cd11 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/install/InstallWizard.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/install/InstallWizard.java
@@ -7,6 +7,7 @@ import java.util.Map;
 
 import org.eclipse.core.runtime.IStatus;
 import org.eclipse.core.runtime.Status;
+import org.eclipse.dstore.core.model.CommandHandler;
 import org.eclipse.jface.viewers.IStructuredSelection;
 import org.eclipse.jface.wizard.IWizardContainer;
 import org.eclipse.jface.wizard.WizardPage;
@@ -57,6 +58,7 @@ public class InstallWizard extends FiniteStateWizard implements IWorkbenchWizard
 
 	private Map<String, Object> model;
 	private MessageConsole console;
+	private OptionsPage optionsPage;
 
 	public InstallWizard() {
 		this.model = new Hashtable<String, Object>();
@@ -89,7 +91,8 @@ public class InstallWizard extends FiniteStateWizard implements IWorkbenchWizard
 	 */
 	@Override
 	public void addPages() {
-		addPage(new OptionsPage(model));
+		optionsPage = new OptionsPage(model);
+		addPage(optionsPage);
 	}
 
 	@Override
@@ -110,9 +113,9 @@ public class InstallWizard extends FiniteStateWizard implements IWorkbenchWizard
 			}
 			IRemoteConnection remoteConnection = ((IRemoteConnection)model.get(InstallWizard.SELECTED_CONNECTION));
 			IRemoteServices remoteServices = ((IRemoteServices)model.get(InstallWizard.SELECTED_REMOTE_SERVICE));
-			final IHost connection = RemoteHelper.getRemoteConnectionByName(remoteConnection.getName());
-			final CommandResponseHandler cmdHandler = RemoteHelper.getCommandHandler(connection);
-			final IWizardContainer container = this.getContainer();
+			IHost connection = RemoteHelper.getRemoteConnectionByName(remoteConnection.getName());
+			CommandResponseHandler cmdHandler = new CommandResponseHandler(RemoteHelper.getConsole(connection));
+			IWizardContainer container = this.getContainer();
 			if (((Boolean)options.get(GIT_CLONE)).booleanValue()) {
 				String cmd = "/usr/bin/git clone --progress";
 				String args = "git://git.yoctoproject.org/poky.git " + uri.getPath();
@@ -147,11 +150,16 @@ public class InstallWizard extends FiniteStateWizard implements IWorkbenchWizard
 				pinfo.setRemoteServices(remoteServices);
 
 				final ConsoleWriter cw = new ConsoleWriter();
-//				final ProjectInfo pInfoFinal = pinfo;
-				container.run(false, false, new BBConfigurationInitializeOperation(pinfo, null));
+				BBConfigurationInitializeOperation configInitOp = new BBConfigurationInitializeOperation(pinfo, null);
+				container.run(false, false, configInitOp);
 				console = RemoteHelper.getConsole(connection);
 				console.newMessageStream().println(cw.getContents());
-
+				
+				if (configInitOp.isErrorOccured()) {
+					optionsPage.setErrorMessage(configInitOp.getErrorMessage());
+					return false;
+				}
+				
 				model.put(InstallWizard.KEY_PINFO, pinfo);
 				Activator.putProjInfo(pinfo.getOEFSURI(), pinfo);
 
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/newproject/BBConfigurationInitializeOperation.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/newproject/BBConfigurationInitializeOperation.java
index 5dd8944..8ced7a6 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/newproject/BBConfigurationInitializeOperation.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/newproject/BBConfigurationInitializeOperation.java
@@ -25,6 +25,16 @@ public class BBConfigurationInitializeOperation implements IRunnableWithProgress
 
 	private final ProjectInfo pinfo;
 	private final Writer writer;
+	private boolean errorOccured = false;
+	private String errorMessage = "";
+
+	public boolean isErrorOccured() {
+		return errorOccured;
+	}
+
+	public void setErrorOccured(boolean errorOccured) {
+		this.errorOccured = errorOccured;
+	}
 
 	public BBConfigurationInitializeOperation(ProjectInfo pinfo) {
 		this.pinfo = pinfo;
@@ -47,9 +57,19 @@ public class BBConfigurationInitializeOperation implements IRunnableWithProgress
 			session.initialize();
 			monitor.worked(90);
 			monitor.done();
-			System.out.println("Bitbake session initialized successfully.");
+			errorOccured = session.errorOccured();
+			errorMessage = session.getErrorLines();
+			if (!errorOccured) {
+				System.out.println("Bitbake session initialized successfully.");
+				errorMessage = "";
+			} else 
+				System.out.println("An error occured and Bitbake session was not initialized.");
 		} catch (Exception e) {
 			throw new InvocationTargetException(e);
 		}
 	}
+
+	public String getErrorMessage() {
+		return errorMessage;
+	}
 }
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/newproject/CreateBBCProjectOperation.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/newproject/CreateBBCProjectOperation.java
index 338c2e6..e265e23 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/newproject/CreateBBCProjectOperation.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/newproject/CreateBBCProjectOperation.java
@@ -44,6 +44,7 @@ public class CreateBBCProjectOperation extends WorkspaceModifyOperation {
 
 	public static final QualifiedName BBC_PROJECT_INIT = new QualifiedName(null, "BBC_PROJECT_INIT");
 	public static void addNatureToProject(IProject proj, String nature_id, IProgressMonitor monitor) throws CoreException {
+		try {
 		IProjectDescription desc = proj.getDescription();
 		Vector<String> natureIds = new Vector<String>();
 
@@ -52,6 +53,10 @@ public class CreateBBCProjectOperation extends WorkspaceModifyOperation {
 		desc.setNatureIds(natureIds.toArray(new String[natureIds.size()]));
 
 		proj.setDescription(desc, monitor);
+		} catch (Exception e) {
+			//this should not happen
+			e.printStackTrace();
+		}
 	}
 
 	private ProjectInfo projInfo;
-- 
1.7.9.5


