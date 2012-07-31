Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4C22BE0034A
	for <yocto@yoctoproject.org>; Tue, 31 Jul 2012 04:53:13 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 000A7F81221; Tue, 31 Jul 2012 05:53:12 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 6CCBCF8120A;
	Tue, 31 Jul 2012 05:53:11 -0600 (MDT)
Message-ID: <5017C728.6030102@mlbassoc.com>
Date: Tue, 31 Jul 2012 05:53:12 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:14.0) Gecko/20120714 Thunderbird/14.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <5016960E.9060305@gmail.com> <5016985D.7010805@mlbassoc.com>
	<5016BB44.8070202@gmail.com> <5016BD14.1020807@mlbassoc.com>
	<5016BFC4.8060307@gmail.com> <5016C18B.60200@mlbassoc.com>
	<5016D732.3000305@gmail.com> <5016DC74.4040204@mlbassoc.com>
	<5017C0BB.7050304@mlbassoc.com> <5017C5D6.5080603@gmail.com>
	<20120731114935.GU3261@jama.jama.net>
In-Reply-To: <20120731114935.GU3261@jama.jama.net>
Subject: Re: build error pandaboard on master
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
X-List-Received-Date: Tue, 31 Jul 2012 11:53:13 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2012-07-31 05:49, Martin Jansa wrote:
> On Tue, Jul 31, 2012 at 07:47:34AM -0400, Jim Abernathy wrote:
>> On 07/31/2012 07:25 AM, Gary Thomas wrote:
>>> On 2012-07-30 13:11, Gary Thomas wrote:
>>>> On 2012-07-30 12:49, Jim Abernathy wrote:
>>>>> On 07/30/2012 01:16 PM, Gary Thomas wrote:
>>>>>> On 2012-07-30 11:09, Jim Abernathy wrote:
>>>>>>> On 07/30/2012 12:57 PM, Gary Thomas wrote:
>>>>>>>> On 2012-07-30 10:50, Jim Abernathy wrote:
>>>>>>>>> On 07/30/2012 10:21 AM, Gary Thomas wrote:
>>>>>>>>>> On 2012-07-30 08:11, Jim Abernathy wrote:
>>>>>>>>>>> On 07/30/2012 09:56 AM, Gary Thomas wrote:
>>>>>>>>>>>> On 2012-07-30 07:48, Jim Abernathy wrote:
>>>>>>>>>>>>> On 07/30/2012 09:15 AM, Gary Thomas wrote:
>>>>>>>>>>>>>> On 2012-07-30 06:53, Jim Abernathy wrote:
>>>>>>>>>>>>>>> I'm on master branch trying to build core-image-minimal
>>>>>>>>>>>>>>> for the machine "pandaboard". Besides the basics, I put in
>>>>>>>>>>>>>>> a license statement for cloud9 into local.conf.
>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>> My bblayer.conf is as follows:
>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>> # LAYER_CONF_VERSION is increased each time
>>>>>>>>>>>>>>> build/conf/bblayers.conf
>>>>>>>>>>>>>>> # changes incompatibly
>>>>>>>>>>>>>>> LCONF_VERSION = "5"
>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>> BBPATH = "${TOPDIR}"
>>>>>>>>>>>>>>> BBFILES ?= ""
>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>> BBLAYERS ?= " \
>>>>>>>>>>>>>>>     /home/jim/poky/meta \
>>>>>>>>>>>>>>>     /home/jim/poky/meta-yocto \
>>>>>>>>>>>>>>>     /home/jim/meta-openembedded/meta-oe \
>>>>>>>>>>>>>>>     /home/jim/meta-ti \
>>>>>>>>>>>>>>>     "
>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>> The error I'm getting is:
>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>> ERROR: ParseError at
>>>>>>>>>>>>>>> /home/jim/meta-ti/recipes-misc/payload/bonescript.bb:5:
>>>>>>>>>>>>>>> Could not inherit file classes/systemd.bbclass
>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>> Build Configuration:
>>>>>>>>>>>>>>> BB_VERSION        = "1.15.3"
>>>>>>>>>>>>>>> TARGET_ARCH       = "arm"
>>>>>>>>>>>>>>> TARGET_OS         = "linux-gnueabi"
>>>>>>>>>>>>>>> MACHINE           = "pandaboard"
>>>>>>>>>>>>>>> DISTRO            = "poky"
>>>>>>>>>>>>>>> DISTRO_VERSION    = "1.2+snapshot-20120730"
>>>>>>>>>>>>>>> TUNE_FEATURES     = "armv7a vfp neon cortexa9"
>>>>>>>>>>>>>>> TARGET_FPU        = "vfp-neon"
>>>>>>>>>>>>>>> meta
>>>>>>>>>>>>>>> meta-yocto        =
>>>>>>>>>>>>>>> "master:7411158e1f980cd71c432026fa2f68ab80e3541e"
>>>>>>>>>>>>>>> meta-oe           =
>>>>>>>>>>>>>>> "master:9afc488a1b97bfc5378f139ba04a7a5297b15fdb"
>>>>>>>>>>>>>>> meta-ti           =
>>>>>>>>>>>>>>> "master:9bc77dff5f84578e259f8225bfa0656d94a2a60a"
>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>> ERROR: Nothing PROVIDES 'pseudo-native'
>>>>>>>>>>>>>>
>>>>>>>>>>>>>> Try adding this in local.conf:
>>>>>>>>>>>>>>    BBMASK ?= ".*/meta-ti/recipes-(misc|bsp/formfactor)/"
>>>>>>>>>>>>>>
>>>>>>>>>>>>> BBMASK by itself didn't solve my particular problem. I'll
>>>>>>>>>>>>> try the other suggestions and report back.
>>>>>>>>>>>>
>>>>>>>>>>>> What other problem do you have?  That BBMASK should keep
>>>>>>>>>>>> bitbake from
>>>>>>>>>>>> trying to parse the recipe mentioned above.
>>>>>>>>>>>>
>>>>>>>>>>>> Note: I use these layers with Yocto all the time with that
>>>>>>>>>>>> mask...
>>>>>>>>>>>>
>>>>>>>>>>>
>>>>>>>>>>> When I just used the statement:
>>>>>>>>>>>
>>>>>>>>>>> BBMASK ?= ".*/meta-ti/recipes-(misc|bsp/formfactor)/"
>>>>>>>>>>>
>>>>>>>>>>> I got the same error as my original post.
>>>>>>>>>>
>>>>>>>>>> The only way you could get that same error is if you already
>>>>>>>>>> have a BBMASK
>>>>>>>>>> statement somewhere and this one is being ignored because of
>>>>>>>>>> the ?= assignment.
>>>>>>>>>>
>>>>>>>>> So I started with a clean build again. This time I only added
>>>>>>>>> the BBMASK statement you suggested.  I got the following error:
>>>>>>>>>
>>>>>>>>> ERROR: No recipes available for:
>>>>>>>>> /home/jim/meta-openembedded/meta-systemd/meta-gnome/recipes-gnome/gdm/gdm_2.32.2.bbappend
>>>>>>>>>
>>>>>>>>> /home/jim/meta-openembedded/meta-systemd/meta-efl/recipes-efl/efl/elsa_svn.bbappend
>>>>>>>>>
>>>>>>>>> ERROR: Command execution failed: Exited with 1
>>>>>>>>>
>>>>>>>>> I'm guessing the BBMASK needs to call out
>>>>>>>>> meta-openembedded/meta-systemd/meta-gnome and meta-efl?
>>>>>>>>
>>>>>>>> Or don't include those layers - meta-systemd isn't needed by your
>>>>>>>> yocto build.
>>>>>>>>
>>>>>>> Thanks, that makes more sense now.  I removed the layer
>>>>>>> meta-systemd from bblayers.conf and used the
>>>>>>>
>>>>>>> BBMASK ?= ".*/meta-ti/recipes-(misc|bsp/formfactor)/"
>>>>>>>
>>>>>>> statement in local.conf to solves the problem.
>>>>>>>
>>>>>>> What is really causing the problem?  Without it dependencies on
>>>>>>> meta-systemd are there, but the mask removes that??  Why can you
>>>>>>> remove a dependency?
>>>>>>
>>>>>> The dependency on systemd comes from this recipe:
>>>>>> meta-ti/recipes-misc/payload/bonescript.bb
>>>>>> The BBMASK is making bitbake ignore that recipe (you don't need
>>>>>> it), hence no dependency.
>>>>>>
>>>>> I got core-image-minimal built without errors, Thanks, now I need to
>>>>> ask some questions about booting that image.  I'm assuming that I
>>>>> can follow the instructions on pandaboard.org
>>>>> for creating the SD card format and just copy the deploy/image/
>>>>> u-boot, MLO, uImage, and rootfs to the right places and boot the
>>>>> sdcard in the pandaboard. Anyway, that's what I
>>>>> tried.  I'm connected to the panadboard via serial port and the
>>>>> U-Boot works and the uImage seems to be found, but I don't get a
>>>>> login console on the serial port:
>>>>>
>>>>> U-Boot SPL 2011.12-dirty (Jul 30 2012 - 13:44:03)
>>>>> Texas Instruments OMAP4430 ES2.1
>>>>> OMAP SD/MMC: 0
>>>>> reading u-boot.img
>>>>> reading u-boot.img
>>>>>
>>>>>
>>>>> U-Boot 2011.12-dirty (Jul 30 2012 - 13:44:03)
>>>>>
>>>>> CPU  : OMAP4430 ES2.1
>>>>> Board: OMAP4 Panda
>>>>> I2C:   ready
>>>>> DRAM:  1 GiB
>>>>> MMC:   OMAP SD/MMC: 0
>>>>> Using default environment
>>>>>
>>>>> In:    serial
>>>>> Out:   serial
>>>>> Err:   serial
>>>>> Hit any key to stop autoboot:  0
>>>>> reading boot.scr
>>>>>
>>>>> ** Unable to read "boot.scr" from mmc 0:1 **
>>>>> reading uImage
>>>>>
>>>>> 4176404 bytes read
>>>>> Booting from mmc0 ...
>>>>> ## Booting kernel from Legacy Image at 82000000 ...
>>>>>      Image Name:   Linux-3.1.0
>>>>>      Image Type:   ARM Linux Kernel Image (uncompressed)
>>>>>      Data Size:    4176340 Bytes = 4 MiB
>>>>>      Load Address: 80008000
>>>>>      Entry Point:  80008000
>>>>>      Verifying Checksum ... OK
>>>>>      Loading Kernel Image ... OK
>>>>> OK
>>>>>
>>>>> Starting kernel ...
>>>>>
>>>>> Uncompressing Linux... done, booting the kernel.
>>>>
>>>> Start with the obvious - check the bootparams in U-Boot.  Break into
>>>> the boot process and run the 'printenv' command.  What's the value of
>>>> the "console" variable?
>>>>
>>>> n.b. I've not tried this exact setup on the PandaBoard.  I may have time
>>>> later today to do so.
>>>>
>>>
>>> I've just verified that this does fail when using yocto:master I'm pretty
>>> sure that the problem is related to the use of GCC 4.7.1 - I've had
>>> similar
>>> problems with ARM kernels & GCC 4.7.1 in the past.
>>>
>>> I did build yocto:denzil for the PandaBoard and it comes up and mostly
>>> works.
>>> I've not done extensive checking on this image though.
>> This problem that I have on denzil with pandaboard is I get the
>> following error:
>>
>> ERROR: ParseError at
>> /home/jim/meta-openembedded/meta-oe/recipes-navigation/gpsd/gpsd_git.bb:28:
>> Could not inherit file classes/pythonnative.bbclass
>> ERROR: Command execution failed: Traceback (most recent call last):
>>     File "/home/jim/poky/bitbake/lib/bb/command.py", line 84, in
>> runAsyncCommand
>>       self.cooker.updateCache()
>>     File "/home/jim/poky/bitbake/lib/bb/cooker.py", line 1202, in updateCache
>>       if not self.parser.parse_next():
>>     File "/home/jim/poky/bitbake/lib/bb/cooker.py", line 1669, in parse_next
>>       self.virtuals += len(result)
>> UnboundLocalError: local variable 'result' referenced before assignment
>>
>> Summary: There were 2 ERROR messages shown, returning a non-zero exit code.
>>
>> I already have a BBMASK statement in local.conf:
>>
>> BBMASK ?= ".*/meta-ti/recipes-(misc|bsp/formfactor)/"
>>
>> I'm not sure how I add a second statement like:
>>
>> BBMASK ?= ".*/meta-openembedded/meta-oe//recipes-navigation/"
>>
>> Do I use += in both or what???
>
> use meta-oe denzil branch if you have oe-core denzil branch

Or leave out the meta-oe layer since it's not needed for yocto core images.
I did not have that layer in any of my builds.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

