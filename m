Return-Path: <jessica.zhang@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7F7B7E01562
	for <yocto@yoctoproject.org>; Tue, 25 Jun 2013 15:38:46 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 25 Jun 2013 15:39:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,940,1363158000"; d="scan'208";a="360453570"
Received: from orsmsx102.amr.corp.intel.com ([10.22.225.129])
	by fmsmga002.fm.intel.com with ESMTP; 25 Jun 2013 15:38:21 -0700
Received: from orsmsx103.amr.corp.intel.com ([169.254.2.117]) by
	ORSMSX102.amr.corp.intel.com ([169.254.1.125]) with mapi id
	14.03.0123.003; Tue, 25 Jun 2013 15:07:16 -0700
From: "Zhang, Jessica" <jessica.zhang@intel.com>
To: Timo Mueller <mail@timomueller.eu>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] [PATCHv3 0/8][eclipse-poky] Add target profile quick
	switch
Thread-Index: AQHOcblogj/DI+EF0EGNZc5+YeqU1ZlG+Zbg
Date: Tue, 25 Jun 2013 22:07:15 +0000
Message-ID: <C6510F6D410BB64A8C15398EDC6B847C73C4F578@ORSMSX103.amr.corp.intel.com>
References: <cover.1372170704.git.timo.mueller@bmw-carit.de>
In-Reply-To: <cover.1372170704.git.timo.mueller@bmw-carit.de>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: Re: [PATCHv3 0/8][eclipse-poky] Add target profile quick switch
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
X-List-Received-Date: Tue, 25 Jun 2013 22:38:47 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Timo,

Now it look much better and also with these patch set, I don't see the mult=
iple selection of radio buttons, so I don't think we need the last patch of=
 the series which enable the debugging.

The only thing that's not clear to me is, after define the project specific=
 settings which is different from profiles. From the menu bar, the project =
menu, when I toggled between profile and project specific setting, by check=
ing into the project property window, I can see the correct setting is show=
ing.  But if I stayed inside the project property window, if I uncheck my p=
roject specific setting box, click on ok.  Then I reopen my project propert=
y window, recheck project specific setting box, I noticed that instead of r=
estoring my project specific settings, it copied the prior profile setting.=
  Which is different behavior than other cases that it always able to resto=
re the defined project specific settings once I defined it.  So is this a b=
ug or intentional behavior?

Except for this case, everything else looks great to me.

Cheers,
Jessica

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Timo Mueller
Sent: Tuesday, June 25, 2013 8:34 AM
To: yocto@yoctoproject.org
Cc: Timo Mueller
Subject: [yocto] [PATCHv3 0/8][eclipse-poky] Add target profile quick switc=
h

From: Timo Mueller <timo.mueller@bmw-carit.de>

Hi,

in conclusion to the previous discussion, we've agreed that the quick switc=
h menu will enable the user to select only configured profiles.
An unconfigured project specific profile will be shown as a greyed out opti=
on in the menu.

There also has been a bug where the projects specific settings and one prof=
ile could be marked as selected at the same time. I could only reproduce by=
 naming the target profile "project-specific" which collides with the radio=
Paramter used for the menu. This case is resolved in this patch set. I've a=
dditionally merged the two places where the state of the menu was set so ha=
ve one consistent place.

In any case, I've added one patch marked as TESTING to enable tracing in th=
e relevant components. In case the problem prevails, please enable the trac=
ing for th org.yocto.sdk.ide plugin and send me the output.

Changes in v3:
- Only grey out project specific profile if not configured.
- Fix Bug where multiple menu item could be selected at the same time

Changes in v2:
Handle error when project specific profile is not configure more gracefully=
. Instead of showing an error message the button is now greyed out.

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
08: TESTING: Enalbe tracing to pin down the multi-select problem

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
  TESTING: add tracing for radio menu

 plugins/org.yocto.sdk.ide/.options                 |   2 +
 .../OSGI-INF/l10n/bundle.properties                |   4 +
 plugins/org.yocto.sdk.ide/plugin.xml               | 100 ++++++++-
 .../sdk/ide/ProjectSpecificContributionItem.java   |  69 ++++++
 .../sdk/ide/TargetProfileContributionItem.java     | 139 ++++++++++++
 .../org/yocto/sdk/ide/YoctoSDKMessages.properties  |   4 +
 .../src/org/yocto/sdk/ide/YoctoUISetting.java      |   3 +-
 .../sdk/ide/actions/ProfileSwitchHandler.java      | 134 ++++++++++++
 .../natures/YoctoSDKAutotoolsProjectNature.java    |   3 +-
 .../ide/preferences/YoctoSDKPreferencePage.java    |  11 +-
 .../preferences/YoctoSDKProjectPropertyPage.java   | 130 ++---------
 .../sdk/ide/utils/ProjectPreferenceUtils.java      | 240 +++++++++++++++++=
++++
 .../src/org/yocto/sdk/ide/utils/YoctoSDKUtils.java | 118 ----------
 .../ide/wizard/NewYoctoProjectTemplateProcess.java |   3 +-
 14 files changed, 714 insertions(+), 246 deletions(-)  create mode 100644 =
plugins/org.yocto.sdk.ide/.options
 create mode 100644 plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/Project=
SpecificContributionItem.java
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

