Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EC4D2E01469
	for <yocto@yoctoproject.org>; Tue,  9 Apr 2013 04:32:07 -0700 (PDT)
Received: from cpebcc8100de718-cmbcc8100de715.cpe.net.cable.rogers.com
	([99.240.144.66]:53999 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:DHE-RSA-AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1UPWmV-0003Us-4s; Tue, 09 Apr 2013 07:32:07 -0400
Date: Tue, 9 Apr 2013 07:32:03 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Tom Zanussi <tom.zanussi@intel.com>
In-Reply-To: <1365469127.17697.70.camel@empanada>
Message-ID: <alpine.DEB.2.02.1304090729220.4184@oneiric>
References: <alpine.DEB.2.02.1304081135020.23038@oneiric>
	<1365469127.17697.70.camel@empanada>
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
Subject: Re: working my way through the kernel hands-on labs finally
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
X-List-Received-Date: Tue, 09 Apr 2013 11:32:08 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Mon, 8 Apr 2013, Tom Zanussi wrote:

> On Mon, 2013-04-08 at 11:41 -0400, Robert P. J. Day wrote:
> > finally have the time to work my way through the ELC 2013 hands on
> > kernel labs described here:
> >
> > https://www.yoctoproject.org/tools-resources/presentations/working-kernel
> >
> > since i'll almost certainly use some of them in my next yocto course,
> > so the occasional question for anyone who's already been down this
> > road.  start with lab 1.
> >
> >   the doc mentions including the meta-yocto and meta-yocto-bsp
> > layers -- are those strictly necessary? the layer.conf definition
> > file for the lab1 layer doesn't list those layers as dependencies.
> > what will happen if i leave them out? what's the policy on
> > explicitly listing dependencies on those two layers in a new
> > layer?
> >
>
> The bblayers.conf for the labs is just the bblayers.conf that gets
> generated the first time you source oe-init-build-env in poky, which
> is what the lab is based on.  You shouldn't need those layers - the
> BSPs should work fine outside of poky, but since this is a yocto lab
> and it uses poky, there's no need to make a point of removing them -
> actually, I haven't tried removing those layers - meta-yocto-bsp
> could certainly be removed since it's all machine-specific to
> existing BSPs, but it's easy enough to remove them and see...

  i took them out since i'm a minimalist -- i really like to strip out
anything that doesn't need to be there to avoid any unexpected side
effects.  so far, doesn't seem to have made a difference, and i didn't
expect it to.

  to lab 2.  and beyond!

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

