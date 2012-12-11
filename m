Return-Path: <ioanax.grigoropol@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E8C2EE00777
	for <yocto@yoctoproject.org>; Tue, 11 Dec 2012 05:47:03 -0800 (PST)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 11 Dec 2012 05:47:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,259,1355126400"; d="scan'208";a="179393743"
Received: from irsmsx103.ger.corp.intel.com ([163.33.3.157])
	by AZSMGA002.ch.intel.com with ESMTP; 11 Dec 2012 05:47:02 -0800
Received: from irsmsx152.ger.corp.intel.com (163.33.192.66) by
	IRSMSX103.ger.corp.intel.com (163.33.3.157) with Microsoft SMTP Server
	(TLS) id 14.1.355.2; Tue, 11 Dec 2012 13:47:01 +0000
Received: from irsmsx101.ger.corp.intel.com ([169.254.1.13]) by
	IRSMSX152.ger.corp.intel.com ([169.254.6.36]) with mapi id
	14.01.0355.002; Tue, 11 Dec 2012 13:47:01 +0000
From: "Grigoropol, IoanaX" <ioanax.grigoropol@intel.com>
To: "Palcu, Laurentiu" <laurentiu.palcu@intel.com>
Thread-Topic: [yocto] [PATCH]
	[eclipse-poky-windows][branch:windows-build]Remove validate existing
	repository radio button
Thread-Index: AQHN15CcGG+p0f6mWkWshRv7vJlXMZgTl3yAgAAFSkA=
Date: Tue, 11 Dec 2012 13:47:00 +0000
Message-ID: <3E179CF0D7162B4AA4E2B324209A4639AB453D@IRSMSX101.ger.corp.intel.com>
References: <1355223801-14269-1-git-send-email-ioanax.grigoropol@intel.com>
	<50C734D3.20009@intel.com>
In-Reply-To: <50C734D3.20009@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [163.33.239.182]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH] [eclipse-poky-windows][branch:windows-build]Remove validate existing repository radio button
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
X-List-Received-Date: Tue, 11 Dec 2012 13:47:04 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Sure. Patch resent to list.

Thanks,
Ioana

-----Original Message-----
From: Palcu, Laurentiu=20
Sent: Tuesday, December 11, 2012 3:28 PM
To: Grigoropol, IoanaX
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] [PATCH] [eclipse-poky-windows][branch:windows-build]Re=
move validate existing repository radio button

Why don't you remove the commented code completely? You can always look int=
o file's git history if you need to.

Thanks,
Laurentiu

