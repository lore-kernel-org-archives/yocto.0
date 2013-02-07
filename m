Return-Path: <jessica.zhang@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 485FDE011B4
	for <yocto@yoctoproject.org>; Thu,  7 Feb 2013 09:27:00 -0800 (PST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 07 Feb 2013 09:26:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,623,1355126400"; d="scan'208";a="253881752"
Received: from orsmsx101.amr.corp.intel.com ([10.22.225.128])
	by azsmga001.ch.intel.com with ESMTP; 07 Feb 2013 09:26:58 -0800
Received: from orsmsx107.amr.corp.intel.com (10.22.225.80) by
	ORSMSX101.amr.corp.intel.com (10.22.225.128) with Microsoft SMTP Server
	(TLS) id 14.1.421.2; Thu, 7 Feb 2013 09:26:58 -0800
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.209]) by
	ORSMSX107.amr.corp.intel.com ([169.254.10.112]) with mapi id
	14.01.0421.002; Thu, 7 Feb 2013 09:26:58 -0800
From: "Zhang, Jessica" <jessica.zhang@intel.com>
To: =?iso-8859-1?Q?Timo_M=FCller?= <mail@timomueller.eu>
Thread-Topic: [yocto] [RFC v3 00/18][eclipse-poky] Storing yocto settings as
	target profiles
Thread-Index: AQHOBR2DNTm2R5p7I0upHMnetZXdgJhupRYQ
Date: Thu, 7 Feb 2013 17:26:57 +0000
Message-ID: <C6510F6D410BB64A8C15398EDC6B847C57DE1C34@ORSMSX101.amr.corp.intel.com>
References: <cover.1359962724.git.timo.mueller@bmw-carit.de>
	<C6510F6D410BB64A8C15398EDC6B847C57DE03DC@ORSMSX101.amr.corp.intel.com>
	<5113812E.1060101@timomueller.eu>
In-Reply-To: <5113812E.1060101@timomueller.eu>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Timo Mueller <timo.mueller@bmw-carit.de>
Subject: Re: [RFC v3 00/18][eclipse-poky] Storing yocto settings as target profiles
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
X-List-Received-Date: Thu, 07 Feb 2013 17:27:00 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Great!  Looking forward to the patch set.  I think keep "Save as..." and le=
ave the button up should be the right way to go...

Thanks,
Jessica

-----Original Message-----
From: Timo M=FCller [mailto:mail@timomueller.eu]
Sent: Thursday, February 07, 2013 2:26 AM
To: Zhang, Jessica
Cc: yocto@yoctoproject.org; Timo Mueller
Subject: Re: [yocto] [RFC v3 00/18][eclipse-poky] Storing yocto settings as=
 target profiles

Hi Jessica,

Zhang, Jessica wrote, On 06.02.2013 01:22:
> Hi Timo,
>
> The patch series looks much better.  Here're few things we probably
> need to refine or explore a little bit more:
>
> 1. when I remove a profile, I'll get the following warning "Do you
> really want to the remove the target profile "profile-ide"?Projects
> using this target profile will be reconfigured to use the standard
> profile".  But the reality is the project that is configured using the
> deleted profile won't be affected at all.  You can go to the
> project->properties->Yocto Project Setting to check.  So the message
> really should be: The standard profile will be used for Yocto Project
> ADT preference.

This is directly related to your third question. I already have a patch set=
 that does exactly what you propose there. I just wanted to make sure the t=
he idea of the target profiles suits the IDE in general before I build func=
tionality on top of this. That is why I separated the whole thing into two =
patch sets. When I did this I forgot to change the message of the warning d=
ialog. I will resend a v4 that incorporates this change.

>
> 2.  As to the "Save as.." button style consistency concern, yeah I can
> see it's a little bit unconventional.  But my issue with new button is
> it gives the impression a separate wizard will show up to guide
> through the creation instead of just using the content on the page.
> Probably an "Add" button is less confusing and I've seen it's used on
> some pages and put it up besides the combobox?

I agree with your objection to the "New" button. I already changed it's fun=
ctionality and label to "Save as...", which acts as you proposed.
Maybe I didn't describe this good enough. The last patch only moves the "Sa=
ve as..." button to the bottom.

Are you fine with having the "Save as..." button beside the combobox? Or sh=
ould we show a yocto settings dialog when the user clicks "Add"?

>
> 3. The whole profile idea is applicable to per project ADT setting as
> well. By default it inherits what is set for the whole ADT plug-in in
> the preference window.  But it can be something different aka. A
> different profile.  Any plan to extend the capability here?

As already stated, patches for this already exist. I will submit them to th=
e mailing list as soon as the pass our internal reviews, so you'll have a c=
hance to see how this will look like.

>
> Any further thoughts?
>
> Thanks, Jessica
>
> -----Original Message----- From: yocto-bounces@yoctoproject.org
> [mailto:yocto-bounces@yoctoproject.org] On Behalf Of Timo Mueller
> Sent: Sunday, February 03, 2013 11:36 PM To: yocto@yoctoproject.org
> Cc: Timo Mueller Subject: [yocto] [RFC v3 00/18][eclipse-poky]
> Storing yocto settings as target profiles
>
> From: Timo Mueller <timo.mueller@bmw-carit.de>
>
> Hi,
>
> thanks for the feedback, I did some changes to the patch series
> accordingly.
>
> First of all I've fixed the issues with the patches (duplicate
> method, missing fix for NewYoctoCProjectTemplate.java).
>
> I also changed the functionality of the "new" button according to
> Jessica's feedback. The logic is changed to a "Save as ..." approach.
> If the button is clicked the current values of the form are checked.
> If these are valid, the user can enter a name to store them as a new
> profile.
>
> The last patch moves the "Save as ..." button to the bottom of the
> preference page alongside with the "perform defaults" and the
> "apply" button. I created this patch as a proof of concept because I
> thought it would be a good idea to move it. I used the
> contributeButtons hook of the preference page to achieve this, but
> this only allows adding the "Save as ..." button left to the "perform
> defaults" button. So the order of the buttons is a bit confusing. I
> further checked several other preference pages of eclipse and it
> seems like none of them is using this hook to add new buttons.
> Instead all have a new button next to the comboboxes (e.g. Formatter
> for CDT and JDT). So I would plead against moving it to the bottom to
> have a more consistent and less confusing ui.
>
> From the original cover letter: <snip> currently the yocto settings
> can be changed globally through eclipse's preferences or locally in
> the project properties. But the standard configuration stored in the
> global preferences sometimes changes, e.g. if a new version of the
> toolchain or the sysroot is released. If you change the global
> settings to the updated toolchain or sysroot your old working
> configuration is gone. If you want to reuse this configuration at a
> later point in time you have to (remember and) re-enter everthing.
> This patch set introduces the possiblity to store a configuration
> under a unique name, a so called target profile, and be able to
> select the default target profile that is used for new projects.
> Building upon this change the target profiles could later also be
> used in the project settings and be able to quickly build and debug
> your software for different hard- and software combinations. </snip>
>
> Best regards, Timo

Best regards,
Timo

