Return-Path: <jessica.zhang@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0E828E013B0
	for <yocto@yoctoproject.org>; Wed, 26 Jun 2013 09:40:39 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 26 Jun 2013 09:38:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,945,1363158000"; d="scan'208";a="359990625"
Received: from orsmsx104.amr.corp.intel.com ([10.22.225.131])
	by orsmga002.jf.intel.com with ESMTP; 26 Jun 2013 09:40:38 -0700
Received: from orsmsx157.amr.corp.intel.com (10.22.240.23) by
	ORSMSX104.amr.corp.intel.com (10.22.225.131) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Wed, 26 Jun 2013 09:40:38 -0700
Received: from orsmsx103.amr.corp.intel.com ([169.254.2.117]) by
	ORSMSX157.amr.corp.intel.com ([169.254.9.23]) with mapi id
	14.03.0123.003; Wed, 26 Jun 2013 09:40:38 -0700
From: "Zhang, Jessica" <jessica.zhang@intel.com>
To: =?iso-8859-1?Q?Timo_M=FCller?= <mail@timomueller.eu>
Thread-Topic: [yocto] [PATCHv3 0/8][eclipse-poky] Add target profile quick
	switch
Thread-Index: AQHOcblogj/DI+EF0EGNZc5+YeqU1ZlG+ZbggAEOnICAACvpwA==
Date: Wed, 26 Jun 2013 16:40:37 +0000
Message-ID: <C6510F6D410BB64A8C15398EDC6B847C73C4F965@ORSMSX103.amr.corp.intel.com>
References: <cover.1372170704.git.timo.mueller@bmw-carit.de>
	<C6510F6D410BB64A8C15398EDC6B847C73C4F578@ORSMSX103.amr.corp.intel.com>
	<51CA9211.7010807@timomueller.eu>
In-Reply-To: <51CA9211.7010807@timomueller.eu>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Timo Mueller <timo.mueller@bmw-carit.de>
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
X-List-Received-Date: Wed, 26 Jun 2013 16:40:40 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi Timo,

That patch is merged to eclipse-poky master.  Please adjust your patch seri=
es and resend.

Thanks,
Jessica

-----Original Message-----
From: Timo M=FCller [mailto:mail@timomueller.eu]
Sent: Wednesday, June 26, 2013 12:03 AM
To: Zhang, Jessica
Cc: yocto@yoctoproject.org; Timo Mueller
Subject: Re: [yocto] [PATCHv3 0/8][eclipse-poky] Add target profile quick s=
witch

Hi Jessica,

Zhang, Jessica wrote, On 26.06.2013 00:07:
> Hi Timo,
>
> Now it look much better and also with these patch set, I don't see the
> multiple selection of radio buttons, so I don't think we need the last
> patch of the series which enable the debugging.
>
> The only thing that's not clear to me is, after define the project
> specific settings which is different from profiles. From the menu bar,
> the project menu, when I toggled between profile and project specific
> setting, by checking into the project property window, I can see the
> correct setting is showing.  But if I stayed inside the project
> property window, if I uncheck my project specific setting box, click
> on ok.  Then I reopen my project property window, recheck project
> specific setting box, I noticed that instead of restoring my project
> specific settings, it copied the prior profile setting.
> Which is different behavior than other cases that it always able to
> restore the defined project specific settings once I defined it.  So
> is this a bug or intentional behavior?

That is a bug and it's fixed by the patch "plugin/sdk.ide: Pre-populate pro=
ject specific profile form". With this patch this patch series needs some s=
mall adjustments (in the refactoring part). Once it is merged, I'll rework =
this series and also remove the debugging patch.

>
> Except for this case, everything else looks great to me.
>
> Cheers, Jessica
>
> -----Original Message-----
> From: yocto-bounces@yoctoproject.org
> [mailto:yocto-bounces@yoctoproject.org] On Behalf Of Timo Mueller
> Sent: Tuesday, June 25, 2013 8:34 AM
> To: yocto@yoctoproject.org
> Cc: Timo Mueller
> Subject: [yocto] [PATCHv3 0/8][eclipse-poky] Add target profile quick
> switch
>
> From: Timo Mueller <timo.mueller@bmw-carit.de>
>
> Hi,
>
> in conclusion to the previous discussion, we've agreed that the quick swi=
tch menu will enable the user to select only configured profiles.
> An unconfigured project specific profile will be shown as a greyed out op=
tion in the menu.
>
> There also has been a bug where the projects specific settings and one pr=
ofile could be marked as selected at the same time. I could only reproduce =
by naming the target profile "project-specific" which collides with the rad=
ioParamter used for the menu. This case is resolved in this patch set. I've=
 additionally merged the two places where the state of the menu was set so =
