Return-Path: <chgans@googlemail.com>
Received: from mail-pa0-f44.google.com (mail-pa0-f44.google.com
	[209.85.220.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A54C6E01420
	for <yocto@yoctoproject.org>; Mon,  2 Sep 2013 16:29:40 -0700 (PDT)
Received: by mail-pa0-f44.google.com with SMTP id fz6so5682174pac.17
	for <yocto@yoctoproject.org>; Mon, 02 Sep 2013 16:29:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20120113;
	h=sender:message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=3Or3w92Noc61kSItODSWjSj0JKHZviav4OuFIs3Vzm0=;
	b=Zm0cgaVtjud7Mr1cIefsMo6tvUEJCQS6hSc/gbg4QJ1Oumt+tmv1zk4wnFpREOKTUM
	N2Oz7x9Bjr/iyU5JL5+LtuZqewjMbruEYIdfF7IceS6RAF+aGtA17XjMfrGZ/0BEiYHy
	NbZtVH6khislnY1wdrpqp9ib6GvbDN5ozaFyGQzg3Ry1JyDa22DW8CfrJ1BspesaxK7L
	kWX1QmZXlBuakNjgmXY9cKhw9sgQX4+OdqvQKOf5Ygt661qWkw4Jo9HyPsvjTtOKNeWj
	XzjPARgGbpGEucTDkl19uJ53FLKH1jkNdQF4jLAEynerDBajxSjbM2+O41s5LyFVw7Me
	lJIA==
X-Received: by 10.66.145.166 with SMTP id sv6mr28362694pab.31.1378164580159;
	Mon, 02 Sep 2013 16:29:40 -0700 (PDT)
Received: from [0.0.0.0] ([210.48.94.225]) by mx.google.com with ESMTPSA id
	dg3sm18333981pbc.24.1969.12.31.16.00.00
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Mon, 02 Sep 2013 16:29:39 -0700 (PDT)
Sender: Chris Gagneraud <chgans@googlemail.com>
Message-ID: <52251F60.9060804@gna.org>
Date: Tue, 03 Sep 2013 11:29:36 +1200
From: Christian Gagneraud <chgans@gna.org>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:17.0) Gecko/20130803 Thunderbird/17.0.8
MIME-Version: 1.0
To: Chris Tapp <opensource@keylevel.com>
References: <52241C84.2090605@gna.org>
	<CAJTo0LZSkA5Gr4AkaFEAuG0irsLWfeUkO2jXmmBXHJ6qcaGN_w@mail.gmail.com>
	<522506F8.8060706@gna.org>
	<0C95222C-9247-4FDD-837C-83FB03A314AC@keylevel.com>
In-Reply-To: <0C95222C-9247-4FDD-837C-83FB03A314AC@keylevel.com>
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
X-List-Received-Date: Mon, 02 Sep 2013 23:29:41 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 03/09/13 10:16, Chris Tapp wrote:
> On 2 Sep 2013, at 22:45, Christian Gagneraud wrote:
>
>>
>> On 03/09/13 00:35, Burton, Ross wrote:
>>
>> Hi Ross,
>>
>>> On 2 September 2013 06:05, Christian Gagneraud <chgans@gna.org> wrote:
>>>> So right now, I'm thinking about:
>>>> - CPU: Xeon E5, maybe 2 x E5-2670/90, for a total of 16 cores (32 threads)
>>>> - Hard drives: 500GB, 1 TB or 2 TB (ideally with RAID if it can speed up the
>>>> builds)
>>
>> RAID-5 seems to be what i am after.

Hi Chris,

> Isn't RAID-5 going to be slower, especially if it's software? RAID 1
> is probably better as you'll potentially double the write speed to disk.
> I use a couple of Vertex SSDs in RAID 1 giving a theoretical write speed
> near to 1GBs. Write endurance is possibly a concern, but I've not had
> any issues using them on a local build machine. I would probably look at
> some higher end models if I was going to run a lot of builds. A lot less
> noise than hard drives ;-)

Thanks for the info, i will have a look at RAID-1, as you can see, I 
know absolutely nothing about RAID! ;)

Does SSD really help with disk throughput? Then what's the point of 
using ramdisk for TMPDIR/WORKDIR? If you "fully" work in RAM, the disk 
bottleneck shouldn't be such a problem anymore (basically, on disk, you 
should only have your yocto source tree and your download directory?).

>
>>>> - RAM: i don't really know, maybe 8 or 16 GB or more?
>>>
>>> At least 16GB of RAM for the vast amount of disk cache that will give
>>> you.  32GB or more will mean you can easily put the TMPDIR or WORKDIR
>>> into a tmpfs (there's been discussion about this a few weeks ago).
>>
>> Yes, I remember that one now, well spotted!
>>
>>> I've 16GB of RAM and a 8GB tmpfs with rm_work was sufficient for
>>> WORKDIR which gave a 10% speedup (and massive reduction on disk wear).
>>
>> I'm a bit surprise to see only a 10% speedup.
>
> I looked at this a while back on a quad core + hyper-threading
> system(so 8 cores). Depending on what you're building, there are significant
> periods of the build where even 8 cores aren't maxed out as there's not
> enough on the ready list to feed to them - basically there are times
> when you're not CPU, memory or I/O bound. I've estimated that being able
> to max out the CPUs would cut 20-25% of the build time, but the
> build-time dependencies mean this isn't easy/possible. At one point I
> inverted the priority scheme used by the bitbake scheduler and it (very
> surprisingly) made no difference to the overall build time!

I have the same configuration here (4 cores, 8 threads), although, i 
didn't try to tweak bitbake, but i've noticed the same phenomenon as 
you: even with "aggressive" parallelism settings, the machine wasn't 
optimally loaded over time.

>
> I ran builds with 16 threads and 16 parallel makes and the peak
> memory usage I see is something like 8GB during intensive
> compile/link phases, so 16GB for RAM and tmpfs sounds like a
> reasonable minimum. The tmpfs would reduce SSD wear quite a bit ;-)

The quantity of RAM boils down to the budget, after a (very) quick 
search, i have estimated the cost of 64GB of RAM to be 1500 to 2000 US$.

Thanks.
Chris


>
>>
>>>   Others have machines with 64GB RAM and use it for all of TMPDIR, at
>>> which point you'll be almost entirely CPU-bound.
>>
>> OK, so 16GB sounds like a minimum, 32GB or 64GB being even better, at that size, this is not that cheap...
>>
>> Thanks,
>>
>> Chris
>>
>>>
>>> Ross
>>>
>>
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>
> Chris Tapp
>
> opensource@keylevel.com
> www.keylevel.com
>
>
>


