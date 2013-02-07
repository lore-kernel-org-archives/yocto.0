Return-Path: <mail@timomueller.eu>
Received: from h1954115.stratoserver.net (h1954115.stratoserver.net
	[85.214.246.27])
	(using TLSv1 with cipher ADH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id F38F8E006EF
	for <yocto@yoctoproject.org>; Thu,  7 Feb 2013 02:25:56 -0800 (PST)
Received: from [192.168.101.53] (mail.bmw-carit.de [62.245.222.98])
	(using TLSv1 with cipher DHE-RSA-CAMELLIA256-SHA (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: mail@timomueller.eu)
	by h1954115.stratoserver.net (mailserver) with ESMTPSA id 17EFA6E940A8; 
	Thu,  7 Feb 2013 11:25:51 +0100 (CET)
Message-ID: <5113812E.1060101@timomueller.eu>
Date: Thu, 07 Feb 2013 11:25:50 +0100
From: =?ISO-8859-1?Q?Timo_M=FCller?= <mail@timomueller.eu>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130110 Thunderbird/17.0.2
MIME-Version: 1.0
To: "Zhang, Jessica" <jessica.zhang@intel.com>
References: <cover.1359962724.git.timo.mueller@bmw-carit.de>
	<C6510F6D410BB64A8C15398EDC6B847C57DE03DC@ORSMSX101.amr.corp.intel.com>
In-Reply-To: <C6510F6D410BB64A8C15398EDC6B847C57DE03DC@ORSMSX101.amr.corp.intel.com>
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
X-List-Received-Date: Thu, 07 Feb 2013 10:25:57 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

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
> profile".  But the reality is the project that is configured using
> the deleted profile won't be affected at all.  You can go to the
> project->properties->Yocto Project Setting to check.  So the message
> really should be: The standard profile will be used for Yocto Project
> ADT preference.

This is directly related to your third question. I already have a patch 
set that does exactly what you propose there. I just wanted to make sure 
the the idea of the target profiles suits the IDE in general before I 
build functionality on top of this. That is why I separated the whole 
thing into two patch sets. When I did this I forgot to change the 
message of the warning dialog. I will resend a v4 that incorporates this 
change.

>
> 2.  As to the "Save as.." button style consistency concern, yeah I
> can see it's a little bit unconventional.  But my issue with new
> button is it gives the impression a separate wizard will show up to
> guide through the creation instead of just using the content on the
> page.  Probably an "Add" button is less confusing and I've seen it's
> used on some pages and put it up besides the combobox?

I agree with your objection to the "New" button. I already changed it's 
functionality and label to "Save as...", which acts as you proposed.
Maybe I didn't describe this good enough. The last patch only moves the 
"Save as..." button to the bottom.

Are you fine with having the "Save as..." button beside the combobox? Or 
should we show a yocto settings dialog when the user clicks "Add"?

>
> 3. The whole profile idea is applicable to per project ADT setting as
> well. By default it inherits what is set for the whole ADT plug-in in
> the preference window.  But it can be something different aka. A
> different profile.  Any plan to extend the capability here?

As already stated, patches for this already exist. I will submit them to 
the mailing list as soon as the pass our internal reviews, so you'll 
have a chance to see how this will look like.

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