have one consistent place.
>
> In any case, I've added one patch marked as TESTING to enable tracing in =
the relevant components. In case the problem prevails, please enable the tr=
acing for th org.yocto.sdk.ide plugin and send me the output.
>
> Changes in v3:
> - Only grey out project specific profile if not configured.
> - Fix Bug where multiple menu item could be selected at the same time
>
> Changes in v2:
> Handle error when project specific profile is not configure more graceful=
ly. Instead of showing an error message the button is now greyed out.
>
> Patches 01..07 contain the implementation with the greyed out menu button=
.
>
> After playing around with the two options discussed in the first patch se=
ries, I started to prefer inserting a different button in the menu allowing=
 the user to quickly navigate to the project preferences instead of just gr=
eying it out. I've added this in the last patch of the series, so you can c=
ompare yourself.
>
>  From original cover letter
> <snip>
> if a user wants to change the used target profile of a project he current=
ly has to open the project preferences. This can be tedious if he has to sw=
itch the profile often.
>
> This is a small addition which allows the user to quickly switch the used=
 target profile of a project. Instead of having to open the project prefere=
nces the user can select the project in the navigator and then choose the d=
esired target profile from a drop-down menu in the toolbar or from the proj=
ect menu.
> </snip>
>
> 01: Small i18n fix
> 02..04: Refactoring the project specific utils
> 05..06: Introduce the target profile toolbar switch
> 07: Adds the target profile switch to the project menu
> 08: TESTING: Enalbe tracing to pin down the multi-select problem
>
> Best regards,
> Timo
>
> Timo Mueller (8):
>    plugins/sdk.ide: Use an internationalized dialog title
>    plugins/sdk.ide: Extract project specific util methods
>    plugins/sdk.ide: Move project specific util methods
>    plugins/sdk.ide: Remove project context from method names
>    plugins/sdk.ide: Add command to switch the target profile
>    plugins/sdk.ide: Add profile switch menu to the toolbar
>    plugins/sdk.ide: Add profile switch menu to the project menu
>    TESTING: add tracing for radio menu
>
>   plugins/org.yocto.sdk.ide/.options                 |   2 +
>   .../OSGI-INF/l10n/bundle.properties                |   4 +
>   plugins/org.yocto.sdk.ide/plugin.xml               | 100 ++++++++-
>   .../sdk/ide/ProjectSpecificContributionItem.java   |  69 ++++++
>   .../sdk/ide/TargetProfileContributionItem.java     | 139 ++++++++++++
>   .../org/yocto/sdk/ide/YoctoSDKMessages.properties  |   4 +
>   .../src/org/yocto/sdk/ide/YoctoUISetting.java      |   3 +-
>   .../sdk/ide/actions/ProfileSwitchHandler.java      | 134 ++++++++++++
>   .../natures/YoctoSDKAutotoolsProjectNature.java    |   3 +-
>   .../ide/preferences/YoctoSDKPreferencePage.java    |  11 +-
>   .../preferences/YoctoSDKProjectPropertyPage.java   | 130 ++---------
>   .../sdk/ide/utils/ProjectPreferenceUtils.java      | 240 ++++++++++++++=
+++++++
>   .../src/org/yocto/sdk/ide/utils/YoctoSDKUtils.java | 118 ----------
>   .../ide/wizard/NewYoctoProjectTemplateProcess.java |   3 +-
>   14 files changed, 714 insertions(+), 246 deletions(-)  create mode 1006=
44 plugins/org.yocto.sdk.ide/.options
>   create mode 100644 plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/Proj=
ectSpecificContributionItem.java
>   create mode 100644 plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/Targ=
etProfileContributionItem.java
>   create mode 100644 plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/acti=
ons/ProfileSwitchHandler.java
>   create mode 100644
> plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/utils/ProjectPreferenc
> eUtils.java
>
> --
> 1.8.1.4
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

Best regards
Timo

