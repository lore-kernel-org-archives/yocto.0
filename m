Return-Path: <jessica.zhang@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 07833E013A8
	for <yocto@yoctoproject.org>; Fri, 14 Jun 2013 12:42:28 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 14 Jun 2013 12:42:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,868,1363158000"; d="scan'208";a="255166640"
Received: from orsmsx101.amr.corp.intel.com ([10.22.225.128])
	by AZSMGA002.ch.intel.com with ESMTP; 14 Jun 2013 12:42:27 -0700
Received: from orsmsx151.amr.corp.intel.com (10.22.226.38) by
	ORSMSX101.amr.corp.intel.com (10.22.225.128) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Fri, 14 Jun 2013 12:42:26 -0700
Received: from orsmsx103.amr.corp.intel.com ([169.254.2.22]) by
	ORSMSX151.amr.corp.intel.com ([169.254.7.69]) with mapi id
	14.03.0123.003; Fri, 14 Jun 2013 12:42:26 -0700
From: "Zhang, Jessica" <jessica.zhang@intel.com>
To: Timo Mueller <mail@timomueller.eu>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] [PATCH 0/7][eclipse-poky] Add target profile quick switch
Thread-Index: AQHOaDpGEtburWAjf0S5gTVmY0IYtpk1m/SQ
Date: Fri, 14 Jun 2013 19:42:26 +0000
Message-ID: <C6510F6D410BB64A8C15398EDC6B847C73C3B28D@ORSMSX103.amr.corp.intel.com>
References: <cover.1371123125.git.timo.mueller@bmw-carit.de>
In-Reply-To: <cover.1371123125.git.timo.mueller@bmw-carit.de>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: Re: [PATCH 0/7][eclipse-poky] Add target profile quick switch
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
X-List-Received-Date: Fri, 14 Jun 2013 19:42:31 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Timo,

First thanks for continuous making improvement.  Most of the patches looked=
 fine, but when I tested the functionality, I noticed that in either cases,=
 your list contains:
Project Specific and my customized profiles e.g. Standard Profile and profi=
le_static.  I can toggle my customized profiles with no issue.  But if I cl=
ick on the radio button for "project specific", I'm getting:

The project specific target profile is not defined for the project "YHWC".
You can define it in the projects property page

Reason:
Specified Toolchain Root Location is empty.

So I'm a little lost here,do we really need this project specific option? T=
he other nit picking is, you have "projectSpeficic.label", is that a typo?

Thanks,
Jessica

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Timo Mueller
Sent: Thursday, June 13, 2013 6:30 AM
To: yocto@yoctoproject.org
Cc: Timo Mueller
Subject: [yocto] [PATCH 0/7][eclipse-poky] Add target profile quick switch

From: Timo Mueller <timo.mueller@bmw-carit.de>

Hi,

if a user wants to change the used target profile of a project he currently=
 has to open the project preferences. This can be tedious if he has to swit=
ch the profile often.

This is a small addition which allows the user to quickly switch the used t=
arget profile of a project. Instead of having to open the project preferenc=
es the user can select the project in the navigator and then choose the des=
ired target profile from a drop-down menu in the toolbar or from the projec=
t menu.

01: Small i18n fix
02..04: Refactoring the project specific utils
05..06: Introduce the target profile toolbar switch
07: Adds the target profile switch to the project menu

Best regards,
Timo

Timo Mueller (7):
  plugins/sdk.ide: Use an internationalized dialog title
  plugins/sdk.ide: Extract project specific util methods
  plugins/sdk.ide: Move project specific util methods
  plugins/sdk.ide: Remove project context from method names
  plugins/sdk.ide: Add command to switch the target profile
  plugins/sdk.ide: Add profile switch menu to the toolbar
  plugins/sdk.ide: Add profile switch menu to the project menu

 .../OSGI-INF/l10n/bundle.properties                |   5 +
 plugins/org.yocto.sdk.ide/plugin.xml               | 105 +++++++++
 .../sdk/ide/TargetProfileContributionItem.java     | 121 +++++++++++
 .../org/yocto/sdk/ide/YoctoSDKMessages.properties  |   3 +
 .../src/org/yocto/sdk/ide/YoctoUISetting.java      |   3 +-
 .../sdk/ide/actions/ProfileSwitchHandler.java      | 154 +++++++++++++
 .../natures/YoctoSDKAutotoolsProjectNature.java    |   3 +-
 .../ide/preferences/YoctoSDKPreferencePage.java    |  11 +-
 .../preferences/YoctoSDKProjectPropertyPage.java   | 130 ++---------
 .../sdk/ide/utils/ProjectPreferenceUtils.java      | 240 +++++++++++++++++=
++++
 .../src/org/yocto/sdk/ide/utils/YoctoSDKUtils.java | 118 ----------
 .../ide/wizard/NewYoctoProjectTemplateProcess.java |   3 +-
 12 files changed, 651 insertions(+), 245 deletions(-)  create mode 100644 =
plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/TargetProfileContributionIt=
em.java
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

