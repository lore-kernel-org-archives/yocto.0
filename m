Return-Path: <sstncr@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 40FA6E00B88; Wed, 21 May 2014 16:33:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.5 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU,FREEMAIL_FROM,RCVD_IN_DNSWL_LOW,RDNS_NONE autolearn=no
	version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (sstncr[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.50 listed in list.dnswl.org]
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
X-Greylist: delayed 1367 seconds by postgrey-1.32 at yocto-www;
	Wed, 21 May 2014 16:33:26 PDT
Received: from mail-wg0-f50.google.com (unknown [74.125.82.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D3B26E00B85
	for <yocto@yoctoproject.org>; Wed, 21 May 2014 16:33:26 -0700 (PDT)
Received: by mail-wg0-f50.google.com with SMTP id x12so2650577wgg.21
	for <yocto@yoctoproject.org>; Wed, 21 May 2014 16:33:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=eysq1zzXqQoXWZkw/TLSBSg92iiAWqrXzJ5OMAQhP8w=;
	b=YeoRp275bGRaDGRStdkJMcAeb9qh5mZAkRPlSg+KElgYF8rtodXtTdSii+9D6951k5
	bOc3aAdOrOvozoXlU1obEu6olHQ3yX7k2Q1oUtYKOjyIdKDzAv5gN9wJ0kwsZeXPGTEO
	97TAZ8Z3ilU+CJUnabmNTMhI3nXFP8NtcXaSeui1xsL4mQLVAFR2B9F8R56XqG8TcrC5
	uNaRmye0tkcWys8iL8olqAxR2seq4CArlp8Pt8qttVEIADk5EZmt1ZEteBEwtU9MyLVl
	XN+riNJwbPy+Z2yD17vJVE+m3pDNDI5pkBz3+AKIC/yCGkS8mtaHWIt0YrH6JkHXcgTT
	QcBA==
MIME-Version: 1.0
X-Received: by 10.180.80.232 with SMTP id u8mr13163856wix.13.1400713838563;
	Wed, 21 May 2014 16:10:38 -0700 (PDT)
Received: by 10.216.48.6 with HTTP; Wed, 21 May 2014 16:10:38 -0700 (PDT)
In-Reply-To: <537D0964.9090208@dynamicdevices.co.uk>
References: <CAAPegz1dWJAG0R_wVZs8_BtD4CO5YBk7=oT1V-ud40xzkTx+yw@mail.gmail.com>
	<537CF707.4060506@mlbassoc.com>
	<CAAPegz23RjycTjy0_81=PM2m47c-vJ+1vL75fO6LbfvJAoBX2w@mail.gmail.com>
	<537D0964.9090208@dynamicdevices.co.uk>
Date: Thu, 22 May 2014 02:10:38 +0300
Message-ID: <CANr+NRsnNeBtkJOB-EVNzsGWOOH6YG1cnw11FOcbo9V78-8vPg@mail.gmail.com>
From: Stefan Stanacar <sstncr@gmail.com>
To: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
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
X-List-Received-Date: Wed, 21 May 2014 23:33:34 -0000
Content-Type: text/plain; charset=UTF-8

On Wed, May 21, 2014 at 11:15 PM, Alex J Lennon
<ajlennon@dynamicdevices.co.uk> wrote:
>
> On 21/05/2014 20:07, Chris Morgan wrote:
>> On Wed, May 21, 2014 at 2:57 PM, Gary Thomas <gary@mlbassoc.com> wrote:
>>> On 2014-05-21 12:25, Chris Morgan wrote:
>>>> Hello.
>>>>
>>>> I'm trying to build core-image-mono for the bbb. Layers configuration:
>>>>
>>>> Build Configuration:
>>>> BB_VERSION        = "1.23.1"
>>>> BUILD_SYS         = "x86_64-linux"
>>>> NATIVELSBSTRING   = "Fedora-20"
>>>> TARGET_SYS        = "arm-poky-linux-gnueabi"
>>>> MACHINE           = "beaglebone"
>>>> DISTRO            = "poky"
>>>> DISTRO_VERSION    = "1.6+snapshot-20140521"
>>>> TUNE_FEATURES     = "arm armv7a vfp neon"
>>>> TARGET_FPU        = "vfp-neon"
>>>> meta              = "master:8293f564685d0f587ab63a107285625dc4f98f1c"
>>>> meta-bbb          = "master:8318556523a747b7e9c97326bef14922a154e8a2"
>>>> common-bsp        =
>>>> "(detachedfrome7dc54e):e7dc54e66f4b5c2982a30bef5c67d734e9c759f5"
>>>> meta-yocto
>>>> meta-yocto-bsp    = "master:8293f564685d0f587ab63a107285625dc4f98f1c"
>>>> meta-mono         = "master:e2d2b8a518403a255822022c9e15f116c91b5dd1"
>>>>
>>>> This is basically master of Poky and meta-mono.
>>>>
>>>>
>>>> | DEBUG: Executing shell function do_configure
>>>> | grep: configure.in: No such file or directory
>>>> |
>>>> /home/cmorgan/projects/yocto_poky/build/tmp/work/x86_64-linux/mono-native/3.4.0-r0/mono-3.4.0/autogen.sh:
>>>> line 125: mono/mini/Makefile.am: No such file or directory
>>>> |
>>>> /home/cmorgan/projects/yocto_poky/build/tmp/work/x86_64-linux/mono-native/3.4.0-r0/mono-3.4.0/autogen.sh:
>>>> line 126: mono/metadata/Makefile.am: No such file or directory
>>>> | Running aclocal -I m4 -I .  ...
>>>> | aclocal: error: 'configure.ac' is required
>>>> |
>>>> | **Error**: aclocal failed. This may mean that you have not
>>>> | installed all of the packages you need, or you may need to
>>>> | set ACLOCAL_FLAGS to include "-I $prefix/share/aclocal"
>>>> | for the prefix where you installed the packages whose
>>>> | macros were not found
>>>> | NOTE: mono-native failed to autogen.sh
>>>> | sed: can't read acinclude.m4: No such file or directory
>>>> | WARNING:
>>>> /home/cmorgan/projects/yocto_poky/build/tmp/work/x86_64-linux/mono-native/3.4.0-r0/temp/run.do_configure.24402:1
>>>> exit 2 from
>>>> |   sed -e "s|slash\}libtool|slash\}x86_64-linux-libtool|" -i acinclude.m4
>>>> | ERROR: Function failed: do_configure (log file is located at
>>>>
>>>> /home/cmorgan/projects/yocto_poky/build/tmp/work/x86_64-linux/mono-native/3.4.0-r0/temp/log.do_configure.24402)
>>>> ERROR: Task 687
>>>>
>>>> (/home/cmorgan/projects/yocto_poky/meta-mono/recipes-mono/mono/mono-native_3.4.0.bb,
>>>> do_configure) failed with exit code '1'
>>>>
>>>>
>>>> It looks like the issue is due to autogen.sh assuming several files
>>>> are located in the current working directory, for instance on lines
>>>> 102, 129 and 130 of autogen.sh there is no use of the $srcdir variable
>>>> before files like configure.in or mono/metadata/Makefile.am.in etc.
>>>>
>>>> Not sure if something has changed on the yocto side to change this
>>>> assumption about where autogen.sh is being run from.
>>>
>>> Look at your recipe(s).  The simple way to fix this is to change
>>> 'inherit autotools' to 'inherit autotools-brokensep'
>>>
>>> You could also look at the recipe more deeply and figure out
>>> where it assumes that ${S} == ${B} because of a recent change
>>> in OE-core, this is no longer true when you inherit autotools.
>>>
>> Testing now with autotools-brokensep in mono-3.4.0.inc.
>>
>> I did look a bit and it looked like there were several places where
>> source and build were assumed but I'm not confident that it would be
>> easy to figure out what to fix and then create a patch for it but I
>> could look at that and feeding it back to the mono guys. Let me do
>> that and see how I make out.
>>
>> Chris
>
> Strange. I've been building pretty regularly recently with daisy on
> Ubuntu 12.04 without problems.
>
> There have been issues with Linux Mint, x64 hosts, and host
> installations of Mono, but I thought I had finally addressed those. It's
> starting to feel a little like a game of whack-a-mole.
>
> Can you provide me your local.conf and I'll have a look at what happens
> here with your hashes for  bbb on a Fedora box.
>


The reason you don't see this is because you are building on daisy,
but Chris is building on master. I doubt it it has something to do
with the host distro.
Specifically master enables separate build dir by default in
autotools.bbclass whereas daisy doesn't.

Daisy has these:
http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?h=daisy&id=bf33e93f162c9fbba079b4de01c35dcb367c0577
http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?h=daisy&id=069de520ec864fc78084e8f1ddfb20edaab55f5e

which enable only the core recipes and then marks the broken ones, but
master has one more:

http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=69b6eaca3d9b635e8a61a0fdbd814b558e91901d


which breaks other layers with recipes that don't work with B!=S and
they should either get fixed or use autotools-brokensep, so I guess
Chris's patch is the way to go for now...

Cheers,
Stefan


> Thanks,
>
> Alex
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

