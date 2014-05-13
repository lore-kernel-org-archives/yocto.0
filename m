Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 76628E00770; Tue, 13 May 2014 06:59:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: *
X-Spam-Status: No, score=1.3 required=5.0 tests=RDNS_NONE autolearn=no
	version=3.3.1
X-Spam-HAM-Report: * 1.3 RDNS_NONE Delivered to internal network by a host
	with no rDNS
Received: from astoria.ccjclearline.com (unknown [64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 16145E003C7
	for <yocto@yoctoproject.org>; Tue, 13 May 2014 06:58:58 -0700 (PDT)
Received: from [99.240.204.5] (port=54541 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:DHE-RSA-AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1WkDET-0000cX-2Q; Tue, 13 May 2014 09:59:01 -0400
Date: Tue, 13 May 2014 09:56:50 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost
To: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
In-Reply-To: <535FD6BF.4040004@dynamicdevices.co.uk>
Message-ID: <alpine.LFD.2.11.1405130954351.7299@localhost>
References: <alpine.LFD.2.11.1404291231440.3997@localhost>
	<535FD6BF.4040004@dynamicdevices.co.uk>
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
X-List-Received-Date: Tue, 13 May 2014 13:59:04 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Tue, 29 Apr 2014, Alex J Lennon wrote:

>
> On 29/04/2014 17:34, Robert P. J. Day wrote:
> >   i've just been asked to design a linux device drivers course based
> > on the arduino-compatible intel galileo processor, so my first TODO
> > item is to lay hands on a galileo-based dev kit, for which this looks
> > like the obvious choice:
> >
> > https://software.intel.com/en-us/iotdevkit
> >
> > but that page says "upcoming". does it exist? my normal go-to source
> > up here, digikey.ca, shows zero in stock. where can i lay hands on
> > one (if possible)? thanks.
>
> If it helps I had a Galileo Dev Kit delivered from RS (UK) a couple of
> days ago.
>
> http://uk.rs-online.com/web/p/processor-microcontroller-development-kits/7919611/
>
> (I'm actually a bit confused about how the Galileo IoT collection of
> meta-foo layers relates to the primary meta-foo
>  sources, as I can't seem to find an independent meta-clanton ;ayer
> which I guess I'd need. Early days yet, but am planning
>  on working through this as soon as I get some time as I want to test a
> build with meta-moo support on Galileo)

  i finally have time to play with this, and am interested in using
yocto to build a bootable system for the galileo. i see that there is
a version "1.0.0" of the firmware for this board -- is there a
convenient yocto recipe that involves just downloading the layer info
and not what looks like the current entire tarball that's stuffed with
all the sources?

  i suspect that, within a day or two, i'll figure that out once i
start digging around. if it's already documented somewhere, that would
be even better. :-)

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

