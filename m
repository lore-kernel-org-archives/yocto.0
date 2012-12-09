Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 47FB9E00770
	for <yocto@yoctoproject.org>; Sun,  9 Dec 2012 09:34:05 -0800 (PST)
Received: from cpebcc81008dd2c-cmbcc81008dd29.cpe.net.cable.rogers.com
	([99.253.156.71]:36021 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:DHE-RSA-AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1ThklQ-0002a2-AR
	for yocto@yoctoproject.org; Sun, 09 Dec 2012 12:34:04 -0500
Date: Sun, 9 Dec 2012 12:34:01 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.DEB.2.02.1212091228220.14994@oneiric>
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
Subject: instructions for running the pre-built poky qemu images
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
X-List-Received-Date: Sun, 09 Dec 2012 17:34:05 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII


  updated an older page on how one can run the pre-built QEMU images:

http://www.crashcourse.ca/wiki/index.php/Running_pre-built_QEMU_images

and there are still three (admittedly minor) issues that one has to
work around to get it to work.  the point is to be able to do this
*without* having to install OE or bitbake since, technically, you
don't need them.

  1) as i mentioned earlier, the 1.3/ directories for the QEMU images
no longer contain the kernel images.  is that deliberate?  where are
they now, if anywhere?

  2) it appears to be unnecessary to install bitbake just to run the
QEMU images, as long as you set OE_TMPDIR appropriately so that
bitbake doesn't complain and abort.

  3) finally, there a mismatch between the directory name that runqemu
expects (x86_64-linux) and where the toolchains are installed by
default (x86_64-pokysdk-linux) which is fixed by a simple symlink but
it's not clear why the mismatch needs to be there in the first place.

  and that's it.  what's on the new wiki page seems to work.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

