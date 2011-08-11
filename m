Return-Path: <opensource@keylevel.com>
Received: from hxhsvr03.internetintuitive.net (hxhsvr03.internetintuitive.net
	[80.254.228.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 08EBAE00771
	for <yocto@yoctoproject.org>; Thu, 11 Aug 2011 16:51:40 -0700 (PDT)
Received: from durham.keylevel.com ([109.224.134.115]:62117
	helo=MacBook-Pro.durham.keylevel.com)
	by hxhsvr03.internetintuitive.net with esmtpa (Exim 4.69)
	(envelope-from <opensource@keylevel.com>) id 1Qrf2S-0001j1-B0
	for yocto@yoctoproject.org; Fri, 12 Aug 2011 00:51:48 +0100
Message-Id: <02B62B87-3FD5-421C-A344-9A808B1E9C99@keylevel.com>
From: Chris Tapp <opensource@keylevel.com>
To: yocto@yoctoproject.org
Mime-Version: 1.0 (Apple Message framework v936)
Date: Fri, 12 Aug 2011 00:51:45 +0100
X-Mailer: Apple Mail (2.936)
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - hxhsvr03.internetintuitive.net
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - keylevel.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Subject: bbappend - Where should my file be?
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
X-List-Received-Date: Thu, 11 Aug 2011 23:51:41 -0000
Content-Type: text/plain; charset=US-ASCII; format=flowed; delsp=yes
Content-Transfer-Encoding: 7bit

I've got a linux-wrs_git.bbappend file in a layer (under poky laverne  
4.0.1) that contains:

COMPATIBLE_MACHINE_Vortex86DX = "Vortex86DX"
WRMACHINE_Vortex86DX  = "common_pc"

FILESEXTRAPATHS := "${THISDIR}/${PN}"

SRC_URI += " file://defconfig"

Where should the defconfig file be relative to the bbappend?

I've tried:

MyLayer
       +--- recipies
                   +--- linux
                            +--- linux-wrs_git.bbappend
                            +--- linux-wrs_git
                                             +--- defconfig


However, my defconfig file isn't being picked up during do_unpack:

cp: cannot stat `/home/chris/yocto/yocto-versions/laverne-4.0.1/meta/ 
recipes-kernel/linux/files/defconfig': No such file or directory
NOTE: Unpacking /home/chris/yocto/yocto-downloads/ 
git_git.pokylinux.org.linux-2.6-windriver.git.tar.gz to /home/chris/ 
yocto/mbox-3300-build/tmp/work/Vortex86DX-poky-linux/linux- 
wrs 
-2.6.34 
+ 
git0 
+ 
b67e060194a38c6331da1532bd06446087a42b3b_0 
+0431115c9d720fee5bb105f6a7411efb4f851d26-r12/
NOTE: Unpacking /home/chris/yocto/yocto-versions/laverne-4.0.1/meta/ 
recipes-kernel/linux/files/defconfig to /home/chris/yocto/mbox-3300- 
build/tmp/work/Vortex86DX-poky-linux/linux- 
wrs 
-2.6.34 
+ 
git0 
+ 
b67e060194a38c6331da1532bd06446087a42b3b_0 
+0431115c9d720fee5bb105f6a7411efb4f851d26-r12/
ERROR: Task failed:

Which seems to show that it's not looking in FILESEXTRAPATHS.

The .bbappend file seems to be processed, as commenting out the  
SRC_URI line gets rid of the error.

What have I got wrong?

Chris Tapp

opensource@keylevel.com
www.keylevel.com




