Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2C729E01408
	for <yocto@yoctoproject.org>; Tue, 15 May 2012 11:07:54 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail1.windriver.com (8.14.3/8.14.3) with ESMTP id q4FI7pQ0000596
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 15 May 2012 11:07:51 -0700 (PDT)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Tue, 15 May 2012 11:07:51 -0700
Message-ID: <4FB29B74.3090105@windriver.com>
Date: Tue, 15 May 2012 14:07:48 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:12.0) Gecko/20120430 Thunderbird/12.0.1
MIME-Version: 1.0
To: Tomas Frydrych <tf+lists.yocto@r-finger.com>
References: <EE688041-FB89-4D1A-AE38-8DFF617C244D@keylevel.com>
	<4FB21EBC.1000106@r-finger.com> <4FB279CC.1080503@windriver.com>
	<4FB29419.7070302@r-finger.com>
In-Reply-To: <4FB29419.7070302@r-finger.com>
Cc: yocto@yoctoproject.org
Subject: Re: Raspberry Pi [was Re: Kernel modules fail to compile for ARM]
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
X-List-Received-Date: Tue, 15 May 2012 18:07:54 -0000
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit

On 12-05-15 01:36 PM, Tomas Frydrych wrote:
> Hi Bruce,
>
> On 15/05/12 16:44, Bruce Ashfield wrote:
>> On 12-05-15 05:15 AM, Tomas Frydrych wrote:
>>> On 14/05/12 19:52, Chris Tapp wrote:
>>>> I'm trying to put a BSP together for an ARM system (Raspberry Pi,
>>>> ARM1176JZF-S CPU).
>>>
>>> I got the feeling that there might be multiple OE/RPI efforts going on
>>> at the same time unaware of each other, e.g., I noticed this
>>> meta-raspberrypi layer on github that seems to be well on the way,
>>> https://github.com/djwillis/meta-raspberrypi ... perhaps getting various
>>> folk interested in this together would be beneficial.
>>
>> I'll jump in and ask my obvious question, if we want to pull in some
>> extra BSP/kernel developers, is there a fundamental reason why a
>> different kernel/kernel version than one of the linux-yocto ones is
>> being used ?
>>
>> If you line up with one of those, there's a chance to pickup fixes,
>> features and have someone like me help maintain things where it
>> makes sense.
>
> Let me turn this question back at you then: is Yocto going to be doing
> thorough Q&A for all of these HW platforms? Decent Q&A is what really
> sets Yocto apart, and what makes it my first port of call, but I got a
> feeling that the scope of this is at the moment somewhat restricted as
> far as HW is concerned; without Q&A 'fixes' quickly turn into problems
> -- I'd rather be pulling kernel from somewhere that deals with the
> specific HW that pick up generic fixes without the Q&A.

I spend all day every day working with targets across the spectrum of
arch and use case, with plenty of drivers and core infrastructure
in common, so those sorts of changes being monitored and being included
are definitely in place.

As for hardware specific QA, the yocto project itself runs QA on targets
that we've tagged as a hardware reference. The raspberry pi is one that
I've been considering as a new reference, so if that was the case, it would
get extra coverage.

That being said, it obviously doesn't scale that just because we align
on a kernel version, set of features, base configuration, etc, that
the yocto project itself would run machine/BSP specific QA. That would
be a place where interested parties would already be doing QA, so doing
that on top of the QA's arch and general base would be logical/incremental.
Rather than something completely different which isn't incremental at
all.

Cheers,

Bruce

>
> (Though admittedly working with some silicon vendors specific meta
> layers can be real PITA :) ).
>
> Tomas


