Return-Path: <jessica.zhang@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E6405E01518
	for <yocto@yoctoproject.org>; Fri,  5 Apr 2013 16:05:14 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 05 Apr 2013 16:04:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,417,1363158000"; d="scan'208";a="281541331"
Received: from orsmsx101.amr.corp.intel.com ([10.22.225.128])
	by azsmga001.ch.intel.com with ESMTP; 05 Apr 2013 16:04:32 -0700
Received: from orsmsx155.amr.corp.intel.com (10.22.226.54) by
	ORSMSX101.amr.corp.intel.com (10.22.225.128) with Microsoft SMTP Server
	(TLS) id 14.1.355.2; Fri, 5 Apr 2013 16:04:31 -0700
Received: from orsmsx104.amr.corp.intel.com ([169.254.3.124]) by
	ORSMSX155.amr.corp.intel.com ([10.22.226.54]) with mapi id
	14.01.0355.002; Fri, 5 Apr 2013 16:04:31 -0700
From: "Zhang, Jessica" <jessica.zhang@intel.com>
To: "Grigoropol, IoanaX" <ioanax.grigoropol@intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] [PATCH] [eclipse-poky][master]Check build directory
	when	location is set using "Browse" button
Thread-Index: AQHOMg9GPfma2rSjh0ieCJGH6nF/dZjIPVxg
Date: Fri, 5 Apr 2013 23:04:31 +0000
Message-ID: <C6510F6D410BB64A8C15398EDC6B847C6FDBF380@ORSMSX104.amr.corp.intel.com>
References: <1365172249-31621-1-git-send-email-ioanax.grigoropol@intel.com>
In-Reply-To: <1365172249-31621-1-git-send-email-ioanax.grigoropol@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
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
X-List-Received-Date: Fri, 05 Apr 2013 23:05:15 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Ioana,

I can't reproduce the bug on my end so can't further debug the issue.  But =
based on the context of this patch, seems we're missing checkBuildDir for b=
uildLocation?  By looking at the code, shouldn't the easiest fix is to add =
checkBuildDir on the validatePage for the case the buildLocationText is not=
 empty?

Thanks,
Jessica

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Ioana Grigoropol
Sent: Friday, April 05, 2013 7:31 AM
To: yocto@yoctoproject.org
Subject: [yocto] [PATCH] [eclipse-poky][master]Check build directory when l=
ocation is set using "Browse" button

[Yocto #4206]

Signed-off-by: Ioana Grigoropol <ioanax.grigoropol@intel.com>
---
 .../sdk/remotetools/wizards/bsp/MainPage.java      |   57 +++++++++++++++-=
----
 1 file changed, 43 insertions(+), 14 deletions(-)

diff --git a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetool=
s/wizards/bsp/MainPage.java b/plugins/org.yocto.sdk.remotetools/src/org/yoc=
to/sdk/remotetools/wizards/bsp/MainPage.java
index d84cc24..156829b 100644
--- a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/wizar=
ds/bsp/MainPage.java
+++ b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/wi
+++ zards/bsp/MainPage.java
@@ -25,6 +25,7 @@ import org.eclipse.swt.events.ModifyEvent;
 import org.eclipse.swt.events.ModifyListener;
 import org.eclipse.swt.events.SelectionAdapter;
 import org.eclipse.swt.events.SelectionEvent;
+import org.eclipse.swt.events.SelectionListener;
 import org.eclipse.swt.layout.GridData;  import org.eclipse.swt.layout.Gri=
dLayout;
 import org.eclipse.swt.widgets.Button;
@@ -108,7 +109,8 @@ public class MainPage extends WizardPage {
                                controlChanged(e.widget);
                        }
                });
-               setBtnMetadataLoc(addFileSelectButton(textContainer, textMe=
tadataLoc));
+               buildLocationListener =3D new BuildLocationListener("");
+               setBtnMetadataLoc(addFileSelectButton(textContainer, textMe=
tadataLoc,
+null));

                labelBuildLoc =3D new Label(composite, SWT.NONE);
                labelBuildLoc.setText("Build location: "); @@ -118,10 +120,=
