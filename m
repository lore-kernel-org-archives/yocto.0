Return-Path: <jessica.zhang@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C2DB5E006B5
	for <yocto@yoctoproject.org>; Sun, 23 Jun 2013 22:26:52 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 23 Jun 2013 22:26:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,926,1363158000"; d="scan'208";a="321516860"
Received: from orsmsx104.amr.corp.intel.com ([10.22.225.131])
	by azsmga001.ch.intel.com with ESMTP; 23 Jun 2013 22:26:30 -0700
Received: from orsmsx153.amr.corp.intel.com (10.22.226.247) by
	ORSMSX104.amr.corp.intel.com (10.22.225.131) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Sun, 23 Jun 2013 22:25:20 -0700
Received: from orsmsx103.amr.corp.intel.com ([169.254.2.83]) by
	ORSMSX153.amr.corp.intel.com ([169.254.12.24]) with mapi id
	14.03.0123.003; Sun, 23 Jun 2013 22:25:20 -0700
From: "Zhang, Jessica" <jessica.zhang@intel.com>
To: Timo Mueller <mail@timomueller.eu>
Thread-Topic: [yocto] [PATCHv2 0/8][eclipse-poky] Add target profile quick
	switch
Thread-Index: AQHObn045NStuavmK0eqLerZZ6A7nJlArMPwgALFGACAAOPU0A==
Date: Mon, 24 Jun 2013 05:25:19 +0000
Message-ID: <C6510F6D410BB64A8C15398EDC6B847C73C47461@ORSMSX103.amr.corp.intel.com>
References: <cover.1371818609.git.timo.mueller@bmw-carit.de>
	<C6510F6D410BB64A8C15398EDC6B847C73C46EEE@ORSMSX103.amr.corp.intel.com>
	<51C6B388.4010406@timomueller.eu>
In-Reply-To: <51C6B388.4010406@timomueller.eu>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Timo Mueller <timo.mueller@bmw-carit.de>
Subject: Re: [PATCHv2 0/8][eclipse-poky] Add target profile quick switch
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
X-List-Received-Date: Mon, 24 Jun 2013 05:26:54 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Timo,

For case 1, I think we probably should bring back the grey out option.  In =
my opinion, it's more consistent.  The property window should be the centra=
lized place for user to setup the settings.  The drop down list is for user=
 to quickly toggle between the different settings.  So the behavior should =
be:

If there's no project specific settings, that option will be greyed out.  I=
 don't think it'll make it secondary as long as it's still visible.  Once u=
ser 1st time check the project specific setting in the project properties w=
indow, we copy the prior profile settings as start point then the user can =
further customize if there's the need.  Once a project has its own specific=
 settings, the option will be enabled in the drop down list and the selecti=
on will be consistent between the drop down list selection and project prop=
erties settings.

What do you think?

Jessica
-----Original Message-----
From: Timo Mueller [mailto:mail@timomueller.eu]
Sent: Sunday, June 23, 2013 1:36 AM
To: Zhang, Jessica
Cc: yocto@yoctoproject.org; Timo Mueller
Subject: Re: [yocto] [PATCHv2 0/8][eclipse-poky] Add target profile quick s=
witch

Hi Jessica,

Am 21.06.2013 23:47, schrieb Zhang, Jessica:
> Hi Timo,
 >
 > So what's the purpose of "Project Specific Settings", my  > understandin=
g is it's something that only local to project instead of  > global name sp=
ace, e.g. profile?

Yes, that's the main idea.

>  OK, I've played a little bit  of
 > toggling between profiles, and project specific setting and notice  > th=
e following behaviors that can be confusing:
 >
 > 1. As your preference that user can specify "project specific  > setting=
s".  I've noticed for this case, if I haven't entered any  > project specif=
ic settings via the preference wizard, it'll always  > copy the profile set=
tings prior to its selection, then in this case I  > don't think it makes m=
uch sense since we already have the profiles to  > cover all the settings

That's independent of this patch set, right?

The original idea behind copying the settings of the currently selected pro=
file was to give the user a starting point for creating the project specifi=
c settings. The assumption was that the user most of the times only does sm=
all modifications to an existing profile.

Sure, if the user doesn't alter the settings, the project specific ones mat=
ch an already defined target profile. One difference remains, if he changes=
 the target profile it will update all projects that use this profile. The =
project that is using it's own configuration won't be changed, although the=
 settings are similar.

An alternative to copying the inital settings would be to blank out the for=
m, when the checkbox is checked. If the assumption is not correct and we th=
ink that this is easier to understand for the user, I'll provide a patch se=
t changing this behaviour.

>
 > 2.  OK, now let's move to the case of that I do have explicit setup a  >=
 project specific settings in the project property view apply it and  > exi=
t the window.  After that, in the drop down list, when I toggle  > between =
the options, e.g. I have two profiles besides the project  > specific setti=
ngs, then every time after I made the selection and  > check in the project=
 properties view, the settings matches my  > selection.  So this is good an=
d consistent behavior.
 >
 > 3. If  inside the project properties window, I uncheck the "Use  > proje=
ct specific settings" box, and select a profile then apply the  > changes c=
lose the window.  Now in the drop down list I will see both  > the "project=
 specific setting" and the selected profile are selected.
 > Then next time when I go back, and re-check "Use project specific  > set=
tings" box, my project specific setting will be gone, instead the  > settin=
gs will show as my previous profile settings.

That's a bug in my implementation. They should always be in sink as you exp=
lained in your second point.

>
 > Overall, I think we still need to play a little bit more of different  >=
 setting selections via different approaches, some of the inconsistent  > b=
ehavior can get user lost.
 >
 > Thanks, Jessica -----Original Message----- From:
 > yocto-bounces@yoctoproject.org
 > [mailto:yocto-bounces@yoctoproject.org] On Behalf Of Timo Mueller  > Sen=
t: Friday, June 21, 2013 5:45 AM To: yocto@yoctoproject.org Cc:
 > Timo Mueller Subject: [yocto] [PATCHv2 0/8][eclipse-poky] Add target  > =
profile quick switch  >  > From: Timo Mueller <timo.mueller@bmw-carit.de>  =
>  > Changes in v2: Handle error when project specific profile is not  > co=
nfigured more gracefully. Instead of showing an error message the  > button=
 is now greyed out.
 >
 > Patches 01..07 contain the implementation with the greyed out menu  > bu=
tton.
 >
 > After playing around with the two options discussed in the first  > patc=
h series, I started to prefer inserting a different button in the  > menu a=
llowing the user to quickly navigate to the project preferences  > instead =
of just greying it out. I've added this in the last patch of  > the series,=
 so you can compare yourself.
 >
 > From original cover letter <snip> if a user wants to change the used  > =
target profile of a project he currently has to open the project  > prefere=
nces. This can be tedious if he has to switch the profile  > often.
 >
 > This is a small addition which allows the user to quickly switch the  > =
used target profile of a project. Instead of having to open the  > project =
preferences the user can select the project in the navigator  > and then ch=
oose the desired target profile from a drop-down menu in  > the toolbar or =
from the project menu. </snip>  >  > 01: Small i18n fix 02..04: Refactoring=
 the project specific utils  > 05..06: Introduce the target profile toolbar=
 switch 07: Adds the  > target profile switch to the project menu 08: Exper=
imental: Add  > button to open project preferences  >  > Best regards, Timo

Thanks, for the input. I'll fix the bug and send a v3.

Best regards,
Timo


