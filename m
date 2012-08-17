Return-Path: <ioanax.grigoropol@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 75364E00344
	for <yocto@yoctoproject.org>; Fri, 17 Aug 2012 06:15:59 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 17 Aug 2012 06:15:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.77,784,1336374000"; d="scan'208";a="187726772"
Received: from ideapad (HELO localhost.localdomain) ([10.237.105.40])
	by orsmga002.jf.intel.com with ESMTP; 17 Aug 2012 06:15:57 -0700
From: Ioana Grigoropol <ioanax.grigoropol@intel.com>
To: yocto@yoctoproject.org
Date: Fri, 17 Aug 2012 16:14:32 +0300
Message-Id: <1345209272-5296-2-git-send-email-ioanax.grigoropol@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1345209272-5296-1-git-send-email-ioanax.grigoropol@intel.com>
References: <1345209272-5296-1-git-send-email-ioanax.grigoropol@intel.com>
Cc: Ioana Grigoropol <ioanax.grigoropol@intel.com>
Subject: [PATCH 3/3] [PATCH] Processes that execute shell commands block the Yocto-BSP interface
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
X-List-Received-Date: Fri, 17 Aug 2012 13:15:59 -0000

        - send processes that execute shell commands in the background
and show progress dialog
        - retrieve status of the background executions & items collected

Signed-off-by: Ioana Grigoropol <ioanax.grigoropol@intel.com>
---
 .../remotetools/wizards/bsp/PropertiesPage.java    |  200 ++++++++++++--------
 1 file changed, 123 insertions(+), 77 deletions(-)

diff --git a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/wizards/bsp/PropertiesPage.java b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/wizards/bsp/PropertiesPage.java
index 4661b37..4dba5a6 100644
--- a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/wizards/bsp/PropertiesPage.java
+++ b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/wizards/bsp/PropertiesPage.java
@@ -11,7 +11,6 @@
 package org.yocto.sdk.remotetools.wizards.bsp;
 
 import java.io.BufferedReader;
-import java.io.InputStream;
 import java.io.InputStreamReader;
 import java.util.ArrayList;
 import java.util.Enumeration;
@@ -19,7 +18,10 @@ import java.util.HashSet;
 import java.util.Hashtable;
 import java.util.Iterator;
 
+import org.eclipse.core.runtime.IProgressMonitor;
 import org.eclipse.jface.dialogs.MessageDialog;
+import org.eclipse.jface.dialogs.ProgressMonitorDialog;
+import org.eclipse.jface.operation.IRunnableWithProgress;
 import org.eclipse.jface.wizard.WizardPage;
 import org.eclipse.swt.SWT;
 import org.eclipse.swt.custom.ScrolledComposite;