10 @@ public class MainPage extends WizardPage {
                textContainer.setLayoutData(new GridData(SWT.FILL, SWT.CENT=
ER, true, false));

                textBuildLoc =3D (Text)addTextControl(textContainer, "");
-               buildLocationListener =3D new BuildLocationListener("");
                textBuildLoc.addFocusListener(buildLocationListener);
+               textBuildLoc.addModifyListener(buildLocationListener);

-               setBtnBuilddirLoc(addFileSelectButton(textContainer, textBu=
ildLoc));
+               setBtnBuilddirLoc(addFileSelectButton(textContainer, textBu=
ildLoc,
+buildLocationListener));

                labelBspName =3D new Label(composite, SWT.NONE);
                labelBspName.setText("BSP Name*: ");
@@ -152,7 +154,7 @@ public class MainPage extends WizardPage {
                                controlChanged(e.widget);
                        }
                });
-               setBtnBspOutLoc(addFileSelectButton(textContainer, textBspO=
utputLoc));
+               setBtnBspOutLoc(addFileSelectButton(textContainer, textBspO=
utputLoc,
+null));

                labelKArch =3D new Label(composite, SWT.NONE);
                labelKArch.setText("Kernel Architecture*: "); @@ -206,18 +2=
08,25 @@ public class MainPage extends WizardPage {
                return text;
        }

-       private Button addFileSelectButton(final Composite parent, final Te=
xt text) {
+       private Button addFileSelectButton(final Composite parent, final Te=
xt
+text, SelectionListener listener) {
                Button button =3D new Button(parent, SWT.PUSH | SWT.LEAD);
                button.setText("Browse...");
-               button.addSelectionListener(new SelectionAdapter() {
-                       @Override
-                       public void widgetSelected(SelectionEvent event) {
-                               String dirName =3D new DirectoryDialog(pare=
nt.getShell()).open();
-                               if (dirName !=3D null) {
-                                       text.setText(dirName);
+               if (listener =3D=3D null) {
+                       button.addSelectionListener(new SelectionListener()=
 {
+                               @Override
+                               public void widgetSelected(SelectionEvent e=
) {
+                                       // TODO Auto-generated method stub
+                                       String dirName =3D new DirectoryDia=
log(parent.getShell()).open();
+                                       if (dirName !=3D null) {
+                                               text.setText(dirName);
+                                       }
                                }
-                       }
-               });
+                               @Override
+                               public void widgetDefaultSelected(Selection=
Event e) {
+                               }
+                       });
+               } else
+                       button.addSelectionListener(listener);
                return button;
        }

@@ -473,7 +482,7 @@ public class MainPage extends WizardPage {
                this.btnBuildLoc =3D btnBuilddirLoc;
        }

-       class BuildLocationListener implements FocusListener{
+       class BuildLocationListener implements FocusListener,
+SelectionListener, ModifyListener{
                String value;
                boolean changed;

@@ -492,6 +501,26 @@ public class MainPage extends WizardPage {
                                buildDirChecked =3D true;
                        }
                }
+               @Override
+               public void widgetSelected(SelectionEvent e) {
+                       String dirName =3D new DirectoryDialog(((Button)e.g=
etSource()).getParent().getShell()).open();
+                       if (dirName !=3D null) {
+                               textBuildLoc.setText(dirName);
+                               value =3D dirName;
+                       }
+               }
+               @Override
+               public void widgetDefaultSelected(SelectionEvent e) {
+                       // TODO Auto-generated method stub
+               }
+               @Override
+               public void modifyText(ModifyEvent e) {
+
+                       if(!((Text)e.getSource()).getText().equals(value)) =
{
+                               checkBuildDir();
+                               buildDirChecked =3D true;
+                       }
+               }

        }
 }
--
1.7.9.5

_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

