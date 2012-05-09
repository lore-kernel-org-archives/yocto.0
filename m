Return-Path: <fransmeulenbroeks@gmail.com>
Received: from mail-qc0-f176.google.com (mail-qc0-f176.google.com
	[209.85.216.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2F7CEE013B7
	for <yocto@yoctoproject.org>; Wed,  9 May 2012 07:12:00 -0700 (PDT)
Received: by qcsc21 with SMTP id c21so279658qcs.35
	for <yocto@yoctoproject.org>; Wed, 09 May 2012 07:11:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=D+i9dKFCOdKKF+mCoVYhZS5uYIA04uH9HgmWqmsZ1w4=;
	b=Yg0oxyyfw8qrpwOC34RgkbbXdSbQXToJg3lUOO6vW9xz/0IX/Q74e6mRv/+FIEi7iD
	gDtwpC9QOvgTvLRMmAptaPzBuG1M/f94QAp4LtzDL9awYZfl/DOtfG23QqM4/1eaNv5+
	KnJG/hPp6kQsXvV9xX4FE/gAtA7/q3R+iRm+yYA1rmnFg7yMGDSOrNuEqutLN7ghmL8k
	gms1YrGdXJRsa6gHHcPYK3Q2oLRBui2WsJfzlcAMXjMmBiW7+o1fvEjB6a20EIkB6bnx
	LbvjtGYV+HOO+Ok7wD/8iwLtCvQW3IDPdxLqZxwPuuLwrgiNOV9rP6NveJvh3RA7zKJ6
	DVEg==
MIME-Version: 1.0
Received: by 10.60.169.174 with SMTP id af14mr426552oec.13.1336572719228; Wed,
	09 May 2012 07:11:59 -0700 (PDT)
Received: by 10.60.11.98 with HTTP; Wed, 9 May 2012 07:11:59 -0700 (PDT)
In-Reply-To: <4FA971E3.70904@windriver.com>
References: <CACW_hTacgFqj2NQZ4aNuN5WBm2R9Ge3NS25XVJTKjmKm6spHKw@mail.gmail.com>
	<4FA7E0DB.7050508@windriver.com>
	<CACW_hTZj8W-eS0+3GzELu1J_kTww1dgLB4a17bvYtcmZ77ymaQ@mail.gmail.com>
	<4FA82443.10001@windriver.com>
	<CACW_hTbZze5nfCsuy097zUmyEs=0s6HT=y-q9af5fFd150bJRg@mail.gmail.com>
	<4FA914B1.3060602@windriver.com>
	<CACW_hTZ68+Ok8z+6diWZ=xToE9jPqZaoAAOdyYc6-xVsy7mszQ@mail.gmail.com>
	<4FA971E3.70904@windriver.com>
Date: Wed, 9 May 2012 16:11:59 +0200
Message-ID: <CACW_hTbj1tAMRs7phrGSe4Qx+8frf1Oy9utDc8r8Fq3PipTQFw@mail.gmail.com>
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
X-List-Received-Date: Wed, 09 May 2012 14:12:00 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

2012/5/8 Bruce Ashfield <bruce.ashfield@windriver.com>:
> On 12-05-08 09:03 AM, Frans Meulenbroeks wrote:
>>
>> 2012/5/8 Bruce Ashfield<bruce.ashfield@windriver.com>:
>>>
>>> On 12-05-08 03:18 AM, Frans Meulenbroeks wrote:
>>>>
>>>>
>>>> 2012/5/7 Bruce Ashfield<bruce.ashfield@windriver.com>:
>>>>>
>>>>>
>>>>> On 12-05-07 03:29 PM, Frans Meulenbroeks wrote:
>>>>>>
>>>>>>
>>>>>>
>>>>>> 2012/5/7 Bruce Ashfield<bruce.ashfield@windriver.com>:
>
>
> <snip>
>
>
>>>>
>>>> Not sure what I am doing wrong.
>>>> Is there a small example or some doc on how to do this? or can someone
>>>> give a few commands that would show how to modify an existing patch
>>>> (or create a new one) with patch?
>>>
>>>
>>>
>>> There are docs, but if guilt next, or guilt push -f aren't working, the=
y
>>> won't be of much use.
>>>
>>>
>>>> (btw noticed that the patches are also in
>>>> .git/refs/patches/...
>>>> however the guilt doc says:
>>>> In Guilt, all the patches are stored in .git/patches/$branch/, where
>>>> $branch ...
>>>
>>>
>>>
>>> That's an unmodified guilt, you can't commit and track the series if yo=
u
>>> let guilt store information under .git, so I created a variable and
>>> relocated it.
>>>
>>>
>>>>
>>>> Also tried to add a symlink from .git/patches to .git/refs/patches but
>>>> that did not help either.
>>>>
>>>> Thanks for any suggestion!
>>>
>>>
>>>
>>> I can easily give you the raw git commands to make this work, but the
>>> guilt
>>> path is supposed to be the gentle entry to the process. We need to
>>> diagnose what is happening .. and I need to see it happen in front of
>>> me, so I can try a few things.
>>>
>>> Cheers,
>>>
>>> Bruce
>>>
>>
>> Bruce,
>>
>> Thanks for your help.
>> I'l try to make a small overlay based upon the standard de(throttling? C=
ompression?, collecting?)nzil 7.0
>> layer and send you the diffs.
>> This will take a little bit of time as I want to verify here first
>> that this still has the problem.
>
>
> For anyone following along (all one of them), Frans and I have this
> working now. It was a missing export of GUILT_BASE. I just sent a patch
> to the list for it.
>
> Without that patch, here's what I did in devshell:
>
>
> Here's a log of what I did in devshell:
>
> =A0> =A0export GUILT_BASE=3Dmeta
> =A0> =A0guilt applied
> links/files/lm75.patch
> links/files/lm80.patch
> links/files/mpc8313e-rdb-cardbus.patch
> links/files/reboot.patch
> links/files/eeprom.patch
> links/files/do_mounts.patch
>
> =A0> =A0guilt push -f
> Applying patch..links/files/max7311.patch
> Checking patch drivers/gpio/max7311.c...
> Checking patch drivers/gpio/Kconfig...
> Hunk #2 succeeded at 199 (offset 63 lines).
> Checking patch drivers/gpio/Makefile...
> error: while searching for:
> obj-$(CONFIG_GPIO_SX150X) =A0 =A0 =A0 +=3D sx150x.o
> obj-$(CONFIG_GPIO_VX855) =A0 =A0 =A0 =A0+=3D vx855_gpio.o
> obj-$(CONFIG_GPIO_ML_IOH) =A0 =A0 =A0 +=3D ml_ioh_gpio.o
>
> error: patch failed: drivers/gpio/Makefile:42
> Checking patch include/linux/max7311_gpio.h...
> Applied patch drivers/gpio/max7311.c cleanly.
> Applied patch drivers/gpio/Kconfig cleanly.
> Applying patch drivers/gpio/Makefile with 1 rejects...
> Rejected hunk #1.
> Applied patch include/linux/max7311_gpio.h cleanly.
> Patch applied.
>
> =A0> <resolve conflict> (I used wiggle), but it's a trivial fix
>
> =A0# guilt needs to know where the last commit is. When using guilt in
> =A0# development mode, it does autotagging. But while doing a build it
> =A0# doesn't. So we just tag the top:
> =A0> git tag standard/default/syrcxx_top
> =A0> guilt refresh
> Patch links/files/max7311.patch refreshed
> =A0> =A0cp meta/patches/standard/default/syrcxx/links/files/max7311.patch=
 <your
> layer>
> =A0> =A0guilt push -a
> File series fully applied, ends at patch links/files/max7311.patch
>
> Cheers,
>
> Bruce

Bruce, thanks a lot for your help! Greatly appreciated!

I've verified this at work and noticed that things are not exactly
working as expected (although I was able to create a decent patch).
The max7311.patch I have sent to you also creates a few new files.
Apparently after a quilt refresh of my patch these new files do not
appear in the patch any more (but files that are modified are
updated). Guess this is because the new files are unknown to git.

It might be that it is better to add new files in a separate patch (or
maybe even with something like file://xx.c)
Not sure though as I am not an expert in this area.

Frans.

