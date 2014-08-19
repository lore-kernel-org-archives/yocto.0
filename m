Return-Path: <jtc@acorntoolworks.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 231F9E007AD; Mon, 18 Aug 2014 22:30:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.9 required=5.0 tests=BAYES_00,RDNS_DYNAMIC
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  1.0 RDNS_DYNAMIC Delivered to internal network by host with
	*      dynamic-looking rDNS
X-Greylist: delayed 1032 seconds by postgrey-1.32 at yocto-www;
	Mon, 18 Aug 2014 22:30:39 PDT
Received: from orac.acorntoolworks.com
	(104-50-201-114.lightspeed.sntcca.sbcglobal.net [104.50.201.114])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E846EE0079B
	for <yocto@yoctoproject.org>; Mon, 18 Aug 2014 22:30:39 -0700 (PDT)
Received: from orac.acorntoolworks.com (localhost [127.0.0.1])
	by orac.acorntoolworks.com (8.13.3/8.12.11) with ESMTP id
	s7J5A8Wd013726
	for <yocto@yoctoproject.org>; Mon, 18 Aug 2014 22:10:08 -0700 (PDT)
Received: (from jtc@localhost)
	by orac.acorntoolworks.com (8.13.3/8.12.11) id s7J5A8xZ013626;
	Mon, 18 Aug 2014 22:10:08 -0700 (PDT)
X-Authentication-Warning: orac.acorntoolworks.com: jtc set sender to
	jtc@acorntoolworks.com using -f
To: yocto@yoctoproject.org
From: jtc@acorntoolworks.com (J.T. Conklin)
Date: Mon, 18 Aug 2014 22:10:08 -0700
Message-ID: <87mwb12hfz.fsf@orac.acorntoolworks.com>
User-Agent: Gnus/5.1006 (Gnus v5.10.6) XEmacs/21.4 (Jumbo Shrimp,
	berkeley-unix)
MIME-Version: 1.0
Subject: Creating an system installer/updater image
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: jtc@acorntoolworks.com
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 19 Aug 2014 05:30:43 -0000
Content-Type: text/plain; charset=us-ascii

I've created an image recipe that builds an image that runs under qemu
or from a "live" CD on a generic x86-64 server.

I'd like to create an installer/updater CD/USB stick that partitions,
formats, and installs the kernel and the set of packages from the above
image onto the server's hard disk.

The core-image-minimal-initramfs.bb recipe builds an image which
contains partitioning and formatting tools and install scripts.  The
install script partitions and formats the hard disk, then mounts the
/media filesystem (I assume this would be the same CD containing the
initramfs / install kernel), copies a different kernel and unpacks a
root filesystem image to the system's hard disk.

Aside from using a kernel image and root filesystem instead of a
kernel image and discrete packages, this looks to be pretty much
what I want to do.

However, it's not immediately clear to me how to connect the dots
between the build artifacts built for the production image and creating
CD install media containing the initramfs image and those artifacts.

Is there a example of this (taking artifacts from one build and using
them in another)? Or am I barking up the wrong tree?

   --jtc

-- 
J.T. Conklin

