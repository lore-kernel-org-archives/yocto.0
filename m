Return-Path: <jessica.zhang@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 109C5E0034C
	for <yocto@yoctoproject.org>; Fri,  8 Feb 2013 14:56:33 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 08 Feb 2013 14:55:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,632,1355126400"; d="scan'208";a="260014983"
Received: from orsmsx106.amr.corp.intel.com ([10.22.225.133])
	by orsmga001.jf.intel.com with ESMTP; 08 Feb 2013 14:56:23 -0800
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.209]) by
	ORSMSX106.amr.corp.intel.com ([169.254.5.201]) with mapi id
	14.01.0355.002; Fri, 8 Feb 2013 14:56:23 -0800
From: "Zhang, Jessica" <jessica.zhang@intel.com>
To: Timo Mueller <mail@timomueller.eu>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] [RFC v1 0/5][eclipse-poky] Enable target profiles for
	projects
Thread-Index: AQHOBgAvhJuixUjZsUW2PaSQmBDO1ZhwiHzg
Date: Fri, 8 Feb 2013 22:56:21 +0000
Message-ID: <C6510F6D410BB64A8C15398EDC6B847C57DE28B9@ORSMSX101.amr.corp.intel.com>
References: <cover.1360326418.git.timo.mueller@bmw-carit.de>
In-Reply-To: <cover.1360326418.git.timo.mueller@bmw-carit.de>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: Re: [RFC v1 0/5][eclipse-poky] Enable target profiles for	projects
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
X-List-Received-Date: Fri, 08 Feb 2013 22:56:33 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Timo,

Couple comments:

1.  I really like the way that the global profile and project profile are l=
inked together.  But it also introduce an out of sync issue.  Say I use a p=
rofile compiled my project with one set of toolchain and sysroot setup.  Th=
en I change the  toolchain and sysroot settings for the profile.  But unles=
s we inform/enforce the user to rebuild the project with the new profile se=
ttings.  The built out in the project directory is using one set of setting=
, but by looking at the project profile setting is another set.  So, I thin=
k we need to add a notification to user like we're doing for "remove".  Whe=
n user change a profile and if there're projects using the profile, we need=
 to prompt the user  with something like: "The profile settings have been c=
hanged and there're projects using this profile which will be impacted.  If=
 you want to pursue the changes, please rebuild those projects with the new=
 profile settings".  And in those projects, we need a sign the inform the u=
ser that the underline profile has changed, they need to rebuild to resync.=
  Make sense?

2. Seems we only allow user to choose profiles in project settings, can eli=
minate those grayed out "save as...", "remove", etc buttons?

3.  Also since the profile are really cross development setting profiles.  =
Can we change "Target profile" to "Cross development profile"?

Thanks,
Jessica

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Timo Mueller
Sent: Friday, February 08, 2013 5:28 AM
To: yocto@yoctoproject.org
Cc: Timo Mueller
Subject: [yocto] [RFC v1 0/5][eclipse-poky] Enable target profiles for proj=
ects

From: Timo Mueller <timo.mueller@bmw-carit.de>

Hi,

this patch set enables projects to make use of the target profiles proposed=
 in "[RFC v4 00/17][eclipse-poky] Storing yocto settings as target profiles=
".

Currently the target profiles are only used to determine the default settin=
gs when creating a new project. Changing the used profile on an already cre=
ated projects is not possible, also if the target profile is changed the pr=
ojects are not affected.
This patch set enables the use of target profiles in the projects. You can =
select the used global profile within the projet properties or use a projec=
t specific configuration. If a global target profile is used and its values=
 are changed in the eclipse preferences, the projects using this profile ar=
e updated accordingly.

Best regards
Timo

Timo Mueller (5):
  plugins/sdk.ide: Allow storage of yocto settings in project
    preferences
  plugins/sdk.ide: Store profile configuration on project setup
  plugins/sdk.ide: Enable project specific yocto settings
  plugins/sdk.ide: Update projects affected by changes of a target
    profile
  plugins/sdk.ide: Enable the usage of profiles in the project
    properties

 .../src/org/yocto/sdk/ide/YoctoProfileSetting.java |   3 +
 .../yocto/sdk/ide/YoctoProjectSpecificSetting.java |  89 ++++++++++++
 .../org/yocto/sdk/ide/YoctoSDKMessages.properties  |   5 +-
 .../org/yocto/sdk/ide/YoctoSDKProjectNature.java   |   1 +
 .../src/org/yocto/sdk/ide/YoctoSDKUtils.java       | 149 +++++++++++++++++=
++++
 .../sdk/ide/preferences/PreferenceConstants.java   |   2 +
 .../ide/preferences/YoctoSDKPreferencePage.java    |  91 ++++++++++++-
 .../preferences/YoctoSDKProjectPropertyPage.java   |  94 ++++++++++---
 8 files changed, 410 insertions(+), 24 deletions(-)  create mode 100644 pl=
ugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoProjectSpecificSetting.j=
ava

--
1.7.11.7

_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

