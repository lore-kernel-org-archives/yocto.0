Return-Path: <chgans@googlemail.com>
Received: from mail-pd0-f176.google.com (mail-pd0-f176.google.com
	[209.85.192.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 96847E013AB
	for <yocto@yoctoproject.org>; Tue,  3 Sep 2013 19:45:58 -0700 (PDT)
Received: by mail-pd0-f176.google.com with SMTP id q10so6788320pdj.7
	for <yocto@yoctoproject.org>; Tue, 03 Sep 2013 19:45:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20120113;
	h=sender:message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=IQsaJee++yqzhUo0h460Sbt7D4ZnB6NPydtV2Hyg9Co=;
	b=GLXZMtTPGfsKsm0n8W4SGCPlWX9RqOTP7F1D95gIvWyLkpqYHveAxhcwxT3InIU1mi
	8PYFTBa0pdoTEgVU/FAsji1nplCsSc7rtZe52Prfn9Y0fYjqQ/4FmEX4WzUZsWUJTbzE
	NeYQU344eoVXA40AHNgVcJWtafoU353O0gdKDcpjg0fnzlVDLk+3w+0la+173B8rZfQR
	WBarBHWxco0SNq7QJz/si2NT3jGctr82VJRw2C7fEMR6pnQh2g32ewXCB8eSz7l1IDnp
	gvum1MrUcL66XPaxMKVQn6ClldnfCWSCAbJDdkAK95V4tWy3enLtf0NlBXhwvGXCGqDF
	0qlA==
X-Received: by 10.66.219.200 with SMTP id pq8mr661725pac.123.1378262758582;
	Tue, 03 Sep 2013 19:45:58 -0700 (PDT)
Received: from [0.0.0.0] ([210.48.94.225])
	by mx.google.com with ESMTPSA id qa9sm25772613pbc.7.1969.12.31.16.00.00
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Tue, 03 Sep 2013 19:45:57 -0700 (PDT)
Sender: Chris Gagneraud <chgans@googlemail.com>
Message-ID: <52269EE1.5040801@gna.org>
Date: Wed, 04 Sep 2013 14:45:53 +1200
From: Christian Gagneraud <chgans@gna.org>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:17.0) Gecko/20130803 Thunderbird/17.0.8
MIME-Version: 1.0
To: Chris Tapp <opensource@keylevel.com>
References: <52241C84.2090605@gna.org>
	<CAJTo0LZSkA5Gr4AkaFEAuG0irsLWfeUkO2jXmmBXHJ6qcaGN_w@mail.gmail.com>
	<522506F8.8060706@gna.org>
	<0C95222C-9247-4FDD-837C-83FB03A314AC@keylevel.com>
	<52251F60.9060804@gna.org>
	<90830908-76F2-4548-97F1-E9BF53E16597@keylevel.com>
In-Reply-To: <90830908-76F2-4548-97F1-E9BF53E16597@keylevel.com>
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
X-List-Received-Date: Wed, 04 Sep 2013 02:46:01 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 04/09/13 07:22, Chris Tapp wrote:
>
> On 3 Sep 2013, at 00:29, Christian Gagneraud wrote:
>
>> On 03/09/13 10:16, Chris Tapp wrote:
>>> On 2 Sep 2013, at 22:45, Christian Gagneraud wrote:
>>>
>>>>
>>>> On 03/09/13 00:35, Burton, Ross wrote:
>>>>
>>>> Hi Ross,
>>>>
>>>>> On 2 September 2013 06:05, Christian Gagneraud <chgans@gna.org> wrote:
>>>>>> So right now, I'm thinking about:
>>>>>> - CPU: Xeon E5, maybe 2 x E5-2670/90, for a total of 16 cores (32 threads)
>>>>>> - Hard drives: 500GB, 1 TB or 2 TB (ideally with RAID if it can speed up the
>>>>>> builds)
>>>>
>>>> RAID-5 seems to be what i am after.
>>
>> Hi Chris,
>>
>>> Isn't RAID-5 going to be slower, especially if it's software? RAID 1
>>> is probably better as you'll potentially double the write speed to disk.
>>> I use a couple of Vertex SSDs in RAID 1 giving a theoretical write speed
>>> near to 1GBs. Write endurance is possibly a concern, but I've not had
>>> any issues using them on a local build machine. I would probably look at
>>> some higher end models if I was going to run a lot of builds. A lot less
>>> noise than hard drives ;-)
>>
>> Thanks for the info, i will have a look at RAID-1, as you can see, I know absolutely nothing about RAID! ;)
>
> Did you see my correction to this? I meant to say RAID 0. Sorry for the confusion.

