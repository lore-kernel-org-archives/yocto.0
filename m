Return-Path: <ioanax.grigoropol@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3CE59E01245
	for <yocto@yoctoproject.org>; Thu, 16 Aug 2012 08:06:17 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 16 Aug 2012 08:06:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.77,778,1336374000"; d="scan'208";a="135011227"
Received: from ideapad (HELO localhost.localdomain) ([10.237.105.40])
	by AZSMGA002.ch.intel.com with ESMTP; 16 Aug 2012 08:06:15 -0700
From: Ioana Grigoropol <ioanax.grigoropol@intel.com>
To: yocto@yoctoproject.org
Date: Thu, 16 Aug 2012 18:04:45 +0300
Message-Id: <1345129487-10568-1-git-send-email-ioanax.grigoropol@intel.com>
X-Mailer: git-send-email 1.7.9.5
Cc: Ioana Grigoropol <ioanax.grigoropol@intel.com>
Subject: [PATCH 1/3] - Code clean-up & refactoring on Yocto-BSP pages & wizards
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
X-List-Received-Date: Thu, 16 Aug 2012 15:06:17 -0000

---
 .../sdk/remotetools/wizards/bsp/MainPage.java      |  261 +++++++++++---------
 .../remotetools/wizards/bsp/PropertiesPage.java    |   26 +-
 .../remotetools/wizards/bsp/YoctoBSPWizard.java    |   33 +--
 3 files changed, 152 insertions(+), 168 deletions(-)

diff --git a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/wizards/bsp/MainPage.java b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/wizards/bsp/MainPage.java
index d80dd75..b729ad1 100644
--- a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/wizards/bsp/MainPage.java
+++ b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/wizards/bsp/MainPage.java
@@ -20,24 +20,21 @@ import org.eclipse.core.runtime.IStatus;
 import org.eclipse.core.runtime.Status;
 import org.eclipse.jface.wizard.WizardPage;
 import org.eclipse.swt.SWT;
-import org.eclipse.swt.widgets.Event;
 import org.eclipse.swt.events.ModifyEvent;
 import org.eclipse.swt.events.ModifyListener;
 import org.eclipse.swt.events.SelectionAdapter;
 import org.eclipse.swt.events.SelectionEvent;
 import org.eclipse.swt.layout.GridData;
 import org.eclipse.swt.layout.GridLayout;
-import org.eclipse.swt.widgets.Widget;
 import org.eclipse.swt.widgets.Button;
 import org.eclipse.swt.widgets.Combo;
 import org.eclipse.swt.widgets.Composite;
 import org.eclipse.swt.widgets.Control;
 import org.eclipse.swt.widgets.DirectoryDialog;
-
+import org.eclipse.swt.widgets.Event;
 import org.eclipse.swt.widgets.Label;
 import org.eclipse.swt.widgets.Text;
