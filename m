Return-Path: <jessica.zhang@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7EBC4E01403
	for <yocto@yoctoproject.org>; Mon, 24 Jun 2013 09:17:00 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by azsmga102.ch.intel.com with ESMTP; 24 Jun 2013 09:16:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,929,1363158000"; d="scan'208";a="354938758"
Received: from orsmsx101.amr.corp.intel.com ([10.22.225.128])
	by fmsmga001.fm.intel.com with ESMTP; 24 Jun 2013 09:17:42 -0700
Received: from orsmsx103.amr.corp.intel.com ([169.254.2.83]) by
	ORSMSX101.amr.corp.intel.com ([169.254.8.49]) with mapi id
	14.03.0123.003; Mon, 24 Jun 2013 09:16:58 -0700
From: "Zhang, Jessica" <jessica.zhang@intel.com>
To: =?iso-8859-1?Q?Timo_M=FCller?= <mail@timomueller.eu>
Thread-Topic: [yocto] [PATCHv2 0/8][eclipse-poky] Add target profile quick
	switch
Thread-Index: AQHObn045NStuavmK0eqLerZZ6A7nJlArMPwgALFGACAAOPU0IAAkVmAgAAnI3A=
Date: Mon, 24 Jun 2013 16:16:58 +0000
Message-ID: <C6510F6D410BB64A8C15398EDC6B847C73C477A9@ORSMSX103.amr.corp.intel.com>
References: <cover.1371818609.git.timo.mueller@bmw-carit.de>
	<C6510F6D410BB64A8C15398EDC6B847C73C46EEE@ORSMSX103.amr.corp.intel.com>
	<51C6B388.4010406@timomueller.eu>
	<C6510F6D410BB64A8C15398EDC6B847C73C47461@ORSMSX103.amr.corp.intel.com>
	<51C7EC93.2070004@timomueller.eu>
In-Reply-To: <51C7EC93.2070004@timomueller.eu>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
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
X-List-Received-Date: Mon, 24 Jun 2013 16:17:04 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi Timo,

Your finding is described in my case 3.  For reproduce the double selection=
, you need to select "project specific" apply exit the property window.  Th=
en go back to property window, deselect "project specific" apply, exit the =
window. Then check the drop down list, I can consistently reproduce the cas=
e this way.  Give it a try.

Thanks,
Jessica

-----Original Message-----
From: Timo M=FCller [mailto:mail@timomueller.eu]
Sent: Sunday, June 23, 2013 11:52 PM
To: Zhang, Jessica
Cc: yocto@yoctoproject.org; Timo Mueller
Subject: Re: [yocto] [PATCHv2 0/8][eclipse-poky] Add target profile quick s=
witch

Hi Jessica

Zhang, Jessica wrote, On 24.06.2013 07:25:
> Hi Timo,
>
> For case 1, I think we probably should bring back the grey out option.
> In my opinion, it's more consistent.  The property window should be
> the centralized place for user to setup the settings.  The drop down
> list is for user to quickly toggle between the different settings.  So
> the behavior should be:
>
> If there's no project specific settings, that option will be greyed
> out.  I don't think it'll make it secondary as long as it's still
> visible.  Once user 1st time check the project specific setting in the
> project properties window, we copy the prior profile settings as start
> point then the user can further customize if there's the need.
> Once a project has its own specific settings, the option will be
> enabled in the drop down list and the selection will be consistent
> between the drop down list selection and project properties settings.
>
> What do you think?

I get your point. I'll kick out the last patch to restore the greyed out ve=
rsion.

I tried to reproduce case 3. And I haven't been able to bring the menu to a=
 state where two menu items are checked. I tried all sorts of combinations =
without success. Could you maybe tell me the exact steps on how you get thi=
s behaviour?

However, when trying the different options I realized that there's a bug in=
 the project preferences. Maybe you've already pointed it out and I didn't =
get it. But if you've configured a project specific profile and change to a=
 target profile, when you enable the project specific profile again, your s=
ettings are lost. Instead the selected profile is copied all of the time, i=
nstead of only at the first time of configuration.

I'll send a fix and a v3 of the menu with the greyed out menu item.

