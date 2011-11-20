Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AB629E005B1
	for <yocto@yoctoproject.org>; Sun, 20 Nov 2011 02:32:09 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id pAKAW685021812;
	Sun, 20 Nov 2011 10:32:06 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 16418-03; Sun, 20 Nov 2011 10:32:00 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id pAKAVsTl021801
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Sun, 20 Nov 2011 10:31:56 GMT
Message-ID: <1321785120.18926.3.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Jeffrey Moore <jeff@kokofitclub.com>
Date: Sun, 20 Nov 2011 10:32:00 +0000
In-Reply-To: <A4579E89-DAD0-4BA2-BD7D-976040983CBF@kokofitclub.com>
References: <A4579E89-DAD0-4BA2-BD7D-976040983CBF@kokofitclub.com>
X-Mailer: Evolution 3.2.1- 
Mime-Version: 1.0
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: yocto@yoctoproject.org
Subject: =?UTF-8?B?UmU6ICfigKZiekltYWdlJzogTm8gc3VjaCBmaWxlIG9yIGRpcmVjdG9yeSB3aGVuIGJ1aWxkaW5nIGNvcmUtaW1hZ2UtbWluaW1hbC1pbml0cmFtZnM=?=
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
X-List-Received-Date: Sun, 20 Nov 2011 10:32:15 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Sat, 2011-11-19 at 16:20 -0500, Jeffrey Moore wrote:
> I have a problem in  that the kernel bzImage is apparently not being
> built.  Here is my error:
> | install: cannot stat
> `/media/jwm/minimal-initramfs/tmp/sysroots/crownbay-noemgd/kernel/bzImage': No such file or directory
> | ERROR: Function 'build_boot_bin' failed
> (see /media/jwm/minimal-initramfs/tmp/work/crownbay_noemgd-poky-linux/core-image-minimal-initramfs-1.0-r0/temp/log.do_bootimg.25097 for further information)
> NOTE: package core-image-minimal-initramfs-1.0-r0: task do_bootimg:
> Failed
> ERROR: Task 9
> (/home/jeff/poky-edison-6.0/meta/recipes-core/images/core-image-minimal-initramfs.bb, do_bootimg) failed with exit code '1'
> ERROR:
> '/home/jeff/poky-edison-6.0/meta/recipes-core/images/core-image-minimal-initramfs.bb' failed
>
> My setup:
>
> vanilla, out of the box poky setup with the addition of:
>
> meta-intel layer for meta-crownbay  in the bblayers.conf 
> & 
> MACHINE ?= "crownbay-noemgd" in the local.conf
>
> bitbake -k core-image-minimal-initramfs
>
> If I build any other type of image such
> as: core-image-minimal-mtdutils or core-image-minimal, everything is
> fine and I get a clean build.  Any help would be appreciated.

I'm chasing a bug that looks very like this at the moment. I don't have
a proper fix for it yet but you could try and "bitbake linux-yocto -c
populate_sysroot -f" and then try and build your image again which
should work around the problem.

I'm assuming this is with master rather than the release and you might
have rm_work enabled?

Cheers,

Richard



