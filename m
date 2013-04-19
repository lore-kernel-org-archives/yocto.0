Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E15FFE0144A
	for <yocto@yoctoproject.org>; Fri, 19 Apr 2013 07:34:31 -0700 (PDT)
Received: from cpebcc8100de718-cmbcc8100de715.cpe.net.cable.rogers.com
	([99.240.144.66]:55791 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:DHE-RSA-AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1UTCOU-00034R-Pj; Fri, 19 Apr 2013 10:34:30 -0400
Date: Fri, 19 Apr 2013 10:34:27 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Tomas Frydrych <tf+lists.yocto@r-finger.com>
In-Reply-To: <517152BC.8070905@r-finger.com>
Message-ID: <alpine.DEB.2.02.1304191032090.5553@oneiric>
References: <alpine.DEB.2.02.1304190945410.5102@oneiric>
	<CAJTo0Lac3O-3n13gbzEcKysxijojQMgj0k5Sh1YTuk6dDVkFNw@mail.gmail.com>
	<alpine.DEB.2.02.1304191008450.5407@oneiric>
	<517152BC.8070905@r-finger.com>
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
Subject: Re: any point in a single machine recipe using a machine-specific file?
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
X-List-Received-Date: Fri, 19 Apr 2013 14:34:32 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Fri, 19 Apr 2013, Tomas Frydrych wrote:

> On 19/04/13 15:15, Robert P. J. Day wrote:
> > i'd wonder, if you're building for a different machine, why are
> > you including the meta-rpi layer?
>
> Because at a distro-level you often want to target different
> architectures.

  yes, i appreciate that but, in *this* case, we're talking about a
single machine with a single architecture. i'm pretty sure we're
agreeing, i'm just pointing out that in this specific example, having
a machine-specific subdirectory is overkill.

  in any case, is this point made in any of the existing
documentation? since it seems kind of important to clarify.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

