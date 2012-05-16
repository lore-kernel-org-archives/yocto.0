Return-Path: <tf+lists.yocto@r-finger.com>
Received: from r-finger.com (r-finger.com [178.79.160.5])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E1DB0E01206
	for <yocto@yoctoproject.org>; Wed, 16 May 2012 00:46:40 -0700 (PDT)
Received: from [192.168.0.2] (host86-170-61-246.range86-170.btcentralplus.com
	[86.170.61.246]) (using TLSv1 with cipher AES256-SHA (256/256 bits))
	(No client certificate requested)
	by r-finger.com (Postfix) with ESMTPSA id 2B0CA60E52
	for <yocto@yoctoproject.org>; Wed, 16 May 2012 08:46:40 +0100 (BST)
Message-ID: <4FB35B59.6000605@r-finger.com>
Date: Wed, 16 May 2012 08:46:33 +0100
From: Tomas Frydrych <tf+lists.yocto@r-finger.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0.3) Gecko/20120329 Icedove/10.0.3
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <EE688041-FB89-4D1A-AE38-8DFF617C244D@keylevel.com>
	<4FB21EBC.1000106@r-finger.com> <4FB279CC.1080503@windriver.com>
	<4FB29419.7070302@r-finger.com> <4FB29B74.3090105@windriver.com>
In-Reply-To: <4FB29B74.3090105@windriver.com>
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
X-List-Received-Date: Wed, 16 May 2012 07:46:41 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi Bruce,

On 15/05/12 19:07, Bruce Ashfield wrote:
> On 12-05-15 01:36 PM, Tomas Frydrych wrote:
>> Let me turn this question back at you then: is Yocto going to be doing
>> thorough Q&A for all of these HW platforms? Decent Q&A is what really
>> sets Yocto apart, and what makes it my first port of call, but I got a
>> feeling that the scope of this is at the moment somewhat restricted as
>> far as HW is concerned; without Q&A 'fixes' quickly turn into problems
>> -- I'd rather be pulling kernel from somewhere that deals with the
>> specific HW that pick up generic fixes without the Q&A.
> 
> I spend all day every day working with targets across the spectrum of
> arch and use case, with plenty of drivers and core infrastructure
> in common, so those sorts of changes being monitored and being included
> are definitely in place.

Cool, but a developer working with targets does not really qualify as
QA. QA implies testing that culminates in a formal release.


> As for hardware specific QA, the yocto project itself runs QA on targets
> that we've tagged as a hardware reference. The raspberry pi is one that
> I've been considering as a new reference, so if that was the case, it would
> get extra coverage.

It is certainly an interesting / high profile enough board to be of
interest to Yocto as a project I think.


> That being said, it obviously doesn't scale that just because we align
> on a kernel version, set of features, base configuration, etc, that
> the yocto project itself would run machine/BSP specific QA. That would
> be a place where interested parties would already be doing QA,

This is where it becomes problematic. Interested parties simply cannot
be relied on doing QA, that was pretty much why Poky came to be (BTW,
'git tag' provides a rudimentary insight into project QA mentality; the
absence of release tags invariably means no QA worth mentioning and pain
in store ... an interesting exercise when it comes to meta-*).

So, if meta-yocto contains machine/<somemachine>.conf I expect
meta-yocto to be providing quality assured images for <somemachine>. If
Yocto can't do that, I question the value of including it at all.


But that aside, I'd very much recommend that the RPI kernel for
meta-rasberrypi to be based on the Yocto kernel tree; as a Yocto user,
rather than a kernel developer, the whole config fragment machinery
provides a very clean and controlled way of managing the kernel and is
really nice to work with. :-)

Tomas

