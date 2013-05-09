Return-Path: <ioanax.grigoropol@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 71D72E01481
	for <yocto@yoctoproject.org>; Thu,  9 May 2013 01:18:57 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 09 May 2013 01:18:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,639,1363158000"; d="scan'208";a="334184691"
Received: from irsmsx101.ger.corp.intel.com ([163.33.3.153])
	by orsmga002.jf.intel.com with ESMTP; 09 May 2013 01:18:56 -0700
Received: from irsmsx102.ger.corp.intel.com ([169.254.2.244]) by
	IRSMSX101.ger.corp.intel.com ([169.254.1.73]) with mapi id
	14.01.0355.002; Thu, 9 May 2013 09:18:55 +0100
From: "Grigoropol, IoanaX" <ioanax.grigoropol@intel.com>
To: "Zhang, Jessica" <jessica.zhang@intel.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] [PATCH 3/3] Move filtering of suitable connections	to
	RSEHelper
Thread-Index: AQHOTIYItxRa+3ICD0KHyVyNTuv9oZj8gYuA
Date: Thu, 9 May 2013 08:18:54 +0000
Message-ID: <3E179CF0D7162B4AA4E2B324209A46391560E085@IRSMSX102.ger.corp.intel.com>
References: <1368017704-14781-1-git-send-email-ioanax.grigoropol@intel.com>
	<1368017704-14781-4-git-send-email-ioanax.grigoropol@intel.com>,
	<C6510F6D410BB64A8C15398EDC6B847C70781F81@ORSMSX103.amr.corp.intel.com>,
	<3E179CF0D7162B4AA4E2B324209A46391560DF82@IRSMSX102.ger.corp.intel.com>
In-Reply-To: <3E179CF0D7162B4AA4E2B324209A46391560DF82@IRSMSX102.ger.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.19.9.42]
MIME-Version: 1.0
Subject: Re: [PATCH 3/3] Move filtering of suitable connections	to	RSEHelper
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
X-List-Received-Date: Thu, 09 May 2013 08:18:57 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Jessica,=0A=
=0A=
Please have a look at the last set of 12 patches I have sent. These should =
apply cleanly on the master HEAD.=0A=
It contains both patch sets for refactoring(4 patches) and creating a new s=
eparate plugin for remote tools(8 patches).=0A=
=0A=
Thanks,=0A=
Ioana=0A=
________________________________________=0A=
From: yocto-bounces@yoctoproject.org [yocto-bounces@yoctoproject.org] on be=
half of Grigoropol, IoanaX [ioanax.grigoropol@intel.com]=0A=
Sent: Thursday, May 09, 2013 10:21 AM=0A=
To: Zhang, Jessica; yocto@yoctoproject.org=0A=
Subject: Re: [yocto] [PATCH 3/3] Move filtering of suitable connections to =
     RSEHelper=0A=
=0A=
Hi Jessica,=0A=
=0A=
Yes, you are right, sorry about that. I will send a v2 of this patch set.=
=0A=
=0A=
Thanks,=0A=
Ioana=0A=
________________________________________=0A=
From: Zhang, Jessica=0A=
Sent: Thursday, May 09, 2013 12:54 AM=0A=
To: Grigoropol, IoanaX; yocto@yoctoproject.org=0A=
Subject: RE: [yocto] [PATCH 3/3] Move filtering of suitable connections to =
     RSEHelper=0A=
=0A=
Hi Ioana,=0A=
=0A=
Isn't the logic in RSEHelper is reversed?  It should  be:=0A=
=0A=
if (sysType =3D=3D null ||! sysType.isEnabled()) {=0A=
        iter.remove();=0A=
}=0A=
=0A=
Thanks,=0A=
Jessica=0A=
-----Original Message-----=0A=
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Ioana Grigoropol=0A=
Sent: Wednesday, May 08, 2013 5:55 AM=0A=
To: yocto@yoctoproject.org=0A=
Subject: [yocto] [PATCH 3/3] Move filtering of suitable connections to RSEH=
elper=0A=
=0A=
- BaseSettingDialog performs an extra filtering for suitable connections fo=
r a given host by checking the remote system type=0A=
        - this checking should be done in RSEHelper since it involves a rem=
