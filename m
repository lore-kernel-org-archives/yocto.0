Return-Path: <jessica.zhang@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B31A8E00294
	for <yocto@yoctoproject.org>; Thu, 31 Jan 2013 11:28:35 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 31 Jan 2013 11:28:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,579,1355126400"; d="scan'208";a="279201973"
Received: from orsmsx104.amr.corp.intel.com ([10.22.225.131])
	by orsmga002.jf.intel.com with ESMTP; 31 Jan 2013 11:28:28 -0800
Received: from orsmsx153.amr.corp.intel.com (10.22.226.247) by
	ORSMSX104.amr.corp.intel.com (10.22.225.131) with Microsoft SMTP Server
	(TLS) id 14.1.355.2; Thu, 31 Jan 2013 11:28:24 -0800
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.209]) by
	ORSMSX153.amr.corp.intel.com ([169.254.13.17]) with mapi id
	14.01.0355.002; Thu, 31 Jan 2013 11:28:24 -0800
From: "Zhang, Jessica" <jessica.zhang@intel.com>
To: Timo Mueller <mail@timomueller.eu>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] [RFC v2 00/18][eclipse-poky] Storing yocto settings as
	target profiles
Thread-Index: AQHN/vGwbwjkhEnFuUm3vvfeAgcG3Jhj0yHQ
Date: Thu, 31 Jan 2013 19:28:23 +0000
Message-ID: <C6510F6D410BB64A8C15398EDC6B847C57DDCD3B@ORSMSX101.amr.corp.intel.com>
References: <cover.1359468548.git.timo.mueller@bmw-carit.de>
In-Reply-To: <cover.1359468548.git.timo.mueller@bmw-carit.de>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: Re: [RFC v2 00/18][eclipse-poky] Storing yocto settings as	target profiles
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
X-List-Received-Date: Thu, 31 Jan 2013 19:28:35 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Timo,

I'm having a hard time figuring out the sequence of this patch series.  You=
 have 01/18-09/18, then 10/17 is obsolete, then you have things like 12/18 =
and 12/17 and some have XX/18 and some have XX/17.  Can you do some cleanup=
 and resend?

Thanks,
Jessica

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Timo Mueller
Sent: Wednesday, January 30, 2013 5:56 AM
To: yocto@yoctoproject.org
Cc: Timo Mueller
Subject: [yocto] [RFC v2 00/18][eclipse-poky] Storing yocto settings as tar=
get profiles

From: Timo Mueller <timo.mueller@bmw-carit.de>

Hi,

thanks for the feedback, I did some changes to the patch series accordingly=
.

First of all I've fixed the issues with the patches (duplicate method, miss=
ing fix for NewYoctoCProjectTemplate.java).

I also changed the functionality of the "new" button according to Jessica's=
 feedback. The logic is changed to a "Save as ..."
approach. If the button is clicked the current values of the form are check=
ed. If these are valid, the user can enter a name to store them as a new pr=
ofile.

The last patch moves the "Save as ..." button to the bottom of the preferen=
ce page alongside with the "perform defaults" and the "apply"
button. I created this patch as a proof of concept because I thought it wou=
ld be a good idea to move it.
I used the contributeButtons hook of the preference page to achieve this, b=
ut this only allows adding the "Save as ..." button left to the "perform de=
faults" button. So the order of the buttons is a bit confusing.
I further checked several other preference pages of eclipse and it seems li=
ke none of them is using this hook to add new buttons. Instead all have a n=
ew button next to the comboboxes (e.g. Formatter for CDT and JDT).
So I would plead against moving it to the bottom to have a more consistent =
and less confusing ui.

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

Timo Mueller (14):
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
  plugins/sdk.ide: Moved save as button to bottom of preference page

 .../src/org/yocto/sdk/ide/YoctoProfileElement.java | 104 ++++++++++  .../s=
rc/org/yocto/sdk/ide/YoctoProfileSetting.java | 211 +++++++++++++++++++++  =
.../org/yocto/sdk/ide/YoctoSDKMessages.properties  |  19 +-
 .../src/org/yocto/sdk/ide/YoctoSDKPlugin.java      |   9 +
 .../org/yocto/sdk/ide/YoctoSDKProjectNature.java   |  10 +-
 .../src/org/yocto/sdk/ide/YoctoSDKUtils.java       |  62 ++++--
 .../src/org/yocto/sdk/ide/YoctoUISetting.java      |  60 +++++-
 .../sdk/ide/preferences/PreferenceConstants.java   |   5 +
 .../sdk/ide/preferences/PreferenceInitializer.java |  22 ++-  .../ide/pref=
erences/ProfileNameInputValidator.java |  63 ++++++
 .../ide/preferences/YoctoSDKPreferencePage.java    | 133 ++++++++++---
 .../preferences/YoctoSDKProjectPropertyPage.java   |   6 +-
 .../sdk/ide/wizard/NewYoctoCProjectTemplate.java   |   7 +-
 13 files changed, 646 insertions(+), 65 deletions(-)  create mode 100644 p=
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

