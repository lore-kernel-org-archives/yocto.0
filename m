Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DB55EE00B68; Fri, 16 May 2014 06:10:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.7 required=5.0 tests=RCVD_IN_DNSWL_HI,RDNS_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [143.182.124.21 listed in list.dnswl.org]
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from mga03.intel.com (unknown [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CC016E00975
	for <yocto@yoctoproject.org>; Fri, 16 May 2014 06:10:30 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 16 May 2014 06:10:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,1067,1389772800"; d="scan'208";a="433044269"
Received: from unknown (HELO peggleto-mobl5.ger.corp.intel.com)
	([10.252.123.87])
	by azsmga001.ch.intel.com with ESMTP; 16 May 2014 06:10:06 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Date: Fri, 16 May 2014 14:10:05 +0100
Message-ID: <1719824.0zZr8HOhtR@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.12.5 (Linux/3.14.3-200.fc20.x86_64; KDE/4.12.5; x86_64; ; )
In-Reply-To: <alpine.LFD.2.11.1405160846330.18243@localhost>
References: <alpine.LFD.2.11.1404291231440.3997@localhost>
	<1628239.GfKczbckvq@peggleto-mobl5.ger.corp.intel.com>
	<alpine.LFD.2.11.1405160846330.18243@localhost>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: can one lay hands on a galileo-based dev kit?
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
X-List-Received-Date: Fri, 16 May 2014 13:10:34 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Friday 16 May 2014 08:51:35 Robert P. J. Day wrote:
> On Fri, 16 May 2014, Paul Eggleton wrote:
> > So apologies for not replying earlier - I've not been directly
> > involved in the BSP for Galileo, but I have been providing support
> > for the team doing the IoT DevKit work. You should be able to build
> > images for Galileo using what's in meta-intel-iot-devkit directly;
> > you could also use the layers within it separately using your own
> > separate OE-Core / Poky tree, but it's not really designed to be
> > used in that way. If you really want to do it separately you should
> > take care to use all three layers (meta-clanton-bsp, meta-galileo,
> > and meta-iot-devkit) and set your DISTRO = "iot-devkit".
> 
>   possibly a silly question, but what are the dependencies between
> those three layers? i'm used to seeing layer dependencies listed in a
> layer's "layer.conf" file. if i look at the meta-iot-devkit layer, its
> layer.conf file says nothing about dependencies, but one of its kernel
> recipes, "linux-yocto-clanton_3.8.bbappend", is clearly a reference to
> a kernel recipe in the meta-clanton-bsp layer.
> 
>   i would thus have expected to see that dependency listed in the
> layer.conf file. has something about listing layer dependencies
> changed while i wasn't looking?

No, nothing has changed. The separation here is probably not as clearly defined 
as it ought to be. I guess what I'd say is, you shouldn't look at this as a 
fully worked example of how to structure things; it was put together out of 
various pieces and intended to be used as a whole rather than separate 
components.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

