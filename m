Return-Path: <ioanax.grigoropol@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EA1D5E01430
	for <yocto@yoctoproject.org>; Thu,  6 Dec 2012 00:47:44 -0800 (PST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 06 Dec 2012 00:47:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,228,1355126400"; d="scan'208";a="227372752"
Received: from irsmsx102.ger.corp.intel.com ([163.33.3.155])
	by azsmga001.ch.intel.com with ESMTP; 06 Dec 2012 00:47:43 -0800
Received: from irsmsx101.ger.corp.intel.com ([169.254.1.13]) by
	IRSMSX102.ger.corp.intel.com ([169.254.2.95]) with mapi id
	14.01.0355.002; Thu, 6 Dec 2012 08:47:10 +0000
From: "Grigoropol, IoanaX" <ioanax.grigoropol@intel.com>
To: "Zhang, Jessica" <jessica.zhang@intel.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] [PATCH] Fix incompatibility with jre1.6 support for
	typed	HashMap
Thread-Index: AQHN0z32GAhGpl+nT0iGncR2NGIy0pgLdPUQ
Date: Thu, 6 Dec 2012 08:47:10 +0000
Message-ID: <3E179CF0D7162B4AA4E2B324209A4639AB0D83@IRSMSX101.ger.corp.intel.com>
References: <1354704040-20058-1-git-send-email-ioanax.grigoropol@intel.com>
	<C6510F6D410BB64A8C15398EDC6B847C46B68F16@ORSMSX101.amr.corp.intel.com>
In-Reply-To: <C6510F6D410BB64A8C15398EDC6B847C46B68F16@ORSMSX101.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [163.33.239.181]
MIME-Version: 1.0
Subject: Re: [PATCH] Fix incompatibility with jre1.6 support for typed	HashMap
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
X-List-Received-Date: Thu, 06 Dec 2012 08:47:45 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Jessica,

Have you applied the three patches I have sent before these ones ? There ar=
e related to updating the progress bars in the Bitbake project & recipe as =
well as regarding the validation of new project location and name ([PATCH 0=
/3] [eclipse-poky] Eclipse plugin on Windows - fixes for progress update on=
 wizards & input validation).

Thanks,
Ioana

-----Original Message-----
From: Zhang, Jessica=20
Sent: Thursday, December 06, 2012 1:12 AM
To: Grigoropol, IoanaX; yocto@yoctoproject.org
Subject: RE: [yocto] [PATCH] Fix incompatibility with jre1.6 support for ty=
ped HashMap

Hi Ioana,

None of your patches of today apply so there seems to be some rebase issue.=
  Also, I've added headless build support changes for windows BC plugin, so=
 can you rebase against jzhang/windows-build and resubmit the patch series?

Thanks,
Jessica

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Ioana Grigoropol
Sent: Wednesday, December 05, 2012 2:41 AM
To: yocto@yoctoproject.org
Subject: [yocto] [PATCH] Fix incompatibility with jre1.6 support for typed =
HashMap

Signed-off-by: Ioana Grigoropol <ioanax.grigoropol@intel.com>
---
 .../remote/utils/YoctoHostShellProcessAdapter.java |   18 ++++++++++++----=
--
 1 file changed, 12 insertions(+), 6 deletions(-)

diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/YoctoHos=
tShellProcessAdapter.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote=
/utils/YoctoHostShellProcessAdapter.java
index 9ab43cf..2dba0a6 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/YoctoHostShellP=
rocessAdapter.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/YoctoHostShe
+++ llProcessAdapter.java
@@ -34,6 +34,7 @@ public class YoctoHostShellProcessAdapter extends  HostSh=
ellProcessAdapter {
=20
 	private Semaphore sem;
=20
+
 	public YoctoHostShellProcessAdapter(IHostShell hostShell, ProcessStreamBu=
ffer processStreamBuffer, CommandResponseHandler commandResponseHandler) th=
rows IOException {
 		super(hostShell);
 		this.processStreamBuffer =3D processStreamBuffer; @@ -41,7 +42,7 @@ publ=
ic class YoctoHostShellProcessAdapter extends  HostShellProcessAdapter {
 		this.calculator =3D new GitCalculatePercentage();
 		this.sem =3D new Semaphore(1);
 		this.command =3D "";
-		this.commandMonitors =3D new HashMap<>();
+		this.commandMonitors =3D new HashMap<String, IProgressMonitor>();
 	}
=20
 	public String getLastCommand() {
@@ -50,7 +51,7 @@ public class YoctoHostShellProcessAdapter extends  HostSh=
ellProcessAdapter {
=20
 	public synchronized void setLastCommand(String lastCommand) {
 		try {
-			// there are still some processes that might take a long time and if we=
 do not wait for them,=20
+			// there are still some processes that might take a long time and if=20
+we do not wait for them,
 			// then the semaphore will not be released, because an interrupted exce=
ption will occur
 			Thread.sleep(2000);
 			isFinished =3D false;
@@ -70,6 +71,7 @@ public class YoctoHostShellProcessAdapter extends  HostSh=
ellProcessAdapter {
=20
 	private class GitCalculatePercentage implements ICalculatePercentage {
 		final Pattern pattern =3D Pattern.compile("^Receiving objects:\\s*(\\d+)=
%.*");
+		@Override
 		public float calWorkloadDone(String info) throws IllegalArgumentExceptio=
n {
 			Matcher m =3D pattern.matcher(info.trim());
 			if(m.matches()) {
@@ -88,13 +90,16 @@ public class YoctoHostShellProcessAdapter extends  Host=
ShellProcessAdapter {
 	}
=20
 	private void updateMonitor(final int work){
+
 		Display.getDefault().asyncExec(new Runnable() {
+
 			@Override
 			public void run() {
 				if (getMonitor() !=3D null) {
 					getMonitor().worked(work);
 				}
 			}
+
 		});
 	}
=20
@@ -124,7 +129,7 @@ public class YoctoHostShellProcessAdapter extends  Host=
ShellProcessAdapter {
 				updateMonitor(delta);
 				reportedWorkload +=3D delta;
 			}
-		=09
+
 			if (reportedWorkload =3D=3D RemoteHelper.TOTALWORKLOAD)
 				doneMonitor();
 		}
@@ -152,8 +157,9 @@ public class YoctoHostShellProcessAdapter extends  Host=
ShellProcessAdapter {
 					continue;
 				}
 				setCommandPrompt(value);
+
 				if (commandPrompt !=3D null && endChar !=3D null && command !=3D null =
&& processStreamBuffer !=3D null &&
-						value.startsWith(commandPrompt) &&  value.endsWith(endChar) &&=20
+						value.startsWith(commandPrompt) &&  value.endsWith(endChar) &&
 						!value.endsWith(command) && processStreamBuffer.getLastOutputLineCon=
taining(command) !=3D null /*&& waitForOutput*/) {
 					sem.release();
 					isFinished =3D true;
@@ -165,7 +171,7 @@ public class YoctoHostShellProcessAdapter extends  Host=
ShellProcessAdapter {
 				this.commandResponseHandler.response(value, false);
 			}
 		}
-	=09
+
 	}
 	private void setCommandPrompt(String value) {
 		if (commandPrompt =3D=3D null) {
@@ -178,7 +184,7 @@ public class YoctoHostShellProcessAdapter extends  Host=
ShellProcessAdapter {
 				commandPrompt =3D value.substring(0, end);
 				endChar =3D PROMPT_USER_CH;
 			}
-			=09
+
 		}
 	}
 	public boolean isFinished() {
--
1.7.9.5

_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

