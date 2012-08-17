Return-Path: <jessica.zhang@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C74C3E002AB
	for <yocto@yoctoproject.org>; Thu, 16 Aug 2012 17:23:48 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 16 Aug 2012 17:23:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.77,782,1336374000"; d="scan'208";a="203126623"
Received: from orsmsx603.amr.corp.intel.com ([10.22.226.49])
	by fmsmga001.fm.intel.com with ESMTP; 16 Aug 2012 17:23:47 -0700
Received: from orsmsx106.amr.corp.intel.com (10.22.225.133) by
	orsmsx603.amr.corp.intel.com (10.22.226.49) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Thu, 16 Aug 2012 17:23:47 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.152]) by
	ORSMSX106.amr.corp.intel.com ([169.254.5.217]) with mapi id
	14.01.0355.002; Thu, 16 Aug 2012 17:23:47 -0700
From: "Zhang, Jessica" <jessica.zhang@intel.com>
To: "Grigoropol, IoanaX" <ioanax.grigoropol@intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] [PATCH 1/3] - Code clean-up & refactoring on Yocto-BSP
	pages & wizards
Thread-Index: AQHNe8C6YCkRMg3QmEy6/1wWHeCwzZddJXZQ
Date: Fri, 17 Aug 2012 00:23:46 +0000
Message-ID: <C6510F6D410BB64A8C15398EDC6B847C46ADF43A@ORSMSX101.amr.corp.intel.com>
References: <1345129487-10568-1-git-send-email-ioanax.grigoropol@intel.com>
In-Reply-To: <1345129487-10568-1-git-send-email-ioanax.grigoropol@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Cc: "Grigoropol, IoanaX" <ioanax.grigoropol@intel.com>
Subject: Re: [PATCH 1/3] - Code clean-up & refactoring on Yocto-BSP	pages & wizards
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
X-List-Received-Date: Fri, 17 Aug 2012 00:23:49 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

The patch is missing signed-off=20

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Ioana Grigoropol
Sent: Thursday, August 16, 2012 8:05 AM
To: yocto@yoctoproject.org
Cc: Grigoropol, IoanaX
Subject: [yocto] [PATCH 1/3] - Code clean-up & refactoring on Yocto-BSP pag=
es & wizards

---
 .../sdk/remotetools/wizards/bsp/MainPage.java      |  261 +++++++++++-----=
----
 .../remotetools/wizards/bsp/PropertiesPage.java    |   26 +-
 .../remotetools/wizards/bsp/YoctoBSPWizard.java    |   33 +--
 3 files changed, 152 insertions(+), 168 deletions(-)

diff --git a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetool=
s/wizards/bsp/MainPage.java b/plugins/org.yocto.sdk.remotetools/src/org/yoc=
to/sdk/remotetools/wizards/bsp/MainPage.java
index d80dd75..b729ad1 100644
--- a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/wizar=
ds/bsp/MainPage.java
+++ b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/wi
+++ zards/bsp/MainPage.java
@@ -20,24 +20,21 @@ import org.eclipse.core.runtime.IStatus;  import org.ec=
lipse.core.runtime.Status;  import org.eclipse.jface.wizard.WizardPage;
 import org.eclipse.swt.SWT;
-import org.eclipse.swt.widgets.Event;
 import org.eclipse.swt.events.ModifyEvent;
 import org.eclipse.swt.events.ModifyListener;
 import org.eclipse.swt.events.SelectionAdapter;
 import org.eclipse.swt.events.SelectionEvent;
 import org.eclipse.swt.layout.GridData;  import org.eclipse.swt.layout.Gri=
dLayout;
-import org.eclipse.swt.widgets.Widget;
 import org.eclipse.swt.widgets.Button;
 import org.eclipse.swt.widgets.Combo;
 import org.eclipse.swt.widgets.Composite;
 import org.eclipse.swt.widgets.Control;  import org.eclipse.swt.widgets.Di=
rectoryDialog;
-
+import org.eclipse.swt.widgets.Event;
 import org.eclipse.swt.widgets.Label;
 import org.eclipse.swt.widgets.Text;
-
-
+import org.eclipse.swt.widgets.Widget;
 import org.yocto.sdk.remotetools.YoctoBspElement;
