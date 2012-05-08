Return-Path: <fransmeulenbroeks@gmail.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 42892E01396
	for <yocto@yoctoproject.org>; Tue,  8 May 2012 00:18:55 -0700 (PDT)
Received: by pbbrq8 with SMTP id rq8so10136945pbb.35
	for <yocto@yoctoproject.org>; Tue, 08 May 2012 00:18:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=d+KYV+JgdFL4fBdDmgBXj1bC+juFYc+06T4HdNzvy3Y=;
	b=WbgTiSv7cePvVdNny3GHD+7nlRaueNGbHoT0WmXKoCMIjrhqDdIqaPTV4G7HXe0Kc5
	GgJgo632KpSDIjG5t2LLiWJWzv6JzPDb/KtmrL6sqYPJ4PEzdK0oThV7y4Wk2VropF6l
	5fBytqIf+2oyY7aSIlVJ2jAA8aWsyFyYE81AcmUt4RIrLei4lppbY9f9OdEUKo/KeEqy
	F9+ZeMv6KcA/tXTQ9dra6WrAJBRHK9CMNBtT7s1+Q1bXx6MgsvaoHLid00O6nRFVIfb/
	8XHRFqAImnpMH4Qv3bYIAh78bBbC6mzlv+82XLQmFadr6EXvXE/1fMoKJgMckvjG/nHK
	BRYA==
MIME-Version: 1.0
Received: by 10.68.202.8 with SMTP id ke8mr19574679pbc.94.1336461535106; Tue,
	08 May 2012 00:18:55 -0700 (PDT)
Received: by 10.68.48.164 with HTTP; Tue, 8 May 2012 00:18:54 -0700 (PDT)
In-Reply-To: <4FA82443.10001@windriver.com>
References: <CACW_hTacgFqj2NQZ4aNuN5WBm2R9Ge3NS25XVJTKjmKm6spHKw@mail.gmail.com>
	<4FA7E0DB.7050508@windriver.com>
	<CACW_hTZj8W-eS0+3GzELu1J_kTww1dgLB4a17bvYtcmZ77ymaQ@mail.gmail.com>
	<4FA82443.10001@windriver.com>
Date: Tue, 8 May 2012 09:18:54 +0200
Message-ID: <CACW_hTbZze5nfCsuy097zUmyEs=0s6HT=y-q9af5fFd150bJRg@mail.gmail.com>
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
X-List-Received-Date: Tue, 08 May 2012 07:18:55 -0000
Content-Type: text/plain; charset=ISO-8859-1

2012/5/7 Bruce Ashfield <bruce.ashfield@windriver.com>:
> On 12-05-07 03:29 PM, Frans Meulenbroeks wrote:
>>
>> 2012/5/7 Bruce Ashfield<bruce.ashfield@windriver.com>:
>>>
>>> On 12-05-07 10:41 AM, Frans Meulenbroeks wrote:
>>>>
>>>>
>>>> Hi all,
>>>>
>>>> Not sure what the best place is to mail this (the YP list or oe-core
>>>> or oe-devel or ...)
>>>> Apologies if this is the wrong place.
>>>>
>>>> The problem I'm facing is the following:
>>>> I have a kernel with some additional drivers that are not upstreamed
>>>> because they are very specifc.
>>>> I'm moving from oe-classic to denzil and from 2.6.38 to 3.2.
>>>> Now some of the patches do not apply any more.
>>>> In oe-classic I would have gone to the kernel work dir, fix the issue,
>>>> do a quilt refresh and copy the patch back (there is a patch that
>>>> contains our driver)
>>>> However, denzil uses guilt instead of quilt
>>>>
>>>> If I do a devshell of virtual/kernel and want to do with guilt what I
>>>> used to do with quilt I run into a problem.
>>>> guilt status says: Patches directory does not exist, try guilt-init
>>>> and indeed there is no patches dir like there was in oe-classic
>>>
>>>
>>>
>>> Do you have guilt installed locally ? You are likely using the
>>> native guilt. To keep patch lists separate on a per-branch basis
>>> and to be able to capture them on th meta-branch, there are some
>>> patches to guilt that move the patch directory location.
>>
>>
>> Guilt natively complained about a mismatch with the git version (my
>> work system is still ubuntu 10.04).
>> If I do a bitbake -c devshell virtual/kernel and use guilt there, I
>> get the error on the patches directory that I mentioned above.
>> It was my idea that I then would get the oe version in my path but I
>> did not really verify that. Then again under devshell I did not get
>> complaints about the git version. Will verify this tomorrow (I have no
>> access to the build system from here).
>>>
>>>
>>> Are you working on top of linux-yocto-3.2 ? Or some other 3.2 tree ?
>>
>>
>> I downloaded the denzil tarball from yoctoproject.com. I made some
>> config changed and added a few local patches (bringing things over
>> from my 2.6.38 oe-classic kernel).
>>
>> Should I have gotten a patches dir in my tmp/work/mymachine/linux* dir
>> (I have my own machine mpc8313e based)
>
>
> The patches are pulled underneath the kernel tree itself, so that
> they can be incorporated with other git manipulations of the tree
> and shared as appropriate.
>
> So the patches directory exists in ${S}/meta/patches/$branch_name
>
Ok found that dir. However....
It is still not clear to me how to use this though.

What I did was start a devshell for virtual/kernel.
Within the devshell guilt is in the path, but still it does not work
(I also tried invoking guilt with the full path).
From my devshell window:

frans@frans-desktop:~/poky-denzil-7.0-build/tmp/work/syrcxx-poky-linux-uclibc/linux-yocto-3.2.11+git1+b14a08f5c7b469a5077c10942f4e1aec171faa9d_1+01e948c2bdf7f5ad9f2b30047a8d3493a1a2880a-r1.23/linux$
which guilt
/home/frans/poky-denzil-7.0-build/tmp/sysroots/x86_64-linux/usr/bin/guilt
frans@frans-desktop:~/poky-denzil-7.0-build/tmp/work/syrcxx-poky-linux-uclibc/linux-yocto-3.2.11+git1+b14a08f5c7b469a5077c10942f4e1aec171faa9d_1+01e948c2bdf7f5ad9f2b30047a8d3493a1a2880a-r1.23/linux$
/home/frans/poky-denzil-7.0-build/tmp/sysroots/x86_64-linux/usr/bin/guilt
status
Patches directory doesn't exist, try guilt-init

This is with the standard denzil 7.0 release.

I've also been to the meta/patches dir and tried guilt status in there
but to no avail.
(or should I have manually made a symlink or so

Not sure what I am doing wrong.
Is there a small example or some doc on how to do this? or can someone
give a few commands that would show how to modify an existing patch
(or create a new one) with patch?
(btw noticed that the patches are also in
.git/refs/patches/...
however the guilt doc says:
In Guilt, all the patches are stored in .git/patches/$branch/, where $branch ...

Also tried to add a symlink from .git/patches to .git/refs/patches but
that did not help either.

Thanks for any suggestion!
Frans

