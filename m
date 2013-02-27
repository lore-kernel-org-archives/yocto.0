Return-Path: <jessica.zhang@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7229CE006F6
	for <yocto@yoctoproject.org>; Wed, 27 Feb 2013 14:04:30 -0800 (PST)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 27 Feb 2013 14:04:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,750,1355126400"; d="scan'208";a="207053759"
Received: from orsmsx105.amr.corp.intel.com ([10.22.225.132])
	by AZSMGA002.ch.intel.com with ESMTP; 27 Feb 2013 14:04:29 -0800
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.110]) by
	ORSMSX105.amr.corp.intel.com ([169.254.4.65]) with mapi id
	14.01.0355.002; Wed, 27 Feb 2013 14:04:28 -0800
From: "Zhang, Jessica" <jessica.zhang@intel.com>
To: Timo Mueller <mail@timomueller.eu>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] [PATCH 0/5][eclipse-poky] Refactor handling of SDK
	check	errors
Thread-Index: AQHOFPgFOLC1FHR9VEayblOUksnMHpiOPzpA
Date: Wed, 27 Feb 2013 22:04:28 +0000
Message-ID: <C6510F6D410BB64A8C15398EDC6B847C6F3FB213@ORSMSX101.amr.corp.intel.com>
References: <cover.1361954280.git.timo.mueller@bmw-carit.de>
In-Reply-To: <cover.1361954280.git.timo.mueller@bmw-carit.de>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: Re: [PATCH 0/5][eclipse-poky] Refactor handling of SDK check	errors
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
X-List-Received-Date: Wed, 27 Feb 2013 22:04:30 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Timo,

Thanks for initiating the cleanup in this area that I agree definitely need=
 some work.  There're couple issues I'm seeing with your patch set that pro=
bably need some refinements:

1. After seeing the error message, if I go into the field correct the error=
, I have to explicit click on "Apply" to make it revalidate, probably we sh=
ould track the fields change and do automatic re-validation

2. For a scenario that I have 2 toolchains (for different arch, e.g. arm an=
d x86) installed under same directory, which means there're 2 environment s=
etup scripts under the same directory.  In this case, the Target Architectu=
re drop down list will contain 2 entries for the arches.  In this case, I'm=
 getting an error message for missing environment script file which is not =
true.  By looking at the code, the logic basically checking the elem's targ=
et architecture setting, if there's none, report missing environment script=
.  I think for this case, we do need to check the size of the target arch o=
ption list to see whether it's empty or not.

3. For the case of Poky.Env.Script.Nonexist, there's Poky.Env.ScriptNoexist=
.Advise which is more meaningful to user what to do if running into the err=
or.  But I don't see that Advice is posted and by looking at code, it seems=
 it's not being used as well?

Thanks,
Jessica

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Timo Mueller
Sent: Wednesday, February 27, 2013 6:37 AM
To: yocto@yoctoproject.org
Cc: Timo Mueller
Subject: [yocto] [PATCH 0/5][eclipse-poky] Refactor handling of SDK check e=
rrors

From: Timo Mueller <timo.mueller@bmw-carit.de>

Hi,

I tried to display the messages resulting from validating the YoctoUISettin=
gs in the message area of the properties/preference pages instead of showin=
g a dialog. This led to some refactoring of the validation functionality an=
d also the messages.

If for example the user entered a SDK toolchain directory that doesn't exis=
t in the global preferences a dialog will show up showing the error and tel=
ling him how he can do "IDE-wide settings". As he is currently trying to do=
 "IDE-wide settings" this advice is not really necessary and the dialog can=
 be really annoying.

I split up the messages into a one line error message and an advice. This m=
essage can be shown in the page's message area instead of opening a dialog =
with every configuration error. The advice can still be used when we want t=
o show a dialog to help the user, e.g. when creating a new project.

On a side note I reactivated the YoctoSDKChecker class and moved all the va=
lidation code from the utils, getting rid of some duplicated and inconsiste=
nt code.

Best regards,
Timo

PS: This patch set is based on "plugins/sdk.ide: Remove profile edit button=
s from property page"

Timo Mueller (5):
  plugins/sdk.ide: Move SDK check functionality to separate class
  plugins/sdk.ide: Refactored the construction of mesages with
    SDKCheckResults
  plugins/sdk.ide: Show SDK check errors in message area
  plugins/sdk.ide: Removed validation from setCurrentInput
  plugins/sdk.ide: Use standard error dialog to show SDK check errors

 .../src/org/yocto/sdk/ide/YoctoSDKChecker.java     | 372 +++++++++++------=
----
 .../org/yocto/sdk/ide/YoctoSDKMessages.properties  |  42 ++-
 .../org/yocto/sdk/ide/YoctoSDKProjectNature.java   |   9 +-
 .../src/org/yocto/sdk/ide/YoctoSDKUtils.java       | 255 --------------
 .../src/org/yocto/sdk/ide/YoctoUISetting.java      |  47 +--
 .../ide/preferences/YoctoSDKPreferencePage.java    |  84 +++--
 .../preferences/YoctoSDKProjectPropertyPage.java   |  87 +++--
 .../sdk/ide/wizard/NewYoctoCProjectTemplate.java   |  18 +-
 8 files changed, 344 insertions(+), 570 deletions(-)

--
1.7.11.7

_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

