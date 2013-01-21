Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7D45DE0047F
	for <yocto@yoctoproject.org>; Mon, 21 Jan 2013 13:00:04 -0800 (PST)
Received: from cpec03f0ed08c7f-cm001ac318e826.cpe.net.cable.rogers.com
	([174.115.5.73]:47404 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:DHE-RSA-AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1TxOTL-00026e-Cu; Mon, 21 Jan 2013 16:00:03 -0500
Date: Mon, 21 Jan 2013 16:00:00 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Tom Zanussi <tom.zanussi@intel.com>
In-Reply-To: <1358801786.9032.5.camel@empanada>
Message-ID: <alpine.DEB.2.02.1301211558410.32572@oneiric>
References: <41DEA4B02DBDEF40A0F3B6D0DDB1237957D274A2@ORSMSX101.amr.corp.intel.com>
	<alpine.DEB.2.02.1301211517180.32194@oneiric>
	<1358801786.9032.5.camel@empanada>
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
Subject: Re: YP Profiling and Tracing Manual available
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
X-List-Received-Date: Mon, 21 Jan 2013 21:00:04 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Mon, 21 Jan 2013, Tom Zanussi wrote:

> On Mon, 2013-01-21 at 15:17 -0500, Robert P. J. Day wrote:
> > On Mon, 21 Jan 2013, Rifenbark, Scott M wrote:
> >
> > > Hi,
> > >
> > > There is a new YP-style manual called "Yocto Project Profiling and
> > > Tracing Manual" available at
> > > http://www.yoctoproject.org/docs/1.4/profile-manual/profile-manual.html.
> > > While this manual is in YP-form, it has not undergone any edits from
> > > its original at
> > > https://wiki.yoctoproject.org/wiki/Tracing_and_Profiling.
> >
> >   will all of this work with the QEMU images?
> >
>
> Some of it will, some of it won't.  Things that require real
> hardware PMU support won't since qemu doesn't have complete hardware
> emulation for some of this stuff.  I don't remember offhand what
> exactly, and I did run unto that myself when writing this, which is
> why the examples use real hardware.
>
> For things that obviously don't need hardware support, go ahead and
> use qemu but when in doubt, or if something doesn't work as expected
> assume that real hardware should be used...

  i had assumed that was the answer.  i asked since i'm going to whip
up some student labs based on some of what's in that manual, and it
would be convenient to be able to do as much as possible using virtual
machines.

  off to write some wiki pages ...

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

