Return-Path: <ajlennon@dynamicdevices.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CB89AE00C35; Sun, 10 Sep 2017 12:31:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,LOTS_OF_MONEY,
	SPF_HELO_PASS,T_MONEY_PERCENT autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 LOTS_OF_MONEY Huge... sums of money
	*  0.0 T_MONEY_PERCENT X% of a lot of money for you
Received: from www.dynamicdevices.co.uk (www.dynamicdevices.co.uk
	[89.200.136.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EBAC5E00C44
	for <yocto@yoctoproject.org>; Sun, 10 Sep 2017 12:31:27 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by www.dynamicdevices.co.uk (Postfix) with ESMTP id A444F861B2;
	Sun, 10 Sep 2017 19:31:26 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at lennoab2.miniserver.com
Received: from www.dynamicdevices.co.uk ([127.0.0.1])
	by localhost (www.dynamicdevices.co.uk [127.0.0.1]) (amavisd-new,
	port 10024)
	with ESMTP id PP9cUgHI_5E7; Sun, 10 Sep 2017 19:31:16 +0000 (UTC)
Received: from [127.0.0.1] (unknown [92.232.58.145])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by www.dynamicdevices.co.uk (Postfix) with ESMTPSA id 18427860E1;
	Sun, 10 Sep 2017 19:31:16 +0000 (UTC)
To: Mark Hatle <mark.hatle@windriver.com>,
	Usman Haider <usmanhaider89@gmail.com>, yocto@yoctoproject.org
References: <CANxWOTbROX_e50FqD_oV9=3KTnxHik2jgDP98rRWq2A09QaNeg@mail.gmail.com>
	<df26f444-d0f3-ec02-49a3-bc565b175afa@windriver.com>
	<ea868d42-c5e1-3fa4-8c7d-f0775d941453@dynamicdevices.co.uk>
	<f6204bba-ab19-c34f-ee9a-498781e2473d@windriver.com>
From: Alex Lennon <ajlennon@dynamicdevices.co.uk>
Message-ID: <73a79c9a-d9cb-825d-ac1b-340edd07dc5a@dynamicdevices.co.uk>
Date: Sun, 10 Sep 2017 20:31:13 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:52.0) Gecko/20100101
	Thunderbird/52.3.0
MIME-Version: 1.0
In-Reply-To: <f6204bba-ab19-c34f-ee9a-498781e2473d@windriver.com>
Subject: Re: Suitable machine for yocto
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sun, 10 Sep 2017 19:31:30 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-GB



On 10/09/2017 19:17, Mark Hatle wrote:
> On 9/10/17 11:14 AM, Alex Lennon wrote:
>>
>> On 10/09/2017 17:06, Mark Hatle wrote:
>>> On 9/10/17 2:00 AM, Usman Haider wrote:
>>>> Hi,
>>>>
>>>> Can someone please recommend some good machine for yocto environment and
>>>> building sdks. I am interested in RAM, hard disk space, processor.
>>> You want fast I/O, as much RAM and as many (fast) cores as you can afford.  I
>>> don't think there is a single answer as what is 'best'.  It also depends on
>>> which Yocto Project versions, and which layers you are using as to which
>>> combination is best.
>>>
>>> I run builds on my laptop, 4-core/8-thread & SSD and 16 GB of ram from a few
>>> years ago.  It's fast, but I wouldn't want to do all of my development on it.
>>>
>>> I've had 8-core/16-thread (32GB ram/standard disk), 16-core/32-thread (72GB
>>> ram/SAS-3 RAID), 24-core/48-thread (64GB ram/SATA - software RAID), 72-core/144
>>> thread (256 GB ram/hardware raid/SAS-3), and recently upgraded to
>>> 96-core/192-thread (256 GB ram/hardware raid/SAS-3).
>>>
>>> I would not go below quad-core (8-thread) myself.  You can get a quad core, good
>>> quality machine for $1000 or less these day.  If you move up to the larger
>>> machines, you can even be able to get to a 24-core for less then $5000.  By the
>>> time you get to 96-core and all of the googles you are likely talking $50000 or
>>> more.
>>>
>>> By clock raid, the 24-core machine is the fastest..  While the 96-core monster
>>> can do the builds the quickest.  But when you figure out cost/performance/etc..
>>> the 24-core is probably the best performance per dollar, and with adequate RAM
>>> (I'd say at least 64GB if not 128GB), and fast I/O you'll probably get the
>>> lowest price for the best performance in that category.
>>>
>>> If you need sheer speed and price is no option, then the (4 CPU w/ 24 core each)
>>> 96-core monster (or even better) is what you want to go with.  256GB ram would
>>> be a minimum with that configuration (I'm not sure if more is actually helpful,
>>> I rarely end up in swap -- but I go get into situations where more then 50% of
>>> ram is used.)  With that many cores, disk I/O starts to become obvious.  So
>>> faster the better... SSDs would be the fastest, but of course the most expensive.
>>>
>>> If your employer is paying for the machine, you may be able to get a better then
>>> normal machine by explaining how much time a faster machine will save and how
>>> comparing to your salary a machine is inexpensive.  (If you are a contractor or
>>> student, that changes of course.)  :)
>>>
>>> So my point is really, figure out how much money you have to spend.  My rule of
>>> thumb is roughly:
>>>
>>> 1) Buy as many cores as you can.  Try to get a CPU that has Hyperthreading or
>>> equivalent to double the effective core count.  Fastest processing speed helps
>>> in repetitive cases vs full system builds.
>>>
>>> So if the choice is a 24 core @ 2.2GHz vs 22 core @ 2.5, I'd probably go with
>>> the 22-core.  While if it was 24 core @ 2.2GHz vs 8 core @ 4.2 GHz, I'd go with
>>> the 24 core.
>>>
>>> 2) Try to get at least 1 GB of ram per thread (2 GB per core..)  You can cut
>>> back on the ram (if necessary) once you hit 72 threads or so.   (72 threads
>>> right now seems to cover most of the parallelization in a full system build.
>>> There are points in the system where it can parallelize MUCH more, but they are
>>> fairly rare.)
>>>
>>> 3) You need fast disks.  Software RAID works fine, but you likely need to buy at
>>> least a couple of disk to boost performance.  SSDs are fast, but lots of builds
>>> take space, so fast SATA or even better SAS drives are the best performance per
>>> cost.
>> This brings to mind a related question I keep coming back to as to the
>> economics of a docker (or similar) image running a fast Yocto build in
>> the cloud.
>>
>> i.e. set config params -> bring up server image on plaform A/B/C ->
>> perform build taking time X/Y/Z -> store output images -> bring down
>> server  == $ ?
>>
>> I find myself asking what the optimal cost per-build would be using this
>> approach...
> I helped someone do some very -preliminary- figured a few years ago.  The
> processing was 'cheap', but between storage and network transfer costs.. it was
> cheaper to buy a reasonable machine.. payback time was only a few months.
>
> (cloud 'storage' is often very slow as well, because there are expectations of
> migration and things like that.)
>
> So as of a few years ago at least, the economics didn't factory the cloud -- yet.
>
>

Yeah that is more or less my thinking. Although I do imagine that if a 
source mirror on an internal network leg could be set up then that might 
significantly reduce chargeable network b/w...

Cheers,

Alex


