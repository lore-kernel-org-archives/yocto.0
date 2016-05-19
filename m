Return-Path: <timothy.t.orling@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2F699E00E6C; Thu, 19 May 2016 09:45:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 642BAE00D93
	for <yocto@yoctoproject.org>; Thu, 19 May 2016 09:45:16 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 19 May 2016 09:45:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.26,334,1459839600"; d="scan'208";a="984686243"
Received: from linux.intel.com ([10.23.219.25])
	by fmsmga002.fm.intel.com with ESMTP; 19 May 2016 09:45:15 -0700
Received: by linux.intel.com (Postfix, from userid 48)
	id A2B366A4008; Thu, 19 May 2016 10:32:46 -0700 (PDT)
Received: from 10.24.0.29 (SquirrelMail authenticated user timothy.t.orling)
	by linux.intel.com with HTTP; Thu, 19 May 2016 10:32:46 -0700 (PDT)
Message-ID: <54211.10.24.0.29.1463679166.squirrel@linux.intel.com>
In-Reply-To: <52479.10.24.0.29.1463675537.squirrel@linux.intel.com>
References: <1463603364-2016-1-git-send-email-humberto.ibarra.lopez@intel.com>
	<52479.10.24.0.29.1463675537.squirrel@linux.intel.com>
Date: Thu, 19 May 2016 10:32:46 -0700 (PDT)
From: timothy.t.orling@linux.intel.com
To: timothy.t.orling@linux.intel.com
User-Agent: SquirrelMail/1.4.8-5.el4.centos.8
MIME-Version: 1.0
X-Priority: 3 (Normal)
Importance: Normal
Cc: yocto@yoctoproject.org
Subject: Re: [eclipse-poky][PATCH v2] OptionsPage.java: improved handling of path concatenation in new project
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
X-List-Received-Date: Thu, 19 May 2016 16:45:18 -0000
Content-Type: text/plain;charset=iso-8859-1
Content-Transfer-Encoding: 8bit

Tested for luna-master plugin branch and yocto-2.0.1 docs branch.

Tested-by: Tim Orling <timothy.t.orling@linux.intel.com>

> Please add your 'Signed-off-by:'
> (e.g. use 'git commit -s')
>
> --Tim
>
>> When creating a new Yocto Bitbake Commander project, the folder
>> separator is not being handled corretly. The problem is a folder and
>> a file to be concatenated are joined as Strings instead of paths.
>>
>> This patch solves the issue by using a path joioning mechanism instead
>> of simply concatenating strings.
>>
>> [Yocto #9648]
>> ---
>>  .../src/org/yocto/bc/ui/wizards/install/OptionsPage.java            | 6
>> +++---
>>  1 file changed, 3 insertions(+), 3 deletions(-)
>>
>> diff --git
>> a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/install/OptionsPage.java
>> b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/install/OptionsPage.java
>> index bd91ef9..3a2caa0 100644
>> ---
>> a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/install/OptionsPage.java
>> +++
>> b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/install/OptionsPage.java
>> @@ -166,17 +166,17 @@ public class OptionsPage extends
>> FiniteStateWizardPage {
>>  			return false;
>>  		}
>>
>> -		String projectPath = projectLoc + txtProjectName.getText();
>> +		String projectPath = new
>> File(projectLoc,txtProjectName.getText()).getPath();
>>  		File prj_dir=new File(projectPath);
>>  		if(!prj_dir.isDirectory() || !prj_dir.exists()) {
>>  			if(!new File(projectPath + File.separator +
>> InstallWizard.VALIDATION_FILE).exists()) {
>> -				setErrorMessage("Directory " + txtProjectLocation.getText() +
>> txtProjectName.getText() + " is an invalid poky directory.");
>> +				setErrorMessage("Directory " + projectPath + " is an invalid poky
>> directory.");
>>  				return false;
>>  			}
>>  		}
>>
>>  		try {
>> -			URI location = new URI("file://" +
>> txtProjectLocation.getText()+File.separator+txtProjectName.getText());
>> +			URI location = new URI("file://" + projectPath);
>>  			IStatus status =
>> ResourcesPlugin.getWorkspace().validateProjectLocationURI(proj,
>> location);
>>  			if (!status.isOK()) {
>>  				setErrorMessage(status.getMessage());
>> --
>> 2.4.11
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>


