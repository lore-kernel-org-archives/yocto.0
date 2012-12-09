Return-Path: <koansoftware@gmail.com>
Received: from wiki.koala.it (li19-45.members.linode.com [64.22.125.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 09145E011AC
	for <yocto@yoctoproject.org>; Sun,  9 Dec 2012 12:06:08 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by wiki.koala.it (Postfix) with ESMTP id 2172F2C80C
	for <yocto@yoctoproject.org>; Sun,  9 Dec 2012 20:05:02 +0000 (UTC)
Received: from wiki.koala.it ([127.0.0.1])
	by localhost (wiki.koala.it [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ps+7e7xOHkPg for <yocto@yoctoproject.org>;
	Sun,  9 Dec 2012 20:04:57 +0000 (UTC)
Received: from [10.1.10.32] (host61-87-static.14-79-b.business.telecomitalia.it
	[79.14.87.61]) by wiki.koala.it (Postfix) with ESMTPSA id DE54E2C800
	for <yocto@yoctoproject.org>; Sun,  9 Dec 2012 20:04:56 +0000 (UTC)
Message-ID: <50C4EF27.2030106@gmail.com>
Date: Sun, 09 Dec 2012 21:05:59 +0100
From: Marco <koansoftware@gmail.com>
Organization: MC
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:17.0) Gecko/17.0 Thunderbird/17.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
Subject: bitbake -c devshell option
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: koansoftware@gmail.com
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sun, 09 Dec 2012 20:06:08 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hello,
I was used to work with oe-classic.
When I used oe-classic, often I used the 'devshell' option to try to 
compile (make uImage) the kernel with the entire environment set up 
correctly.
Now if I do the same procedure with Yocto 8 Danny it does not work.
For example I'm using a default configuration below:

1st step
---
MACHINE="beagleboard" bitbake -c devshell virtual/kernel

Build Configuration:
BB_VERSION        = "1.16.0"
TARGET_ARCH       = "arm"
TARGET_OS         = "linux-gnueabi"
MACHINE           = "beagleboard"
DISTRO            = "poky"
DISTRO_VERSION    = "1.3"
TUNE_FEATURES     = "armv7a vfp neon cortexa8"
TARGET_FPU        = "vfp-neon"
meta
meta-yocto
meta-yocto-bsp    = "danny:09031ac2fc0f30ec577ee823fc61ff0e5d852e21"

NOTE: Resolving any missing task queue dependencies
NOTE: Preparing runqueue
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
NOTE: Tasks Summary: Attempted 912 tasks of which 912 didn't need to be 
rerun and all succeeded.


2nd step just after 1st
------------------------
MACHINE="beagleboard" bitbake -c devshell virtual/kernel

- Devshell starts in a new screen
------------------------
$ pwd
~/yocto-8-danny/poky/build/tmp/work/beagleboard-poky-linux-gnueabi/linux-yocto-3.4.11+git1+a201268353c030d9fafe00f2041976f7437d9386_1+449f7f520350700858f21a5554b81cc8ad23267d-r4.3/linux

- lauch a kernel build (as I was used to do)
------------------------
$ make
scripts/kconfig/conf --silentoldconfig Kconfig
***
*** Configuration file ".config" not found!
***
*** Please run some configurator (e.g. "make oldconfig" or
*** "make menuconfig" or "make xconfig").
***
make[2]: *** [silentoldconfig] Error 1
make[1]: *** [silentoldconfig] Error 2
make: *** No rule to make target `include/config/auto.conf', needed by 
`include/config/kernel.release'.  Stop.


I would like to find out whether you can still do this and what is the 
new way to go

TIA
-- 
Marco Cavallini

