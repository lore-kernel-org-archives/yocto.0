Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 69789E0054F
	for <yocto@yoctoproject.org>; Tue,  1 Nov 2011 14:56:14 -0700 (PDT)
Received: from cpec03f0ed08c7f-cm001ac318e826.cpe.net.cable.rogers.com
	([99.241.2.77] helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.69) (envelope-from <rpjday@crashcourse.ca>)
	id 1RLMJW-0003tX-P6; Tue, 01 Nov 2011 17:56:10 -0400
Date: Tue, 1 Nov 2011 17:56:03 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost6.localdomain6
To: Tom Zanussi <tom.zanussi@intel.com>
In-Reply-To: <1320183968.2400.83.camel@elmorro>
Message-ID: <alpine.DEB.2.02.1111011755030.5630@localhost6.localdomain6>
References: <CANFv2EkrNFQw57X=tV5Wz+a5F-cqp_GQHsOpLhOh7pXeTSnpXg@mail.gmail.com>
	<1320176449.2400.63.camel@elmorro>
	<alpine.DEB.2.02.1111011733510.5226@localhost6.localdomain6>
	<1320183968.2400.83.camel@elmorro>
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
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Build error while following Appendix A. Yocto Project Development manual
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
X-List-Received-Date: Tue, 01 Nov 2011 21:56:14 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Tue, 1 Nov 2011, Tom Zanussi wrote:

> On Tue, 2011-11-01 at 14:37 -0700, Robert P. J. Day wrote:
> > On Tue, 1 Nov 2011, Tom Zanussi wrote:

... snip ...

> > > Hmm, not sure what's going on here - I'm sure this example was
> > > verified several times, but just to make sure, what you're doing is
> > > going through 'Appendix A. BSP Development Example' verbatim and
> > > getting this?
> >
> >   ironically, i'm working on this very example and something in the
> > dev manual doesn't look right.  section A.5.2.1:
> >
> > These commands take care of the recipes-bsp recipes:
> >
> >   $ rm -rf meta-mymachine/recipes-graphics/xorg-xserver/*emgd*
> >   ... snip ...
> >
> > why is that command referring to the recipes-graphics directory when
> > this section is supposed to be adjusting recipes-bsp?
> >
> > or have i screwed something up?
>
> You're right, that line shouldn't be there (it should be removed
> from the instructions).  The emgd recipes were moved out of
> meta-crownbay and into meta-intel/common, so this step is no longer
> needed.

  let me finish following this through and i'll make notes on anything
else that looks odd and report back.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

