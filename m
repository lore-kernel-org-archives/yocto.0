Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7274EE014B9
	for <yocto@yoctoproject.org>; Mon,  8 Apr 2013 09:02:41 -0700 (PDT)
Received: from cpebcc8100de718-cmbcc8100de715.cpe.net.cable.rogers.com
	([99.240.144.66]:57549 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:DHE-RSA-AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1UPEWm-0008Eg-HE; Mon, 08 Apr 2013 12:02:40 -0400
Date: Mon, 8 Apr 2013 12:02:37 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Bruce Ashfield <bruce.ashfield@windriver.com>
In-Reply-To: <5162E975.5040705@windriver.com>
Message-ID: <alpine.DEB.2.02.1304081200410.11037@oneiric>
References: <alpine.DEB.2.02.1304081135020.23038@oneiric>
	<5162E975.5040705@windriver.com>
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
X-List-Received-Date: Mon, 08 Apr 2013 16:02:41 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Mon, 8 Apr 2013, Bruce Ashfield wrote:

> On 13-04-08 11:41 AM, Robert P. J. Day wrote:
> >
> >    finally have the time to work my way through the ELC 2013 hands on
> > kernel labs described here:
> >
> > https://www.yoctoproject.org/tools-resources/presentations/working-kernel
> >
> > since i'll almost certainly use some of them in my next yocto course,
> > so the occasional question for anyone who's already been down this
> > road.  start with lab 1.
> >
> >    the doc mentions including the meta-yocto and meta-yocto-bsp layers
> > -- are those strictly necessary? the layer.conf definition file for
> > the lab1 layer doesn't list those layers as dependencies. what will
> > happen if i leave them out? what's the policy on explicitly listing
> > dependencies on those two layers in a new layer?
> >
> >    also, just doing a basic fetch for lab1 produces:
> >
> > ERROR: QA Issue:
> > /home/rpjday/yocto/k_lab/layers/meta-lab1-qemux86/recipes-kernel/linux/linux_3.0.18.bb:
> > Variable FILES is set as not being package specific, please fix this.
> >
> >    is that deliberate? something that will be resolved later in the
> > lab as part of an exercise? just curious.
>
> Probably not deliberate, the kernel labs aren't about packaging.
> Which branch are you using for your tests ? Even if it's an old
> release branch, there may have been some QA backports between the
> time the lab was done, and the time you are running it.

  i'm using HEAD for everything, even though the labs dictate
poky-danny-8.0.1; if anything breaks because of that, i'll make a note
of it.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

