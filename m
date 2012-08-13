Return-Path: <jessica.zhang@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 668ADE00346
	for <yocto@yoctoproject.org>; Mon, 13 Aug 2012 15:06:04 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 13 Aug 2012 15:06:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.77,762,1336374000"; d="scan'208";a="180198120"
Received: from orsmsx603.amr.corp.intel.com ([10.22.226.49])
	by orsmga001.jf.intel.com with ESMTP; 13 Aug 2012 15:06:02 -0700
Received: from orsmsx151.amr.corp.intel.com (10.22.226.38) by
	orsmsx603.amr.corp.intel.com (10.22.226.49) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Mon, 13 Aug 2012 15:06:02 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.106]) by
	ORSMSX151.amr.corp.intel.com ([169.254.7.162]) with mapi id
	14.01.0355.002; Mon, 13 Aug 2012 15:06:02 -0700
From: "Zhang, Jessica" <jessica.zhang@intel.com>
To: "Grigoropol, IoanaX" <ioanax.grigoropol@intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] [PATCH] Fixed bug 2922 (yocto-bsp creation fails on
	due to	unknown error)
Thread-Index: AQHNeSqm64LY9sghGkGDdUSMrdr5zpdYOhig
Date: Mon, 13 Aug 2012 22:06:01 +0000
Message-ID: <C6510F6D410BB64A8C15398EDC6B847C46AD0BFE@ORSMSX101.amr.corp.intel.com>
References: <1344845081-14137-1-git-send-email-ioanax.grigoropol@intel.com>
In-Reply-To: <1344845081-14137-1-git-send-email-ioanax.grigoropol@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Cc: "Grigoropol, IoanaX" <ioanax.grigoropol@intel.com>
Subject: Re: [PATCH] Fixed bug 2922 (yocto-bsp creation fails on due to	unknown error)
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
X-List-Received-Date: Mon, 13 Aug 2012 22:06:04 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Ioana,

Please see my comments below with [JZ] tags... Also, overall, there's the c=
oding style comments, we don't need to change using tab for assignment, oth=
erwise, we need to change across the program to be consistent.

Thanks,
Jessica

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Ioana Grigoropol
Sent: Monday, August 13, 2012 1:05 AM
To: yocto@yoctoproject.org
Cc: Grigoropol, IoanaX
Subject: [yocto] [PATCH] Fixed bug 2922 (yocto-bsp creation fails on due to=
 unknown error)

- the main page did not check whether in the build location there is an con=
f directory with bblayers.conf and local.conf -> added checks on main page =
(if directory does not exist it will be created) [JZ] the change of this pa=
rt of code is not quite right, there's existing checkBuildDir function, whi=
ch just add the checking for the bblayer.conf and local.conf there should b=
e fine.  Since we allow user not specify build directory, in this case, it'=
s under the metadata location.
- the main page had the field for meta-data location disabled and could onl=
y be populated by browsing -> changed to enabled in order to be able to man=
ually set location (checks are done on the value of this text) [JZ] this is=
 set this way on purpose since we don't want user to type in meta data loca=
tion and make mistakes, by forcing them to select will eliminate potential =
errors, e.g. directory doesn't existing, typos etc. [JZ]
- the properties page shows an empty error pop-up - the process that collec=
ts all kernel branches outputs errors on a different channel than the input=
 one -> redirect error channel to output and collect errors[JZ] nice change=
 [/JZ]
- all process invocations on the properties page are done on the GUI thread=
 and the interface blocks waiting them to finish -> show progress of backgr=
ound threads that loads kernel branches [JZ] nice change [/JZ]

