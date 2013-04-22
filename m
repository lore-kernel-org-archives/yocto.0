Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 313BFE0054B
	for <yocto@yoctoproject.org>; Mon, 22 Apr 2013 09:00:12 -0700 (PDT)
Received: from cpebcc8100de718-cmbcc8100de715.cpe.net.cable.rogers.com
	([99.240.144.66]:38598 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:DHE-RSA-AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1UUJA3-0003uE-Bk
	for yocto@yoctoproject.org; Mon, 22 Apr 2013 12:00:11 -0400
Date: Mon, 22 Apr 2013 12:00:07 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.DEB.2.02.1304221056510.7236@oneiric>
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
Subject: remaining comments on current BSP developers guide
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
X-List-Received-Date: Mon, 22 Apr 2013 16:00:12 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII


  (again, someone up the food chain can decide what's worth
processing.)

1.6.1 Common Features

* "Both tools [yocto-bsp and yocto-kernel] reside in the scripts/
subdirectory of the Source Directory." no, they don't, they're in
meta-yocto/scripts/, so simply sourcing oe-init-build-env isn't
sufficient to add them to the search path, is it? (i'm guessing it
used to be, but no longer.)

1.6.2 Creating a new BSP Layer ...

     $ yocto-bsp list karch
     Architectures available:
         qemu
         x86_64
         i386
         powerpc
         arm
         mips

  but if you run that, you get the additional arch "layer". where's
that coming from? is it a holdover from before there was a yocto-layer
command? i never noticed that before now.

* "Assuming you have sourced the environment ..." Again, you don't get
these utilities in your PATH by sourcing the environment, you need to
do that manually.

* "...pressing enter and providing an invalid response..." um, what is
that supposed to say?

* Point 6.  Do you actually need to include the meta-yocto and
meta-yocto-bsp layers in this new layer's bblayers.conf file? I don't
see why but maybe I'm missing something obvious.

* also, typo "BBLAYERS = ?"

  i think that's everything.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

