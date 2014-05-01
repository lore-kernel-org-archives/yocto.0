Return-Path: <gley-yocto@m.gmane.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1AB5BE00997; Wed, 30 Apr 2014 23:32:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (auslands-kv[at]gmx.de)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [80.91.229.3 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
Received: from plane.gmane.org (plane.gmane.org [80.91.229.3])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F2B2BE00985
	for <yocto@yoctoproject.org>; Wed, 30 Apr 2014 23:32:39 -0700 (PDT)
Received: from list by plane.gmane.org with local (Exim 4.69)
	(envelope-from <gley-yocto@m.gmane.org>) id 1WfkXr-0000Pk-MQ
	for yocto@yoctoproject.org; Thu, 01 May 2014 08:32:35 +0200
Received: from 80-218-32-173.dclient.hispeed.ch ([80.218.32.173])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Thu, 01 May 2014 08:32:35 +0200
Received: from auslands-kv by 80-218-32-173.dclient.hispeed.ch with local
	(Gmexim 0.1 (Debian)) id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Thu, 01 May 2014 08:32:35 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: Neuer User <auslands-kv@gmx.de>
Date: Thu, 01 May 2014 08:32:22 +0200
Message-ID: <5361EA76.1080604@gmx.de>
References: <ljl1vt$ink$1@ger.gmane.org>	<535E5198.60709@windriver.com>	<ljlk6u$pd6$1@ger.gmane.org>	<535E54BB.7060701@windriver.com>	<ljllf9$frh$1@ger.gmane.org>	<535E59A1.1080808@windriver.com>	<ljlmib$45t$1@ger.gmane.org>	<53616636.5000509@windriver.com>
	<5361CDAE.8050206@windriver.com>
Mime-Version: 1.0
X-Complaints-To: usenet@ger.gmane.org
X-Gmane-NNTP-Posting-Host: 80-218-32-173.dclient.hispeed.ch
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.4.0
In-Reply-To: <5361CDAE.8050206@windriver.com>
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
X-List-Received-Date: Thu, 01 May 2014 06:32:53 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Hi Bruce

Here is the error messega, I get after a "bitbake linux-cubox-i -c
cleansstate; bitbake linux-cubox-i" using the recipe you posted:

ERROR: Function failed: do_patch (log file is located at
/home/ubuntu/yocto/build/tmp/work/cubox_i-poky-linux-gnueabi/linux-cubox-i/3.0.35-r0/temp/log.do_patch.5660)
ERROR: Logfile of failure stored in:
/home/ubuntu/yocto/build/tmp/work/cubox_i-poky-linux-gnueabi/linux-cubox-i/3.0.35-r0/temp/log.do_patch.5660
Log data follows:
| DEBUG: Executing shell function do_patch
| WARNING: no meta data branch found ...
| ls: cannot access .meta*: No such file or directory
| Already on 'imx_3.0.35_4.1.0'
| [INFO] validating against known patches  (cubox-i-standard-meta)
error: patch failed: arch/arm/lib/memset.S:19#############] (/)(110 %)
| error: arch/arm/lib/memset.S: patch does not apply
| ERROR. could not update git tree
| ERROR. Could not apply patches for cubox-i.
|        Patch failures can be resolved in the devshell (bitbake -c
devshell linux-cubox-i)
| WARNING: exit code 1 from a shell command.
| ERROR: Function failed: do_patch (log file is located at
/home/ubuntu/yocto/build/tmp/work/cubox_i-poky-linux-gnueabi/linux-cubox-i/3.0.35-r0/temp/log.do_patch.5660)
ERROR: Task 3
(/home/ubuntu/yocto/sources/meta-fsl-arm-extra/recipes-kernel/linux/linux-cubox-i_3.0.35.bb,
do_patch) failed with exit code '1'

Hope, it helps!

Michael

Am 01.05.2014 06:29, schrieb Bruce Ashfield:
> I'm glad that I looked again, I though there was an error without my
> clean up series .. but what I was seeing was a legitimate double
> application of the patch.
> 
> What error where you seeing when you tried a bbappend like so:
> 
> ------------
> FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-${PV}:"
> 
> inherit kernel
> require recipes-kernel/linux/linux-yocto.inc
> 
> COMPATIBLE_MACHINE_cubox-i = "(cubox-i)"
> 
> SRC_URI += "file://videoin.cfg"
> --------------
> 
> Your error message will set me straight .. and tell me if it is just
> the late night hacking fooling my eyes .. or not!
> 
> 
> Bruce



