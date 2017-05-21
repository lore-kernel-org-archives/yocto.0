Return-Path: <gley-yocto@m.gmane.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3D38CE00B49; Mon, 22 May 2017 00:30:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.4 required=5.0 tests=BAYES_00,DATE_IN_PAST_06_12,
	RDNS_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * 1.5 DATE_IN_PAST_06_12 Date: is 6 to 12 hours before
	Received: date
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from blaine.gmane.org (unknown [195.159.176.226])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A1BC9E00A16
	for <yocto@yoctoproject.org>; Mon, 22 May 2017 00:30:12 -0700 (PDT)
Received: from list by blaine.gmane.org with local (Exim 4.84_2)
	(envelope-from <gley-yocto@m.gmane.org>) id 1dChn1-0007nf-Fn
	for yocto@yoctoproject.org; Mon, 22 May 2017 09:30:03 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: Ferry Toth <ftoth@exalondelft.nl>
Date: Sun, 21 May 2017 21:54:21 +0000 (UTC)
Message-ID: <oft2ad$2ie$1@blaine.gmane.org>
Mime-Version: 1.0
X-Complaints-To: usenet@blaine.gmane.org
User-Agent: Pan/0.141 (Tarzan's Death; 168b179 git.gnome.org/pan2)
Subject: How to build initramfs with modules but without bzImage
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
X-List-Received-Date: Mon, 22 May 2017 07:30:18 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

I am building 2 images. One has my rootfs, the other builds a kernel with 
builtin initramfs.

To build the initramfs I did the following:
In the .../conf directory, I create a file named initramfs.conf and add 
the following:
 
INITRAMFS_IMAGE = "core-image-minimal-initramfs"
INITRAMFS_IMAGE_BUNDLE = "1"
 
IMAGE_FSTYPES = "cpio.gz"
 
Then to build the initramfs based on the core-image-base recipe, I 
execute the following bitbake command:
 
     bitbake -R conf/initramfs.conf core-image-minimal-initramfs
 
When it completes, there is a kernel + initramfs file in the .../tmp/
deploy/images/..../  directory.
 
This image boots to the init script, but then hangs as the mmc drivers 
have not been included.

Now I create a core-image-minimal-initramfs.bbappend file and
PACKAGE_INSTALL the modules I need (also tried kernel-modules).

Unfortunately this also installs the kernel bzImage in the /boot 
directory, that appears to be a dependancy. This adds another 6MB to my 
initramfs, which is now to load.

I expect it should be possible to add the modules without adding the 
kernel, but haven't been able to find a way to do that. Or it should be 
possible to remove the contents of /boot after do_rootfs.

But I have no clue how to do that.

Or am I just generating the initramfs in the wrong way?

Ferry


