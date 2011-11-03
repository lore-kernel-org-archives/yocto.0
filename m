Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 73B6DE006B4
	for <yocto@yoctoproject.org>; Thu,  3 Nov 2011 10:41:43 -0700 (PDT)
Received: from [128.224.252.2] (helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.69) (envelope-from <rpjday@crashcourse.ca>)
	id 1RM1II-0005WR-Ff; Thu, 03 Nov 2011 13:41:38 -0400
Date: Thu, 3 Nov 2011 13:41:31 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost6.localdomain6
To: Darren Hart <dvhart@linux.intel.com>
In-Reply-To: <4EB2D044.7050207@linux.intel.com>
Message-ID: <alpine.DEB.2.02.1111031340010.6799@localhost6.localdomain6>
References: <alpine.DEB.2.02.1110301131040.522@localhost6.localdomain6>
	<4EAD7542.4070204@gna.org>
	<alpine.DEB.2.02.1110301214180.915@localhost6.localdomain6>
	<4EAED7B0.4050909@windriver.com>
	<alpine.DEB.2.02.1110311323050.8545@localhost6.localdomain6>
	<4EAEDD3A.9070601@mlbassoc.com> <4EB2D044.7050207@linux.intel.com>
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
Subject: Re: what's the proper value for BB_NUMBER_THREADS?
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
X-List-Received-Date: Thu, 03 Nov 2011 17:41:44 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Thu, 3 Nov 2011, Darren Hart wrote:

>
>
> On 10/31/2011 10:39 AM, Gary Thomas wrote:
> > On 2011-10-31 11:25, Robert P. J. Day wrote:
> >> On Mon, 31 Oct 2011, Mark Hatle wrote:
> >>
> >>> On 10/30/11 11:15 AM, Robert P. J. Day wrote:
> >>>> On Sun, 30 Oct 2011, Christian Gagneraud wrote:
> >>>>
> >>>>> On 30/10/11 15:32, Robert P. J. Day wrote:
> >>>>>>
> >>>>>>     all the docs recommend twice the number of cores (AFAICT), yet the
> >>>>>> template local.conf file suggests that, for a quad core, the value of
> >>>>>> 4 would be appropriate.  shouldn't that say 8?  same with
> >>>>>> PARALLEL_MAKE?
> >>>>>
> >>>>> Hi Robert,
> >>>>>
> >>>>> The Poky ref manual says (rule of thumb) x2 for BB_NUMBER_THREADS,
> >>>>> and x1.5 for PARALLEL_MAKE.
> >>>>
> >>>>    if that's the case, anyone object to my submitting a patch to
> >>>> update local.conf.sample appropriately?
> >>>>
> >>>> rday
> >>>>
> >>>
> >>> I agree the manual and local.conf files should match.  The issue
> >>> seems to be that the perfect values are subjective.  Things like
> >>> memory, disk speed, chipset latency, and of course processor
> >>> speed/cores all affect the optimal setting. But we do need a
> >>> consistent rule of thumb..  I myself usually use x2 for both THREADS
> >>> and MAKE.
> >>
> >>    that's what i would normally use, assuming that having an overly
> >> high value for either of those settings can't possibly hurt.  if
> >> that's the consensus, i can adjust the references to say 2x everywhere
> >> that i know of.  just let me know.
> >
> > Look back in the archives - I think it was Richard that did a fairly
> > extensive study of this and he (whoever it was) found that there were
> > saturation points and trying to get beyond them had a negative impact.
>
> 2x on each works well up to about 12 in my experience. Richard has found
> benefits using 24 on a similar system with more memory. However, if you
> aren't building on a monster machine, then 2x serves as a reasonable
> rule of thumb.

  since i vaguely recall that i was the one who asked about this, i
can submit a patch for this unless someone else already wants to.  i
can see that the places to change would be in some of the docs, as
well as the comment in local.conf.sample.

  anyone else want to take care of that?  anyone?  bueller?

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