=20
 /**
@@ -47,10 +44,7 @@ import org.yocto.sdk.remotetools.YoctoBspElement;
  * @author jzhang
  */
 public class MainPage extends WizardPage {
-	public static final String PAGE_NAME =3D "Main";
-	private static final String META_DATA_LOC =3D "MetadataLoc";
-	private static final String BSP_OUT_LOC =3D "BspOutLoc";
-	private static final String BUILD_DIR_LOC =3D "BuilddirLoc";
+	public static  final String  PAGE_NAME =3D "Main";
 	private static final String KARCH_CMD =3D "yocto-bsp list karch";
 	private static final String QARCH_CMD =3D "yocto-bsp list qemu property q=
emuarch";
 	private static final String BSP_SCRIPT =3D "yocto-bsp"; @@ -59,27 +53,31 =
@@ public class MainPage extends WizardPage {
 	private static final String PROPERTIES_FILE =3D "/tmp/properties.json";
=20
 	private Button btnMetadataLoc;
-	private Button btnBspOutLoc;
-	private Button btnBuilddirLoc;
 	private Text textMetadataLoc;
+	private Label labelMetadata;
+=09
+	private Button btnBspOutputLoc;
+	private Text textBspOutputLoc;
+	private Label labelBspOutput;
+=09
+	private Button btnBuildLoc;
+	private Text textBuildLoc;
+	private Label labelBuildLoc;
+=09
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
+=09
+	private Combo comboKArch;
+	private Label labelKArch;
+
+	private Combo comboQArch;
+	private Label labelQArch;
 =09
 	private YoctoBspElement bspElem;
 =09
 	public MainPage(YoctoBspElement element) {
 		super(PAGE_NAME, "yocto-bsp main page", null);
=20
-		//setTitle("Yocto-bsp main page");
 		setMessage("Enter the required fields(with *) to create new Yocto Projec=
t BSP!");
 		this.bspElem =3D element;
 	}
@@ -91,74 +89,98 @@ public class MainPage extends WizardPage {
 		GridLayout layout =3D new GridLayout(2, false);
 		composite.setLayout(layout);
=20
-		gd.horizontalSpan=3D 2;
+		gd.horizontalSpan =3D 2;
 		composite.setLayoutData(gd);=09
 	=09
-		metadata_label =3D new Label(composite, SWT.NONE);
-		metadata_label.setText("Meta_data location*: ");
+		labelMetadata =3D new Label(composite, SWT.NONE);
+		labelMetadata.setText("Meta_data location*: ");
 		Composite textContainer =3D new Composite(composite, SWT.NONE);
 		textContainer.setLayout(new GridLayout(2, false));
 		textContainer.setLayoutData(new GridData(SWT.FILL, SWT.CENTER, true, fal=
se));
-		textMetadataLoc =3D (Text)addTextControl(textContainer,META_DATA_LOC, ""=
);
+		textMetadataLoc =3D (Text)addTextControl(textContainer, "");
 		textMetadataLoc.setEnabled(false);
 		textMetadataLoc.addModifyListener(new ModifyListener() {
 			public void modifyText(ModifyEvent e) {
 				controlChanged(e.widget);
 			}
 		});
-		btnMetadataLoc =3D addFileSelectButton(textContainer, textMetadataLoc);
+		setBtnMetadataLoc(addFileSelectButton(textContainer,=20
+textMetadataLoc));
+	=09
+		labelBuildLoc =3D new Label(composite, SWT.NONE);
+		labelBuildLoc.setText("Build location: ");
+	=09
+		textContainer =3D new Composite(composite, SWT.NONE);
+		textContainer.setLayout(new GridLayout(2, false));
+		textContainer.setLayoutData(new GridData(SWT.FILL, SWT.CENTER, true,=20
+false));
+	=09
+		textBuildLoc =3D (Text)addTextControl(textContainer, "");
+		textBuildLoc.addModifyListener(new ModifyListener() {
+			public void modifyText(ModifyEvent e) {
+				controlChanged(e.widget);
+			}
+		});
+	=09
+		setBtnBuilddirLoc(addFileSelectButton(textContainer, textBuildLoc));
+	=09
+		labelBspName =3D new Label(composite, SWT.NONE);
+		labelBspName.setText("BSP Name*: ");
 	=09
-		builddir_label =3D new Label(composite, SWT.NONE);
-		builddir_label.setText("Build location: ");
 		textContainer =3D new Composite(composite, SWT.NONE);
 		textContainer.setLayout(new GridLayout(2, false));
 		textContainer.setLayoutData(new GridData(SWT.FILL, SWT.CENTER, true, fal=
se));
-		textBuilddirLoc =3D (Text)addTextControl(textContainer, BUILD_DIR_LOC, "=
");
-		btnBuilddirLoc =3D addFileSelectButton(textContainer, textBuilddirLoc);
 	=09
-		bspname_label =3D new Label(composite, SWT.NONE);
-		bspname_label.setText("BSP Name*: ");
-		textBspName =3D new Text(composite, SWT.BORDER | SWT.SINGLE);
-		gd =3D new GridData(GridData.FILL_HORIZONTAL);
-		textBspName.setLayoutData(gd);
+		textBspName =3D (Text)addTextControl(textContainer, "");
 		textBspName.addModifyListener(new ModifyListener() {
 			public void modifyText(ModifyEvent e) {
 				controlChanged(e.widget);
 			}
 		});
 	=09
-		bspout_label =3D new Label(composite, SWT.NONE);
-		bspout_label.setText("Bsp output location: ");
+		labelBspOutput =3D new Label(composite, SWT.NONE);
+		labelBspOutput.setText("Bsp output location: ");
+	=09
 		textContainer =3D new Composite(composite, SWT.NONE);
 		textContainer.setLayout(new GridLayout(2, false));
 		textContainer.setLayoutData(new GridData(SWT.FILL, SWT.CENTER, true, fal=
se));
-		textBspOutLoc =3D (Text)addTextControl(textContainer, BSP_OUT_LOC, "");
-		textBspOutLoc.addModifyListener(new ModifyListener() {
+	=09
+		textBspOutputLoc =3D (Text)addTextControl(textContainer, "");
+		textBspOutputLoc.addModifyListener(new ModifyListener() {
 			public void modifyText(ModifyEvent e) {
 				controlChanged(e.widget);
 			}
 		});
-		btnBspOutLoc =3D addFileSelectButton(textContainer, textBspOutLoc);
-		karch_label=3D new Label(composite, SWT.NONE);
-		karch_label.setText("kernel Architecture*: ");
-		karchCombo=3D new Combo(composite, SWT.READ_ONLY);
-		karchCombo.setLayout(new GridLayout(2, false));
-		karchCombo.setLayoutData(new GridData(SWT.FILL, SWT.LEFT, true, false));
-		karchCombo.setEnabled(false);
-		karchCombo.addModifyListener(new ModifyListener() {
+		setBtnBspOutLoc(addFileSelectButton(textContainer,=20
+textBspOutputLoc));
+	=09
+		labelKArch=3D new Label(composite, SWT.NONE);
+		labelKArch.setText("kernel Architecture*: ");
+	=09
+		textContainer =3D new Composite(composite, SWT.NONE);
+		textContainer.setLayout(new GridLayout(2, false));
+		textContainer.setLayoutData(new GridData(SWT.FILL, SWT.CENTER, true,=20
+false));
+	=09
+		comboKArch=3D new Combo(textContainer, SWT.READ_ONLY);
+		comboKArch.setLayout(new GridLayout(2, false));
+		comboKArch.setLayoutData(new GridData(SWT.FILL, SWT.FILL, true, false));
+		comboKArch.setEnabled(false);
+		comboKArch.addModifyListener(new ModifyListener() {
 			public void modifyText(ModifyEvent e) {
 				controlChanged(e.widget);
 			}
 		});
 	=09
-		qarch_label =3D new Label(composite, SWT.NONE);
-		qarch_label.setText("Qemu Architecture(* for karch as qemu): ");
-		qarch_label.setEnabled(false);
-		qarchCombo =3D new Combo(composite, SWT.READ_ONLY);
-		qarchCombo.setLayout(new GridLayout(2, false));
-		qarchCombo.setLayoutData(new GridData(SWT.FILL, SWT.LEFT, true, false));
-		qarchCombo.setEnabled(false);
-		qarchCombo.addModifyListener(new ModifyListener() {
+		labelQArch =3D new Label(composite, SWT.NONE);
+		labelQArch.setText("Qemu Architecture(* for karch as qemu): ");
+		labelQArch.setEnabled(false);
+	=09
+		textContainer =3D new Composite(composite, SWT.NONE);
+		textContainer.setLayout(new GridLayout(2, false));
+		textContainer.setLayoutData(new GridData(SWT.FILL, SWT.CENTER, true,=20
+false));
+	=09
+		comboQArch =3D new Combo(textContainer, SWT.READ_ONLY);
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
=20
-	private Control addTextControl(final Composite parent, String key, String=
 value) {
+	private Control addTextControl(final Composite parent, String value) {
 		final Text text;
=20
 		text =3D new Text(parent, SWT.SINGLE | SWT.LEAD | SWT.BORDER); @@ -197,4=
5 +219,44 @@ public class MainPage extends WizardPage {
 	private void controlChanged(Widget widget) {
 		 Status status =3D new Status(IStatus.OK, "not_used", 0, "", null);
 		 setErrorMessage(null);
-		 String metadata_loc =3D textMetadataLoc.getText();
+		 String metadataLoc =3D textMetadataLoc.getText();
+		=20
 		 if (widget =3D=3D textMetadataLoc) {
 			 resetKarchCombo();
-
-			 if (metadata_loc.length() =3D=3D 0) {
+			 if (metadataLoc.length() =3D=3D 0) {
 				 status =3D new Status(IStatus.ERROR, "not_used", 0, "Meta data locati=
on can't be empty!", null);
 			 } else {
-				 File meta_data =3D new File(metadata_loc);
+				 File meta_data =3D new File(metadataLoc);
 				 if (!meta_data.exists() || !meta_data.isDirectory()) {
 					 status =3D new Status(IStatus.ERROR, "not_used", 0,=20
 							 "Invalid meta data location: Make sure it exists and is a director=
y!", null);
 				 } else {
-					 File bsp_script =3D new File(metadata_loc + "/scripts/" + BSP_SCRIPT=
);
-					 if (!bsp_script.exists() || !bsp_script.canExecute())
+					 File bspScript =3D new File(metadataLoc + "/scripts/" + BSP_SCRIPT);
+					 if (!bspScript.exists() || !bspScript.canExecute())
 						 status =3D new Status(IStatus.ERROR, "not_used", 0,
-								 "Make sure yocto-bsp exists under \"" + metadata_loc + "/scripts\=
" and is executable!", null);
+								 "Make sure yocto-bsp exists under \"" + metadataLoc +=20
+"/scripts\" and is executable!", null);
 					 else {	=09
 						 kernelArchesHandler();
 					 }
 				 }
 			 }
-		 }
-		 if (widget =3D=3D karchCombo) {
-			 String selection =3D karchCombo.getText();
+		 } else if (widget =3D=3D comboKArch) {
+			 String selection =3D comboKArch.getText();
 			 if (!bspElem.getKarch().contentEquals(selection))
 				 bspElem =3D new YoctoBspElement();
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
 			 }	=09
 		 }
 	=09
 		 checkBuildDir();
 		=20
-		 String build_dir =3D textBuilddirLoc.getText();
-		 String output_dir =3D textBspOutLoc.getText();
+		 String build_dir =3D textBuildLoc.getText();
+		 String output_dir =3D textBspOutputLoc.getText();
 		 String bsp_name =3D textBspName.getText();
 		=20
 		 if (!output_dir.isEmpty() && output_dir.matches(build_dir)) { @@ -243,8=
 +264,8 @@ public class MainPage extends WizardPage {
 					 "You've set BSP output directory the same as build directory, please=
 leave output directory empty for this scenario!", null);
 		 }
 		=20
-		 if (build_dir.startsWith(metadata_loc) && output_dir.isEmpty() && !bsp_=
name.isEmpty()) {
-			 String bsp_dir_str =3D metadata_loc + "/meta-" + bsp_name;
+		 if (build_dir.startsWith(metadataLoc) && output_dir.isEmpty() && !bsp_n=
ame.isEmpty()) {
+			 String bsp_dir_str =3D metadataLoc + "/meta-" + bsp_name;
 			 File bsp_dir =3D new File(bsp_dir_str);
 			 if (bsp_dir.exists()) {
 				 status =3D new Status(IStatus.ERROR, "not_used", 0, @@ -262,7 +283,7 =
@@ public class MainPage extends WizardPage {
 =09
 	private void checkBuildDir() {
 		String metadata_dir =3D textMetadataLoc.getText();
-		String builddir_str =3D textBuilddirLoc.getText();
+		String builddir_str =3D textBuildLoc.getText();
 =09
 		File build_dir =3D null;
 		if ((builddir_str =3D=3D null) || builddir_str.isEmpty()) @@ -274,24 +29=
5,15 @@ public class MainPage extends WizardPage {
 			String create_builddir_cmd =3D metadata_dir + "/oe-init-build-env " + b=
uilddir_str;
 			try {
 				Runtime rt =3D Runtime.getRuntime();
-				//Process proc =3D rt.exec(create_builddir_cmd);
 				Process proc =3D rt.exec(new String[] {"sh", "-c", create_builddir_cmd=
});
-				InputStream stdin =3D proc.getInputStream();
-				InputStreamReader isr =3D new InputStreamReader(stdin);
-				BufferedReader br =3D new BufferedReader(isr);
-				String line =3D null;
-
-				while ( (line =3D br.readLine()) !=3D null) {
-				}
-
-				int exitVal =3D proc.waitFor();
+				proc.waitFor();
 			} catch (Throwable t) {
 				t.printStackTrace();
 			}
 		}
 	}
 =09
-	public YoctoBspElement bspElement() {
+	public YoctoBspElement getBSPElement() {
 		return this.bspElem;
 	}
 =09
@@ -301,11 +313,11 @@ public class MainPage extends WizardPage {
 	}
 =09
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
 =09
 	private void kernelArchesHandler() {
@@ -313,14 +325,14 @@ public class MainPage extends WizardPage {
 		if (!karches.isEmpty()) {
 			String[] kitems =3D new String[karches.size()];
 			kitems =3D karches.toArray(kitems);
-			karchCombo.setItems(kitems);
-			karchCombo.setEnabled(true);
+			comboKArch.setItems(kitems);
+			comboKArch.setEnabled(true);
 		}
 		ArrayList<String> qarches =3D getQArches();
 		if (!qarches.isEmpty()) {
 			String[] qitems =3D new String[qarches.size()];
 			qitems =3D qarches.toArray(qitems);
-			qarchCombo.setItems(qitems);
+			comboQArch.setItems(qitems);
 		}
 	}
 =09
@@ -337,26 +349,23 @@ public class MainPage extends WizardPage {
 	public boolean validatePage() {
 		String metadata_loc =3D textMetadataLoc.getText();
 		String bspname =3D textBspName.getText();
-		String karch =3D karchCombo.getText();
-		String qarch =3D qarchCombo.getText();
+		String karch =3D comboKArch.getText();
+		String qarch =3D comboQArch.getText();
 		if (metadata_loc.isEmpty() ||
 				bspname.isEmpty() ||
 				karch.isEmpty()) {
-		=09
 			return false;
-		} else {
-			if (karch.matches("qemu"))
-				if (qarch.isEmpty())
-					return false;
+		} else if (karch.matches("qemu") && qarch.isEmpty()) {
+			return false;
 		}
 	=09
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
 			Runtime rt =3D Runtime.getRuntime();
 			Process proc =3D rt.exec(create_properties_cmd);
-			InputStream stdin =3D proc.getInputStream();
-			InputStreamReader isr =3D new InputStreamReader(stdin);
-			BufferedReader br =3D new BufferedReader(isr);
-			String line =3D null;
-		=09
-			while ( (line =3D br.readLine()) !=3D null) {
-			}
-		=09
 			int exitVal =3D proc.waitFor();
+			if (exitVal !=3D 0)
+				return false;
+			return true;
 		} catch (Throwable t) {
 			t.printStackTrace();
 			return false;
 		}
-		return true;
 	}
 =09
 	private ArrayList<String> getKArches() { @@ -410,7 +413,7 @@ public class=
 MainPage extends WizardPage {
 				karches.add(line);
 			}
 		=09
-			int exitVal =3D proc.waitFor();
+			proc.waitFor();
 		=09
 		} catch (Throwable t) {
 			t.printStackTrace();
@@ -441,7 +444,7 @@ public class MainPage extends WizardPage {
 				value =3D value.replaceAll("\"$", "");
 				qarches.add(value);
 			}
-			int exitVal =3D proc.waitFor();
+			proc.waitFor();
 		=09
 		} catch (Throwable t) {
 			t.printStackTrace();
@@ -449,4 +452,28 @@ public class MainPage extends WizardPage {
 	=09
 		return qarches;
 	}
+
+	public Button getBtnMetadataLoc() {
+		return btnMetadataLoc;
+	}
+
+	public void setBtnMetadataLoc(Button btnMetadataLoc) {
+		this.btnMetadataLoc =3D btnMetadataLoc;
+	}
+
+	public Button getBtnBspOutLoc() {
+		return btnBspOutputLoc;
+	}
+
+	public void setBtnBspOutLoc(Button btnBspOutLoc) {
+		this.btnBspOutputLoc =3D btnBspOutLoc;
+	}
+
+	public Button getBtnBuilddirLoc() {
+		return btnBuildLoc;
+	}
+
+	public void setBtnBuilddirLoc(Button btnBuilddirLoc) {
+		this.btnBuildLoc =3D btnBuilddirLoc;
+	}
 }
diff --git a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetool=
s/wizards/bsp/PropertiesPage.java b/plugins/org.yocto.sdk.remotetools/src/o=
rg/yocto/sdk/remotetools/wizards/bsp/PropertiesPage.java
index 44dc43b..4661b37 100644
--- a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/wizar=
ds/bsp/PropertiesPage.java
+++ b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/wi
+++ zards/bsp/PropertiesPage.java
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
=20
 import org.eclipse.jface.dialogs.MessageDialog;
 import org.eclipse.jface.wizard.WizardPage;
@@ -28,21 +27,20 @@ import org.eclipse.swt.events.ModifyEvent;
 import org.eclipse.swt.events.ModifyListener;
 import org.eclipse.swt.events.SelectionEvent;
 import org.eclipse.swt.events.SelectionListener;
+import org.eclipse.swt.layout.FillLayout;
 import org.eclipse.swt.layout.GridData;  import org.eclipse.swt.layout.Gri=
dLayout;
-import org.eclipse.swt.layout.FillLayout;
 import org.eclipse.swt.widgets.Button;
-import org.eclipse.swt.widgets.Composite;
 import org.eclipse.swt.widgets.Combo;
+import org.eclipse.swt.widgets.Composite;
 import org.eclipse.swt.widgets.Control;  import org.eclipse.swt.widgets.Gr=
oup;  import org.eclipse.swt.widgets.Label;  import org.eclipse.swt.widgets=
.Text;  import org.eclipse.swt.widgets.Widget;
-
 import org.yocto.sdk.remotetools.YoctoBspElement;
-import org.yocto.sdk.remotetools.YoctoJSONHelper;
 import org.yocto.sdk.remotetools.YoctoBspPropertyElement;
+import org.yocto.sdk.remotetools.YoctoJSONHelper;
 /**
  *
  * Setting up the parameters for creating the new Yocto Bitbake project @@=
 -73,22 +71,15 @@ public class PropertiesPage extends WizardPage {
 	private Button smpButton;
 	private Composite kcContainer =3D null;
 	private Group kbGroup =3D null;
-	private Composite scContainer =3D null;
 	private ScrolledComposite sc =3D null;
 	private Composite controlContainer =3D null;
 	private Group propertyGroup =3D null;
 =09
 	public PropertiesPage(YoctoBspElement element) {
 		super(PAGE_NAME, "yocto-bsp properties page", null);
-		//setTitle("Create new yocto bitbake project");
-		//setMessage("Enter these parameters to create new Yocto Project BitBake=
 commander project");
 		this.bspElem =3D element;
 	}
=20
-	public void test() {
-	=09
-	}
-=09
 	public void onEnterPage(YoctoBspElement element) {
 		String[] values;
 		if (!element.getValidPropertiesFile()) { @@ -96,7 +87,7 @@ public class =
PropertiesPage extends WizardPage {
 			return;
 		}
 	=09
-		if ((this.bspElem =3D=3D null) || (!this.bspElem.getKarch().contentEqual=
s(element.getKarch()))) {
+		if (this.bspElem =3D=3D null || this.bspElem.getKarch().isEmpty() ||=20
+!this.bspElem.getKarch().contentEquals(element.getKarch())) {
 			karch_changed =3D true;
 		} else
 			karch_changed =3D false;
@@ -108,7 +99,6 @@ public class PropertiesPage extends WizardPage {
 			sc =3D new ScrolledComposite(this.composite, SWT.H_SCROLL | SWT.V_SCROL=
L);
=20
 			controlContainer =3D new Composite(sc, SWT.NONE);
-			//controlContainer.setLayout(new FillLayout(SWT.VERTICAL));
 			controlContainer.setLayout(new GridLayout(1, false));
 			controlContainer.setLayoutData(new GridData(SWT.FILL, SWT.CENTER, true,=
 false));
 			if (kcContainer =3D=3D null) {
@@ -116,14 +106,11 @@ public class PropertiesPage extends WizardPage {
=20
 				kcContainer.setLayout(new FillLayout());
 				new Label (kcContainer, SWT.NONE).setText(KERNEL_CHOICE+":");
-				//kcGroup.setText(KERNEL_CHOICE);
 				kcCombo =3D new Combo(kcContainer, SWT.DROP_DOWN | SWT.READ_ONLY);
-				//kcCombo.setBounds(50, 50, 150, 10);
 				smpButton =3D new Button(controlContainer, SWT.CHECK);
 				smpButton.setText("SMP Support");
 				smpButton.setSelection(true);
 			=09
-				//kcContainer.setSize(SWT.DEFAULT, SWT.DEFAULT);
 				kbGroup=3D new Group(controlContainer, SWT.NONE);	=09
 				kbGroup.setLayout(new FillLayout(SWT.VERTICAL));=09
 				kbGroup.setText("Kernel Branch Settings:"); @@ -171,7 +158,6 @@ public=
 class PropertiesPage extends WizardPage {
 				=09
 					propertyControlMap =3D new Hashtable<YoctoBspPropertyElement, Control=
>();
 					Iterator<YoctoBspPropertyElement> it =3D properties.iterator();
-					int height =3D 0;
 			=09
 				    while (it.hasNext()) {
 				        // Get property
diff --git a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetool=
s/wizards/bsp/YoctoBSPWizard.java b/plugins/org.yocto.sdk.remotetools/src/o=
rg/yocto/sdk/remotetools/wizards/bsp/YoctoBSPWizard.java
index 368b2ad..454a705 100644
--- a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/wizar=
ds/bsp/YoctoBSPWizard.java
+++ b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/wi
+++ zards/bsp/YoctoBSPWizard.java
@@ -11,42 +11,13 @@
 package org.yocto.sdk.remotetools.wizards.bsp;
=20
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
=20
-import org.eclipse.core.runtime.IProgressMonitor;
-import org.eclipse.core.runtime.IStatus; -import org.eclipse.core.runtime.=
NullProgressMonitor;
-import org.eclipse.core.runtime.Path;
-import org.eclipse.core.runtime.Status;  import org.eclipse.jface.dialogs.=
MessageDialog;
-import org.eclipse.jface.operation.IRunnableWithProgress;
-import org.eclipse.jface.viewers.IStructuredSelection;
 import org.eclipse.jface.wizard.IWizardPage;
-import org.eclipse.jface.wizard.WizardPage;
 import org.eclipse.jface.wizard.Wizard;
-
-import org.eclipse.ui.PlatformUI;
-import org.eclipse.ui.IWorkbench;
-import org.eclipse.ui.IWorkbenchWizard; -import org.eclipse.ui.IWorkbenchP=
age; -import org.eclipse.ui.IWorkbenchWindow; -import org.eclipse.ui.progre=
ss.IProgressService;
-
 import org.yocto.sdk.remotetools.YoctoBspElement;
 import org.yocto.sdk.remotetools.YoctoBspPropertyElement;
 import org.yocto.sdk.remotetools.YoctoJSONHelper;
@@ -72,7 +43,7 @@ public class YoctoBSPWizard extends Wizard {
=20
 	@Override=20
 	public IWizardPage getNextPage(IWizardPage page) {
-		propertiesPage.onEnterPage(mainPage.bspElement());
+		propertiesPage.onEnterPage(mainPage.getBSPElement());
 		return propertiesPage;
 	}
 	=20
@@ -89,7 +60,7 @@ public class YoctoBSPWizard extends Wizard {
 		if (propertiesPage.validatePage()) {
 			HashSet<YoctoBspPropertyElement> properties =3D propertiesPage.getPrope=
rties();
 			YoctoJSONHelper.createBspJSONFile(properties);
-			YoctoBspElement element =3D mainPage.bspElement();
+			YoctoBspElement element =3D mainPage.getBSPElement();
 		=09
 			String create_bsp_cmd =3D element.getMetadataLoc() + CREATE_CMD +=20
 									element.getBspName() + " " + element.getKarch();
--
1.7.9.5

_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

