Return-Path: <jessica.zhang@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A9EE4E00348
	for <yocto@yoctoproject.org>; Fri,  7 Dec 2012 15:01:20 -0800 (PST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 07 Dec 2012 15:01:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,241,1355126400"; d="scan'208";a="228217223"
Received: from orsmsx103.amr.corp.intel.com ([10.22.225.130])
	by azsmga001.ch.intel.com with ESMTP; 07 Dec 2012 15:01:19 -0800
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.81]) by
	ORSMSX103.amr.corp.intel.com ([169.254.2.132]) with mapi id
	14.01.0355.002; Fri, 7 Dec 2012 15:01:19 -0800
From: "Zhang, Jessica" <jessica.zhang@intel.com>
To: "Grigoropol, IoanaX" <ioanax.grigoropol@intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] [PATCH] Fix incompatibility with jre1.6 support for
	typed	HashMap
Thread-Index: AQHN0tZyGuFpvAgHik2lcA+3X0D3kpgK1cNQgAF/T4CAAaJEsA==
Date: Fri, 7 Dec 2012 23:01:18 +0000
Message-ID: <C6510F6D410BB64A8C15398EDC6B847C46B69AD7@ORSMSX101.amr.corp.intel.com>
References: <1354704040-20058-1-git-send-email-ioanax.grigoropol@intel.com>
	<C6510F6D410BB64A8C15398EDC6B847C46B68F16@ORSMSX101.amr.corp.intel.com>
	<3E179CF0D7162B4AA4E2B324209A4639AB2B02@IRSMSX101.ger.corp.intel.com>
In-Reply-To: <3E179CF0D7162B4AA4E2B324209A4639AB2B02@IRSMSX101.ger.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
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
X-List-Received-Date: Fri, 07 Dec 2012 23:01:20 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Ioana,

Seems the patch won't apply even with the --keep-cr flag.  This is against =
jzhang/windows-build branch.

Can you double check?

Thanks,
Jessica

git am --keep-cr ~/mbox/\[yocto\]_\[PATCH_7_8\]_convert_CRLF_line_terminato=
rs_to_CR_only.mbox
Applying: convert CRLF line terminators to CR only
/home/jzhang/eclipse-poky-windows/.git/rebase-apply/patch:79: trailing whit=
espace.
    public FiniteStateWizard() {
/home/jzhang/eclipse-poky-windows/.git/rebase-apply/patch:81: trailing whit=
espace.

/home/jzhang/eclipse-poky-windows/.git/rebase-apply/patch:96: trailing whit=
espace.

/home/jzhang/eclipse-poky-windows/.git/rebase-apply/patch:101: trailing whi=
tespace.
        super.createPageControls(pageContainer);
/home/jzhang/eclipse-poky-windows/.git/rebase-apply/patch:112: trailing whi=
tespace.

error: patch failed: plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/Fi=
niteStateWizard.java:1
error: plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/FiniteStateWizar=
d.java: patch does not apply
error: patch failed: plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/Fi=
niteStateWizardPage.java:1
error: plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/FiniteStateWizar=
dPage.java: patch does not apply
Patch failed at 0001 convert CRLF line terminators to CR only
When you have resolved this problem run "git am --resolved".
If you would prefer to skip this patch, instead run "git am --skip".
To restore the original branch and stop patching run "git am --abort".

-----Original Message-----
From: Grigoropol, IoanaX
Sent: Thursday, December 06, 2012 6:02 AM
To: Zhang, Jessica; yocto@yoctoproject.org
Subject: RE: [yocto] [PATCH] Fix incompatibility with jre1.6 support for ty=
ped HashMap

Hi Jessica,

There seems to be a bit of a mix-up on the new branch in the order of the p=
atches were applied. Also, some files modified under Linux have CRLF ending=
 instead of CR.
Can you please rebase the branch (the new one or the old one) to commit ec4=
fcf7b478f59e190d9b9fe9b56e44971c4f66c, and then apply the set of 8 patches =
I resent to the mailing list ?
Bare in mind that the patch before last (that converts from CRLF to CR) wil=
l not apply unless applied with option --keep-cr.

Thanks,
Ioana

-----Original Message-----
From: Zhang, Jessica
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

