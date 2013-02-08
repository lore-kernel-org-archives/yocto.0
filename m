Return-Path: <jessica.zhang@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 49513E00724
	for <yocto@yoctoproject.org>; Fri,  8 Feb 2013 13:30:24 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 08 Feb 2013 13:29:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,632,1355126400"; d="scan'208";a="282972532"
Received: from orsmsx103.amr.corp.intel.com ([10.22.225.130])
	by orsmga002.jf.intel.com with ESMTP; 08 Feb 2013 13:30:23 -0800
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.209]) by
	ORSMSX103.amr.corp.intel.com ([169.254.2.214]) with mapi id
	14.01.0355.002; Fri, 8 Feb 2013 13:30:20 -0800
From: "Zhang, Jessica" <jessica.zhang@intel.com>
To: Timo Mueller <mail@timomueller.eu>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] [RFC v4 00/17][eclipse-poky] Storing yocto settings as
	target profiles
Thread-Index: AQHOBf/4R7dBp5Pqn0uEiNa69bmcephweskA
Date: Fri, 8 Feb 2013 21:30:19 +0000
Message-ID: <C6510F6D410BB64A8C15398EDC6B847C57DE27FF@ORSMSX101.amr.corp.intel.com>
References: <cover.1360326346.git.timo.mueller@bmw-carit.de>
In-Reply-To: <cover.1360326346.git.timo.mueller@bmw-carit.de>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: Re: [RFC v4 00/17][eclipse-poky] Storing yocto settings as	target profiles
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
X-List-Received-Date: Fri, 08 Feb 2013 21:30:24 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Everything looks good and merged to eclipse-poky master. Thanks for the con=
tribution.

Cheers,
Jessica

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Timo Mueller
Sent: Friday, February 08, 2013 5:26 AM
To: yocto@yoctoproject.org
Cc: Timo Mueller
Subject: [yocto] [RFC v4 00/17][eclipse-poky] Storing yocto settings as tar=
get profiles

From: Timo Mueller <timo.mueller@bmw-carit.de>

Hi,

I removed the last patch that was moving the "Save as ..." button to the bo=
ttom. So now it is located beneath the dropdown box. I also changed the mes=
sage in the profile deletion dialog to only ask if the user really wants to=
 delete the profile.

From RFC v3:
<snip>
First of all I've fixed the issues with the patches (duplicate method, miss=
ing fix for NewYoctoCProjectTemplate.java).

I also changed the functionality of the "new" button according to Jessica's=
 feedback. The logic is changed to a "Save as ..."
approach. If the button is clicked the current values of the form are check=
ed. If these are valid, the user can enter a name to store them as a new pr=
ofile.
</snip>

From the original cover letter:
<snip>
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
</snip>

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

 .../src/org/yocto/sdk/ide/YoctoProfileElement.java | 104 ++++++++++  .../s=
rc/org/yocto/sdk/ide/YoctoProfileSetting.java | 229 +++++++++++++++++++++  =
.../org/yocto/sdk/ide/YoctoSDKMessages.properties  |  19 +-
 .../src/org/yocto/sdk/ide/YoctoSDKPlugin.java      |   9 +
 .../org/yocto/sdk/ide/YoctoSDKProjectNature.java   |  10 +-
 .../src/org/yocto/sdk/ide/YoctoSDKUtils.java       |  62 ++++--
 .../src/org/yocto/sdk/ide/YoctoUISetting.java      |  60 +++++-
 .../sdk/ide/preferences/PreferenceConstants.java   |   5 +
 .../sdk/ide/preferences/PreferenceInitializer.java |  22 +-  .../ide/prefe=
rences/ProfileNameInputValidator.java |  63 ++++++
 .../ide/preferences/YoctoSDKPreferencePage.java    | 112 +++++++---
 .../preferences/YoctoSDKProjectPropertyPage.java   |   6 +-
 .../sdk/ide/wizard/NewYoctoCProjectTemplate.java   |   7 +-
 13 files changed, 643 insertions(+), 65 deletions(-)  create mode 100644 p=
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

