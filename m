Return-Path: <opensource@keylevel.com>
Received: from hxhsvr03.internetintuitive.net (hxhsvr03.internetintuitive.net
	[80.254.228.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 30DC5E00777
	for <yocto@yoctoproject.org>; Fri, 19 Aug 2011 13:03:20 -0700 (PDT)
Received: from durham.keylevel.com ([109.224.134.115]:4905
	helo=MacBook-Pro.durham.keylevel.com)
	by hxhsvr03.internetintuitive.net with esmtpa (Exim 4.69)
	(envelope-from <opensource@keylevel.com>) id 1QuUyZ-0007PZ-JJ
	for yocto@yoctoproject.org; Fri, 19 Aug 2011 20:43:31 +0100
Message-Id: <BD6545AE-F137-4DF9-99FB-8337A2306780@keylevel.com>
From: Chris Tapp <opensource@keylevel.com>
To: yocto@yoctoproject.org
In-Reply-To: <1313770598.13995.115.camel@rex>
Mime-Version: 1.0 (Apple Message framework v936)
Date: Fri, 19 Aug 2011 20:43:29 +0100
References: <1D7CE6A2-A65C-44F7-89F9-F66374E58B36@keylevel.com>
	<1313770598.13995.115.camel@rex>
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
X-List-Received-Date: Fri, 19 Aug 2011 20:03:21 -0000
Content-Type: text/plain; charset=US-ASCII; format=flowed; delsp=yes
Content-Transfer-Encoding: 7bit

On 19 Aug 2011, at 17:16, Richard Purdie wrote:

> On Fri, 2011-08-19 at 08:29 +0100, Chris Tapp wrote:
>> I've got a configuration that builds ok under 4.0.1, but when I build
>> under 5.0.1 I get the following right at the end:
>>
>> Installing task-poky-boot (1.0-r7) to root...
>> Downloading file:/home/chris/yocto/ebox3300-build/tmp/deploy/ipk/
>> Vortex86DX/task-poky-boot_1.0-r7_Vortex86DX.ipk.
>> Installing task-sjs (1.0-r0) to root...
>> Downloading file:/home/chris/yocto/ebox3300-build/tmp/deploy/ipk/
>> Vortex86DX/task-sjs_1.0-r0_Vortex86DX.ipk.
>> Unknown package 'run-postinsts'.
>> Collected errors:
>>  * satisfy_dependencies_for: Cannot satisfy the following
>> dependencies for task-poky-boot:
>>  * 	tinylogin * 	busybox * 	modutils-initscripts * 	initscripts * 	
>> console-tools * 	initscripts * 	udev * 	sysvinit * 	netbase * 	base-
>> passwd *
>>  * opkg_install_cmd: Cannot install package task-poky-boot.
>>  * satisfy_dependencies_for: Cannot satisfy the following
>> dependencies for task-sjs:
>>  * 	yocto-wallboard * 	psplash * 	syslinux *
>>  * opkg_install_cmd: Cannot install package task-sjs.
>>  * opkg_install_cmd: Cannot install package run-postinsts.
>> ERROR: Function 'do_rootfs' failed (see ...
>>
>> If I look in tmp/work, it looks as if the missing dependencies have
>> all been built and packaged within their work areas.
>>
>> I tried cleaning and rebuilding 'task-sjs', but that made no
>> difference to the errors reported against it.
>>
>> Where should I start looking to work out what's going wrong here? Is
>> it as simple as needing to add something like RDEPENDS?
>
> This sounds like the machine specific packages are failing to be found
> so it sounds like a package feed issue. Is sounds like PACKAGE_ARCHS
> isn't listing everything it needs to (such as the machine name) or the
> package system isn't finding a group of packages for some other  
> reason.

Thanks, but that's way over my head at the moment ;-)

I've searched through the meta data for PACKAGE_ARCHS, but that's not  
thrown anything up to make me think there was anything I should look at.

I'm using my own machine recipe. Is this were I should be looking?

Chris