-
-
+import org.eclipse.swt.widgets.Widget;
 import org.yocto.sdk.remotetools.YoctoBspElement;
 
 /**
@@ -47,10 +44,7 @@ import org.yocto.sdk.remotetools.YoctoBspElement;
  * @author jzhang
  */
 public class MainPage extends WizardPage {
-	public static final String PAGE_NAME = "Main";
-	private static final String META_DATA_LOC = "MetadataLoc";
-	private static final String BSP_OUT_LOC = "BspOutLoc";
-	private static final String BUILD_DIR_LOC = "BuilddirLoc";
+	public static  final String  PAGE_NAME = "Main";
 	private static final String KARCH_CMD = "yocto-bsp list karch";
 	private static final String QARCH_CMD = "yocto-bsp list qemu property qemuarch";
 	private static final String BSP_SCRIPT = "yocto-bsp";
@@ -59,27 +53,31 @@ public class MainPage extends WizardPage {
 	private static final String PROPERTIES_FILE = "/tmp/properties.json";
 
 	private Button btnMetadataLoc;
-	private Button btnBspOutLoc;
-	private Button btnBuilddirLoc;
 	private Text textMetadataLoc;
+	private Label labelMetadata;
+	
+	private Button btnBspOutputLoc;
+	private Text textBspOutputLoc;
+	private Label labelBspOutput;
+	
+	private Button btnBuildLoc;
+	private Text textBuildLoc;
+	private Label labelBuildLoc;
+	
 	private Text textBspName;
-	private Text textBspOutLoc;
-	private Text textBuilddirLoc;
-	private Combo karchCombo;
-	private Combo qarchCombo;
-	private Label metadata_label;
-	private Label builddir_label;
-	private Label bspname_label;
-	private Label bspout_label;
-	private Label karch_label;
-	private Label qarch_label;
+	private Label labelBspName;
+	
+	private Combo comboKArch;
+	private Label labelKArch;
+
+	private Combo comboQArch;
+	private Label labelQArch;
 	
 	private YoctoBspElement bspElem;
 	
 	public MainPage(YoctoBspElement element) {
 		super(PAGE_NAME, "yocto-bsp main page", null);
 
-		//setTitle("Yocto-bsp main page");
 		setMessage("Enter the required fields(with *) to create new Yocto Project BSP!");
 		this.bspElem = element;
 	}
@@ -91,74 +89,98 @@ public class MainPage extends WizardPage {
 		GridLayout layout = new GridLayout(2, false);
 		composite.setLayout(layout);
 
-		gd.horizontalSpan= 2;
+		gd.horizontalSpan = 2;
 		composite.setLayoutData(gd);	
 		
-		metadata_label = new Label(composite, SWT.NONE);
-		metadata_label.setText("Meta_data location*: ");
+		labelMetadata = new Label(composite, SWT.NONE);
+		labelMetadata.setText("Meta_data location*: ");
 		Composite textContainer = new Composite(composite, SWT.NONE);
 		textContainer.setLayout(new GridLayout(2, false));
 		textContainer.setLayoutData(new GridData(SWT.FILL, SWT.CENTER, true, false));
-		textMetadataLoc = (Text)addTextControl(textContainer,META_DATA_LOC, "");
+		textMetadataLoc = (Text)addTextControl(textContainer, "");
 		textMetadataLoc.setEnabled(false);
 		textMetadataLoc.addModifyListener(new ModifyListener() {
 			public void modifyText(ModifyEvent e) {
 				controlChanged(e.widget);
 			}
 		});
-		btnMetadataLoc = addFileSelectButton(textContainer, textMetadataLoc);
+		setBtnMetadataLoc(addFileSelectButton(textContainer, textMetadataLoc));
+		
+		labelBuildLoc = new Label(composite, SWT.NONE);
+		labelBuildLoc.setText("Build location: ");
+		
+		textContainer = new Composite(composite, SWT.NONE);
+		textContainer.setLayout(new GridLayout(2, false));
+		textContainer.setLayoutData(new GridData(SWT.FILL, SWT.CENTER, true, false));
+		
+		textBuildLoc = (Text)addTextControl(textContainer, "");
+		textBuildLoc.addModifyListener(new ModifyListener() {
+			public void modifyText(ModifyEvent e) {
+				controlChanged(e.widget);
+			}
+		});
+		
+		setBtnBuilddirLoc(addFileSelectButton(textContainer, textBuildLoc));
+		
+		labelBspName = new Label(composite, SWT.NONE);
+		labelBspName.setText("BSP Name*: ");
 		
-		builddir_label = new Label(composite, SWT.NONE);
-		builddir_label.setText("Build location: ");
 		textContainer = new Composite(composite, SWT.NONE);
 		textContainer.setLayout(new GridLayout(2, false));
 		textContainer.setLayoutData(new GridData(SWT.FILL, SWT.CENTER, true, false));
-		textBuilddirLoc = (Text)addTextControl(textContainer, BUILD_DIR_LOC, "");
-		btnBuilddirLoc = addFileSelectButton(textContainer, textBuilddirLoc);
 		
-		bspname_label = new Label(composite, SWT.NONE);
-		bspname_label.setText("BSP Name*: ");
-		textBspName = new Text(composite, SWT.BORDER | SWT.SINGLE);
-		gd = new GridData(GridData.FILL_HORIZONTAL);
-		textBspName.setLayoutData(gd);
+		textBspName = (Text)addTextControl(textContainer, "");
 		textBspName.addModifyListener(new ModifyListener() {
 			public void modifyText(ModifyEvent e) {
 				controlChanged(e.widget);
 			}
 		});
 		
-		bspout_label = new Label(composite, SWT.NONE);
-		bspout_label.setText("Bsp output location: ");
+		labelBspOutput = new Label(composite, SWT.NONE);
+		labelBspOutput.setText("Bsp output location: ");
+		
 		textContainer = new Composite(composite, SWT.NONE);
 		textContainer.setLayout(new GridLayout(2, false));
 		textContainer.setLayoutData(new GridData(SWT.FILL, SWT.CENTER, true, false));
-		textBspOutLoc = (Text)addTextControl(textContainer, BSP_OUT_LOC, "");
-		textBspOutLoc.addModifyListener(new ModifyListener() {
+		
+		textBspOutputLoc = (Text)addTextControl(textContainer, "");
+		textBspOutputLoc.addModifyListener(new ModifyListener() {
 			public void modifyText(ModifyEvent e) {
 				controlChanged(e.widget);
 			}
 		});
-		btnBspOutLoc = addFileSelectButton(textContainer, textBspOutLoc);
-		karch_label= new Label(composite, SWT.NONE);
-		karch_label.setText("kernel Architecture*: ");
-		karchCombo= new Combo(composite, SWT.READ_ONLY);
-		karchCombo.setLayout(new GridLayout(2, false));
-		karchCombo.setLayoutData(new GridData(SWT.FILL, SWT.LEFT, true, false));
-		karchCombo.setEnabled(false);
-		karchCombo.addModifyListener(new ModifyListener() {
+		setBtnBspOutLoc(addFileSelectButton(textContainer, textBspOutputLoc));
+		
+		labelKArch= new Label(composite, SWT.NONE);
+		labelKArch.setText("kernel Architecture*: ");
+		
+		textContainer = new Composite(composite, SWT.NONE);
+		textContainer.setLayout(new GridLayout(2, false));
+		textContainer.setLayoutData(new GridData(SWT.FILL, SWT.CENTER, true, false));
+		
+		comboKArch= new Combo(textContainer, SWT.READ_ONLY);
+		comboKArch.setLayout(new GridLayout(2, false));
+		comboKArch.setLayoutData(new GridData(SWT.FILL, SWT.FILL, true, false));
+		comboKArch.setEnabled(false);
+		comboKArch.addModifyListener(new ModifyListener() {
 			public void modifyText(ModifyEvent e) {
 				controlChanged(e.widget);
 			}
 		});
 		
-		qarch_label = new Label(composite, SWT.NONE);
-		qarch_label.setText("Qemu Architecture(* for karch as qemu): ");
-		qarch_label.setEnabled(false);
-		qarchCombo = new Combo(composite, SWT.READ_ONLY);
-		qarchCombo.setLayout(new GridLayout(2, false));
-		qarchCombo.setLayoutData(new GridData(SWT.FILL, SWT.LEFT, true, false));
-		qarchCombo.setEnabled(false);
-		qarchCombo.addModifyListener(new ModifyListener() {
+		labelQArch = new Label(composite, SWT.NONE);
+		labelQArch.setText("Qemu Architecture(* for karch as qemu): ");
+		labelQArch.setEnabled(false);
+		
+		textContainer = new Composite(composite, SWT.NONE);
+		textContainer.setLayout(new GridLayout(2, false));
+		textContainer.setLayoutData(new GridData(SWT.FILL, SWT.CENTER, true, false));
+		
+		comboQArch = new Combo(textContainer, SWT.READ_ONLY);
+		comboQArch.setLayout(new GridLayout(2, false));
+		comboQArch.setLayoutData(new GridData(SWT.FILL, SWT.FILL, true, false));
+		comboQArch.setEnabled(false);
+		comboQArch.addModifyListener(new ModifyListener() {
 			public void modifyText(ModifyEvent e) {
 				controlChanged(e.widget);
 			}
@@ -168,7 +190,7 @@ public class MainPage extends WizardPage {
 		validatePage();
 	}
 
-	private Control addTextControl(final Composite parent, String key, String value) {
+	private Control addTextControl(final Composite parent, String value) {
 		final Text text;
 
 		text = new Text(parent, SWT.SINGLE | SWT.LEAD | SWT.BORDER);
@@ -197,45 +219,44 @@ public class MainPage extends WizardPage {
 	private void controlChanged(Widget widget) {
 		 Status status = new Status(IStatus.OK, "not_used", 0, "", null);
 		 setErrorMessage(null);
-		 String metadata_loc = textMetadataLoc.getText();
+		 String metadataLoc = textMetadataLoc.getText();
+		 
 		 if (widget == textMetadataLoc) {
 			 resetKarchCombo();
-
-			 if (metadata_loc.length() == 0) {
+			 if (metadataLoc.length() == 0) {
 				 status = new Status(IStatus.ERROR, "not_used", 0, "Meta data location can't be empty!", null);
 			 } else {
-				 File meta_data = new File(metadata_loc);
+				 File meta_data = new File(metadataLoc);
 				 if (!meta_data.exists() || !meta_data.isDirectory()) {
 					 status = new Status(IStatus.ERROR, "not_used", 0, 
 							 "Invalid meta data location: Make sure it exists and is a directory!", null);
 				 } else {
-					 File bsp_script = new File(metadata_loc + "/scripts/" + BSP_SCRIPT);
-					 if (!bsp_script.exists() || !bsp_script.canExecute())
+					 File bspScript = new File(metadataLoc + "/scripts/" + BSP_SCRIPT);
+					 if (!bspScript.exists() || !bspScript.canExecute())
 						 status = new Status(IStatus.ERROR, "not_used", 0,
-								 "Make sure yocto-bsp exists under \"" + metadata_loc + "/scripts\" and is executable!", null);
+								 "Make sure yocto-bsp exists under \"" + metadataLoc + "/scripts\" and is executable!", null);
 					 else {		
 						 kernelArchesHandler();
 					 }
 				 }
 			 }
-		 }
-		 if (widget == karchCombo) {
-			 String selection = karchCombo.getText();
+		 } else if (widget == comboKArch) {
+			 String selection = comboKArch.getText();
 			 if (!bspElem.getKarch().contentEquals(selection))
 				 bspElem = new YoctoBspElement();
 			 if (selection.matches("qemu")) {
-				 qarch_label.setEnabled(true);
-				 qarchCombo.setEnabled(true);
+				 labelQArch.setEnabled(true);
+				 comboQArch.setEnabled(true);
 			 } else {
-				 qarch_label.setEnabled(false);
-				 qarchCombo.setEnabled(false);
+				 labelQArch.setEnabled(false);
+				 comboQArch.setEnabled(false);
 			 }		
 		 }
 		
 		 checkBuildDir();
 		 
-		 String build_dir = textBuilddirLoc.getText();
-		 String output_dir = textBspOutLoc.getText();
+		 String build_dir = textBuildLoc.getText();
+		 String output_dir = textBspOutputLoc.getText();
 		 String bsp_name = textBspName.getText();
 		 
 		 if (!output_dir.isEmpty() && output_dir.matches(build_dir)) {
@@ -243,8 +264,8 @@ public class MainPage extends WizardPage {
 					 "You've set BSP output directory the same as build directory, please leave output directory empty for this scenario!", null);
 		 }
 		 
-		 if (build_dir.startsWith(metadata_loc) && output_dir.isEmpty() && !bsp_name.isEmpty()) {
-			 String bsp_dir_str = metadata_loc + "/meta-" + bsp_name;
+		 if (build_dir.startsWith(metadataLoc) && output_dir.isEmpty() && !bsp_name.isEmpty()) {
+			 String bsp_dir_str = metadataLoc + "/meta-" + bsp_name;
 			 File bsp_dir = new File(bsp_dir_str);
 			 if (bsp_dir.exists()) {
 				 status = new Status(IStatus.ERROR, "not_used", 0,
@@ -262,7 +283,7 @@ public class MainPage extends WizardPage {
 	
 	private void checkBuildDir() {
 		String metadata_dir = textMetadataLoc.getText();
-		String builddir_str = textBuilddirLoc.getText();
+		String builddir_str = textBuildLoc.getText();
 	
 		File build_dir = null;
 		if ((builddir_str == null) || builddir_str.isEmpty()) 
@@ -274,24 +295,15 @@ public class MainPage extends WizardPage {
 			String create_builddir_cmd = metadata_dir + "/oe-init-build-env " + builddir_str;
 			try {
 				Runtime rt = Runtime.getRuntime();
-				//Process proc = rt.exec(create_builddir_cmd);
 				Process proc = rt.exec(new String[] {"sh", "-c", create_builddir_cmd});
-				InputStream stdin = proc.getInputStream();
-				InputStreamReader isr = new InputStreamReader(stdin);
-				BufferedReader br = new BufferedReader(isr);
-				String line = null;
-
-				while ( (line = br.readLine()) != null) {
-				}
-
-				int exitVal = proc.waitFor();
+				proc.waitFor();
 			} catch (Throwable t) {
 				t.printStackTrace();
 			}
 		}
 	}
 	
-	public YoctoBspElement bspElement() {
+	public YoctoBspElement getBSPElement() {
 		return this.bspElem;
 	}
 	
@@ -301,11 +313,11 @@ public class MainPage extends WizardPage {
 	}
 	
 	private void resetKarchCombo() {
-		karchCombo.deselectAll();
-		qarchCombo.deselectAll();
-		karchCombo.setEnabled(false);
-		qarch_label.setEnabled(false);
-		qarchCombo.setEnabled(false);
+		comboKArch.deselectAll();
+		comboQArch.deselectAll();
+		comboKArch.setEnabled(false);
+		labelQArch.setEnabled(false);
+		comboQArch.setEnabled(false);
 	}
 	
 	private void kernelArchesHandler() {
@@ -313,14 +325,14 @@ public class MainPage extends WizardPage {
 		if (!karches.isEmpty()) {
 			String[] kitems = new String[karches.size()];
 			kitems = karches.toArray(kitems);
-			karchCombo.setItems(kitems);
-			karchCombo.setEnabled(true);
+			comboKArch.setItems(kitems);
+			comboKArch.setEnabled(true);
 		}
 		ArrayList<String> qarches = getQArches();
 		if (!qarches.isEmpty()) {
 			String[] qitems = new String[qarches.size()];
 			qitems = qarches.toArray(qitems);
-			qarchCombo.setItems(qitems);
+			comboQArch.setItems(qitems);
 		}
 	}
 	
@@ -337,26 +349,23 @@ public class MainPage extends WizardPage {
 	public boolean validatePage() {
 		String metadata_loc = textMetadataLoc.getText();
 		String bspname = textBspName.getText();
-		String karch = karchCombo.getText();
-		String qarch = qarchCombo.getText();
+		String karch = comboKArch.getText();
+		String qarch = comboQArch.getText();
 		if (metadata_loc.isEmpty() ||
 				bspname.isEmpty() ||
 				karch.isEmpty()) {
-			
 			return false;
-		} else {
-			if (karch.matches("qemu"))
-				if (qarch.isEmpty())
-					return false;
+		} else if (karch.matches("qemu") && qarch.isEmpty()) {
+			return false;
 		}
 		
 		bspElem.setBspName(bspname);
-		if (!textBspOutLoc.getText().isEmpty())
-			bspElem.setBspOutLoc(textBspOutLoc.getText());
+		if (!textBspOutputLoc.getText().isEmpty())
+			bspElem.setBspOutLoc(textBspOutputLoc.getText());
 		else
 			bspElem.setBspOutLoc("");
-		if (!textBuilddirLoc.getText().isEmpty())
-			bspElem.setBuildLoc(textBuilddirLoc.getText());
+		if (!textBuildLoc.getText().isEmpty())
+			bspElem.setBuildLoc(textBuildLoc.getText());
 		else
 			bspElem.setBuildLoc("");
 		bspElem.setMetadataLoc(metadata_loc);
@@ -374,20 +383,14 @@ public class MainPage extends WizardPage {
 		try {
 			Runtime rt = Runtime.getRuntime();
 			Process proc = rt.exec(create_properties_cmd);
-			InputStream stdin = proc.getInputStream();
-			InputStreamReader isr = new InputStreamReader(stdin);
-			BufferedReader br = new BufferedReader(isr);
-			String line = null;
-			
-			while ( (line = br.readLine()) != null) {
-			}
-			
 			int exitVal = proc.waitFor();
+			if (exitVal != 0)
+				return false;
+			return true;
 		} catch (Throwable t) {
 			t.printStackTrace();
 			return false;
 		}
-		return true;
 	}
 	
 	private ArrayList<String> getKArches() {
@@ -410,7 +413,7 @@ public class MainPage extends WizardPage {
 				karches.add(line);
 			}
 			
-			int exitVal = proc.waitFor();
+			proc.waitFor();
 			
 		} catch (Throwable t) {
 			t.printStackTrace();
@@ -441,7 +444,7 @@ public class MainPage extends WizardPage {
 				value = value.replaceAll("\"$", "");
 				qarches.add(value);
 			}
-			int exitVal = proc.waitFor();
+			proc.waitFor();
 			
 		} catch (Throwable t) {
 			t.printStackTrace();
@@ -449,4 +452,28 @@ public class MainPage extends WizardPage {
 		
 		return qarches;
 	}
+
+	public Button getBtnMetadataLoc() {
+		return btnMetadataLoc;
+	}
+
+	public void setBtnMetadataLoc(Button btnMetadataLoc) {
+		this.btnMetadataLoc = btnMetadataLoc;
+	}
+
+	public Button getBtnBspOutLoc() {
+		return btnBspOutputLoc;
+	}
+
+	public void setBtnBspOutLoc(Button btnBspOutLoc) {
+		this.btnBspOutputLoc = btnBspOutLoc;
+	}
+
+	public Button getBtnBuilddirLoc() {
+		return btnBuildLoc;
+	}
+
+	public void setBtnBuilddirLoc(Button btnBuilddirLoc) {
+		this.btnBuildLoc = btnBuilddirLoc;
+	}
 }
diff --git a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/wizards/bsp/PropertiesPage.java b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/wizards/bsp/PropertiesPage.java
index 44dc43b..4661b37 100644
--- a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/wizards/bsp/PropertiesPage.java
+++ b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/wizards/bsp/PropertiesPage.java
@@ -13,12 +13,11 @@ package org.yocto.sdk.remotetools.wizards.bsp;
 import java.io.BufferedReader;
 import java.io.InputStream;
 import java.io.InputStreamReader;
-
 import java.util.ArrayList;
+import java.util.Enumeration;
+import java.util.HashSet;
 import java.util.Hashtable;
 import java.util.Iterator;
-import java.util.HashSet;
-import java.util.Enumeration;
 
 import org.eclipse.jface.dialogs.MessageDialog;
 import org.eclipse.jface.wizard.WizardPage;
@@ -28,21 +27,20 @@ import org.eclipse.swt.events.ModifyEvent;
 import org.eclipse.swt.events.ModifyListener;
 import org.eclipse.swt.events.SelectionEvent;
 import org.eclipse.swt.events.SelectionListener;
+import org.eclipse.swt.layout.FillLayout;
 import org.eclipse.swt.layout.GridData;
 import org.eclipse.swt.layout.GridLayout;
-import org.eclipse.swt.layout.FillLayout;
 import org.eclipse.swt.widgets.Button;
-import org.eclipse.swt.widgets.Composite;
 import org.eclipse.swt.widgets.Combo;
+import org.eclipse.swt.widgets.Composite;
 import org.eclipse.swt.widgets.Control;
 import org.eclipse.swt.widgets.Group;
 import org.eclipse.swt.widgets.Label;
 import org.eclipse.swt.widgets.Text;
 import org.eclipse.swt.widgets.Widget;
-
 import org.yocto.sdk.remotetools.YoctoBspElement;
-import org.yocto.sdk.remotetools.YoctoJSONHelper;
 import org.yocto.sdk.remotetools.YoctoBspPropertyElement;
+import org.yocto.sdk.remotetools.YoctoJSONHelper;
 /**
  *
  * Setting up the parameters for creating the new Yocto Bitbake project
@@ -73,22 +71,15 @@ public class PropertiesPage extends WizardPage {
 	private Button smpButton;
 	private Composite kcContainer = null;
 	private Group kbGroup = null;
-	private Composite scContainer = null;
 	private ScrolledComposite sc = null;
 	private Composite controlContainer = null;
 	private Group propertyGroup = null;
 	
 	public PropertiesPage(YoctoBspElement element) {
 		super(PAGE_NAME, "yocto-bsp properties page", null);
-		//setTitle("Create new yocto bitbake project");
-		//setMessage("Enter these parameters to create new Yocto Project BitBake commander project");
 		this.bspElem = element;
 	}
 
-	public void test() {
-		
-	}
-	
 	public void onEnterPage(YoctoBspElement element) {
 		String[] values;
 		if (!element.getValidPropertiesFile()) {
@@ -96,7 +87,7 @@ public class PropertiesPage extends WizardPage {
 			return;
 		}
 		
-		if ((this.bspElem == null) || (!this.bspElem.getKarch().contentEquals(element.getKarch()))) {
+		if (this.bspElem == null || this.bspElem.getKarch().isEmpty() || !this.bspElem.getKarch().contentEquals(element.getKarch())) {
 			karch_changed = true;
 		} else
 			karch_changed = false;
@@ -108,7 +99,6 @@ public class PropertiesPage extends WizardPage {
 			sc = new ScrolledComposite(this.composite, SWT.H_SCROLL | SWT.V_SCROLL);
 
 			controlContainer = new Composite(sc, SWT.NONE);
-			//controlContainer.setLayout(new FillLayout(SWT.VERTICAL));
 			controlContainer.setLayout(new GridLayout(1, false));
 			controlContainer.setLayoutData(new GridData(SWT.FILL, SWT.CENTER, true, false));
 			if (kcContainer == null) {
@@ -116,14 +106,11 @@ public class PropertiesPage extends WizardPage {
 
 				kcContainer.setLayout(new FillLayout());
 				new Label (kcContainer, SWT.NONE).setText(KERNEL_CHOICE+":");
-				//kcGroup.setText(KERNEL_CHOICE);
 				kcCombo = new Combo(kcContainer, SWT.DROP_DOWN | SWT.READ_ONLY);
-				//kcCombo.setBounds(50, 50, 150, 10);
 				smpButton = new Button(controlContainer, SWT.CHECK);
 				smpButton.setText("SMP Support");
 				smpButton.setSelection(true);
 				
-				//kcContainer.setSize(SWT.DEFAULT, SWT.DEFAULT);
 				kbGroup= new Group(controlContainer, SWT.NONE);		
 				kbGroup.setLayout(new FillLayout(SWT.VERTICAL));	
 				kbGroup.setText("Kernel Branch Settings:");
@@ -171,7 +158,6 @@ public class PropertiesPage extends WizardPage {
 					
 					propertyControlMap = new Hashtable<YoctoBspPropertyElement, Control>();
 					Iterator<YoctoBspPropertyElement> it = properties.iterator();
-					int height = 0;
 				
 				    while (it.hasNext()) {
 				        // Get property
diff --git a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/wizards/bsp/YoctoBSPWizard.java b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/wizards/bsp/YoctoBSPWizard.java
index 368b2ad..454a705 100644
--- a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/wizards/bsp/YoctoBSPWizard.java
+++ b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/wizards/bsp/YoctoBSPWizard.java
@@ -11,42 +11,13 @@
 package org.yocto.sdk.remotetools.wizards.bsp;
 
 import java.io.BufferedReader;
-import java.io.File;
-import java.io.FileInputStream;
-import java.io.FileDescriptor;
 import java.io.InputStream;
-import java.io.IOException;
 import java.io.InputStreamReader;
-import java.io.OutputStream;
-import java.io.Writer;
-import java.util.ArrayList;
 import java.util.HashSet;
-import java.util.Hashtable;
-import java.util.Map;
-import java.util.regex.Matcher;
-import java.util.regex.Pattern;
-import java.lang.reflect.InvocationTargetException;
-import java.net.URL;
 
-import org.eclipse.core.runtime.IProgressMonitor;
-import org.eclipse.core.runtime.IStatus;
-import org.eclipse.core.runtime.NullProgressMonitor;
-import org.eclipse.core.runtime.Path;
-import org.eclipse.core.runtime.Status;
 import org.eclipse.jface.dialogs.MessageDialog;
-import org.eclipse.jface.operation.IRunnableWithProgress;
-import org.eclipse.jface.viewers.IStructuredSelection;
 import org.eclipse.jface.wizard.IWizardPage;
-import org.eclipse.jface.wizard.WizardPage;
 import org.eclipse.jface.wizard.Wizard;
-
-import org.eclipse.ui.PlatformUI;
-import org.eclipse.ui.IWorkbench;
-import org.eclipse.ui.IWorkbenchWizard;
-import org.eclipse.ui.IWorkbenchPage;
-import org.eclipse.ui.IWorkbenchWindow;
-import org.eclipse.ui.progress.IProgressService;
-
 import org.yocto.sdk.remotetools.YoctoBspElement;
 import org.yocto.sdk.remotetools.YoctoBspPropertyElement;
 import org.yocto.sdk.remotetools.YoctoJSONHelper;
@@ -72,7 +43,7 @@ public class YoctoBSPWizard extends Wizard {
 
 	@Override 
 	public IWizardPage getNextPage(IWizardPage page) {
-		propertiesPage.onEnterPage(mainPage.bspElement());
+		propertiesPage.onEnterPage(mainPage.getBSPElement());
 		return propertiesPage;
 	}
 	 
@@ -89,7 +60,7 @@ public class YoctoBSPWizard extends Wizard {
 		if (propertiesPage.validatePage()) {
 			HashSet<YoctoBspPropertyElement> properties = propertiesPage.getProperties();
 			YoctoJSONHelper.createBspJSONFile(properties);
-			YoctoBspElement element = mainPage.bspElement();
+			YoctoBspElement element = mainPage.getBSPElement();
 			
 			String create_bsp_cmd = element.getMetadataLoc() + CREATE_CMD + 
 									element.getBspName() + " " + element.getKarch();
-- 
1.7.9.5