[YOCTO #2922]

Signed-off-by: Ioana Grigoropol <ioanax.grigoropol@intel.com>
---
 .../sdk/remotetools/wizards/bsp/MainPage.java      |  329 +++++++++++++---=
----
 .../remotetools/wizards/bsp/PropertiesPage.java    |  188 +++++++----
 .../remotetools/wizards/bsp/YoctoBSPWizard.java    |   33 +-
 3 files changed, 348 insertions(+), 202 deletions(-)

diff --git a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetool=
s/wizards/bsp/MainPage.java b/plugins/org.yocto.sdk.remotetools/src/org/yoc=
to/sdk/remotetools/wizards/bsp/MainPage.java
index d80dd75..9c09236 100644
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

 /**
@@ -47,39 +44,46 @@ import org.yocto.sdk.remotetools.YoctoBspElement;
  * @author jzhang
  */
 public class MainPage extends WizardPage {
-       public static final String PAGE_NAME =3D "Main";
-       private static final String META_DATA_LOC =3D "MetadataLoc";
-       private static final String BSP_OUT_LOC =3D "BspOutLoc";
-       private static final String BUILD_DIR_LOC =3D "BuilddirLoc";
-       private static final String KARCH_CMD =3D "yocto-bsp list karch";
-       private static final String QARCH_CMD =3D "yocto-bsp list qemu prop=
erty qemuarch";
-       private static final String BSP_SCRIPT =3D "yocto-bsp";
-       private static final String PROPERTIES_CMD_PREFIX =3D "yocto-bsp li=
st ";
-       private static final String PROPERTIES_CMD_SURFIX =3D " properties =
-o ";
-       private static final String PROPERTIES_FILE =3D "/tmp/properties.js=
on";
+       public static  final String  PAGE_NAME                          =3D=
 "Main";
+//     private static final String META_DATA_LOC                       =3D=
 "MetadataLoc";
+//     private static final String BSP_OUT_LOC                         =3D=
 "BspOutLoc";
+//     private static final String BUILD_DIR_LOC                       =3D=
 "BuilddirLoc";
+//     private static final String BSP_NAME                            =3D=
 "BspName";
+       private static final String KARCH_CMD                           =3D=
 "yocto-bsp list karch";
+       private static final String QARCH_CMD                           =3D=
 "yocto-bsp list qemu property qemuarch";
+       private static final String BSP_SCRIPT                          =3D=
 "yocto-bsp";
+       private static final String BBLAYERS_CONF                       =3D=
 "bblayers.conf";
+       private static final String LOCAL_CONF                          =3D=
 "local.conf";
+       private static final String PROPERTIES_CMD_PREFIX       =3D "yocto-=
bsp list ";
+       private static final String PROPERTIES_CMD_SURFIX       =3D " prope=
rties -o ";
+       private static final String PROPERTIES_FILE             =3D "/tmp/p=
roperties.json";
 [JZ] seems you're trying to align the strings, then for the last 3 string =
values, the alignment is not right [/JZ]
-       private Button btnMetadataLoc;
-       private Button btnBspOutLoc;
-       private Button btnBuilddirLoc;
-       private Text textMetadataLoc;
-       private Text textBspName;
-       private Text textBspOutLoc;
-       private Text textBuilddirLoc;
-       private Combo karchCombo;
-       private Combo qarchCombo;
-       private Label metadata_label;
-       private Label builddir_label;
-       private Label bspname_label;
-       private Label bspout_label;
-       private Label karch_label;
-       private Label qarch_label;
+       private Button  btnMetadataLoc;
+       private Text    textMetadataLoc;
+       private Label   labelMetadata;
+
+       private Button  btnBspOutputLoc;
+       private Text    textBspOutputLoc;
+       private Label   labelBspOutput;
+
+       private Button  btnBuildLoc;
+       private Text    textBuildLoc;
+       private Label   labelBuildLoc;
+
+       private Text    textBspName;
+       private Label   labelBspName;
+
+       private Combo   comboKArch;
+       private Label   labelKArch;
+
+       private Combo   comboQArch;
+       private Label   labelQArch;

        private YoctoBspElement bspElem;

        public MainPage(YoctoBspElement element) {
                super(PAGE_NAME, "yocto-bsp main page", null);

-               //setTitle("Yocto-bsp main page");
                setMessage("Enter the required fields(with *) to create new=
 Yocto Project BSP!");
                this.bspElem =3D element;
        }
@@ -87,78 +91,100 @@ public class MainPage extends WizardPage {
        public void createControl(Composite parent) {
                setErrorMessage(null);
                Composite composite =3D new Composite(parent, SWT.NONE);
-               GridData gd =3D new GridData(SWT.FILL, SWT.CENTER, true, fa=
lse);
-               GridLayout layout =3D new GridLayout(2, false);
+               GridData gd             =3D new GridData(SWT.FILL, SWT.CENT=
ER, true, false);
+               GridLayout layout       =3D new GridLayout(2, false);
[JZ] I don't think we need to change the assignment style here, otherwise, =
the whole program needs to be changed to be consistent [/JZ]
                composite.setLayout(layout);

-               gd.horizontalSpan=3D 2;
+               gd.horizontalSpan       =3D 2;
[JZ] same as above comment [/JZ]
                composite.setLayoutData(gd);

-               metadata_label =3D new Label(composite, SWT.NONE);
-               metadata_label.setText("Meta_data location*: ");
+               labelMetadata                   =3D new Label(composite, SW=
T.NONE); [JZ] Same style comment [/JZ]
+               labelMetadata.setText("Meta_data location*: ");
+
                Composite textContainer =3D new Composite(composite, SWT.NO=
NE);
                textContainer.setLayout(new GridLayout(2, false));
                textContainer.setLayoutData(new GridData(SWT.FILL, SWT.CENT=
ER, true, false));
-               textMetadataLoc =3D (Text)addTextControl(textContainer,META=
_DATA_LOC, "");
-               textMetadataLoc.setEnabled(false); [JZ] we need this to be =
disabled, see reason above [/JZ]
+
+               textMetadataLoc                 =3D (Text)addTextControl(te=
xtContainer, "");
+               textMetadataLoc.setEnabled(true);
                textMetadataLoc.addModifyListener(new ModifyListener() {
                        public void modifyText(ModifyEvent e) {
                                controlChanged(e.widget);
                        }
                });
-               btnMetadataLoc =3D addFileSelectButton(textContainer, textM=
etadataLoc);
+               setBtnMetadataLoc(addFileSelectButton(textContainer,
+textMetadataLoc));

-               builddir_label =3D new Label(composite, SWT.NONE);
-               builddir_label.setText("Build location: ");
-               textContainer =3D new Composite(composite, SWT.NONE);
+               labelBuildLoc   =3D new Label(composite, SWT.NONE);
+               labelBuildLoc.setText("Build location*: ");
+               textContainer   =3D new Composite(composite, SWT.NONE);
                textContainer.setLayout(new GridLayout(2, false));
                textContainer.setLayoutData(new GridData(SWT.FILL, SWT.CENT=
ER, true, false));
-               textBuilddirLoc =3D (Text)addTextControl(textContainer, BUI=
LD_DIR_LOC, "");
-               btnBuilddirLoc =3D addFileSelectButton(textContainer, textB=
uilddirLoc);
+               textBuildLoc    =3D (Text)addTextControl(textContainer, "")=
;
+               textBuildLoc.addModifyListener(new ModifyListener() {
+                       public void modifyText(ModifyEvent e) {
+                               controlChanged(e.widget);
+                       }
+               }); [JZ] we can't rely on this for build directory checking=
[/JZ]
+
+               setBtnBuilddirLoc(addFileSelectButton(textContainer, textBu=
ildLoc));

-               bspname_label =3D new Label(composite, SWT.NONE);
-               bspname_label.setText("BSP Name*: ");
-               textBspName =3D new Text(composite, SWT.BORDER | SWT.SINGLE=
);
-               gd =3D new GridData(GridData.FILL_HORIZONTAL);
-               textBspName.setLayoutData(gd);
+               labelBspName    =3D new Label(composite, SWT.NONE);
+               labelBspName.setText("BSP Name*: ");
+//             textBspName     =3D new Text(composite, SWT.BORDER | SWT.SI=
NGLE);
+               textContainer   =3D new Composite(composite, SWT.NONE);
+               textContainer.setLayout(new GridLayout(2, false));
+               textContainer.setLayoutData(new GridData(SWT.FILL, SWT.CENT=
ER, true, false));
+//             gd =3D new GridData(GridData.FILL_HORIZONTAL);
+//             textBspName.setLayoutData(gd);
+               textBspName     =3D (Text)addTextControl(textContainer, "")=
;
                textBspName.addModifyListener(new ModifyListener() {
                        public void modifyText(ModifyEvent e) {
                                controlChanged(e.widget);
                        }
                });

-               bspout_label =3D new Label(composite, SWT.NONE);
-               bspout_label.setText("Bsp output location: ");
+               labelBspOutput =3D new Label(composite, SWT.NONE);
+               labelBspOutput.setText("Bsp output location: ");
                textContainer =3D new Composite(composite, SWT.NONE);
                textContainer.setLayout(new GridLayout(2, false));
                textContainer.setLayoutData(new GridData(SWT.FILL, SWT.CENT=
ER, true, false));
-               textBspOutLoc =3D (Text)addTextControl(textContainer, BSP_O=
UT_LOC, "");
-               textBspOutLoc.addModifyListener(new ModifyListener() {
+               textBspOutputLoc =3D (Text)addTextControl(textContainer, ""=
);
+               textBspOutputLoc.addModifyListener(new ModifyListener() {
                        public void modifyText(ModifyEvent e) {
                                controlChanged(e.widget);
                        }
                });
-               btnBspOutLoc =3D addFileSelectButton(textContainer, textBsp=
OutLoc);
-               karch_label=3D new Label(composite, SWT.NONE);
-               karch_label.setText("kernel Architecture*: ");
-               karchCombo=3D new Combo(composite, SWT.READ_ONLY);
-               karchCombo.setLayout(new GridLayout(2, false));
-               karchCombo.setLayoutData(new GridData(SWT.FILL, SWT.LEFT, t=
rue, false));
-               karchCombo.setEnabled(false);
-               karchCombo.addModifyListener(new ModifyListener() {
+               setBtnBspOutLoc(addFileSelectButton(textContainer, textBspO=
utputLoc));
+               labelKArch=3D new Label(composite, SWT.NONE);
+               labelKArch.setText("kernel Architecture*: ");
+
+               textContainer =3D new Composite(composite, SWT.NONE);
+               textContainer.setLayout(new GridLayout(2, false));
+               textContainer.setLayoutData(new GridData(SWT.FILL, SWT.CENT=
ER, true,
+false));
+
+               comboKArch=3D new Combo(textContainer, SWT.READ_ONLY);
+               comboKArch.setLayout(new GridLayout(2, false));
+               comboKArch.setLayoutData(new GridData(SWT.FILL, SWT.FILL, t=
rue, false));
+               comboKArch.setEnabled(false);
+               comboKArch.addModifyListener(new ModifyListener() {
                        public void modifyText(ModifyEvent e) {
                                controlChanged(e.widget);
                        }
                });

-               qarch_label =3D new Label(composite, SWT.NONE);
-               qarch_label.setText("Qemu Architecture(* for karch as qemu)=
: ");
-               qarch_label.setEnabled(false);
-               qarchCombo =3D new Combo(composite, SWT.READ_ONLY);
-               qarchCombo.setLayout(new GridLayout(2, false));
-               qarchCombo.setLayoutData(new GridData(SWT.FILL, SWT.LEFT, t=
rue, false));
-               qarchCombo.setEnabled(false);
-               qarchCombo.addModifyListener(new ModifyListener() {
+               labelQArch =3D new Label(composite, SWT.NONE);
+               labelQArch.setText("Qemu Architecture(* for karch as qemu):=
 ");
+               labelQArch.setEnabled(false);
+
+               textContainer =3D new Composite(composite, SWT.NONE);
+               textContainer.setLayout(new GridLayout(2, false));
+               textContainer.setLayoutData(new GridData(SWT.FILL, SWT.CENT=
ER, true,
+false));
+
+               comboQArch =3D new Combo(textContainer, SWT.READ_ONLY);
+               comboQArch.setLayout(new GridLayout(2, false));
+               comboQArch.setLayoutData(new GridData(SWT.FILL, SWT.FILL, t=
rue, false));
+               comboQArch.setEnabled(false);
+               comboQArch.addModifyListener(new ModifyListener() {
                        public void modifyText(ModifyEvent e) {
                                controlChanged(e.widget);
                        }
@@ -168,7 +194,7 @@ public class MainPage extends WizardPage {
                validatePage();
        }

-       private Control addTextControl(final Composite parent, String key, =
String value) {
+       private Control addTextControl(final Composite parent, String value=
) {
                final Text text;

                text =3D new Text(parent, SWT.SINGLE | SWT.LEAD | SWT.BORDE=
R); @@ -197,62 +223,84 @@ public class MainPage extends WizardPage {
        private void controlChanged(Widget widget) {
                 Status status =3D new Status(IStatus.OK, "not_used", 0, ""=
, null);
                 setErrorMessage(null);
-                String metadata_loc =3D textMetadataLoc.getText();
+                String metadataLoc =3D textMetadataLoc.getText();
+
                 if (widget =3D=3D textMetadataLoc) {
                         resetKarchCombo();
-
-                        if (metadata_loc.length() =3D=3D 0) {
+
+                        if (metadataLoc.length() =3D=3D 0) {
                                 status =3D new Status(IStatus.ERROR, "not_=
used", 0, "Meta data location can't be empty!", null);
                         } else {
-                                File meta_data =3D new File(metadata_loc);
+                                File meta_data =3D new File(metadataLoc);
                                 if (!meta_data.exists() || !meta_data.isDi=
rectory()) {
                                         status =3D new Status(IStatus.ERRO=
R, "not_used", 0,
                                                         "Invalid meta data=
 location: Make sure it exists and is a directory!", null);
                                 } else {
-                                        File bsp_script =3D new File(metad=
ata_loc + "/scripts/" + BSP_SCRIPT);
+                                        File bsp_script =3D new File(metad=
ataLoc + "/scripts/" +
+BSP_SCRIPT); [JZ] Seems we have an unnecessary line breakage here? [/JZ]
                                         if (!bsp_script.exists() || !bsp_s=
cript.canExecute())
                                                 status =3D new Status(ISta=
tus.ERROR, "not_used", 0,
-                                                                "Make sure=
 yocto-bsp exists under \"" + metadata_loc + "/scripts\" and is executable!=
", null);
+                                                                "Make sure=
 yocto-bsp exists under \"" + metadataLoc +
+"/scripts\" and is executable!", null);
[JZ] Seems we have an unnecessary line breakage here? [/JZ]
                                         else {
                                                 kernelArchesHandler();
                                         }
                                 }
                         }
-                }
-                if (widget =3D=3D karchCombo) {
-                        String selection =3D karchCombo.getText();
+                } else if (widget =3D=3D comboKArch) {
+                        String selection =3D comboKArch.getText();
                         if (!bspElem.getKarch().contentEquals(selection))
                                 bspElem =3D new YoctoBspElement();
                         if (selection.matches("qemu")) {
-                                qarch_label.setEnabled(true);
-                                qarchCombo.setEnabled(true);
+                                labelQArch.setEnabled(true);
+                                comboQArch.setEnabled(true);
                         } else {
-                                qarch_label.setEnabled(false);
-                                qarchCombo.setEnabled(false);
+                                labelQArch.setEnabled(false);
+                                comboQArch.setEnabled(false);
                         }
-                }
-
-                checkBuildDir();
-
-                String build_dir =3D textBuilddirLoc.getText();
-                String output_dir =3D textBspOutLoc.getText();
-                String bsp_name =3D textBspName.getText();
+                } else if (widget =3D=3D textBuildLoc){
+                        String buildLoc =3D textBuildLoc.getText();
+                        if (buildLoc.length() =3D=3D 0) {
+                                status =3D new Status(IStatus.ERROR, "not_=
used", 0, "Build location can't be empty!", null);
+                        } else {
+                                File buildLocDir =3D new File(buildLoc);
+                                if (!buildLocDir.isDirectory()) {
+                                        status =3D new Status(IStatus.ERRO=
R, "not_used", 0,
+                                                        "Invalid build loc=
ation: Make sure the build location is a directory!", null);
+                                } else {
+                                        boolean createBuildDir =3D false;
+                                        File bblayersConf =3D new File(bui=
ldLoc + "/conf/" + BBLAYERS_CONF);
+                                        File localConf =3D new File(buildL=
oc + "/conf/" + LOCAL_CONF);
+                                        if (!bblayersConf.exists() || !loc=
alConf.exists())
+                                               createBuildDir =3D true;
+
+                                        if (createBuildDir){
+                                                if (createBuildDir() !=3D =
0)
+                                                        status =3D new Sta=
tus(IStatus.ERROR, "not_used", 0,
+                                                                        "I=
nvalid build location: Make sure the build location is a
+directory and is writable!", null);
+
+                                        }
+
+                                }
+                        }
+
+                }
+//              checkBuildDir();
+                String build_dir  =3D textBuildLoc.getText();
+                String output_dir =3D textBspOutputLoc.getText();
+                String bsp_name   =3D textBspName.getText();

                 if (!output_dir.isEmpty() && output_dir.matches(build_dir)=
) {
                         status =3D new Status(IStatus.ERROR, "not_used", 0=
,
                                         "You've set BSP output directory t=
he same as build directory, please leave output directory empty for this sc=
enario!", null);
                 }

-                if (build_dir.startsWith(metadata_loc) && output_dir.isEmp=
ty() && !bsp_name.isEmpty()) {
-                        String bsp_dir_str =3D metadata_loc + "/meta-" + b=
sp_name;
+                if (build_dir.startsWith(metadataLoc) && output_dir.isEmpt=
y() && !bsp_name.isEmpty()) {
+                        String bsp_dir_str =3D metadataLoc + "/meta-" + bs=
p_name;
                         File bsp_dir =3D new File(bsp_dir_str);
                         if (bsp_dir.exists()) {
                                 status =3D new Status(IStatus.ERROR, "not_=
used", 0,
                                                 "Your BSP with name: " + b=
sp_name + " already exist under directory: " + bsp_dir_str + ", please chan=
ge your bsp name!", null);
                         }
                 }
-                validatePage();
-
                 if (status.getSeverity() =3D=3D IStatus.ERROR)
                         setErrorMessage(status.getMessage());

@@ -262,7 +310,7 @@ public class MainPage extends WizardPage {

        private void checkBuildDir() {
                String metadata_dir =3D textMetadataLoc.getText();
-               String builddir_str =3D textBuilddirLoc.getText();
+               String builddir_str =3D textBuildLoc.getText();

                File build_dir =3D null;
                if ((builddir_str =3D=3D null) || builddir_str.isEmpty()) @=
@ -274,7 +322,6 @@ public class MainPage extends WizardPage {
                        String create_builddir_cmd =3D metadata_dir + "/oe-=
init-build-env " + builddir_str;
                        try {
                                Runtime rt =3D Runtime.getRuntime();
-                               //Process proc =3D rt.exec(create_builddir_=
cmd);
                                Process proc =3D rt.exec(new String[] {"sh"=
, "-c", create_builddir_cmd});
                                InputStream stdin =3D proc.getInputStream()=
;
                                InputStreamReader isr =3D new InputStreamRe=
ader(stdin); @@ -282,6 +329,7 @@ public class MainPage extends WizardPage {
                                String line =3D null;

                                while ( (line =3D br.readLine()) !=3D null)=
 {
+
                                }

                                int exitVal =3D proc.waitFor();
@@ -291,7 +339,33 @@ public class MainPage extends WizardPage {
                }
        }

-       public YoctoBspElement bspElement() {
+       private int createBuildDir() {
+               String metadataDir =3D textMetadataLoc.getText();
+               String buildLoc    =3D textBuildLoc.getText();
+
+               String createBuildDirCmd =3D "cd " + metadataDir + " ;" + m=
etadataDir + "/oe-init-build-env " + buildLoc;
+               try {
+                       ProcessBuilder builder =3D new ProcessBuilder(new S=
tring[] {"sh", "-c", createBuildDirCmd});
+                       builder.redirectErrorStream(true);
+                       Process proc =3D builder.start();
+
+//                     InputStream stdin =3D proc.getInputStream();
+//                     InputStreamReader isr =3D new InputStreamReader(std=
in);
+//                     BufferedReader br =3D new BufferedReader(isr);
+//                     String line =3D null;
+//
+//                     while ( (line =3D br.readLine()) !=3D null) {
+//                             System.out.println(line);
+//                     }
+
+                       return proc.waitFor();
+               } catch (Throwable t) {
+                       t.printStackTrace();
+                       return 1;
+               }
+       }
+
+       public YoctoBspElement getBSPElement() {
                return this.bspElem;
        }

@@ -301,11 +375,11 @@ public class MainPage extends WizardPage {
        }

        private void resetKarchCombo() {
-               karchCombo.deselectAll();
-               qarchCombo.deselectAll();
-               karchCombo.setEnabled(false);
-               qarch_label.setEnabled(false);
-               qarchCombo.setEnabled(false);
+               comboKArch.deselectAll();
+               comboQArch.deselectAll();
+               comboKArch.setEnabled(false);
+               labelQArch.setEnabled(false);
+               comboQArch.setEnabled(false);
        }

        private void kernelArchesHandler() {
@@ -313,14 +387,14 @@ public class MainPage extends WizardPage {
                if (!karches.isEmpty()) {
                        String[] kitems =3D new String[karches.size()];
                        kitems =3D karches.toArray(kitems);
-                       karchCombo.setItems(kitems);
-                       karchCombo.setEnabled(true);
+                       comboKArch.setItems(kitems);
+                       comboKArch.setEnabled(true);
                }
                ArrayList<String> qarches =3D getQArches();
                if (!qarches.isEmpty()) {
                        String[] qitems =3D new String[qarches.size()];
                        qitems =3D qarches.toArray(qitems);
-                       qarchCombo.setItems(qitems);
+                       comboQArch.setItems(qitems);
                }
        }

@@ -336,27 +410,24 @@ public class MainPage extends WizardPage {

        public boolean validatePage() {
                String metadata_loc =3D textMetadataLoc.getText();
-               String bspname =3D textBspName.getText();
-               String karch =3D karchCombo.getText();
-               String qarch =3D qarchCombo.getText();
+               String bspname          =3D textBspName.getText();
+               String karch            =3D comboKArch.getText();
+               String qarch            =3D comboQArch.getText();
                if (metadata_loc.isEmpty() ||
                                bspname.isEmpty() ||
                                karch.isEmpty()) {
-
                        return false;
-               } else {
-                       if (karch.matches("qemu"))
-                               if (qarch.isEmpty())
-                                       return false;
+               } else if (karch.matches("qemu") && qarch.isEmpty()) {
+                       return false;
                }

                bspElem.setBspName(bspname);
-               if (!textBspOutLoc.getText().isEmpty())
-                       bspElem.setBspOutLoc(textBspOutLoc.getText());
+               if (!textBspOutputLoc.getText().isEmpty())
+                       bspElem.setBspOutLoc(textBspOutputLoc.getText());
                else
                        bspElem.setBspOutLoc("");
-               if (!textBuilddirLoc.getText().isEmpty())
-                       bspElem.setBuildLoc(textBuilddirLoc.getText());
+               if (!textBuildLoc.getText().isEmpty())
+                       bspElem.setBuildLoc(textBuildLoc.getText());
                else
                        bspElem.setBuildLoc("");
                bspElem.setMetadataLoc(metadata_loc);
@@ -449,4 +520,28 @@ public class MainPage extends WizardPage {

                return qarches;
        }
+
+       public Button getBtnMetadataLoc() {
+               return btnMetadataLoc;
+       }
+
+       public void setBtnMetadataLoc(Button btnMetadataLoc) {
+               this.btnMetadataLoc =3D btnMetadataLoc;
+       }
+
+       public Button getBtnBspOutLoc() {
+               return btnBspOutputLoc;
+       }
+
+       public void setBtnBspOutLoc(Button btnBspOutLoc) {
+               this.btnBspOutputLoc =3D btnBspOutLoc;
+       }
+
+       public Button getBtnBuilddirLoc() {
+               return btnBuildLoc;
+       }
+
+       public void setBtnBuilddirLoc(Button btnBuilddirLoc) {
+               this.btnBuildLoc =3D btnBuilddirLoc;
+       }
 }
diff --git a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetool=
s/wizards/bsp/PropertiesPage.java b/plugins/org.yocto.sdk.remotetools/src/o=
rg/yocto/sdk/remotetools/wizards/bsp/PropertiesPage.java
index 44dc43b..0d38187 100644
--- a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/wizar=
ds/bsp/PropertiesPage.java
+++ b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/wi
+++ zards/bsp/PropertiesPage.java
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
 -73,7 +74,6 @@ public class PropertiesPage extends WizardPage {
        private Button smpButton;
        private Composite kcContainer =3D null;
        private Group kbGroup =3D null;
-       private Composite scContainer =3D null;
        private ScrolledComposite sc =3D null;
        private Composite controlContainer =3D null;
        private Group propertyGroup =3D null;
@@ -85,18 +85,14 @@ public class PropertiesPage extends WizardPage {
                this.bspElem =3D element;
        }

-       public void test() {
-
-       }
-
        public void onEnterPage(YoctoBspElement element) {
                String[] values;
                if (!element.getValidPropertiesFile()) {
-                       setErrorMessage("There's no valid properties file c=
reated, please choose \"Back\" to reselect kernel architectur!");
+                       setErrorMessage("There's no valid properties file c=
reated, please
+choose \"Back\" to reselect kernel architecture!");
                        return;
                }

-               if ((this.bspElem =3D=3D null) || (!this.bspElem.getKarch()=
.contentEquals(element.getKarch()))) {
+               if (this.bspElem =3D=3D null || this.bspElem.getKarch().isE=
mpty() ||
+!this.bspElem.getKarch().contentEquals(element.getKarch())) {
                        karch_changed =3D true;
                } else
                        karch_changed =3D false;
@@ -439,52 +435,136 @@ public class PropertiesPage extends WizardPage {
                 getWizard().getContainer().updateButtons();
        }

+
+       class SleepThread extends Thread {
+                 private long ms;
+                 public SleepThread(long ms) {
+                   this.ms =3D ms;
+                 }
+
+                 public void run() {
+                   try {
+                     sleep(ms);
+                   } catch (InterruptedException e) {}
+                 }
+               }
+
        private String[] getValues(String property) {
-               ArrayList<String> values =3D new ArrayList<String>();
+               final ValuesGetter runnable  =3D new ValuesGetter(property)=
;

-               String build_dir =3D "";
-               if ((bspElem.getBuildLoc() =3D=3D null) || bspElem.getBuild=
Loc().isEmpty())
-                       build_dir =3D bspElem.getMetadataLoc()+"/build";
-               else
-                       build_dir =3D bspElem.getBuildLoc();
-
-               String values_cmd =3D "export BUILDDIR=3D" + build_dir + ";=
"+bspElem.getMetadataLoc() + "/scripts/" + VALUES_CMD_PREFIX + bspElem.getK=
arch() + VALUES_CMD_SURFIX + property;
-
+               ProgressMonitorDialog dialog =3D new ProgressMonitorDialog(=
getShell());
                try {
-                       Runtime rt =3D Runtime.getRuntime();
+                       dialog.run(true, true, new IRunnableWithProgress(){
+                            public void run(IProgressMonitor monitor) {
+                                monitor.beginTask("Loading Kernel branches=
 ...", 100);
+                                runnable.run();
+                                monitor.done();
+                            }
+                        });
+               } catch (InvocationTargetException e) {
+                       e.printStackTrace();
+               } catch (InterruptedException e) {
+                       e.printStackTrace();
+               }
+               return runnable.items;
+
+//             ArrayList<String> values =3D new ArrayList<String>();
+//
+//             String build_dir =3D "";
+//             if ((bspElem.getBuildLoc() =3D=3D null) || bspElem.getBuild=
Loc().isEmpty())
+//                     build_dir =3D bspElem.getMetadataLoc()+"/build";
+//             else
+//                     build_dir =3D bspElem.getBuildLoc();
+//
+//             String values_cmd =3D "export BUILDDIR=3D" + build_dir + ";=
" + bspElem.getMetadataLoc() + "/scripts/" + VALUES_CMD_PREFIX + bspElem.ge=
tKarch() + VALUES_CMD_SURFIX + property;
+//
+//             try {
+//                     ProcessBuilder builder =3D new ProcessBuilder(new S=
tring[] {"sh", "-c", values_cmd});
+//                     builder.redirectErrorStream(true);
+//                     Process process =3D builder.start();
+////                   Runtime rt =3D Runtime.getRuntime();
+////                   Process proc =3D rt.exec(new String[] {"sh", "-c", =
values_cmd});
+//                     BufferedReader br =3D new BufferedReader(new InputS=
treamReader(process.getInputStream()));
+//                     String line =3D null;
+//                     String error_message =3D "";
+//                     while ( (line =3D br.readLine()) !=3D null) {
+//                             if (!line.startsWith("[")) {
+//                                     error_message +=3D line + "\n";
+//                                     continue;
+//                             }
+//                             String[] items =3D line.split(",");
+//
+//                             String value =3D items[0];
+//                             value =3D value.replace("[\"", "");
+//                             value =3D value.replaceAll("\"$", "");
+//                             values.add(value);
+//                     }
+//                     int exitVal =3D process.waitFor();
+//                     if (exitVal !=3D 0) {
+//                             MessageDialog.openError(getShell(),"Yocto-B=
SP", error_message);
+//                             return null;
+//                     }
+//             } catch (Throwable t) {
+//                     t.printStackTrace();
+//             }
+//             if (!values.isEmpty()) {
+//                     String[] vitems =3D new String[values.size()];
+//                     vitems =3D values.toArray(vitems);
+//                     return vitems;
+//             } else
+//                     return null;
+       }

-                       Process proc =3D rt.exec(new String[] {"sh", "-c", =
values_cmd});
-                       InputStream stdin =3D proc.getInputStream();
-                       InputStreamReader isr =3D new InputStreamReader(std=
in);
-                       BufferedReader br =3D new BufferedReader(isr);
-                       String line =3D null;
-                       String error_message =3D "";
+       class ValuesGetter implements Runnable {
+               String property;
+               String[] items;
+
+               public ValuesGetter(String property) {
+                       this.property =3D property;
+               }
+
+               public void run() {
+                       ArrayList<String> values =3D new ArrayList<String>(=
);
+
+                       String build_dir =3D "";
+                       if ((bspElem.getBuildLoc() =3D=3D null) || bspElem.=
getBuildLoc().isEmpty())
+                               build_dir =3D bspElem.getMetadataLoc()+"/bu=
ild";
+                       else
+                               build_dir =3D bspElem.getBuildLoc();

-                       while ( (line =3D br.readLine()) !=3D null) {
-                               if (!line.startsWith("[")) {
-                                       error_message =3D error_message + l=
ine;
-                                       continue;
+                       String values_cmd =3D "export BUILDDIR=3D" + build_=
dir + ";" + bspElem.getMetadataLoc() + "/scripts/" + VALUES_CMD_PREFIX + bs=
pElem.getKarch() + VALUES_CMD_SURFIX + property;
+                       try {
+                               ProcessBuilder builder =3D new ProcessBuild=
er(new String[] {"sh", "-c", values_cmd});
+                               builder.redirectErrorStream(true);
+                               Process process =3D builder.start();
+                               BufferedReader br =3D new BufferedReader(ne=
w InputStreamReader(process.getInputStream()));
+                               String line =3D null;
+                               String error_message =3D "";
+                               while ( (line =3D br.readLine()) !=3D null)=
 {
+                                       if (!line.startsWith("[")) {
+                                               error_message +=3D line + "=
\n";
+                                               continue;
+                                       }
+                                       String[] items =3D line.split(",");
+
+                                       String value =3D items[0];
+                                       value =3D value.replace("[\"", "");
+                                       value =3D value.replaceAll("\"$", "=
");
+                                       values.add(value);
                                }
-                               String[] items =3D line.split(",");
-
-                               String value =3D items[0];
-                               value =3D value.replace("[\"", "");
-                               value =3D value.replaceAll("\"$", "");
-                               values.add(value);
+                               int exitVal =3D process.waitFor();
+                               if (exitVal !=3D 0) {
+                                       MessageDialog.openError(getShell(),=
"Yocto-BSP", error_message);
+                                       items =3D null;
+                               }
+                       } catch (Throwable t) {
+                               t.printStackTrace();
+                       }
+                       if (!values.isEmpty()) {
+                               items =3D new String[values.size()];
+                               items =3D values.toArray(items);
                        }
-                       int exitVal =3D proc.waitFor();
-                       if (exitVal !=3D 0) {
-                               MessageDialog.openError(getShell(),"Yocto-B=
SP", error_message);
-                               return null;
-                       }
-               } catch (Throwable t) {
-                       t.printStackTrace();
                }
-               if (!values.isEmpty()) {
-                       String[] vitems =3D new String[values.size()];
-                       vitems =3D values.toArray(vitems);
-                       return vitems;
-               } else
-                       return null;
        }
+
 }
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

        @Override
        public IWizardPage getNextPage(IWizardPage page) {
-               propertiesPage.onEnterPage(mainPage.bspElement());
+               propertiesPage.onEnterPage(mainPage.getBSPElement());
                return propertiesPage;
        }

@@ -89,7 +60,7 @@ public class YoctoBSPWizard extends Wizard {
                if (propertiesPage.validatePage()) {
                        HashSet<YoctoBspPropertyElement> properties =3D pro=
pertiesPage.getProperties();
                        YoctoJSONHelper.createBspJSONFile(properties);
-                       YoctoBspElement element =3D mainPage.bspElement();
+                       YoctoBspElement element =3D mainPage.getBSPElement(=
);

                        String create_bsp_cmd =3D element.getMetadataLoc() =
+ CREATE_CMD +
                                                                        ele=
ment.getBspName() + " " + element.getKarch();
--
1.7.9.5

_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

