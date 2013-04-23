Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A8733E014B2
	for <yocto@yoctoproject.org>; Tue, 23 Apr 2013 07:02:45 -0700 (PDT)
Received: from cpebcc8100de718-cmbcc8100de715.cpe.net.cable.rogers.com
	([99.240.144.66]:35518 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:DHE-RSA-AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1UUdnx-0007ly-03; Tue, 23 Apr 2013 10:02:45 -0400
Date: Tue, 23 Apr 2013 10:02:36 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Bruce Ashfield <bruce.ashfield@windriver.com>
In-Reply-To: <5176942C.9010401@windriver.com>
Message-ID: <alpine.DEB.2.02.1304231002040.16854@oneiric>
References: <alpine.DEB.2.02.1304230955180.16781@oneiric>
	<5176942C.9010401@windriver.com>
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
Subject: Re: kernel-dev manual: SCC Description File Reference seems incomplete
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
X-List-Received-Date: Tue, 23 Apr 2013 14:02:45 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Tue, 23 Apr 2013, Bruce Ashfield wrote:

> On 13-04-23 09:59 AM, Robert P. J. Day wrote:
> >
> >    currently psyching up to work my way through the kernel dev manual,
> > and i noticed this:
> >
> > http://www.yoctoproject.org/docs/latest/kernel-dev/kernel-dev.html#scc-reference
> >
> > that reference list seems incomplete. at a *brief* glance:
> >
> > * no mention of the "force" directive
> > * no mention "include" directive has optional following keywords, such
> >    as "nocfg" or "inherit"
> > * no mention of kconf keyword "required", which i've seen on occasion
> >
> >    again, that was a very brief observation, not meant to be a complete
> > list.
>
> There are already bugs open, and in progress documentation updates to
> take care of this .. my remaining 1.4 action items. But putting out
> release fires trumped finishing them for the past few weeks.

  ok, i'll just start a list and hang onto it until after that.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

