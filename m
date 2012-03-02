Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2CB7DE003E4
	for <yocto@yoctoproject.org>; Fri,  2 Mar 2012 14:33:54 -0800 (PST)
Received: from cpec03f0ed08c7f-cm001ac318e826.cpe.net.cable.rogers.com
	([99.241.91.63] helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.69) (envelope-from <rpjday@crashcourse.ca>)
	id 1S3b2t-0003Un-U9; Fri, 02 Mar 2012 17:33:52 -0500
Date: Fri, 2 Mar 2012 17:33:44 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: William Mills <wmills@ti.com>
In-Reply-To: <4F514826.5050402@ti.com>
Message-ID: <alpine.DEB.2.02.1203021729040.31351@oneiric>
References: <alpine.DEB.2.02.1202281349020.2440@oneiric>
	<4F4D457F.7000306@windriver.com>
	<alpine.DEB.2.02.1202281651040.8024@oneiric>
	<D8B2FCF1-09C3-4DEF-BFFB-3E0A421C61AE@beagleboard.org>
	<alpine.DEB.2.02.1202281723110.9200@oneiric>
	<4F514826.5050402@ti.com>
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
Cc: Yocto discussion list <yocto@yoctoproject.org>,
	Koen Kooi <koen@beagleboard.org>
Subject: Re: proper recipe for building for beagle xM? meta-ti?
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
X-List-Received-Date: Fri, 02 Mar 2012 22:33:54 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Fri, 2 Mar 2012, William Mills wrote:

... snip ...

> Congratulations you are the first beta tester for the new README.txt
> language :) (patched two days ago).
>
> Denys: I suggest
>
> change:
>
> "Due to the above, it is now recommended to follow the instructions
> at http://www.angstrom-distribution.org/building-angstrom"
>
> to:
>
> "When the other layer combinations are supported instructions will
> be supplied here. Until that time please see the Angstrom setup
> instructions below.
>
> *** Angstrom w/ meta-ti Layer Stack setup: ***
> Please follow the instructions at
> http://www.angstrom-distribution.org/building-angstrom"

  i might try something a bit different.  given that angstrom is the
tested way to go, by all means, point that out and *strongly*
recommend that approach.

  on the other hand, what is the current issue with the yocto/meta-ti
combo?  is it *known* to be broken?  or is it simply not sufficiently
tested?  in cases like that, i see no problem in cautioning people
about it, but telling them that if they're feeling adventurous,
they're welcome to give it a shot but if it breaks, as they say, they
get to keep all the pieces.

  don't discourage people from trying it, but make sure you give
proper instructions for how to use it, that's all.  unless, as i said,
it's really and truly unusable.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

