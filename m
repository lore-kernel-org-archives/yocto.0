Return-Path: <teodor.madan@freescale.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 53EDCE00EC8; Fri, 18 Sep 2015 09:11:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [207.46.100.114 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 2025 seconds by postgrey-1.32 at yocto-www;
	Fri, 18 Sep 2015 09:11:34 PDT
Received: from na01-by2-obe.outbound.protection.outlook.com
	(mail-by2on0114.outbound.protection.outlook.com [207.46.100.114])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DFBC7E00C0B
	for <yocto@yoctoproject.org>; Fri, 18 Sep 2015 09:11:34 -0700 (PDT)
Received: from CY1PR0301MB0843.namprd03.prod.outlook.com (10.160.163.149) by
	CY1PR0301MB0844.namprd03.prod.outlook.com (10.160.163.150) with
	Microsoft
	SMTP Server (TLS) id 15.1.268.17; Fri, 18 Sep 2015 15:37:45 +0000
Received: from CY1PR0301MB0843.namprd03.prod.outlook.com ([10.160.163.149]) by
	CY1PR0301MB0843.namprd03.prod.outlook.com ([10.160.163.149]) with
	mapi id 15.01.0268.017; Fri, 18 Sep 2015 15:37:45 +0000
From: Madan Teo <teodor.madan@freescale.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [PATCH] [eclipse-poky] Fix setting remote debug launcher for DSF
	[YOCTO #8317]
Thread-Index: AQHQ8V11f2Wqx40Z4kKDTKIlV/7Unw==
Date: Fri, 18 Sep 2015 15:37:45 +0000
Message-ID: <CY1PR0301MB0843A8E1BA2F79892E6A3C9897590@CY1PR0301MB0843.namprd03.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
received-spf: None (protection.outlook.com: freescale.com does not designate
	permitted sender hosts)
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=teodor.madan@freescale.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [192.88.166.1]
x-microsoft-exchange-diagnostics: 1; CY1PR0301MB0844;
	5:Uh6yMZptkrlyw90MUblnIDAmYWQZl4Mw1gWURsnZA+ao+LW5cZ7EarEsgAHOkoU2ct5Ur3bCRro3b0OENnS8VDxzm/IANVtAwRN6KnvfwJoDBojTXjCEXDzqO/8vbt6yvX1Sxzj8Tk3mVmmhL1QPvw==;
	24:IQa7ZnpqwqcBZA0g46eQz0HMiQt4v91DfMLmFttoHVdbkqq4oCpENQso1n9LiEg/t09ZSTT4EV/YtQ0FhSzPsxkJA6hHhRjknBoUFyvIi6A=;
	20:PNLsfaBV1VPNUyeZtPnpKG5xtO+FCvWjCOmHn0NJRANK5ghc6G+0i69kkWPycehXpo7AHlFYuMljT225lCOo9Q==
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:CY1PR0301MB0844;
x-microsoft-antispam-prvs: <CY1PR0301MB0844DA485182687B6CD9CDF897590@CY1PR0301MB0844.namprd03.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(601004)(520078)(8121501046)(5005006)(3002001);
	SRVR:CY1PR0301MB0844; BCL:0; PCL:0; RULEID:;
	SRVR:CY1PR0301MB0844; 
x-forefront-prvs: 0703B549E4
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(6009001)(199003)(189002)(77096005)(19580405001)(19580395003)(102836002)(107886002)(86362001)(2501003)(68736005)(5003600100002)(64706001)(105586002)(106116001)(5001860100001)(110136002)(5001960100002)(229853001)(106356001)(5002640100001)(54356999)(87936001)(40100003)(2900100001)(101416001)(122556002)(2351001)(77156002)(189998001)(5004730100002)(74316001)(50986999)(99286002)(11100500001)(5001920100001)(33656002)(5001830100001)(62966003)(92566002)(97736004)(46102003)(4001540100001)(81156007)(10400500002)(76576001)(5007970100001)(66066001)(450100001);
	DIR:OUT; SFP:1102; SCL:1; SRVR:CY1PR0301MB0844;
	H:CY1PR0301MB0843.namprd03.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; A:1; MX:1; LANG:en; 
spamdiagnosticoutput: 1:23
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Sep 2015 15:37:45.2816 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 710a03f5-10f6-4d38-9ff4-a80b81da590d
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY1PR0301MB0844
Subject: [PATCH] [eclipse-poky] Fix setting remote debug launcher for DSF [YOCTO #8317]
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
X-List-Received-Date: Fri, 18 Sep 2015 16:11:36 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

From: Teodor Madan <teodor.madan@freescale.com>

- Set LC attributes for both launch delegates: legacy CDI and DSF
- Do not override preferred launch delegate. Leave to the workspace
setting according to user preferences.
- Tweak is no longer needed for avoiding reseting settings to defaults

Signed-off-by: Teodor Madan <teodor.madan@freescale.com>
---
 plugins/org.yocto.sdk.ide/META-INF/MANIFEST.MF     |    3 ++-
 .../src/org/yocto/sdk/ide/utils/YoctoSDKUtils.java |   17 ++++++++++------=
-
 2 files changed, 12 insertions(+), 8 deletions(-)

diff --git a/plugins/org.yocto.sdk.ide/META-INF/MANIFEST.MF b/plugins/org.y=
octo.sdk.ide/META-INF/MANIFEST.MF
index 294af38..afb31b4 100644
--- a/plugins/org.yocto.sdk.ide/META-INF/MANIFEST.MF
+++ b/plugins/org.yocto.sdk.ide/META-INF/MANIFEST.MF
@@ -25,7 +25,8 @@ Require-Bundle: org.eclipse.ui,
  org.eclipse.cdt.autotools.core;bundle-version=3D"1.2.0",
  org.eclipse.cdt.autotools.ui;bundle-version=3D"1.0.1",
  org.eclipse.cdt.managedbuilder.ui;bundle-version=3D"8.2.0",
- org.eclipse.core.expressions;bundle-version=3D"3.4.500"
+ org.eclipse.core.expressions;bundle-version=3D"3.4.500",
+ org.eclipse.cdt.dsf.gdb;bundle-version=3D"4.8.0"
 Bundle-RequiredExecutionEnvironment: JavaSE-1.6
 Bundle-ActivationPolicy: lazy
 Export-Package: org.yocto.sdk.ide,
diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/utils/YoctoSDK=
Utils.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/utils/YoctoSDK=
Utils.java
index 2ab4972..9dcab55 100644
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/utils/YoctoSDKUtils.j=
ava
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/utils/YoctoSDKUtils.j=
ava
@@ -39,6 +39,7 @@ import org.eclipse.cdt.core.settings.model.ICConfiguratio=
nDescription;
 import org.eclipse.cdt.core.settings.model.ICProjectDescription;
 import org.eclipse.cdt.debug.core.ICDTLaunchConfigurationConstants;
 import org.eclipse.cdt.debug.mi.core.IMILaunchConfigurationConstants;
+import org.eclipse.cdt.dsf.gdb.IGDBLaunchConfigurationConstants;
 import org.eclipse.core.resources.IProject;
 import org.eclipse.core.runtime.CoreException;
 import org.eclipse.debug.core.DebugPlugin;
@@ -333,13 +334,15 @@ public class YoctoSDKUtils {
 			ILaunchConfigurationWorkingCopy w_copy =3D configType.newInstance(proje=
ct, configName);
 			Set<String> modes=3Dnew HashSet<String>();
 			modes.add("debug");
-			w_copy.setPreferredLaunchDelegate(modes, "org.eclipse.rse.remotecdt.lau=
nch");
-			w_copy.setAttribute(IMILaunchConfigurationConstants.ATTR_GDB_INIT, sDeb=
ugInitFile);
-			w_copy.setAttribute(IMILaunchConfigurationConstants.ATTR_DEBUGGER_AUTO_=
SOLIB, false);
-			w_copy.setAttribute(IMILaunchConfigurationConstants.ATTR_DEBUG_NAME, st=
rDebugger);
-			w_copy.setAttribute(IMILaunchConfigurationConstants.ATTR_DEBUGGER_PROTO=
COL, "mi");
-			//TWEAK avoid loading default values in org.eclipse.cdt.launch.remote.t=
abs.RemoteCDebuggerTab
-			w_copy.setAttribute("org.eclipse.cdt.launch.remote.RemoteCDSFDebuggerTa=
b.DEFAULTS_SET",true);
+			w_copy.setAttribute(IMILaunchConfigurationConstants.ATTR_GDB_INIT, sDeb=
ugInitFile); // CDI
+			w_copy.setAttribute(IGDBLaunchConfigurationConstants.ATTR_GDB_INIT, sDe=
bugInitFile); // DSF
+			w_copy.setAttribute(IMILaunchConfigurationConstants.ATTR_DEBUGGER_AUTO_=
SOLIB, false); // CDI
+			w_copy.setAttribute(IGDBLaunchConfigurationConstants.ATTR_DEBUGGER_AUTO=
_SOLIB, false); // DSF
+			w_copy.setAttribute(IMILaunchConfigurationConstants.ATTR_DEBUG_NAME, st=
rDebugger); // CDI
+			w_copy.setAttribute(IGDBLaunchConfigurationConstants.ATTR_DEBUG_NAME, s=
trDebugger); // DSF
+		=09
+			w_copy.setAttribute(IMILaunchConfigurationConstants.ATTR_DEBUGGER_PROTO=
COL, "mi"); // CDI
+
 			w_copy.setAttribute(ICDTLaunchConfigurationConstants.ATTR_PROJECT_NAME,=
 projectName);
 			if (!project.hasNature(YoctoSDKEmptyProjectNature.YoctoSDK_EMPTY_NATURE=
_ID)) {
 				String pathToCompiledBinary =3D "";
--=20
1.7.9.5


