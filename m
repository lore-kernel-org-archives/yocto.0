Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 14829E01410
	for <yocto@yoctoproject.org>; Fri, 19 Apr 2013 06:50:00 -0700 (PDT)
Received: from cpebcc8100de718-cmbcc8100de715.cpe.net.cable.rogers.com
	([99.240.144.66]:55279 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:DHE-RSA-AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1UTBhP-0000uC-2i
	for yocto@yoctoproject.org; Fri, 19 Apr 2013 09:49:59 -0400
Date: Fri, 19 Apr 2013 09:49:56 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.DEB.2.02.1304190945410.5102@oneiric>
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
Subject: any point in a single machine recipe using a machine-specific file?
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
X-List-Received-Date: Fri, 19 Apr 2013 13:50:00 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII


  using the example i patched earlier, here's the file hierarchy for
raspberry pi's netbase recipe:

./netbase_5.0.bbappend
./netbase-5.0
./netbase-5.0/raspberrypi
./netbase-5.0/raspberrypi/interfaces
./netbase-5.0/raspberrypi/hosts

  i understand the notion of a machine-specific subdirectory for
files, such as what you'd find under a layer like meta-ti which
defines multiple machines, so this is understandable for meta-ti:

.
./netbase_5.0.bbappend
./netbase-5.0
./netbase-5.0/beagleboard
./netbase-5.0/beagleboard/interfaces

  but in the case of the rpi, is there any value in putting the files
under a machine-named subdirectory? of course it won't hurt, but is
there any point to it?

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

