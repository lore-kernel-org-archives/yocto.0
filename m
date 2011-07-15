Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by mx1.pokylinux.org (Postfix) with ESMTP id E9DA94C800A1
	for <yocto@yoctoproject.org>; Fri, 15 Jul 2011 12:09:45 -0500 (CDT)
Received: from [128.224.252.2] (helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.69) (envelope-from <rpjday@crashcourse.ca>)
	id 1QhltZ-0003En-2D
	for yocto@yoctoproject.org; Fri, 15 Jul 2011 13:09:45 -0400
Date: Fri, 15 Jul 2011 13:09:39 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost6.localdomain6
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.DEB.2.02.1107151302020.8631@localhost6.localdomain6>
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
Subject: last observations about quick start guide, then moving on
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
X-List-Received-Date: Fri, 15 Jul 2011 17:09:46 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII


1)  "This optional GNOME mobile-based UI, which is intended for
     devices with resolution but restricted size screens ..."

     pretty sure there's a word missing before "resolution," no?

2)  "OpenSUSE" vs "OpenSuse" ... actually, both of those are wrong,
    it should be "openSUSE". :-P

3)  near bottom, sample command:

    poky-qemu qemux86 zImage-2.6.34-qemux86-1.0.bin \
       yocto-image-sdk-qemux86-1.0.rootfs.ext3

    neither that kernel image nor rootfs are in downloads, should
    pick args that exist if that matters

  i'll let scott do with that what he will, and move on to manhandle
the poky handbook. :-)

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

