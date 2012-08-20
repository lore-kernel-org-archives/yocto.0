Return-Path: <jefro.net@gmail.com>
Received: from mail-yw0-f48.google.com (mail-yw0-f48.google.com
	[209.85.213.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8C37DE0027F;
	Mon, 20 Aug 2012 15:43:14 -0700 (PDT)
Received: by yhfq46 with SMTP id q46so6794272yhf.35
	for <multiple recipients>; Mon, 20 Aug 2012 15:43:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:date
	:x-google-sender-auth:message-id:subject:from:to:cc:content-type;
	bh=x3HP0ylASIxmbYqjvj8rdAXqo1tx6ykgrfxiSVTGD0I=;
	b=UkxMyBTYpZFbmm9NJUnW976aIGmJS5RyF1G9+7tv/jHI+ZpuzwA/dikAZFUjdDNuwk
	UqxhccDsa90nM2qyfALFuG26b47LdSyDoUUXQLkiL4sgxVqYSwI8uXexxY3jurb7bmMX
	CLmsUlwEbESv2lUv1NpsIWmqDGoqmxadcjPeoYU8v23O/UqSDNvFHSGa6OLmYHq259EP
	2pjpbUSU3mLyK8604+/e20xtvo9USUhjayZ2UapVH9mY+r2hZzcexdHyE6gT4e6ALTvI
	Iuegbjd0e2tBXusRt2YcGL8xNhYBT0/Ym5borTifyoZSc4cvjHv8ruyhqeiPgPaU9KbJ
	/kcQ==
MIME-Version: 1.0
Received: by 10.50.46.170 with SMTP id w10mr11234512igm.44.1345502593408; Mon,
	20 Aug 2012 15:43:13 -0700 (PDT)
Sender: jefro.net@gmail.com
Received: by 10.64.50.231 with HTTP; Mon, 20 Aug 2012 15:43:13 -0700 (PDT)
In-Reply-To: <5032BC26.3040507@linux.intel.com>
References: <5032855A.5050704@linux.intel.com>
	<289CD940EE567444BB43E62E0C3028F329137C29@NA-MBX-02.mgc.mentorg.com>
	<5032B285.6010903@yoctoproject.org>
	<5032B4E3.2000701@linux.intel.com>
	<CA+YB3raLRHtC_=oBsZBV2yAxEfLUaGp55US5inias1Fkbwv+gw@mail.gmail.com>
	<5032BC26.3040507@linux.intel.com>
Date: Mon, 20 Aug 2012 15:43:13 -0700
X-Google-Sender-Auth: PsLr3dIQacniUG2pqRJLnhDjgU8
Message-ID: <CA+YB3rbgN8L_U7VznPNcSpX3dja4KbkjaePQt305KGmyV5eFkg@mail.gmail.com>
From: Jeff Osier-Mixon <jefro@jefro.net>
To: Darren Hart <dvhart@linux.intel.com>
Cc: Yocto Project <yocto@yoctoproject.org>, "Wold, Saul" <saul.wold@intel.com>,
	Jason Kridner <jdk@ti.com>, Paul Eggleton <paul.eggleton@linux.intel.com>
Subject: Re: Documenting the mailing lists.
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
X-List-Received-Date: Mon, 20 Aug 2012 22:43:14 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Mon, Aug 20, 2012 at 3:37 PM, Darren Hart <dvhart@linux.intel.com> wrote:
> On 08/20/2012 03:18 PM, Jeff Osier-Mixon wrote:
>> The mailing lists and website stuff is generally my responsibility,
>> but please fix anything you like. :)  Be aware that the new website is
>
> No intent to take over anything, I've just had to answer the "what goes
> where" question a few too many times these last couple of weeks and felt
> I should do something about it :-)

Oh, I'm not joking - please fix anything you want! or Scott or I can
do it. Thanks for getting the ball rolling. I'll catch up on this
thread.

> I made sure you were on CC so you could help guide this.
>
>> under construction, so I am loathe to change much on the old website
>> at this point.  For the new one, it may be possible to dynamically
>> grab the description from mailman.
>
> We'll still need descriptions of the non-yocto-project lists, so that
> may not be particularly helpful.

The only YP-related, non-YP lists I currently track are
openembedded-core and bitbake-devel.  Both are OE lists, and I have
recently volunteered to help admin, so can make sure they have valid
Descriptions. If there are other lists we should track, please let me
know and I'll add them to the pile.

>
> --
> Darren
>
>>
>> On Mon, Aug 20, 2012 at 3:06 PM, Darren Hart <dvhart@linux.intel.com> wrote:
>>>
>>>
>>> On 08/20/2012 02:56 PM, Michael Halstead wrote:
>>>> On 08/20/2012 02:40 PM, Hudson, Sean wrote:
>>>>>> -----Original Message-----
>>>>>> From: Darren Hart [mailto:dvhart@linux.intel.com]
>>>>>> Sent: Monday, August 20, 2012 1:44 PM
>>>>>> To: Yocto Project
>>>>>> Subject: Documenting the mailing lists.
>>>>>
>>>>> Proposed:
>>>>> =========
>>>>> shoeleather  Neutral Board Lab Mailing List
>>>>>
>>>>> I'm not sure what "neutral" is meant to convey. How about:
>>>>>
>>>>>              Discussion list for the Shoeleather embedded board lab
>>>>> [Hudson, Sean] Sounds good to me.
>>>>>
>>>>>
>>>> I've updated the description at https://lists.yoctoproject.org/
>>>>
>>>
>>> Thanks Michael, let's hold off on any additional changes until we've
>>> been able to agree on the entire set, as we want to keep language,
>>> tense, etc. consistent. No need to change them multiple times.
>>>
>>> --
>>> Darren Hart
>>> Intel Open Source Technology Center
>>> Yocto Project - Technical Lead - Linux Kernel
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>>
>>
>>
>
> --
> Darren Hart
> Intel Open Source Technology Center
> Yocto Project - Technical Lead - Linux Kernel



-- 
Jeff Osier-Mixon http://jefro.net/blog
Yocto Project Community Manager @Intel http://yoctoproject.org

