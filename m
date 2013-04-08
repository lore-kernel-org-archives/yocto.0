Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6B25FE00597
	for <yocto@yoctoproject.org>; Mon,  8 Apr 2013 09:42:16 -0700 (PDT)
Received: from cpebcc8100de718-cmbcc8100de715.cpe.net.cable.rogers.com
	([99.240.144.66]:57707 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:DHE-RSA-AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1UPF95-0001lz-EY
	for yocto@yoctoproject.org; Mon, 08 Apr 2013 12:42:15 -0400
Date: Mon, 8 Apr 2013 12:42:12 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.DEB.2.02.1304081236160.1071@oneiric>
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
Subject: supplying your own "defconfig" in a kernel recipe
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
X-List-Received-Date: Mon, 08 Apr 2013 16:42:16 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII


  a bit of inconsistent wording between the kernel hands-on lab1 and
the kernel dev manual (unless i'm misreading).

  in lab1, we read:

"This is a bare-bones simple Linux kernel recipe. It inherits all of
the logic for configuring and building the kernel from the
kernel.bbclass (the 'inherit kernel' line). It specifies the Linux
kernel sources in SRC_URI as a recent tarball release from kernel.org.
It also specifies a defconfig, this file is used as the .config to
build the kernel. It is empty for now, so the Linux kernel
configuration system will use defaults."

  suggesting an empty defconfig will force the config step to use
defaults. but the kernel dev manual states:

"If you have a complete Linux kernel .config file you want to use,
copy it to the ${FILES} directory within your layer and name it
"defconfig". Then, add the following line to your linux-yocto
.bbappend file in your layer:

     SRC_URI += "file://defconfig"

which suggests to the reader that a user-supplied defconfig file
should represent *only* a "complete" .config file.

  the kernel.bbclass itself seems to suggest that your defconfig file
can represent any part of the configuration you want to override the
default.

  does anyone else see the apparent inconsistency that might trip up a
reader?

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