No problem, at least it forces me to look at RAID-5, RAID-1 and now 
RAID-0, thanks! ;)

>
>> Does SSD really help with disk throughput? Then what's the point of using ramdisk for TMPDIR/WORKDIR? If you "fully" work in RAM, the disk bottleneck shouldn't be such a problem anymore (basically, on disk, you should only have your yocto source tree and your download directory?).
>
> Running from RAM would be fastest - it really comes down to how much you have and how much you want to keep.
>
>>
>>>
>>>>>> - RAM: i don't really know, maybe 8 or 16 GB or more?
>>>>>
>>>>> At least 16GB of RAM for the vast amount of disk cache that will give
>>>>> you.  32GB or more will mean you can easily put the TMPDIR or WORKDIR
>>>>> into a tmpfs (there's been discussion about this a few weeks ago).
>>>>
>>>> Yes, I remember that one now, well spotted!
>>>>
>>>>> I've 16GB of RAM and a 8GB tmpfs with rm_work was sufficient for
>>>>> WORKDIR which gave a 10% speedup (and massive reduction on disk wear).
>>>>
>>>> I'm a bit surprise to see only a 10% speedup.
>>>
>>> I looked at this a while back on a quad core + hyper-threading
>>> system(so 8 cores). Depending on what you're building, there are significant
>>> periods of the build where even 8 cores aren't maxed out as there's not
>>> enough on the ready list to feed to them - basically there are times
>>> when you're not CPU, memory or I/O bound. I've estimated that being able
>>> to max out the CPUs would cut 20-25% of the build time, but the
>>> build-time dependencies mean this isn't easy/possible. At one point I
>>> inverted the priority scheme used by the bitbake scheduler and it (very
>>> surprisingly) made no difference to the overall build time!
>>
>> I have the same configuration here (4 cores, 8 threads), although, i didn't try to tweak bitbake, but i've noticed the same phenomenon as you: even with "aggressive" parallelism settings, the machine wasn't optimally loaded over time.
>>
>>>
>>> I ran builds with 16 threads and 16 parallel makes and the peak
>>> memory usage I see is something like 8GB during intensive
>>> compile/link phases, so 16GB for RAM and tmpfs sounds like a
>>> reasonable minimum. The tmpfs would reduce SSD wear quite a bit ;-)
>>
>> The quantity of RAM boils down to the budget, after a (very) quick search, i have estimated the cost of 64GB of RAM to be 1500 to 2000 US$.
>
> That sounds high - I generally get 16GB DDR 1600 for less that 150 US$ - it was quite a bit lower a year back!
>
>>
>> Thanks.
>> Chris
>>
>>
>>>
>>>>
>>>>>   Others have machines with 64GB RAM and use it for all of TMPDIR, at
>>>>> which point you'll be almost entirely CPU-bound.
>>>>
>>>> OK, so 16GB sounds like a minimum, 32GB or 64GB being even better, at that size, this is not that cheap...
>>>>
>>>> Thanks,
>>>>
>>>> Chris
>>>>
>>>>>
>>>>> Ross
>>>>>
>>>>
>>>> _______________________________________________
>>>> yocto mailing list
>>>> yocto@yoctoproject.org
>>>> https://lists.yoctoproject.org/listinfo/yocto
>>>
>>> Chris Tapp
>>>
>>> opensource@keylevel.com
>>> www.keylevel.com
>>>
>>>
>>>
>>
>
> Chris Tapp
>
> opensource@keylevel.com
> www.keylevel.com
>
>
>


