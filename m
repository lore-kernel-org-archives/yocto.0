Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2733AE013CA
	for <yocto@yoctoproject.org>; Wed, 17 Apr 2013 08:12:31 -0700 (PDT)
Received: from cpebcc8100de718-cmbcc8100de715.cpe.net.cable.rogers.com
	([99.240.144.66]:60033 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:DHE-RSA-AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1USU2A-0007Mk-BY; Wed, 17 Apr 2013 11:12:30 -0400
Date: Wed, 17 Apr 2013 11:12:26 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Paul Eggleton <paul.eggleton@linux.intel.com>
In-Reply-To: <2155264.hXQStR7GGJ@helios>
Message-ID: <alpine.DEB.2.02.1304171108430.11390@oneiric>
References: <alpine.DEB.2.02.1304171022430.10912@oneiric>
	<2155264.hXQStR7GGJ@helios>
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
Subject: Re: writeup on the mechanics of FILESEXTRAPATHS and bbappend files
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
X-List-Received-Date: Wed, 17 Apr 2013 15:12:31 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Wed, 17 Apr 2013, Paul Eggleton wrote:

> On Wednesday 17 April 2013 10:24:42 Robert P. J. Day wrote:
> >   a while back, i dug into how FILESEXTRAPATHS worked with respect to
> > .bbappend files and i wrote it up, just updated it a bit here:
> >
> > http://www.crashcourse.ca/wiki/index.php/FILESEXTRAPATHS_and_bbappend_files
> >
> > do i have it about right? it seemed that the underlying details
> > weren't really explained well in any of the current yocto docs, and i
> > wanted something i could point students at.
>
> It looks OK to me although if you're going to point students at it I
> might suggest moving the "don't look here!" stuff elsewhere ;)

  yes, that's going to be updated with more examples ripped from the
headlines. :-)

> Also as I believe I mentioned before, FILESEXTRAPATHS adds not just
> one directory but an "entire list of directories" is it allows
> bbappend file path behaviour to match that of the recipe itself.

  quite so. the reason i did that writeup is that, as i mentioned, i
don't think the behaviour of FILESEXTRAPATHS is well explained. for
example, the entry in the reference manual variable glossary here:

http://www.yoctoproject.org/docs/1.2/poky-ref-manual/poky-ref-manual.html#var-FILESEXTRAPATHS

doesn't even *hint* at the underlying behaviour, which i think is
important to understand.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

