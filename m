Return-Path: <ioanax.grigoropol@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D5EEEE01570
	for <yocto@yoctoproject.org>; Thu,  6 Jun 2013 06:10:08 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 06 Jun 2013 06:09:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,814,1363158000"; d="scan'208";a="313209317"
Received: from ideapad.rb.intel.com ([10.237.105.63])
	by azsmga001.ch.intel.com with ESMTP; 06 Jun 2013 06:09:43 -0700
From: Ioana Grigoropol <ioanax.grigoropol@intel.com>
To: yocto@yoctoproject.org
Date: Thu,  6 Jun 2013 15:47:34 +0300
Message-Id: <1370522855-22772-5-git-send-email-ioanax.grigoropol@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1370522855-22772-1-git-send-email-ioanax.grigoropol@intel.com>
References: <1370522855-22772-1-git-send-email-ioanax.grigoropol@intel.com>
Subject: [RFC Refactor 4/5] Refactor OptionsPage to use Remote Location box & validation
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
X-List-Received-Date: Thu, 06 Jun 2013 13:10:09 -0000

- replace text box & browse button with PTP implementation RemoteProjectContentsLocationArea
	- this implementation contains:
		- two combo boxes: one for the connections, and one for the remote services
		- a new button that allows creation of new connections
		- a text box & browse button for the location of the project
	- any errors that occur within the contents location area will be reported
		to the ErrorReporter that was registered at creation time
	 	- in our particular case, on error reporting we:
			- set the message of the wizard according
			- try and validate the page & update the underlying model
- rearrange items in wizard in order to have a more consistent look (use grid data layout)
- fix page validation
	- separate tasks in page validation in:
		- project name validation
		- project location validation
	- project name validation verifies that:
		- project name is not empty
		- project name is not invalid(contains invalid characters)
		- a project with the same name does not exist in the workspace
	- project location validation:
		- retrieves the remote IHostFile for the project
		- case we did select 'git clone'
			- make sure that the remote file either does not exists or is a empty directory
			- check that in the remote directory, we do not already have a .git file
				indicating that this directory contains git repo
		- case we did not select 'git clone'
			- make sure that the directory exists, and it contains oe-init-build-env file

Signed-off-by: Ioana Grigoropol <ioanax.grigoropol@intel.com>
---
 plugins/org.yocto.bc.ui/META-INF/MANIFEST.MF       |    4 +-
 .../yocto/bc/ui/wizards/install/OptionsPage.java   |  253 +++++++++++++-------
 2 files changed, 176 insertions(+), 81 deletions(-)

diff --git a/plugins/org.yocto.bc.ui/META-INF/MANIFEST.MF b/plugins/org.yocto.bc.ui/META-INF/MANIFEST.MF
index 84946ad..58174b9 100644
--- a/plugins/org.yocto.bc.ui/META-INF/MANIFEST.MF
+++ b/plugins/org.yocto.bc.ui/META-INF/MANIFEST.MF
@@ -18,8 +18,10 @@ Require-Bundle: org.eclipse.ui,
  org.yocto.remote.utils;bundle-version="1.0.0"
 Eclipse-LazyStart: true
 Bundle-ClassPath: .
-Import-Package: org.eclipse.ptp.remote.core,
+Import-Package: org.eclipse.ptp.rdt.ui.wizards,
+ org.eclipse.ptp.remote.core,
  org.eclipse.ptp.remote.core.exception,
+ org.eclipse.ptp.remote.rse.core,
  org.eclipse.rse.core.model,
  org.eclipse.rse.services.clientserver.messages,
  org.eclipse.rse.services.files,
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/install/OptionsPage.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/install/OptionsPage.java
index f5e6e0e..24fd94b 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/install/OptionsPage.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/install/OptionsPage.java
@@ -3,11 +3,14 @@ package org.yocto.bc.ui.wizards.install;
 import java.io.IOException;
 import java.io.File;
 import java.net.URI;
