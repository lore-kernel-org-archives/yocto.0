Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E6C02E013A6
	for <yocto@yoctoproject.org>; Wed,  4 Apr 2012 05:54:46 -0700 (PDT)
Received: from cpec03f0ed08c7f-cm001ac318e826.cpe.net.cable.rogers.com
	([99.241.91.63] helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.69) (envelope-from <rpjday@crashcourse.ca>)
	id 1SFPjZ-0007xJ-SU; Wed, 04 Apr 2012 08:54:45 -0400
Date: Wed, 4 Apr 2012 08:54:40 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Bruce Ashfield <bruce.ashfield@windriver.com>
In-Reply-To: <4F7C429E.3000809@windriver.com>
Message-ID: <alpine.DEB.2.02.1204040852590.22713@oneiric>
References: <alpine.DEB.2.02.1204040527590.4566@oneiric>
	<4F7C429E.3000809@windriver.com>
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
Subject: Re: should the dev docs match the dev yocto source?
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
X-List-Received-Date: Wed, 04 Apr 2012 12:54:47 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Wed, 4 Apr 2012, Bruce Ashfield wrote:

> On 12-04-04 05:29 AM, Robert P. J. Day wrote:
> >
> >    just noticed that BSP guide suggests 3.0 is the preferred linux
> > kernel, while the source itself is now up to 3.2.  should those match?
> > this is for *development* streams of both.
>
> Not necessarily. It depends on the target. We haven't moved everything
> to 3.2 yet.
>
> It should probably say something more generic that choosing one of the
> last two yocto validated kernels is the preferred starting point.

  understood.  i was just looking at the part of the BSP guide using
meta-crownbay as an example, and it kept referring to 3.0 when the
development version is already up to 3.2.  someone else can decide if
that's worth syncing up, given that the 3.0 content is still there.
not a big deal.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

