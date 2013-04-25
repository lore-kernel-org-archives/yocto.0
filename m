Return-Path: <jessica.zhang@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 08C65E014F3
	for <yocto@yoctoproject.org>; Wed, 24 Apr 2013 20:29:50 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 24 Apr 2013 20:29:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,547,1363158000"; d="scan'208";a="324427446"
Received: from orsmsx102.amr.corp.intel.com ([10.22.225.129])
	by orsmga002.jf.intel.com with ESMTP; 24 Apr 2013 20:29:18 -0700
Received: from orsmsx104.amr.corp.intel.com ([169.254.3.124]) by
	ORSMSX102.amr.corp.intel.com ([169.254.1.197]) with mapi id
	14.01.0355.002; Wed, 24 Apr 2013 20:29:17 -0700
From: "Zhang, Jessica" <jessica.zhang@intel.com>
To: "Grigoropol, IoanaX" <ioanax.grigoropol@intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] [PATCH] [eclipse-poky][master]Display progress bar
	while	running systemtap script
Thread-Index: AQHOQOhSeUJ7hM0zREqIUEppcufm7pjl/fBA
Date: Thu, 25 Apr 2013 03:29:17 +0000
Message-ID: <C6510F6D410BB64A8C15398EDC6B847C6FDCED5B@ORSMSX104.amr.corp.intel.com>
References: <1366805754-31196-1-git-send-email-ioanax.grigoropol@intel.com>
In-Reply-To: <1366805754-31196-1-git-send-email-ioanax.grigoropol@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Re: [PATCH] [eclipse-poky][master]Display progress bar while	running systemtap script
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
X-List-Received-Date: Thu, 25 Apr 2013 03:29:50 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Merged to eclipse-poky master.

Thanks,
Jessica

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Ioana Grigoropol
Sent: Wednesday, April 24, 2013 5:16 AM
To: yocto@yoctoproject.org
Subject: [yocto] [PATCH] [eclipse-poky][master]Display progress bar while r=
unning systemtap script

[Yocto #4270]
Signed-off-by: Ioana Grigoropol <ioanax.grigoropol@intel.com>
---
 .../sdk/remotetools/actions/SystemtapHandler.java  |   35 ++++++++++------=
----
 1 file changed, 18 insertions(+), 17 deletions(-)

diff --git a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetool=
s/actions/SystemtapHandler.java b/plugins/org.yocto.sdk.remotetools/src/org=
/yocto/sdk/remotetools/actions/SystemtapHandler.java
index 21bd3ef..87094ee 100644
--- a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actio=
ns/SystemtapHandler.java
+++ b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/ac
+++ tions/SystemtapHandler.java
@@ -12,11 +12,12 @@ package org.yocto.sdk.remotetools.actions;
 import org.eclipse.core.commands.AbstractHandler;
 import org.eclipse.core.commands.ExecutionEvent;
 import org.eclipse.core.commands.ExecutionException;
-import org.eclipse.core.runtime.NullProgressMonitor;
 import org.eclipse.jface.dialogs.MessageDialog;
+import org.eclipse.swt.widgets.Shell;
 import org.eclipse.ui.IWorkbenchWindow;
+import org.eclipse.ui.PlatformUI;
 import org.eclipse.ui.handlers.HandlerUtil;
-import org.eclipse.swt.widgets.Shell;
+import org.eclipse.ui.progress.IProgressService;

 public class SystemtapHandler extends AbstractHandler {
        protected SystemtapSettingDialog setting; @@ -33,27 +34,27 @@ publi=
c class SystemtapHandler extends AbstractHandler {
                                );

                setting.open();
-               if (!setting.isOKPressed())
-                       return false;
                String metadata_location =3D ((SystemtapSettingDialog)setti=
ng).getMetadataLocation();
                String remote_host =3D ((SystemtapSettingDialog)setting).ge=
tRemoteHost();
                String user_id =3D ((SystemtapSettingDialog)setting).getUse=
rID();
                String systemtap_script =3D ((SystemtapSettingDialog)settin=
g).getSystemtapScript();
                String systemtap_args =3D ((SystemtapSettingDialog)setting)=
.getSystemtapArgs();
-
-
-               SystemtapModel op=3Dnew SystemtapModel(metadata_location,re=
mote_host, user_id, systemtap_script,
-                                                                          =
             systemtap_args,window.getShell().getDisplay());
-               try {
-                       op.process(new NullProgressMonitor());
-                       return true;
-               }catch (Exception e) {
-                       e.printStackTrace();
-                       MessageDialog.openError(window.getShell(),
-                                                                       "Sy=
stemtap",
-                                                                       e.g=
etMessage());
+
+               if(setting.open() =3D=3D BaseSettingDialog.OK) {
+                       IProgressService progressService =3D PlatformUI.get=
Workbench().getProgressService();
+                       SystemtapModel op =3D new SystemtapModel(metadata_l=
ocation,remote_host, user_id, systemtap_script,
+                                       systemtap_args,window.getShell().ge=
tDisplay());
+                       try {
+                               progressService.busyCursorWhile(op);
+                       }catch (InterruptedException e) {
+                               //user cancelled
+                       }catch (Exception e) {
+                               e.printStackTrace();
+                               MessageDialog.openError(window.getShell(),
+                                                                          =
     "Systemtap",
+                                                                          =
     e.getMessage());
+                       }
                }
-
                return false;
        }

--
1.7.9.5

_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

