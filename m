Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1CD7BE00559
	for <yocto@yoctoproject.org>; Mon, 31 Oct 2011 09:01:32 -0700 (PDT)
Received: from [128.224.252.2] (helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.69) (envelope-from <rpjday@crashcourse.ca>)
	id 1RKuIj-0007KX-Kp; Mon, 31 Oct 2011 12:01:29 -0400
Date: Mon, 31 Oct 2011 12:01:26 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost6.localdomain6
To: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
In-Reply-To: <41DEA4B02DBDEF40A0F3B6D0DDB1237916E9FF2E@ORSMSX101.amr.corp.intel.com>
Message-ID: <alpine.DEB.2.02.1110311150440.7448@localhost6.localdomain6>
References: <alpine.DEB.2.02.1110301034330.32366@localhost6.localdomain6>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237916E9FF2E@ORSMSX101.amr.corp.intel.com>
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
Subject: Re: any objection to adding a PREMIRRORS section to the QS guide?
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
X-List-Received-Date: Mon, 31 Oct 2011 16:01:32 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Mon, 31 Oct 2011, Rifenbark, Scott M wrote:

> Robert,
>
> We do have a question addressed in the Yocto Project Reference
> Manual that talks about premirrors and how Poky finds stuff.  See
> the H.24 section of the manual
> http://www.yoctoproject.org/docs/current/poky-ref-manual/poky-ref-manual.html.
> Maybe this information is a bit too buried to be useful.  I could
> specifically reference that FAQ entry from within the QS in the same
> area that I mention the other "useful" items to consider in the
> local.conf file, such as BB_NUMBER_THREADS, etc.
>
> Scott

  i know about the PREMIRRORS stuff in the poky reference manual -- i
was just toying with the idea that knowing how PREMIRRORS works would
be useful, even for a beginner.

  perhaps i'm not using it properly, but in my case, it's handy since
i have a downloads directory of nothing but tarballs that i've been
accumulating over the last while that i've used for openembedded and
other projects. i'm using PREMIRRORS_prepend to take advantage of all
that content to avoid any unnecessary downloading.  and every time i
*do* end up downloading a newer version of a tarball that i didn't
have, i copy it to that central downloads directory for the next time.
does that make sense?  and, as i said, even beginners should be able
to appreciate taking advantage of local content they may have
collected for other reasons.

  in any event, i have some different ideas for the design of a
beginner's guide i plan on using in some of my own presentations, so i
don't have to inflict all of my ideas on everyone else.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

