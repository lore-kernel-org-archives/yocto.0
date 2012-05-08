Return-Path: <fransmeulenbroeks@gmail.com>
Received: from mail-pz0-f48.google.com (mail-pz0-f48.google.com
	[209.85.210.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7BB64E0137A
	for <yocto@yoctoproject.org>; Tue,  8 May 2012 06:03:47 -0700 (PDT)
Received: by dadz8 with SMTP id z8so5327957dad.35
	for <yocto@yoctoproject.org>; Tue, 08 May 2012 06:03:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=0FpemNtQuok8N0aGI3cKWN1Meh5j8iEBhcD634f1M1A=;
	b=kxsf7l58hw+LrTm6X7NtkX9JTEn4G4aqllXv6GsYpHOwiYMA8EJVrVp4xBCQR0gc3H
	SkNkrfr26xhvIYH7DFEb695jr5oEJIPn8JImJLVWGhhSjeFfVcogmi/y7xzP1+xdrWAV
	TbGrsyUu1QcEzxUFVPGUQbDrk4guoj/NrAG6/jnYvdCILbWIIGVupLKVx13XLzFJ3xN7
	XkWCJKmbto1vK72irXcG+1ciIBPiLaNsylG0Fx3mMG2lZ7lIHp4GMq/dHBJibYSLPLb5
	4LPhnvxMHxI4FW5FGE96m+K3xMgpiCm/GTYhJdHYbdo2sRokKHm2ut/nWJjltDp1INql
	3yJA==
MIME-Version: 1.0
Received: by 10.68.227.169 with SMTP id sb9mr7995944pbc.157.1336482227225;
	Tue, 08 May 2012 06:03:47 -0700 (PDT)
Received: by 10.68.48.164 with HTTP; Tue, 8 May 2012 06:03:47 -0700 (PDT)
In-Reply-To: <4FA914B1.3060602@windriver.com>
References: <CACW_hTacgFqj2NQZ4aNuN5WBm2R9Ge3NS25XVJTKjmKm6spHKw@mail.gmail.com>
	<4FA7E0DB.7050508@windriver.com>
	<CACW_hTZj8W-eS0+3GzELu1J_kTww1dgLB4a17bvYtcmZ77ymaQ@mail.gmail.com>
	<4FA82443.10001@windriver.com>
	<CACW_hTbZze5nfCsuy097zUmyEs=0s6HT=y-q9af5fFd150bJRg@mail.gmail.com>
	<4FA914B1.3060602@windriver.com>
Date: Tue, 8 May 2012 15:03:47 +0200
Message-ID: <CACW_hTZ68+Ok8z+6diWZ=xToE9jPqZaoAAOdyYc6-xVsy7mszQ@mail.gmail.com>
From: Frans Meulenbroeks <fransmeulenbroeks@gmail.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
Cc: yocto@yoctoproject.org
Subject: Re: modify a kernel patch
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
X-List-Received-Date: Tue, 08 May 2012 13:03:47 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

2012/5/8 Bruce Ashfield <bruce.ashfield@windriver.com>:
> On 12-05-08 03:18 AM, Frans Meulenbroeks wrote:
>>
>> 2012/5/7 Bruce Ashfield<bruce.ashfield@windriver.com>:
>>>
>>> On 12-05-07 03:29 PM, Frans Meulenbroeks wrote:
>>>>
>>>>
>>>> 2012/5/7 Bruce Ashfield<bruce.ashfield@windriver.com>:
>>>>>
>>>>>
>>>>> On 12-05-07 10:41 AM, Frans Meulenbroeks wrote:
>>>>>>
>>>>>>
>>>>>>
>>>>>> Hi all,
>>>>>>
>>>>>> Not sure what the best place is to mail this (the YP list or oe-core
>>>>>> or oe-devel or ...)
>>>>>> Apologies if this is the wrong place.
>>>>>>
>>>>>> The problem I'm facing is the following:
>>>>>> I have a kernel with some additional drivers that are not upstreamed
>>>>>> because they are very specifc.
>>>>>> I'm moving from oe-classic to denzil and from 2.6.38 to 3.2.
>>>>>> Now some of the patches do not apply any more.
>>>>>> In oe-classic I would have gone to the ker>
> Cheers
>
> Belen
>
>
> On 08/05/2012 13:23, "Frans Meulenbroeks" <fransmeulenbroeks@gmail.com>
> wrote:
>
>>2012/5/8 Barros Pena, Belen <belen.barros.pena@intel.com>:
>>> Hi Frans,
>>>
>>> Thank you so much for agreeing to talk to us. Outside working hours
>>>should
>>> be no problem. What time would be good for you?
>>>
>>>
>>> If you are ok with it, I'd like to record our conversation: it means I
>>> don't need to take lots of notes and I can focus on talking to you.
>>>Using
>>> Skype makes the recording easier: would you mind if we use that instead
>>>of
>>> the phone? My Skype ID is belenbarrospena.
>>>
>>> All the best,
>>>
>>> Belen
>>>
>>>
>>Hi Belen,
>>
>>Recording is no problem. Tonight I'm a little bit low on time, but I
>>think tomorrow evening I'm fairly flexible (this may still change
>>though, my life is sometimes somewhat hectic).
>>20.30 or so will probably work for me, but if you prefer earlier or
>>later that is also probably no problem.
>>And recording is also no problem.
>>
>>Best regards, Frans
>
> ---------------------------------------------------------------------
> Intel Corporation (UK) Limited
> Registered No. 1134945 (England)
> Registered Office: Pipers Way, Swindon SN3 1RJ
> VAT No: 860 2173 47
>
> This e-mail and any attachments may contain confidential material for
> the sole use of the intended recipient(s). Any review or distribution
> by others is strictly prohibited. If you are not the intended
> recipient, please contact the sender and delete all copies.
>

nel work dir, fix the issue,
>>>>>> do a quilt refresh and copy the patch back (there is a patch that
>>>>>> contains our driver)
>>>>>> However, denzil uses guilt instead of quilt
>>>>>>
>>>>>> If I do a devshell of virtual/kernel and want to do with guilt what =
I
>>>>>> used to do with quilt I run into a problem.
>>>>>> guilt status says: Patches directory does not exist, try guilt-init
>>>>>> and indeed there is no patches dir like there was in oe-classic
>>>>>
>>>>>
>>>>>
>>>>>
>>>>> Do you have guilt installed locally ? You are likely using the
>>>>> native guilt. To keep patch lists separate on a per-branch basis
>>>>> and to be able to capture them on th meta-branch, there are some
>>>>> patches to guilt that move the patch directory location.
>>>>
>>>>
>>>>
>>>> Guilt natively complained about a mismatch with the git version (my
>>>> work system is still ubuntu 10.04).
>>>> If I do a bitbake -c devshell virtual/kernel and use guilt there, I
>>>> get the error on the patches directory that I mentioned above.
>>>> It was my idea that I then would get the oe version in my path but I
>>>> did not really verify that. Then again under devshell I did not get
>>>> complaints about the git version. Will verify this tomorrow (I have no
>>>> access to the build system from here).
>>>>>
>>>>>
>>>>>>
> Cheers
>
> Belen
>
>
> On 08/05/2012 13:23, "Frans Meulenbroeks" <fransmeulenbroeks@gmail.com>
> wrote:
>
>>2012/5/8 Barros Pena, Belen <belen.barros.pena@intel.com>:
>>> Hi Frans,
>>>
>>> Thank you so much for agreeing to talk to us. Outside working hours
>>>should
>>> be no problem. What time would be good for you?
>>>
>>>
>>> If you are ok with it, I'd like to record our conversation: it means I
>>> don't need to take lots of notes and I can focus on talking to you.
>>>Using
>>> Skype makes the recording easier: would you mind if we use that instead
>>>of
>>> the phone? My Skype ID is belenbarrospena.
>>>
>>> All the best,
>>>
>>> Belen
>>>
>>>
>>Hi Belen,
>>
>>Recording is no problem. Tonight I'm a little bit low on time, but I
>>think tomorrow evening I'm fairly flexible (this may still change
>>though, my life is sometimes somewhat hectic).
>>20.30 or so will probably work for me, but if you prefer earlier or
>>later that is also probably no problem.
>>And recording is also no problem.
>>
>>Best regards, Frans
>
> ---------------------------------------------------------------------
> Intel Corporation (UK) Limited
> Registered No. 1134945 (England)
> Registered Office: Pipers Way, Swindon SN3 1RJ
> VAT No: 860 2173 47
>
> This e-mail and any attachments may contain confidential material for
> the sole use of the intended recipient(s). Any review or distribution
> by others is strictly prohibited. If you are not the intended
> recipient, please contact the sender and delete all copies.
>


