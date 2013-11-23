Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1D937E006F7
	for <yocto@yoctoproject.org>; Sat, 23 Nov 2013 02:59:07 -0800 (PST)
Received: from [173.34.6.101] (port=52420 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:DHE-RSA-AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1VkAva-0007lp-BL
	for yocto@yoctoproject.org; Sat, 23 Nov 2013 05:59:06 -0500
Date: Sat, 23 Nov 2013 05:59:02 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.DEB.2.02.1311230555380.9634@oneiric>
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
Subject: ksize.py and dirsize.py scripts not in dora tarball, is that deliberate?
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
X-List-Received-Date: Sat, 23 Nov 2013 10:59:09 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII


  current dev manual:

http://www.yoctoproject.org/docs/latest/dev-manual/dev-manual.html#understand-what-gives-your-image-size

claims:

"To help you see where you currently are with kernel and root
filesystem sizes, you can use two tools found in the Source Directory
in the scripts directory:

ksize.py: Reports component sizes for the kernel build objects.

dirsize.py: Reports component sizes for the root filesystem."

  however, the current dora tarball doesn't contain these scripts,
while oe-core contains them more specifically under the scripts/tiny/
subdirectory. thoughts?

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

