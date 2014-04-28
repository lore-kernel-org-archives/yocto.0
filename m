Return-Path: <gley-yocto@m.gmane.org>
Received: from plane.gmane.org (plane.gmane.org [80.91.229.3])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A5B60E00BFB
	for <yocto@yoctoproject.org>; Mon, 28 Apr 2014 06:35:51 -0700 (PDT)
Received: from list by plane.gmane.org with local (Exim 4.69)
	(envelope-from <gley-yocto@m.gmane.org>) id 1Welio-0000WR-AE
	for yocto@yoctoproject.org; Mon, 28 Apr 2014 15:35:50 +0200
Received: from 80-218-32-173.dclient.hispeed.ch ([80.218.32.173])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Mon, 28 Apr 2014 15:35:50 +0200
Received: from auslands-kv by 80-218-32-173.dclient.hispeed.ch with local
	(Gmexim 0.1 (Debian)) id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Mon, 28 Apr 2014 15:35:50 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: Neuer User <auslands-kv@gmx.de>
Date: Mon, 28 Apr 2014 15:35:37 +0200
Message-ID: <ljllf9$frh$1@ger.gmane.org>
References: <ljl1vt$ink$1@ger.gmane.org>
	<535E5198.60709@windriver.com>	<ljlk6u$pd6$1@ger.gmane.org>
	<535E54BB.7060701@windriver.com>
Mime-Version: 1.0
X-Complaints-To: usenet@ger.gmane.org
X-Gmane-NNTP-Posting-Host: 80-218-32-173.dclient.hispeed.ch
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.4.0
In-Reply-To: <535E54BB.7060701@windriver.com>
Subject: Re: Kernel config fragments are not applied
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
X-List-Received-Date: Mon, 28 Apr 2014 13:35:54 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Am 28.04.2014 15:16, schrieb Bruce Ashfield:
> It all depends on how adventurous you are today :) Using a defconfig
> will work, and you can generate one without much trouble. Using
> fragments will allow you to keep your changes separate from the
> baseline configuration, but you'll need to tweak the recipe .. which
> always carries a risk of some unexpected side effects.
> 
> I'm around to help regardless of which way you chose.
> 
> Cheers,
> 
> Bruce
> 

Well, I looked at the linux-yocto file and tried a couple of
combinations in my bbappend. All of them geenrated lots of different errors.

e.g. I used:

FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-${PV}:"

COMPATIBLE_MACHINE_cubox-i = "(cubox-i)"

SRC_URI += "file://videoin.cfg"

addtask kernel_configme before do_configure after do_patch

# Pick up shared functions
inherit kernel
inherit kernel-yocto
#require linux-dtb.inc

# extra tasks
addtask kernel_configcheck after do_configure before do_compile


The error messages are too long to include here :-/

Guess, it is probably best to go the defconfig way.