On 12/11/2012 01:03 PM, Ioana Grigoropol wrote:
> - remove radio button for validating existing repository but keep=20
> performing the validation in the back
> - make 'clone' button a check button
>=20
> Signed-off-by: Ioana Grigoropol <ioanax.grigoropol@intel.com>
> ---
>  .../yocto/bc/ui/wizards/install/OptionsPage.java   |   40 +++++++++-----=
------
>  1 file changed, 18 insertions(+), 22 deletions(-)
>=20
> diff --git=20
> a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/install/OptionsP
> age.java=20
> b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/install/OptionsP
> age.java
> index 9e94aea..9c01e4e 100644
> ---=20
> a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/install/OptionsP
> age.java
> +++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/install/Opti
> +++ onsPage.java
> @@ -54,7 +54,7 @@ public class OptionsPage extends FiniteStateWizardPage =
{
>  	private ValidationListener validationListener;
>  	private Text txtProjectName;
>  	private Button btnGit;
> -	private Button btnValidate;
> +//	private Button btnValidate;
> =20
>  	private RemoteProjectContentsLocationArea locationArea;
> =20
> @@ -67,7 +67,7 @@ public class OptionsPage extends FiniteStateWizardPage =
{
>  	public void createControl(Composite parent) {
>  		top =3D new Composite(parent, SWT.None);
>  		top.setLayout(new GridLayout());
> -		top.setLayoutData(new GridData(GridData.FILL_BOTH));
> +		top.setLayoutData(new GridData(GridData.FILL_HORIZONTAL));
> =20
>  		GridData gdFillH =3D new GridData(GridData.FILL_HORIZONTAL);
> =20
> @@ -97,25 +97,26 @@ public class OptionsPage extends=20
> FiniteStateWizardPage {
> =20
>  		locationArea =3D new RemoteProjectContentsLocationArea(errorReporter,=
=20
> top, null);
> =20
> -		Group locationValidationGroup =3D new Group(top, SWT.NONE);
> -		locationValidationGroup.setText("Git repository");
> -		GridData gd =3D new GridData(GridData.VERTICAL_ALIGN_END | GridData.FI=
LL_HORIZONTAL);
> -		locationValidationGroup.setLayoutData(gd);
> -		GridLayout gl =3D new GridLayout(1, false);
> -		locationValidationGroup.setLayout(gl);
> +//		Group locationValidationGroup =3D new Group(top, SWT.NONE);
> +//		locationValidationGroup.setText("Git repository");
> +//		GridData gd =3D new GridData(GridData.VERTICAL_ALIGN_END | GridData.=
FILL_HORIZONTAL);
> +//		locationValidationGroup.setLayoutData(gd);
> +//		GridLayout gl =3D new GridLayout(1, false);
> +//		locationValidationGroup.setLayout(gl);
> =20
> -		btnGit =3D new Button(locationValidationGroup, SWT.RADIO);
> +		btnGit =3D new Button(top, SWT.CHECK);
>  		btnGit.setText("Clone from Yocto Project &Git Repository into new loca=
tion");
>  		btnGit.setEnabled(true);
>  		btnGit.setSelection(true);
>  		btnGit.addSelectionListener(validationListener);
> +		GridData gd =3D new GridData(GridData.VERTICAL_ALIGN_END | GridData.FI=
LL_HORIZONTAL);
> +		btnGit.setLayoutData(gd);
> =20
> -
> -		btnValidate =3D new Button(locationValidationGroup, SWT.RADIO);
> -		btnValidate.setText("&Validate existing Git project location");
> -		btnValidate.setEnabled(true);
> -		btnValidate.setSelection(false);
> -		btnValidate.addSelectionListener(validationListener);
> +//		btnValidate =3D new Button(locationValidationGroup, SWT.RADIO);
> +//		btnValidate.setText("&Validate existing Git project location");
> +//		btnValidate.setEnabled(true);
> +//		btnValidate.setSelection(false);
> +//		btnValidate.addSelectionListener(validationListener);
> =20
>  		setControl(top);
>  	}
> @@ -165,16 +166,11 @@ public class OptionsPage extends FiniteStateWizardP=
age {
>  		String projectPath =3D projectLoc + separator + getProjectName();
>  		IHostFile repoDest =3D RemoteHelper.getRemoteHostFile(connection,=20
> projectPath, new NullProgressMonitor());
> =20
> -		if(btnValidate.getSelection()) {
> +		if(!btnGit.getSelection()) {
>  			if (repoDest =3D=3D null || !repoDest.exists()) {
>  				setErrorMessage("Directory " + projectPath + " does not exist, pleas=
e select git clone.");
>  				return false;
>  			}
> -//			IHostFile gitDescr =3D RemoteHelper.getRemoteHostFile(connection, p=
rojectPath + "/.git", new NullProgressMonitor());
> -//			if (gitDescr =3D=3D null || !gitDescr.exists()) {
> -//				setErrorMessage("Directory " + projectPath + " does not contain a =
git repository, please select git clone.");
> -//				return false;
> -//			}
> =20
>  			IHostFile validationFile =3D RemoteHelper.getRemoteHostFile(connectio=
n, projectPath + URI_SEPARATOR + InstallWizard.VALIDATION_FILE, new NullPro=
gressMonitor());
>  			if (validationFile =3D=3D null || !validationFile.exists()) { @@=20
> -185,7 +181,7 @@ public class OptionsPage extends FiniteStateWizardPage {
>  			if (repoDest.exists() && repoDest.isDirectory()) {
>  				IHostFile gitDescr =3D RemoteHelper.getRemoteHostFile(connection, pr=
ojectPath + "/.git", new NullProgressMonitor());
>  				if (gitDescr !=3D null && gitDescr.exists()) {
> -					setErrorMessage("Directory " + projectPath + " contains a repositor=
y, please select validate repository.");
> +					setErrorMessage("Directory " + projectPath + " contains a=20
> +repository, please choose another location or skip cloning the=20
> +repository.");
>  					return false;
>  				}
>  			}
>=20

