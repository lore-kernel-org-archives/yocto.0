Return-Path: <jessica.zhang@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 674A6E0051D
	for <yocto@yoctoproject.org>; Fri, 10 May 2013 10:03:33 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 10 May 2013 10:03:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,650,1363158000"; d="scan'208";a="300568220"
Received: from orsmsx102.amr.corp.intel.com ([10.22.225.129])
	by azsmga001.ch.intel.com with ESMTP; 10 May 2013 10:03:31 -0700
Received: from orsmsx103.amr.corp.intel.com ([169.254.2.150]) by
	ORSMSX102.amr.corp.intel.com ([169.254.1.136]) with mapi id
	14.01.0355.002; Fri, 10 May 2013 10:03:31 -0700
From: "Zhang, Jessica" <jessica.zhang@intel.com>
To: "Grigoropol, IoanaX" <ioanax.grigoropol@intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] [PATCH 2/2] Remove all plugin dependencies to RSE APi
	from	remote tools plugin
Thread-Index: AQHOTP3DgmN0GBf1Vk653SVpD3eGdpj+pl7g
Date: Fri, 10 May 2013 17:03:30 +0000
Message-ID: <C6510F6D410BB64A8C15398EDC6B847C70789F83@ORSMSX103.amr.corp.intel.com>
References: <1368134384-5868-1-git-send-email-ioanax.grigoropol@intel.com>
	<1368134384-5868-3-git-send-email-ioanax.grigoropol@intel.com>
In-Reply-To: <1368134384-5868-3-git-send-email-ioanax.grigoropol@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Re: [PATCH 2/2] Remove all plugin dependencies to RSE APi from	remote tools plugin
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
X-List-Received-Date: Fri, 10 May 2013 17:03:34 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Can you rebase, I'm running into:

Applying: Remove all plugin dependencies to RSE APi from remote tools plugi=
n
error: patch failed: plugins/org.yocto.sdk.remotetools/META-INF/MANIFEST.MF=
:24
error: plugins/org.yocto.sdk.remotetools/META-INF/MANIFEST.MF: patch does n=
ot apply
Patch failed at 0001 Remove all plugin dependencies to RSE APi from remote =
tools plugin

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Ioana Grigoropol
Sent: Thursday, May 09, 2013 2:20 PM
To: yocto@yoctoproject.org
Subject: [yocto] [PATCH 2/2] Remove all plugin dependencies to RSE APi from=
 remote tools plugin

- removed all plugin dependencies to the RSE API & kept only the ones neede=
d for GUI actions and Terminal views

Signed-off-by: Ioana Grigoropol <ioanax.grigoropol@intel.com>
---
 .../org.yocto.sdk.remotetools/META-INF/MANIFEST.MF |   10 ++++------
 1 file changed, 4 insertions(+), 6 deletions(-)

diff --git a/plugins/org.yocto.sdk.remotetools/META-INF/MANIFEST.MF b/plugi=
ns/org.yocto.sdk.remotetools/META-INF/MANIFEST.MF
index c34ad9e..5147c1a 100644
--- a/plugins/org.yocto.sdk.remotetools/META-INF/MANIFEST.MF
+++ b/plugins/org.yocto.sdk.remotetools/META-INF/MANIFEST.MF
@@ -7,16 +7,10 @@ Bundle-Activator: org.yocto.sdk.remotetools.Activator
 Require-Bundle: org.eclipse.ui,
  org.eclipse.core.runtime,
  org.eclipse.rse.core;bundle-version=3D"3.0.0",
- org.eclipse.rse.services;bundle-version=3D"3.0.0",
- org.eclipse.rse.subsystems.files.core;bundle-version=3D"3.0.0",
- org.eclipse.rse.ui;bundle-version=3D"3.0.0",
  org.yocto.sdk.ide,
- org.eclipse.tm.terminal;bundle-version=3D"3.0.1",
- org.eclipse.rse.subsystems.terminals.core;bundle-version=3D"[1.0.0,2.0.0)=
",
  org.eclipse.rse.terminals.ui;bundle-version=3D"1.0.100",
  org.eclipse.cdt;bundle-version=3D"7.0.0",
  org.eclipse.linuxtools.tmf.core;bundle-version=3D"0.4.0",
- org.eclipse.rse.subsystems.shells.core,
  org.eclipse.ui.ide;bundle-version=3D"3.8.0",
  org.eclipse.ui.console;bundle-version=3D"3.5.100"
 Bundle-ActivationPolicy: lazy
@@ -24,6 +18,10 @@ Bundle-RequiredExecutionEnvironment: JavaSE-1.6
 Import-Package: org.eclipse.core.resources,
  org.eclipse.debug.internal.ui,
  org.eclipse.rse.shells.ui,
+ org.eclipse.rse.ui.actions,
+ org.eclipse.tm.internal.terminal.control,
+ org.eclipse.tm.internal.terminal.control.actions,
+ org.eclipse.tm.internal.terminal.provisional.api,
  org.eclipse.ui.forms.widgets,
  org.yocto.remote.utils
 Bundle-Vendor: %Bundle-Vendor
--
1.7.9.5

_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

