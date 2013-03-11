Return-Path: <dmulder@lasx.com>
Received: from omx.cbeyond.com (omx.cbeyond.com [50.20.30.10])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 85266E003AB
	for <yocto@yoctoproject.org>; Mon, 11 Mar 2013 11:13:49 -0700 (PDT)
X-SBRS: 3.9
X-HAT: Sender Group CBEYOND_SYSTEMS, Policy $CBEYOND_RELAY applied.
X-Hostname: omx05bay.sys.cbeyond.net
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: Aq0BACwePlEyFB4Li2dsb2JhbABDhD7AJIF1DgEBARULGyiCKQEBAQMBOj8QAgEIIhQQMiUCBA4NiAUGAb5ljl0xB4JfYQOqVIIo
X-IronPort-AV: E=Sophos;i="4.84,825,1355115600"; d="scan'208";a="12795061"
Received: from mts.cbeyond.com (HELO EXHUB102.mmeprod.cbeyond) ([50.20.30.11])
	by omx.cbeyond.com with ESMTP; 11 Mar 2013 14:13:48 -0400
Received: from EXHUB104.mmeprod.cbeyond (10.128.38.103) by
	EXHUB102.mmeprod.cbeyond (10.128.38.101) with Microsoft SMTP Server
	(TLS) id 14.2.298.4; Mon, 11 Mar 2013 14:13:47 -0400
Received: from EXMBX202A.mmeprod.cbeyond ([fe80::b0ca:4d9b:ba7c:8227]) by
	EXHUB104.mmeprod.cbeyond ([::1]) with mapi id 14.02.0298.004;
	Mon, 11 Mar 2013 14:13:47 -0400
From: David Mulder <dmulder@lasx.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
Thread-Topic: [yocto] Can I disable RT throttling?
Thread-Index: Ac4cTWBMCcKVjca/TdSAdJObHV69ZQAUrgaAAHMmm5AADNILAAAITIEg///BMICAAEI7cA==
Date: Mon, 11 Mar 2013 18:13:46 +0000
Message-ID: <19F0379280417C4A8FE3BD23AA7298E501347F87@EXMBX202A.mmeprod.cbeyond>
References: <19F0379280417C4A8FE3BD23AA7298E501347DE7@EXMBX202A.mmeprod.cbeyond>
	<513AAC65.1050002@windriver.com>
	<19F0379280417C4A8FE3BD23AA7298E501347F1C@EXMBX202A.mmeprod.cbeyond>
	<CAHUNapTCYUy5GML7N4xaAH=HsV5wHf5k8kJJGGntS+AoMvFq6w@mail.gmail.com>
	<19F0379280417C4A8FE3BD23AA7298E501347F52@EXMBX202A.mmeprod.cbeyond>
	<513E1843.3070604@windriver.com>
In-Reply-To: <513E1843.3070604@windriver.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [69.198.178.141]
MIME-Version: 1.0
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
X-List-Received-Date: Mon, 11 Mar 2013 18:13:49 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

> > Will that work on a core that's offline?
>=20
> Nope. Only with an online core controlled by the Linux scheduler.
> If you do end up trying to get AMP working, you need to plumbing
> to load the other OS/kernel in a reserved memory location, set the
> program counter and start the OS.
>=20
> But that secondary OS has to know how to behave in a system that
> it doesn't control, and you'll need ways to communicate with it
> from Linux.
>=20
> remoteproc/rpmsg can solve some of the issues that I mention, but
> it is far from out of the box.
>=20
> That's why there's more interest in running a single task with
> exclusive CPU in userspace. The work and scaffolding required to
> get an AMP system up and running is non trivial.

I kinda thought so, but I was hopeful.

After speaking with some co-workers, I have a new perspective on these dela=
ys:  yes, we are trying to do a 10us control loop, but if we miss a step or=
 two occasionally we can accept that.  And looking online I see people indi=
cating context switch times well below 10us (Core-i cpus), which is better =
than I had anticipated, and should be workable.  So I'm going to approach t=
his problem by just trying to squeeze the kernel as much as I can.  Some th=
ings that I see to squeeze are /dev/cpu_dma_latency (should be 0) or max_cs=
tate (should be as low as possible (0, maybe 1)), possibly idle=3Dpoll.  Ar=
e there other kernel parameters that can minimize kernel interference/time?=
  And perhaps hints about how to set them in Yocto or menuconfig?

Thanks!
Dave

