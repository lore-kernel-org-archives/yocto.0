Return-Path: <jessica.zhang@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C6247E013B8
	for <yocto@yoctoproject.org>; Mon, 17 Jun 2013 17:20:49 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 17 Jun 2013 17:18:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,884,1363158000"; d="scan'208";a="355188005"
Received: from orsmsx103.amr.corp.intel.com ([10.22.225.130])
	by orsmga002.jf.intel.com with ESMTP; 17 Jun 2013 17:20:41 -0700
Received: from orsmsx157.amr.corp.intel.com (10.22.240.23) by
	ORSMSX103.amr.corp.intel.com (10.22.225.130) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Mon, 17 Jun 2013 16:57:20 -0700
Received: from orsmsx103.amr.corp.intel.com ([169.254.2.83]) by
	ORSMSX157.amr.corp.intel.com ([169.254.9.23]) with mapi id
	14.03.0123.003; Mon, 17 Jun 2013 16:54:29 -0700
From: "Zhang, Jessica" <jessica.zhang@intel.com>
To: =?iso-8859-1?Q?Timo_M=FCller?= <mail@timomueller.eu>
Thread-Topic: [yocto] [PATCH 0/7][eclipse-poky] Add target profile quick switch
Thread-Index: AQHOaDpGEtburWAjf0S5gTVmY0IYtpk1m/SQgASNFoCAAHGkcA==
Date: Mon, 17 Jun 2013 23:54:28 +0000
Message-ID: <C6510F6D410BB64A8C15398EDC6B847C73C45480@ORSMSX103.amr.corp.intel.com>
References: <cover.1371123125.git.timo.mueller@bmw-carit.de>
	<C6510F6D410BB64A8C15398EDC6B847C73C3B28D@ORSMSX103.amr.corp.intel.com>
	<51BEDF35.9000508@timomueller.eu>
In-Reply-To: <51BEDF35.9000508@timomueller.eu>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Timo Mueller <timo.mueller@bmw-carit.de>
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
X-List-Received-Date: Tue, 18 Jun 2013 00:20:52 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi Timo,

I'd opt for if user is not check the "Project Specific settings" which is a=
 valid case that he/she just chooses one of defined profiles. Just grey out=
 the option in the drop down list instead of totally hiding it.  This way, =
it'll show but we don't enforce user to set it and also avoid the situation=
 that user click on it by accident and got an error as what happened to me.=
  Make sense?

Thanks,
Jessica

-----Original Message-----
From: Timo M=FCller [mailto:mail@timomueller.eu]
Sent: Monday, June 17, 2013 3:05 AM
To: Zhang, Jessica
Cc: yocto@yoctoproject.org; Timo Mueller
Subject: Re: [yocto] [PATCH 0/7][eclipse-poky] Add target profile quick swi=
tch

Hi Jessica,

Zhang, Jessica wrote, On 14.06.2013 21:42:
> Hi Timo,
>
> First thanks for continuous making improvement.  Most of the patches
> looked fine, but when I tested the functionality, I noticed that in
> either cases, your list contains: Project Specific and my customized
> profiles e.g. Standard Profile and profile_static.  I can toggle my
> customized profiles with no issue.  But if I click on the radio button
> for "project specific", I'm getting:
>
> The project specific target profile is not defined for the project
> "YHWC". You can define it in the projects property page
>
> Reason: Specified Toolchain Root Location is empty.
>
> So I'm a little lost here,do we really need this project specific
> option?

The "project specific" option correlates to the checkbox in the project pro=
perties. The error you get is thrown if you haven't configured the project =
specific profile in you project. I think in general this is needed as other=
wise the project specific would be kind of a second-class profile

However, I think we can handle this error case more gracefully. I have two =
possible ideas in mind, both with pros and cons:

1) disable/hide the project specific option, if it is not defined in the pr=
oject
* Pro: Only valid options are shown and accessible.
* Con: Might be confusing if the option is only available with some project=
s. Especially if you haven't heard of the project specific settings yet.

