Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 39169E0044D
	for <yocto@yoctoproject.org>; Fri, 23 Mar 2012 13:21:00 -0700 (PDT)
Received: from cpec03f0ed08c7f-cm001ac318e826.cpe.net.cable.rogers.com
	([99.241.91.63] helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.69) (envelope-from <rpjday@crashcourse.ca>)
	id 1SBAyo-0006H9-V9
	for yocto@yoctoproject.org; Fri, 23 Mar 2012 16:20:59 -0400
Date: Fri, 23 Mar 2012 16:20:52 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.DEB.2.02.1203231615110.20276@oneiric>
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
Subject: first pass at cleaning up ref manual: dead(?) variables in glossary
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
X-List-Received-Date: Fri, 23 Mar 2012 20:21:00 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII


  as part of a concerted effort to tidy up more of the docs, i'm
currently perusing the variable glossary in the yocto/poky ref manual:

file:///home/rpjday/yocto/yocto-docs/documentation/poky-ref-manual/poky-ref-manual.html#ref-variables-glos

and cross-checking entries against their actual usage, and one simple
observation is that some of those entries appear to be obsolete and
can be removed entirely.

  some examples of dead content appear to be PACKAGE_SUMMARY,
PACKAGE_DESCRIPTION and perhaps anything starting with the string
"POKY" (POKY_EXTRA_INSTALL, POKYMODE, POKYLIBC).

  rather than remove this chaff one or two entries at a time, can
people suggest any other deadwood that can be tossed from that
glossary, and i can put together a patch that does it all in one shot?

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

