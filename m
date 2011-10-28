Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8706FE01404
	for <yocto@yoctoproject.org>; Fri, 28 Oct 2011 10:12:11 -0700 (PDT)
Received: from [142.204.70.21] (helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.69) (envelope-from <rpjday@crashcourse.ca>)
	id 1RJpyT-0005Q5-E5; Fri, 28 Oct 2011 13:12:09 -0400
Date: Fri, 28 Oct 2011 13:12:05 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost6.localdomain6
To: Joshua Lock <josh@linux.intel.com>
In-Reply-To: <4EAAE14B.4060503@linux.intel.com>
Message-ID: <alpine.DEB.2.02.1110281309120.31199@localhost6.localdomain6>
References: <alpine.DEB.2.02.1110281201530.17318@localhost6.localdomain6>
	<4EAAE14B.4060503@linux.intel.com>
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
Subject: Re: am i the only person having trouble fetching sat-solver?
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
X-List-Received-Date: Fri, 28 Oct 2011 17:12:11 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Fri, 28 Oct 2011, Joshua Lock wrote:

> I cannot reproduce this on my F16 workstation here.
>
> I recall similar issues in the past due to buggy tar on the host system,
> for which we added a tar native recipe.
>
> My system is fetching the tarball from the autobuilder mirror, you could
> try fetching that and seeing if you're able to extract it outside of
> Poky as a diagnosis step?
>
> http://autobuilder.yoctoproject.org/sources/git2_github.com.openSUSE.sat-solver.git.tar.gz

  never mind, just cleared *everything* out and tried again and it
worked.  mystery.

  in any event, there's a minor typo in the sat-solver_git.bb file:

HOMEPAGE = "http://en.opensue.org/Portal:Libzypp"
                      ^^^^^^^

shall i submit a patch to the mailing list?

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

