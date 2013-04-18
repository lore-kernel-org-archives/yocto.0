Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5C415E014E0
	for <yocto@yoctoproject.org>; Thu, 18 Apr 2013 03:28:00 -0700 (PDT)
Received: from cpebcc8100de718-cmbcc8100de715.cpe.net.cable.rogers.com
	([99.240.144.66]:43887 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:DHE-RSA-AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1USm4M-0002Ay-Hj; Thu, 18 Apr 2013 06:27:58 -0400
Date: Thu, 18 Apr 2013 06:27:50 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Gary Thomas <gary@mlbassoc.com>
In-Reply-To: <516FC9B2.1090802@mlbassoc.com>
Message-ID: <alpine.DEB.2.02.1304180627120.4241@oneiric>
References: <alpine.DEB.2.02.1304171022430.10912@oneiric>
	<2155264.hXQStR7GGJ@helios> <516EBBE7.8060201@mlbassoc.com>
	<CAHUNapRQdV5hM8rMrChYD4joa1N0eN9iok6+C4UU07AaJv04Zg@mail.gmail.com>
	<516FC9B2.1090802@mlbassoc.com>
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
X-List-Received-Date: Thu, 18 Apr 2013 10:28:00 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Thu, 18 Apr 2013, Gary Thomas wrote:

> On 2013-04-17 16:26, Trevor Woerner wrote:
> > On Wed, Apr 17, 2013 at 11:12 AM, Gary Thomas <gary@mlbassoc.com> wrote:
> > > I also think it would be good to point out the use of := in the
> > > FILESEXTRAPATHS
> > > assignment and why it's important.
> >
> > Knowing that the := operator will put your directories first is only
> > useful if you also know that the underlying mechanism will take the
> > first such files from the given directories it encounters :-) What's
> > to say bitbake doesn't look at all the directories/files and take the
> > last ones?
>
> This has more to do with how the path is constructed (using _prepend).
>
> My point, which was totally unclear to me when using this line, was
> that with ':=' ${THISDIR} evaluates to the directory that contains
> the .bbappend file (what you want/need) whereas with '=' it evaluates
> to the directory containing the main .bb file.  Incredibly confusing
> if you miss it...

  ah, quite so, must make a note of that. i wonder how many other
places that point should be made forcefully.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

