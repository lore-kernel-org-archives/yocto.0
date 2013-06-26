Return-Path: <mail@timomueller.eu>
Received: from h1954115.stratoserver.net (h1954115.stratoserver.net
	[85.214.246.27])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B4666E01562
	for <yocto@yoctoproject.org>; Wed, 26 Jun 2013 00:02:44 -0700 (PDT)
Received: from mysterion.bmw-carit.intra (mail.bmw-carit.de [62.245.222.98])
	(using TLSv1 with cipher DHE-RSA-CAMELLIA256-SHA (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: mail@timomueller.eu)
	by h1954115.stratoserver.net (mailserver) with ESMTPSA id C57F46E941F3; 
	Wed, 26 Jun 2013 09:02:42 +0200 (CEST)
Message-ID: <51CA9211.7010807@timomueller.eu>
Date: Wed, 26 Jun 2013 09:02:41 +0200
From: =?ISO-8859-1?Q?Timo_M=FCller?= <mail@timomueller.eu>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130514 Thunderbird/17.0.6
MIME-Version: 1.0
To: "Zhang, Jessica" <jessica.zhang@intel.com>
References: <cover.1372170704.git.timo.mueller@bmw-carit.de>
	<C6510F6D410BB64A8C15398EDC6B847C73C4F578@ORSMSX103.amr.corp.intel.com>
In-Reply-To: <C6510F6D410BB64A8C15398EDC6B847C73C4F578@ORSMSX103.amr.corp.intel.com>
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
X-List-Received-Date: Wed, 26 Jun 2013 07:02:45 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Hi Jessica,

Zhang, Jessica wrote, On 26.06.2013 00:07:
> Hi Timo,
>
> Now it look much better and also with these patch set, I don't see
> the multiple selection of radio buttons, so I don't think we need the
> last patch of the series which enable the debugging.
>
> The only thing that's not clear to me is, after define the project
> specific settings which is different from profiles. From the menu
> bar, the project menu, when I toggled between profile and project
> specific setting, by checking into the project property window, I can
> see the correct setting is showing.  But if I stayed inside the
> project property window, if I uncheck my project specific setting
> box, click on ok.  Then I reopen my project property window, recheck
> project specific setting box, I noticed that instead of restoring my
> project specific settings, it copied the prior profile setting.
> Which is different behavior than other cases that it always able to
> restore the defined project specific settings once I defined it.  So
> is this a bug or intentional behavior?

That is a bug and it's fixed by the patch "plugin/sdk.ide: Pre-populate
project specific profile form". With this patch this patch series needs
some small adjustments (in the refactoring part). Once it is merged,
I'll rework this series and also remove the debugging patch.

>
> Except for this case, everything else looks great to me.
>
> Cheers, Jessica
>
> -----Original Message-----
> From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org] On Behalf Of Timo Mueller
> Sent: Tuesday, June 25, 2013 8:34 AM
> To: yocto@yoctoproject.org
> Cc: Timo Mueller
> Subject: [yocto] [PATCHv3 0/8][eclipse-poky] Add target profile quick switch
>
> From: Timo Mueller <timo.mueller@bmw-carit.de>
>
> Hi,
>
> in conclusion to the previous discussion, we've agreed that the quick switch menu will enable the user to select only configured profiles.
> An unconfigured project specific profile will be shown as a greyed out option in the menu.
>
> There also has been a bug where the projects specific settings and one profile could be marked as selected at the same time. I could only reproduce by naming the target profile "project-specific" which collides with the radioParamter used for the menu. This case is resolved in this patch set. I've additionally merged the two places where the state of the menu was set so have one consistent place.
>
> In any case, I've added one patch marked as TESTING to enable tracing in the relevant components. In case the problem prevails, please enable the tracing for th org.yocto.sdk.ide plugin and send me the output.
>
> Changes in v3:
> - Only grey out project specific profile if not configured.
> - Fix Bug where multiple menu item could be selected at the same time
>
> Changes in v2:
> Handle error when project specific profile is not configure more gracefully. Instead of showing an error message the button is now greyed out.
>
> Patches 01..07 contain the implementation with the greyed out menu button.
>
> After playing around with the two options discussed in the first patch series, I started to prefer inserting a different button in the menu allowing the user to quickly navigate to the project preferences instead of just greying it out. I've added this in the last patch of the series, so you can compare yourself.
>
>  From original cover letter
> <snip>
> if a user wants to change the used target profile of a project he currently has to open the project preferences. This can be tedious if he has to switch the profile often.
>
> This is a small addition which allows the user to quickly switch the used target profile of a project. Instead of having to open the project preferences the user can select the project in the navigator and then choose the desired target profile from a drop-down menu in the toolbar or from the project menu.
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
>   .../sdk/ide/utils/ProjectPreferenceUtils.java      | 240 +++++++++++++++++++++
>   .../src/org/yocto/sdk/ide/utils/YoctoSDKUtils.java | 118 ----------
>   .../ide/wizard/NewYoctoProjectTemplateProcess.java |   3 +-
>   14 files changed, 714 insertions(+), 246 deletions(-)  create mode 100644 plugins/org.yocto.sdk.ide/.options
>   create mode 100644 plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/ProjectSpecificContributionItem.java
>   create mode 100644 plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/TargetProfileContributionItem.java
>   create mode 100644 plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/actions/ProfileSwitchHandler.java
>   create mode 100644 plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/utils/ProjectPreferenceUtils.java
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

