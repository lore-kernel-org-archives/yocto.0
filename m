Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AC9ABE01487
	for <yocto@yoctoproject.org>; Wed, 17 Apr 2013 08:34:31 -0700 (PDT)
Received: from cpebcc8100de718-cmbcc8100de715.cpe.net.cable.rogers.com
	([99.240.144.66]:60254 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:DHE-RSA-AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1USUNS-0001ce-JN; Wed, 17 Apr 2013 11:34:30 -0400
Date: Wed, 17 Apr 2013 11:34:27 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Gary Thomas <gary@mlbassoc.com>
In-Reply-To: <516EBBE7.8060201@mlbassoc.com>
Message-ID: <alpine.DEB.2.02.1304171128010.12898@oneiric>
References: <alpine.DEB.2.02.1304171022430.10912@oneiric>
	<2155264.hXQStR7GGJ@helios> <516EBBE7.8060201@mlbassoc.com>
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
X-List-Received-Date: Wed, 17 Apr 2013 15:34:31 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Wed, 17 Apr 2013, Gary Thomas wrote:

> On 2013-04-17 09:03, Paul Eggleton wrote:
> > On Wednesday 17 April 2013 10:24:42 Robert P. J. Day wrote:
> > >    a while back, i dug into how FILESEXTRAPATHS worked with respect to
> > > .bbappend files and i wrote it up, just updated it a bit here:
> > >
> > > http://www.crashcourse.ca/wiki/index.php/FILESEXTRAPATHS_and_bbappend_files
> > >
> > > do i have it about right? it seemed that the underlying details
> > > weren't really explained well in any of the current yocto docs, and i
> > > wanted something i could point students at.
> >
> > It looks OK to me although if you're going to point students at it I might
> > suggest moving the "don't look here!" stuff elsewhere ;)
> >
> > Also as I believe I mentioned before, FILESEXTRAPATHS adds not just one
> > directory but an "entire list of directories" is it allows bbappend file
> > path
> > behaviour to match that of the recipe itself.
>
> I also think it would be good to point out the use of := in the
> FILESEXTRAPATHS assignment and why it's important.

  done:

http://www.crashcourse.ca/wiki/index.php/FILESEXTRAPATHS_and_bbappend_files#Adding_the_meta-yocto_layer_and_building_for_a_BeagleBoard

i'm already unhappy with the way that whole page is written so i'll
redesign it this weekend, and maybe add a bit more. i just remember it
taking me a while to truly understand what was happening there so i
figured i'd better write it down before i forgot.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

