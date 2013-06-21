Return-Path: <jessica.zhang@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7146AE00348
	for <yocto@yoctoproject.org>; Fri, 21 Jun 2013 14:47:42 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 21 Jun 2013 14:47:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,915,1363158000"; d="scan'208";a="320771919"
Received: from orsmsx105.amr.corp.intel.com ([10.22.225.132])
	by azsmga001.ch.intel.com with ESMTP; 21 Jun 2013 14:47:41 -0700
Received: from orsmsx110.amr.corp.intel.com (10.22.240.8) by
	ORSMSX105.amr.corp.intel.com (10.22.225.132) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Fri, 21 Jun 2013 14:47:27 -0700
Received: from orsmsx103.amr.corp.intel.com ([169.254.2.83]) by
	ORSMSX110.amr.corp.intel.com ([169.254.3.195]) with mapi id
	14.03.0123.003; Fri, 21 Jun 2013 14:47:27 -0700
From: "Zhang, Jessica" <jessica.zhang@intel.com>
To: Timo Mueller <mail@timomueller.eu>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] [PATCHv2 0/8][eclipse-poky] Add target profile quick
	switch
Thread-Index: AQHObn045NStuavmK0eqLerZZ6A7nJlArMPw
Date: Fri, 21 Jun 2013 21:47:26 +0000
Message-ID: <C6510F6D410BB64A8C15398EDC6B847C73C46EEE@ORSMSX103.amr.corp.intel.com>
References: <cover.1371818609.git.timo.mueller@bmw-carit.de>
In-Reply-To: <cover.1371818609.git.timo.mueller@bmw-carit.de>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: Re: [PATCHv2 0/8][eclipse-poky] Add target profile quick switch
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
X-List-Received-Date: Fri, 21 Jun 2013 21:47:43 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Timo,

So what's the purpose of "Project Specific Settings", my understanding is i=
t's something that only local to project instead of global name space, e.g.=
 profile?  OK, I've played a little bit of toggling between profiles, and p=
roject specific setting and notice the following behaviors that can be conf=
using:

1. As your preference that user can specify "project specific settings".  I=
've noticed for this case, if I haven't entered any project specific settin=
gs via the preference wizard, it'll always copy the profile settings prior =
to its selection, then in this case I don't think it makes much sense since=
 we already have the profiles to cover all the settings

2.  OK, now let's move to the case of that I do have explicit setup a proje=
ct specific settings in the project property view apply it and exit the win=
dow.  After that, in the drop down list, when I toggle between the options,=
 e.g. I have two profiles besides the project specific settings, then every=
 time after I made the selection and check in the project properties view, =
the settings matches my selection.  So this is good and consistent behavior=
.

3. If  inside the project properties window, I uncheck the "Use project spe=
cific settings" box, and select a profile then apply the changes close the =
window.  Now in the drop down list I will see both the "project specific se=
tting" and the selected profile are selected. Then next time when I go back=
, and re-check "Use project specific settings" box, my project specific set=
ting will be gone, instead the settings will show as my previous profile se=
ttings.

Overall, I think we still need to play a little bit more of different setti=
ng selections via different approaches, some of the inconsistent behavior c=
an get user lost.

Thanks,
Jessica
-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Timo Mueller
Sent: Friday, June 21, 2013 5:45 AM
To: yocto@yoctoproject.org
Cc: Timo Mueller
Subject: [yocto] [PATCHv2 0/8][eclipse-poky] Add target profile quick switc=
h

From: Timo Mueller <timo.mueller@bmw-carit.de>

Changes in v2:
Handle error when project specific profile is not configured more gracefull=
y. Instead of showing an error message the button is now greyed out.

Patches 01..07 contain the implementation with the greyed out menu button.

After playing around with the two options discussed in the first patch seri=
es, I started to prefer inserting a different button in the menu allowing t=
he user to quickly navigate to the project preferences instead of just grey=
ing it out. I've added this in the last patch of the series, so you can com=
pare yourself.

From original cover letter
<snip>
if a user wants to change the used target profile of a project he currently=
 has to open the project preferences. This can be tedious if he has to swit=
ch the profile often.

This is a small addition which allows the user to quickly switch the used t=
arget profile of a project. Instead of having to open the project preferenc=
es the user can select the project in the navigator and then choose the des=
ired target profile from a drop-down menu in the toolbar or from the projec=
t menu.
</snip>

01: Small i18n fix
02..04: Refactoring the project specific utils
05..06: Introduce the target profile toolbar switch
07: Adds the target profile switch to the project menu
08: Experimental: Add button to open project preferences

Best regards,
Timo

Timo Mueller (8):
  plugins/sdk.ide: Use an internationalized dialog title
  plugins/sdk.ide: Extract project specific util methods
  plugins/sdk.ide: Move project specific util methods
  plugins/sdk.ide: Remove project context from method names
  plugins/sdk.ide: Add command to switch the target profile
  plugins/sdk.ide: Add profile switch menu to the toolbar
  plugins/sdk.ide: Add profile switch menu to the project menu
  plugins/sdk.ide: Add project configuration button

 .../OSGI-INF/l10n/bundle.properties                |   4 +
 plugins/org.yocto.sdk.ide/plugin.xml               |  96 ++++++++-
 .../sdk/ide/ProjectSpecificContributionItem.java   |  91 ++++++++
 .../sdk/ide/TargetProfileContributionItem.java     | 125 +++++++++++
 .../org/yocto/sdk/ide/YoctoSDKMessages.properties  |   5 +
 .../src/org/yocto/sdk/ide/YoctoUISetting.java      |   3 +-
 .../sdk/ide/actions/ProfileSwitchHandler.java      | 134 ++++++++++++
 .../natures/YoctoSDKAutotoolsProjectNature.java    |   3 +-
 .../ide/preferences/YoctoSDKPreferencePage.java    |  11 +-
 .../preferences/YoctoSDKProjectPropertyPage.java   | 130 ++---------
 .../sdk/ide/utils/ProjectPreferenceUtils.java      | 240 +++++++++++++++++=
++++
 .../src/org/yocto/sdk/ide/utils/YoctoSDKUtils.java | 118 ----------
 .../ide/wizard/NewYoctoProjectTemplateProcess.java |   3 +-
 13 files changed, 717 insertions(+), 246 deletions(-)  create mode 100644 =
plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/ProjectSpecificContribution=
Item.java
 create mode 100644 plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/TargetP=
rofileContributionItem.java
 create mode 100644 plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/actions=
/ProfileSwitchHandler.java
 create mode 100644 plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/utils/P=
rojectPreferenceUtils.java

--
1.8.1.4

_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

