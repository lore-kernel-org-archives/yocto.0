Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9FAE1E013B7
	for <yocto@yoctoproject.org>; Wed,  9 May 2012 07:14:56 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id q49EEtPO011786
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 9 May 2012 07:14:55 -0700 (PDT)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Wed, 9 May 2012 07:14:55 -0700
Message-ID: <4FAA7BDE.10808@windriver.com>
Date: Wed, 9 May 2012 10:14:54 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:12.0) Gecko/20120430 Thunderbird/12.0.1
MIME-Version: 1.0
To: Frans Meulenbroeks <fransmeulenbroeks@gmail.com>
References: <CACW_hTacgFqj2NQZ4aNuN5WBm2R9Ge3NS25XVJTKjmKm6spHKw@mail.gmail.com>
	<4FA7E0DB.7050508@windriver.com>
	<CACW_hTZj8W-eS0+3GzELu1J_kTww1dgLB4a17bvYtcmZ77ymaQ@mail.gmail.com>
	<4FA82443.10001@windriver.com>
	<CACW_hTbZze5nfCsuy097zUmyEs=0s6HT=y-q9af5fFd150bJRg@mail.gmail.com>
	<4FA914B1.3060602@windriver.com>
	<CACW_hTZ68+Ok8z+6diWZ=xToE9jPqZaoAAOdyYc6-xVsy7mszQ@mail.gmail.com>
	<4FA971E3.70904@windriver.com>
	<CACW_hTbj1tAMRs7phrGSe4Qx+8frf1Oy9utDc8r8Fq3PipTQFw@mail.gmail.com>
