Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 87D0AE01206
	for <yocto@yoctoproject.org>; Wed, 16 May 2012 05:55:51 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id q4GCtmt6003010
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 16 May 2012 05:55:49 -0700 (PDT)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Wed, 16 May 2012 05:55:48 -0700
Message-ID: <4FB3A3D1.8060909@windriver.com>
Date: Wed, 16 May 2012 08:55:45 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:12.0) Gecko/20120430 Thunderbird/12.0.1
MIME-Version: 1.0
To: Tomas Frydrych <tf+lists.yocto@r-finger.com>
References: <EE688041-FB89-4D1A-AE38-8DFF617C244D@keylevel.com>
	<4FB21EBC.1000106@r-finger.com> <4FB279CC.1080503@windriver.com>
	<4FB29419.7070302@r-finger.com> <4FB29B74.3090105@windriver.com>
	<4FB35B59.6000605@r-finger.com>
In-Reply-To: <4FB35B59.6000605@r-finger.com>
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
X-List-Received-Date: Wed, 16 May 2012 12:55:51 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 12-05-16 03:46 AM, Tomas Frydrych wrote:
> Hi Bruce,
>
> On 15/05/12 19:07, Bruce Ashfield wrote:
>> On 12-05-15 01:36 PM, Tomas Frydrych wrote:
>>> Let me turn this question back at you then: is Yocto going to be doing
>>> thorough Q&A for all of these HW platforms? Decent Q&A is what really
>>> sets Yocto apart, and what makes it my first port of call, but I got a
>>> feeling that the scope of this is at the moment somewhat restricted as
>>> far as HW is concerned; without Q&A 'fixes' quickly turn into problems
>>> -- I'd rather be pulling kernel from somewhere that deals with the
>>> specific HW that pick up generic fixes without the Q&A.
>>
>> I spend all day every day working with targets across the spectrum of
>> arch and use case, with plenty of drivers and core infrastructure
>> in common, so those sorts of changes being monitored and being included
>> are definitely in place.
>
> Cool, but a developer working with targets does not really qualify as
> QA. QA implies testing that culminates in a formal release.

ok, I'll agree that one person's QA is another person's boot test :)
I was more meaning, unit, device testing. Performing full QA across
several machines that share an architecture and common code is something
that I've been trying to reduce for some time now.

And what I mean by that, is that machine/BSP testing should at some
level rely on the results from other arch testing (posix, ltp, etc)
being transitive to that machine. That allows the BSP testing to
focus on the drivers and configuration that are unique to the board.

When I was writing this, I was thinking of someone, anyone, running
their normal use cases with the board. Those cases + architecture
generic QA gets you a long way to full QA.

>
>
>> As for hardware specific QA, the yocto project itself runs QA on targets
>> that we've tagged as a hardware reference. The raspberry pi is one that
>> I've been considering as a new reference, so if that was the case, it would
>> get extra coverage.
>
> It is certainly an interesting / high profile enough board to be of
> interest to Yocto as a project I think.
>
>
>> That being said, it obviously doesn't scale that just because we align
>> on a kernel version, set of features, base configuration, etc, that
>> the yocto project itself would run machine/BSP specific QA. That would
>> be a place where interested parties would already be doing QA,
>
> This is where it becomes problematic. Interested parties simply cannot
> be relied on doing QA, that was pretty much why Poky came to be (BTW,
> 'git tag' provides a rudimentary insight into project QA mentality; the
> absence of release tags invariably means no QA worth mentioning and pain
> in store ... an interesting exercise when it comes to meta-*).

Agreed. That's why having a set of references boards, and extended
references boards is key. That way at least some testing and quality
is in place, even if not perfect.

>
> So, if meta-yocto contains machine/<somemachine>.conf I expect
> meta-yocto to be providing quality assured images for<somemachine>. If
> Yocto can't do that, I question the value of including it at all.

I don't disagree. I just think that having even a common base, or
common kernel version removes some of the duplication of effort,
even if it doesn't take us all the way to a full QA .. since scaling
to that for hundreds of boards might be difficult (and the 'might'
is meant to be understated :).

>
>
> But that aside, I'd very much recommend that the RPI kernel for
> meta-rasberrypi to be based on the Yocto kernel tree; as a Yocto user,
> rather than a kernel developer, the whole config fragment machinery
> provides a very clean and controlled way of managing the kernel and is
> really nice to work with. :-)

It's a start!

Cheers,

Bruce

>
> Tomas
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


