Return-Path: <gley-yocto@m.gmane.org>
Received: from plane.gmane.org (plane.gmane.org [80.91.229.3])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DDAD3E00429
	for <yocto@yoctoproject.org>; Fri, 15 Mar 2013 08:04:55 -0700 (PDT)
Received: from list by plane.gmane.org with local (Exim 4.69)
	(envelope-from <gley-yocto@m.gmane.org>) id 1UGWC3-0007tq-Ea
	for yocto@yoctoproject.org; Fri, 15 Mar 2013 16:05:15 +0100
Received: from host-80-81-19-29.customer.m-online.net ([80.81.19.29])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Fri, 15 Mar 2013 16:05:15 +0100
Received: from v.vogelhuber by host-80-81-19-29.customer.m-online.net with
	local (Gmexim 0.1 (Debian)) id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Fri, 15 Mar 2013 16:05:15 +0100
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: Volker Vogelhuber <v.vogelhuber@digitalendoscopy.de>
Date: Fri, 15 Mar 2013 15:04:35 +0000 (UTC)
Message-ID: <loom.20130315T160013-564@post.gmane.org>
References: <513F58FA.3080808@digitalendoscopy.de>
	<loom.20130315T095848-21@post.gmane.org>
	<51433167.2060009@windriver.com>
Mime-Version: 1.0
X-Complaints-To: usenet@ger.gmane.org
X-Gmane-NNTP-Posting-Host: sea.gmane.org
User-Agent: Loom/3.14 (http://gmane.org/)
X-Loom-IP: 80.81.19.29 (Mozilla/5.0 (X11;
	Linux x86_64) AppleWebKit/537.4 (KHTML, like Gecko)
	Chrome/22.0.1229.94 Safari/537.4)
Subject: Re: building yocto image from git always switches branch
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
X-List-Received-Date: Fri, 15 Mar 2013 15:04:56 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit

Hi,

> Interesting. Are you working out of yocto/oe-core master ? The linux
> yocto kernel support should always fail if the kernel source dir
> isn't a git repo (or convert it into one) and not impact the main
> yocto/oe-core tree.
As mentioned in the first post, I checked out the danny branch. 

I used the following bitbake recipe for kernel compilation:

inherit kernel
require recipes-kernel/linux/linux-yocto.inc

SECTION = "kernel"
LICENSE = "GPLv2"

LIC_FILES_CHKSUM = "file://COPYING;md5=d7810fab7487fb0aad327b76f1be7cd7"


DESCRIPTION = "Linux kernel for the tao-boards"
KERNEL_IMAGETYPE = "uImage"
KERNEL_CC_append += "-mno-unaligned-access "

COMPATIBLE_MACHINE = "(tao)"

PV = "2.6.37"

MACHINE_KERNEL_PR_append = "c+tn"

SRC_URI = "file://linux-2.6.37-tn.tar.xz \
           file://defconfig \
           file://nonetwork.patch \
           file://rtc.patch \
	   file://multitouch.patch"

S = "${WORKDIR}/linux-2.6.37-tn"

# Sadly perf is broken:
do_compile_perf() {
	:
}

do_validate_branches() {
	  :
}

do_install_perf() {
	:
}


After I removed the require recipes-kernel/linux/linux-yocto.inc
line it worked. As you can see I have a .tar.xz file for the kernel source, so 
no git. But the git command within the linux-yocto.inc file
realizes, that there is a git repository. But it's not one from the
kernel, but from the poky repository the whole build environment is 
located in.





