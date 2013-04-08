Return-Path: <ioanax.grigoropol@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8D1F3E0049E
	for <yocto@yoctoproject.org>; Mon,  8 Apr 2013 07:58:53 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 08 Apr 2013 07:58:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,432,1363158000"; d="scan'208";a="224568714"
Received: from irsmsx103.ger.corp.intel.com ([163.33.3.157])
	by AZSMGA002.ch.intel.com with ESMTP; 08 Apr 2013 07:58:51 -0700
Received: from irsmsx153.ger.corp.intel.com (163.33.192.75) by
	IRSMSX103.ger.corp.intel.com (163.33.3.157) with Microsoft SMTP Server
	(TLS) id 14.1.355.2; Mon, 8 Apr 2013 15:58:50 +0100
Received: from irsmsx101.ger.corp.intel.com ([169.254.1.73]) by
	IRSMSX153.ger.corp.intel.com ([169.254.9.23]) with mapi id
	14.01.0355.002; Mon, 8 Apr 2013 15:58:50 +0100
From: "Grigoropol, IoanaX" <ioanax.grigoropol@intel.com>
To: "Zhang, Jessica" <jessica.zhang@intel.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] [PATCH] [eclipse-poky][master]Check build directory
	when	location is set using "Browse" button
Thread-Index: AQHOMlHw3y2Go1msYEma05ClD3kKypjMbFQb
Date: Mon, 8 Apr 2013 14:58:50 +0000
Message-ID: <3E179CF0D7162B4AA4E2B324209A4639B31A43@IRSMSX101.ger.corp.intel.com>
References: <1365172249-31621-1-git-send-email-ioanax.grigoropol@intel.com>,
	<C6510F6D410BB64A8C15398EDC6B847C6FDBF380@ORSMSX104.amr.corp.intel.com>
In-Reply-To: <C6510F6D410BB64A8C15398EDC6B847C6FDBF380@ORSMSX104.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.19.9.42]
MIME-Version: 1.0
Subject: Re: [PATCH] [eclipse-poky][master]Check build directory when	location is set using "Browse" button
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
X-List-Received-Date: Mon, 08 Apr 2013 14:58:54 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Jessica,=0A=
=0A=
I can reproduce this issue following these steps:=0A=
=0A=
- open yocto-bsp menu=0A=
- set metadata location=0A=
- set build location directory using browse button and without interfering =
with the text field at all=0A=
- set output location to new directory=0A=
- press "Next"=0A=
- select a Kernel from the combo=0A=
=0A=
The problem is that we only check the build directory when the focus is los=
t in the text field, and we do not take into account when the value of this=
 field is populated using "Browse" button.=0A=
We must check for the build directory in the first page of the wizard, beca=
use any of the actions that can be done on the properties page(2nd) needs t=
o have a functional build directory and will fail otherwise. =0A=
The validatePage() method is only taken into consideration when we an finis=
h the wizard without any further user interaction.=0A=
=0A=
Thanks,=0A=
Ioana=0A=
________________________________________=0A=
From: Zhang, Jessica=0A=
Sent: Saturday, April 06, 2013 2:04 AM=0A=
To: Grigoropol, IoanaX; yocto@yoctoproject.org=0A=
Subject: RE: [yocto] [PATCH] [eclipse-poky][master]Check build directory wh=
en   location is set using "Browse" button=0A=
=0A=
Hi Ioana,=0A=
=0A=
I can't reproduce the bug on my end so can't further debug the issue.  But =
based on the context of this patch, seems we're missing checkBuildDir for b=
uildLocation?  By looking at the code, shouldn't the easiest fix is to add =
checkBuildDir on the validatePage for the case the buildLocationText is not=
 empty?=0A=
=0A=
Thanks,=0A=
Jessica=0A=
=0A=
-----Original Message-----=0A=
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Ioana Grigoropol=0A=
Sent: Friday, April 05, 2013 7:31 AM=0A=
To: yocto@yoctoproject.org=0A=
Subject: [yocto] [PATCH] [eclipse-poky][master]Check build directory when l=
ocation is set using "Browse" button=0A=
=0A=
[Yocto #4206]=0A=
=0A=
Signed-off-by: Ioana Grigoropol <ioanax.grigoropol@intel.com>=0A=
---=0A=
 .../sdk/remotetools/wizards/bsp/MainPage.java      |   57 +++++++++++++++-=
----=0A=
 1 file changed, 43 insertions(+), 14 deletions(-)=0A=
=0A=
diff --git a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetool=
s/wizards/bsp/MainPage.java b/plugins/org.yocto.sdk.remotetools/src/org/yoc=
to/sdk/remotetools/wizards/bsp/MainPage.java=0A=
index d84cc24..156829b 100644=0A=
--- a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/wizar=
ds/bsp/MainPage.java=0A=
+++ b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/wi=0A=
+++ zards/bsp/MainPage.java=0A=
@@ -25,6 +25,7 @@ import org.eclipse.swt.events.ModifyEvent;=0A=
 import org.eclipse.swt.events.ModifyListener;=0A=
 import org.eclipse.swt.events.SelectionAdapter;=0A=
 import org.eclipse.swt.events.SelectionEvent;=0A=
+import org.eclipse.swt.events.SelectionListener;=0A=
 import org.eclipse.swt.layout.GridData;  import org.eclipse.swt.layout.Gri=
dLayout;=0A=
 import org.eclipse.swt.widgets.Button;=0A=
@@ -108,7 +109,8 @@ public class MainPage extends WizardPage {=0A=
                                controlChanged(e.widget);=0A=
                        }=0A=
                });=0A=
