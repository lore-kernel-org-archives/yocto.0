Return-Path: <ajlennon@dynamicdevices.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 34289E0077C; Wed, 21 May 2014 13:15:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: *
X-Spam-Status: No, score=1.3 required=5.0 tests=RDNS_NONE autolearn=no
	version=3.3.1
X-Spam-HAM-Report: * 1.3 RDNS_NONE Delivered to internal network by a host
	with no rDNS
Received: from www.dynamicdevices.co.uk (unknown [89.200.136.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D7670E0077C
	for <yocto@yoctoproject.org>; Wed, 21 May 2014 13:15:43 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by www.dynamicdevices.co.uk (Postfix) with ESMTP id 92796860E7;
	Wed, 21 May 2014 20:15:41 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at lennoab2.miniserver.com
Received: from www.dynamicdevices.co.uk ([127.0.0.1])
	by localhost (www.dynamicdevices.co.uk [127.0.0.1]) (amavisd-new,
	port 10024)
	with ESMTP id Ihvd7u3ylMwt; Wed, 21 May 2014 20:15:34 +0000 (UTC)
Received: from [127.0.0.1] (cpc32-live22-2-0-cust59.17-2.cable.virginm.net
	[82.36.253.60])
	(using TLSv1 with cipher ECDHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by www.dynamicdevices.co.uk (Postfix) with ESMTPSA id 7CBA7860E6;
	Wed, 21 May 2014 20:15:34 +0000 (UTC)
Message-ID: <537D0964.9090208@dynamicdevices.co.uk>
Date: Wed, 21 May 2014 21:15:32 +0100
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64;
	rv:24.0) Gecko/20100101 Thunderbird/24.5.0
MIME-Version: 1.0
To: chmorgan@gmail.com
References: <CAAPegz1dWJAG0R_wVZs8_BtD4CO5YBk7=oT1V-ud40xzkTx+yw@mail.gmail.com>	<537CF707.4060506@mlbassoc.com>
	<CAAPegz23RjycTjy0_81=PM2m47c-vJ+1vL75fO6LbfvJAoBX2w@mail.gmail.com>
In-Reply-To: <CAAPegz23RjycTjy0_81=PM2m47c-vJ+1vL75fO6LbfvJAoBX2w@mail.gmail.com>
X-Enigmail-Version: 1.6
Cc: yocto@yoctoproject.org, gary@mlbassoc.com
Subject: Re: meta-mono core-image-mono failing
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
X-List-Received-Date: Wed, 21 May 2014 20:15:49 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit


On 21/05/2014 20:07, Chris Morgan wrote:
> On Wed, May 21, 2014 at 2:57 PM, Gary Thomas <gary@mlbassoc.com> wrote:
>> On 2014-05-21 12:25, Chris Morgan wrote:
>>> Hello.
>>>
>>> I'm trying to build core-image-mono for the bbb. Layers configuration:
>>>
>>> Build Configuration:
>>> BB_VERSION        = "1.23.1"
>>> BUILD_SYS         = "x86_64-linux"
>>> NATIVELSBSTRING   = "Fedora-20"
>>> TARGET_SYS        = "arm-poky-linux-gnueabi"
>>> MACHINE           = "beaglebone"
>>> DISTRO            = "poky"
>>> DISTRO_VERSION    = "1.6+snapshot-20140521"
>>> TUNE_FEATURES     = "arm armv7a vfp neon"
>>> TARGET_FPU        = "vfp-neon"
>>> meta              = "master:8293f564685d0f587ab63a107285625dc4f98f1c"
>>> meta-bbb          = "master:8318556523a747b7e9c97326bef14922a154e8a2"
>>> common-bsp        =
>>> "(detachedfrome7dc54e):e7dc54e66f4b5c2982a30bef5c67d734e9c759f5"
>>> meta-yocto
>>> meta-yocto-bsp    = "master:8293f564685d0f587ab63a107285625dc4f98f1c"
>>> meta-mono         = "master:e2d2b8a518403a255822022c9e15f116c91b5dd1"
>>>
>>> This is basically master of Poky and meta-mono.
>>>
>>>
>>> | DEBUG: Executing shell function do_configure
>>> | grep: configure.in: No such file or directory
>>> |
>>> /home/cmorgan/projects/yocto_poky/build/tmp/work/x86_64-linux/mono-native/3.4.0-r0/mono-3.4.0/autogen.sh:
>>> line 125: mono/mini/Makefile.am: No such file or directory
>>> |
>>> /home/cmorgan/projects/yocto_poky/build/tmp/work/x86_64-linux/mono-native/3.4.0-r0/mono-3.4.0/autogen.sh:
>>> line 126: mono/metadata/Makefile.am: No such file or directory
>>> | Running aclocal -I m4 -I .  ...
>>> | aclocal: error: 'configure.ac' is required
>>> |
>>> | **Error**: aclocal failed. This may mean that you have not
>>> | installed all of the packages you need, or you may need to
>>> | set ACLOCAL_FLAGS to include "-I $prefix/share/aclocal"
>>> | for the prefix where you installed the packages whose
>>> | macros were not found
>>> | NOTE: mono-native failed to autogen.sh
>>> | sed: can't read acinclude.m4: No such file or directory
>>> | WARNING:
>>> /home/cmorgan/projects/yocto_poky/build/tmp/work/x86_64-linux/mono-native/3.4.0-r0/temp/run.do_configure.24402:1
>>> exit 2 from
>>> |   sed -e "s|slash\}libtool|slash\}x86_64-linux-libtool|" -i acinclude.m4
>>> | ERROR: Function failed: do_configure (log file is located at
>>>
>>> /home/cmorgan/projects/yocto_poky/build/tmp/work/x86_64-linux/mono-native/3.4.0-r0/temp/log.do_configure.24402)
>>> ERROR: Task 687
>>>
>>> (/home/cmorgan/projects/yocto_poky/meta-mono/recipes-mono/mono/mono-native_3.4.0.bb,
>>> do_configure) failed with exit code '1'
>>>
>>>
>>> It looks like the issue is due to autogen.sh assuming several files
>>> are located in the current working directory, for instance on lines
>>> 102, 129 and 130 of autogen.sh there is no use of the $srcdir variable
>>> before files like configure.in or mono/metadata/Makefile.am.in etc.
>>>
>>> Not sure if something has changed on the yocto side to change this
>>> assumption about where autogen.sh is being run from.
>>
>> Look at your recipe(s).  The simple way to fix this is to change
>> 'inherit autotools' to 'inherit autotools-brokensep'
>>
>> You could also look at the recipe more deeply and figure out
>> where it assumes that ${S} == ${B} because of a recent change
>> in OE-core, this is no longer true when you inherit autotools.
>>
> Testing now with autotools-brokensep in mono-3.4.0.inc.
>
> I did look a bit and it looked like there were several places where
> source and build were assumed but I'm not confident that it would be
> easy to figure out what to fix and then create a patch for it but I
> could look at that and feeding it back to the mono guys. Let me do
> that and see how I make out.
>
> Chris

Strange. I've been building pretty regularly recently with daisy on
Ubuntu 12.04 without problems.

There have been issues with Linux Mint, x64 hosts, and host
installations of Mono, but I thought I had finally addressed those. It's
starting to feel a little like a game of whack-a-mole.

Can you provide me your local.conf and I'll have a look at what happens
here with your hashes for  bbb on a Fedora box.

Thanks,

Alex