2) open the project properties to allow the user to do the configuration
* Pro: Forwards the user to the configuration page, allowing him to quickly=
 create the configuration.
* Con: Opens a new window. As there's no hint about the state of the projec=
t specific configuration. The user might enter the configuration page unint=
ended.

I'm slightly in favour of option two. Maybe the cons can be worked around b=
y changing the label according to the state of the project specific configu=
ration. E.g. "Configure project specific" and "project specific". I'll rewo=
rk the patches to see how this feels like.

What do you think about this? Something I miss?

 > The other nit picking is, you have "projectSpeficic.label",
> is that a typo?

Yes, that's a typo. I will fix it along with the reworks mentioned above.

>
> Thanks, Jessica
>
> -----Original Message----- From: yocto-bounces@yoctoproject.org
> [mailto:yocto-bounces@yoctoproject.org] On Behalf Of Timo Mueller
> Sent: Thursday, June 13, 2013 6:30 AM To: yocto@yoctoproject.org Cc:
> Timo Mueller Subject: [yocto] [PATCH 0/7][eclipse-poky] Add target
> profile quick switch
>
> From: Timo Mueller <timo.mueller@bmw-carit.de>
>
> Hi,
>
> if a user wants to change the used target profile of a project he
> currently has to open the project preferences. This can be tedious if
> he has to switch the profile often.
>
> This is a small addition which allows the user to quickly switch the
> used target profile of a project. Instead of having to open the
> project preferences the user can select the project in the navigator
> and then choose the desired target profile from a drop-down menu in
> the toolbar or from the project menu.
>
> 01: Small i18n fix 02..04: Refactoring the project specific utils
> 05..06: Introduce the target profile toolbar switch 07: Adds the
> target profile switch to the project menu
>
> Best regards, Timo
>
> Timo Mueller (7): plugins/sdk.ide: Use an internationalized dialog
> title plugins/sdk.ide: Extract project specific util methods
> plugins/sdk.ide: Move project specific util methods plugins/sdk.ide:
> Remove project context from method names plugins/sdk.ide: Add command
> to switch the target profile plugins/sdk.ide: Add profile switch menu
> to the toolbar plugins/sdk.ide: Add profile switch menu to the project
> menu
>
> .../OSGI-INF/l10n/bundle.properties                |   5 +
> plugins/org.yocto.sdk.ide/plugin.xml               | 105 +++++++++
> .../sdk/ide/TargetProfileContributionItem.java     | 121 +++++++++++
> .../org/yocto/sdk/ide/YoctoSDKMessages.properties  |   3 +
> .../src/org/yocto/sdk/ide/YoctoUISetting.java      |   3 +-
> .../sdk/ide/actions/ProfileSwitchHandler.java      | 154
> +++++++++++++ .../natures/YoctoSDKAutotoolsProjectNature.java    |
> 3 +- .../ide/preferences/YoctoSDKPreferencePage.java    |  11 +-
> .../preferences/YoctoSDKProjectPropertyPage.java   | 130 ++---------
> .../sdk/ide/utils/ProjectPreferenceUtils.java      | 240
> +++++++++++++++++++++
> .../src/org/yocto/sdk/ide/utils/YoctoSDKUtils.java | 118 ----------
> .../ide/wizard/NewYoctoProjectTemplateProcess.java |   3 +- 12 files
> changed, 651 insertions(+), 245 deletions(-)  create mode 100644
> plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/TargetProfileContribut
> ionItem.java
>
>
create mode 100644
plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/actions/ProfileSwitchHandle=
r.java
> create mode 100644
> plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/utils/ProjectPreferenc
> eUtils.java
>
>  -- 1.8.1.4
>
> _______________________________________________ yocto mailing list
> yocto@yoctoproject.org https://lists.yoctoproject.org/listinfo/yocto
>

Best regards,
Timo

