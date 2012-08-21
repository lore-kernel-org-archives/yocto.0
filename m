Return-Path: <ioanax.grigoropol@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1B0F4E0044A
	for <yocto@yoctoproject.org>; Tue, 21 Aug 2012 04:07:15 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 21 Aug 2012 04:07:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.77,802,1336374000"; d="scan'208";a="207359891"
Received: from ideapad (HELO localhost.localdomain) ([10.237.105.40])
	by fmsmga001.fm.intel.com with ESMTP; 21 Aug 2012 04:07:12 -0700
From: Ioana Grigoropol <ioanax.grigoropol@intel.com>
To: yocto@yoctoproject.org
Date: Tue, 21 Aug 2012 14:05:26 +0300
Message-Id: <1345547126-1142-1-git-send-email-ioanax.grigoropol@intel.com>
X-Mailer: git-send-email 1.7.9.5
Cc: Ioana Grigoropol <ioanax.grigoropol@intel.com>
Subject: [PATCH] [Fixed]Yocto-BSP Main Page - time consuming processes block the UI
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
X-List-Received-Date: Tue, 21 Aug 2012 11:07:15 -0000

- problems on the main page of yocto-bsp wizard :
	- getting the available kernel architectures is invoked from the UI
		-> similar to the properties page, when loading the
		architectures a new thread is created in the background and a
progress monitor dialog is shown.
	- getting qemu kernel architectures is invoked from the UI
		-> as above.
	- creation of properties file is done with each change in any of
the controls
		-> this action should only be done once, and the most
convenient place would be when flipping to next page. Unfortunately, the
method that checks if we can flip to the next page is called at each
change on the controls, in so re-writing the file with each keystroke.
The creation of this file was moved on the YoctoBSP Wizard, when
clicking on finish.

	In order to reuse the code that sends a process in the background
and shows the progress from the properties page, we use a
generic class BSPThread that runs a command from the shell in the
background and collects the output & error, and a BSPProgressDialog to
show. Each command will customize the processing of its output by
subclassing BSPThread. the progress of the background thread.


Signed-off-by: Ioana Grigoropol <ioanax.grigoropol@intel.com>
---
 .../sdk/remotetools/wizards/bsp/BSPAction.java     |   32 ++
 .../remotetools/wizards/bsp/BSPProgressDialog.java |   44 +++
 .../sdk/remotetools/wizards/bsp/BSPThread.java     |   92 ++++++
 .../wizards/bsp/ErrorCollectorThread.java          |   19 ++
 .../remotetools/wizards/bsp/KernelArchGetter.java  |   23 ++
 .../wizards/bsp/KernelBranchesGetter.java          |   28 ++
 .../sdk/remotetools/wizards/bsp/MainPage.java      |  296 +++++++----------
 .../wizards/bsp/OutputCollectorThread.java         |   19 ++
 .../remotetools/wizards/bsp/PropertiesPage.java    |  335 +++++++-------------
 .../remotetools/wizards/bsp/QemuArchGetter.java    |   27 ++
 .../remotetools/wizards/bsp/YoctoBSPWizard.java    |   99 +++---
 11 files changed, 579 insertions(+), 435 deletions(-)
 create mode 100644 plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/wizards/bsp/BSPAction.java
 create mode 100644 plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/wizards/bsp/BSPProgressDialog.java
 create mode 100644 plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/wizards/bsp/BSPThread.java
 create mode 100644 plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/wizards/bsp/ErrorCollectorThread.java
 create mode 100644 plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/wizards/bsp/KernelArchGetter.java
 create mode 100644 plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/wizards/bsp/KernelBranchesGetter.java
 create mode 100644 plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/wizards/bsp/OutputCollectorThread.java
 create mode 100644 plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/wizards/bsp/QemuArchGetter.java

