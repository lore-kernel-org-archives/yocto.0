Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1EB6EE0073D; Fri, 16 May 2014 07:01:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: *
X-Spam-Status: No, score=1.3 required=5.0 tests=RDNS_NONE autolearn=no
	version=3.3.1
X-Spam-HAM-Report: * 1.3 RDNS_NONE Delivered to internal network by a host
	with no rDNS
Received: from astoria.ccjclearline.com (unknown [64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DFF16E0070F
	for <yocto@yoctoproject.org>; Fri, 16 May 2014 07:01:12 -0700 (PDT)
Received: from [99.240.204.5] (port=32838 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:DHE-RSA-AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1WlIhH-0006cl-8N; Fri, 16 May 2014 10:01:15 -0400
Date: Fri, 16 May 2014 09:58:54 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost
To: Paul Eggleton <paul.eggleton@linux.intel.com>
In-Reply-To: <1719824.0zZr8HOhtR@peggleto-mobl5.ger.corp.intel.com>
Message-ID: <alpine.LFD.2.11.1405160958360.19113@localhost>
References: <alpine.LFD.2.11.1404291231440.3997@localhost>
	<1628239.GfKczbckvq@peggleto-mobl5.ger.corp.intel.com>
	<alpine.LFD.2.11.1405160846330.18243@localhost>
	<1719824.0zZr8HOhtR@peggleto-mobl5.ger.corp.intel.com>
User-Agent: Alpine 2.11 (LFD 23 2013-08-11)
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - astoria.ccjclearline.com
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - crashcourse.ca
X-Source: 
X-Source-Args: 
X-Source-Dir: 
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
X-List-Received-Date: Fri, 16 May 2014 14:01:34 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Fri, 16 May 2014, Paul Eggleton wrote:

> On Friday 16 May 2014 08:51:35 Robert P. J. Day wrote:
> > On Fri, 16 May 2014, Paul Eggleton wrote:
> > > So apologies for not replying earlier - I've not been directly
> > > involved in the BSP for Galileo, but I have been providing support
> > > for the team doing the IoT DevKit work. You should be able to build
> > > images for Galileo using what's in meta-intel-iot-devkit directly;
> > > you could also use the layers within it separately using your own
> > > separate OE-Core / Poky tree, but it's not really designed to be
> > > used in that way. If you really want to do it separately you should
> > > take care to use all three layers (meta-clanton-bsp, meta-galileo,
> > > and meta-iot-devkit) and set your DISTRO = "iot-devkit".
> >
> >   possibly a silly question, but what are the dependencies between
> > those three layers? i'm used to seeing layer dependencies listed in a
> > layer's "layer.conf" file. if i look at the meta-iot-devkit layer, its
> > layer.conf file says nothing about dependencies, but one of its kernel
> > recipes, "linux-yocto-clanton_3.8.bbappend", is clearly a reference to
> > a kernel recipe in the meta-clanton-bsp layer.
> >
> >   i would thus have expected to see that dependency listed in the
> > layer.conf file. has something about listing layer dependencies
> > changed while i wasn't looking?
>
> No, nothing has changed. The separation here is probably not as
> clearly defined as it ought to be. I guess what I'd say is, you
> shouldn't look at this as a fully worked example of how to structure
> things; it was put together out of various pieces and intended to be
> used as a whole rather than separate components.

  fair enough ... i should be able to test this by end of day.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

