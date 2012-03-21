Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 899B1E0070C
	for <yocto@yoctoproject.org>; Wed, 21 Mar 2012 03:24:49 -0700 (PDT)
Received: from cpec03f0ed08c7f-cm001ac318e826.cpe.net.cable.rogers.com
	([99.241.91.63] helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.69) (envelope-from <rpjday@crashcourse.ca>)
	id 1SAIim-0000lg-Dw; Wed, 21 Mar 2012 06:24:48 -0400
Date: Wed, 21 Mar 2012 06:24:42 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Jack Mitchell <ml@communistcode.co.uk>
In-Reply-To: <4F69A9F1.2090602@communistcode.co.uk>
Message-ID: <alpine.DEB.2.02.1203210623540.16708@oneiric>
References: <alpine.DEB.2.02.1203210547020.19919@oneiric>
	<4F69A9F1.2090602@communistcode.co.uk>
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
Subject: Re: wiki entry on how to create own source download mirror
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
X-List-Received-Date: Wed, 21 Mar 2012 10:24:49 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Wed, 21 Mar 2012, Jack Mitchell wrote:

> On 21/03/12 09:50, Robert P. J. Day wrote:
> >    just noticed someone refer to this "How do I" entry:
> >
> > https://wiki.yoctoproject.org/wiki/How_do_I#Q:_How_create_my_own_source_download_mirror_.3F
> >
> > i'm tempted to clarify that section in a couple ways unless there are
> > any objections.
> >
> >    first, i don't think that section makes it clear that that technique
> > can also be used to just *use* a local source mirror if you already
> > happen to have a directory of tarballs lying around for some reason.
> > (that's how i came to use it -- several gigs of tarballs from earlier
> > days messing with OE.)
> >
> >    also, unnecessary to do "complete build", i just do "bitbake -c
> > fetchall<image>".
> >
> >    thoughts?
> >
> > rday
> >
>
> Sounds good to me, I was the one who suggested it and thought it
> could possibly be a bit lacking if you didn't have at least a basic
> base knowledge of OE/Bitbake.

  i'll try to get to that later today if time permits.  if you feel
like jumping in first, feel free.  (or anyone else, for that matter.)

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

