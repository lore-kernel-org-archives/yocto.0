Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8A328E0032E
	for <yocto@yoctoproject.org>; Mon, 19 Nov 2012 15:12:57 -0800 (PST)
Received: from cpe78cd8ec96008-cm78cd8ec96005.cpe.net.cable.rogers.com
	([99.241.167.182]:46535 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.77) (envelope-from <rpjday@crashcourse.ca>)
	id 1TaaWO-0003q7-TJ
	for yocto@yoctoproject.org; Mon, 19 Nov 2012 18:12:57 -0500
Date: Mon, 19 Nov 2012 18:12:53 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.DEB.2.02.1211191806400.18516@oneiric>
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
Subject: possible update to yocto QS guide, "own-mirrors"
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
X-List-Received-Date: Mon, 19 Nov 2012 23:12:57 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII


  i recall that the QS guide scarfed some of my wiki QS page (which is
fine, given that i was credited for it, :-).  if someone (scott?)
wants to tweak, the whole current section showing how to set up a
local mirror of tarballs using:

     PREMIRRORS_prepend = "\
     git://.*/.* file:///home/you/dl/ \n \
     svn://.*/.* file:///home/you/dl/ \n \
     cvs://.*/.* file:///home/you/dl/ \n \
     ftp://.*/.* file:///home/you/dl/ \n \
     http://.*/.* file:///home/you/dl/ \n \
     https://.*/.* file:///home/you/dl/ \n"

can be tossed and replaced by what's now at my wiki page,
http://www.crashcourse.ca/wiki/index.php/Yocto_Project_Quick_Start,
which is a much tidier solution:

     SOURCE_MIRROR_URL ?= "file:///home/rpjday/y/src/dl/"
     INHERIT += "own-mirrors"
     BB_GENERATE_MIRROR_TARBALLS = "1"
     # BB_NO_NETWORK = "1"

so help yourself.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

