Return-Path: <ioanax.grigoropol@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A92A6E006C3
	for <yocto@yoctoproject.org>; Wed, 12 Dec 2012 04:04:03 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 12 Dec 2012 04:03:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,266,1355126400"; d="scan'208";a="256368347"
Received: from irsmsx102.ger.corp.intel.com ([163.33.3.155])
	by orsmga002.jf.intel.com with ESMTP; 12 Dec 2012 04:04:02 -0800
Received: from irsmsx101.ger.corp.intel.com ([169.254.1.13]) by
	IRSMSX102.ger.corp.intel.com ([169.254.2.95]) with mapi id
	14.01.0355.002; Wed, 12 Dec 2012 12:04:01 +0000
From: "Grigoropol, IoanaX" <ioanax.grigoropol@intel.com>
To: "Zhang, Jessica" <jessica.zhang@intel.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] [PATCH v3]
	[eclipse-poky-windows][branch:windows-build]Remove validate	existing
	repository radio button
Thread-Index: AQHN1/EKq/jbGERLnUeTapAYyjaBtJgVD9ow
Date: Wed, 12 Dec 2012 12:04:00 +0000
Message-ID: <3E179CF0D7162B4AA4E2B324209A4639AB4A3D@IRSMSX101.ger.corp.intel.com>
References: <1355234646-16456-1-git-send-email-ioanax.grigoropol@intel.com>
	<C6510F6D410BB64A8C15398EDC6B847C46B6AE28@ORSMSX101.amr.corp.intel.com>
In-Reply-To: <C6510F6D410BB64A8C15398EDC6B847C46B6AE28@ORSMSX101.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [163.33.239.181]
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
X-List-Received-Date: Wed, 12 Dec 2012 12:04:03 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Jessica,

I have sent a new patch that targets the downtime issue that you reported, =
against windows-build current branch.
The downtime that you noticed it is due to the fact that with the current i=
mplementation, the commands are ran synchronously, meaning that each comman=
d must wait for the previous one to finish.=20
In the past, this was done by creating a process for each command, and wait=
ing for its output. At the moment, we have a shell per remote connection, a=
nd we need to know when a command has finished running.=20
In the case of the New Bitbake project, the downtime is caused by sourcing =
the environment, and retrieving the values outputted by "bitbake -e".=20
With the current patch, the output of this command, is silenced and the pro=
cess is not blocking the new project wizard, but running in the background.=
=20
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
From: Zhang, Jessica=20
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
tBakeFileRecipeWizardPage.java=20

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
-	private Button btnValidate;
=20
 	private RemoteProjectContentsLocationArea locationArea;
=20
@@ -67,7 +66,7 @@ public class OptionsPage extends FiniteStateWizardPage {
 	public void createControl(Composite parent) {
 		top =3D new Composite(parent, SWT.None);
 		top.setLayout(new GridLayout());
-		top.setLayoutData(new GridData(GridData.FILL_BOTH));
+		top.setLayoutData(new GridData(GridData.FILL_HORIZONTAL));
=20
 		GridData gdFillH =3D new GridData(GridData.FILL_HORIZONTAL);
=20
@@ -97,25 +96,13 @@ public class OptionsPage extends FiniteStateWizardPage =
{
=20
 		locationArea =3D new RemoteProjectContentsLocationArea(errorReporter, to=
p, null);
=20
-		Group locationValidationGroup =3D new Group(top, SWT.NONE);
-		locationValidationGroup.setText("Git repository");
-		GridData gd =3D new GridData(GridData.VERTICAL_ALIGN_END | GridData.FILL=
_HORIZONTAL);
-		locationValidationGroup.setLayoutData(gd);
-		GridLayout gl =3D new GridLayout(1, false);
-		locationValidationGroup.setLayout(gl);
-
-		btnGit =3D new Button(locationValidationGroup, SWT.RADIO);
+		btnGit =3D new Button(top, SWT.CHECK);
 		btnGit.setText("Clone from Yocto Project &Git Repository into new locati=
on");
 		btnGit.setEnabled(true);
 		btnGit.setSelection(true);
 		btnGit.addSelectionListener(validationListener);
-
-
-		btnValidate =3D new Button(locationValidationGroup, SWT.RADIO);
-		btnValidate.setText("&Validate existing Git project location");
-		btnValidate.setEnabled(true);
-		btnValidate.setSelection(false);
-		btnValidate.addSelectionListener(validationListener);
+		GridData gd =3D new GridData(GridData.VERTICAL_ALIGN_END | GridData.FILL=
_HORIZONTAL);
+		btnGit.setLayoutData(gd);
=20
 		setControl(top);
 	}
@@ -165,16 +152,11 @@ public class OptionsPage extends FiniteStateWizardPag=
e {
 		String projectPath =3D projectLoc + separator + getProjectName();
 		IHostFile repoDest =3D RemoteHelper.getRemoteHostFile(connection, projec=
tPath, new NullProgressMonitor());
=20
-		if(btnValidate.getSelection()) {
+		if(!btnGit.getSelection()) {
 			if (repoDest =3D=3D null || !repoDest.exists()) {
 				setErrorMessage("Directory " + projectPath + " does not exist, please =
select git clone.");
 				return false;
 			}
-//			IHostFile gitDescr =3D RemoteHelper.getRemoteHostFile(connection, pro=
jectPath + "/.git", new NullProgressMonitor());
-//			if (gitDescr =3D=3D null || !gitDescr.exists()) {
-//				setErrorMessage("Directory " + projectPath + " does not contain a gi=
t repository, please select git clone.");
-//				return false;
-//			}
=20
 			IHostFile validationFile =3D RemoteHelper.getRemoteHostFile(connection,=
 projectPath + URI_SEPARATOR + InstallWizard.VALIDATION_FILE, new NullProgr=
essMonitor());
 			if (validationFile =3D=3D null || !validationFile.exists()) { @@ -185,7=
 +167,7 @@ public class OptionsPage extends FiniteStateWizardPage {
 			if (repoDest.exists() && repoDest.isDirectory()) {
 				IHostFile gitDescr =3D RemoteHelper.getRemoteHostFile(connection, proj=
ectPath + "/.git", new NullProgressMonitor());
 				if (gitDescr !=3D null && gitDescr.exists()) {
-					setErrorMessage("Directory " + projectPath + " contains a repository,=
 please select validate repository.");
+					setErrorMessage("Directory " + projectPath + " contains a=20
+repository, please choose another location or skip cloning the=20
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

