Return-Path: <jessica.zhang@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2F9EBE00429
	for <yocto@yoctoproject.org>; Thu,  9 May 2013 11:41:33 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 09 May 2013 11:41:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,642,1363158000"; d="scan'208";a="334439354"
Received: from orsmsx101.amr.corp.intel.com ([10.22.225.128])
	by orsmga002.jf.intel.com with ESMTP; 09 May 2013 11:41:32 -0700
Received: from orsmsx108.amr.corp.intel.com (10.22.225.41) by
	ORSMSX101.amr.corp.intel.com (10.22.225.128) with Microsoft SMTP Server
	(TLS) id 14.1.355.2; Thu, 9 May 2013 11:41:31 -0700
Received: from orsmsx103.amr.corp.intel.com ([169.254.2.150]) by
	ORSMSX108.amr.corp.intel.com ([169.254.4.227]) with mapi id
	14.01.0355.002; Thu, 9 May 2013 11:41:31 -0700
From: "Zhang, Jessica" <jessica.zhang@intel.com>
To: "Grigoropol, IoanaX" <ioanax.grigoropol@intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] [PATCH 3/3] Move filtering of suitable connections	to
	RSEHelper
Thread-Index: AQHOTI3afPl7ZJgK6kuON4tTzY390pj9L3qA
Date: Thu, 9 May 2013 18:41:30 +0000
Message-ID: <C6510F6D410BB64A8C15398EDC6B847C70788686@ORSMSX103.amr.corp.intel.com>
References: <1368017704-14781-1-git-send-email-ioanax.grigoropol@intel.com>
	<1368017704-14781-4-git-send-email-ioanax.grigoropol@intel.com>,
	<C6510F6D410BB64A8C15398EDC6B847C70781F81@ORSMSX103.amr.corp.intel.com>,
	<3E179CF0D7162B4AA4E2B324209A46391560DF82@IRSMSX102.ger.corp.intel.com>
	<3E179CF0D7162B4AA4E2B324209A46391560E085@IRSMSX102.ger.corp.intel.com>
In-Reply-To: <3E179CF0D7162B4AA4E2B324209A46391560E085@IRSMSX102.ger.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
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
X-List-Received-Date: Thu, 09 May 2013 18:41:33 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Ioana,

I merged 02-04 patches since they're clear to me what they meant for.  As t=
o rest, I've provided some feedbacks. So please rebase against master.  Als=
o in general, please send out patches to clearly mark what they're meant fo=
r and please don't send a big patch set that contains everything, esp. mult=
iple versions without clearly marked how they're grouped.

Thanks,
Jessica

-----Original Message-----
From: Grigoropol, IoanaX
Sent: Thursday, May 09, 2013 1:19 AM
To: Zhang, Jessica; yocto@yoctoproject.org
Subject: RE: [yocto] [PATCH 3/3] Move filtering of suitable connections to =
RSEHelper

Hi Jessica,

Please have a look at the last set of 12 patches I have sent. These should =
apply cleanly on the master HEAD.
It contains both patch sets for refactoring(4 patches) and creating a new s=
eparate plugin for remote tools(8 patches).

Thanks,
Ioana
________________________________________
From: yocto-bounces@yoctoproject.org [yocto-bounces@yoctoproject.org] on be=
half of Grigoropol, IoanaX [ioanax.grigoropol@intel.com]
Sent: Thursday, May 09, 2013 10:21 AM
To: Zhang, Jessica; yocto@yoctoproject.org
Subject: Re: [yocto] [PATCH 3/3] Move filtering of suitable connections to =
     RSEHelper

Hi Jessica,

Yes, you are right, sorry about that. I will send a v2 of this patch set.

Thanks,
Ioana
________________________________________
From: Zhang, Jessica
Sent: Thursday, May 09, 2013 12:54 AM
To: Grigoropol, IoanaX; yocto@yoctoproject.org
Subject: RE: [yocto] [PATCH 3/3] Move filtering of suitable connections to =
     RSEHelper

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
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

