Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C1976E01510
	for <yocto@yoctoproject.org>; Wed, 24 Apr 2013 04:42:55 -0700 (PDT)
Received: from cpebcc8100de718-cmbcc8100de715.cpe.net.cable.rogers.com
	([99.240.144.66]:43204 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:DHE-RSA-AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1UUy6A-0001BI-1T
	for yocto@yoctoproject.org; Wed, 24 Apr 2013 07:42:54 -0400
Date: Wed, 24 Apr 2013 07:42:51 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.DEB.2.02.1304240735560.4737@oneiric>
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
Subject: i still think FILESEXTRAPATHS needs to be explained more completely
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
X-List-Received-Date: Wed, 24 Apr 2013 11:42:56 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII


  i've whined about this before, but i think the proper use of
FILESEXTRAPATHS needs to be explained more completely than what's
currently in the variable glossary here:

http://www.yoctoproject.org/docs/1.4/ref-manual/ref-manual.html#var-FILESEXTRAPATHS

  i mentioned that, when i first figured out how it worked, i wrote it
up here (needs a bit of updating, yes, i know):

http://www.crashcourse.ca/wiki/index.php/FILESEXTRAPATHS_and_bbappend_files

but the important point is, of course, that FILESEXTRAPATHS extends
FILESPATH with a *number* of search dirs. unless that's made really
clear, new developers are going to get confused if they look at
existing recipes for guidance on how to use it.

rday

p.s.  i also notice that the standard value of FILESPATH has some
redundancy. using an example related to beagleboard and psplash, you
can see that the .../psplash/" subdirectory is listed twice -- same
happens with the other subdirectories.

... snip ...
/home/rpjday/oe/dist/layers/oe-core/meta/recipes-core/psplash/psplash/arm
/home/rpjday/oe/dist/layers/oe-core/meta/recipes-core/psplash/psplash/armv7a
/home/rpjday/oe/dist/layers/oe-core/meta/recipes-core/psplash/psplash/beagleboard
/home/rpjday/oe/dist/layers/oe-core/meta/recipes-core/psplash/psplash/
/home/rpjday/oe/dist/layers/oe-core/meta/recipes-core/psplash/psplash/
... snip ...

  doesn't hurt, of course, but unnecessary.

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

