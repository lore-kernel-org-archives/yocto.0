Return-Path: <jessica.zhang@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C0EE4E011CC
	for <yocto@yoctoproject.org>; Thu, 13 Dec 2012 00:15:44 -0800 (PST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 13 Dec 2012 00:15:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,273,1355126400"; d="scan'208";a="230937439"
Received: from orsmsx105.amr.corp.intel.com ([10.22.225.132])
	by azsmga001.ch.intel.com with ESMTP; 13 Dec 2012 00:15:30 -0800
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.81]) by
	ORSMSX105.amr.corp.intel.com ([169.254.4.144]) with mapi id
	14.01.0355.002; Thu, 13 Dec 2012 00:15:30 -0800
From: "Zhang, Jessica" <jessica.zhang@intel.com>
To: "Grigoropol, IoanaX" <ioanax.grigoropol@intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] [PATCH v3]
	[eclipse-poky-windows][branch:windows-build]Remove validate	existing
	repository radio button
Thread-Index: AQHN16ndopYeTSzxP0WgFechV4R9X5gUMW7QgAFm5ACAAMkqsA==
Date: Thu, 13 Dec 2012 08:15:28 +0000
Message-ID: <C6510F6D410BB64A8C15398EDC6B847C46B6B766@ORSMSX101.amr.corp.intel.com>
References: <1355234646-16456-1-git-send-email-ioanax.grigoropol@intel.com>
	<C6510F6D410BB64A8C15398EDC6B847C46B6AE28@ORSMSX101.amr.corp.intel.com>
	<3E179CF0D7162B4AA4E2B324209A4639AB4A3D@IRSMSX101.ger.corp.intel.com>
In-Reply-To: <3E179CF0D7162B4AA4E2B324209A4639AB4A3D@IRSMSX101.ger.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Re: [PATCH v3]	[eclipse-poky-windows][branch:windows-build]Remove validate	existing repository radio button
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
X-List-Received-Date: Thu, 13 Dec 2012 08:15:45 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Ioana,

I looked into the code and with the current implementation and your changes=
 all of commands are execute via a BBSession->ShellSession's execute which =
has always been a synchronized function.  The only difference is the curren=
t implementation, for each command it is using the local process and its ou=
tput, as to your changes is via a remoteconnection helper.  So the delay is=
 caused by the output returned via the remote connection helper?  If so, pr=
obably we need to look into why such a big different.  Since I've been test=
ing against local connection not even against a real remote connection yet.=
  Or am I missing something here?

With the patch, we just shift the symptom since the project is still not fu=
lly utilized even though it shows up quickly.

Thanks,
Jessica

-----Original Message-----
From: Grigoropol, IoanaX
Sent: Wednesday, December 12, 2012 4:04 AM
To: Zhang, Jessica; yocto@yoctoproject.org
Subject: RE: [yocto] [PATCH v3] [eclipse-poky-windows][branch:windows-build=
]Remove validate existing repository radio button

Hi Jessica,

I have sent a new patch that targets the downtime issue that you reported, =
against windows-build current branch.
The downtime that you noticed it is due to the fact that with the current i=
mplementation, the commands are ran synchronously, meaning that each comman=
d must wait for the previous one to finish.
In the past, this was done by creating a process for each command, and wait=
ing for its output. At the moment, we have a shell per remote connection, a=
nd we need to know when a command has finished running.
In the case of the New Bitbake project, the downtime is caused by sourcing =
the environment, and retrieving the values outputted by "bitbake -e".
With the current patch, the output of this command, is silenced and the pro=
cess is not blocking the new project wizard, but running in the background.
There is one scenario in which this implementation is not "safe", which is =
that where the user creates a new project from an existing directory, and s=
oon after does some operation that uses the presumably already populated en=
vironment from bitbake, which may or may not be available, since it is sent=
 in the background. One possible solution for this, is to show to the user =
that this operation is in progress, and he still needs to wait a bit for th=
is to be done before performing any operations that might need this informa=
tion.
What is your opinion on this matter?

Thanks,
Ioana

-----Original Message-----
From: Zhang, Jessica
Sent: Wednesday, December 12, 2012 12:44 AM
To: Grigoropol, IoanaX; yocto@yoctoproject.org
Subject: RE: [yocto] [PATCH v3] [eclipse-poky-windows][branch:windows-build=
]Remove validate existing repository radio button

Hi Ioana,

I merged your patches up to this one to jzhang/windows-build branch of ecli=
pse-poky.  Please send out the final patches for Linux performance improvem=
ents that we've discussed.  Also, many java files there's a comment section=
 at the beginning, can you add some comments about your changes to those fi=
les? For example, plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/NewBi=
tBakeFileRecipeWizardPage.java

Thanks,
Jessica

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Ioana Grigoropol
Sent: Tuesday, December 11, 2012 6:04 AM
To: yocto@yoctoproject.org
Subject: [yocto] [PATCH v3] [eclipse-poky-windows][branch:windows-build]Rem=
ove validate existing repository radio button

