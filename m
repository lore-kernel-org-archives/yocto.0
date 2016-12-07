Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D5ECEE00D1C; Wed,  7 Dec 2016 07:23:45 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.210.195 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wj0-f195.google.com (mail-wj0-f195.google.com
	[209.85.210.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 37942E00CEA
	for <yocto@yoctoproject.org>; Wed,  7 Dec 2016 07:23:43 -0800 (PST)
Received: by mail-wj0-f195.google.com with SMTP id kp2so50432612wjc.0
	for <yocto@yoctoproject.org>; Wed, 07 Dec 2016 07:23:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=VNuOtY9AwegDGwhd8p9S8CTGPp8MJXhcVqi+WIxWwRs=;
	b=wrIRgGRMcxY1K+gB5rKxUkDBlhckXSHs5qZPE8WOJPtffQyllFKP2QvM4dZom9yOlB
	tyGC2sbuiilnZ8Gqqr2IbeMBiiMfXAkEYi2ztxoU66wSagB3i/BJhVBlVw/nKEETOFHF
	ZillapEwZCUHxKvzb1uLf05EvtuG3mjH7+zCIfe7V8RqOi9R41pf6B1J7JsVslznXtHa
	qytv+9Q88sx8e646nK5U4TWfQ6kLNdeIYzFvaJAhdQzBNR6r0/78uZ1/nYOjnpoPArbX
	7RiDtgZlvJ/33jKTa6pwboYRJtTYUPLaMD71sd4RDZ1bBftJr+K2y6Ln3TIsYxHMNTuE
	j5gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=VNuOtY9AwegDGwhd8p9S8CTGPp8MJXhcVqi+WIxWwRs=;
	b=GaDuj6Ggw7NzEykdDTmEuCGMAqImfiwhIXg+W+PSETEqG54riT+P6kHejeLWdudrdV
	BIDl58joDRq0wMiz0OlJ8715jlyIPWYTC6Xs7AoJyabQ6TBAKq9HnKDGBROLULdO+HGH
	+8zRELz3VQZsvcs4WYydNuTj5Vv5GfNAXdjHgbK5Z992oEOuZZJLLcYz7O+w3nqe4Kwi
	CVzMLDYRr6jAl5VgYMnCWF4rktKnDrNkck4TIHigqoobs6f+/Ui8ysPrQ7IuNc+Jdck1
	F5MOdBiXw14YmUwF4RxJqRfoccOIJDL7htT3H28TaEeQFXxaFISb6NZzW1mvPL6ST/5o
	4aiA==
X-Gm-Message-State: AKaTC03dy1DxTD2bYqKKTlNqW4Mac5W+cEUCLz4OH5N7XKLgdHyn/QunFzLqktNQiGC0uYrjp5/TLFAd6Nsqbw==
X-Received: by 10.194.176.10 with SMTP id ce10mr31964001wjc.155.1481124222884; 
	Wed, 07 Dec 2016 07:23:42 -0800 (PST)
MIME-Version: 1.0
Received: by 10.28.210.203 with HTTP; Wed, 7 Dec 2016 07:23:02 -0800 (PST)
X-Originating-IP: [81.156.84.123]
In-Reply-To: <CAC+thW3268ZaeZ5NnD9x=L9gg_mtLHSU8jTdeAeLJeLr4O7_Mw@mail.gmail.com>
References: <19a9d76a-2c15-551a-2fce-55d8b8cfe1d0@mlbassoc.com>
	<20161203141606.2899e98c@nuc.betafive.co.uk>
	<CAK18fxFm3ttr1TJxw3+-PJD0A8WMDb0SKMMq2cJxiOwuY7=H1A@mail.gmail.com>
	<9f5e8157-ba81-7486-d761-3fd0ec5de3f9@mlbassoc.com>
	<CAMKF1sq0U1G-c266eCNCGAdw=B0Dcv0dXF7LjG8G=yPd4dFBXg@mail.gmail.com>
	<CAK18fxHR-X12Hr0R2Ba8=UToVtvWmb979k9+eQi+6yqHvbUN2w@mail.gmail.com>
	<CAC+thW3268ZaeZ5NnD9x=L9gg_mtLHSU8jTdeAeLJeLr4O7_Mw@mail.gmail.com>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Wed, 7 Dec 2016 15:23:02 +0000
Message-ID: <CAK18fxGyvvUoL1rVr0J8mzU50hTFtbmUHk_ACdChbdtn8P=nvg@mail.gmail.com>
To: Andrea Galbusera <gizero@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Gary Thomas <gary@mlbassoc.com>
Subject: Re: [meta-raspberrypi] Current master broken
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
X-List-Received-Date: Wed, 07 Dec 2016 15:23:45 -0000
Content-Type: text/plain; charset=UTF-8

On Wed, Dec 7, 2016 at 3:19 PM, Andrea Galbusera <gizero@gmail.com> wrote:
> On Tue, Dec 6, 2016 at 4:29 PM, Andrei Gherzan <andrei@gherzan.ro> wrote:
>>
>> On Mon, Dec 5, 2016 at 4:50 PM, Khem Raj <raj.khem@gmail.com> wrote:
>> > On Sun, Dec 4, 2016 at 10:03 PM, Gary Thomas <gary@mlbassoc.com> wrote:
>> >> On 2016-12-05 01:54, Andrei Gherzan wrote:
>> >>>
>> >>> Hi Gary,
>> >>>
>> >>>
>> >>> On Sat, Dec 3, 2016 at 2:16 PM, Paul Barker <paul@paulbarker.me.uk>
>> >>> wrote:
>> >>>>
>> >>>> On Sat, 3 Dec 2016 08:33:40 +0100
>> >>>> Gary Thomas <gary@mlbassoc.com> wrote:
>> >>>>
>> >>>>> I'm currently unable to build for the RaspberryPi-3 using the master
>> >>>>> branch:
>> >>>>>
>> >>>>> Build Configuration:
>> >>>>> BB_VERSION        = "1.32.0"
>> >>>>> BUILD_SYS         = "x86_64-linux"
>> >>>>> NATIVELSBSTRING   = "universal"
>> >>>>> TARGET_SYS        = "arm-amltd-linux-gnueabi"
>> >>>>> MACHINE           = "raspberrypi3"
>> >>>>> DISTRO            = "amltd"
>> >>>>> DISTRO_VERSION    = "2.2+snapshot-20161202"
>> >>>>> TUNE_FEATURES     = "arm armv7ve vfp thumb neon vfpv4
>> >>>>> callconvention-hard cortexa7"
>> >>>>> TARGET_FPU        = "hard"
>> >>>>> meta              =
>> >>>>> "master:9e63f81c78e284c9b325fe04a1b59e61c7ad8a1a"
>> >>>>> meta-amltd        =
>> >>>>> "master:074120ab3a82cea0ac50d4e9eec89130a860a4fa"
>> >>>>> meta-raspberrypi  =
>> >>>>> "master:44d41bf3e94c4c8fe5ad5a3650572c8d17ef36c9"
>> >>>>>
>> >>>>> Initialising tasks: 100%
>> >>>>> |#############################################################|
>> >>>>> Time:
>> >>>>> 0:00:00
>> >>>>> Checking sstate mirror object availability: 100%
>> >>>>> |#####################################| Time: 0:00:00
>> >>>>> NOTE: Executing SetScene Tasks
>> >>>>> NOTE: Executing RunQueue Tasks
>> >>>>> ERROR: linux-raspberrypi-1_4.4.28+gitAUTOINC+5afda48c34-r0
>> >>>>> do_kernel_metadata: Function failed: do_kernel_metadata (log
>> >>>>> file is located at
>> >>>>>
>> >>>>>
>> >>>>> /build/rpi3_2016-09-13/tmp/work/raspberrypi3-amltd-linux-gnueabi/linux-raspberrypi/1_4.4.28+gitAUTOINC+5afda48c34-r0/temp/log.do_kernel_metadata.5647)
>> >>>>> ERROR: Logfile of failure stored in:
>> >>>>>
>> >>>>>
>> >>>>> /build/rpi3_2016-09-13/tmp/work/raspberrypi3-amltd-linux-gnueabi/linux-raspberrypi/1_4.4.28+gitAUTOINC+5afda48c34-r0/temp/log.do_kernel_metadata.5647
>> >>>>> Log data follows:
>> >>>>> | DEBUG: Executing shell function do_kernel_metadata
>> >>>>> | [ERROR]: processing of file /tmp/tmp.bXPr8PVPz3 failed
>> >>>>> |
>> >>>>>
>> >>>>> /build/rpi3_2016-09-13/tmp/sysroots/x86_64-linux/usr/bin/scc-cmds/patch.cmd:
>> >>>>> line 29: : No such file or directory
>> >>>>> |
>> >>>>> | Context around the error is:
>> >>>>> |
>> >>>>> |     #
>> >>>>> |     prefix
>> >>>>>
>> >>>>> /local/poky-cutting-edge/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi/
>> >>>>> |     kconf non-hardware
>> >>>>>
>> >>>>> /local/poky-cutting-edge/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi/defconfig
>> >>>>> |     prefix
>> >>>>>
>> >>>>> /local/poky-cutting-edge/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi-4.4/
>> >>>>> |     patch
>> >>>>>
>> >>>>> "/local/poky-cutting-edge/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi-4.4/0001-fix-dtbo-rules.patch"
>> >>>>> |     # run time: 0 seconds
>> >>>>> |     # processed files:
>> >>>>> |     # _cfg
>> >>>>>
>> >>>>> /local/poky-cutting-edge/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi/defconfig
>> >>>>> |     # _cfg
>> >>>>>
>> >>>>> /local/poky-cutting-edge/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi-4.4/0001-fix-dtbo-rules.patch
>> >>>>> |
>> >>>>> | See pre-processed file /tmp/tmp.bXPr8PVPz3 for more details
>> >>>>> | #
>> >>>>> | # scc v0.8
>> >>>>> | # processed: Fri Dec  2 04:12:25 CET 2016
>> >>>>> | #
>> >>>>> | # This is a scc output file, do not edit
>> >>>>> | #
>> >>>>> | [ERROR]: processing of file /tmp/tmp.eTLAT789Q2 failed
>> >>>>> | # _reloc_dir
>> >>>>> /local/poky-cutting-edge/meta-raspberrypi/recipes-kernel/linux
>> >>>>> | # _reloc_dir
>> >>>>> /local/poky-cutting-edge/meta-raspberrypi/recipes-kernel/linux
>> >>>>> |
>> >>>>>
>> >>>>> /build/rpi3_2016-09-13/tmp/sysroots/x86_64-linux/usr/bin/scc-cmds/patch.cmd:
>> >>>>> line 29: : No such file or directory
>> >>>>> |
>> >>>>> | Context around the error is:
>> >>>>> |
>> >>>>> |     #
>> >>>>> |     prefix
>> >>>>>
>> >>>>> /local/poky-cutting-edge/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi/
>> >>>>> |     kconf non-hardware
>> >>>>>
>> >>>>> /local/poky-cutting-edge/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi/defconfig
>> >>>>> |     prefix
>> >>>>>
>> >>>>> /local/poky-cutting-edge/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi-4.4/
>> >>>>> |     patch
>> >>>>>
>> >>>>> "/local/poky-cutting-edge/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi-4.4/0001-fix-dtbo-rules.patch"
>> >>>>> |     # run time: 1 seconds
>> >>>>> |     # processed files:
>> >>>>> |     # _cfg
>> >>>>>
>> >>>>> /local/poky-cutting-edge/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi/defconfig
>> >>>>> |     # _cfg
>> >>>>>
>> >>>>> /local/poky-cutting-edge/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi-4.4/0001-fix-dtbo-rules.patch
>> >>>>> |
>> >>>>> | See pre-processed file /tmp/tmp.eTLAT789Q2 for more details
>> >>>>> | WARNING: exit code 1 from a shell command.
>> >>>>> | ERROR: Function failed: do_kernel_metadata (log file is located at
>> >>>>>
>> >>>>>
>> >>>>> /build/rpi3_2016-09-13/tmp/work/raspberrypi3-amltd-linux-gnueabi/linux-raspberrypi/1_4.4.28+gitAUTOINC+5afda48c34-r0/temp/log.do_kernel_metadata.5647)
>> >>>>> ERROR: Task
>> >>>>>
>> >>>>> (/local/poky-cutting-edge/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi_4.4.bb:do_kernel_metadata)
>> >>>>> failed with exit code '1'
>> >>>>>
>> >>>>> I also tried kernel version 4.7:
>> >>>>> ERROR: linux-raspberrypi-1_4.7.7+gitAUTOINC+a45a35c085-r0 do_fetch:
>> >>>>> Fetcher failure: Unable to find revision
>> >>>>> a45a35c08598b23f9fd82e49c83b46c7d536244f in branch rpi-4.7.y even
>> >>>>> from
>> >>>>> upstream
>> >>>>> ERROR: linux-raspberrypi-1_4.7.7+gitAUTOINC+a45a35c085-r0 do_fetch:
>> >>>>> Fetcher failure for URL:
>> >>>>>
>> >>>>> 'git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-4.7.y'.
>> >>>>> Unable to fetch URL from any source.
>> >>>>> ERROR: linux-raspberrypi-1_4.7.7+gitAUTOINC+a45a35c085-r0 do_fetch:
>> >>>>> Function failed: base_do_fetch
>> >>>>> ERROR: Logfile of failure stored in:
>> >>>>>
>> >>>>>
>> >>>>> /build/rpi3_2016-09-13/tmp/work/raspberrypi3-amltd-linux-gnueabi/linux-raspberrypi/1_4.7.7+gitAUTOINC+a45a35c085-r0/temp/log.do_fetch.6133
>> >>>>> ERROR: Task
>> >>>>>
>> >>>>> (/local/poky-cutting-edge/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi_4.7.bb:do_fetch)
>> >>>>> failed
>> >>>>> with exit code '1'
>> >>>>>
>> >>>>> I was able to build with 4.8, but X didn't come up :-(
>> >>>>>
>> >>>>> Any ideas?
>> >>>>>
>> >>>>> Note: I changed the 4.7 recipe to use a good revision (c2cbd9c611)
>> >>>>> but then I suffered the same problem installing the .dtbo patch :-(
>> >>>>>
>> >>>>
>> >>>> It looks like the following oe-core commit broke the build for
>> >>>> meta-raspberrypi:
>> >>>>
>> >>>>
>> >>>>
>> >>>> http://git.openembedded.org/openembedded-core/commit/?id=83d10e2acef936b1f38804988f10eafa48db36f9
>> >>>>
>> >>>> Applying the following patch from the oe-core mailing list fixes it
>> >>>> for
>> >>>> me:
>> >>>>
>> >>>>
>> >>>>
>> >>>> http://lists.openembedded.org/pipermail/openembedded-core/2016-December/129567.html
>> >>>>
>> >>>> I'm just going to apply that locally until it's merged into master.
>> >>>
>> >>>
>> >>> Does the referenced patch by Paul fix your issue here?
>> >>
>> >>
>> >> Yes, for version 4.4.x
>> >>
>> >> When I tried to build 4.7.x, I got these errors:
>> >>
>> >> ERROR: linux-raspberrypi-1_4.7.7+gitAUTOINC+c2cbd9c611-r0
>> >> do_kernel_version_sanity_check: Package Version
>> >> (4.7.7+gitAUTOINC+c2cbd9c611) does not match of kernel being built
>> >> (4.7.10).
>> >> Please update the PV variable to match the kernel source.
>> >> ERROR: linux-raspberrypi-1_4.7.7+gitAUTOINC+c2cbd9c611-r0
>> >> do_kernel_version_sanity_check: Function failed:
>> >> do_kernel_version_sanity_check (log file is located at
>> >>
>> >> /build/rpi3_2016-09-13/tmp/work/raspberrypi3-amltd-linux-gnueabi/linux-raspberrypi/1_4.7.7+gitAUTOINC+c2cbd9c611-r0/temp/log.do_kernel_version_sanity_check.2574)
>> >> ERROR: Logfile of failure stored in:
>> >>
>> >> /build/rpi3_2016-09-13/tmp/work/raspberrypi3-amltd-linux-gnueabi/linux-raspberrypi/1_4.7.7+gitAUTOINC+c2cbd9c611-r0/temp/log.do_kernel_version_sanity_check.2574
>> >> ERROR: Task
>> >>
>> >> (/local/poky-cutting-edge/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi_4.7.bb:do_kernel_version_sanity_check)
>> >> failed with exit code '1'
>> >
>> > Yeah there are changes in OE-Core master to catch kernel verison
>> > mismatches now and moreover rpi folks rebase the trees except 4.1 and
>> > 4.4 none of recipes may hold
>> > true with SRCREV after sometime, we should bring this to notice of rpi
>> > community if they could instead do merges instead of rebasing the
>> > trees we can keep those recipes
>> > locked to a given version, otherwise we are forced to move them as
>> > soon as the rebase is detected.
>>
>> I managed to hit this too. @Paul Is that patch coming to oe-core master
>> soon?
>
>
> It just landed in oe-core as commit
> 0fd7da7375f0dcc59b56791fd482de557507c04c a few hours ago and in yocto too as
> commit 80683aa4f8c01b1fab430554838906d3d4aeda10. FYI, without this fix, also
> kernel builds of other BSP layers like meta-altera were broken... those are
> back to green light now.

Happy days.


--
Andrei Gherzan