ote action and thus removing BaseSettingDialog dependency on RSE Api=0A=
        - modified RSEHelper.getSuitableConnections to include the filterin=
g for connections with associated system type disabled=0A=
Signed-off-by: Ioana Grigoropol <ioanax.grigoropol@intel.com>=0A=
---=0A=
 .../src/org/yocto/sdk/remotetools/RSEHelper.java   |    4 ++++=0A=
 .../sdk/remotetools/actions/BaseSettingDialog.java |   10 +++-------=0A=
 2 files changed, 7 insertions(+), 7 deletions(-)=0A=
=0A=
diff --git a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetool=
s/RSEHelper.java b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remo=
tetools/RSEHelper.java=0A=
index d1a505d..8d0612a 100644=0A=
--- a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/RSEHe=
lper.java=0A=
+++ b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/RS=0A=
+++ EHelper.java=0A=
@@ -150,6 +150,10 @@ public class RSEHelper {=0A=
                        if(!terminalConnections.contains(fileConnection) &&=
 !shellConnections.contains(fileConnection)){=0A=
                                iter.remove();=0A=
                        }=0A=
+                       IRSESystemType sysType =3D fileConnection.getSystem=
Type();=0A=
+                       if (sysType !=3D null && sysType.isEnabled()) {=0A=
+                               iter.remove();=0A=
+                       }=0A=
                }=0A=
=0A=
                return (IHost[]) filConnections.toArray(new IHost[filConnec=
tions.size()]); diff --git a/plugins/org.yocto.sdk.remotetools/src/org/yoct=
o/sdk/remotetools/actions/BaseSettingDialog.java b/plugins/org.yocto.sdk.re=
motetools/src/org/yocto/sdk/remotetools/actions/BaseSettingDialog.java=0A=
index 06eeb00..962a20a 100644=0A=
--- a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actio=
ns/BaseSettingDialog.java=0A=
+++ b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/ac=0A=
+++ tions/BaseSettingDialog.java=0A=
@@ -26,7 +26,6 @@ import org.yocto.sdk.remotetools.SWTFactory;=0A=
 import org.yocto.sdk.remotetools.RSEHelper;=0A=
 import org.eclipse.jface.dialogs.Dialog;  import org.eclipse.jface.dialogs=
.IDialogConstants;=0A=
-import org.eclipse.rse.core.IRSESystemType;=0A=
 import org.eclipse.rse.core.model.IHost;  import org.eclipse.rse.ui.action=
s.SystemNewConnectionAction;=0A=
 import org.eclipse.swt.SWT;=0A=
@@ -185,12 +184,9 @@ public class BaseSettingDialog extends Dialog {=0A=
                connectionCombo.removeAll();=0A=
                IHost[] connections =3D RSEHelper.getSuitableConnections();=
=0A=
                for (int i =3D 0; i < connections.length; i++) {=0A=
-                       IRSESystemType sysType =3D connections[i].getSystem=
Type();=0A=
-                       if (sysType !=3D null && sysType.isEnabled()) {=0A=
-                               connectionCombo.add(connections[i].getAlias=
Name());=0A=
-                               if(connections[i].getAliasName().equals(cur=
Conn))=0A=
-                                       index=3Di;=0A=
-                       }=0A=
+                       connectionCombo.add(connections[i].getAliasName());=
=0A=
+                       if(connections[i].getAliasName().equals(curConn))=
=0A=
+                               index=3Di;=0A=
                }=0A=
=0A=
                if(index>=3D0) {=0A=
--=0A=
1.7.9.5=0A=
=0A=
_______________________________________________=0A=
yocto mailing list=0A=
yocto@yoctoproject.org=0A=
https://lists.yoctoproject.org/listinfo/yocto=0A=
_______________________________________________=0A=
yocto mailing list=0A=
yocto@yoctoproject.org=0A=
https://lists.yoctoproject.org/listinfo/yocto=0A=