>>>>> Are you working on top of linux-yocto-3.2 ? Or some other 3.2 tree ?
>>>>
>>>>
>>>>
>>>> I downloaded the denzil tarball from yoctoproject.com. I made some
>>>> config changed and added a few local patches (bringing things over
>>>> from my 2.6.38 oe-classic kernel).
>>>>
>>>> Should I have gotten a patches dir in my tmp/work/mymachine/linux* dir
>>>> (I have my own machine mpc8313e based)
>>>
>>>
>>>
>>> The patches are pulled underneath the kernel tree itself, so that
>>> they can be incorporated with other git manipulations of the tree
>>> and shared as appropriate.
>>>
>>> So the patches directory exists in ${S}/meta/patches/$branch_name
>>>
>> Ok found that dir. However....
>> It is still not clear to me how to use this though.
>>
>> What I did was start a devshell for virtual/kernel.
>> Within the devshell guilt is in the path, but still it does not work
>> (I also tried invoking guilt with the full path).
>> =A0From my devshell window:
>>
>>
>> frans@frans-desktop:~/poky-denzil-7.0-build/tmp/work/syrcxx-poky-linux-u=
clibc/linux-yocto-3.2.11+git1+b14a08f5c7b469a5077c10942f4e1aec171faa9d_1+01=
e948c2bdf7f5ad9f2b30047a8d3493a1a2880a-r1.23/linux$
>> which guilt
>> /home/frans/poky-denzil-7.0-build/tmp/sysroots/x86_64-linux/usr/bin/guil=
t
>>
>> frans@frans-desktop:~/poky-denzil-7.0-build/tmp/work/syrcxx-poky-linux-u=
clibc/linux-yocto-3.2.11+git1+b14a08f5c7b469a5077c10942f4e1aec171faa9d_1+01=
e948c2bdf7f5ad9f2b30047a8d3493a1a2880a-r1.23/linux$
>> /home/frans/poky-denzil-7.0-build/tmp/sysroots/x86_64-linux/usr/bin/guil=
t
>> status
>> Patches directory doesn't exist, try guilt-init
>>
>> This is with the standard denzil 7.0 release.
>>
>> I've also been to the meta/patches dir and tried guilt status in there
>> but to no avail.
>> (or should I have manually made a symlink or so
>
>
> There's nothing extra that should have to be done, I use guilt during pat=
ch
> carry forward and tree generation, it's simply a matter of a few
> environment variables.
>
> That being said, I've largely replaced guilt with mbox manipulations,
> so I'm a bit concerned about bit rot.
>
> Is there any way you can get me access to your layer and patches ?
> A simple test run is probably the easiest way for me to see what's
> happened.
>
>
>>
>> Not sure what I am doing wrong.
>> Is there a small example or some doc on how to do this? or can someone
>> give a few commands that would show how to modify an existing patch
>> (or create a new one) with patch?
>
>
> There are docs, but if guilt next, or guilt push -f aren't working, they
> won't be of much use.
>
>
>> (btw noticed that the patches are also in
>> .git/refs/patches/...
>> however the guilt doc says:
>> In Guilt, all the patches are stored in .git/patches/$branch/, where
>> $branch ...
>
>
> That's an unmodified guilt, you can't commit and track the series if you
> let guilt store information under .git, so I created a variable and
> relocated it.
>
>
>>
>> Also tried to add a symlink from .git/patches to .git/refs/patches but
>> that did not help either.
>>
>> Thanks for any suggestion!
>
>
> I can easily give you the raw git commands to make this work, but the gui=
lt
> path is supposed to be the gentle entry to the process. We need to
> diagnose what is happening .. and I need to see it happen in front of
> me, so I can try a few things.
>
> Cheers,
>
> Bruce
>

Bruce,

Thanks for your help.
I'l try to make a small overlay based upon the standard denzil 7.0
layer and send you the diffs.
This will take a little bit of time as I want to verify here first
that this still has the problem.

Best regards, Frans

