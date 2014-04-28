Return-Path: <gley-yocto@m.gmane.org>
Received: from plane.gmane.org (plane.gmane.org [80.91.229.3])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 27FC9E00C00
	for <yocto@yoctoproject.org>; Mon, 28 Apr 2014 06:54:39 -0700 (PDT)
Received: from list by plane.gmane.org with local (Exim 4.69)
	(envelope-from <gley-yocto@m.gmane.org>) id 1Wem0y-0006rq-1q
	for yocto@yoctoproject.org; Mon, 28 Apr 2014 15:54:36 +0200
Received: from 80-218-32-173.dclient.hispeed.ch ([80.218.32.173])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Mon, 28 Apr 2014 15:54:36 +0200
Received: from auslands-kv by 80-218-32-173.dclient.hispeed.ch with local
	(Gmexim 0.1 (Debian)) id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Mon, 28 Apr 2014 15:54:36 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: Neuer User <auslands-kv@gmx.de>
Date: Mon, 28 Apr 2014 15:54:18 +0200
Message-ID: <ljlmib$45t$1@ger.gmane.org>
References: <ljl1vt$ink$1@ger.gmane.org>	<535E5198.60709@windriver.com>	<ljlk6u$pd6$1@ger.gmane.org>	<535E54BB.7060701@windriver.com>	<ljllf9$frh$1@ger.gmane.org>
	<535E59A1.1080808@windriver.com>
Mime-Version: 1.0
X-Complaints-To: usenet@ger.gmane.org
X-Gmane-NNTP-Posting-Host: 80-218-32-173.dclient.hispeed.ch
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.4.0
In-Reply-To: <535E59A1.1080808@windriver.com>
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
X-List-Received-Date: Mon, 28 Apr 2014 13:54:40 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Am 28.04.2014 15:37, schrieb Bruce Ashfield:
> 
> If you send me pointers to your bblayers and local.conf settings, I'll
> run a build to see what happens here as well.
> 
> I'm always interested in tracking these down regardless.
> 
> Bruce
> 

Testing this should be pretty straightforward, if see that correctly.

Just init the repo with yocto master-next. Then export MACHINE=cubox-i.

My layer has:

recipes-kernel/linux/linux-cubox-i_3.0.35.bbappend:

FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-${PV}:"

inherit kernel
COMPATIBLE_MACHINE_cubox-i = "(cubox-i)"

SRC_URI += "file://videoin.cfg"


And in recipes-kernel/linux/linux-cubox-i-3.0.35/videoin.cfg:

CONFIG_VIDEO_ADV7180=y

(for a test this should suffice)

Then after a "bitbake linux-cubix-i -c configure" you can grep ADV7180
in tmp/work/cubox_i-poky-linux-gnueabi/linux-cubox-i/3.0.35-r0/git/.config

Normally it is "=n", now it should be "=y".

Thanks

Michael


