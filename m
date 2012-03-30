Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A6A72E004D2
	for <yocto@yoctoproject.org>; Fri, 30 Mar 2012 09:57:16 -0700 (PDT)
Received: from cpec03f0ed08c7f-cm001ac318e826.cpe.net.cable.rogers.com
	([99.241.91.63] helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.69) (envelope-from <rpjday@crashcourse.ca>)
	id 1SDf8V-0006vG-RQ; Fri, 30 Mar 2012 12:57:15 -0400
Date: Fri, 30 Mar 2012 12:57:05 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: "Barros Pena, Belen" <belen.barros.pena@intel.com>
In-Reply-To: <CB9A386E.BBFC%belen.barros.pena@intel.com>
Message-ID: <alpine.DEB.2.02.1203301254400.24762@oneiric>
References: <CB9A386E.BBFC%belen.barros.pena@intel.com>
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
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Yocto project quickstart information
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
X-List-Received-Date: Fri, 30 Mar 2012 16:57:16 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Thu, 29 Mar 2012, Barros Pena, Belen wrote:

>   * Finally, I forgot to install texinfo, and the error I got in the
> command line said that I was missing makeinfo (see screenshot
> attached). But when trying to install makeinfo I again got the
> "package could not be found" error. If the error had said I needed
> to install texinfo it would have made my life a bit easier.

  the problem is that, across distros, the same command might come as
part of a different package, so sometimes it's very hard to tell which
package you should advise installing.

  on that note, however, would it be that hard to define a ubuntu meta
or virtual package to install everything needed for yocto?  just to
avoid this sort of problem?

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