diff --git a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/wizards/bsp/BSPAction.java b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/wizards/bsp/BSPAction.java
new file mode 100644
index 0000000..171f181
--- /dev/null
+++ b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/wizards/bsp/BSPAction.java
@@ -0,0 +1,32 @@
+package org.yocto.sdk.remotetools.wizards.bsp;
+
+/**
+ * Stores a list of items from the output of a background thread and the error message if something went wrong
+ * @author ioana.grigoropol
+ *
+ */
+public class BSPAction {
+	private String[] items;
+	private String message;
+
+	BSPAction(String[] items, String message){
+		this.setItems(items);
+		this.setMessage(message);
+	}
+
+	public String[] getItems() {
+		return items;
+	}
+
+	public void setItems(String[] items) {
+		this.items = items;
+	}
+
+	public String getMessage() {
+		return message;
+	}
+
+	public void setMessage(String message) {
+		this.message = message;
+	}
+}
\ No newline at end of file
diff --git a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/wizards/bsp/BSPProgressDialog.java b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/wizards/bsp/BSPProgressDialog.java
new file mode 100644
index 0000000..5cf713d
--- /dev/null
+++ b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/wizards/bsp/BSPProgressDialog.java
@@ -0,0 +1,44 @@
+package org.yocto.sdk.remotetools.wizards.bsp;
+
+import org.eclipse.core.runtime.IProgressMonitor;
+import org.eclipse.jface.dialogs.ProgressMonitorDialog;
+import org.eclipse.jface.operation.IRunnableWithProgress;
+import org.eclipse.swt.widgets.Shell;
+
+/**
+ * Creates a progress monitor dialog that will run in the background a BSPThread and display a custom message
+ * @author ioana.grigoropol
+ *
+ */
+public class BSPProgressDialog extends ProgressMonitorDialog{
+	String displayMessage;
+	BSPThread getterThread;
+	Shell shell;
+
+
+	public BSPProgressDialog(Shell parent, BSPThread getterThread, String displayMessage) {
+		super(parent);
+		this.shell = parent;
+		this.getterThread = getterThread;
+		this.displayMessage = displayMessage;
+	}
+
+	public void run(){
+		try {
+			super.run(true, true, new IRunnableWithProgress(){
+				@Override
+				public void run(IProgressMonitor monitor) {
+					monitor.beginTask(displayMessage + " ...", 100);
+					getterThread.run();
+					monitor.done();
+				}
+			});
+		} catch (Exception e) {
+			getterThread.getBspAction().setMessage(e.getMessage());
+		}
+	}
+
+	public BSPAction getBspAction() {
+		return getterThread.getBspAction();
+	}
+}
diff --git a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/wizards/bsp/BSPThread.java b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/wizards/bsp/BSPThread.java
new file mode 100644
index 0000000..e347bf1
--- /dev/null
+++ b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/wizards/bsp/BSPThread.java
@@ -0,0 +1,92 @@
+package org.yocto.sdk.remotetools.wizards.bsp;
+
+import java.io.BufferedReader;
+import java.io.InputStreamReader;
+import java.util.ArrayList;
+
+/**
+ * Receives a command to be run on a separate thread in the background
+ * It contains an BSPAction object that will collect the output & error
+ * Output lines are processed and collected into the items of BSPAction
+ * @author ioana.grigoropol
+ *
+ */
+public abstract class BSPThread implements Runnable {
+	public static final String SUCCESS = "success";
+	public static final String ERROR = "error";
+
+	private BSPAction bspAction;
+	private String command;
+
+	/**
+	 * Receives the command to be run in the background
+	 * @param command
+	 */
+	public BSPThread(String command) {
+		this.command = command;
+		this.bspAction = new BSPAction(null, null);
+	}
+
+	@Override
+	public void run() {
+		ArrayList<String> values = new ArrayList<String>();
+
+		try {
+			ProcessBuilder builder = new ProcessBuilder(new String[] {"sh", "-c", command});
+			// redirect error stream to collect both output & error
+			builder.redirectErrorStream(true);
+			Process process = builder.start();
+			BufferedReader br = new BufferedReader(new InputStreamReader(process.getInputStream()));
+			String line = null;
+			String errorMessage = "";
+			while ( (line = br.readLine()) != null) {
+				String[] result = processLine(line);
+				String status = result[0];
+				String value = result[1];
+				if (status.equals(ERROR) && !value.isEmpty()) {
+					errorMessage += value;
+					continue;
+				}
+				if (!value.isEmpty())
+					values.add(value);
+			}
+			int exitVal = process.waitFor();
+
+			// if the background process did not exit with 0 code, we should set the status accordingly
+			if (exitVal != 0) {
+				bspAction.setMessage(errorMessage);
+				bspAction.setItems(null);
+			}
+		} catch (Exception e) {
+			bspAction.setMessage(e.getMessage());
+			bspAction.setItems(null);
+		}
+		if (!values.isEmpty()) {
+			bspAction.setMessage(null);
+			bspAction.setItems(values.toArray(new String[values.size()]));
+		}
+	}
+
+	/**
+	 * Each command ran in the background will have a different output and a different way of processing it
+	 * @param line
+	 * @return
+	 */
+	protected abstract String[] processLine(String line);
+
+	public BSPAction getBspAction() {
+		return bspAction;
+	}
+
+	public void setBspAction(BSPAction bspAction) {
+		this.bspAction = bspAction;
+	}
+
+	public String getCommand() {
+		return command;
+	}
+
+	public void setCommand(String command) {
+		this.command = command;
+	}
+}
diff --git a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/wizards/bsp/ErrorCollectorThread.java b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/wizards/bsp/ErrorCollectorThread.java
new file mode 100644
index 0000000..d39ac28
--- /dev/null
+++ b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/wizards/bsp/ErrorCollectorThread.java
@@ -0,0 +1,19 @@
+package org.yocto.sdk.remotetools.wizards.bsp;
+
+/**
+ * BSPThread that ignores the output of the process and returns an error if the process exits with non zero code
+ * @author ioana.grigoropol
+ *
+ */
+public class ErrorCollectorThread extends BSPThread{
+
+	public ErrorCollectorThread(String command) {
+		super(command);
+	}
+
+	@Override
+	protected String[] processLine(String line) {
+		return null;
+	}
+
+}
diff --git a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/wizards/bsp/KernelArchGetter.java b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/wizards/bsp/KernelArchGetter.java
new file mode 100644
index 0000000..833057a
--- /dev/null
+++ b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/wizards/bsp/KernelArchGetter.java
@@ -0,0 +1,23 @@
+package org.yocto.sdk.remotetools.wizards.bsp;
+
+/**
+ * BSPThread that processes the output of "yocto-bsp list karch"
+ * @author ioana.grigoropol
+ *
+ */
+public class KernelArchGetter extends BSPThread{
+
+	public KernelArchGetter(String command) {
+		super(command);
+	}
+
+	@Override
+	protected String[] processLine(String line) {
+		if (line.contains(":"))
+			return new String[]{SUCCESS, ""};
+		line = line.replaceAll("^\\s+", "");
+		line = line.replaceAll("\\s+$", "");
+		return new String[]{SUCCESS, line};
+	}
+
+}
diff --git a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/wizards/bsp/KernelBranchesGetter.java b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/wizards/bsp/KernelBranchesGetter.java
new file mode 100644
index 0000000..4caea2c
--- /dev/null
+++ b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/wizards/bsp/KernelBranchesGetter.java
@@ -0,0 +1,28 @@
+package org.yocto.sdk.remotetools.wizards.bsp;
+
+/**
+ * BSPThread that processes the output lines from running command "yocto-bsp list" for the selected kernel
+ * @author ioana.grigoropol
+ *
+ */
+public class KernelBranchesGetter extends BSPThread {
+
+	public KernelBranchesGetter(String command) {
+		super(command);
+	}
+
+	@Override
+	protected String[] processLine(String line) {
+		// [TODO : Ioana]: find a better way to identify error lines
+		if (!line.startsWith("["))
+			return new String[]{ERROR, line + "\n"};
+
+		String[] items = line.split(",");
+
+		String value = items[0];
+		value = value.replace("[\"", "");
+		value = value.replaceAll("\"$", "");
+		return new String[]{SUCCESS, value};
+	}
+
+}
diff --git a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/wizards/bsp/MainPage.java b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/wizards/bsp/MainPage.java
index fea1c76..606555d 100644
--- a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/wizards/bsp/MainPage.java
+++ b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/wizards/bsp/MainPage.java
@@ -14,7 +14,6 @@ import java.io.BufferedReader;
 import java.io.File;
 import java.io.InputStream;
 import java.io.InputStreamReader;
-import java.util.ArrayList;
 
 import org.eclipse.core.runtime.IStatus;
 import org.eclipse.core.runtime.Status;
@@ -33,16 +32,15 @@ import org.eclipse.swt.widgets.Combo;
 import org.eclipse.swt.widgets.Composite;
 import org.eclipse.swt.widgets.Control;
 import org.eclipse.swt.widgets.DirectoryDialog;
