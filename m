Return-Path: <jessica.zhang@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 34187E00722
	for <yocto@yoctoproject.org>; Thu, 27 Jun 2013 10:18:47 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 27 Jun 2013 10:18:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,953,1363158000"; d="scan'208";a="360597051"
Received: from orsmsx101.amr.corp.intel.com ([10.22.225.128])
	by orsmga002.jf.intel.com with ESMTP; 27 Jun 2013 10:18:25 -0700
Received: from orsmsx157.amr.corp.intel.com (10.22.240.23) by
	ORSMSX101.amr.corp.intel.com (10.22.225.128) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Thu, 27 Jun 2013 10:18:25 -0700
Received: from orsmsx103.amr.corp.intel.com ([169.254.2.117]) by
	ORSMSX157.amr.corp.intel.com ([169.254.9.23]) with mapi id
	14.03.0123.003; Thu, 27 Jun 2013 10:18:25 -0700
From: "Zhang, Jessica" <jessica.zhang@intel.com>
To: Timo Mueller <mail@timomueller.eu>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] [PATCHv4 0/7][eclipse-poky] Add target profile quick
	switch
Thread-Index: AQHOcw/FVS+iw0cYxEquAZFbUeW4eZlJznJQ
Date: Thu, 27 Jun 2013 17:18:24 +0000
Message-ID: <C6510F6D410BB64A8C15398EDC6B847C73C4FFA9@ORSMSX103.amr.corp.intel.com>
References: <cover.1372314464.git.timo.mueller@bmw-carit.de>
In-Reply-To: <cover.1372314464.git.timo.mueller@bmw-carit.de>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: Re: [PATCHv4 0/7][eclipse-poky] Add target profile quick switch
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
X-List-Received-Date: Thu, 27 Jun 2013 17:18:48 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Merged to eclipse-poky master.

Thanks,
Jessica

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Timo Mueller
Sent: Thursday, June 27, 2013 1:24 AM
To: yocto@yoctoproject.org
Cc: Timo Mueller
Subject: [yocto] [PATCHv4 0/7][eclipse-poky] Add target profile quick switc=
h

From: Timo Mueller <timo.mueller@bmw-carit.de>

Hi,

Changes in v4:
- Rebase of patch series

Changes in v3:
- Only grey out project specific profile if not configured.
- Fix Bug where multiple menu item could be selected at the same time

Changes in v2:
Handle error when project specific profile is not configure more gracefully=
. Instead of showing an error message the button is now greyed out.

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

 .../OSGI-INF/l10n/bundle.properties                |   4 +
 plugins/org.yocto.sdk.ide/plugin.xml               | 100 ++++++++-
 .../sdk/ide/ProjectSpecificContributionItem.java   |  69 ++++++
 .../sdk/ide/TargetProfileContributionItem.java     | 126 +++++++++++
 .../org/yocto/sdk/ide/YoctoSDKMessages.properties  |   4 +
 .../src/org/yocto/sdk/ide/YoctoUISetting.java      |   3 +-
 .../sdk/ide/actions/ProfileSwitchHandler.java      | 134 ++++++++++++
 .../natures/YoctoSDKAutotoolsProjectNature.java    |   3 +-
 .../ide/preferences/YoctoSDKPreferencePage.java    |  11 +-
 .../preferences/YoctoSDKProjectPropertyPage.java   | 128 +----------
 .../sdk/ide/utils/ProjectPreferenceUtils.java      | 240 +++++++++++++++++=
++++
 .../src/org/yocto/sdk/ide/utils/YoctoSDKUtils.java | 118 ----------
 .../ide/wizard/NewYoctoProjectTemplateProcess.java |   3 +-
 13 files changed, 698 insertions(+), 245 deletions(-)  create mode 100644 =
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

