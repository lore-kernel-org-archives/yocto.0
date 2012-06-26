Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A79C1E0070C
	for <yocto@yoctoproject.org>; Tue, 26 Jun 2012 09:26:33 -0700 (PDT)
Received: from cpec03f0ed08c7f-cm001ac318e826.cpe.net.cable.rogers.com
	([99.241.91.63]:39649 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.77) (envelope-from <rpjday@crashcourse.ca>)
	id 1SjYb2-0004Ea-TS; Tue, 26 Jun 2012 12:26:32 -0400
Date: Tue, 26 Jun 2012 12:26:28 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Paul Eggleton <paul.eggleton@linux.intel.com>
In-Reply-To: <2725324.4uKQHqG1Nb@helios>
Message-ID: <alpine.DEB.2.02.1206261224520.5797@oneiric>
References: <alpine.DEB.2.02.1206260459040.8547@oneiric>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237946A1307E@ORSMSX101.amr.corp.intel.com>
	<alpine.DEB.2.02.1206261139290.5553@oneiric>
	<2725324.4uKQHqG1Nb@helios>
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
X-List-Received-Date: Tue, 26 Jun 2012 16:26:33 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Tue, 26 Jun 2012, Paul Eggleton wrote:

> On Tuesday 26 June 2012 11:45:50 Robert P. J. Day wrote:
> >   since the ubiquitous reaction to complaining about something is
> > always, "don't just whine, do something about it," i'm doing that.
> > i've started a personal yocto FAQ, based on questions either i've
> > asked myself, or colleagues or clients have asked me, and i'm posting
> > them here (obviously a work in progress, typed in over the last hour):
> >
> > http://www.crashcourse.ca/wiki/index.php/Yocto_FAQ
> >
> >   i'm collecting questions that clearly belong in a "how do i do X?"
> > FAQ and, even if i don't know the answer, i'm still going to add the
> > question to remind me to *find* the answer.
>
> Just looking at that page, a couple of items spring to mind:
>
> 1) Why are you pointing people to the prefile/postfile options in preference to
> just putting the "common, personal configuration" in local.conf?

  i thought that was the technique for centralizing personal config
preferences that you *didn't* want to manually copy into every
local.conf file you created.  if you add that personal content into
each local.conf, then of course you don't need those options.

> 2) Your IMAGE_INSTALL_append example needs a leading space in the string or it
> will almost certainly not work (or at least, it will only work when there's
> already a trailing space in the value of IMAGE_INSTALL).

  whoops, quite so.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