In-Reply-To: <CACW_hTbj1tAMRs7phrGSe4Qx+8frf1Oy9utDc8r8Fq3PipTQFw@mail.gmail.com>
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
X-List-Received-Date: Wed, 09 May 2012 14:14:56 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 12-05-09 10:11 AM, Frans Meulenbroeks wrote:
> 2012/5/8 Bruce Ashfield<bruce.ashfield@windriver.com>:
>> On 12-05-08 09:03 AM, Frans Meulenbroeks wrote:
>>>
>>> 2012/5/8 Bruce Ashfield<bruce.ashfield@windriver.com>:
>>>>
>>>> On 12-05-08 03:18 AM, Frans Meulenbroeks wrote:
>>>>>
>>>>>
>>>>> 2012/5/7 Bruce Ashfield<bruce.ashfield@windriver.com>:
>>>>>>
>>>>>>
>>>>>> On 12-05-07 03:29 PM, Frans Meulenbroeks wrote:
>>>>>>>
>>>>>>>
>>>>>>>
>>>>>>> 2012/5/7 Bruce Ashfield<bruce.ashfield@windriver.com>:
>>
>>
>> <snip>
>>
>>
>>>>>
>>>>> Not sure what I am doing wrong.
>>>>> Is there a small example or some doc on how to do this? or can someone
>>>>> give a few commands that would show how to modify an existing patch
>>>>> (or create a new one) with patch?
>>>>
>>>>
>>>>
>>>> There are docs, but if guilt next, or guilt push -f aren't working, they
>>>> won't be of much use.
>>>>
>>>>
>>>>> (btw noticed that the patches are also in
>>>>> .git/refs/patches/...
>>>>> however the guilt doc says:
>>>>> In Guilt, all the patches are stored in .git/patches/$branch/, where
>>>>> $branch ...
>>>>
>>>>
>>>>
>>>> That's an unmodified guilt, you can't commit and track the series if you
>>>> let guilt store information under .git, so I created a variable and
>>>> relocated it.
>>>>
>>>>
>>>>>
>>>>> Also tried to add a symlink from .git/patches to .git/refs/patches but
>>>>> that did not help either.
>>>>>
>>>>> Thanks for any suggestion!
>>>>
>>>>
>>>>
>>>> I can easily give you the raw git commands to make this work, but the
>>>> guilt
>>>> path is supposed to be the gentle entry to the process. We need to
>>>> diagnose what is happening .. and I need to see it happen in front of
>>>> me, so I can try a few things.
>>>>
>>>> Cheers,
>>>>
>>>> Bruce
>>>>
>>>
>>> Bruce,
>>>
>>> Thanks for your help.
>>> I'l try to make a small overlay based upon the standard de(throttling? Compression?, collecting?)nzil 7.0
>>> layer and send you the diffs.
>>> This will take a little bit of time as I want to verify here first
>>> that this still has the problem.
>>
>>
>> For anyone following along (all one of them), Frans and I have this
>> working now. It was a missing export of GUILT_BASE. I just sent a patch
>> to the list for it.
>>
>> Without that patch, here's what I did in devshell:
>>
>>
>> Here's a log of what I did in devshell:
>>
>>   >    export GUILT_BASE=meta
>>   >    guilt applied
>> links/files/lm75.patch
>> links/files/lm80.patch
>> links/files/mpc8313e-rdb-cardbus.patch
>> links/files/reboot.patch
>> links/files/eeprom.patch
>> links/files/do_mounts.patch
>>
>>   >    guilt push -f
>> Applying patch..links/files/max7311.patch
>> Checking patch drivers/gpio/max7311.c...
>> Checking patch drivers/gpio/Kconfig...
>> Hunk #2 succeeded at 199 (offset 63 lines).
>> Checking patch drivers/gpio/Makefile...
>> error: while searching for:
>> obj-$(CONFIG_GPIO_SX150X)       += sx150x.o
>> obj-$(CONFIG_GPIO_VX855)        += vx855_gpio.o
>> obj-$(CONFIG_GPIO_ML_IOH)       += ml_ioh_gpio.o
>>
>> error: patch failed: drivers/gpio/Makefile:42
>> Checking patch include/linux/max7311_gpio.h...
>> Applied patch drivers/gpio/max7311.c cleanly.
>> Applied patch drivers/gpio/Kconfig cleanly.
>> Applying patch drivers/gpio/Makefile with 1 rejects...
>> Rejected hunk #1.
>> Applied patch include/linux/max7311_gpio.h cleanly.
>> Patch applied.
>>
>>   >  <resolve conflict>  (I used wiggle), but it's a trivial fix
>>
>>   # guilt needs to know where the last commit is. When using guilt in
>>   # development mode, it does autotagging. But while doing a build it
>>   # doesn't. So we just tag the top:
>>   >  git tag standard/default/syrcxx_top
>>   >  guilt refresh
>> Patch links/files/max7311.patch refreshed
>>   >    cp meta/patches/standard/default/syrcxx/links/files/max7311.patch<your
>> layer>
>>   >    guilt push -a
>> File series fully applied, ends at patch links/files/max7311.patch
>>
>> Cheers,
>>
>> Bruce
>
> Bruce, thanks a lot for your help! Greatly appreciated!
>
> I've verified this at work and noticed that things are not exactly
> working as expected (although I was able to create a decent patch).
> The max7311.patch I have sent to you also creates a few new files.
> Apparently after a quilt refresh of my patch these new files do not
> appear in the patch any more (but files that are modified are
> updated). Guess this is because the new files are unknown to git.

Yes, that's a property of guilt. I used to carry a patch to git to
actually fix that behaviour, but I was since educated on the subtleties
about why it's better to have new files explicitly added by the
user before git (and hence guilt) will pick them up.

>
> It might be that it is better to add new files in a separate patch (or
> maybe even with something like file://xx.c)
> Not sure though as I am not an expert in this area.

When working with any rejected patch under git/guilt/git-am, I am now
in the habit of checking git status, git adding the files I want, and
then issuing the tag and guilt refresh. Scripts are great for this
as well.

That's my suggestion on how to deal with new files.

Cheers,

Bruce

>
> Frans.


