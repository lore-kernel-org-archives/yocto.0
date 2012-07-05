Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 63ACDE01304
	for <yocto@yoctoproject.org>; Thu,  5 Jul 2012 05:55:05 -0700 (PDT)
Received: from cpec03f0ed08c7f-cm001ac318e826.cpe.net.cable.rogers.com
	([99.241.91.63]:56286 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.77) (envelope-from <rpjday@crashcourse.ca>)
	id 1SmlaK-0007xZ-Ns
	for yocto@yoctoproject.org; Thu, 05 Jul 2012 08:55:04 -0400
Date: Thu, 5 Jul 2012 08:54:56 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.DEB.2.02.1207050848330.28606@oneiric>
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
Subject: brief notes on current yocto reference manual
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
X-List-Received-Date: Thu, 05 Jul 2012 12:55:05 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII


  (i suspect scott has already gotten to some of these but here's the
list i've got so far.)

* 2.3.3:  refers to generated .dot files "depends.dot" and
"task-depends.dot".  in my build, i got three files:

  * pn-depends.dot
  * package-depends.dot
  * task-depends.dot

A.1.1: The "bitbake" executable run by the user is not found in
bitbake/bin, it's found as the wrapper in "scripts/".

A.2: no mention of tmp/deploy/licenses directory

A.2.17:   I didn't get a build/tmp/log directory as part of my build.
Should I have?

A.3.14:  No mention of meta/recipes-rt/ directory.

  that's all i have for now but i still have quite a bit of manual to
read.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

