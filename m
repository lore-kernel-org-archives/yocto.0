Return-Path: <jessica.zhang@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C5D58E01439
	for <yocto@yoctoproject.org>; Wed,  8 May 2013 14:54:26 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 08 May 2013 14:54:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,636,1363158000"; d="scan'208";a="299609859"
Received: from orsmsx101.amr.corp.intel.com ([10.22.225.128])
	by azsmga001.ch.intel.com with ESMTP; 08 May 2013 14:54:25 -0700
Received: from orsmsx110.amr.corp.intel.com (10.22.240.8) by
	ORSMSX101.amr.corp.intel.com (10.22.225.128) with Microsoft SMTP Server
	(TLS) id 14.1.355.2; Wed, 8 May 2013 14:54:25 -0700
Received: from orsmsx103.amr.corp.intel.com ([169.254.2.27]) by
	ORSMSX110.amr.corp.intel.com ([169.254.3.197]) with mapi id
	14.01.0355.002; Wed, 8 May 2013 14:54:25 -0700
From: "Zhang, Jessica" <jessica.zhang@intel.com>
To: "Grigoropol, IoanaX" <ioanax.grigoropol@intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] [PATCH 3/3] Move filtering of suitable connections to
	RSEHelper
Thread-Index: AQHOS+4nwcDAW0Uhh0eqGZwG/eZ6m5j71OAA
Date: Wed, 8 May 2013 21:54:24 +0000
Message-ID: <C6510F6D410BB64A8C15398EDC6B847C70781F81@ORSMSX103.amr.corp.intel.com>
References: <1368017704-14781-1-git-send-email-ioanax.grigoropol@intel.com>
	<1368017704-14781-4-git-send-email-ioanax.grigoropol@intel.com>
In-Reply-To: <1368017704-14781-4-git-send-email-ioanax.grigoropol@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Re: [PATCH 3/3] Move filtering of suitable connections to	RSEHelper
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
X-List-Received-Date: Wed, 08 May 2013 21:54:27 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Ioana,

Isn't the logic in RSEHelper is reversed?  It should  be:

if (sysType =3D=3D null ||! sysType.isEnabled()) {
        iter.remove();
}

Thanks,
Jessica
-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Ioana Grigoropol
Sent: Wednesday, May 08, 2013 5:55 AM
To: yocto@yoctoproject.org
Subject: [yocto] [PATCH 3/3] Move filtering of suitable connections to RSEH=
elper

- BaseSettingDialog performs an extra filtering for suitable connections fo=
r a given host by checking the remote system type
        - this checking should be done in RSEHelper since it involves a rem=
ote action and thus removing BaseSettingDialog dependency on RSE Api
        - modified RSEHelper.getSuitableConnections to include the filterin=
g for connections with associated system type disabled
Signed-off-by: Ioana Grigoropol <ioanax.grigoropol@intel.com>
---
 .../src/org/yocto/sdk/remotetools/RSEHelper.java   |    4 ++++
 .../sdk/remotetools/actions/BaseSettingDialog.java |   10 +++-------
 2 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetool=
s/RSEHelper.java b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remo=
tetools/RSEHelper.java
index d1a505d..8d0612a 100644
--- a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/RSEHe=
lper.java
+++ b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/RS
+++ EHelper.java
@@ -150,6 +150,10 @@ public class RSEHelper {
                        if(!terminalConnections.contains(fileConnection) &&=
 !shellConnections.contains(fileConnection)){
                                iter.remove();
                        }
+                       IRSESystemType sysType =3D fileConnection.getSystem=
Type();
+                       if (sysType !=3D null && sysType.isEnabled()) {
+                               iter.remove();
+                       }
                }

                return (IHost[]) filConnections.toArray(new IHost[filConnec=
tions.size()]); diff --git a/plugins/org.yocto.sdk.remotetools/src/org/yoct=
o/sdk/remotetools/actions/BaseSettingDialog.java b/plugins/org.yocto.sdk.re=
motetools/src/org/yocto/sdk/remotetools/actions/BaseSettingDialog.java
index 06eeb00..962a20a 100644
--- a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actio=
ns/BaseSettingDialog.java
+++ b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/ac
+++ tions/BaseSettingDialog.java
@@ -26,7 +26,6 @@ import org.yocto.sdk.remotetools.SWTFactory;
 import org.yocto.sdk.remotetools.RSEHelper;
 import org.eclipse.jface.dialogs.Dialog;  import org.eclipse.jface.dialogs=
.IDialogConstants;
-import org.eclipse.rse.core.IRSESystemType;
 import org.eclipse.rse.core.model.IHost;  import org.eclipse.rse.ui.action=
s.SystemNewConnectionAction;
 import org.eclipse.swt.SWT;
@@ -185,12 +184,9 @@ public class BaseSettingDialog extends Dialog {
                connectionCombo.removeAll();
                IHost[] connections =3D RSEHelper.getSuitableConnections();
                for (int i =3D 0; i < connections.length; i++) {
-                       IRSESystemType sysType =3D connections[i].getSystem=
Type();
-                       if (sysType !=3D null && sysType.isEnabled()) {
-                               connectionCombo.add(connections[i].getAlias=
Name());
-                               if(connections[i].getAliasName().equals(cur=
Conn))
-                                       index=3Di;
-                       }
+                       connectionCombo.add(connections[i].getAliasName());
+                       if(connections[i].getAliasName().equals(curConn))
+                               index=3Di;
                }

                if(index>=3D0) {
--
1.7.9.5

_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