+import java.net.URISyntaxException;
 import java.util.ArrayList;
 import java.util.Hashtable;
 import java.util.Iterator;
 import java.util.List;
 import java.util.Map;
+import java.util.regex.Matcher;
+import java.util.regex.Pattern;
 
 import org.eclipse.core.resources.IProject;
 import org.eclipse.core.resources.IProjectDescription;
@@ -16,6 +19,14 @@ import org.eclipse.core.resources.IWorkspaceRoot;
 import org.eclipse.core.resources.ResourcesPlugin;
 import org.eclipse.core.runtime.CoreException;
 import org.eclipse.core.runtime.IStatus;
+import org.eclipse.core.runtime.NullProgressMonitor;
+import org.eclipse.ptp.rdt.ui.wizards.RemoteProjectContentsLocationArea;
+import org.eclipse.ptp.rdt.ui.wizards.RemoteProjectContentsLocationArea.IErrorMessageReporter;
+import org.eclipse.ptp.remote.core.IRemoteConnection;
+import org.eclipse.ptp.remote.rse.core.RSEConnection;
+import org.eclipse.rse.core.model.IHost;
+import org.eclipse.rse.services.files.IFileService;
+import org.eclipse.rse.services.files.IHostFile;
 import org.eclipse.swt.SWT;
 import org.eclipse.swt.events.SelectionAdapter;
 import org.eclipse.swt.events.SelectionEvent;
@@ -33,6 +44,7 @@ import org.eclipse.ui.PlatformUI;
 import org.yocto.bc.ui.wizards.FiniteStateWizard;
 import org.yocto.bc.ui.wizards.FiniteStateWizardPage;
 import org.yocto.bc.ui.wizards.FiniteStateWizardPage.ValidationListener;
