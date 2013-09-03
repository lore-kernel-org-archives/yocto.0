Return-Path: <opensource@keylevel.com>
Received: from r109.websiteservername.com (r109.websiteservername.com
	[65.39.128.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 23568E01358
	for <yocto@yoctoproject.org>; Tue,  3 Sep 2013 12:22:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=keylevel.com;
	s=default; 
	h=To:References:Message-Id:Content-Transfer-Encoding:Cc:Date:In-Reply-To:From:Content-Type:Mime-Version:Subject;
	bh=uYyUMBXJzwhxcpXVyim4iuF1+kTFisCUXCEbqr22KI8=; 
	b=DCBvN5nBTdnL/ptuJtjYb8Wqa1bD2bpx8GufVTZimVT1dCGHYIa7qEVvLei/7u6y7XvGk++dIi2Y+ajyspXdo65l483MXBWGDJ4rvct7dhnlTCDpzYPmyeB2Y+/XVFPdJAcWsuW+d+4u8QW1bGc3bMtWu3ZcuSikxSaA4eTriNo=;
Received: from [82.113.183.55] (port=53424
	helo=macbook-pro.crosscountrywifi.co.uk)
	by r109.websiteservername.com with esmtpa (Exim 4.80.1)
	(envelope-from <opensource@keylevel.com>)
	id 1VGwBE-002Lcp-Dx; Tue, 03 Sep 2013 20:22:25 +0100
Mime-Version: 1.0 (Apple Message framework v1283)
From: Chris Tapp <opensource@keylevel.com>
In-Reply-To: <52251F60.9060804@gna.org>
Date: Tue, 3 Sep 2013 20:22:22 +0100
Message-Id: <90830908-76F2-4548-97F1-E9BF53E16597@keylevel.com>
References: <52241C84.2090605@gna.org>
	<CAJTo0LZSkA5Gr4AkaFEAuG0irsLWfeUkO2jXmmBXHJ6qcaGN_w@mail.gmail.com>
	<522506F8.8060706@gna.org>
	<0C95222C-9247-4FDD-837C-83FB03A314AC@keylevel.com>
	<52251F60.9060804@gna.org>
To: Christian Gagneraud <chgans@gna.org>
X-Mailer: Apple Mail (2.1283)
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - r109.websiteservername.com
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - keylevel.com
X-Get-Message-Sender-Via: r109.websiteservername.com: authenticated_id:
	chris.tapp+keylevel.com/only user confirmed/virtual account not
	confirmed
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Server specs for a continuous integration system
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
X-List-Received-Date: Tue, 03 Sep 2013 19:22:27 -0000
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable


On 3 Sep 2013, at 00:29, Christian Gagneraud wrote:

> On 03/09/13 10:16, Chris Tapp wrote:
>> On 2 Sep 2013, at 22:45, Christian Gagneraud wrote:
>>=20
>>>=20
>>> On 03/09/13 00:35, Burton, Ross wrote:
>>>=20
>>> Hi Ross,
>>>=20
>>>> On 2 September 2013 06:05, Christian Gagneraud <chgans@gna.org> =
wrote:
>>>>> So right now, I'm thinking about:
>>>>> - CPU: Xeon E5, maybe 2 x E5-2670/90, for a total of 16 cores (32 =
threads)
>>>>> - Hard drives: 500GB, 1 TB or 2 TB (ideally with RAID if it can =
speed up the
>>>>> builds)
>>>=20
>>> RAID-5 seems to be what i am after.
>=20
> Hi Chris,
>=20
>> Isn't RAID-5 going to be slower, especially if it's software? RAID 1
>> is probably better as you'll potentially double the write speed to =
disk.
>> I use a couple of Vertex SSDs in RAID 1 giving a theoretical write =
speed
>> near to 1GBs. Write endurance is possibly a concern, but I've not had
>> any issues using them on a local build machine. I would probably look =
at
>> some higher end models if I was going to run a lot of builds. A lot =
less
>> noise than hard drives ;-)
>=20
> Thanks for the info, i will have a look at RAID-1, as you can see, I =
know absolutely nothing about RAID! ;)

Did you see my correction to this? I meant to say RAID 0. Sorry for the =
confusion.

> Does SSD really help with disk throughput? Then what's the point of =
using ramdisk for TMPDIR/WORKDIR? If you "fully" work in RAM, the disk =
bottleneck shouldn't be such a problem anymore (basically, on disk, you =
should only have your yocto source tree and your download directory?).

Running from RAM would be fastest - it really comes down to how much you =
have and how much you want to keep.

>=20
>>=20
>>>>> - RAM: i don't really know, maybe 8 or 16 GB or more?
>>>>=20
>>>> At least 16GB of RAM for the vast amount of disk cache that will =
give
>>>> you.  32GB or more will mean you can easily put the TMPDIR or =
WORKDIR
>>>> into a tmpfs (there's been discussion about this a few weeks ago).
>>>=20
>>> Yes, I remember that one now, well spotted!
>>>=20
>>>> I've 16GB of RAM and a 8GB tmpfs with rm_work was sufficient for
>>>> WORKDIR which gave a 10% speedup (and massive reduction on disk =
wear).
>>>=20
>>> I'm a bit surprise to see only a 10% speedup.
>>=20
>> I looked at this a while back on a quad core + hyper-threading
>> system(so 8 cores). Depending on what you're building, there are =
significant
>> periods of the build where even 8 cores aren't maxed out as there's =
not
>> enough on the ready list to feed to them - basically there are times
>> when you're not CPU, memory or I/O bound. I've estimated that being =
able
>> to max out the CPUs would cut 20-25% of the build time, but the
>> build-time dependencies mean this isn't easy/possible. At one point I
>> inverted the priority scheme used by the bitbake scheduler and it =
(very
>> surprisingly) made no difference to the overall build time!
>=20
> I have the same configuration here (4 cores, 8 threads), although, i =
didn't try to tweak bitbake, but i've noticed the same phenomenon as =
you: even with "aggressive" parallelism settings, the machine wasn't =
optimally loaded over time.
>=20
>>=20
>> I ran builds with 16 threads and 16 parallel makes and the peak
>> memory usage I see is something like 8GB during intensive
>> compile/link phases, so 16GB for RAM and tmpfs sounds like a
>> reasonable minimum. The tmpfs would reduce SSD wear quite a bit ;-)
>=20
> The quantity of RAM boils down to the budget, after a (very) quick =
search, i have estimated the cost of 64GB of RAM to be 1500 to 2000 US$.

That sounds high - I generally get 16GB DDR 1600 for less that 150 US$ - =
it was quite a bit lower a year back!

>=20
> Thanks.
> Chris
>=20
>=20
>>=20
>>>=20
>>>>  Others have machines with 64GB RAM and use it for all of TMPDIR, =
at
>>>> which point you'll be almost entirely CPU-bound.
>>>=20
>>> OK, so 16GB sounds like a minimum, 32GB or 64GB being even better, =
at that size, this is not that cheap...
>>>=20
>>> Thanks,
>>>=20
>>> Chris
>>>=20
>>>>=20
>>>> Ross
>>>>=20
>>>=20
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>>=20
>> Chris Tapp
>>=20
>> opensource@keylevel.com
>> www.keylevel.com
>>=20
>>=20
>>=20
>=20

Chris Tapp

opensource@keylevel.com
www.keylevel.com




