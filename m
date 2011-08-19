Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F07ADE00771
	for <yocto@yoctoproject.org>; Fri, 19 Aug 2011 09:16:56 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p7JGGooF030211;
	Fri, 19 Aug 2011 17:16:50 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 28569-05; Fri, 19 Aug 2011 17:16:46 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p7JGGfTj030203
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Fri, 19 Aug 2011 17:16:43 +0100
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Chris Tapp <opensource@keylevel.com>
In-Reply-To: <1D7CE6A2-A65C-44F7-89F9-F66374E58B36@keylevel.com>
References: <1D7CE6A2-A65C-44F7-89F9-F66374E58B36@keylevel.com>
Date: Fri, 19 Aug 2011 09:16:38 -0700
Message-ID: <1313770598.13995.115.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.2 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: yocto@yoctoproject.org
Subject: Re: Build fails moving from 4.0.1 to 5.0.1
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
X-List-Received-Date: Fri, 19 Aug 2011 16:16:57 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2011-08-19 at 08:29 +0100, Chris Tapp wrote:
> I've got a configuration that builds ok under 4.0.1, but when I build  
> under 5.0.1 I get the following right at the end:
> 
> Installing task-poky-boot (1.0-r7) to root...
> Downloading file:/home/chris/yocto/ebox3300-build/tmp/deploy/ipk/ 
> Vortex86DX/task-poky-boot_1.0-r7_Vortex86DX.ipk.
> Installing task-sjs (1.0-r0) to root...
> Downloading file:/home/chris/yocto/ebox3300-build/tmp/deploy/ipk/ 
> Vortex86DX/task-sjs_1.0-r0_Vortex86DX.ipk.
> Unknown package 'run-postinsts'.
> Collected errors:
>   * satisfy_dependencies_for: Cannot satisfy the following  
> dependencies for task-poky-boot:
>   * 	tinylogin * 	busybox * 	modutils-initscripts * 	initscripts * 	 
> console-tools * 	initscripts * 	udev * 	sysvinit * 	netbase * 	base- 
> passwd *
>   * opkg_install_cmd: Cannot install package task-poky-boot.
>   * satisfy_dependencies_for: Cannot satisfy the following  
> dependencies for task-sjs:
>   * 	yocto-wallboard * 	psplash * 	syslinux *
>   * opkg_install_cmd: Cannot install package task-sjs.
>   * opkg_install_cmd: Cannot install package run-postinsts.
> ERROR: Function 'do_rootfs' failed (see ...
> 
> If I look in tmp/work, it looks as if the missing dependencies have  
> all been built and packaged within their work areas.
> 
> I tried cleaning and rebuilding 'task-sjs', but that made no  
> difference to the errors reported against it.
> 
> Where should I start looking to work out what's going wrong here? Is  
> it as simple as needing to add something like RDEPENDS?

This sounds like the machine specific packages are failing to be found
so it sounds like a package feed issue. Is sounds like PACKAGE_ARCHS
isn't listing everything it needs to (such as the machine name) or the
package system isn't finding a group of packages for some other reason.

Cheers,

Richard


