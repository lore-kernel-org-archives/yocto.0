Return-Path: <laurentiu.palcu@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2CF8CE00777
	for <yocto@yoctoproject.org>; Tue, 11 Dec 2012 05:27:50 -0800 (PST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 11 Dec 2012 05:27:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,259,1355126400"; d="scan'208";a="229896336"
Received: from lpalcu-linux (HELO [10.237.105.165]) ([10.237.105.165])
	by azsmga001.ch.intel.com with ESMTP; 11 Dec 2012 05:27:48 -0800
Message-ID: <50C734D3.20009@intel.com>
Date: Tue, 11 Dec 2012 15:27:47 +0200
From: Laurentiu Palcu <laurentiu.palcu@intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/17.0 Thunderbird/17.0
MIME-Version: 1.0
To: Ioana Grigoropol <ioanax.grigoropol@intel.com>
References: <1355223801-14269-1-git-send-email-ioanax.grigoropol@intel.com>
In-Reply-To: <1355223801-14269-1-git-send-email-ioanax.grigoropol@intel.com>
Cc: yocto@yoctoproject.org
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
X-List-Received-Date: Tue, 11 Dec 2012 13:27:50 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Why don't you remove the commented code completely? You can always look
into file's git history if you need to.

Thanks,
Laurentiu

On 12/11/2012 01:03 PM, Ioana Grigoropol wrote:
> - remove radio button for validating existing repository but keep performing the validation in the back
> - make 'clone' button a check button
> 
> Signed-off-by: Ioana Grigoropol <ioanax.grigoropol@intel.com>
> ---
>  .../yocto/bc/ui/wizards/install/OptionsPage.java   |   40 +++++++++-----------
>  1 file changed, 18 insertions(+), 22 deletions(-)
> 
> diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/install/OptionsPage.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/install/OptionsPage.java
> index 9e94aea..9c01e4e 100644
> --- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/install/OptionsPage.java
> +++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/install/OptionsPage.java
> @@ -54,7 +54,7 @@ public class OptionsPage extends FiniteStateWizardPage {
>  	private ValidationListener validationListener;
>  	private Text txtProjectName;
>  	private Button btnGit;
> -	private Button btnValidate;
> +//	private Button btnValidate;
>  
>  	private RemoteProjectContentsLocationArea locationArea;
>  
> @@ -67,7 +67,7 @@ public class OptionsPage extends FiniteStateWizardPage {
>  	public void createControl(Composite parent) {
>  		top = new Composite(parent, SWT.None);
>  		top.setLayout(new GridLayout());
> -		top.setLayoutData(new GridData(GridData.FILL_BOTH));
> +		top.setLayoutData(new GridData(GridData.FILL_HORIZONTAL));
>  
>  		GridData gdFillH = new GridData(GridData.FILL_HORIZONTAL);
>  
> @@ -97,25 +97,26 @@ public class OptionsPage extends FiniteStateWizardPage {
>  
>  		locationArea = new RemoteProjectContentsLocationArea(errorReporter, top, null);
>  
> -		Group locationValidationGroup = new Group(top, SWT.NONE);
> -		locationValidationGroup.setText("Git repository");
> -		GridData gd = new GridData(GridData.VERTICAL_ALIGN_END | GridData.FILL_HORIZONTAL);
> -		locationValidationGroup.setLayoutData(gd);
> -		GridLayout gl = new GridLayout(1, false);
> -		locationValidationGroup.setLayout(gl);
> +//		Group locationValidationGroup = new Group(top, SWT.NONE);
> +//		locationValidationGroup.setText("Git repository");
> +//		GridData gd = new GridData(GridData.VERTICAL_ALIGN_END | GridData.FILL_HORIZONTAL);
> +//		locationValidationGroup.setLayoutData(gd);
> +//		GridLayout gl = new GridLayout(1, false);
> +//		locationValidationGroup.setLayout(gl);
>  
> -		btnGit = new Button(locationValidationGroup, SWT.RADIO);
> +		btnGit = new Button(top, SWT.CHECK);
>  		btnGit.setText("Clone from Yocto Project &Git Repository into new location");
>  		btnGit.setEnabled(true);
>  		btnGit.setSelection(true);
>  		btnGit.addSelectionListener(validationListener);
> +		GridData gd = new GridData(GridData.VERTICAL_ALIGN_END | GridData.FILL_HORIZONTAL);
> +		btnGit.setLayoutData(gd);
>  
> -
> -		btnValidate = new Button(locationValidationGroup, SWT.RADIO);
> -		btnValidate.setText("&Validate existing Git project location");
> -		btnValidate.setEnabled(true);
> -		btnValidate.setSelection(false);
> -		btnValidate.addSelectionListener(validationListener);
> +//		btnValidate = new Button(locationValidationGroup, SWT.RADIO);
> +//		btnValidate.setText("&Validate existing Git project location");
> +//		btnValidate.setEnabled(true);
> +//		btnValidate.setSelection(false);
> +//		btnValidate.addSelectionListener(validationListener);
>  
>  		setControl(top);
>  	}
> @@ -165,16 +166,11 @@ public class OptionsPage extends FiniteStateWizardPage {
>  		String projectPath = projectLoc + separator + getProjectName();
>  		IHostFile repoDest = RemoteHelper.getRemoteHostFile(connection, projectPath, new NullProgressMonitor());
>  
> -		if(btnValidate.getSelection()) {
> +		if(!btnGit.getSelection()) {
>  			if (repoDest == null || !repoDest.exists()) {
>  				setErrorMessage("Directory " + projectPath + " does not exist, please select git clone.");
>  				return false;
>  			}
> -//			IHostFile gitDescr = RemoteHelper.getRemoteHostFile(connection, projectPath + "/.git", new NullProgressMonitor());
> -//			if (gitDescr == null || !gitDescr.exists()) {
> -//				setErrorMessage("Directory " + projectPath + " does not contain a git repository, please select git clone.");
> -//				return false;
> -//			}
>  
>  			IHostFile validationFile = RemoteHelper.getRemoteHostFile(connection, projectPath + URI_SEPARATOR + InstallWizard.VALIDATION_FILE, new NullProgressMonitor());
>  			if (validationFile == null || !validationFile.exists()) {
> @@ -185,7 +181,7 @@ public class OptionsPage extends FiniteStateWizardPage {
>  			if (repoDest.exists() && repoDest.isDirectory()) {
>  				IHostFile gitDescr = RemoteHelper.getRemoteHostFile(connection, projectPath + "/.git", new NullProgressMonitor());
>  				if (gitDescr != null && gitDescr.exists()) {
> -					setErrorMessage("Directory " + projectPath + " contains a repository, please select validate repository.");
> +					setErrorMessage("Directory " + projectPath + " contains a repository, please choose another location or skip cloning the repository.");
>  					return false;
>  				}
>  			}
> 