- remove radio button for validating existing repository but keep performin=
g the validation in the back
- make 'clone' button a check button

Signed-off-by: Ioana Grigoropol <ioanax.grigoropol@intel.com>
---
 .../yocto/bc/ui/wizards/install/OptionsPage.java   |   30 ++++------------=
----
 1 file changed, 6 insertions(+), 24 deletions(-)

diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/install/Op=
tionsPage.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/instal=
l/OptionsPage.java
index 9e94aea..72aeec2 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/install/OptionsPa=
ge.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/install/Option
+++ sPage.java
@@ -54,7 +54,6 @@ public class OptionsPage extends FiniteStateWizardPage {
        private ValidationListener validationListener;
        private Text txtProjectName;
        private Button btnGit;
-       private Button btnValidate;

        private RemoteProjectContentsLocationArea locationArea;

@@ -67,7 +66,7 @@ public class OptionsPage extends FiniteStateWizardPage {
        public void createControl(Composite parent) {
                top =3D new Composite(parent, SWT.None);
                top.setLayout(new GridLayout());
-               top.setLayoutData(new GridData(GridData.FILL_BOTH));
+               top.setLayoutData(new GridData(GridData.FILL_HORIZONTAL));

                GridData gdFillH =3D new GridData(GridData.FILL_HORIZONTAL)=
;

@@ -97,25 +96,13 @@ public class OptionsPage extends FiniteStateWizardPage =
{

                locationArea =3D new RemoteProjectContentsLocationArea(erro=
rReporter, top, null);

-               Group locationValidationGroup =3D new Group(top, SWT.NONE);
-               locationValidationGroup.setText("Git repository");
-               GridData gd =3D new GridData(GridData.VERTICAL_ALIGN_END | =
GridData.FILL_HORIZONTAL);
-               locationValidationGroup.setLayoutData(gd);
-               GridLayout gl =3D new GridLayout(1, false);
-               locationValidationGroup.setLayout(gl);
-
-               btnGit =3D new Button(locationValidationGroup, SWT.RADIO);
+               btnGit =3D new Button(top, SWT.CHECK);
                btnGit.setText("Clone from Yocto Project &Git Repository in=
to new location");
                btnGit.setEnabled(true);
                btnGit.setSelection(true);
                btnGit.addSelectionListener(validationListener);
-
-
-               btnValidate =3D new Button(locationValidationGroup, SWT.RAD=
IO);
-               btnValidate.setText("&Validate existing Git project locatio=
n");
-               btnValidate.setEnabled(true);
-               btnValidate.setSelection(false);
-               btnValidate.addSelectionListener(validationListener);
+               GridData gd =3D new GridData(GridData.VERTICAL_ALIGN_END | =
GridData.FILL_HORIZONTAL);
+               btnGit.setLayoutData(gd);

                setControl(top);
        }
@@ -165,16 +152,11 @@ public class OptionsPage extends FiniteStateWizardPag=
e {
                String projectPath =3D projectLoc + separator + getProjectN=
ame();
                IHostFile repoDest =3D RemoteHelper.getRemoteHostFile(conne=
ction, projectPath, new NullProgressMonitor());

-               if(btnValidate.getSelection()) {
+               if(!btnGit.getSelection()) {
                        if (repoDest =3D=3D null || !repoDest.exists()) {
                                setErrorMessage("Directory " + projectPath =
+ " does not exist, please select git clone.");
                                return false;
                        }
-//                     IHostFile gitDescr =3D RemoteHelper.getRemoteHostFi=
le(connection, projectPath + "/.git", new NullProgressMonitor());
-//                     if (gitDescr =3D=3D null || !gitDescr.exists()) {
-//                             setErrorMessage("Directory " + projectPath =
+ " does not contain a git repository, please select git clone.");
-//                             return false;
-//                     }

                        IHostFile validationFile =3D RemoteHelper.getRemote=
HostFile(connection, projectPath + URI_SEPARATOR + InstallWizard.VALIDATION=
_FILE, new NullProgressMonitor());
                        if (validationFile =3D=3D null || !validationFile.e=
xists()) { @@ -185,7 +167,7 @@ public class OptionsPage extends FiniteState=
WizardPage {
                        if (repoDest.exists() && repoDest.isDirectory()) {
                                IHostFile gitDescr =3D RemoteHelper.getRemo=
teHostFile(connection, projectPath + "/.git", new NullProgressMonitor());
                                if (gitDescr !=3D null && gitDescr.exists()=
) {
-                                       setErrorMessage("Directory " + proj=
ectPath + " contains a repository, please select validate repository.");
+                                       setErrorMessage("Directory " + proj=
ectPath + " contains a
+repository, please choose another location or skip cloning the
+repository.");
                                        return false;
                                }
                        }
--
1.7.9.5

_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

