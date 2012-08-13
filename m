Return-Path: <ioanax.grigoropol@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 92CFEE00283
	for <yocto@yoctoproject.org>; Mon, 13 Aug 2012 01:06:14 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 13 Aug 2012 01:05:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.77,758,1336374000"; d="scan'208";a="179878689"
Received: from ideapad (HELO localhost.localdomain) ([10.237.105.40])
	by orsmga001.jf.intel.com with ESMTP; 13 Aug 2012 01:05:52 -0700
From: Ioana Grigoropol <ioanax.grigoropol@intel.com>
To: yocto@yoctoproject.org
Date: Mon, 13 Aug 2012 11:04:41 +0300
Message-Id: <1344845081-14137-1-git-send-email-ioanax.grigoropol@intel.com>
X-Mailer: git-send-email 1.7.9.5
Cc: Ioana Grigoropol <ioanax.grigoropol@intel.com>
Subject: [PATCH] Fixed bug 2922 (yocto-bsp creation fails on due to unknown error)
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
X-List-Received-Date: Mon, 13 Aug 2012 08:06:14 -0000

- the main page did not check whether in the build location there is an
conf directory with bblayers.conf and local.conf -> added checks on main
page (if directory does not exist it will be created)
- the main page had the field for meta-data location disabled and could
only be populated by browsing -> changed to enabled in order to be able
to manually set location (checks are done on the value of this text)
- the properties page shows an empty error pop-up - the process that
collects all kernel branches outputs errors on a different channel than
the input one -> redirect error channel to output and collect errors
- all process invocations on the properties page are done on the GUI
thread and the interface blocks waiting them to finish -> show progress
of background threads that loads kernel branches

