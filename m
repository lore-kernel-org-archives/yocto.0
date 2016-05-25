Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 13161E00D32; Wed, 25 May 2016 08:53:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [208.80.206.85 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp685.redcondor.net (smtp685.redcondor.net [208.80.206.85])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EAEC0E00D2C
	for <yocto@yoctoproject.org>; Wed, 25 May 2016 08:53:26 -0700 (PDT)
Received: from astoria.ccjclearline.com ([64.235.106.9])
	by smtp685.redcondor.net ({20c8e40f-6b6c-4c9e-abff-1640ea7bf404})
	via TCP (outbound) with ESMTPS id 20160525155322494_0685;
	Wed, 25 May 2016 08:53:22 -0700
X-RC-FROM: <rpjday@crashcourse.ca>
Received: from [216.191.234.70] (port=43430 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1b5b97-0004z5-MI; Wed, 25 May 2016 11:54:57 -0400
Date: Wed, 25 May 2016 11:52:43 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost.localdomain
To: Bruce Ashfield <bruce.ashfield@windriver.com>
In-Reply-To: <5fe07471-c5cd-acf6-02c3-c6636663bfa2@windriver.com>
Message-ID: <alpine.LFD.2.20.1605251147580.30729@localhost.localdomain>
References: <alpine.LFD.2.20.1605250613310.21121@localhost.localdomain>
	<5745BE14.7030402@mvista.com>
	<42df50f9-fb6f-1b5d-cea8-b34cbf0b2a31@windriver.com>
	<alpine.LFD.2.20.1605251123240.30452@localhost.localdomain>
	<5fe07471-c5cd-acf6-02c3-c6636663bfa2@windriver.com>
User-Agent: Alpine 2.20 (LFD 67 2015-01-07)
MIME-Version: 1.0
X-MAG-OUTBOUND: ccj.redcondor.net@64.235.106.9/32
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: any pointers to a yocto-based image to use as a live install utility?
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
X-List-Received-Date: Wed, 25 May 2016 15:53:30 -0000
Content-Type: multipart/mixed; BOUNDARY="8323328-1575049087-1464191565=:30729"

--8323328-1575049087-1464191565=:30729
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 8BIT

On Wed, 25 May 2016, Bruce Ashfield wrote:

> On 2016-05-25 11:26 AM, Robert P. J. Day wrote:
> > On Wed, 25 May 2016, Bruce Ashfield wrote:
> >
> > > On 2016-05-25 11:00 AM, akuster wrote:
> > > > Robert,
> > > >
> > > >
> > > > On 05/25/2016 03:18 AM, Robert P. J. Day wrote:
> > > > >
> > > > >   specifically in the context of powerpc systems, are there
> > > > > any suggestions for an image that could be used to boot an
> > > > > older powerpc system, running completely out of ram, and
> > > > > using that as an install utility which would then be
> > > > > responsible for detecting/formatting a hard drive,
> > > > > creating/formatting filesystems, downloading/installing the
> > > > > OS, post-install configuration and so on?
> > > >
> > > > This sounds like an installer MV has and that I have been
> > > > given approval to release (just haven’t had the time to submit
> > > > it). Its X86 centric ie uses grub and support efi
> > > >
> > > > It boots up from an iso image and runs a ncurses based
> > > > interface that allows you to select HD, create partitions and
> > > > filesystem types. It will install what ever image you built.
> > > > It creates grub conf and installs it. The installer bit is
> > > > written in python.
> > >
> > > If you do end up releasing it, I have some "installer tech" that
> > > runs on non-x86 that I can see how it fits together.
> >
> >   if any of that "installer tech" is relevant for powerpc, that
> > would be most excellent. would that be related to WRL's "Installer
> > Image"?
>
> In this case no. It is something simpler for a container OS, but it
> does run from a bootable USB and has a simple backend that you can
> customize for a given platform. The only trick is getting the right
> bootable USB for non-x86.

  oh, darn ... i haz a sad. so it looks like i'm pretty well starting
from scratch, unless someone has pointers to anything i can use or
cannibalize to use as a starting point.

  basically, i'm after something that:

  * runs on powerpc
  * has the ability to scan the hard drive and decide what to do
    about existing partitions, possibly preserving them
  * runs entirely standalone as it must be run on remote systems

the plan right now is to create a live linux image, and having to
pretty much manually do the above, so if you have any shortcuts, i'm
all ears.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

--8323328-1575049087-1464191565=:30729--
