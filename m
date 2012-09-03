Return-Path: <anders@chargestorm.se>
Received: from stoexhubfe01.domain01.net (STOEXHUBFE01.domain01.net
	[83.145.59.140])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0F356E013A6
	for <yocto@yoctoproject.org>; Mon,  3 Sep 2012 02:44:36 -0700 (PDT)
Received: from localhost (193.41.119.134) by stoexhubfe01.domain01.net
	(10.12.10.6) with Microsoft SMTP Server id 8.3.279.1; Mon, 3 Sep 2012
	11:43:46 +0200
Date: Mon, 3 Sep 2012 11:44:12 +0200
From: Anders Darander <anders@chargestorm.se>
To: <yocto@yoctoproject.org>
Message-ID: <20120903094412.GA17136@ad.chargestorm.se>
Mail-Followup-To: yocto@yoctoproject.org
References: <504144D8.40605@intel.com>
	<CA+gsK-r_rXoS2mGntN87jS_VHjMO3FVhFFGgug0N73Wv7qjUnA@mail.gmail.com>
	<CAMKF1so68xho-Bpf2Pw8C7HJskfx1G1zdLf=hDXsznwrbfvTog@mail.gmail.com>
	<CA+gsK-rQ2UBXU4g6fwKLpn-bGsFR5b-Tw3Y03QPXtKWj+_rHGg@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CA+gsK-rQ2UBXU4g6fwKLpn-bGsFR5b-Tw3Y03QPXtKWj+_rHGg@mail.gmail.com>
X-Accept-Language: sv, en, de
X-GPG-Fingerprint: 5AF0 B2E9 78FE 9D75 D110  6F8F 3E31 84D7 920E 938C
X-GPG-Key-Id: 0x920E938C
X-GPG-Keyserver: hkp://keys.gnupg.net
Organization: ChargeStorm AB
User-Agent: Mutt/1.5.20 (2009-12-10)
X-GFI-SMTP-Submission: 1
Subject: Re: Beaglebone BSP for denzil?
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
X-List-Received-Date: Mon, 03 Sep 2012 09:44:36 -0000
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline

* Rudolf Streif <rstreif@linuxfoundation.org> [120901 08:15]:

> Yes, there were a lot of patches that I applied to the upstream kernel. It
> worked but I do not think that they are all required. That's what I am
> currently trying to figure out.

Sounds interesting!

Do plan to share your efforts in a layer somewhere?

Cheers,
Anders


> On Aug 31, 2012 8:03 PM, "Khem Raj" <raj.khem@gmail.com> wrote:

>     On Fri, Aug 31, 2012 at 6:44 PM, Rudolf Streif
>     <rstreif@linuxfoundation.org> wrote:
>     > Hey Scott,
>     >
>     > I am doing the same thing for a Linux Foundation class.
>     >
>     > The root filesystem that YP builds for the BBoard works just fine for the
>     > BBone. That's at least true for core-image-minimal. I tested that with
>     the
>     > kernel that comes with the BBone.
>     >
>     > The kernel does not work. The BBoard has an OMAP3 CPU the BBoard has an
>     > AM3359 CPU.
>     >
>     > I built a kernel with YP from kernel.org some patches and a defconfig. My
>     > goal is to use linux-yocto so I started from scratch and did not use
>     > meta-ti. And it's educational too.
>     >
>     > I still used MLO and UBoot that came with the BBone. My next steps are to
>     > build the kernel using linux-yocto and then eventually also building
>     UBoot
>     > with YP.

>     you need to add the right .config and may be patches. But there are lot
>     of patches see meta-ti for more details.

>     >
>     > I can give more info but right now I am just typing this on a mobile with
>     no
>     > access to my dev box. I will follow up.
>     >
>     > Cheers,
>     > Rudi
>     >
>     > On Aug 31, 2012 4:11 PM, "Scott Garman" <scott.a.garman@intel.com> wrote:
>     >>
>     >> Hello,
>     >>
>     >> Am I correct in understanding that the TI Beagleboard BSP from
>     >> yoctoproject.org should work with the Beaglebone, or do I need meta-ti?
>     I'm
>     >> not looking for accelerated graphics or anything - this will just be
>     used in
>     >> a classroom setting where there will be Beaglebones I'd like to boot up
>     to a
>     >> minimal console image.
>     >>
>     >> I'll be doing this with the denzil release.
>     >>
>     >> Thanks,
>     >>
>     >> Scott
>     >>
>     >> --
>     >> Scott Garman
>     >> Embedded Linux Engineer - Yocto Project
>     >> Intel Open Source Technology Center
>     >> _______________________________________________
>     >> yocto mailing list
>     >> yocto@yoctoproject.org
>     >> https://lists.yoctoproject.org/listinfo/yocto
>     >
>     >
>     > _______________________________________________
>     > yocto mailing list
>     > yocto@yoctoproject.org
>     > https://lists.yoctoproject.org/listinfo/yocto
>     >

> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

-- 
Anders Darander
ChargeStorm AB / eStorm AB

