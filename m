Return-Path: <jessica.zhang@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2629CE014C2
	for <yocto@yoctoproject.org>; Wed,  6 Mar 2013 10:14:01 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 06 Mar 2013 10:12:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,795,1355126400"; d="scan'208";a="272376156"
Received: from orsmsx104.amr.corp.intel.com ([10.22.225.131])
	by orsmga001.jf.intel.com with ESMTP; 06 Mar 2013 10:14:00 -0800
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.213]) by
	ORSMSX104.amr.corp.intel.com ([169.254.3.124]) with mapi id
	14.01.0355.002; Wed, 6 Mar 2013 10:14:00 -0800
From: "Zhang, Jessica" <jessica.zhang@intel.com>
To: "Grigoropol, IoanaX" <ioanax.grigoropol@intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] [PATCH] [eclipse-poky][branch:master]Use bash instead
	of sh	for yocto-bsp build directory
Thread-Index: AQHOGo/gizRJa927FkuTFMbwQaaQSJiY94nw
Date: Wed, 6 Mar 2013 18:13:58 +0000
Message-ID: <C6510F6D410BB64A8C15398EDC6B847C6F4057A0@ORSMSX101.amr.corp.intel.com>
References: <1362570547-2760-1-git-send-email-ioanax.grigoropol@intel.com>
In-Reply-To: <1362570547-2760-1-git-send-email-ioanax.grigoropol@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Re: [PATCH] [eclipse-poky][branch:master]Use bash instead of sh	for yocto-bsp build directory
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
X-List-Received-Date: Wed, 06 Mar 2013 18:14:01 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Merged to eclipse-poky master.

Thanks,
Jessica

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Ioana Grigoropol
Sent: Wednesday, March 06, 2013 3:49 AM
To: yocto@yoctoproject.org
Subject: [yocto] [PATCH] [eclipse-poky][branch:master]Use bash instead of s=
h for yocto-bsp build directory

[Yocto #3747]

Signed-off-by: Ioana Grigoropol <ioanax.grigoropol@intel.com>
---
 .../sdk/remotetools/wizards/bsp/MainPage.java      |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetool=
s/wizards/bsp/MainPage.java b/plugins/org.yocto.sdk.remotetools/src/org/yoc=
to/sdk/remotetools/wizards/bsp/MainPage.java
index 5c35904..d84cc24 100644
--- a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/wizar=
ds/bsp/MainPage.java
+++ b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/wizar=
ds/bsp/MainPage.java
@@ -322,7 +322,7 @@ public class MainPage extends WizardPage {
                String createBuildDirCmd =3D "cd " + metadataDir + ";source=
 " + metadataDir + "/oe-init-build-env " + buildLoc;

                try {
-                       ProcessBuilder builder =3D new ProcessBuilder(new S=
tring[] {"sh", "-c", createBuildDirCmd});
+                       ProcessBuilder builder =3D new ProcessBuilder(new S=
tring[] {"bash", "-c", createBuildDirCmd});
                        Process proc =3D builder.start();
                        InputStream errorStream =3D proc.getErrorStream();
                        InputStreamReader isr =3D new InputStreamReader(err=
orStream);
--
1.7.9.5

_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

