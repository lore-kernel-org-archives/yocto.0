Return-Path: <opensource@keylevel.com>
Received: from hxhsvr03.internetintuitive.net (hxhsvr03.internetintuitive.net
	[80.254.228.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AF5A5E01216
	for <yocto@yoctoproject.org>; Fri, 19 Aug 2011 00:29:40 -0700 (PDT)
Received: from durham.keylevel.com ([109.224.134.115]:13217
	helo=MacBook-Pro.durham.keylevel.com)
	by hxhsvr03.internetintuitive.net with esmtpa (Exim 4.69)
	(envelope-from <opensource@keylevel.com>) id 1QuJWN-0002Z3-IR
	for yocto@yoctoproject.org; Fri, 19 Aug 2011 08:29:39 +0100
Message-Id: <1D7CE6A2-A65C-44F7-89F9-F66374E58B36@keylevel.com>
From: Chris Tapp <opensource@keylevel.com>
To: yocto@yoctoproject.org
Mime-Version: 1.0 (Apple Message framework v936)
Date: Fri, 19 Aug 2011 08:29:37 +0100
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
Subject: Build fails moving from 4.0.1 to 5.0.1
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
X-List-Received-Date: Fri, 19 Aug 2011 07:29:41 -0000
Content-Type: text/plain; charset=US-ASCII; format=flowed; delsp=yes
Content-Transfer-Encoding: 7bit

I've got a configuration that builds ok under 4.0.1, but when I build  
under 5.0.1 I get the following right at the end:

Installing task-poky-boot (1.0-r7) to root...
Downloading file:/home/chris/yocto/ebox3300-build/tmp/deploy/ipk/ 
Vortex86DX/task-poky-boot_1.0-r7_Vortex86DX.ipk.
Installing task-sjs (1.0-r0) to root...
Downloading file:/home/chris/yocto/ebox3300-build/tmp/deploy/ipk/ 
Vortex86DX/task-sjs_1.0-r0_Vortex86DX.ipk.
Unknown package 'run-postinsts'.
Collected errors:
  * satisfy_dependencies_for: Cannot satisfy the following  
dependencies for task-poky-boot:
  * 	tinylogin * 	busybox * 	modutils-initscripts * 	initscripts * 	 
console-tools * 	initscripts * 	udev * 	sysvinit * 	netbase * 	base- 
passwd *
  * opkg_install_cmd: Cannot install package task-poky-boot.
  * satisfy_dependencies_for: Cannot satisfy the following  
dependencies for task-sjs:
  * 	yocto-wallboard * 	psplash * 	syslinux *
  * opkg_install_cmd: Cannot install package task-sjs.
  * opkg_install_cmd: Cannot install package run-postinsts.
ERROR: Function 'do_rootfs' failed (see ...

If I look in tmp/work, it looks as if the missing dependencies have  
all been built and packaged within their work areas.

I tried cleaning and rebuilding 'task-sjs', but that made no  
difference to the errors reported against it.

Where should I start looking to work out what's going wrong here? Is  
it as simple as needing to add something like RDEPENDS?

Chris Tapp

opensource@keylevel.com
www.keylevel.com




