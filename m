Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C93E2E00777
	for <yocto@yoctoproject.org>; Tue, 11 Dec 2012 05:07:52 -0800 (PST)
Received: from cpec03f0ed08c7f-cm001ac318e826.cpe.net.cable.rogers.com
	([174.115.5.73]:38431 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:DHE-RSA-AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1TiPYu-0004QH-08
	for yocto@yoctoproject.org; Tue, 11 Dec 2012 08:07:52 -0500
Date: Tue, 11 Dec 2012 08:07:48 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.DEB.2.02.1212110801200.23904@oneiric>
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
Subject: should users be able to run yocto's pre-built images standalone?
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
X-List-Received-Date: Tue, 11 Dec 2012 13:07:52 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII


  following up on my updated QEMU page here:

http://www.crashcourse.ca/wiki/index.php/Running_pre-built_QEMU_images

a basic question -- is it supported that users be able to download and
run yocto's pre-built QEMU images without having to download an entire
build system, and set up bitbake, etc?  theoretically, of course, it
can be done, but it's not set up to do it conveniently (if it even
should be).

  first, one can't get yocto's qemu-related utilities without
downloading either oe-core or a toolchain.  is that really necessary?
how hard would it be to break out the QEMU stuff into a much smaller
tarball if that's all people want?

  and if that's done, certainly, the help messages from runqemu can be
updated, since those utilities clearly assume they're running as part
of a build infrastructure when that's not necessary.

  anyway, you can see the observations i made on my QEMU page.  it
seems that, if you just want people to be able to *easily* fire up
some pre-built images to see the beauty of yocto, you shouldn't make
them download an entire build infrastructure they don't need.

  thoughts?

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

