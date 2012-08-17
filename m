Return-Path: <jessica.zhang@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C9D0BE00344
	for <yocto@yoctoproject.org>; Thu, 16 Aug 2012 17:30:33 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 16 Aug 2012 17:30:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.77,782,1336374000"; d="scan'208";a="187472658"
Received: from orsmsx604.amr.corp.intel.com ([10.22.226.87])
	by orsmga002.jf.intel.com with ESMTP; 16 Aug 2012 17:30:33 -0700
Received: from orsmsx103.amr.corp.intel.com (10.22.225.130) by
	orsmsx604.amr.corp.intel.com (10.22.226.87) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Thu, 16 Aug 2012 17:30:33 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.152]) by
	ORSMSX103.amr.corp.intel.com ([169.254.2.138]) with mapi id
	14.01.0355.002; Thu, 16 Aug 2012 17:30:32 -0700
From: "Zhang, Jessica" <jessica.zhang@intel.com>
To: "Grigoropol, IoanaX" <ioanax.grigoropol@intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] [PATCH 3/3] [PATCH] Processes that execute shell
	commands	block the Yocto-BSP interface
Thread-Index: AQHNe8IfpT6LvmIi4E+GnqXilIyQU5ddJ2EQ
Date: Fri, 17 Aug 2012 00:30:31 +0000
Message-ID: <C6510F6D410BB64A8C15398EDC6B847C46ADF470@ORSMSX101.amr.corp.intel.com>
References: <1345130026-11104-2-git-send-email-ioanax.grigoropol@intel.com>
	<1345130026-11104-3-git-send-email-ioanax.grigoropol@intel.com>
In-Reply-To: <1345130026-11104-3-git-send-email-ioanax.grigoropol@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Cc: "Grigoropol, IoanaX" <ioanax.grigoropol@intel.com>
Subject: Re: [PATCH 3/3] [PATCH] Processes that execute shell commands	block the Yocto-BSP interface
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
X-List-Received-Date: Fri, 17 Aug 2012 00:30:33 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Ioana,

The patch is missing signed-off

Thanks,
Jessica

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Ioana Grigoropol
Sent: Thursday, August 16, 2012 8:14 AM
To: yocto@yoctoproject.org
Cc: Grigoropol, IoanaX
Subject: [yocto] [PATCH 3/3] [PATCH] Processes that execute shell commands =
block the Yocto-BSP interface

        - send processes that execute shell commands in the background and =
show
        progress dialog
        - retrieve status of the background executions & items collected

Signed-off-by: Ioana Grigoropol <ioanax.grigoropol@intel.com>
---
 .../sdk/remotetools/wizards/bsp/MainPage.java      |    1 -
 .../remotetools/wizards/bsp/PropertiesPage.java    |  196 ++++++++++++----=
----
 2 files changed, 123 insertions(+), 74 deletions(-)

