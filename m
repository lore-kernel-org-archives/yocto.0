Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0307DE013A5
	for <yocto@yoctoproject.org>; Mon, 19 Mar 2012 10:16:27 -0700 (PDT)
Received: from cpec03f0ed08c7f-cm001ac318e826.cpe.net.cable.rogers.com
	([99.241.91.63] helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.69) (envelope-from <rpjday@crashcourse.ca>)
	id 1S9gC0-0003GO-I3; Mon, 19 Mar 2012 13:16:24 -0400
Date: Mon, 19 Mar 2012 13:16:14 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Darren Hart <dvhart@linux.intel.com>
In-Reply-To: <4F6767CE.5080802@linux.intel.com>
Message-ID: <alpine.DEB.2.02.1203191312560.16144@oneiric>
References: <alpine.DEB.2.02.1202291147340.2150@oneiric>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237945173476@ORSMSX101.amr.corp.intel.com>
	<4F6767CE.5080802@linux.intel.com>
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
Subject: Re: my idea of a quick start guide
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
X-List-Received-Date: Mon, 19 Mar 2012 17:16:27 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Mon, 19 Mar 2012, Darren Hart wrote:

> On 03/16/2012 04:27 PM, Rifenbark, Scott M wrote:
> > Several people have indicated a quick start section like Robert's wiki page would be good in the YP QS.  I agree that the idea of diverting the super user to a shortened, more concise section that let's you kick the tires of Yocto is a good idea.  I have created a section based on Robert's example from his wiki page.  You can see it at this link:
> >
> > http://www.yoctoproject.org/docs/latest/yocto-project-qs/yocto-project-qs.html#super-user
> >
> > Feedback and comments welcome.
>
> It's not a bad section to have, but it doesn't feel integrated into
> the quickstart, especially the bit about building for Beagleboard
> xM. Users looking for a truly quick start will still have to troll
> through pages of introductory overview and concepts before they get
> to this. I still argue that a new user should be able to build and
> boot qemux86 sato using the QS guide without having to scroll down.

  actually, i agree -- i had no input into where that content was
placed in the QS guide. :-)

  in fact, i'm currently in the process of writing some OE-core
tutorial material and part of that involves showing how to build a
QEMU core-image-sato image using nothing but a checkout of oe-core.
so that's not really yocto material, it's much more basic OE-core
material.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

