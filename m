Return-Path: <jessica.zhang@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4BAD7E01473
	for <yocto@yoctoproject.org>; Tue, 15 Jan 2013 15:52:23 -0800 (PST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 15 Jan 2013 15:52:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,475,1355126400"; d="scan'208";a="244359533"
Received: from orsmsx105.amr.corp.intel.com ([10.22.225.132])
	by azsmga001.ch.intel.com with ESMTP; 15 Jan 2013 15:52:20 -0800
Received: from orsmsx151.amr.corp.intel.com (10.22.226.38) by
	ORSMSX105.amr.corp.intel.com (10.22.225.132) with Microsoft SMTP Server
	(TLS) id 14.1.355.2; Tue, 15 Jan 2013 15:52:19 -0800
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.209]) by
	ORSMSX151.amr.corp.intel.com ([169.254.7.4]) with mapi id
	14.01.0355.002; Tue, 15 Jan 2013 15:52:19 -0800
From: "Zhang, Jessica" <jessica.zhang@intel.com>
To: "Grigoropol, IoanaX" <ioanax.grigoropol@intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] [PATCH] [Bug #3963][eclipse-poky][branch:denzil]
Thread-Index: AQHN80DXWmpXHZiF0UCzRFS6aBIm0phLEBhw
Date: Tue, 15 Jan 2013 23:52:19 +0000
Message-ID: <C6510F6D410BB64A8C15398EDC6B847C57DD181E@ORSMSX101.amr.corp.intel.com>
References: <1358268016-7179-1-git-send-email-ioanax.grigoropol@intel.com>
In-Reply-To: <1358268016-7179-1-git-send-email-ioanax.grigoropol@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Re: [PATCH] [Bug #3963][eclipse-poky][branch:denzil]
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
X-List-Received-Date: Tue, 15 Jan 2013 23:52:23 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Merged to eclipse-poky denzil.

Thanks,
Jessica

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Ioana Grigoropol
Sent: Tuesday, January 15, 2013 8:40 AM
To: yocto@yoctoproject.org
Subject: [yocto] [PATCH] [Bug #3963][eclipse-poky][branch:denzil]

- source oe-init-build-env each time a command is ran using yocto-bsp tool

Signed-off-by: Ioana Grigoropol <ioanax.grigoropol@intel.com>
---
 .../sdk/remotetools/wizards/bsp/MainPage.java      |   86 ++++++++++++++++=
++--
 .../remotetools/wizards/bsp/PropertiesPage.java    |   16 ++--
 2 files changed, 89 insertions(+), 13 deletions(-)

diff --git a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetool=
s/wizards/bsp/MainPage.java b/plugins/org.yocto.sdk.remotetools/src/org/yoc=
to/sdk/remotetools/wizards/bsp/MainPage.java
index aa1c124..f7dea27 100644
--- a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/wizar=
ds/bsp/MainPage.java
+++ b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/wi
+++ zards/bsp/MainPage.java
@@ -56,6 +56,7 @@ public class MainPage extends WizardPage {
        private static final String PROPERTIES_CMD_PREFIX =3D "yocto-bsp li=
st ";
        private static final String PROPERTIES_CMD_SURFIX =3D " properties =
-o ";
        private static final String PROPERTIES_FILE =3D "/tmp/properties.js=
on";
+       static final String INIT_FILE =3D "/oe-init-build-env";

        private Button btnMetadataLoc;
        private Button btnBspOutLoc;
@@ -287,8 +288,18 @@ public class MainPage extends WizardPage {
                }

                bspElem.setBspName(bspname);
+//             if (!textBspOutLoc.getText().isEmpty())
+//                     bspElem.setBspOutLoc(textBspOutLoc.getText());
                if (!textBspOutLoc.getText().isEmpty())
                        bspElem.setBspOutLoc(textBspOutLoc.getText());
+               else
+                       bspElem.setBspOutLoc("");
+               if (!textBspOutLoc.getText().isEmpty())
+                       bspElem.setBuildLoc(textBspOutLoc.getText());
+               else {
+                       bspElem.setBuildLoc(metadata_loc + "/build");
+                       checkBuildDir();
+               }
                bspElem.setMetadataLoc(metadata_loc);
                bspElem.setKarch(karch);
                bspElem.setQarch(qarch);
@@ -296,6 +307,53 @@ public class MainPage extends WizardPage {

                return true;
        }
+       private Status createBuildDir(String buildLoc) {
+               String metadataDir =3D textMetadataLoc.getText();
+
+               // if we do  not change the directory to metadata location =
the script will be looked into the directory indicated by user.dir system p=
roperty
+               // system.property usually points to the location from wher=
e eclipse was started
+               String createBuildDirCmd =3D "cd " + metadataDir + ";source=
 " +
+metadataDir + INIT_FILE + " " + buildLoc;
+
+               try {
+                       ProcessBuilder builder =3D new ProcessBuilder(new S=
tring[] {"sh", "-c", createBuildDirCmd});
+                       Process proc =3D builder.start();
+                       InputStream errorStream =3D proc.getErrorStream();
+                       InputStreamReader isr =3D new InputStreamReader(err=
orStream);
+                       BufferedReader br =3D new BufferedReader(isr);
+                       String line =3D null;
+                       String status =3D "";
+                       while ( (line =3D br.readLine()) !=3D null) {
+                               status +=3D line;
+                       }
+
+                       if (proc.waitFor() !=3D 0)
+                               return new Status(IStatus.ERROR, "not_used"=
, 0, status, null);;
+                       return new Status(IStatus.OK, "not_used", 0, "", nu=
ll);
+               } catch (Exception e) {
+                       return  new Status(IStatus.ERROR, "not_used", 0, e.=
getMessage(), null);
+               }
+       }
+       private Status checkBuildDir() {
+
+               String metadataLoc =3D textMetadataLoc.getText();
+
+               String buildLoc =3D metadataLoc + "/build";
+               return createBuildDir(buildLoc);
+       }
+       private String getBuildDir() {
+
+               String metadataLoc =3D textMetadataLoc.getText();
+               String buildLoc =3D textBspOutLoc.getText();
+
+               if (buildLoc.isEmpty()) {
+                       buildLoc =3D metadataLoc + "/build";
+               }
+               File buildLocDir =3D new File(buildLoc);
+               if (!buildLocDir.exists()) {
+                       createBuildDir(buildLoc);
+               }
+               return buildLoc;
+       }

        private boolean createPropertiesFile() {
                String create_properties_cmd =3D bspElem.getMetadataLoc() +=
 "/scripts/" + @@ -319,14 +377,22 @@ public class MainPage extends WizardPa=
ge {
                }
                return true;
        }
-
+       private String getSourceCmd(){
+               String metadataLoc =3D textMetadataLoc.getText();
+               return "source " + metadataLoc + INIT_FILE + " " + getBuild=
Dir() +" > temps; rm -rf temps;";
+       }
        private ArrayList<String> getKArches() {
                ArrayList<String> karches =3D new ArrayList<String>();
-
-               String get_karch_cmd =3D textMetadataLoc.getText() + "/scri=
pts/" + KARCH_CMD;
+               String metadataLoc =3D textMetadataLoc.getText();
+
+               String get_karch_cmd =3D getSourceCmd() + metadataLoc + "/s=
cripts/" +
+KARCH_CMD;
                try {
-                       Runtime rt =3D Runtime.getRuntime();
-                       Process proc =3D rt.exec(get_karch_cmd);
+//                     Runtime rt =3D Runtime.getRuntime();
+//                     Process proc =3D rt.exec(get_karch_cmd);
+
+                       ProcessBuilder builder =3D new ProcessBuilder(new S=
tring[] {"sh", "-c", get_karch_cmd});
+                       Process proc =3D builder.start();
+
                        InputStream stdin =3D proc.getInputStream();
                        InputStreamReader isr =3D new InputStreamReader(std=
in);
                        BufferedReader br =3D new BufferedReader(isr); @@ -=
351,11 +417,15 @@ public class MainPage extends WizardPage {

        private ArrayList<String> getQArches() {
                ArrayList<String> qarches =3D new ArrayList<String>();
+               String metadataLoc =3D textMetadataLoc.getText();

-               String get_qarch_cmd =3D textMetadataLoc.getText() + "/scri=
pts/" + QARCH_CMD;
+               String get_qarch_cmd =3D getSourceCmd() + metadataLoc + "/s=
cripts/" +
+QARCH_CMD;
                try {
-                       Runtime rt =3D Runtime.getRuntime();
-                       Process proc =3D rt.exec(get_qarch_cmd);
+//                     Runtime rt =3D Runtime.getRuntime();
+//                     Process proc =3D rt.exec(get_qarch_cmd);
+                       ProcessBuilder builder =3D new ProcessBuilder(new S=
tring[] {"sh", "-c", get_qarch_cmd});
+                       Process proc =3D builder.start();
+
                        InputStream stdin =3D proc.getInputStream();
                        InputStreamReader isr =3D new InputStreamReader(std=
in);
                        BufferedReader br =3D new BufferedReader(isr); diff=
 --git a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/wi=
zards/bsp/PropertiesPage.java b/plugins/org.yocto.sdk.remotetools/src/org/y=
octo/sdk/remotetools/wizards/bsp/PropertiesPage.java

index a5e220e..61bd2e5 100644
--- a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/wizar=
ds/bsp/PropertiesPage.java
+++ b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/wi
+++ zards/bsp/PropertiesPage.java
@@ -398,7 +398,7 @@ public class PropertiesPage extends WizardPage {
                         existingButton.setSelection(false);
                         kbCombo.removeAll();

-                        kb_property =3D "\"" + kernel_choice + "\"."+NEW_K=
BRANCH_NAME;
+                        kb_property =3D "\\\"" + kernel_choice + "\\\"."+N=
EW_KBRANCH_NAME;
                         String[] values =3D getValues(kb_property);
                         if (values !=3D null)
                                 kbCombo.setItems(values);
@@ -435,14 +435,20 @@ public class PropertiesPage extends WizardPage {
                 canFlipToNextPage();
                 getWizard().getContainer().updateButtons();
        }
-
+       private String getSourceCmd(){
+               String metadataLoc =3D bspElem.getMetadataLoc();
+               return "source " + metadataLoc + MainPage.INIT_FILE  +" > t=
emps; rm -rf temps;";
+       }
        private String[] getValues(String property) {
                ArrayList<String> values =3D new ArrayList<String>();

-               String values_cmd =3D bspElem.getMetadataLoc() + "/scripts/=
" + VALUES_CMD_PREFIX + bspElem.getKarch() + VALUES_CMD_SURFIX + property;
+               String values_cmd =3D getSourceCmd() + bspElem.getMetadataL=
oc() +
+"/scripts/" + VALUES_CMD_PREFIX + bspElem.getKarch() +
+VALUES_CMD_SURFIX + property;
                try {
-                       Runtime rt =3D Runtime.getRuntime();
-                       Process proc =3D rt.exec(values_cmd);
+//                     Runtime rt =3D Runtime.getRuntime();
+//                     Process proc =3D rt.exec(values_cmd);
+                       ProcessBuilder builder =3D new ProcessBuilder(new S=
tring[] {"sh", "-c", values_cmd});
+                       Process proc =3D builder.start();
+
                        InputStream stdin =3D proc.getInputStream();
                        InputStreamReader isr =3D new InputStreamReader(std=
in);
                        BufferedReader br =3D new BufferedReader(isr);
--
1.7.9.5

_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