+import org.yocto.remote.utils.RemoteHelper;
 
 /**
  * Select which flavor of OE is to be installed.
@@ -45,9 +57,12 @@ import org.yocto.bc.ui.wizards.FiniteStateWizardPage.ValidationListener;
  */
 public class OptionsPage extends FiniteStateWizardPage {
 
+	public static final String URI_SEPARATOR = "/";
+	public static final String LOCALHOST = "LOCALHOST";
+
 	private Composite top;
-	
-	private Text txtProjectLocation;
+
+	private RemoteProjectContentsLocationArea locationArea;
 
 	private ValidationListener validationListener;
 	private Text txtProjectName;
@@ -63,11 +78,10 @@ public class OptionsPage extends FiniteStateWizardPage {
 	public void createControl(Composite parent) {
 		top = new Composite(parent, SWT.None);
 		top.setLayout(new GridLayout());
-		top.setLayoutData(new GridData(GridData.FILL_BOTH));
+		top.setLayoutData(new GridData(GridData.FILL_HORIZONTAL));
 
 		GridData gdFillH = new GridData(GridData.FILL_HORIZONTAL);
-		GridData gdVU = new GridData(GridData.VERTICAL_ALIGN_BEGINNING);
-		
+
 		Composite projectNameComp = new Composite(top, SWT.NONE);
 		GridData gdProjName = new GridData(GridData.FILL_HORIZONTAL);
 		projectNameComp.setLayoutData(gdProjName);
@@ -82,59 +96,34 @@ public class OptionsPage extends FiniteStateWizardPage {
 		
 		txtProjectName.addModifyListener(validationListener);
 
-		Label lblProjectLocation = new Label(projectNameComp, SWT.None);
-		lblProjectLocation.setText("&Project Location:");
-
-		Composite locComposite = new Composite(projectNameComp, SWT.NONE);
-		GridData gd = new GridData(GridData.VERTICAL_ALIGN_END
-				| GridData.FILL_HORIZONTAL);
-		gd.horizontalIndent = 0;
-		locComposite.setLayoutData(gd);
-		GridLayout gl = new GridLayout(2, false);
-		gl.marginWidth = 0;
-		locComposite.setLayout(gl);
-
-		txtProjectLocation = new Text(locComposite, SWT.BORDER);
-		txtProjectLocation.setLayoutData(gdFillH);
-		txtProjectLocation.addModifyListener(validationListener);
-
-		Button button = new Button(locComposite, SWT.PUSH);
-		button.setText("Browse...");
-		button.addSelectionListener(new SelectionAdapter() {
+		IErrorMessageReporter errorReporter = new IErrorMessageReporter() {
+
 			@Override
-			public void widgetSelected(SelectionEvent e) {
-				handleBrowse();
+			public void reportError(String errorMessage, boolean infoOnly) {
+				setMessage(errorMessage);
+				if (validatePage()) {
+	                updateModel();
+	                setPageComplete(true);
+	                return;
+	            }
+
+	            setPageComplete(false);
 			}
-		});
-
-		//Label lblGit = new Label(projectNameComp, SWT.None);
-		//lblGit.setText("Clone from &Git Repository?");
-
-		Composite gitComposite = new Composite(projectNameComp, SWT.NONE);
-		gd = new GridData(GridData.VERTICAL_ALIGN_END
-				| GridData.FILL_HORIZONTAL);
-		gd.horizontalIndent = 0;
-		gitComposite.setLayoutData(gd);
-		gl = new GridLayout(1, false);
-		gl.marginWidth = 0;
-		gitComposite.setLayout(gl);
-
-		btnGit = new Button(gitComposite, SWT.CHECK);
-		btnGit.setText("Clone from Yocto Project &Git Repository");
+		};
+
+		locationArea = new RemoteProjectContentsLocationArea(errorReporter, top, null);
+
+		btnGit = new Button(top, SWT.CHECK);
+		btnGit.setText("Clone from Yocto Project &Git Repository into new location");
 		btnGit.setEnabled(true);
+		btnGit.setSelection(true);
 		btnGit.addSelectionListener(validationListener);
+		GridData gd = new GridData(GridData.VERTICAL_ALIGN_END | GridData.FILL_HORIZONTAL);
+		btnGit.setLayoutData(gd);
 
 		setControl(top);
 	}
 
-	private void handleBrowse() {
-		DirectoryDialog dialog = new DirectoryDialog(getShell(), SWT.None);
-		String dir = dialog.open();
-		if (dir != null) {
-			txtProjectLocation.setText(dir);
-		}
-	}
-	
 	@Override
 	public void pageCleanup() {
 
@@ -147,9 +136,46 @@ public class OptionsPage extends FiniteStateWizardPage {
 	@Override
 	
 	protected void updateModel() {
-		model.put(InstallWizard.INSTALL_DIRECTORY, txtProjectLocation.getText()+File.separator+txtProjectName.getText());
+		try {
+			URI uri = getProjectLocationURI();
+			if (uri != null)
+				model.put(InstallWizard.INSTALL_DIRECTORY, getProjectLocationURI());
+		} catch (Exception e){
+			e.printStackTrace();
+		}
 		model.put(InstallWizard.PROJECT_NAME, txtProjectName.getText());
 		model.put(InstallWizard.GIT_CLONE, new Boolean(btnGit.getSelection()));
+		model.put(InstallWizard.SELECTED_CONNECTION, locationArea.getRemoteConnection());
+		model.put(InstallWizard.SELECTED_REMOTE_SERVICE, locationArea.getRemoteServices());
+	}
+
+	public URI getProjectLocationURI() throws URISyntaxException {
+		URI uri = locationArea.getProjectLocationURI();
+
+		if (uri != null) {
+			String location = locationArea.getProjectLocation();
+			if (!uri.getPath().isEmpty()) {
+				String separator = uri.getPath().endsWith(URI_SEPARATOR) ? "" : URI_SEPARATOR;
+
+				return new URI( uri.getScheme(),
+								uri.getHost(),
+								uri.getPath() + separator + txtProjectName.getText(),
+								uri.getFragment());
+			} else {
+				return null;
+			}
+		} else {
+			String location = locationArea.getProjectLocation();
+			String separator = location.endsWith(URI_SEPARATOR) ? "" : URI_SEPARATOR;
+
+			IRemoteConnection conn = locationArea.getConnection();
+			if (conn instanceof RSEConnection) {
+				RSEConnection rseConn = (RSEConnection)conn;
+				return new URI("rse", rseConn.getHost().getHostName(), location);
+			} else {
+				return new URI( "file", location + separator + txtProjectName.getText(),"");
+			}
+		}
 	}
 
 	private boolean isValidProjectName(String projectName) {
@@ -159,12 +185,17 @@ public class OptionsPage extends FiniteStateWizardPage {
 
 		return true;
 	}
-	@Override
-	protected boolean validatePage() {
+
+	private boolean validateProjectName() {
 		IWorkspaceRoot wsroot = ResourcesPlugin.getWorkspace().getRoot();
 
 		IStatus validate = ResourcesPlugin.getWorkspace().validateName(txtProjectName.getText(), IResource.PROJECT);
 
+		if (txtProjectName.getText().trim().isEmpty()) {
+			setErrorMessage("Project name cannot be empty!");
+			return false;
+		}
+
 		if (!validate.isOK() || !isValidProjectName(txtProjectName.getText())) {
 			setErrorMessage("Invalid project name: " + txtProjectName.getText());
 			return false;
@@ -172,48 +203,110 @@ public class OptionsPage extends FiniteStateWizardPage {
 
 		IProject proj = wsroot.getProject(txtProjectName.getText());
 		if (proj.exists()) {
-			setErrorMessage("A project with the name " + txtProjectName.getText()
-					+ " already exists");
+			setErrorMessage("A project with the name " + txtProjectName.getText() + " already exists");
 			return false;
 		}
-		
-		String projectLoc = txtProjectLocation.getText();
-		File checkProject_dir = new File(projectLoc);
-		if (!checkProject_dir.isDirectory()) {
-			setErrorMessage("The project location directory " + txtProjectLocation.getText() + " is not valid");
+		return true;
+	}
+	private String convertToRealPath(String path) {
+	    String patternStr = File.separator + File.separator;
+	    if (patternStr.equals(URI_SEPARATOR))
+	        return path;
+	    String replaceStr = URI_SEPARATOR;
+	    String convertedpath;
+
+	    //Compile regular expression
+	    Pattern pattern = Pattern.compile(patternStr); //pattern to look for
+
+	    //replace all occurance of percentage character to file separator
+	    Matcher matcher = pattern.matcher(path);
+	    convertedpath = matcher.replaceAll(replaceStr);
+
+	    return convertedpath;
+	}
+
+	public String getProjectName(){
+		return txtProjectName.getText().trim();
+	}
+
+	protected boolean validateProjectLocation() {
+
+		String projectLoc = locationArea.getProjectLocation().trim();
+
+		IRemoteConnection remoteConnection = locationArea.getRemoteConnection();
+		if (remoteConnection == null)
 			return false;
-		}
-		
-		String projectPath = projectLoc + File.separator+txtProjectName.getText();
-		File git_dir=new File(projectPath);
+
+		if (projectLoc.isEmpty())
+			return true;
+
+		IHost connection = RemoteHelper.getRemoteConnectionByName(remoteConnection.getName());
+
+		projectLoc = convertToRealPath(projectLoc);
+		String separator = projectLoc.endsWith(URI_SEPARATOR) ? "" : URI_SEPARATOR;
+		String projectPath = projectLoc + separator + getProjectName();
+		IHostFile repoDest = RemoteHelper.getRemoteHostFile(connection, projectPath, new NullProgressMonitor());
+
 		if(!btnGit.getSelection()) {
-			if(!git_dir.isDirectory() || !git_dir.exists()) {
-				setErrorMessage("Directory " + txtProjectLocation.getText()+File.separator+txtProjectName.getText() + " does not exist, please select git clone.");
-				return false;
-			}else if(!new File(projectPath + File.separator + InstallWizard.VALIDATION_FILE).exists()) {
-				setErrorMessage("Directory " + txtProjectLocation.getText()+File.separator+txtProjectName.getText() + " seems invalid, please use other directory or project name.");
+			if (repoDest == null || !repoDest.exists()) {
+				setErrorMessage("Directory " + projectPath + " does not exist, please select git clone.");
 				return false;
 			}
-		}else {
-			// git check
-			if(git_dir.exists()) {
-				setErrorMessage("Directory " + txtProjectLocation.getText()+File.separator+txtProjectName.getText() + " exists, please unselect git clone.");
+
+			IHostFile validationFile = RemoteHelper.getRemoteHostFile(connection, projectPath + URI_SEPARATOR + InstallWizard.VALIDATION_FILE, new NullProgressMonitor());
+			if (validationFile == null || !validationFile.exists()) {
+				setErrorMessage("Directory " + projectPath + " seems invalid, please use other directory or project name.");
 				return false;
 			}
+		} else { //git clone
+			if (repoDest != null && repoDest.exists() && repoDest.isDirectory()) {
+				IHostFile[] hostFiles = RemoteHelper.getRemoteDirContent(connection, repoDest.getAbsolutePath(), "", IFileService.FILE_TYPE_FILES_AND_FOLDERS, new NullProgressMonitor());
+				if (hostFiles.length != 0) {
+					setErrorMessage("Directory " + projectPath + " is not empty, please choose another location.");
+					return false;
+				}
+				IHostFile gitDescr = RemoteHelper.getRemoteHostFile(connection, projectPath + "/.git", new NullProgressMonitor());
+				if (gitDescr != null && gitDescr.exists()) {
+					setErrorMessage("Directory " + projectPath + " contains a repository, please choose another location or skip cloning the repository.");
+					return false;
+				}
+			}
 		}
-		
+
 		try {
-			URI location = new URI("file://" + txtProjectLocation.getText()+File.separator+txtProjectName.getText());
-		
-			IStatus status = ResourcesPlugin.getWorkspace().validateProjectLocationURI(proj, location);
-			if (!status.isOK()) {
-				setErrorMessage(status.getMessage());
-				return false;
+			String projName = txtProjectName.getText();
+			if (!projName.trim().isEmpty() && validateProjectName()) {
+				IWorkspaceRoot wsroot = ResourcesPlugin.getWorkspace().getRoot();
+				IProject proj = wsroot.getProject();
+				if (proj != null && proj.exists()) {
+					setErrorMessage("A project with the name " + projName + " already exists");
+					return false;
+				}
+				URI location = new URI("file:" + URI_SEPARATOR + URI_SEPARATOR + convertToRealPath(projectLoc) + URI_SEPARATOR + txtProjectName.getText());
+
+				IStatus status = ResourcesPlugin.getWorkspace().validateProjectLocationURI(proj, location);
+				if (!status.isOK()) {
+					setErrorMessage(status.getMessage());
+					return false;
+				}
 			}
 		} catch (Exception e) {
+			e.printStackTrace();
 			setErrorMessage("Run into error while trying to validate entries!");
 			return false;
 		}
+
+		setErrorMessage(null);
+		return true;
+	}
+	@Override
+	protected boolean validatePage() {
+		if  (!validateProjectName())
+			return false;
+
+		if (!validateProjectLocation())
+			return false;
+
 		setErrorMessage(null);
 		setMessage("All the entries are valid, press \"Finish\" to start the process, "+
 				"this will take a while. Please don't interrupt till there's output in the Yocto Console window...");
-- 
1.7.9.5


