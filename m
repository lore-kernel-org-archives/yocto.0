Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by mx1.pokylinux.org (Postfix) with ESMTP id C93834C800C1
	for <yocto@yoctoproject.org>; Fri, 15 Jul 2011 14:12:21 -0500 (CDT)
Received: from [128.224.252.2] (helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.69) (envelope-from <rpjday@crashcourse.ca>)
	id 1QhnoC-0004I1-PU; Fri, 15 Jul 2011 15:12:21 -0400
Date: Fri, 15 Jul 2011 15:12:14 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost6.localdomain6
To: Darren Hart <dvhart@linux.intel.com>
In-Reply-To: <4E208580.3030505@linux.intel.com>
Message-ID: <alpine.DEB.2.02.1107151454310.9651@localhost6.localdomain6>
References: <alpine.DEB.2.02.1107141957320.4687@localhost6.localdomain6>
	<4E208580.3030505@linux.intel.com>
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
Subject: Re: the proper way to report bitbake fetch errors?
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
X-List-Received-Date: Fri, 15 Jul 2011 19:12:22 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Fri, 15 Jul 2011, Darren Hart wrote:

> On 07/14/2011 05:01 PM, Robert P. J. Day wrote:
> >
> >   just so i'm doing this the right way, what is the appropriate way to
> > report bitbake fetch errors?  with a fully-updated git repo, i just
> > ran:
> >
> >  $ bitbake -c fetchall -k core-image-sato
> >
> > and got fetch errors for both of:
> >
> >   * sat-solver
> >   * linux-libc-headers
> >
> > should i post the more detailed output of the command?  the contents
> > of the log files?  etc, etc.
>
> I would check the log files and verify it isn't a local network issue.
> After that, sharing the relevant bits of the log.do_fetch logs for the
> failed recipes is a good way to report them.

  ok, i'm still getting a fetch error for "sat-solver" when trying to
do a fetchall for core-image-sato, and here's the log file:

fatal: Not a git repository (or any of the parent directories): .git
 fatal: Not a git repository (or any of the parent directories): .git
ERROR: Function 'Fetcher failure for URL:
'git://gitorious.org/opensuse/sat-solver.git;protocol=git'. Unable to
fetch URL git://gitorious.org/opensuse/sat-solver.git;protocol=git
from any source.' failed

  except that git repo looks fine, no?

http://gitorious.org/opensuse/sat-solver

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