@@ -59,6 +61,9 @@ public class PropertiesPage extends WizardPage {
 	private static final String NEW_KBRANCH_NAME = "new_kbranch";
 	private static final String QARCH_NAME = "qemuarch";
 	
+	private static final String KERNEL_CHOICES = "choices";
+	private static final String KERNEL_BRANCHES = "branches";
+	
 	private Hashtable<YoctoBspPropertyElement, Control> propertyControlMap;
 	HashSet<YoctoBspPropertyElement> properties;
 	private Composite composite;
@@ -81,9 +86,8 @@ public class PropertiesPage extends WizardPage {
 	}
 
 	public void onEnterPage(YoctoBspElement element) {
-		String[] values;
 		if (!element.getValidPropertiesFile()) {
-			setErrorMessage("There's no valid properties file created, please choose \"Back\" to reselect kernel architectur!");
+			setErrorMessage("There's no valid properties file created, please choose \"Back\" to reselect kernel architecture!");
 			return;
 		}
 		
@@ -131,9 +135,7 @@ public class PropertiesPage extends WizardPage {
 			newButton.setSelection(true);
 			existingButton.setSelection(false);
 			
-			values = getValues(KERNEL_CHOICE);
-			if (values != null)
-				kcCombo.setItems(values);
+			updateKernelValues(KERNEL_CHOICES, KERNEL_CHOICE);
 		}
 		
 		try {
@@ -194,10 +196,9 @@ public class PropertiesPage extends WizardPage {
 				        	new Label (choiceContainer, SWT.NONE).setText(name+":");
 				        	Combo combo = new Combo(choiceContainer, SWT.BORDER | SWT.READ_ONLY);
 				    		combo.setLayout(new FillLayout());
-				        	
-				    		values = getValues(name);
-				    		if (values != null)
-				    			combo.setItems(values);
+				    		
+				    		updateKernelValues(KERNEL_CHOICES, name);
+				    		
 				    		propertyControlMap.put(propElem, (Control)combo);
 				        }
 				    }
@@ -278,10 +279,6 @@ public class PropertiesPage extends WizardPage {
 		default_element.setValue("n");
 		properties.add(default_element);
 	
-		//kcSelection = kcSelection.replaceAll("-", "_");
-		//kcSelection = kcSelection.replace(".", "_");
-		//String smp_name = "";
-		//smp_name = SMP_PREFIX + kcSelection;
 		YoctoBspPropertyElement smp_element = new YoctoBspPropertyElement();
 		smp_element.setName(SMP_NAME);
 		if (smpButton.getSelection())
@@ -375,7 +372,6 @@ public class PropertiesPage extends WizardPage {
  	}
 	private void controlChanged(Widget widget) {
 		 setErrorMessage(null);
-		 String kb_property;
 		 
 		 String kernel_choice = kcCombo.getText();
 		 if ((kernel_choice == null) || (kernel_choice.isEmpty())) {
@@ -387,90 +383,140 @@ public class PropertiesPage extends WizardPage {
 			 existingButton.setSelection(false);
 			 kbCombo.removeAll();
 			 
-			 kb_property = "\\\"" + kernel_choice + "\\\"."+NEW_KBRANCH_NAME;
-			 String[] values = getValues(kb_property);
-			 if (values != null)
-				 kbCombo.setItems(values);
-		 }
-		 if (widget == kbCombo) {
+			 updateKernelValues(KERNEL_BRANCHES, "\\\"" + kernel_choice + "\\\"." + NEW_KBRANCH_NAME);
+		 } else if (widget == kbCombo) {
 			 setErrorMessage(null);
-		 }
-		 if (widget == newButton) {
+		 } else if (widget == newButton) {
 			 
 			 boolean newBranch = newButton.getSelection();
 			 
 			 if (newBranch) {
-				 kb_property = "\"" + kernel_choice + "\"."+NEW_KBRANCH_NAME;
-				 String[] values = getValues(kb_property);
-				 if (values != null)
-					 kbCombo.setItems(values);
+				 updateKernelValues(KERNEL_BRANCHES, "\"" + kernel_choice + "\"." + NEW_KBRANCH_NAME);
 			 } else {
-				 kb_property = "\"" + kernel_choice + "\"."+EXISTING_KBRANCH_NAME;
-				 String[] values = getValues(kb_property);
-				 if (values != null)
-					 kbCombo.setItems(values);
+				 updateKernelValues(KERNEL_BRANCHES, "\"" + kernel_choice + "\"." + EXISTING_KBRANCH_NAME);
 			 }
-		 }
-		 if (widget == existingButton) {
+		 } else if (widget == existingButton) {
 			 boolean existingBranch = existingButton.getSelection();
 			
 			 if (existingBranch) {
-				 kb_property = "\"" + kernel_choice + "\"."+EXISTING_KBRANCH_NAME;
-				 String[] values = getValues(kb_property);
-				 if (values != null)
-					 kbCombo.setItems(values);
+				 updateKernelValues(KERNEL_BRANCHES, "\"" + kernel_choice + "\"." + EXISTING_KBRANCH_NAME);
 			 }
 		 }
 		 canFlipToNextPage();
 		 getWizard().getContainer().updateButtons();
 	}
 	
-	private String[] getValues(String property) {
-		ArrayList<String> values = new ArrayList<String>();
+	private void updateKernelValues(final String value, String property) {
+		final ValuesGetter runnable  = new ValuesGetter(property);
 		
-		String build_dir = "";
-		if ((bspElem.getBuildLoc() == null) || bspElem.getBuildLoc().isEmpty())
-			build_dir = bspElem.getMetadataLoc()+"/build";
-		else
-			build_dir = bspElem.getBuildLoc();
-		
-		String values_cmd = "export BUILDDIR=" + build_dir + ";"+bspElem.getMetadataLoc() + "/scripts/" + VALUES_CMD_PREFIX + bspElem.getKarch() + VALUES_CMD_SURFIX + property;
-	
+		ProgressMonitorDialog dialog = new ProgressMonitorDialog(getShell());
 		try {
-			Runtime rt = Runtime.getRuntime();
+			dialog.run(true, true, new IRunnableWithProgress(){
+			     public void run(IProgressMonitor monitor) {
+			         monitor.beginTask("Loading Kernel " + value + " ...", 100);
+			         runnable.run();
+			         monitor.done();
+			     }
+			 });
+		} catch (Exception e) {
+			runnable.getBspAction().setMessage(e.getMessage());
+		} 
+	
+		BSPAction action = runnable.getBspAction();
+		if (action.getItems() != null) {
+			if (value == KERNEL_CHOICES)
+				kcCombo.setItems(action.getItems());
+			else if (value == KERNEL_BRANCHES)
+				kbCombo.setItems(action.getItems());
+		} else if (action.getMessage() != null)
+			MessageDialog.openError(getShell(), "Yocto-BSP", action.getMessage());
+	}
 	
-			Process proc = rt.exec(new String[] {"sh", "-c", values_cmd});
-			InputStream stdin = proc.getInputStream();
-			InputStreamReader isr = new InputStreamReader(stdin);
-			BufferedReader br = new BufferedReader(isr);
-			String line = null;
-			String error_message = "";
+	class ValuesGetter implements Runnable {
+		private String property;
+		private BSPAction bspAction;
+		
+		public ValuesGetter(String property) {
+			this.property = property;
+			this.bspAction = new BSPAction(null, null);
+		}
+		
+		public void run() {
+			ArrayList<String> values = new ArrayList<String>();
+			
+			String build_dir = "";
+			if ((bspElem.getBuildLoc() == null) || bspElem.getBuildLoc().isEmpty())
+				build_dir = bspElem.getMetadataLoc()+"/build";
+			else
+				build_dir = bspElem.getBuildLoc();
 			
-			while ( (line = br.readLine()) != null) {
-				if (!line.startsWith("[")) {
-					error_message = error_message + line;
-					continue;
+			String values_cmd = "export BUILDDIR=" + build_dir + ";" + bspElem.getMetadataLoc() + "/scripts/" + VALUES_CMD_PREFIX + bspElem.getKarch() + VALUES_CMD_SURFIX + property;
+			try {
+				ProcessBuilder builder = new ProcessBuilder(new String[] {"sh", "-c", values_cmd});
+				builder.redirectErrorStream(true);
+				Process process = builder.start();
+				BufferedReader br = new BufferedReader(new InputStreamReader(process.getInputStream()));
+				String line = null;
+				String error_message = "";
+				while ( (line = br.readLine()) != null) {
+					if (!line.startsWith("[")) {
+						error_message += line + "\n";
+						continue;
+					}
+					String[] items = line.split(",");
+					
+					String value = items[0];
+					value = value.replace("[\"", "");
+					value = value.replaceAll("\"$", "");
+					values.add(value);
 				}
-				String[] items = line.split(",");
-				
-				String value = items[0];
-				value = value.replace("[\"", "");
-				value = value.replaceAll("\"$", "");
-				values.add(value);
+				int exitVal = process.waitFor();
+				if (exitVal != 0) {
+					bspAction.setMessage(error_message);
+					bspAction.setItems(null);
+				} 
+			} catch (Exception e) {
+				bspAction.setItems(null);
+				bspAction.setMessage(e.getMessage());
+			}
+			if (!values.isEmpty()) {
+				bspAction.setItems(values.toArray(new String[values.size()]));
+				bspAction.setMessage(null);
 			}
-			int exitVal = proc.waitFor();
-			if (exitVal != 0) {
-				MessageDialog.openError(getShell(),"Yocto-BSP", error_message);
-				return null;
-			} 
-		} catch (Throwable t) {
-			t.printStackTrace();
 		}
-		if (!values.isEmpty()) {
-			String[] vitems = new String[values.size()];
-			vitems = values.toArray(vitems);
-			return vitems;
-		} else
-			return null;
+
+		public BSPAction getBspAction() {
+			return bspAction;
+		}
+
+		public void setBspAction(BSPAction bspAction) {
+			this.bspAction = bspAction;
+		}
+	}
+	
+	class BSPAction {
+		private String[] items;
+		private String message;
+		
+		BSPAction(String[] items, String message){
+			this.setItems(items);
+			this.setMessage(message);
+		}
+
+		public String[] getItems() {
+			return items;
+		}
+
+		public void setItems(String[] items) {
+			this.items = items;
+		}
+
+		public String getMessage() {
+			return message;
+		}
+
+		public void setMessage(String message) {
+			this.message = message;
+		}
 	}
 }
-- 
1.7.9.5


