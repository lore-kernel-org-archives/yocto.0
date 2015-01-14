Return-Path: <andreas@galauner.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B1742E00853; Wed, 14 Jan 2015 07:30:03 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 328 seconds by postgrey-1.32 at yocto-www;
	Wed, 14 Jan 2015 07:29:46 PST
Received: from server.galauner.de (server.galauner.de [144.76.20.253])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 61101E0083C
	for <yocto@yoctoproject.org>; Wed, 14 Jan 2015 07:29:46 -0800 (PST)
Received: from [172.23.22.75] (static-87-79-236-180.netcologne.de
	[87.79.236.180])
	by server.galauner.de (Postfix) with ESMTPSA id 096CF400E2
	for <yocto@yoctoproject.org>; Wed, 14 Jan 2015 16:24:16 +0100 (CET)
Message-ID: <54B68A1F.7010709@galauner.de>
Date: Wed, 14 Jan 2015 16:24:15 +0100
From: Andreas Galauner <andreas@galauner.de>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.3.0
MIME-Version: 1.0
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Symlinks in kernel-tree break in kernel-dev package
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
X-List-Received-Date: Wed, 14 Jan 2015 15:30:03 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit

Hi all,

I'm building a xenomai-based project with Yocto and I want to compile
kernel modules on the target system for development and testing
purposes. It's easier then running bitbake all the time.

Now in order to build kernel modules on the target, I included
kernel-dev in my packages and the kernel headers and build scripts are
copied as expected into /usr/src/kernel.

The problem is, that xenomai adds kernel code with a script called
"prepare-kernel.sh" before building the kernel. It does that by creating
a bunch of symlinks in the kernel tree pointing to the actual code. I
run this script in my own kernel recipe before configuration.

When yocto now creates the kernel-dev pakcage, it doesn't follow the
symlinks but copies the symlinks instead of the files itself which of
course break in the target rootfs.

Any idea how I could approach to fix this?

Thanks,
- Andy


Here is an example of how it looks:
> root@copter-microzed-xenomai:~# ls -l /usr/src/kernel/arch/arm/xenomai
> total 16
> lrwxrwxrwx 1 root root 217 Jan 13 14:03 Kconfig -> /home/andy/Desktop/Autocopter/work/yocto/build/tmp-eglibc/work/copter_microzed_xenomai-oe-linux-gnueabi/linux-xenomai-xlnx/3.14-xilinx+gitc0292a5c3919cf777f9d21202e022c99ce255b8f-r0/xenomai-2.6.4/ksrc/arch/arm/Kconfig
> lrwxrwxrwx 1 root root 218 Jan 13 14:03 Makefile -> /home/andy/Desktop/Autocopter/work/yocto/build/tmp-eglibc/work/copter_microzed_xenomai-oe-linux-gnueabi/linux-xenomai-xlnx/3.14-xilinx+gitc0292a5c3919cf777f9d21202e022c99ce255b8f-r0/xenomai-2.6.4/ksrc/arch/arm/Makefile
> lrwxrwxrwx 1 root root 215 Jan 13 14:03 hal.c -> /home/andy/Desktop/Autocopter/work/yocto/build/tmp-eglibc/work/copter_microzed_xenomai-oe-linux-gnueabi/linux-xenomai-xlnx/3.14-xilinx+gitc0292a5c3919cf777f9d21202e022c99ce255b8f-r0/xenomai-2.6.4/ksrc/arch/arm/hal.c
> lrwxrwxrwx 1 root root 218 Jan 13 14:03 switch.S -> /home/andy/Desktop/Autocopter/work/yocto/build/tmp-eglibc/work/copter_microzed_xenomai-oe-linux-gnueabi/linux-xenomai-xlnx/3.14-xilinx+gitc0292a5c3919cf777f9d21202e022c99ce255b8f-r0/xenomai-2.6.4/ksrc/arch/arm/switch.S