-               setBtnMetadataLoc(addFileSelectButton(textContainer, textMe=
tadataLoc));=0A=
+               buildLocationListener =3D new BuildLocationListener("");=0A=
+               setBtnMetadataLoc(addFileSelectButton(textContainer, textMe=
tadataLoc,=0A=
+null));=0A=
=0A=
                labelBuildLoc =3D new Label(composite, SWT.NONE);=0A=
                labelBuildLoc.setText("Build location: "); @@ -118,10 +120,=
10 @@ public class MainPage extends WizardPage {=0A=
                textContainer.setLayoutData(new GridData(SWT.FILL, SWT.CENT=
ER, true, false));=0A=
=0A=
                textBuildLoc =3D (Text)addTextControl(textContainer, "");=
=0A=
-               buildLocationListener =3D new BuildLocationListener("");=0A=
                textBuildLoc.addFocusListener(buildLocationListener);=0A=
+               textBuildLoc.addModifyListener(buildLocationListener);=0A=
=0A=
-               setBtnBuilddirLoc(addFileSelectButton(textContainer, textBu=
ildLoc));=0A=
+               setBtnBuilddirLoc(addFileSelectButton(textContainer, textBu=
ildLoc,=0A=
+buildLocationListener));=0A=
=0A=
                labelBspName =3D new Label(composite, SWT.NONE);=0A=
                labelBspName.setText("BSP Name*: ");=0A=
@@ -152,7 +154,7 @@ public class MainPage extends WizardPage {=0A=
                                controlChanged(e.widget);=0A=
                        }=0A=
                });=0A=
-               setBtnBspOutLoc(addFileSelectButton(textContainer, textBspO=
utputLoc));=0A=
+               setBtnBspOutLoc(addFileSelectButton(textContainer, textBspO=
utputLoc,=0A=
+null));=0A=
=0A=
                labelKArch =3D new Label(composite, SWT.NONE);=0A=
                labelKArch.setText("Kernel Architecture*: "); @@ -206,18 +2=
08,25 @@ public class MainPage extends WizardPage {=0A=
                return text;=0A=
        }=0A=
=0A=
-       private Button addFileSelectButton(final Composite parent, final Te=
xt text) {=0A=
+       private Button addFileSelectButton(final Composite parent, final Te=
xt=0A=
+text, SelectionListener listener) {=0A=
                Button button =3D new Button(parent, SWT.PUSH | SWT.LEAD);=
=0A=
                button.setText("Browse...");=0A=
-               button.addSelectionListener(new SelectionAdapter() {=0A=
-                       @Override=0A=
-                       public void widgetSelected(SelectionEvent event) {=
=0A=
-                               String dirName =3D new DirectoryDialog(pare=
nt.getShell()).open();=0A=
-                               if (dirName !=3D null) {=0A=
-                                       text.setText(dirName);=0A=
+               if (listener =3D=3D null) {=0A=
+                       button.addSelectionListener(new SelectionListener()=
 {=0A=
+                               @Override=0A=
+                               public void widgetSelected(SelectionEvent e=
) {=0A=
+                                       // TODO Auto-generated method stub=
=0A=
+                                       String dirName =3D new DirectoryDia=
log(parent.getShell()).open();=0A=
+                                       if (dirName !=3D null) {=0A=
+                                               text.setText(dirName);=0A=
+                                       }=0A=
                                }=0A=
-                       }=0A=
-               });=0A=
+                               @Override=0A=
+                               public void widgetDefaultSelected(Selection=
Event e) {=0A=
+                               }=0A=
+                       });=0A=
+               } else=0A=
+                       button.addSelectionListener(listener);=0A=
                return button;=0A=
        }=0A=
=0A=
@@ -473,7 +482,7 @@ public class MainPage extends WizardPage {=0A=
                this.btnBuildLoc =3D btnBuilddirLoc;=0A=
        }=0A=
=0A=
-       class BuildLocationListener implements FocusListener{=0A=
+       class BuildLocationListener implements FocusListener,=0A=
+SelectionListener, ModifyListener{=0A=
                String value;=0A=
                boolean changed;=0A=
=0A=
@@ -492,6 +501,26 @@ public class MainPage extends WizardPage {=0A=
                                buildDirChecked =3D true;=0A=
                        }=0A=
                }=0A=
+               @Override=0A=
+               public void widgetSelected(SelectionEvent e) {=0A=
+                       String dirName =3D new DirectoryDialog(((Button)e.g=
etSource()).getParent().getShell()).open();=0A=
+                       if (dirName !=3D null) {=0A=
+                               textBuildLoc.setText(dirName);=0A=
+                               value =3D dirName;=0A=
+                       }=0A=
+               }=0A=
+               @Override=0A=
+               public void widgetDefaultSelected(SelectionEvent e) {=0A=
+                       // TODO Auto-generated method stub=0A=
+               }=0A=
+               @Override=0A=
+               public void modifyText(ModifyEvent e) {=0A=
+=0A=
+                       if(!((Text)e.getSource()).getText().equals(value)) =
{=0A=
+                               checkBuildDir();=0A=
+                               buildDirChecked =3D true;=0A=
+                       }=0A=
+               }=0A=
=0A=
        }=0A=
 }=0A=
--=0A=
1.7.9.5=0A=
=0A=
_______________________________________________=0A=
yocto mailing list=0A=
yocto@yoctoproject.org=0A=
https://lists.yoctoproject.org/listinfo/yocto=0A=

