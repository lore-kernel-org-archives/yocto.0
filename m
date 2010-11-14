Return-Path: <psanchez@fosstel.com>
Received: from a2s40.a2hosting.com (a2s40.a2hosting.com [216.119.135.130])
	by mx1.pokylinux.org (Postfix) with ESMTP id DAA0E4C80BCF
	for <yocto@yoctoproject.org>; Sun, 14 Nov 2010 14:13:03 -0600 (CST)
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=default; d=fosstel.com;
	h=Received:Message-ID:Date:From:Organization:User-Agent:MIME-Version:To:Subject:Content-Type:Content-Transfer-Encoding;
	b=W5RIh/UOaxSVmXGjhIuzmRmWY584x7APGD2d8z+CYBmek3ENJlAur6NC0MRB6nxu0NQABKV/lfnWH+I/kaevffPMHo+dZnl7ucRhFg5WXsR2hThz32KiZ5bntgrNQDcL;
Received: from cpe0014d14df253-cm001e6b1a7260.cpe.net.cable.rogers.com
	([99.224.55.53] helo=[192.168.1.10])
	by a2s40.a2hosting.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.69) (envelope-from <psanchez@fosstel.com>)
	id 1PHiwe-0004oO-Lh
	for yocto@yoctoproject.org; Sun, 14 Nov 2010 15:13:01 -0500
Message-ID: <4CE042CA.1000809@fosstel.com>
Date: Sun, 14 Nov 2010 15:12:58 -0500
From: "Pedro I. Sanchez" <psanchez@fosstel.com>
Organization: FOSSTel Engineering Inc.
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.12) Gecko/20101029 Lightning/1.0b2 Thunderbird/3.1.6
MIME-Version: 1.0
To: Yocto Project Discussion <yocto@yoctoproject.org>
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - a2s40.a2hosting.com
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - fosstel.com
Subject: bitbake problems when testing pre-built images
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
X-List-Received-Date: Sun, 14 Nov 2010 20:13:04 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Hello,

I'm starting to play with Yocto and the first thing I want to do is to 
run pre-built images to get a feeling for the system. Unfortunately I'm 
getting errors when running the poky-qemu command. My host machine is 
Ubuntu 10.04.

I'm following the Wiki instructions at 
http://www.yoctoproject.org/docs/yocto-quick-start/yocto-project-qs.html.

The section "Using Pre-Built Binaries and QEMU" lists three steps to 
follow in order to test pre-built images, steps which I'm executing as 
follows after downloading the following arm-target files:

yocto-eglibc-i586-arm-toolchain-sdk-0.9.tar.bz2
zImage-2.6.34-qemuarm-0.9.bin
yocto-image-minimal-qemuarm-0.9.rootfs.tar.bz2

and installing the toolchain with:

$ sudo tar xjf yocto-eglibc-i586-arm-toolchain-sdk-0.9.tar.bz2 -C /
$ source /opt/poky/environment-setup-armv5te-poky-linux-gnueabi

The final step is supposed to be to run the poky-emu command but I get 
the following error:

$ poky-qemu zImage-2.6.34-qemuarm-0.9.bin 
yocto-image-minimal-qemuarm-0.9.rootfs.tar
Set MACHINE to [qemuarm-0] based on kernel [zImage-2.6.34-qemuarm-0.9.bin]
In order for this script to dynamically infer paths
to kernels or filesystem images, you either need
bitbake in your PATH or to source poky-init-build-env
before running this script

Up to this point it is either I or the wiki docs missing something.

I then tried downloading poky and installing it as follows:

$ wget http://www.yoctoproject.org/downloads/poky/poky-laverne-4.0.tar.bz2
$ tar xjf poky-laverne-4.0.tar.bz2
$ source poky-laverne-4.0/poky-init-build-env poky-4.0-build

But running poky-qemu gives me this:

$ poky-qemu zImage-2.6.34-qemuarm-0.9.bin 
yocto-image-minimal-qemuarm-0.9.rootfs.tar
Set MACHINE to [qemuarm-0] based on kernel [zImage-2.6.34-qemuarm-0.9.bin]
Note: Unable to determine filesystem extension for 
yocto-image-minimal-qemuarm-0.9.rootfs.tar
We will use the default FSTYPE for qemuarm-0
Error: Unable to determine default fstype for MACHINE [qemuarm-0]


Any suggestions would be appreciated.


Thanks,

-- 
Pedro

