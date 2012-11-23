Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6D737E013EF
	for <yocto@yoctoproject.org>; Fri, 23 Nov 2012 06:31:44 -0800 (PST)
Received: from cpebcc81008dd2c-cmbcc81008dd29.cpe.net.cable.rogers.com
	([99.253.156.71]:39401 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.77) (envelope-from <rpjday@crashcourse.ca>)
	id 1TbuIA-0006db-TY; Fri, 23 Nov 2012 09:31:43 -0500
Date: Fri, 23 Nov 2012 09:31:39 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Paul Eggleton <paul.eggleton@linux.intel.com>
In-Reply-To: <1385552.yOr8lfiUWF@helios>
Message-ID: <alpine.DEB.2.02.1211230924450.3405@oneiric>
References: <alpine.DEB.2.02.1211211718070.14208@oneiric>
	<2390182.BVIWtCugoK@helios>
	<alpine.DEB.2.02.1211220634590.4451@oneiric>
	<1385552.yOr8lfiUWF@helios>
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
X-List-Received-Date: Fri, 23 Nov 2012 14:31:44 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Thu, 22 Nov 2012, Paul Eggleton wrote:

> On Thursday 22 November 2012 06:54:33 Robert P. J. Day wrote:

> >   first, is ASSUME_PROVIDED technically completely superfluous?
> > it's clearly meant to speed up processing, but could one (if one
> > wanted) unset it and have the processing still work (albeit more
> > slowly, of course)?
>
> If you like building things that you don't have to, sure, but I
> wouldn't equate that to it being superfluous. Note that if you do
> change this variable you are deviating from what has been tested, so
> you do so at your own risk.

  wait, this point interests me so indulge me for a minute.
obviously, there is a minimum collection of software one must install
before starting to use OE/yocto -- at the very least, say, the
fetching software -- so there will always be a page instructing a
developer to install that minimum.

  afterwards, you can use ASSUME_PROVIDED to take advantage of that
software, correct?  and that will certainly speed things up.  but in
what way does that represent a "tested" configuration?

  if you're on an allegedly supported distro, and you do an upgrade,
it's entirely possible that one of those bits of software gets
upgraded in a way that breaks OE/yocto, and by using ASSUME_PROVIDED,
you'll automatically start using that newer utility.  or is the list
of supported distros specifically only those installed out of the box
and never updated?  if that's the case, then, yes, i agree with your
position.

  i'm not trying to be maddeningly pedantic, i am merely succeeding.

rday


-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================


