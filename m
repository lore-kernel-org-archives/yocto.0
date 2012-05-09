Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9FF59E013FF
	for <yocto@yoctoproject.org>; Wed,  9 May 2012 07:40:16 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail1.windriver.com (8.14.3/8.14.3) with ESMTP id q49EeFsF023495
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 9 May 2012 07:40:15 -0700 (PDT)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Wed, 9 May 2012 07:40:15 -0700
Message-ID: <4FAA81CE.3050601@windriver.com>
Date: Wed, 9 May 2012 10:40:14 -0400
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
	<4FAA7BDE.10808@windriver.com>
	<CACW_hTZ=VNBcsX+LjcVpk+pOL9UhFqE1fzBiPg3uG+J_wsHg+A@mail.gmail.com>
In-Reply-To: <CACW_hTZ=VNBcsX+LjcVpk+pOL9UhFqE1fzBiPg3uG+J_wsHg+A@mail.gmail.com>
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
X-List-Received-Date: Wed, 09 May 2012 14:40:16 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 12-05-09 10:27 AM, Frans Meulenbroeks wrote:
> 2012/5/9 Bruce Ashfield<bruce.ashfield@windriver.com>:
>> On 12-05-09 10:11 AM, Frans Meulenbroeks wrote:
>>>
>
>>>
>>>
>>> Bruce, thanks a lot for your help! Greatly appreciated!
>>>
>>> I've verified this at work and noticed that things are not exactly
>>> working as expected (although I was able to create a decent patch).
>>> The max7311.patch I have sent to you also creates a few new files.
>>> Apparently after a quilt refresh of my patch these new files do not
>>> appear in the patch any more (but files that are modified are
>>> updated). Guess this is because the new files are unknown to git.
>>
>>
>> Yes, that's a property of guilt. I used to carry a patch to git to
>> actually fix that behaviour, but I was since educated on the subtleties
>> about why it's better to have new files explicitly added by the
>> user before git (and hence guilt) will pick them up.
>>
>>
>>>
>>> It might be that it is better to add new files in a separate patch (or
>>> maybe even with something like file://xx.c)
>>> Not sure though as I am not an expert in this area.
>>
>>
>> When working with any rejected patch under git/guilt/git-am, I am now
>> in the habit of checking git status, git adding the files I want, and
>> then issuing the tag and guilt refresh. Scripts are great for this
>> as well.
>>
>> That's my suggestion on how to deal with new files.
>>
>> Cheers,
>>
>> Bruce
>>
>
> Seems like a decent flow to me.
> Actually I probably rework my patch to indeed add the new files
> separately as files.
>
> The good news is that after this exercise my kernel with most of the
> patches added builds and works!
> Only issue left seems to be 3 new locally added drivers that refer to
> of_register_platform_driver and of_unregister_platform_driver
> This used to be there in 2.6.38 but has been removed in (iirc) 2.6.39.
> Guess I can/have to sort this out....

If you can't get it working, give a shout, there's a few ppc guys around
that we can ping :)

>
> Best regards, Frans.
>
> PS: probably we should in the wiki or manual or so have some howto's
> to describe common tasks like the above one (the making of the kernel
> patch that is).

Definitely. I've got a set of things I'll be documenting for the 1.3
release as part of the stabilization, fit and finish theme. This is
one of them.

This was a good reminder of the gap :)

Cheers,

Bruce





