Return-Path: <yocto@mindchasers.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B9E61E00849; Sun,  9 Nov 2014 17:32:06 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp.webfaction.com (mail6.webfaction.com [74.55.86.74])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 820FDE007C0
	for <yocto@yoctoproject.org>; Sun,  9 Nov 2014 17:32:04 -0800 (PST)
Received: from [192.168.1.10] (unknown [68.38.40.177])
	by smtp.webfaction.com (Postfix) with ESMTP id 2FDC1207D5B2
	for <yocto@yoctoproject.org>; Mon, 10 Nov 2014 01:32:04 +0000 (UTC)
Message-ID: <5460158A.1000108@mindchasers.com>
Date: Sun, 09 Nov 2014 20:31:54 -0500
From: Bob Cochran <yocto@mindchasers.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.2.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <CANR6C54aazdi1bArSq-DdqMMJGcbQMuR2HsygV_8LDdTy3oUHg@mail.gmail.com>	<54601032.8020203@gmail.com>
	<CANR6C57RL+fuZdXU7wUoQgN5XkFu9mcz=Ef-VQfEH-2coViLWA@mail.gmail.com>
In-Reply-To: <CANR6C57RL+fuZdXU7wUoQgN5XkFu9mcz=Ef-VQfEH-2coViLWA@mail.gmail.com>
Subject: Re: Unable to find the ncurses libraries when running menuconfig
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
X-List-Received-Date: Mon, 10 Nov 2014 01:32:06 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 11/09/2014 08:15 PM, Nick D'Ademo wrote:
> Thanks for the quick reply Nick.
>
> Host system is Ubuntu 14.04. ncurses is already installed:
>
> sudo apt-get install libncurses5-dev
> Reading package lists... Done
> Building dependency tree
> Reading state information... Done
> libncurses5-dev is already the newest version.


Oh boy, I've seen this before.  I seem to remember this being caused by 
a problem with the path setup or something in the environment and maybe 
not being able to find the scripts folder or reaching a wrong folder 
first.

How are you setting up your environment before invoking bitbake?

Were you using the ADT?  If so check out cross compiling the kernel 
here: 
http://www.openembedded.org/wiki/SDK/Toolchain/Application_Developer_Toolkit



>
>
> On Mon, Nov 10, 2014 at 12:09 PM, nick <xerofoify@gmail.com
> <mailto:xerofoify@gmail.com>> wrote:
>
>     Check to see if you actuality have it installed on your host system
>     for your package manager.
>     The library for ncurses for compiling the kernel is different based
>     on your distro, check
>     your distro's installer and install the correct ncurses package
>     first. If this is still an
>     issue please reply with a newer error message.
>     Cheers Nick
>
>     On 14-11-09 08:05 PM, Nick D'Ademo wrote:
>     > Getting a strange error when attempting to configure the Yocto Linux kernel
>     > via: bitbake linux-yocto -c menuconfig.
>     >
>     > Does anyone have any ideas? (error message below)
>     > Much appreciated.
>     >
>     > Build Configuration:
>     > BB_VERSION        = "1.24.0"
>     > BUILD_SYS         = "x86_64-linux"
>     > NATIVELSBSTRING   = "Ubuntu-14.04"
>     > TARGET_SYS        = "x86_64-poky-linux"
>     > MACHINE           = "nuc"
>     > DISTRO            = "poky"
>     > DISTRO_VERSION    = "1.7"
>     > TUNE_FEATURES     = "m64 corei7"
>     > TARGET_FPU        = ""
>     >
>     >
>     >
>     >
>     >
>     >
>     >
>     >
>     >
>     >
>     >
>     >
>     >
>     >
>     >
>      > *make[1]: Entering directory
>     > `/home/nick/poky/build/tmp/work/corei7-64-intel-common-poky-linux/linux-yocto/3.17.1+gitAUTOINC+b86dd5c6f4_0caf16d385-r0/linux-corei7-64-intel-common-standard-build'
>     > GEN     ./Makefile *** Unable to find the ncurses libraries or the ***
>     > required header files. *** 'make menuconfig' requires the ncurses
>     > libraries. ***  *** Install ncurses (ncurses-devel) and try again. ***
>     > make[3]: *** [scripts/kconfig/dochecklxdialog] Error 1make[2]: ***
>     > [menuconfig] Error 2make[1]: *** [sub-make] Error 2make: *** [__sub-make]
>      > Error 2Command failed.Press any key to continue... *
>      >
>      >
>      >
>
>
>
>


