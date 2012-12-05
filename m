Return-Path: <jessica.zhang@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C0FC4E006C3
	for <yocto@yoctoproject.org>; Wed,  5 Dec 2012 15:12:12 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 05 Dec 2012 15:12:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,224,1355126400"; d="scan'208";a="257868347"
Received: from orsmsx102.amr.corp.intel.com ([10.22.225.129])
	by fmsmga001.fm.intel.com with ESMTP; 05 Dec 2012 15:12:12 -0800
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.81]) by
	ORSMSX102.amr.corp.intel.com ([169.254.1.125]) with mapi id
	14.01.0355.002; Wed, 5 Dec 2012 15:12:11 -0800
From: "Zhang, Jessica" <jessica.zhang@intel.com>
To: "Grigoropol, IoanaX" <ioanax.grigoropol@intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] [PATCH] Fix incompatibility with jre1.6 support for
	typed	HashMap
Thread-Index: AQHN0tZyGuFpvAgHik2lcA+3X0D3kpgK1cNQ
Date: Wed, 5 Dec 2012 23:12:11 +0000
Message-ID: <C6510F6D410BB64A8C15398EDC6B847C46B68F16@ORSMSX101.amr.corp.intel.com>
References: <1354704040-20058-1-git-send-email-ioanax.grigoropol@intel.com>
In-Reply-To: <1354704040-20058-1-git-send-email-ioanax.grigoropol@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
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
X-List-Received-Date: Wed, 05 Dec 2012 23:12:13 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

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

        private Semaphore sem;

+
        public YoctoHostShellProcessAdapter(IHostShell hostShell, ProcessSt=
reamBuffer processStreamBuffer, CommandResponseHandler commandResponseHandl=
er) throws IOException {
                super(hostShell);
                this.processStreamBuffer =3D processStreamBuffer; @@ -41,7 =
+42,7 @@ public class YoctoHostShellProcessAdapter extends  HostShellProces=
sAdapter {
                this.calculator =3D new GitCalculatePercentage();
                this.sem =3D new Semaphore(1);
                this.command =3D "";
-               this.commandMonitors =3D new HashMap<>();
+               this.commandMonitors =3D new HashMap<String, IProgressMonit=
or>();
        }

        public String getLastCommand() {
@@ -50,7 +51,7 @@ public class YoctoHostShellProcessAdapter extends  HostSh=
ellProcessAdapter {

        public synchronized void setLastCommand(String lastCommand) {
                try {
-                       // there are still some processes that might take a=
 long time and if we do not wait for them,
+                       // there are still some processes that might take a=
 long time and if
+we do not wait for them,
                        // then the semaphore will not be released, because=
 an interrupted exception will occur
                        Thread.sleep(2000);
                        isFinished =3D false;
@@ -70,6 +71,7 @@ public class YoctoHostShellProcessAdapter extends  HostSh=
ellProcessAdapter {

        private class GitCalculatePercentage implements ICalculatePercentag=
e {
                final Pattern pattern =3D Pattern.compile("^Receiving objec=
ts:\\s*(\\d+)%.*");
+               @Override
                public float calWorkloadDone(String info) throws IllegalArg=
umentException {
                        Matcher m =3D pattern.matcher(info.trim());
                        if(m.matches()) {
@@ -88,13 +90,16 @@ public class YoctoHostShellProcessAdapter extends  Host=
ShellProcessAdapter {
        }

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

@@ -124,7 +129,7 @@ public class YoctoHostShellProcessAdapter extends  Host=
ShellProcessAdapter {
                                updateMonitor(delta);
                                reportedWorkload +=3D delta;
                        }
-
+
                        if (reportedWorkload =3D=3D RemoteHelper.TOTALWORKL=
OAD)
                                doneMonitor();
                }
@@ -152,8 +157,9 @@ public class YoctoHostShellProcessAdapter extends  Host=
ShellProcessAdapter {
                                        continue;
                                }
                                setCommandPrompt(value);
+
                                if (commandPrompt !=3D null && endChar !=3D=
 null && command !=3D null && processStreamBuffer !=3D null &&
-                                               value.startsWith(commandPro=
mpt) &&  value.endsWith(endChar) &&
+                                               value.startsWith(commandPro=
mpt) &&  value.endsWith(endChar) &&
                                                !value.endsWith(command) &&=
 processStreamBuffer.getLastOutputLineContaining(command) !=3D null /*&& wa=
itForOutput*/) {
                                        sem.release();
                                        isFinished =3D true;
@@ -165,7 +171,7 @@ public class YoctoHostShellProcessAdapter extends  Host=
ShellProcessAdapter {
                                this.commandResponseHandler.response(value,=
 false);
                        }
                }
-
+
        }
        private void setCommandPrompt(String value) {
                if (commandPrompt =3D=3D null) {
@@ -178,7 +184,7 @@ public class YoctoHostShellProcessAdapter extends  Host=
ShellProcessAdapter {
                                commandPrompt =3D value.substring(0, end);
                                endChar =3D PROMPT_USER_CH;
                        }
-
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

