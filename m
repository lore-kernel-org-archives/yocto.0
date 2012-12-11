Return-Path: <jessica.zhang@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5921AE00777
	for <yocto@yoctoproject.org>; Tue, 11 Dec 2012 14:44:11 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 11 Dec 2012 14:43:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,262,1355126400"; d="scan'208";a="256052071"
Received: from orsmsx106.amr.corp.intel.com ([10.22.225.133])
	by orsmga002.jf.intel.com with ESMTP; 11 Dec 2012 14:44:10 -0800
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.81]) by
	ORSMSX106.amr.corp.intel.com ([169.254.5.66]) with mapi id
	14.01.0355.002; Tue, 11 Dec 2012 14:44:10 -0800
From: "Zhang, Jessica" <jessica.zhang@intel.com>
To: "Grigoropol, IoanaX" <ioanax.grigoropol@intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] [PATCH v3]
	[eclipse-poky-windows][branch:windows-build]Remove validate	existing
	repository radio button
Thread-Index: AQHN16ndopYeTSzxP0WgFechV4R9X5gUMW7Q
Date: Tue, 11 Dec 2012 22:44:09 +0000
Message-ID: <C6510F6D410BB64A8C15398EDC6B847C46B6AE28@ORSMSX101.amr.corp.intel.com>
References: <1355234646-16456-1-git-send-email-ioanax.grigoropol@intel.com>
In-Reply-To: <1355234646-16456-1-git-send-email-ioanax.grigoropol@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
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
X-List-Received-Date: Tue, 11 Dec 2012 22:44:11 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

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

