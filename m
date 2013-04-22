Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 88835E014F3
	for <yocto@yoctoproject.org>; Mon, 22 Apr 2013 04:27:46 -0700 (PDT)
Received: from cpebcc8100de718-cmbcc8100de715.cpe.net.cable.rogers.com
	([99.240.144.66]:33366 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:DHE-RSA-AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1UUEuO-0007av-VV; Mon, 22 Apr 2013 07:27:45 -0400
Date: Mon, 22 Apr 2013 07:27:42 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Tom Zanussi <tom.zanussi@intel.com>
In-Reply-To: <1366465052.27207.74.camel@empanada>
Message-ID: <alpine.DEB.2.02.1304220722330.2214@oneiric>
References: <alpine.DEB.2.02.1304190827410.4247@oneiric>
	<1366409274.27207.69.camel@empanada>
	<alpine.DEB.2.02.1304200534160.14289@oneiric>
	<1366465052.27207.74.camel@empanada>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
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
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: clarification about BSP layer names and bblayers.conf file?
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
X-List-Received-Date: Mon, 22 Apr 2013 11:27:46 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Sat, 20 Apr 2013, Tom Zanussi wrote:

> On Sat, 2013-04-20 at 05:35 -0400, Robert P. J. Day wrote:

> >   i was just looking for an example of the kind of hierarchical
> > layer structure you find in meta-intel. is there another layer
> > that has that kind of structure?
> >
>
> A quick scan of all the layers I have opengrokked here doesn't show
> any either, so possibly meta-intel is currently the only example.
> If so, let's use it..

  as a recap, for the purposes of my oe/yocto course, i was after a
range of BSP definitions from simplest to most complex. at one end,
the example i picked on as a layer that defined a single variation of
a single board was raspberry-pi.

  from there, i can demonstrate examples of, say, a layer that defines
more than one variant of a single machine (say, meta-intel's
meta-crownbay), then a layer that defines a number of independent
machines (say, meta-yocto-bsp), up to the hierarchical structure of
meta-intel, and any other interesting variations i run across in
between.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