-import org.eclipse.swt.widgets.Event;
 import org.eclipse.swt.widgets.Label;
 import org.eclipse.swt.widgets.Text;
 import org.eclipse.swt.widgets.Widget;
 import org.yocto.sdk.remotetools.YoctoBspElement;
 
 /**
- * 
+ *
  * Setting up the parameters for creating the new Yocto BSP
- * 
+ *
  * @author jzhang
  */
 public class MainPage extends WizardPage {
@@ -50,9 +48,6 @@ public class MainPage extends WizardPage {
 	private static final String KARCH_CMD = "yocto-bsp list karch";
 	private static final String QARCH_CMD = "yocto-bsp list qemu property qemuarch";
 	private static final String BSP_SCRIPT = "yocto-bsp";
-	private static final String PROPERTIES_CMD_PREFIX = "yocto-bsp list ";
-	private static final String PROPERTIES_CMD_SURFIX = " properties -o ";
-	private static final String PROPERTIES_FILE = "/tmp/properties.json";
 
 	private Button btnMetadataLoc;
 	private Text textMetadataLoc;
@@ -87,6 +82,7 @@ public class MainPage extends WizardPage {
 		this.bspElem = element;
 	}
 
+	@Override
 	public void createControl(Composite parent) {
 		setErrorMessage(null);
 		Composite composite = new Composite(parent, SWT.NONE);
@@ -95,7 +91,7 @@ public class MainPage extends WizardPage {
 		composite.setLayout(layout);
 
 		gd.horizontalSpan = 2;
-		composite.setLayoutData(gd);	
+		composite.setLayoutData(gd);
 
 		labelMetadata = new Label(composite, SWT.NONE);
 		labelMetadata.setText("Meta_data location*: ");
@@ -105,6 +101,7 @@ public class MainPage extends WizardPage {
 		textMetadataLoc = (Text)addTextControl(textContainer, "");
 		textMetadataLoc.setEnabled(false);
 		textMetadataLoc.addModifyListener(new ModifyListener() {
+			@Override
 			public void modifyText(ModifyEvent e) {
 				controlChanged(e.widget);
 			}
@@ -133,6 +130,7 @@ public class MainPage extends WizardPage {
 
 		textBspName = (Text)addTextControl(textContainer, "");
 		textBspName.addModifyListener(new ModifyListener() {
+			@Override
 			public void modifyText(ModifyEvent e) {
 				controlChanged(e.widget);
 			}
@@ -147,24 +145,26 @@ public class MainPage extends WizardPage {
 
 		textBspOutputLoc = (Text)addTextControl(textContainer, "");
 		textBspOutputLoc.addModifyListener(new ModifyListener() {
+			@Override
 			public void modifyText(ModifyEvent e) {
 				controlChanged(e.widget);
 			}
 		});
 		setBtnBspOutLoc(addFileSelectButton(textContainer, textBspOutputLoc));
 
-		labelKArch= new Label(composite, SWT.NONE);
+		labelKArch = new Label(composite, SWT.NONE);
 		labelKArch.setText("kernel Architecture*: ");
 
 		textContainer = new Composite(composite, SWT.NONE);
 		textContainer.setLayout(new GridLayout(2, false));
 		textContainer.setLayoutData(new GridData(SWT.FILL, SWT.CENTER, true, false));
 
-		comboKArch= new Combo(textContainer, SWT.READ_ONLY);
+		comboKArch = new Combo(textContainer, SWT.READ_ONLY);
 		comboKArch.setLayout(new GridLayout(2, false));
 		comboKArch.setLayoutData(new GridData(SWT.FILL, SWT.FILL, true, false));
 		comboKArch.setEnabled(false);
 		comboKArch.addModifyListener(new ModifyListener() {
+			@Override
 			public void modifyText(ModifyEvent e) {
 				controlChanged(e.widget);
 			}
@@ -183,6 +183,7 @@ public class MainPage extends WizardPage {
 		comboQArch.setLayoutData(new GridData(SWT.FILL, SWT.FILL, true, false));
 		comboQArch.setEnabled(false);
 		comboQArch.addModifyListener(new ModifyListener() {
+			@Override
 			public void modifyText(ModifyEvent e) {
 				controlChanged(e.widget);
 			}
@@ -200,7 +201,7 @@ public class MainPage extends WizardPage {
 		text.setText(value);
 		text.setSize(10, 150);
 
-		return (Control)text;
+		return text;
 	}
 
 	private Button addFileSelectButton(final Composite parent, final Text text) {
@@ -216,74 +217,74 @@ public class MainPage extends WizardPage {
 			}
 		});
 		return button;
-	}	
+	}
 
 	private void controlChanged(Widget widget) {
-		 Status status = new Status(IStatus.OK, "not_used", 0, "", null);
-		 setErrorMessage(null);
-		 String metadataLoc = textMetadataLoc.getText();
-
-		 if (widget == textMetadataLoc) {
-			 resetKarchCombo();
-			 if (metadataLoc.length() == 0) {
-				 status = new Status(IStatus.ERROR, "not_used", 0, "Meta data location can't be empty!", null);
-			 } else {
-				 File meta_data = new File(metadataLoc);
-				 if (!meta_data.exists() || !meta_data.isDirectory()) {
-					 status = new Status(IStatus.ERROR, "not_used", 0, 
-							 "Invalid meta data location: Make sure it exists and is a directory!", null);
-				 } else {
-					 File bspScript = new File(metadataLoc + "/scripts/" + BSP_SCRIPT);
-					 if (!bspScript.exists() || !bspScript.canExecute())
-						 status = new Status(IStatus.ERROR, "not_used", 0,
-								 "Make sure yocto-bsp exists under \"" + metadataLoc + "/scripts\" and is executable!", null);
-					 else {		
-						 kernelArchesHandler();
-					 }
-				 }
-			 }
-		 } else if (widget == comboKArch) {
-			 String selection = comboKArch.getText();
-			 if (!bspElem.getKarch().contentEquals(selection))
-				 bspElem = new YoctoBspElement();
-			 if (selection.matches("qemu")) {
-				 labelQArch.setEnabled(true);
-				 comboQArch.setEnabled(true);
-			 } else {
-				 labelQArch.setEnabled(false);
-				 comboQArch.setEnabled(false);
-			 }		
-		 }
-		 
-		 String buildDir = textBuildLoc.getText();
-		 String outputDir = textBspOutputLoc.getText();
-		 String bspName = textBspName.getText();
-		 
-		 if (!outputDir.isEmpty()){
-			 if (outputDir.matches(buildDir)) {
-				 status = new Status(IStatus.ERROR, "not_used", 0,
-						 "You've set BSP output directory the same as build directory, please leave output directory empty for this scenario!", null);
-			 } else {
-				 File outputDirectory = new File(outputDir);
-				 if (outputDirectory.exists()){
+		Status status = new Status(IStatus.OK, "not_used", 0, "", null);
+		setErrorMessage(null);
+		String metadataLoc = textMetadataLoc.getText();
+
+		if (widget == textMetadataLoc) {
+			resetKarchCombo();
+			if (metadataLoc.length() == 0) {
+				status = new Status(IStatus.ERROR, "not_used", 0, "Meta data location can't be empty!", null);
+			} else {
+				File meta_data = new File(metadataLoc);
+				if (!meta_data.exists() || !meta_data.isDirectory()) {
 					status = new Status(IStatus.ERROR, "not_used", 0,
-							 "Your BSP output directory points to an exiting directory!", null);
-				 }
-			 }
-		 } else if (buildDir.startsWith(metadataLoc) && !bspName.isEmpty()) {
-			 String bspDirStr = metadataLoc + "/meta-" + bspName;
-			 File bspDir = new File(bspDirStr);
-			 if (bspDir.exists()) {
-				 status = new Status(IStatus.ERROR, "not_used", 0,
-						 "Your BSP with name: " + bspName + " already exist under directory: " + bspDirStr + ", please change your bsp name!", null);
-			 }
-		 }
-		 
-		 if (status.getSeverity() == IStatus.ERROR)
-			 setErrorMessage(status.getMessage());
-		 
-		 getWizard().getContainer().updateButtons();
-		 canFlipToNextPage();
+							"Invalid meta data location: Make sure it exists and is a directory!", null);
+				} else {
+					File bspScript = new File(metadataLoc + "/scripts/" + BSP_SCRIPT);
+					if (!bspScript.exists() || !bspScript.canExecute())
+						status = new Status(IStatus.ERROR, "not_used", 0,
+								"Make sure yocto-bsp exists under \"" + metadataLoc + "/scripts\" and is executable!", null);
+					else {
+						kernelArchesHandler();
+					}
+				}
+			}
+		} else if (widget == comboKArch) {
+			String selection = comboKArch.getText();
+			if (!bspElem.getKarch().contentEquals(selection))
+				bspElem = new YoctoBspElement();
+			if (selection.matches("qemu")) {
+				labelQArch.setEnabled(true);
+				comboQArch.setEnabled(true);
+			} else {
+				labelQArch.setEnabled(false);
+				comboQArch.setEnabled(false);
+			}
+		}
+
+		String buildDir = textBuildLoc.getText();
+		String outputDir = textBspOutputLoc.getText();
+		String bspName = textBspName.getText();
+
+		if (!outputDir.isEmpty()){
+			if (outputDir.matches(buildDir)) {
+				status = new Status(IStatus.ERROR, "not_used", 0,
+						"You've set BSP output directory the same as build directory, please leave output directory empty for this scenario!", null);
+			} else {
+				File outputDirectory = new File(outputDir);
+				if (outputDirectory.exists()){
+					status = new Status(IStatus.ERROR, "not_used", 0,
+							"Your BSP output directory points to an exiting directory!", null);
+				}
+			}
+		} else if (buildDir.startsWith(metadataLoc) && !bspName.isEmpty()) {
+			String bspDirStr = metadataLoc + "/meta-" + bspName;
+			File bspDir = new File(bspDirStr);
+			if (bspDir.exists()) {
+				status = new Status(IStatus.ERROR, "not_used", 0,
+						"Your BSP with name: " + bspName + " already exist under directory: " + bspDirStr + ", please change your bsp name!", null);
+			}
+		}
+
+		if (status.getSeverity() == IStatus.ERROR)
+			setErrorMessage(status.getMessage());
+
+		getWizard().getContainer().updateButtons();
+		canFlipToNextPage();
 	}
 
 	private Status checkBuildDir() {
@@ -292,18 +293,18 @@ public class MainPage extends WizardPage {
 		String buildLoc = textBuildLoc.getText();
 
 		if (buildLoc.isEmpty()) {
-			 buildLoc = metadataLoc + "/build";
-			 return createBuildDir(buildLoc);
+			buildLoc = metadataLoc + "/build";
+			return createBuildDir(buildLoc);
 		} else {
-			 File buildLocDir = new File(buildLoc);
-			 if (!buildLocDir.exists()) {
-				 return createBuildDir(buildLoc);
-			 } else if (buildLocDir.isDirectory()) {
+			File buildLocDir = new File(buildLoc);
+			if (!buildLocDir.exists()) {
+				return createBuildDir(buildLoc);
+			} else if (buildLocDir.isDirectory()) {
 				return createBuildDir(buildLoc);
-			 } else {
-				 return new Status(IStatus.ERROR, "not_used", 0, "Invalid build location: Make sure the build location is a directory!", null);
-			 }
-		 }
+			} else {
+				return new Status(IStatus.ERROR, "not_used", 0, "Invalid build location: Make sure the build location is a directory!", null);
+			}
+		}
 	}
 
 	private Status createBuildDir(String buildLoc) {
@@ -337,10 +338,6 @@ public class MainPage extends WizardPage {
 		return this.bspElem;
 	}
 
-	public void handleEvent(Event event) {
-		canFlipToNextPage();
-		getWizard().getContainer().updateButtons();
-	}
 
 	private void resetKarchCombo() {
 		comboKArch.deselectAll();
@@ -351,24 +348,26 @@ public class MainPage extends WizardPage {
 	}
 
 	private void kernelArchesHandler() {
-		ArrayList<String> karches = getKArches();
-		if (!karches.isEmpty()) {
-			String[] kitems = new String[karches.size()];
-			kitems = karches.toArray(kitems);
-			comboKArch.setItems(kitems);
+		BSPAction kArchesAction = getKArches();
+		if (kArchesAction.getMessage() == null && kArchesAction.getItems().length != 0) {
+			comboKArch.setItems(kArchesAction.getItems());
 			comboKArch.setEnabled(true);
+		} else if (kArchesAction.getMessage() != null){
+			setErrorMessage(kArchesAction.getMessage());
+			return;
 		}
-		ArrayList<String> qarches = getQArches();
-		if (!qarches.isEmpty()) {
-			String[] qitems = new String[qarches.size()];
-			qitems = qarches.toArray(qitems);
-			comboQArch.setItems(qitems);
-		}
+		BSPAction qArchesAction = getQArches();
+		if (qArchesAction.getMessage() == null && qArchesAction.getItems().length != 0) {
+			comboQArch.setItems(qArchesAction.getItems());
+		} else if (qArchesAction.getMessage() != null)
+			setErrorMessage(qArchesAction.getMessage());
+
 	}
 
+	@Override
 	public boolean canFlipToNextPage(){
 		String err = getErrorMessage();
-		if (err != null) 
+		if (err != null)
 			return false;
 		else if (!validatePage())
 			return false;
@@ -406,87 +405,30 @@ public class MainPage extends WizardPage {
 		bspElem.setMetadataLoc(metadataLoc);
 		bspElem.setKarch(karch);
 		bspElem.setQarch(qarch);
-		bspElem.setValidPropertiesFile(createPropertiesFile());
-
-		return true;
-	}
 
+//		boolean validPropertiesFile = true;
+//		BSPAction action = createPropertiesFile();
+//		if (action.getMessage() != null) {
+//			validPropertiesFile = false;
+//			setErrorMessage(action.getMessage());
+//		}
+//		bspElem.setValidPropertiesFile(validPropertiesFile);
 
-	private boolean createPropertiesFile() {
-		String create_properties_cmd = bspElem.getMetadataLoc() + "/scripts/" + 
-										PROPERTIES_CMD_PREFIX + bspElem.getKarch() + 
-										PROPERTIES_CMD_SURFIX + PROPERTIES_FILE;
-		try {
-			Runtime rt = Runtime.getRuntime();
-			Process proc = rt.exec(create_properties_cmd);
-			int exitVal = proc.waitFor();
-			if (exitVal != 0)
-				return false;
-			return true;
-		} catch (Throwable t) {
-			t.printStackTrace();
-			return false;
-		}
+		return true;
 	}
 
-	private ArrayList<String> getKArches() {
-		ArrayList<String> karches = new ArrayList<String>();
-
-		String get_karch_cmd = textMetadataLoc.getText() + "/scripts/" + KARCH_CMD;
-		try {
-			Runtime rt = Runtime.getRuntime();
-			Process proc = rt.exec(get_karch_cmd);
-			InputStream stdin = proc.getInputStream();
-			InputStreamReader isr = new InputStreamReader(stdin);
-			BufferedReader br = new BufferedReader(isr);
-			String line = null;
-
-			while ( (line = br.readLine()) != null) {
-				if (line.contains(":"))
-					continue;
-				line = line.replaceAll("^\\s+", "");
-				line = line.replaceAll("\\s+$", "");
-				karches.add(line);
-			}
-
-			proc.waitFor();
-
-		} catch (Throwable t) {
-			t.printStackTrace();
-		}
-
-		return karches;
+	private BSPAction getKArches() {
+		String getKArchCmd = textMetadataLoc.getText() + "/scripts/" + KARCH_CMD;
+		BSPProgressDialog progressDialog = new BSPProgressDialog(getShell(), new KernelArchGetter(getKArchCmd), "Loading kernel architectures ");
+		progressDialog.run();
+		return progressDialog.getBspAction();
 	}
 
-	private ArrayList<String> getQArches() {
-		ArrayList<String> qarches = new ArrayList<String>();
-
-		String get_qarch_cmd = textMetadataLoc.getText() + "/scripts/" + QARCH_CMD;
-		try {
-			Runtime rt = Runtime.getRuntime();
-			Process proc = rt.exec(get_qarch_cmd);
-			InputStream stdin = proc.getInputStream();
-			InputStreamReader isr = new InputStreamReader(stdin);
-			BufferedReader br = new BufferedReader(isr);
-			String line = null;
-
-			while ( (line = br.readLine()) != null) {
-				if (!line.startsWith("["))
-					continue;
-				String[] values = line.split(",");
-
-				String value = values[0];
-				value = value.replace("[\"", "");
-				value = value.replaceAll("\"$", "");
-				qarches.add(value);
-			}
-			proc.waitFor();
-
-		} catch (Throwable t) {
-			t.printStackTrace();
-		}
-
-		return qarches;
+	private BSPAction getQArches() {
+		String getQArchCmd = textMetadataLoc.getText() + "/scripts/" + QARCH_CMD;
+		BSPProgressDialog progressDialog = new BSPProgressDialog(getShell(), new QemuArchGetter(getQArchCmd), "Loading Qemu architectures ");
+		progressDialog.run();
+		return progressDialog.getBspAction();
 	}
 
 	public Button getBtnMetadataLoc() {
diff --git a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/wizards/bsp/OutputCollectorThread.java b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/wizards/bsp/OutputCollectorThread.java
new file mode 100644
index 0000000..df5fba5
--- /dev/null
+++ b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/wizards/bsp/OutputCollectorThread.java
@@ -0,0 +1,19 @@
+package org.yocto.sdk.remotetools.wizards.bsp;
+
+/**
+ * BSPThread that returns all the output lines of the process execution
+ * @author ioana.grigoropol
+ *
+ */
+public class OutputCollectorThread extends BSPThread{
+
+	public OutputCollectorThread(String command) {
+		super(command);
+	}
+
+	@Override
+	protected String[] processLine(String line) {
+		return new String[]{SUCCESS, line};
+	}
+
+}
diff --git a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/wizards/bsp/PropertiesPage.java b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/wizards/bsp/PropertiesPage.java
index a2f6e26..14719d0 100644
--- a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/wizards/bsp/PropertiesPage.java
+++ b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/wizards/bsp/PropertiesPage.java
@@ -10,18 +10,12 @@
  *******************************************************************************/
 package org.yocto.sdk.remotetools.wizards.bsp;
 
-import java.io.BufferedReader;
-import java.io.InputStreamReader;
-import java.util.ArrayList;
 import java.util.Enumeration;
 import java.util.HashSet;
 import java.util.Hashtable;
 import java.util.Iterator;
 
-import org.eclipse.core.runtime.IProgressMonitor;
 import org.eclipse.jface.dialogs.MessageDialog;
-import org.eclipse.jface.dialogs.ProgressMonitorDialog;
-import org.eclipse.jface.operation.IRunnableWithProgress;
 import org.eclipse.jface.wizard.WizardPage;
 import org.eclipse.swt.SWT;
 import org.eclipse.swt.custom.ScrolledComposite;
@@ -46,7 +40,7 @@ import org.yocto.sdk.remotetools.YoctoJSONHelper;
 /**
  *
  * Setting up the parameters for creating the new Yocto Bitbake project
- * 
+ *
  * @author jzhang
  */
 public class PropertiesPage extends WizardPage {
@@ -86,10 +80,10 @@ public class PropertiesPage extends WizardPage {
 	}
 
 	public void onEnterPage(YoctoBspElement element) {
-		if (!element.getValidPropertiesFile()) {
-			setErrorMessage("There's no valid properties file created, please choose \"Back\" to reselect kernel architecture!");
-			return;
-		}
+//		if (!element.getValidPropertiesFile()) {
+//			setErrorMessage("There's no valid properties file created, please choose \"Back\" to reselect kernel architecture!");
+//			return;
+//		}
 
 		if (this.bspElem == null || this.bspElem.getKarch().isEmpty() || !this.bspElem.getKarch().contentEquals(element.getKarch())) {
 			karch_changed = true;
@@ -115,20 +109,20 @@ public class PropertiesPage extends WizardPage {
 				smpButton.setText("SMP Support");
 				smpButton.setSelection(true);
 
-				kbGroup= new Group(controlContainer, SWT.NONE);		
-				kbGroup.setLayout(new FillLayout(SWT.VERTICAL));	
+				kbGroup= new Group(controlContainer, SWT.NONE);
+				kbGroup.setLayout(new FillLayout(SWT.VERTICAL));
 				kbGroup.setText("Kernel Branch Settings:");
 				newButton = new Button(kbGroup, SWT.RADIO);
 				newButton.setText("New");
 				newButton.setSelection(true);
-		    
+
 				existingButton = new Button(kbGroup, SWT.RADIO);
 				existingButton.setText("Existing");
 				existingButton.setSelection(false);
-		    
-		    	kbCombo = new Combo(kbGroup, SWT.DROP_DOWN | SWT.READ_ONLY);
-		    	
-			} 
+
+				kbCombo = new Combo(kbGroup, SWT.DROP_DOWN | SWT.READ_ONLY);
+
+			}
 		}
 		if (karch_changed) {
 			kbCombo.removeAll();
@@ -161,47 +155,47 @@ public class PropertiesPage extends WizardPage {
 					propertyControlMap = new Hashtable<YoctoBspPropertyElement, Control>();
 					Iterator<YoctoBspPropertyElement> it = properties.iterator();
 
-				    while (it.hasNext()) {
-				        // Get property
-				        YoctoBspPropertyElement propElem = (YoctoBspPropertyElement)it.next();
-				        String type  = propElem.getType();
-				        String name = propElem.getName();
-				        if (type.contentEquals("edit")) {
-				        	Composite textContainer = new Composite(propertyGroup, SWT.NONE);
-				        	
-				        	textContainer.setLayout(new FillLayout());
-				        	new Label (textContainer, SWT.NONE).setText(name+":");
-				        	Text text = new Text(textContainer, SWT.BORDER | SWT.SINGLE);
-				    		propertyControlMap.put(propElem, (Control)text);
-				    		
-				        } else if (type.contentEquals("boolean")) {
-				        	Composite booleanContainer = new Composite(propertyGroup, SWT.NONE);
-				        	
-				        	booleanContainer.setLayout(new FillLayout(SWT.VERTICAL));
-				        	
-				        	String default_value = propElem.getDefaultValue();
-				        	Button button = new Button(booleanContainer, SWT.CHECK);
-				    		button.setText(name);
-				    		if (default_value.equalsIgnoreCase("y")) {
-				    			button.setSelection(true);	
-				    		} else 
-				    			button.setSelection(false);
-				    		propertyControlMap.put(propElem, (Control)button);
-				    		
-				        } else if (type.contentEquals("choicelist")) {
-				        	Composite choiceContainer = new Composite(propertyGroup, SWT.NONE);
-				        	
-				        	choiceContainer.setLayout(new FillLayout());
-				        	
-				        	new Label (choiceContainer, SWT.NONE).setText(name+":");
-				        	Combo combo = new Combo(choiceContainer, SWT.BORDER | SWT.READ_ONLY);
-				    		combo.setLayout(new FillLayout());
-
-						updateKernelValues(KERNEL_CHOICES, name);
-
-				    		propertyControlMap.put(propElem, (Control)combo);
-				        }
-				    }
+					while (it.hasNext()) {
+						// Get property
+						YoctoBspPropertyElement propElem = it.next();
+						String type  = propElem.getType();
+						String name = propElem.getName();
+						if (type.contentEquals("edit")) {
+							Composite textContainer = new Composite(propertyGroup, SWT.NONE);
+
+							textContainer.setLayout(new FillLayout());
+							new Label (textContainer, SWT.NONE).setText(name+":");
+							Text text = new Text(textContainer, SWT.BORDER | SWT.SINGLE);
+							propertyControlMap.put(propElem, text);
+
+						} else if (type.contentEquals("boolean")) {
+							Composite booleanContainer = new Composite(propertyGroup, SWT.NONE);
+
+							booleanContainer.setLayout(new FillLayout(SWT.VERTICAL));
+
+							String default_value = propElem.getDefaultValue();
+							Button button = new Button(booleanContainer, SWT.CHECK);
+							button.setText(name);
+							if (default_value.equalsIgnoreCase("y")) {
+								button.setSelection(true);
+							} else
+								button.setSelection(false);
+							propertyControlMap.put(propElem, button);
+
+						} else if (type.contentEquals("choicelist")) {
+							Composite choiceContainer = new Composite(propertyGroup, SWT.NONE);
+
+							choiceContainer.setLayout(new FillLayout());
+
+							new Label (choiceContainer, SWT.NONE).setText(name+":");
+							Combo combo = new Combo(choiceContainer, SWT.BORDER | SWT.READ_ONLY);
+							combo.setLayout(new FillLayout());
+
+							updateKernelValues(KERNEL_CHOICES, name);
+
+							propertyControlMap.put(propElem, combo);
+						}
+					}
 				}
 
 			}
@@ -216,31 +210,37 @@ public class PropertiesPage extends WizardPage {
 
 		this.composite.layout(true, true);
 		kcCombo.addModifyListener(new ModifyListener() {
+			@Override
 			public void modifyText(ModifyEvent e) {
 				controlChanged(e.widget);
 			}
 		});
 
 
-	    newButton.addSelectionListener(new SelectionListener() {
-	    	public void widgetDefaultSelected(SelectionEvent e) {}
-	    	
-	    	public void widgetSelected(SelectionEvent e) {
+		newButton.addSelectionListener(new SelectionListener() {
+			@Override
+			public void widgetDefaultSelected(SelectionEvent e) {}
+
+			@Override
+			public void widgetSelected(SelectionEvent e) {
 				controlChanged(e.widget);
 			}
 		});
-	    
-	   
-	    existingButton.addSelectionListener(new SelectionListener() {
-	    	public void widgetDefaultSelected(SelectionEvent e) {}
-	    	
-	    	public void widgetSelected(SelectionEvent e) {
+
+
+		existingButton.addSelectionListener(new SelectionListener() {
+			@Override
+			public void widgetDefaultSelected(SelectionEvent e) {}
+
+			@Override
+			public void widgetSelected(SelectionEvent e) {
 				controlChanged(e.widget);
 			}
 		});
-	    
-	    
+
+
 		kbCombo.addModifyListener(new ModifyListener() {
+			@Override
 			public void modifyText(ModifyEvent e) {
 				controlChanged(e.widget);
 			}
@@ -250,6 +250,7 @@ public class PropertiesPage extends WizardPage {
 	}
 
 
+	@Override
 	public void createControl(Composite parent) {
 		this.composite = new Composite(parent, SWT.NONE);
 		GridData gd = new GridData(SWT.FILL, SWT.CENTER, true, false);
@@ -263,6 +264,7 @@ public class PropertiesPage extends WizardPage {
 		setControl(this.composite);
 	}
 
+	@Override
 	public boolean canFlipToNextPage() {
 		return false;
 	}
@@ -310,7 +312,7 @@ public class PropertiesPage extends WizardPage {
 
 	public boolean validatePage() {
 		if (kcCombo == null)
-			return false; 
+			return false;
 
 		if ((kcCombo != null) && (kbCombo != null)) {
 			String kcSelection = kcCombo.getText();
@@ -320,11 +322,11 @@ public class PropertiesPage extends WizardPage {
 				return false;
 			}
 		}
-		if ((propertyControlMap != null)) { 
+		if ((propertyControlMap != null)) {
 			if (!propertyControlMap.isEmpty()) {
 				Enumeration<YoctoBspPropertyElement> keys = propertyControlMap.keys();
 				while( keys.hasMoreElements() ) {
-					YoctoBspPropertyElement key = (YoctoBspPropertyElement)keys.nextElement();
+					YoctoBspPropertyElement key = keys.nextElement();
 					Control control = propertyControlMap.get(key);
 					String type = key.getType();
 
@@ -361,162 +363,69 @@ public class PropertiesPage extends WizardPage {
 	private void updateProperties(YoctoBspPropertyElement element) {
 		Iterator<YoctoBspPropertyElement> it = properties.iterator();
 		while (it.hasNext()) {
-			YoctoBspPropertyElement propElem = (YoctoBspPropertyElement)it.next();
+			YoctoBspPropertyElement propElem = it.next();
 			if (propElem.getName().contentEquals(element.getName())) {
-				properties.remove((Object) propElem);
+				properties.remove(propElem);
 				properties.add(element);
 				break;
-			} else 
+			} else
 				continue;
 		}
- 	}
-	private void controlChanged(Widget widget) {
-		 setErrorMessage(null);
-		 
-		 String kernel_choice = kcCombo.getText();
-		 if ((kernel_choice == null) || (kernel_choice.isEmpty())) {
-			 setErrorMessage("Please selecte kernel_choice!");
-			 return;
-		 }
-		 if (widget == kcCombo) {
-			 newButton.setSelection(true);
-			 existingButton.setSelection(false);
-			 kbCombo.removeAll();
-			 
-			 updateKernelValues(KERNEL_BRANCHES, "\\\"" + kernel_choice + "\\\"." + NEW_KBRANCH_NAME);
-		 } else if (widget == kbCombo) {
-			 setErrorMessage(null);
-		 } else if (widget == newButton) {
-			 
-			 boolean newBranch = newButton.getSelection();
-			 
-			 if (newBranch) {
-				 updateKernelValues(KERNEL_BRANCHES, "\"" + kernel_choice + "\"." + NEW_KBRANCH_NAME);
-			 } else {
-				 updateKernelValues(KERNEL_BRANCHES, "\"" + kernel_choice + "\"." + EXISTING_KBRANCH_NAME);
-			 }
-		 } else if (widget == existingButton) {
-			 boolean existingBranch = existingButton.getSelection();
-
-			 if (existingBranch) {
-				 updateKernelValues(KERNEL_BRANCHES, "\"" + kernel_choice + "\"." + EXISTING_KBRANCH_NAME);
-			 }
-		 }
-		 canFlipToNextPage();
-		 getWizard().getContainer().updateButtons();
 	}
+	private void controlChanged(Widget widget) {
+		setErrorMessage(null);
 
-	private void updateKernelValues(final String value, String property) {
-		final ValuesGetter runnable  = new ValuesGetter(property);
-
-		ProgressMonitorDialog dialog = new ProgressMonitorDialog(getShell());
-		try {
-			dialog.run(true, true, new IRunnableWithProgress(){
-			     public void run(IProgressMonitor monitor) {
-			         monitor.beginTask("Loading Kernel " + value + " ...", 100);
-			         runnable.run();
-			         monitor.done();
-			     }
-			 });
-		} catch (Exception e) {
-			runnable.getBspAction().setMessage(e.getMessage());
+		String kernel_choice = kcCombo.getText();
+		if ((kernel_choice == null) || (kernel_choice.isEmpty())) {
+			setErrorMessage("Please selecte kernel_choice!");
+			return;
 		}
+		if (widget == kcCombo) {
+			newButton.setSelection(true);
+			existingButton.setSelection(false);
+			kbCombo.removeAll();
 
-		BSPAction action = runnable.getBspAction();
-		if (action.getItems() != null) {
-			if (value == KERNEL_CHOICES)
-				kcCombo.setItems(action.getItems());
-			else if (value == KERNEL_BRANCHES)
-				kbCombo.setItems(action.getItems());
-		} else if (action.getMessage() != null)
-			MessageDialog.openError(getShell(), "Yocto-BSP", action.getMessage());
-	}
-
-	class ValuesGetter implements Runnable {
-		private String property;
-		private BSPAction bspAction;
-
-		public ValuesGetter(String property) {
-			this.property = property;
-			this.bspAction = new BSPAction(null, null);
-		}
+			updateKernelValues(KERNEL_BRANCHES, "\\\"" + kernel_choice + "\\\"." + NEW_KBRANCH_NAME);
+		} else if (widget == kbCombo) {
+			setErrorMessage(null);
+		} else if (widget == newButton) {
 
-		public void run() {
-			ArrayList<String> values = new ArrayList<String>();
-
-			String build_dir = "";
-			if ((bspElem.getBuildLoc() == null) || bspElem.getBuildLoc().isEmpty())
-				build_dir = bspElem.getMetadataLoc()+"/build";
-			else
-				build_dir = bspElem.getBuildLoc();
-
-			String values_cmd = "export BUILDDIR=" + build_dir + ";" + bspElem.getMetadataLoc() + "/scripts/" + VALUES_CMD_PREFIX + bspElem.getKarch() + VALUES_CMD_SURFIX + property;
-			try {
-				ProcessBuilder builder = new ProcessBuilder(new String[] {"sh", "-c", values_cmd});
-				builder.redirectErrorStream(true);
-				Process process = builder.start();
-				BufferedReader br = new BufferedReader(new InputStreamReader(process.getInputStream()));
-				String line = null;
-				String error_message = "";
-				while ( (line = br.readLine()) != null) {
-					if (!line.startsWith("[")) {
-						error_message += line + "\n";
-						continue;
-					}
-					String[] items = line.split(",");
+			boolean newBranch = newButton.getSelection();
 
-					String value = items[0];
-					value = value.replace("[\"", "");
-					value = value.replaceAll("\"$", "");
-					values.add(value);
-				}
-				int exitVal = process.waitFor();
-				if (exitVal != 0) {
-					bspAction.setMessage(error_message);
-					bspAction.setItems(null);
-				}
-			} catch (Exception e) {
-				bspAction.setItems(null);
-				bspAction.setMessage(e.getMessage());
-			}
-			if (!values.isEmpty()) {
-				bspAction.setItems(values.toArray(new String[values.size()]));
-				bspAction.setMessage(null);
+			if (newBranch) {
+				updateKernelValues(KERNEL_BRANCHES, "\"" + kernel_choice + "\"." + NEW_KBRANCH_NAME);
+			} else {
+				updateKernelValues(KERNEL_BRANCHES, "\"" + kernel_choice + "\"." + EXISTING_KBRANCH_NAME);
 			}
-		}
-
-		public BSPAction getBspAction() {
-			return bspAction;
-		}
+		} else if (widget == existingButton) {
+			boolean existingBranch = existingButton.getSelection();
 
-		public void setBspAction(BSPAction bspAction) {
-			this.bspAction = bspAction;
+			if (existingBranch) {
+				updateKernelValues(KERNEL_BRANCHES, "\"" + kernel_choice + "\"." + EXISTING_KBRANCH_NAME);
+			}
 		}
+		canFlipToNextPage();
+		getWizard().getContainer().updateButtons();
 	}
 
-	class BSPAction {
-		private String[] items;
-		private String message;
-
-		BSPAction(String[] items, String message){
-			this.setItems(items);
-			this.setMessage(message);
-		}
-
-		public String[] getItems() {
-			return items;
-		}
-
-		public void setItems(String[] items) {
-			this.items = items;
-		}
+	private void updateKernelValues(final String value, String property) {
+		String build_dir = "";
+		if ((bspElem.getBuildLoc() == null) || bspElem.getBuildLoc().isEmpty())
+			build_dir = bspElem.getMetadataLoc()+"/build";
+		else
+			build_dir = bspElem.getBuildLoc();
 
-		public String getMessage() {
-			return message;
-		}
+		String valuesCmd = "export BUILDDIR=" + build_dir + ";" + bspElem.getMetadataLoc() + "/scripts/" + VALUES_CMD_PREFIX + bspElem.getKarch() + VALUES_CMD_SURFIX + property;
 
-		public void setMessage(String message) {
-			this.message = message;
-		}
+		BSPProgressDialog progressDialog = new BSPProgressDialog(getShell(),  new KernelBranchesGetter(valuesCmd), "Loading Kernel " + value);
+		progressDialog.run();
+		BSPAction action = progressDialog.getBspAction();
+		if (action.getItems() != null) {
+			if (value == KERNEL_CHOICES)
+				kcCombo.setItems(action.getItems());
+			else if (value == KERNEL_BRANCHES)
+				kbCombo.setItems(action.getItems());
+		} else if (action.getMessage() != null)
+			MessageDialog.openError(getShell(), "Yocto-BSP", action.getMessage());
 	}
 }
diff --git a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/wizards/bsp/QemuArchGetter.java b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/wizards/bsp/QemuArchGetter.java
new file mode 100644
index 0000000..e235695
--- /dev/null
+++ b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/wizards/bsp/QemuArchGetter.java
@@ -0,0 +1,27 @@
+package org.yocto.sdk.remotetools.wizards.bsp;
+
+/**
+ * BSPThread that processes the output of running "yocto-bsp list qemu property qemuarch"
+ * @author ioana.grigoropol
+ *
+ */
+public class QemuArchGetter extends BSPThread {
+
+	public QemuArchGetter(String command) {
+		super(command);
+	}
+
+	@Override
+	protected String[] processLine(String line) {
+		if (!line.startsWith("["))
+			return new String[]{ERROR, line + "\n"};
+
+		String[] values = line.split(",");
+
+		String value = values[0];
+		value = value.replace("[\"", "");
+		value = value.replaceAll("\"$", "");
+		return new String[]{SUCCESS, value};
+	}
+
+}
diff --git a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/wizards/bsp/YoctoBSPWizard.java b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/wizards/bsp/YoctoBSPWizard.java
index 454a705..eecc200 100644
--- a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/wizards/bsp/YoctoBSPWizard.java
+++ b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/wizards/bsp/YoctoBSPWizard.java
@@ -10,9 +10,6 @@
  *******************************************************************************/
 package org.yocto.sdk.remotetools.wizards.bsp;
 
-import java.io.BufferedReader;
-import java.io.InputStream;
-import java.io.InputStreamReader;
 import java.util.HashSet;
 
 import org.eclipse.jface.dialogs.MessageDialog;
@@ -24,29 +21,32 @@ import org.yocto.sdk.remotetools.YoctoJSONHelper;
 
 /**
  * A wizard for creating Yocto BSP.
- * 
+ *
  * @author jzhang
- * 
+ *
  */
 public class YoctoBSPWizard extends Wizard {
 	private static final String CREATE_CMD = "/scripts/yocto-bsp create ";
 	private static final String PROPERTY_VALUE_FILE = "/tmp/propertyvalues.json";
-	
+	private static final String PROPERTIES_CMD_PREFIX = "yocto-bsp list ";
+	private static final String PROPERTIES_CMD_SURFIX = " properties -o ";
+	private static final String PROPERTIES_FILE = "/tmp/properties.json";
+
 	private MainPage mainPage;
 	private PropertiesPage propertiesPage;
-	private YoctoBspElement bspElem;
+	private final YoctoBspElement bspElem;
 
 	public YoctoBSPWizard() {
 		super();
 		bspElem = new YoctoBspElement();
 	}
 
-	@Override 
+	@Override
 	public IWizardPage getNextPage(IWizardPage page) {
 		propertiesPage.onEnterPage(mainPage.getBSPElement());
 		return propertiesPage;
 	}
-	 
+
 	@Override
 	public void addPages() {
 		mainPage = new MainPage(bspElem);
@@ -55,54 +55,63 @@ public class YoctoBSPWizard extends Wizard {
 		addPage(propertiesPage);
 	}
 
+	private BSPAction createPropertiesFile() {
+		String createPropertiesCmd = bspElem.getMetadataLoc() + "/scripts/" +
+				PROPERTIES_CMD_PREFIX + bspElem.getKarch() +
+				PROPERTIES_CMD_SURFIX + PROPERTIES_FILE;
+		BSPProgressDialog progressDialog = new BSPProgressDialog(getShell(),  new ErrorCollectorThread(createPropertiesCmd), "Creating properties file ");
+		progressDialog.run();
+		return progressDialog.getBspAction();
+	}
+
+	private BSPAction createBSP(){
+		YoctoBspElement element = mainPage.getBSPElement();
+		String createBspCmd = element.getMetadataLoc() + CREATE_CMD +
+								element.getBspName() + " " + element.getKarch();
+
+		if (!element.getBspOutLoc().isEmpty())
+			createBspCmd = createBspCmd + " -o " + element.getBspOutLoc();
+		else
+			createBspCmd = createBspCmd + " -o " + element.getMetadataLoc() + "/meta-" + element.getBspName();
+		createBspCmd = createBspCmd + " -i " + PROPERTY_VALUE_FILE;
+
+		BSPProgressDialog progressDialog = new BSPProgressDialog(getShell(),  new OutputCollectorThread(createBspCmd), "Creating BSP ");
+		progressDialog.run();
+		return progressDialog.getBspAction();
+	}
+
 	@Override
 	public boolean performFinish() {
 		if (propertiesPage.validatePage()) {
 			HashSet<YoctoBspPropertyElement> properties = propertiesPage.getProperties();
 			YoctoJSONHelper.createBspJSONFile(properties);
-			YoctoBspElement element = mainPage.getBSPElement();
-			
-			String create_bsp_cmd = element.getMetadataLoc() + CREATE_CMD + 
-									element.getBspName() + " " + element.getKarch();
-			
-			if (!element.getBspOutLoc().isEmpty())
-				create_bsp_cmd = create_bsp_cmd + " -o " + element.getBspOutLoc();
-			else
-				create_bsp_cmd = create_bsp_cmd + " -o " + element.getMetadataLoc() + "/meta-" + element.getBspName();
-			create_bsp_cmd = create_bsp_cmd + " -i " + PROPERTY_VALUE_FILE;
-			
-			try {
-				Runtime rt = Runtime.getRuntime();
-				Process proc = rt.exec(create_bsp_cmd);
-				InputStream stdin = proc.getInputStream();
-				InputStreamReader isr = new InputStreamReader(stdin);
-				BufferedReader br = new BufferedReader(isr);
-				String line = null;
-				String error_message = "";
-				
-				while ( (line = br.readLine()) != null) {
-					error_message = error_message + line;
-				}
-				
-				int exitVal = proc.waitFor();
-				if (exitVal != 0) {
-					MessageDialog.openError(getShell(),"Yocto-BSP", error_message);
-					return false;
-				} else {
-					MessageDialog.openInformation(getShell(), "Yocto-BSP", error_message);
-					return true;
-				}
-			} catch (Throwable t) {
-				t.printStackTrace();
+
+
+			BSPAction createPropertiesAction = createPropertiesFile();
+			if (createPropertiesAction.getMessage() !=  null && !createPropertiesAction.getMessage().isEmpty()) {
+				MessageDialog.openError(getShell(),"Yocto-BSP", createPropertiesAction.getMessage());
 				return false;
 			}
+
+			BSPAction createBSPAction = createBSP();
+			if (createBSPAction.getMessage() !=  null && !createBSPAction.getMessage().isEmpty()) {
+				MessageDialog.openError(getShell(),"Yocto-BSP", createBSPAction.getMessage());
+				return false;
+			} else {
+				String message = "";
+				for (String item : createBSPAction.getItems())
+					message += item + "\n";
+				MessageDialog.openInformation(getShell(), "Yocto-BSP", message);
+				return true;
+			}
 		} else {
 			MessageDialog.openError(getShell(), "Yocto-BSP", "Property settings contains error!");
 			return false;
 		}
-		
+
 	}
-	
+
+	@Override
 	public boolean canFinish() {
 		return (mainPage.validatePage() && propertiesPage.validatePage());
 	}
-- 
1.7.9.5


