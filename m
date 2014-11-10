Return-Path: <xerofoify@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AD111E008D7; Sun,  9 Nov 2014 17:36:34 -0800 (PST)
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
	*      [209.85.223.180 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ie0-f180.google.com (mail-ie0-f180.google.com
	[209.85.223.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 30265E007C2
	for <yocto@yoctoproject.org>; Sun,  9 Nov 2014 17:36:32 -0800 (PST)
Received: by mail-ie0-f180.google.com with SMTP id y20so8111343ier.25
	for <yocto@yoctoproject.org>; Sun, 09 Nov 2014 17:36:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=d7Ho1cAkhCqtzORN8/0t8AeihcmOlAw3iQHf+OIMQe4=;
	b=gVz4Z5JsLba4jGZo4R1p8PtKGGUZqSUDcNTPIpNdXFnIC1LsmNJ32ROhOA5Vt7okAx
	nB2qiRniaDws2WTQUWEPTV0ECcWyOgOAUlo53YLaVSQCuil3m1Vi7aTbIhNm/t1TsIuG
	HEBlzvIQcLJtb5mEJZySz3S5xcQxpNb71NsKTXc5/yKznyEnuJiz0GCNGvN3bBgFTqUI
	yT8YJ2rEUnq1uh+au1dKUaOLhBhUBQif5OfN0d6wm/Fd8qhd6FeCuiHqFyx19bqLtrNg
	rKdVHZYS2N7OxVuDt2zHdc6i6RRvJNxfxo8DLC+c9K9KMQibBGKWdJMj8jMFvV+g+s83
	1Jiw==
X-Received: by 10.107.134.89 with SMTP id i86mr6036482iod.53.1415583392412;
	Sun, 09 Nov 2014 17:36:32 -0800 (PST)
Received: from [192.168.0.50]
	(CPE0026f3330aca-CM0026f3330ac6.cpe.net.cable.rogers.com.
	[99.231.92.7])
	by mx.google.com with ESMTPSA id d7sm7629456iod.34.2014.11.09.17.36.31
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 09 Nov 2014 17:36:32 -0800 (PST)
Message-ID: <5460169F.8090001@gmail.com>
Date: Sun, 09 Nov 2014 20:36:31 -0500
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
In-Reply-To: <CANR6C57voYqR9t-7P-=qUuudn6t7u=PFgGcWTy92xUUOy4H-Kw@mail.gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
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
X-List-Received-Date: Mon, 10 Nov 2014 01:36:34 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

Hey Nick,
This seems to then be an issue with incorrect paths or build information in your nuc.conf
as the most likely culprit. If you can post your machine's conf file I will be glad to see
if there are any issues I can spot.
Nick 

On 14-11-09 08:33 PM, Nick D'Ademo wrote:
> 1) source oe-init-build-env is run before building.
> 2) We are actually using a custom machine .conf based on nuc.conf, so
> actually: MACHINE = "custom_machine_name". I replaced it with "nuc" in this
> post to avoid confusion.
> 
> On Mon, Nov 10, 2014 at 12:25 PM, nick <xerofoify@gmail.com> wrote:
> 
>> Do you run source oe-init-build-env before building and why is your machine
>> set to nuc seems this may be an issue?
>> Nick
>>
>> On 14-11-09 08:15 PM, Nick D'Ademo wrote:
>>> Thanks for the quick reply Nick.
>>>
>>> Host system is Ubuntu 14.04. ncurses is already installed:
>>>
>>> sudo apt-get install libncurses5-dev
>>> Reading package lists... Done
>>> Building dependency tree
>>> Reading state information... Done
>>> libncurses5-dev is already the newest version.
>>>
>>>
>>> On Mon, Nov 10, 2014 at 12:09 PM, nick <xerofoify@gmail.com> wrote:
>>>
>>>> Check to see if you actuality have it installed on your host system for
>>>> your package manager.
>>>> The library for ncurses for compiling the kernel is different based on
>>>> your distro, check
>>>> your distro's installer and install the correct ncurses package first.
>> If
>>>> this is still an
>>>> issue please reply with a newer error message.
>>>> Cheers Nick
>>>>
>>>> On 14-11-09 08:05 PM, Nick D'Ademo wrote:
>>>>> Getting a strange error when attempting to configure the Yocto Linux
>>>> kernel
>>>>> via: bitbake linux-yocto -c menuconfig.
>>>>>
>>>>> Does anyone have any ideas? (error message below)
>>>>> Much appreciated.
>>>>>
>>>>> Build Configuration:
>>>>> BB_VERSION        = "1.24.0"
>>>>> BUILD_SYS         = "x86_64-linux"
>>>>> NATIVELSBSTRING   = "Ubuntu-14.04"
>>>>> TARGET_SYS        = "x86_64-poky-linux"
>>>>> MACHINE           = "nuc"
>>>>> DISTRO            = "poky"
>>>>> DISTRO_VERSION    = "1.7"
>>>>> TUNE_FEATURES     = "m64 corei7"
>>>>> TARGET_FPU        = ""
>>>>>
>>>>>
>>>>>
>>>>>
>>>>>
>>>>>
>>>>>
>>>>>
>>>>>
>>>>>
>>>>>
>>>>>
>>>>>
>>>>>
>>>>>
>>>>> *make[1]: Entering directory
>>>>>
>>>>
>> `/home/nick/poky/build/tmp/work/corei7-64-intel-common-poky-linux/linux-yocto/3.17.1+gitAUTOINC+b86dd5c6f4_0caf16d385-r0/linux-corei7-64-intel-common-standard-build'
>>>>> GEN     ./Makefile *** Unable to find the ncurses libraries or the ***
>>>>> required header files. *** 'make menuconfig' requires the ncurses
>>>>> libraries. ***  *** Install ncurses (ncurses-devel) and try again. ***
>>>>> make[3]: *** [scripts/kconfig/dochecklxdialog] Error 1make[2]: ***
>>>>> [menuconfig] Error 2make[1]: *** [sub-make] Error 2make: ***
>> [__sub-make]
>>>>> Error 2Command failed.Press any key to continue... *
>>>>>
>>>>>
>>>>>
>>>>
>>>
>>
> 

