Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2AA53E00D2E; Wed, 25 May 2016 08:27:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [208.80.204.84 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp484.redcondor.net (smtp484.redcondor.net [208.80.204.84])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4BCF7E00D29
	for <yocto@yoctoproject.org>; Wed, 25 May 2016 08:27:00 -0700 (PDT)
Received: from astoria.ccjclearline.com ([64.235.106.9])
	by smtp484.redcondor.net ({c48374e7-08df-40d9-a0de-96cc9883a037})
	via TCP (outbound) with ESMTPS id 20160525152656185_0484;
	Wed, 25 May 2016 15:26:56 +0000
X-RC-FROM: <rpjday@crashcourse.ca>
Received: from [216.191.234.70] (port=17527 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1b5ajX-0002Nn-1Q; Wed, 25 May 2016 11:28:31 -0400
Date: Wed, 25 May 2016 11:26:16 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost.localdomain
To: Bruce Ashfield <bruce.ashfield@windriver.com>
In-Reply-To: <42df50f9-fb6f-1b5d-cea8-b34cbf0b2a31@windriver.com>
Message-ID: <alpine.LFD.2.20.1605251123240.30452@localhost.localdomain>
References: <alpine.LFD.2.20.1605250613310.21121@localhost.localdomain>
	<5745BE14.7030402@mvista.com>
	<42df50f9-fb6f-1b5d-cea8-b34cbf0b2a31@windriver.com>
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
X-List-Received-Date: Wed, 25 May 2016 15:27:04 -0000
Content-Type: multipart/mixed; BOUNDARY="8323328-401634965-1464189979=:30452"

--8323328-401634965-1464189979=:30452
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 8BIT

On Wed, 25 May 2016, Bruce Ashfield wrote:

> On 2016-05-25 11:00 AM, akuster wrote:
> > Robert,
> >
> >
> > On 05/25/2016 03:18 AM, Robert P. J. Day wrote:
> > >
> > >   specifically in the context of powerpc systems, are there any
> > > suggestions for an image that could be used to boot an older
> > > powerpc system, running completely out of ram, and using that as
> > > an install utility which would then be responsible for
> > > detecting/formatting a hard drive, creating/formatting
> > > filesystems, downloading/installing the OS, post-install
> > > configuration and so on?
> >
> > This sounds like an installer MV has and that I have been given
> > approval to release (just haven’t had the time to submit it).
> > Its X86 centric ie uses grub and support efi
> >
> > It boots up from an iso image and runs a ncurses based interface
> > that allows you to select HD, create partitions and filesystem
> > types. It will install what ever image you built. It creates grub
> > conf and installs it. The installer bit is written in python.
>
> If you do end up releasing it, I have some "installer tech" that
> runs on non-x86 that I can see how it fits together.

  if any of that "installer tech" is relevant for powerpc, that would
be most excellent. would that be related to WRL's "Installer Image"?

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

--8323328-401634965-1464189979=:30452--
