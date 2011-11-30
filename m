Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7957EE00307
	for <yocto@yoctoproject.org>; Wed, 30 Nov 2011 03:46:48 -0800 (PST)
Received: from cpec03f0ed08c7f-cm001ac318e826.cpe.net.cable.rogers.com
	([99.241.2.77] helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.69) (envelope-from <rpjday@crashcourse.ca>)
	id 1RVicg-0001aY-Gi; Wed, 30 Nov 2011 06:46:46 -0500
Date: Wed, 30 Nov 2011 06:46:36 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Paul Eggleton <paul.eggleton@linux.intel.com>
In-Reply-To: <1592821.2ngvXcyh81@helios>
Message-ID: <alpine.DEB.2.02.1111300644120.18752@oneiric>
References: <alpine.DEB.2.02.1111291759160.17235@oneiric>
	<1592821.2ngvXcyh81@helios>
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
Subject: Re: how to cleanly exit a QEMU session?
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
X-List-Received-Date: Wed, 30 Nov 2011 11:46:49 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Wed, 30 Nov 2011, Paul Eggleton wrote:

> On Tuesday 29 November 2011 18:00:31 Robert P. J. Day wrote:
> >   i'm sure it's in one of the docs i missed, but how does one cleanly
> > shut down a QEMU session and get back to the original terminal
> > session?  i've tried shutdown and poweroff but neither of those gives
> > me my shell prompt back.
>
> Which machine are you running within the emulator? I know some emulated
> machines don't seem to support actually powering off - does reboot work?

  qemuppc, core-image-minimal.  interestingly, "poweroff" doesn't
completely close the QEMU session, but "reboot" does.  it might be
worth adding that to the quick start guide.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

