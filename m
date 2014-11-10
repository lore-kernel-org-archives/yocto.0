Return-Path: <xerofoify@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F19E5E0085F; Mon, 10 Nov 2014 03:11:35 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (xerofoify[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.177 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f177.google.com (mail-ig0-f177.google.com
	[209.85.213.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3C9B5E007C2
	for <yocto@yoctoproject.org>; Mon, 10 Nov 2014 03:11:29 -0800 (PST)
Received: by mail-ig0-f177.google.com with SMTP id hl2so8898171igb.4
	for <yocto@yoctoproject.org>; Mon, 10 Nov 2014 03:11:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=yLq3Pa00ajd+esFCMwqDNq3B67Z35OkQyy2YFqyh5fo=;
	b=zFv0SqPTst05dMTeIavnP2IRn2xRzPdfTiHk+Yi5xLEEapWzwprSy72+ys07zaADTC
	dnTRofxCGsD9wZpo6R6DjDsrv8vqaDwv8HUx06/VlhEQYFBay+Cs2/tEQ3h6HzSBN9Dd
	Ajia6YcXRw4ORfngTdiIl9CSKK6fhdjqyy3yVu6FG4HsF+Jy/uWXc8ebbr3XVz+UhCla
	aj0vdYL8tLcSeasnG0bpsRHRcqhGYw8lzsJpKW+UXeHIBlZWDEMg4hUPT3g+4yLiPRrs
	S5fPcaAh6Mjw6h3AxefWwv0ksOv39lWqYTRCOs1XXJY2bkX8vXmpJklDaVa7UBBwB4Cs
	Mq2g==
X-Received: by 10.107.47.89 with SMTP id j86mr32178159ioo.32.1415617889340;
	Mon, 10 Nov 2014 03:11:29 -0800 (PST)
Received: from [192.168.0.50]
	(CPE0026f3330aca-CM0026f3330ac6.cpe.net.cable.rogers.com.
	[99.231.92.7])
	by mx.google.com with ESMTPSA id l7sm371085igf.11.2014.11.10.03.11.28
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 10 Nov 2014 03:11:28 -0800 (PST)
Message-ID: <54609D5F.2000604@gmail.com>
Date: Mon, 10 Nov 2014 06:11:27 -0500
From: nick <xerofoify@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.2.0
MIME-Version: 1.0
To: Nick D'Ademo <nickdademo@gmail.com>
References: <CANR6C54aazdi1bArSq-DdqMMJGcbQMuR2HsygV_8LDdTy3oUHg@mail.gmail.com>
	<54601032.8020203@gmail.com>
	<CANR6C57RL+fuZdXU7wUoQgN5XkFu9mcz=Ef-VQfEH-2coViLWA@mail.gmail.com>
	<546013FD.5080802@gmail.com>
	<CANR6C57voYqR9t-7P-=qUuudn6t7u=PFgGcWTy92xUUOy4H-Kw@mail.gmail.com>
	<5460169F.8090001@gmail.com>
	<CANR6C56k7M=kQV=sq8dXf3KK5zEXk_KPZ+TmrL5BqDoWV_hYMg@mail.gmail.com>
	<546018F8.2030201@gmail.com>
	<CANR6C55j8Q08JhyGx1nekPqPyuwGcau52tJe=8=r59ACjewrfA@mail.gmail.com>
	<54601BC4.1080409@gmail.com>
	<CANR6C54hAYqnvjrtg6_pNcTqAibrCKhaCFEOhkfr=6j2jLPjZg@mail.gmail.com>
	<54602A9F.1040907@gmail.com>
	<CANR6C57+VqbBTT1UwE-JNqdaqt4+tg2J9OPqs+u=i-z98NgsOQ@mail.gmail.com>
	<5460346B.1080207@gmail.com>
	<CANR6C54h_9yEfro=3P-qEz9Am-RdTHO_ezidrfDRdJtUpqEJdw@mail.gmail.com>
In-Reply-To: <CANR6C54h_9yEfro=3P-qEz9Am-RdTHO_ezidrfDRdJtUpqEJdw@mail.gmail.com>
Cc: Yocto list discussion <yocto@yoctoproject.org>
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
X-List-Received-Date: Mon, 10 Nov 2014 11:11:36 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

Nick,
Yes this is a issue with your custom machine and I believe this is a issue with your your machine 
conf is located in the build directories.
Cheers Nick 

On 14-11-10 02:26 AM, Nick D'Ademo wrote:
> menuconfig works with a core-image-minimal vanilla build:
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> *Build Configuration:BB_VERSION        = "1.24.0"BUILD_SYS         =
> "x86_64-linux"NATIVELSBSTRING   = "Ubuntu-14.04"TARGET_SYS        =
> "arm-poky-linux-gnueabi"MACHINE           = "qemuarm"DISTRO            =
> "poky"DISTRO_VERSION    = "1.7"TUNE_FEATURES     = "arm armv5 thumb
> dsp"TARGET_FPU        = "soft"meta              meta-yocto
> meta-yocto-bsp    =
> "master:45bb9e3323073070453647a32289dc1792f3d660"meta-oe
> meta-multimedia   meta-gnome        =
> "master:dac2422f737c351c37a8405a76b5f0b5df9311a0"*
> 
> 
> So this must be an issue with my custom machine.
> 
> 
> On Mon, Nov 10, 2014 at 2:43 PM, nick <xerofoify@gmail.com> wrote:
> 
>> Nick,
>> Then this is an issue with your machine conf or paths required for kernel
>> building. Are you able
>> to build a poky distro with a working kernel and this is just a issue with
>> you building the yocto
>> kernel alone or can you also not build poky too?
>> Cheers Nick
>>
>> On 14-11-09 10:36 PM, Nick D'Ademo wrote:
>>> Just tried with the latest 3.17.2 kernel. 'make menuconfig' works fine
>> and
>>> loads the interactive kernel config.
>>>
>>>
>>> On Mon, Nov 10, 2014 at 2:01 PM, nick <xerofoify@gmail.com> wrote:
>>>
>>>> Try downloading a stock kernel for kernel.org and extract it in your
>> home
>>>> directory and run make menuconfig in
>>>> the root of the kernel source tree, if this works then I am assuming
>>>> either ncurses or your machine conf is wrong
>>>> somewhere.
>>>> Cheers Nick
>>>>
>>>> On 14-11-09 09:51 PM, Nick D'Ademo wrote:
>>>>> Hi Nick,
>>>>>
>>>>> I removed build/tmp/ and performed a rebuild - I'm still experiencing
>> the
>>>>> same error message unfortunately.
>>>>>
>>>>>
>>>>> On Mon, Nov 10, 2014 at 12:58 PM, nick <xerofoify@gmail.com> wrote:
>>>>>
>>>>>> Seems to after reading and doing some research a build issue with
>>>> multiple
>>>>>> jobs or try running rm -r tmp in your
>>>>>> build and then rebuild as it may be an issue with out of date temp
>>>> files.
>>>>>> Cheers Nick
>>>>>>
>>>>>> On 14-11-09 08:51 PM, Nick D'Ademo wrote:
>>>>>>> Thanks for trying that out Nick.
>>>>>>>
>>>>>>> Issue is present on both 3.14 and 3.17 for me.
>>>>>>> All paths in the require lines are correct too.
>>>>>>>
>>>>>>> Any other ideas?
>>>>>>>
>>>>>>>
>>>>>>>
>>>>>>> On Mon, Nov 10, 2014 at 12:46 PM, nick <xerofoify@gmail.com> wrote:
>>>>>>>
>>>>>>>> I tried bitbake linux-yocto -c menuconfig on my own system running
>> the
>>>>>>>> same distro and it seems to my
>>>>>>>> default use kernel 3.14 not 3.17 otherwise this seems be fine from
>> my
>>>>>>>> understanding. Also check all the
>>>>>>>> paths in your require lines as there may be an issue with your
>> builds
>>>>>> and
>>>>>>>> the path set up by these files
>>>>>>>> that you are linking to for your kernel build.
>>>>>>>> Nick
>>>>>>>> On 14-11-09 08:40 PM, Nick D'Ademo wrote:
>>>>>>>>> Thanks Nick.
>>>>>>>>>
>>>>>>>>> Machine conf is as follows (it's actually nearly identical to
>>>> nuc.conf
>>>>>> -
>>>>>>>>> however, BT support, multilib, and preferred providers have been
>>>>>> added):
>>>>>>>>>
>>>>>>>>> #@TYPE: Machine
>>>>>>>>> #@NAME: chiefriver
>>>>>>>>>
>>>>>>>>> #@WEBTITLE: Intel Next Unit of Computing (NUC) Model: DC3217IYE
>>>>>>>>>
>>>>>>>>> #@DESCRIPTION: Machine configuration for Intel NUC model DC3217IYE
>>>>>>>>> # i.e. Ivy Bridge + Panther Point
>>>>>>>>>
>>>>>>>>> PREFERRED_VERSION_linux-yocto ?= "3.17%"
>>>>>>>>> MACHINE_FEATURES += "va-impl-intel wifi efi bluetooth"
>>>>>>>>> MACHINE_FEATURES += "intel-ucode"
>>>>>>>>>
>>>>>>>>> require conf/machine/include/meta-intel.inc
>>>>>>>>> require conf/machine/include/intel-corei7-64-common.inc
>>>>>>>>> require conf/machine/include/intel-common-pkgarch.inc
>>>>>>>>> require multilib.conf
>>>>>>>>>
>>>>>>>>> MACHINE_HWCODECS ?= "va-intel gst-va-intel"
>>>>>>>>>
>>>>>>>>> XSERVER ?= "${XSERVER_X86_BASE} \
>>>>>>>>>            ${XSERVER_X86_EXT} \
>>>>>>>>>            ${XSERVER_X86_I965} \
>>>>>>>>>            "
>>>>>>>>>
>>>>>>>>> MACHINE_EXTRA_RRECOMMENDS += "linux-firmware-iwlwifi-6000g2b-6
>> lms8"
>>>>>>>>>
>>>>>>>>> # disable the serial port configuration
>>>>>>>>> SERIAL_CONSOLE = ""
>>>>>>>>>
>>>>>>>>> PREFERRED_PROVIDER_jpeg = "jpeg"
>>>>>>>>> PREFERRED_PROVIDER_jpeg-native = "jpeg-native"
>>>>>>>>> PREFERRED_PROVIDER_virtual/fftw = "fftw"
>>>>>>>>>
>>>>>>>>>
>>>>>>>>>
>>>>>>>>> On Mon, Nov 10, 2014 at 12:36 PM, nick <xerofoify@gmail.com>
>> wrote:
>>>>>>>>>
>>>>>>>>>> Hey Nick,
>>>>>>>>>> This seems to then be an issue with incorrect paths or build
>>>>>> information
>>>>>>>>>> in your nuc.conf
>>>>>>>>>> as the most likely culprit. If you can post your machine's conf
>>>> file I
>>>>>>>>>> will be glad to see
>>>>>>>>>> if there are any issues I can spot.
>>>>>>>>>> Nick
>>>>>>>>>>
>>>>>>>>>> On 14-11-09 08:33 PM, Nick D'Ademo wrote:
>>>>>>>>>>> 1) source oe-init-build-env is run before building.
>>>>>>>>>>> 2) We are actually using a custom machine .conf based on
>> nuc.conf,
>>>> so
>>>>>>>>>>> actually: MACHINE = "custom_machine_name". I replaced it with
>> "nuc"
>>>>>> in
>>>>>>>>>> this
>>>>>>>>>>> post to avoid confusion.
>>>>>>>>>>>
>>>>>>>>>>> On Mon, Nov 10, 2014 at 12:25 PM, nick <xerofoify@gmail.com>
>>>> wrote:
>>>>>>>>>>>
>>>>>>>>>>>> Do you run source oe-init-build-env before building and why is
>>>> your
>>>>>>>>>> machine
>>>>>>>>>>>> set to nuc seems this may be an issue?
>>>>>>>>>>>> Nick
>>>>>>>>>>>>
>>>>>>>>>>>> On 14-11-09 08:15 PM, Nick D'Ademo wrote:
>>>>>>>>>>>>> Thanks for the quick reply Nick.
>>>>>>>>>>>>>
>>>>>>>>>>>>> Host system is Ubuntu 14.04. ncurses is already installed:
>>>>>>>>>>>>>
>>>>>>>>>>>>> sudo apt-get install libncurses5-dev
>>>>>>>>>>>>> Reading package lists... Done
>>>>>>>>>>>>> Building dependency tree
>>>>>>>>>>>>> Reading state information... Done
>>>>>>>>>>>>> libncurses5-dev is already the newest version.
>>>>>>>>>>>>>
>>>>>>>>>>>>>
>>>>>>>>>>>>> On Mon, Nov 10, 2014 at 12:09 PM, nick <xerofoify@gmail.com>
>>>>>> wrote:
>>>>>>>>>>>>>
>>>>>>>>>>>>>> Check to see if you actuality have it installed on your host
>>>>>> system
>>>>>>>>>> for
>>>>>>>>>>>>>> your package manager.
>>>>>>>>>>>>>> The library for ncurses for compiling the kernel is different
>>>>>> based
>>>>>>>> on
>>>>>>>>>>>>>> your distro, check
>>>>>>>>>>>>>> your distro's installer and install the correct ncurses
>> package
>>>>>>>> first.
>>>>>>>>>>>> If
>>>>>>>>>>>>>> this is still an
>>>>>>>>>>>>>> issue please reply with a newer error message.
>>>>>>>>>>>>>> Cheers Nick
>>>>>>>>>>>>>>
>>>>>>>>>>>>>> On 14-11-09 08:05 PM, Nick D'Ademo wrote:
>>>>>>>>>>>>>>> Getting a strange error when attempting to configure the
>> Yocto
>>>>>>>> Linux
>>>>>>>>>>>>>> kernel
>>>>>>>>>>>>>>> via: bitbake linux-yocto -c menuconfig.
>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>> Does anyone have any ideas? (error message below)
>>>>>>>>>>>>>>> Much appreciated.
>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>> Build Configuration:
>>>>>>>>>>>>>>> BB_VERSION        = "1.24.0"
>>>>>>>>>>>>>>> BUILD_SYS         = "x86_64-linux"
>>>>>>>>>>>>>>> NATIVELSBSTRING   = "Ubuntu-14.04"
>>>>>>>>>>>>>>> TARGET_SYS        = "x86_64-poky-linux"
>>>>>>>>>>>>>>> MACHINE           = "nuc"
>>>>>>>>>>>>>>> DISTRO            = "poky"
>>>>>>>>>>>>>>> DISTRO_VERSION    = "1.7"
>>>>>>>>>>>>>>> TUNE_FEATURES     = "m64 corei7"
>>>>>>>>>>>>>>> TARGET_FPU        = ""
>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>> *make[1]: Entering directory
>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>
>>>>>>>>>>>>
>>>>>>>>>>
>>>>>>>>
>>>>>>
>>>>
>> `/home/nick/poky/build/tmp/work/corei7-64-intel-common-poky-linux/linux-yocto/3.17.1+gitAUTOINC+b86dd5c6f4_0caf16d385-r0/linux-corei7-64-intel-common-standard-build'
>>>>>>>>>>>>>>> GEN     ./Makefile *** Unable to find the ncurses libraries
>> or
>>>>>> the
>>>>>>>>>> ***
>>>>>>>>>>>>>>> required header files. *** 'make menuconfig' requires the
>>>> ncurses
>>>>>>>>>>>>>>> libraries. ***  *** Install ncurses (ncurses-devel) and try
>>>>>> again.
>>>>>>>>>> ***
>>>>>>>>>>>>>>> make[3]: *** [scripts/kconfig/dochecklxdialog] Error
>> 1make[2]:
>>>>>> ***
>>>>>>>>>>>>>>> [menuconfig] Error 2make[1]: *** [sub-make] Error 2make: ***
>>>>>>>>>>>> [__sub-make]
>>>>>>>>>>>>>>> Error 2Command failed.Press any key to continue... *
>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>
>>>>>>>>>>>>>
>>>>>>>>>>>>
>>>>>>>>>>>
>>>>>>>>>>
>>>>>>>>>
>>>>>>>>
>>>>>>>
>>>>>>
>>>>>
>>>>
>>>
>>
> 