diff --git a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetool=
s/wizards/bsp/MainPage.java b/plugins/org.yocto.sdk.remotetools/src/org/yoc=
to/sdk/remotetools/wizards/bsp/MainPage.java
index e5a21d1..bd80ed4 100644
--- a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/wizar=
ds/bsp/MainPage.java
+++ b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/wi
+++ zards/bsp/MainPage.java
@@ -313,7 +313,6 @@ public class MainPage extends WizardPage {
                // system.property usually points to the location from wher=
e eclipse was started
                String createBuildDirCmd =3D "cd " + metadataDir + ";source=
 " + metadataDir + "/oe-init-build-env " + buildLoc;

-               System.out.println(createBuildDirCmd);
                try {
                        ProcessBuilder builder =3D new ProcessBuilder(new S=
tring[] {"sh", "-c", createBuildDirCmd});
                        Process proc =3D builder.start();
diff --git a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetool=
s/wizards/bsp/PropertiesPage.java b/plugins/org.yocto.sdk.remotetools/src/o=
rg/yocto/sdk/remotetools/wizards/bsp/PropertiesPage.java
index 4661b37..38af7b9 100644
--- a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/wizar=
ds/bsp/PropertiesPage.java
+++ b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/wi
+++ zards/bsp/PropertiesPage.java
@@ -11,7 +11,6 @@
 package org.yocto.sdk.remotetools.wizards.bsp;

 import java.io.BufferedReader;
-import java.io.InputStream;
 import java.io.InputStreamReader;
 import java.util.ArrayList;
 import java.util.Enumeration;
@@ -19,7 +18,10 @@ import java.util.HashSet;  import java.util.Hashtable;  =
import java.util.Iterator;

+import org.eclipse.core.runtime.IProgressMonitor;
 import org.eclipse.jface.dialogs.MessageDialog;
+import org.eclipse.jface.dialogs.ProgressMonitorDialog;
+import org.eclipse.jface.operation.IRunnableWithProgress;
 import org.eclipse.jface.wizard.WizardPage;
 import org.eclipse.swt.SWT;
 import org.eclipse.swt.custom.ScrolledComposite;
@@ -59,6 +61,9 @@ public class PropertiesPage extends WizardPage {
        private static final String NEW_KBRANCH_NAME =3D "new_kbranch";
        private static final String QARCH_NAME =3D "qemuarch";

+       private static final String KERNEL_CHOICES =3D "choices";
+       private static final String KERNEL_BRANCHES =3D "branches";
+
        private Hashtable<YoctoBspPropertyElement, Control> propertyControl=
Map;
        HashSet<YoctoBspPropertyElement> properties;
        private Composite composite;
@@ -81,9 +86,8 @@ public class PropertiesPage extends WizardPage {
        }

        public void onEnterPage(YoctoBspElement element) {
-               String[] values;
                if (!element.getValidPropertiesFile()) {
-                       setErrorMessage("There's no valid properties file c=
reated, please choose \"Back\" to reselect kernel architectur!");
+                       setErrorMessage("There's no valid properties file c=
reated, please
+choose \"Back\" to reselect kernel architecture!");
                        return;
                }

@@ -131,9 +135,7 @@ public class PropertiesPage extends WizardPage {
                        newButton.setSelection(true);
                        existingButton.setSelection(false);

-                       values =3D getValues(KERNEL_CHOICE);
-                       if (values !=3D null)
-                               kcCombo.setItems(values);
+                       updateKernelValues(KERNEL_CHOICES, KERNEL_CHOICE);
                }

                try {
@@ -194,10 +196,9 @@ public class PropertiesPage extends WizardPage {
                                                new Label (choiceContainer,=
 SWT.NONE).setText(name+":");
                                                Combo combo =3D new Combo(c=
hoiceContainer, SWT.BORDER | SWT.READ_ONLY);
                                                combo.setLayout(new FillLay=
out());
-
-                                               values =3D getValues(name);
-                                               if (values !=3D null)
-                                                       combo.setItems(valu=
es);
+
+                                               updateKernelValues(KERNEL_C=
HOICES, name);
+
                                                propertyControlMap.put(prop=
Elem, (Control)combo);
                                        }
                                    }
@@ -375,7 +376,6 @@ public class PropertiesPage extends WizardPage {
        }
        private void controlChanged(Widget widget) {
                 setErrorMessage(null);
-                String kb_property;

                 String kernel_choice =3D kcCombo.getText();
                 if ((kernel_choice =3D=3D null) || (kernel_choice.isEmpty(=
))) { @@ -387,90 +387,140 @@ public class PropertiesPage extends WizardPage=
 {
                         existingButton.setSelection(false);
                         kbCombo.removeAll();

-                        kb_property =3D "\\\"" + kernel_choice + "\\\"."+N=
EW_KBRANCH_NAME;
-                        String[] values =3D getValues(kb_property);
-                        if (values !=3D null)
-                                kbCombo.setItems(values);
-                }
-                if (widget =3D=3D kbCombo) {
+                        updateKernelValues(KERNEL_BRANCHES, "\\\"" + kerne=
l_choice + "\\\"." + NEW_KBRANCH_NAME);
+                } else if (widget =3D=3D kbCombo) {
                         setErrorMessage(null);
-                }
-                if (widget =3D=3D newButton) {
+                } else if (widget =3D=3D newButton) {

                         boolean newBranch =3D newButton.getSelection();

                         if (newBranch) {
-                                kb_property =3D "\"" + kernel_choice + "\"=
."+NEW_KBRANCH_NAME;
-                                String[] values =3D getValues(kb_property)=
;
-                                if (values !=3D null)
-                                        kbCombo.setItems(values);
+                                updateKernelValues(KERNEL_BRANCHES, "\"" +=
 kernel_choice + "\"." +
+NEW_KBRANCH_NAME);
                         } else {
-                                kb_property =3D "\"" + kernel_choice + "\"=
."+EXISTING_KBRANCH_NAME;
-                                String[] values =3D getValues(kb_property)=
;
-                                if (values !=3D null)
-                                        kbCombo.setItems(values);
+                                updateKernelValues(KERNEL_BRANCHES, "\"" +=
 kernel_choice + "\"." +
+EXISTING_KBRANCH_NAME);
                         }
-                }
-                if (widget =3D=3D existingButton) {
+                } else if (widget =3D=3D existingButton) {
                         boolean existingBranch =3D existingButton.getSelec=
tion();

                         if (existingBranch) {
-                                kb_property =3D "\"" + kernel_choice + "\"=
."+EXISTING_KBRANCH_NAME;
-                                String[] values =3D getValues(kb_property)=
;
-                                if (values !=3D null)
-                                        kbCombo.setItems(values);
+                                updateKernelValues(KERNEL_BRANCHES, "\"" +=
 kernel_choice + "\"." +
+EXISTING_KBRANCH_NAME);
                         }
                 }
                 canFlipToNextPage();
                 getWizard().getContainer().updateButtons();
        }

-       private String[] getValues(String property) {
-               ArrayList<String> values =3D new ArrayList<String>();
+       private void updateKernelValues(final String value, String property=
) {
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
+                                monitor.beginTask("Loading Kernel " + valu=
e + " ...", 100);
+                                runnable.run();
+                                monitor.done();
+                            }
+                        });
+               } catch (Exception e) {
+                       runnable.getBspAction().setMessage(e.getMessage());
+               }
+
+               BSPAction action =3D runnable.getBspAction();
+               if (action.getItems() !=3D null) {
+                       if (value =3D=3D KERNEL_CHOICES)
+                               kcCombo.setItems(action.getItems());
+                       else if (value =3D=3D KERNEL_BRANCHES)
+                               kbCombo.setItems(action.getItems());
+               } else if (action.getMessage() !=3D null)
+                       MessageDialog.openError(getShell(), "Yocto-BSP", ac=
tion.getMessage());
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
+               private String property;
+               private BSPAction bspAction;
+
+               public ValuesGetter(String property) {
+                       this.property =3D property;
+                       this.bspAction =3D new BSPAction(null, null);
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
+                                       bspAction.setMessage(error_message)=
;
+                                       bspAction.setItems(null);
+                               }
+                       } catch (Exception e) {
+                               bspAction.setItems(null);
+                               bspAction.setMessage(e.getMessage());
+                       }
+                       if (!values.isEmpty()) {
+                               bspAction.setItems(values.toArray(new Strin=
g[values.size()]));
+                               bspAction.setMessage(null);
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
+
+               public BSPAction getBspAction() {
+                       return bspAction;
+               }
+
+               public void setBspAction(BSPAction bspAction) {
+                       this.bspAction =3D bspAction;
+               }
+       }
+
+       class BSPAction {
+               private String[] items;
+               private String message;
+
+               BSPAction(String[] items, String message){
+                       this.setItems(items);
+                       this.setMessage(message);
+               }
+
+               public String[] getItems() {
+                       return items;
+               }
+
+               public void setItems(String[] items) {
+                       this.items =3D items;
+               }
+
+               public String getMessage() {
+                       return message;
+               }
+
+               public void setMessage(String message) {
+                       this.message =3D message;
+               }
        }
 }
--
1.7.9.5

_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

