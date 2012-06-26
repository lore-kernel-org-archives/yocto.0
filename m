Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 24122E006D9
	for <yocto@yoctoproject.org>; Tue, 26 Jun 2012 09:51:20 -0700 (PDT)
Received: from cpec03f0ed08c7f-cm001ac318e826.cpe.net.cable.rogers.com
	([99.241.91.63]:39957 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.77) (envelope-from <rpjday@crashcourse.ca>)
	id 1SjYz1-0006Aw-Fe; Tue, 26 Jun 2012 12:51:19 -0400
Date: Tue, 26 Jun 2012 12:51:15 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Paul Eggleton <paul.eggleton@linux.intel.com>
In-Reply-To: <3228700.TZNO2vyRAD@helios>
Message-ID: <alpine.DEB.2.02.1206261247100.5915@oneiric>
References: <alpine.DEB.2.02.1206260459040.8547@oneiric>
	<2725324.4uKQHqG1Nb@helios>
	<alpine.DEB.2.02.1206261224520.5797@oneiric>
	<3228700.TZNO2vyRAD@helios>
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
Subject: Re: <rant>the current yocto FAQ is pretty much valueless</rant>
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
X-List-Received-Date: Tue, 26 Jun 2012 16:51:20 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Tue, 26 Jun 2012, Paul Eggleton wrote:

> On Tuesday 26 June 2012 12:26:28 Robert P. J. Day wrote:
> >   i thought that was the technique for centralizing personal config
> > preferences that you *didn't* want to manually copy into every
> > local.conf file you created.  if you add that personal content into
> > each local.conf, then of course you don't need those options.
>
> I guess it depends on what you mean by "personal content". Certain
> settings are really part of distro policy and if you're finding that
> you're setting them all the time for all of the builds that you're
> doing, it would make more sense to create a distro layer that sets
> them - then it's simply a matter of ensuring that layer is added to
> your bblayers.conf and you set DISTRO as appropriate.
>
> AFAIK the command line options in question were added to allow
> frontends to inject configuration into bitbake rather than something
> the user would normally use directly.

  ok, that makes sense.  but would it also make sense for bitbake to
perhaps support another option that *does* allow personal content to,
say, be effectively appended to one's local.conf.  for instance, every
single local.conf i create immediately gets this added to the end:

SOURCE_MIRROR_URL ?= "file:///home/rpjday/dl/"
INHERIT += "own-mirrors"
BB_GENERATE_MIRROR_TARBALLS = "1"
# BB_NO_NETWORK = "1"

  is there a simpler way to do that?

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

