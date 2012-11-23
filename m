Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 03A59E013EF
	for <yocto@yoctoproject.org>; Fri, 23 Nov 2012 06:48:22 -0800 (PST)
Received: from cpebcc81008dd2c-cmbcc81008dd29.cpe.net.cable.rogers.com
	([99.253.156.71]:39432 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.77) (envelope-from <rpjday@crashcourse.ca>)
	id 1TbuYI-0007o1-4p; Fri, 23 Nov 2012 09:48:22 -0500
Date: Fri, 23 Nov 2012 09:48:18 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Paul Eggleton <paul.eggleton@linux.intel.com>
In-Reply-To: <3038126.PEqOPPdATB@helios>
Message-ID: <alpine.DEB.2.02.1211230945001.3535@oneiric>
References: <alpine.DEB.2.02.1211211718070.14208@oneiric>
	<1385552.yOr8lfiUWF@helios>
	<alpine.DEB.2.02.1211230924450.3405@oneiric>
	<3038126.PEqOPPdATB@helios>
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
Subject: Re: inconsistent pages out there for setting up your yocto dev host
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
X-List-Received-Date: Fri, 23 Nov 2012 14:48:23 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Fri, 23 Nov 2012, Paul Eggleton wrote:

> Well, we don't test with any other value of ASSUME_PROVIDED. If you
> add tools to ASSUME_PROVIDED that we would have otherwise built so
> that the host tools are used, we haven't tested the build with those
> host tools. Equally if you remove items from the default value of
> ASSUME_PROVIDED, we don't necessarily fully test the system with
> native tools that we don't normally build (although that's less
> likely to be an issue than the other case).
>
> I'm not saying you can't change the value of ASSUME_PROVIDED - just
> that if you do and the build breaks, you get to keep both pieces :)

  completely understood.  for the sake of classroom work, i'm going to
experiment with adding extra entries to speed things up, and watch if
anything breaks.  my first choice would be to add subversion to
ASSUME_PROVIDED -- that seems fairly safe, any moderately current
version of subversion should work.

  thanks.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

