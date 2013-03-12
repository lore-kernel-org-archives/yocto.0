Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0ED2CE00738
	for <yocto@yoctoproject.org>; Mon, 11 Mar 2013 17:14:23 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id r2C0EIFh017399
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 11 Mar 2013 17:14:18 -0700 (PDT)
Received: from bruce-ashfields-macbook.local (128.224.22.23) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.2.342.3; Mon, 11 Mar 2013 17:14:18 -0700
Message-ID: <513E7359.6060205@windriver.com>
Date: Mon, 11 Mar 2013 20:14:17 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.7;
	rv:9.0) Gecko/20111222 Thunderbird/9.0.1
MIME-Version: 1.0
To: David Mulder <dmulder@lasx.com>
References: <19F0379280417C4A8FE3BD23AA7298E501347DE7@EXMBX202A.mmeprod.cbeyond>
	<513AAC65.1050002@windriver.com>
	<19F0379280417C4A8FE3BD23AA7298E501347F1C@EXMBX202A.mmeprod.cbeyond>
	<CAHUNapTCYUy5GML7N4xaAH=HsV5wHf5k8kJJGGntS+AoMvFq6w@mail.gmail.com>
	<19F0379280417C4A8FE3BD23AA7298E501347F52@EXMBX202A.mmeprod.cbeyond>
	<513E1843.3070604@windriver.com>
	<19F0379280417C4A8FE3BD23AA7298E501347F87@EXMBX202A.mmeprod.cbeyond>
In-Reply-To: <19F0379280417C4A8FE3BD23AA7298E501347F87@EXMBX202A.mmeprod.cbeyond>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Can I disable RT throttling?
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
X-List-Received-Date: Tue, 12 Mar 2013 00:14:23 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 13-03-11 2:13 PM, David Mulder wrote:
>>> Will that work on a core that's offline?
>>
>> Nope. Only with an online core controlled by the Linux scheduler.
>> If you do end up trying to get AMP working, you need to plumbing
>> to load the other OS/kernel in a reserved memory location, set the
>> program counter and start the OS.
>>
>> But that secondary OS has to know how to behave in a system that
>> it doesn't control, and you'll need ways to communicate with it
>> from Linux.
>>
>> remoteproc/rpmsg can solve some of the issues that I mention, but
>> it is far from out of the box.
>>
>> That's why there's more interest in running a single task with
>> exclusive CPU in userspace. The work and scaffolding required to
>> get an AMP system up and running is non trivial.
>
> I kinda thought so, but I was hopeful.
>
> After speaking with some co-workers, I have a new perspective on these delays:  yes, we are trying to do a 10us control loop, but if we miss a step or two occasionally we can accept that.  And looking online I see people indicating context switch times well below 10us (Core-i cpus), which is better than I had anticipated, and should be workable.  So I'm going to approach this problem by just trying to squeeze the kernel as much as I can.  Some things that I see to squeeze are /dev/cpu_dma_latency (should be 0) or max_cstate (should be as low as possible (0, maybe 1)), possibly idle=poll.  Are there other kernel parameters that can minimize kernel interference/time?  And perhaps hints about how to set them in Yocto or menuconfig?

There's nothing "out of the box" that I can recommend, outside of saying
"it depends on your platform". It's a matter of knowing your devices,
their interrupts, and the configuration of your kernel. Using things
like CONFIG_NOHZ will remove the timer tick, and hence ticks that you
may not need, you want to move device interrupts off your core, except
for the one that you want. Use cgroups/cpusets to control resources and
the scheduler off your core with "other" tasks. pin/lock memory to
avoid page faults, etc.

If you check out the preempt-rt wiki page on kernel.org, a lot of the
information there applies to making sure that your prioritized thread
gets the most run time that it can.

As we progress with the meta-realtime layer, scripts for the above,
system configuration, services and will be part of the layer and might
be of use.

Cheers,

Bruce


>
> Thanks!
> Dave


