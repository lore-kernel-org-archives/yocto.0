Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B9C75E014CF
	for <yocto@yoctoproject.org>; Fri,  8 Mar 2013 19:28:41 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id r293Sc4O012734
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 8 Mar 2013 19:28:38 -0800 (PST)
Received: from bruce-ashfields-macbook.local (128.224.21.250) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.2.342.3; Fri, 8 Mar 2013 19:28:38 -0800
Message-ID: <513AAC65.1050002@windriver.com>
Date: Fri, 8 Mar 2013 22:28:37 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.7;
	rv:9.0) Gecko/20111222 Thunderbird/9.0.1
MIME-Version: 1.0
To: David Mulder <dmulder@lasx.com>
References: <19F0379280417C4A8FE3BD23AA7298E501347DE7@EXMBX202A.mmeprod.cbeyond>
In-Reply-To: <19F0379280417C4A8FE3BD23AA7298E501347DE7@EXMBX202A.mmeprod.cbeyond>
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
X-List-Received-Date: Sat, 09 Mar 2013 03:28:42 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 8bit

On 13-03-08 5:36 PM, David Mulder wrote:
> Hi.
>
> I’m running a 10us control loop by (under vxWorks) setting one thread’s
> priority to max and not yielding ever (letting other tasks run on other
> cores), but Linux seems to thwart that capability: Ubuntu swaps out my
> thread occasionally for hundreds of microseconds; Yocto prints a
> “[sched_delayed] sched: RT throttling activated” message as soon as I
> start my thread, so it seems likely that it will swap out my thread
> periodically (I’m not quite able to confirm that yet), and even the
> fastest thread swap that I’ve heard of is too slow.

You are looking for kernel functionality that doesn't exist yet. In
any SMP system there are sources of cross cpu interference that can't
be removed, if you do, the global state machines of the kernel will
break and the system will eventually come to a halt.

The system is trying to save you from yourself, by throttling the
RT task from taking the entire system down.

There is work in the mainline kernel and -rt communities around cpu
and cpu isolation (some of which we'll try and make available via
the yocto meta-virtualization or meta-realtime layer, when they are
ready), it goes by names such as task_nohz or adaptive_nohz. It's
a complex problem to solve (interrupts, rcu, lapic), and there's not
likely to be anything available in the short term.

That's the mainline/scalable point of view, there are plenty of "custom"
and one off solutions to the problem, such as hotplugging the cpu out
of the system and running in an AMP configuration where a bare metal,
or RTOS can monopolize a CPU since the global state machines don't
interfere. These have their advantages and disadvantages, but if you
are coming from an existing RTOS application, they might be the
closest options to get you the performance you are looking for.

Alternatively, there's the preempt-rt kernel (that we make available
in linux-yocto, if that suits) that if your control loop is
interrupt driven, you'll be closer to your needs since the kernel
is far more preemptible and deterministic and might be able to meet
your deadlines.

There are experimental patches like sched_deadline (EDF) that might
also be applicable, depending on your application architecture.

Searching for "making Linux hard realtime", you'll find plenty of
talks and research over the years for yet more custom ways to get
things done.

So that's my summary, as you can see, it's a long standing, evolving
and complex story .. and not something that likely has an 'out of the
box' solution at the moment.

Cheers,

Bruce

>
> I 0tried changing the kernel’s Preemption Model to “No Forced Preemption
> (Server)”, but that didn’t remove the RT throttling message. I browsed
> the rest of menuconfig but nothing looked related. I read an article
> from 2008 that talked about the kernel reserving 5% of the CPU for
> non-SCHED_FIFO tasks, so that’s the direction and terminology I looked
> for in menuconfig.
>
> So maybe disabling RT throttling is all I need to do, maybe some other
> approach is needed. Hopefully someone will know more than I do.
>
> Thanks!
>
> Dave Mulder
>
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