>
> Jessica -----Original Message----- From: Timo Mueller
> [mailto:mail@timomueller.eu] Sent: Sunday, June 23, 2013 1:36 AM To:
> Zhang, Jessica Cc: yocto@yoctoproject.org; Timo Mueller Subject: Re:
> [yocto] [PATCHv2 0/8][eclipse-poky] Add target profile quick switch
>
> Hi Jessica,
>
> Am 21.06.2013 23:47, schrieb Zhang, Jessica:
>> Hi Timo,
>>
>> So what's the purpose of "Project Specific Settings", my  >
>> understanding is it's something that only local to project instead of
>> > global name space, e.g. profile?
>
> Yes, that's the main idea.
>
>> OK, I've played a little bit  of toggling between profiles, and
>> project specific setting and notice  > the following behaviors that
>> can be confusing:
>>
>> 1. As your preference that user can specify "project specific  >
>> settings".  I've noticed for this case, if I haven't entered any  >
>> project specific settings via the preference wizard, it'll always
>> > copy the profile settings prior to its selection, then in this
>> case I  > don't think it makes much sense since we already have the
>> profiles to  > cover all the settings
>
> That's independent of this patch set, right?
>
> The original idea behind copying the settings of the currently
> selected profile was to give the user a starting point for creating
> the project specific settings. The assumption was that the user most
> of the times only does small modifications to an existing profile.
>
> Sure, if the user doesn't alter the settings, the project specific
> ones match an already defined target profile. One difference remains,
> if he changes the target profile it will update all projects that use
> this profile. The project that is using it's own configuration won't
> be changed, although the settings are similar.
>
> An alternative to copying the inital settings would be to blank out
> the form, when the checkbox is checked. If the assumption is not
> correct and we think that this is easier to understand for the user,
> I'll provide a patch set changing this behaviour.
>
>>
>> 2.  OK, now let's move to the case of that I do have explicit setup a
>> > project specific settings in the project property view apply it and
>> > exit the window.  After that, in the drop down list, when I toggle
>> > between the options, e.g. I have two profiles besides the project
>> > specific settings, then every time after I made the selection and
>> > check in the project properties view, the settings matches my  >
>> selection.  So this is good and consistent behavior.
>>
>> 3. If  inside the project properties window, I uncheck the "Use  >
>> project specific settings" box, and select a profile then apply the
>> > changes close the window.  Now in the drop down list I will see
>> both  > the "project specific setting" and the selected profile are
>> selected. Then next time when I go back, and re-check "Use project
>> specific  > settings" box, my project specific setting will be gone,
>> instead the  > settings will show as my previous profile settings.
>
> That's a bug in my implementation. They should always be in sink as
> you explained in your second point.
>
>>
>> Overall, I think we still need to play a little bit more of different
>> > setting selections via different approaches, some of the
>> inconsistent  > behavior can get user lost.
>>
>> Thanks, Jessica -----Original Message----- From:
>> yocto-bounces@yoctoproject.org
>> [mailto:yocto-bounces@yoctoproject.org] On Behalf Of Timo Mueller
>> > Sent: Friday, June 21, 2013 5:45 AM To: yocto@yoctoproject.org
>> Cc: Timo Mueller Subject: [yocto] [PATCHv2 0/8][eclipse-poky] Add
>> target  > profile quick switch  >  > From: Timo Mueller
>> <timo.mueller@bmw-carit.de>  >  > Changes in v2: Handle error when
>> project specific profile is not  > configured more gracefully.
>> Instead of showing an error message the  > button is now greyed out.
>>
>> Patches 01..07 contain the implementation with the greyed out menu
>> > button.
>>
>> After playing around with the two options discussed in the first  >
>> patch series, I started to prefer inserting a different button in the
>> > menu allowing the user to quickly navigate to the project
>> preferences  > instead of just greying it out. I've added this in the
>> last patch of  > the series, so you can compare yourself.
>>
>> From original cover letter <snip> if a user wants to change the used
>> > target profile of a project he currently has to open the project  >
>> preferences. This can be tedious if he has to switch the profile  >
>> often.
>>
>> This is a small addition which allows the user to quickly switch the
>> > used target profile of a project. Instead of having to open the  >
>> project preferences the user can select the project in the navigator
>> > and then choose the desired target profile from a drop-down menu in
>> > the toolbar or from the project menu. </snip>
>> >  > 01: Small i18n fix 02..04: Refactoring the project specific
>> utils  > 05..06: Introduce the target profile toolbar switch 07:
>> Adds the  > target profile switch to the project menu 08:
>> Experimental: Add  > button to open project preferences  >  > Best
>> regards, Timo
>
> Thanks, for the input. I'll fix the bug and send a v3.
>
> Best regards, Timo
>

Best regards,
Timo

