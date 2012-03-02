Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 603F0E003E1
	for <yocto@yoctoproject.org>; Fri,  2 Mar 2012 04:32:49 -0800 (PST)
Received: from cpec03f0ed08c7f-cm001ac318e826.cpe.net.cable.rogers.com
	([99.241.91.63] helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.69) (envelope-from <rpjday@crashcourse.ca>)
	id 1S3RfE-0005cU-LF; Fri, 02 Mar 2012 07:32:48 -0500
Date: Fri, 2 Mar 2012 07:32:40 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Paul Eggleton <paul.eggleton@linux.intel.com>
In-Reply-To: <2719498.jaIID8MHL8@helios>
Message-ID: <alpine.DEB.2.02.1203020730120.12679@oneiric>
References: <alpine.DEB.2.02.1203020530280.8202@oneiric>
	<1620680.bZkznn7mE0@helios>
	<alpine.DEB.2.02.1203020713480.12193@oneiric>
	<2719498.jaIID8MHL8@helios>
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
Cc: yocto@yoctoproject.org
Subject: Re: simplest recipe for running yocto qemu images?
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
X-List-Received-Date: Fri, 02 Mar 2012 12:32:49 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Fri, 2 Mar 2012, Paul Eggleton wrote:

> On Friday 02 March 2012 07:16:08 Robert P. J. Day wrote:
> >   i gathered that.  but is it unreasonable to suggest that this is
> > something that *should* be easy to do?  if new users simply want to
> > see what a yocto-generated image looks like under qemu, shouldn't
> > there be a way to let them do that without going through an entire
> > build?
>
> I see what you're saying, but the problem with this is the qemu
> version we build is not the same as qemu that might be installed on
> the host machine. We apply quite a number of patches to qemu in
> order to support features we need (such as GL); if you allow
> beginners to easily use something else then it just makes support
> harder because certain things that normally work in the current
> setup will not work when the host tools are being used instead.

  i briefly saw your point until i noticed that the yocto toolchain i
installed comes with qemu-system-* executables, which would take
precedence over the normal host ones, so i'm still skeptical.

  i'm going to mess with this a bit longer since i can't believe it
should be hard to tweak this to get it to work.  no matter what
happens, i'm sure i'll come out of it smarter.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

