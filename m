Return-Path: <dmulder@lasx.com>
Received: from omx.cbeyond.com (omx.cbeyond.com [50.20.30.10])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4974AE00709
	for <yocto@yoctoproject.org>; Mon, 11 Mar 2013 09:15:47 -0700 (PDT)
X-SBRS: 3.9
X-HAT: Sender Group CBEYOND_SYSTEMS, Policy $CBEYOND_RELAY applied.
X-Hostname: omx02bay.sys.cbeyond.net
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: AqwBAPsBPlEyFB4Li2dsb2JhbABDhDrAG4FxDgEBARULGyEHgikBAQEDATpPAgEIGAoUECERJQEBBBMIE4dmAwkGAbMtDYlEF4xGghc4gl9hA5R1jTyII4Io
X-IronPort-AV: E=Sophos;i="4.84,824,1355115600"; d="scan'208";a="13490548"
Received: from mts.cbeyond.com (HELO EXHUB102.mmeprod.cbeyond) ([50.20.30.11])
	by omx.cbeyond.com with ESMTP; 11 Mar 2013 12:15:46 -0400
Received: from EXMBX202A.mmeprod.cbeyond ([fe80::b0ca:4d9b:ba7c:8227]) by
	EXHUB102.mmeprod.cbeyond ([::1]) with mapi id 14.02.0298.004;
	Mon, 11 Mar 2013 12:15:45 -0400
From: David Mulder <dmulder@lasx.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] Can I disable RT throttling?
Thread-Index: Ac4cTWBMCcKVjca/TdSAdJObHV69ZQAUrgaAAHMmm5A=
Date: Mon, 11 Mar 2013 16:15:45 +0000
Message-ID: <19F0379280417C4A8FE3BD23AA7298E501347F1C@EXMBX202A.mmeprod.cbeyond>
References: <19F0379280417C4A8FE3BD23AA7298E501347DE7@EXMBX202A.mmeprod.cbeyond>
	<513AAC65.1050002@windriver.com>
In-Reply-To: <513AAC65.1050002@windriver.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [69.198.178.141]
MIME-Version: 1.0
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
X-List-Received-Date: Mon, 11 Mar 2013 16:15:47 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Wow! Thanks, Bruce, Fredrik, and everyone, for all this useful info!

> > I'm running a 10us control loop by (under vxWorks) setting one thread's
> > priority to max and not yielding ever
>=20
> <bruce.ashfield@windriver.com> wrote:
> You are looking for kernel functionality that doesn't exist yet. In
> any SMP system there are sources of cross cpu interference that can't
> be removed, if you do, the global state machines of the kernel will
> break and the system will eventually come to a halt.
>=20
> That's the mainline/scalable point of view, there are plenty of "custom"
> and one off solutions to the problem, such as hotplugging the cpu out
> of the system and running in an AMP configuration where a bare metal,
> or RTOS can monopolize a CPU since the global state machines don't
> interfere. These have their advantages and disadvantages, but if you
> are coming from an existing RTOS application, they might be the
> closest options to get you the performance you are looking for.

An AMP configuration does seem like the closest thing to what the RTOS gave=
 me.  Do you have more info about that?  Specifically, I see that I can rem=
ove a core from the scheduler ($ echo 0 > /sys/devices/system/cpu/<core num=
ber>/online), but how can I make my run my code on that core?  Do I get the=
 code running on that core first and then remove the core, or vice-versa, o=
r some other concept?  I do PCIe reads/writes - are those affected?  I use =
atomic read-write-modify locks for critical sections - will those still fun=
ction correctly (I can't imagine they would break, but I thought I'd ask)?

> > So maybe disabling RT throttling is all I need to do, maybe some other
> > approach is needed. Hopefully someone will know more than I do.
> >

> <fredrik.markstrom@gmail.com> wrote:
> The RT-throttling can be disabled with:
>
> echo -1 >/proc/sys/kernel/sched_rt_runtime_us
> echo -1 >/proc/sys/kernel/sched_rt_period_us
>
> But as mentioned in the other answers things like the system tick, ipi:s
> etc. will interfere. But significantly less then the rt-throttling :)

Thanks, Fredrick!  I will try this.

Dave Mulder

