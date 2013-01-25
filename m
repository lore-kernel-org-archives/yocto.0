Return-Path: <jessica.zhang@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4E9E8E014F8
	for <yocto@yoctoproject.org>; Thu, 24 Jan 2013 16:30:02 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 24 Jan 2013 16:30:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,532,1355126400"; d="scan'208";a="281916088"
Received: from orsmsx102.amr.corp.intel.com ([10.22.225.129])
	by fmsmga002.fm.intel.com with ESMTP; 24 Jan 2013 16:30:01 -0800
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.209]) by
	ORSMSX102.amr.corp.intel.com ([169.254.1.62]) with mapi id
	14.01.0355.002; Thu, 24 Jan 2013 16:30:01 -0800
From: "Zhang, Jessica" <jessica.zhang@intel.com>
To: Timo Mueller <mail@timomueller.eu>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] [RFC 00/17][eclipse-poky] Storing yocto settings as
	target	profiles
Thread-Index: AQHN+kfjR7vrmuy+qUy9fiE6hfpxSphZKglA
Date: Fri, 25 Jan 2013 00:30:00 +0000
Message-ID: <C6510F6D410BB64A8C15398EDC6B847C57DD78B8@ORSMSX101.amr.corp.intel.com>
References: <cover.1358931353.git.timo.mueller@bmw-carit.de>
In-Reply-To: <cover.1358931353.git.timo.mueller@bmw-carit.de>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: Re: [RFC 00/17][eclipse-poky] Storing yocto settings as target	profiles
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
X-List-Received-Date: Fri, 25 Jan 2013 00:30:02 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Timo and Atanas,

Thanks for the contribution and I really think it's a great idea and nice f=
eature enhancement by allowing save user customized preference configs via =
profiles.  But I ran into couple issues when applying the patch series and =
playing with it.

1st. For patch 7/17, seems we're have following dup changes:

+       public static IPreferenceStore getProfilePreferenceStore(String pro=
fileName) {
+               int profileIdentifier =3D profileName.hashCode();
+
+               return new ScopedPreferenceStore(InstanceScope.INSTANCE,get=
UniqueIdentifier() + "." + profileIdentifier);
+       }
+
+       public static IPreferenceStore getProfilePreferenceStore(String pro=
fileName) {
+               int profileIdentifier =3D profileName.hashCode();
+
+               return new ScopedPreferenceStore(InstanceScope.INSTANCE,get=
UniqueIdentifier() + "." + profileIdentifier);
+       }
+

Also, we're missing the patch for NewYoctoCProjectTemplate.java since we're=
 still calling YoctoSDKUtils.getElemFromStore() which should be getElemFrom=
DefaultStore()?

2nd, some behavior exceptions:

When I first open the preference page, I can see the Standard profile, when=
 after I made all my selections for toolchain, sysroot, etc. then I click o=
n new and entered a profile name, e.g. pokytree. To my surprise, my changes=
 went to the default profile, instead of the new profile which I'd expected=
.  So now I have 2 profiles, standard (which contains my changes) and pokyt=
ree, which is empty. And if I leave my drop down box with pokytree and clic=
k on new button again, I'll get this pop window telling me I need to specif=
y toolchain, etc. but after I dismiss the error message box, the "create a =
new target profile" dialog will show.  IMHO this can be very confusing to p=
eople, esp. those new to the whole thing.  So I'd suggest that we change th=
e logic, instead of new button, can we change it to "Save as..." which brin=
gs up the dialog for entering the profile name.  But we use the existing lo=
gic of validate the entries before it's allowed to be saved as new profile.=
  So to that extend, the behavior is the same as "Apply" except Apply will =
apply all the changes to the selected Profile?  And I'd also suggest we mov=
e the "Save as" button on the same line with Apply if possible.

Make sense?

Thanks,
Jessica

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Timo Mueller
Sent: Thursday, January 24, 2013 7:12 AM
To: yocto@yoctoproject.org
Cc: Timo Mueller
Subject: [yocto] [RFC 00/17][eclipse-poky] Storing yocto settings as target=
 profiles

From: Timo Mueller <timo.mueller@bmw-carit.de>

Hi,

currently the yocto settings can be changed globally through eclipse's pref=
erences or locally in the project properties. But the standard configuratio=
n stored in the global preferences sometimes changes, e.g. if a new version=
 of the toolchain or the sysroot is released.
If you change the global settings to the updated toolchain or sysroot your =
old working configuration is gone. If you want to reuse this configuration =
at a later point in time you have to (remember and) re-enter everthing.
This patch set introduces the possiblity to store a configuration under a u=
nique name, a so called target profile, and be able to select the default t=
arget profile that is used for new projects.
Building upon this change the target profiles could later also be used in t=
he project settings and be able to quickly build and debug your software fo=
r different hard- and software combinations.

Best regards,
Timo

Atanas Gegov (4):
  plugins/sdk.ide: Extract labels to private members
  plugins/sdk.ide: Add method to enable and disable form
  plugins/sdk.ide: Set value of target array on input change
  plugins/sdk.ide: Create UI element for managing target profiles.

Timo Mueller (13):
  plugins/sdk.ide: Removed unused message
  plugins/sdk.ide: Changed method signature to be more consistent
  plugins/sdk.ide: Modified preferences storage to support profiles.
  plugins/sdk.ide: Set profile on selection change
  plugins/sdk.ide: Add method to allow storing the current settings
  plugins/sdk.ide: Add UI method to create a new profile
  plugins/sdk.ide: Add UI method to delete a profile
  plugins/sdk.ide: Add UI method to rename a profile
  plugins/sdk.ide: Add method to change values of the preference page
  plugins/sdk.ide: Add method to rename a profile and its preference
    store
  plugins/sdk.ide: Add method to delete a profile
  plugins/sdk.ide: Use profiles for the preference page
  plugins/sdk.ide: Added profile UI to the preference page

 .../src/org/yocto/sdk/ide/YoctoProfileElement.java | 105 +++++++++  .../sr=
c/org/yocto/sdk/ide/YoctoProfileSetting.java | 244 +++++++++++++++++++++  .=
../org/yocto/sdk/ide/YoctoSDKMessages.properties  |  19 +-
 .../src/org/yocto/sdk/ide/YoctoSDKPlugin.java      |  15 ++
 .../org/yocto/sdk/ide/YoctoSDKProjectNature.java   |  10 +-
 .../src/org/yocto/sdk/ide/YoctoSDKUtils.java       |  62 ++++--
 .../src/org/yocto/sdk/ide/YoctoUISetting.java      |  61 +++++-
 .../sdk/ide/preferences/PreferenceConstants.java   |   5 +
 .../sdk/ide/preferences/PreferenceInitializer.java |  22 +-  .../ide/prefe=
rences/ProfileNameInputValidator.java |  73 ++++++
 .../ide/preferences/YoctoSDKPreferencePage.java    |  80 ++++---
 .../preferences/YoctoSDKProjectPropertyPage.java   |   6 +-
 12 files changed, 637 insertions(+), 65 deletions(-)  create mode 100644 p=
lugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoProfileElement.java
 create mode 100644 plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoPr=
ofileSetting.java
 create mode 100644 plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/prefere=
nces/ProfileNameInputValidator.java

--
1.7.11.7

_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

