Return-Path: <jessica.zhang@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B2954E0140A
	for <yocto@yoctoproject.org>; Thu, 11 Apr 2013 12:31:19 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 11 Apr 2013 12:31:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,456,1363158000"; d="scan'208";a="284953210"
Received: from orsmsx105.amr.corp.intel.com ([10.22.225.132])
	by azsmga001.ch.intel.com with ESMTP; 11 Apr 2013 12:31:18 -0700
Received: from orsmsx109.amr.corp.intel.com (10.22.225.14) by
	ORSMSX105.amr.corp.intel.com (10.22.225.132) with Microsoft SMTP Server
	(TLS) id 14.1.355.2; Thu, 11 Apr 2013 12:31:16 -0700
Received: from orsmsx104.amr.corp.intel.com ([169.254.3.124]) by
	ORSMSX109.amr.corp.intel.com ([10.22.225.14]) with mapi id
	14.01.0355.002; Thu, 11 Apr 2013 12:31:16 -0700
From: "Zhang, Jessica" <jessica.zhang@intel.com>
To: "adrian.dudau@enea.com" <adrian.dudau@enea.com>
Thread-Topic: [PATCH][eclipse-poky][master] Systemtap: use FileDialog
	instead of DirectoryDialog for script browser
Thread-Index: AQHONgY6KI5iZ53MpEStDzZbpNTNEpjRah9A
Date: Thu, 11 Apr 2013 19:31:16 +0000
Message-ID: <C6510F6D410BB64A8C15398EDC6B847C6FDC28C2@ORSMSX104.amr.corp.intel.com>
References: <1365610316-26378-1-git-send-email-adrian.dudau@enea.com>
In-Reply-To: <1365610316-26378-1-git-send-email-adrian.dudau@enea.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH][eclipse-poky][master] Systemtap: use FileDialog instead of DirectoryDialog for script browser
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
X-List-Received-Date: Thu, 11 Apr 2013 19:31:20 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Merged to eclipse-poky master and Dylan

Thanks,
Jessica

-----Original Message-----
From: adrian.dudau@enea.com [mailto:adrian.dudau@enea.com]
Sent: Wednesday, April 10, 2013 9:12 AM
To: Zhang, Jessica
Cc: yocto@yoctoproject.org; Adrian Dudau
Subject: [PATCH][eclipse-poky][master] Systemtap: use FileDialog instead of=
 DirectoryDialog for script browser

From: Adrian Dudau <adrian.dudau@enea.com>

[Yocto #4240]

Signed-off-by: Adrian Dudau <adrian.dudau@enea.com>
---
 .../actions/SystemtapSettingDialog.java            |   23 ++++++++++++++++=
++--
 1 file changed, 21 insertions(+), 2 deletions(-)

diff --git a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetool=
s/actions/SystemtapSettingDialog.java b/plugins/org.yocto.sdk.remotetools/s=
rc/org/yocto/sdk/remotetools/actions/SystemtapSettingDialog.java
index 133b91c..bb22ba6 100644
--- a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actio=
ns/SystemtapSettingDialog.java
+++ b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/ac
+++ tions/SystemtapSettingDialog.java
@@ -23,6 +23,7 @@ import org.eclipse.swt.widgets.Button;  import org.eclips=
e.swt.widgets.Composite;
 import org.eclipse.swt.widgets.Control;  import org.eclipse.swt.widgets.Di=
rectoryDialog;
+import org.eclipse.swt.widgets.FileDialog;
 import org.eclipse.swt.widgets.Label;
 import org.eclipse.swt.widgets.Shell;
 import org.eclipse.swt.widgets.Text;
@@ -115,7 +116,7 @@ public class SystemtapSettingDialog extends Dialog {
                textContainer.setLayout(new GridLayout(2, false));
                textContainer.setLayoutData(new GridData(SWT.FILL, SWT.CENT=
ER, true, false));
                metadataLocationText =3D (Text)addTextControl(textContainer=
, metadata_location);
-               metadataLocationBtn =3D addFileSelectButton(textContainer, =
metadataLocationText);
+               metadataLocationBtn =3D addDirSelectButton(textContainer,
+metadataLocationText);

                label =3D new Label(projComp, SWT.NONE);
                label.setText(Messages.User_ID);
@@ -167,7 +168,7 @@ public class SystemtapSettingDialog extends Dialog {
                return (Control)text;
        }

-       private Button addFileSelectButton(final Composite parent, final Te=
xt text) {
+       private Button addDirSelectButton(final Composite parent, final Tex=
t
+text) {
                Button button =3D new Button(parent, SWT.PUSH | SWT.LEAD);
                button.setText("Browse");
                button.addSelectionListener(new SelectionAdapter() { @@ -18=
4,6 +185,23 @@ public class SystemtapSettingDialog extends Dialog {
                return button;
        }

+       private Button addFileSelectButton(final Composite parent, final Te=
xt text) {
+               Button button =3D new Button(parent, SWT.PUSH | SWT.LEAD);
+               button.setText("Browse");
+               button.addSelectionListener(new SelectionAdapter() {
+                       @Override
+                       public void widgetSelected(SelectionEvent event) {
+                               String fileName;
+
+                               fileName =3D new FileDialog(parent.getShell=
()).open();
+                               if (fileName !=3D null) {
+                                       text.setText(fileName);
+                               }
+                       }
+               });
+               return button;
+       }
+
        @Override
        protected void okPressed() {
                IDialogSettings settings =3D Activator.getDefault().getDial=
ogSettings();
@@ -195,6 +213,7 @@ public class SystemtapSettingDialog extends Dialog {
                File metadata_dir =3D new File(metadata_location);
                if (!metadata_dir.exists()) {
                        CommonHelper.showErrorDialog("SystemTap Error", nul=
l, "The specified metadata location does not exist!");
+                       return;
                }
                if (!metadata_dir.isDirectory()) {
                        CommonHelper.showErrorDialog("SystemTap Error", nul=
l, "The specified metadata location is not a directory!");
--
1.7.10.4