[YOCTO #2922]

Signed-off-by: Ioana Grigoropol <ioanax.grigoropol@intel.com>
---
 .../sdk/remotetools/wizards/bsp/MainPage.java      |  329 +++++++++++++-------
 .../remotetools/wizards/bsp/PropertiesPage.java    |  188 +++++++----
 .../remotetools/wizards/bsp/YoctoBSPWizard.java    |   33 +-
 3 files changed, 348 insertions(+), 202 deletions(-)

diff --git a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/wizards/bsp/MainPage.java b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/wizards/bsp/MainPage.java
index d80dd75..9c09236 100644
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
@@ -47,39 +44,46 @@ import org.yocto.sdk.remotetools.YoctoBspElement;
  * @author jzhang
  */
 public class MainPage extends WizardPage {
-	public static final String PAGE_NAME = "Main";
-	private static final String META_DATA_LOC = "MetadataLoc";
-	private static final String BSP_OUT_LOC = "BspOutLoc";
-	private static final String BUILD_DIR_LOC = "BuilddirLoc";
-	private static final String KARCH_CMD = "yocto-bsp list karch";
-	private static final String QARCH_CMD = "yocto-bsp list qemu property qemuarch";
-	private static final String BSP_SCRIPT = "yocto-bsp";
-	private static final String PROPERTIES_CMD_PREFIX = "yocto-bsp list ";
-	private static final String PROPERTIES_CMD_SURFIX = " properties -o ";
-	private static final String PROPERTIES_FILE = "/tmp/properties.json";
+	public static  final String  PAGE_NAME 				= "Main";
+//	private static final String META_DATA_LOC 			= "MetadataLoc";
+//	private static final String BSP_OUT_LOC 			= "BspOutLoc";
+//	private static final String BUILD_DIR_LOC 			= "BuilddirLoc";
+//	private static final String BSP_NAME 				= "BspName";
+	private static final String KARCH_CMD 				= "yocto-bsp list karch";
+	private static final String QARCH_CMD 				= "yocto-bsp list qemu property qemuarch";
+	private static final String BSP_SCRIPT 				= "yocto-bsp";
+	private static final String BBLAYERS_CONF 			= "bblayers.conf";
+	private static final String LOCAL_CONF 				= "local.conf";
+	private static final String PROPERTIES_CMD_PREFIX 	= "yocto-bsp list ";
+	private static final String PROPERTIES_CMD_SURFIX 	= " properties -o ";
+	private static final String PROPERTIES_FILE 		= "/tmp/properties.json";
 
-	private Button btnMetadataLoc;
-	private Button btnBspOutLoc;
-	private Button btnBuilddirLoc;
-	private Text textMetadataLoc;
-	private Text textBspName;
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
+	private Button 	btnMetadataLoc;
+	private Text	textMetadataLoc;
+	private Label 	labelMetadata;
+	
+	private Button 	btnBspOutputLoc;
+	private Text	textBspOutputLoc;
+	private Label 	labelBspOutput;
+	
+	private Button	btnBuildLoc;
+	private Text	textBuildLoc;
+	private Label 	labelBuildLoc;
+	
+	private Text	textBspName;
+	private Label 	labelBspName;
+	
+	private Combo 	comboKArch;
+	private Label 	labelKArch;
+	
+	private Combo 	comboQArch;
+	private Label 	labelQArch;
 	
 	private YoctoBspElement bspElem;
 	
 	public MainPage(YoctoBspElement element) {
 		super(PAGE_NAME, "yocto-bsp main page", null);
 
-		//setTitle("Yocto-bsp main page");
 		setMessage("Enter the required fields(with *) to create new Yocto Project BSP!");
 		this.bspElem = element;
 	}
@@ -87,78 +91,100 @@ public class MainPage extends WizardPage {
 	public void createControl(Composite parent) {
 		setErrorMessage(null);
 		Composite composite = new Composite(parent, SWT.NONE);
-		GridData gd = new GridData(SWT.FILL, SWT.CENTER, true, false);
-		GridLayout layout = new GridLayout(2, false);
+		GridData gd 		= new GridData(SWT.FILL, SWT.CENTER, true, false);
+		GridLayout layout 	= new GridLayout(2, false);
 		composite.setLayout(layout);
 
-		gd.horizontalSpan= 2;
+		gd.horizontalSpan	= 2;
 		composite.setLayoutData(gd);	
 		
-		metadata_label = new Label(composite, SWT.NONE);
-		metadata_label.setText("Meta_data location*: ");
+		labelMetadata 			= new Label(composite, SWT.NONE);
+		labelMetadata.setText("Meta_data location*: ");
+		
 		Composite textContainer = new Composite(composite, SWT.NONE);
 		textContainer.setLayout(new GridLayout(2, false));
 		textContainer.setLayoutData(new GridData(SWT.FILL, SWT.CENTER, true, false));
-		textMetadataLoc = (Text)addTextControl(textContainer,META_DATA_LOC, "");
-		textMetadataLoc.setEnabled(false);
+		
+		textMetadataLoc 		= (Text)addTextControl(textContainer, "");
+		textMetadataLoc.setEnabled(true);
 		textMetadataLoc.addModifyListener(new ModifyListener() {
 			public void modifyText(ModifyEvent e) {
 				controlChanged(e.widget);
 			}
 		});
-		btnMetadataLoc = addFileSelectButton(textContainer, textMetadataLoc);
+		setBtnMetadataLoc(addFileSelectButton(textContainer, textMetadataLoc));
 		
-		builddir_label = new Label(composite, SWT.NONE);
-		builddir_label.setText("Build location: ");
-		textContainer = new Composite(composite, SWT.NONE);
+		labelBuildLoc 	= new Label(composite, SWT.NONE);
+		labelBuildLoc.setText("Build location*: ");
+		textContainer 	= new Composite(composite, SWT.NONE);
 		textContainer.setLayout(new GridLayout(2, false));
 		textContainer.setLayoutData(new GridData(SWT.FILL, SWT.CENTER, true, false));
-		textBuilddirLoc = (Text)addTextControl(textContainer, BUILD_DIR_LOC, "");
-		btnBuilddirLoc = addFileSelectButton(textContainer, textBuilddirLoc);
+		textBuildLoc 	= (Text)addTextControl(textContainer, "");
+		textBuildLoc.addModifyListener(new ModifyListener() {
+			public void modifyText(ModifyEvent e) {
+				controlChanged(e.widget);
+			}
+		});
+		
+		setBtnBuilddirLoc(addFileSelectButton(textContainer, textBuildLoc));
 		
-		bspname_label = new Label(composite, SWT.NONE);
-		bspname_label.setText("BSP Name*: ");
-		textBspName = new Text(composite, SWT.BORDER | SWT.SINGLE);
-		gd = new GridData(GridData.FILL_HORIZONTAL);
-		textBspName.setLayoutData(gd);
+		labelBspName 	= new Label(composite, SWT.NONE);
+		labelBspName.setText("BSP Name*: ");
+//		textBspName 	= new Text(composite, SWT.BORDER | SWT.SINGLE);
+		textContainer 	= new Composite(composite, SWT.NONE);
+		textContainer.setLayout(new GridLayout(2, false));
+		textContainer.setLayoutData(new GridData(SWT.FILL, SWT.CENTER, true, false));
+//		gd = new GridData(GridData.FILL_HORIZONTAL);
+//		textBspName.setLayoutData(gd);
+		textBspName     = (Text)addTextControl(textContainer, "");
 		textBspName.addModifyListener(new ModifyListener() {
 			public void modifyText(ModifyEvent e) {
 				controlChanged(e.widget);
 			}
 		});
 		
-		bspout_label = new Label(composite, SWT.NONE);
-		bspout_label.setText("Bsp output location: ");
+		labelBspOutput = new Label(composite, SWT.NONE);
+		labelBspOutput.setText("Bsp output location: ");
 		textContainer = new Composite(composite, SWT.NONE);
 		textContainer.setLayout(new GridLayout(2, false));
 		textContainer.setLayoutData(new GridData(SWT.FILL, SWT.CENTER, true, false));
-		textBspOutLoc = (Text)addTextControl(textContainer, BSP_OUT_LOC, "");
-		textBspOutLoc.addModifyListener(new ModifyListener() {
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
@@ -168,7 +194,7 @@ public class MainPage extends WizardPage {
 		validatePage();
 	}
 
-	private Control addTextControl(final Composite parent, String key, String value) {
+	private Control addTextControl(final Composite parent, String value) {
 		final Text text;
 
 		text = new Text(parent, SWT.SINGLE | SWT.LEAD | SWT.BORDER);
@@ -197,62 +223,84 @@ public class MainPage extends WizardPage {
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
+			 
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
+					 File bsp_script = new File(metadataLoc + "/scripts/" + BSP_SCRIPT);
 					 if (!bsp_script.exists() || !bsp_script.canExecute())
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
-		 }
-		
-		 checkBuildDir();
-		 
-		 String build_dir = textBuilddirLoc.getText();
-		 String output_dir = textBspOutLoc.getText();
-		 String bsp_name = textBspName.getText();
+		 } else if (widget == textBuildLoc){
+			 String buildLoc = textBuildLoc.getText();
+			 if (buildLoc.length() == 0) {
+				 status = new Status(IStatus.ERROR, "not_used", 0, "Build location can't be empty!", null);
+			 } else {
+				 File buildLocDir = new File(buildLoc);
+				 if (!buildLocDir.isDirectory()) {
+					 status = new Status(IStatus.ERROR, "not_used", 0, 
+							 "Invalid build location: Make sure the build location is a directory!", null);
+				 } else {
+					 boolean createBuildDir = false;
+					 File bblayersConf = new File(buildLoc + "/conf/" + BBLAYERS_CONF);
+					 File localConf = new File(buildLoc + "/conf/" + LOCAL_CONF);
+					 if (!bblayersConf.exists() || !localConf.exists())
+						createBuildDir = true;
+					 
+					 if (createBuildDir){
+						 if (createBuildDir() != 0)
+							 status = new Status(IStatus.ERROR, "not_used", 0, 
+									 "Invalid build location: Make sure the build location is a directory and is writable!", null);
+					 
+					 }
+					
+				 }
+			 }
+			 
+		 } 
+//		 checkBuildDir();
+		 String build_dir  = textBuildLoc.getText();
+		 String output_dir = textBspOutputLoc.getText();
+		 String bsp_name   = textBspName.getText();
 		 
 		 if (!output_dir.isEmpty() && output_dir.matches(build_dir)) {
 			 status = new Status(IStatus.ERROR, "not_used", 0,
 					 "You've set BSP output directory the same as build directory, please leave output directory empty for this scenario!", null);
 		 }
 		 
-		 if (build_dir.startsWith(metadata_loc) && output_dir.isEmpty() && !bsp_name.isEmpty()) {
-			 String bsp_dir_str = metadata_loc + "/meta-" + bsp_name;
+		 if (build_dir.startsWith(metadataLoc) && output_dir.isEmpty() && !bsp_name.isEmpty()) {
+			 String bsp_dir_str = metadataLoc + "/meta-" + bsp_name;
 			 File bsp_dir = new File(bsp_dir_str);
 			 if (bsp_dir.exists()) {
 				 status = new Status(IStatus.ERROR, "not_used", 0,
 						 "Your BSP with name: " + bsp_name + " already exist under directory: " + bsp_dir_str + ", please change your bsp name!", null);
 			 }
 		 }
-		 validatePage();
-		 
 		 if (status.getSeverity() == IStatus.ERROR)
 			 setErrorMessage(status.getMessage());
 		 
@@ -262,7 +310,7 @@ public class MainPage extends WizardPage {
 	
 	private void checkBuildDir() {
 		String metadata_dir = textMetadataLoc.getText();
-		String builddir_str = textBuilddirLoc.getText();
+		String builddir_str = textBuildLoc.getText();
 	
 		File build_dir = null;
 		if ((builddir_str == null) || builddir_str.isEmpty()) 
@@ -274,7 +322,6 @@ public class MainPage extends WizardPage {
 			String create_builddir_cmd = metadata_dir + "/oe-init-build-env " + builddir_str;
 			try {
 				Runtime rt = Runtime.getRuntime();
-				//Process proc = rt.exec(create_builddir_cmd);
 				Process proc = rt.exec(new String[] {"sh", "-c", create_builddir_cmd});
 				InputStream stdin = proc.getInputStream();
 				InputStreamReader isr = new InputStreamReader(stdin);
@@ -282,6 +329,7 @@ public class MainPage extends WizardPage {
 				String line = null;
 
 				while ( (line = br.readLine()) != null) {
+					
 				}
 
 				int exitVal = proc.waitFor();
@@ -291,7 +339,33 @@ public class MainPage extends WizardPage {
 		}
 	}
 	
-	public YoctoBspElement bspElement() {
+	private int createBuildDir() {
+		String metadataDir = textMetadataLoc.getText();
+		String buildLoc    = textBuildLoc.getText();
+	
+		String createBuildDirCmd = "cd " + metadataDir + " ;" + metadataDir + "/oe-init-build-env " + buildLoc;
+		try {
+			ProcessBuilder builder = new ProcessBuilder(new String[] {"sh", "-c", createBuildDirCmd});
+			builder.redirectErrorStream(true);
+			Process proc = builder.start();
+			
+//			InputStream stdin = proc.getInputStream();
+//			InputStreamReader isr = new InputStreamReader(stdin);
+//			BufferedReader br = new BufferedReader(isr);
+//			String line = null;
+//
+//			while ( (line = br.readLine()) != null) {
+//				System.out.println(line);
+//			}
+
+			return proc.waitFor();
+		} catch (Throwable t) {
+			t.printStackTrace();
+			return 1;
+		}
+	}
+	
+	public YoctoBspElement getBSPElement() {
 		return this.bspElem;
 	}
 	
@@ -301,11 +375,11 @@ public class MainPage extends WizardPage {
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
@@ -313,14 +387,14 @@ public class MainPage extends WizardPage {
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
 	
@@ -336,27 +410,24 @@ public class MainPage extends WizardPage {
 	
 	public boolean validatePage() {
 		String metadata_loc = textMetadataLoc.getText();
-		String bspname = textBspName.getText();
-		String karch = karchCombo.getText();
-		String qarch = qarchCombo.getText();
+		String bspname 		= textBspName.getText();
+		String karch 		= comboKArch.getText();
+		String qarch 		= comboQArch.getText();
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
@@ -449,4 +520,28 @@ public class MainPage extends WizardPage {
 		
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
index 44dc43b..0d38187 100644
--- a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/wizards/bsp/PropertiesPage.java
+++ b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/wizards/bsp/PropertiesPage.java
@@ -11,16 +11,18 @@
 package org.yocto.sdk.remotetools.wizards.bsp;
 
 import java.io.BufferedReader;
-import java.io.InputStream;
 import java.io.InputStreamReader;
-
+import java.lang.reflect.InvocationTargetException;
 import java.util.ArrayList;
+import java.util.Enumeration;
+import java.util.HashSet;
 import java.util.Hashtable;
 import java.util.Iterator;
-import java.util.HashSet;
-import java.util.Enumeration;
 
+import org.eclipse.core.runtime.IProgressMonitor;
 import org.eclipse.jface.dialogs.MessageDialog;
+import org.eclipse.jface.dialogs.ProgressMonitorDialog;
+import org.eclipse.jface.operation.IRunnableWithProgress;
 import org.eclipse.jface.wizard.WizardPage;
 import org.eclipse.swt.SWT;
 import org.eclipse.swt.custom.ScrolledComposite;
@@ -28,21 +30,20 @@ import org.eclipse.swt.events.ModifyEvent;
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
@@ -73,7 +74,6 @@ public class PropertiesPage extends WizardPage {
 	private Button smpButton;
 	private Composite kcContainer = null;
 	private Group kbGroup = null;
-	private Composite scContainer = null;
 	private ScrolledComposite sc = null;
 	private Composite controlContainer = null;
 	private Group propertyGroup = null;
@@ -85,18 +85,14 @@ public class PropertiesPage extends WizardPage {
 		this.bspElem = element;
 	}
 
-	public void test() {
-		
-	}
-	
 	public void onEnterPage(YoctoBspElement element) {
 		String[] values;
 		if (!element.getValidPropertiesFile()) {
-			setErrorMessage("There's no valid properties file created, please choose \"Back\" to reselect kernel architectur!");
+			setErrorMessage("There's no valid properties file created, please choose \"Back\" to reselect kernel architecture!");
 			return;
 		}
 		
-		if ((this.bspElem == null) || (!this.bspElem.getKarch().contentEquals(element.getKarch()))) {
+		if (this.bspElem == null || this.bspElem.getKarch().isEmpty() || !this.bspElem.getKarch().contentEquals(element.getKarch())) {
 			karch_changed = true;
 		} else
 			karch_changed = false;
@@ -439,52 +435,136 @@ public class PropertiesPage extends WizardPage {
 		 getWizard().getContainer().updateButtons();
 	}
 	
+	
+	class SleepThread extends Thread {
+		  private long ms;
+		  public SleepThread(long ms) {
+		    this.ms = ms;
+		  }
+
+		  public void run() {
+		    try {
+		      sleep(ms);
+		    } catch (InterruptedException e) {}
+		  }
+		}
+
 	private String[] getValues(String property) {
-		ArrayList<String> values = new ArrayList<String>();
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
+			         monitor.beginTask("Loading Kernel branches ...", 100);
+			         runnable.run();
+			         monitor.done();
+			     }
+			 });
+		} catch (InvocationTargetException e) {
+			e.printStackTrace();
+		} catch (InterruptedException e) {
+			e.printStackTrace();
+		} 
+		return runnable.items;
+		
+//		ArrayList<String> values = new ArrayList<String>();
+//		
+//		String build_dir = "";
+//		if ((bspElem.getBuildLoc() == null) || bspElem.getBuildLoc().isEmpty())
+//			build_dir = bspElem.getMetadataLoc()+"/build";
+//		else
+//			build_dir = bspElem.getBuildLoc();
+//		
+//		String values_cmd = "export BUILDDIR=" + build_dir + ";" + bspElem.getMetadataLoc() + "/scripts/" + VALUES_CMD_PREFIX + bspElem.getKarch() + VALUES_CMD_SURFIX + property;
+//	
+//		try {
+//			ProcessBuilder builder = new ProcessBuilder(new String[] {"sh", "-c", values_cmd});
+//			builder.redirectErrorStream(true);
+//			Process process = builder.start();
+////			Runtime rt = Runtime.getRuntime();
+////			Process proc = rt.exec(new String[] {"sh", "-c", values_cmd});
+//			BufferedReader br = new BufferedReader(new InputStreamReader(process.getInputStream()));
+//			String line = null;
+//			String error_message = "";
+//			while ( (line = br.readLine()) != null) {
+//				if (!line.startsWith("[")) {
+//					error_message += line + "\n";
+//					continue;
+//				}
+//				String[] items = line.split(",");
+//				
+//				String value = items[0];
+//				value = value.replace("[\"", "");
+//				value = value.replaceAll("\"$", "");
+//				values.add(value);
+//			}
+//			int exitVal = process.waitFor();
+//			if (exitVal != 0) {
+//				MessageDialog.openError(getShell(),"Yocto-BSP", error_message);
+//				return null;
+//			} 
+//		} catch (Throwable t) {
+//			t.printStackTrace();
+//		}
+//		if (!values.isEmpty()) {
+//			String[] vitems = new String[values.size()];
+//			vitems = values.toArray(vitems);
+//			return vitems;
+//		} else
+//			return null;
+	}
 	
-			Process proc = rt.exec(new String[] {"sh", "-c", values_cmd});
-			InputStream stdin = proc.getInputStream();
-			InputStreamReader isr = new InputStreamReader(stdin);
-			BufferedReader br = new BufferedReader(isr);
-			String line = null;
-			String error_message = "";
+	class ValuesGetter implements Runnable {
+		String property;
+		String[] items;
+		
+		public ValuesGetter(String property) {
+			this.property = property;
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
+					MessageDialog.openError(getShell(),"Yocto-BSP", error_message);
+					items = null;
+				} 
+			} catch (Throwable t) {
+				t.printStackTrace();
+			}
+			if (!values.isEmpty()) {
+				items = new String[values.size()];
+				items = values.toArray(items);
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
 	}
+	
 }
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


