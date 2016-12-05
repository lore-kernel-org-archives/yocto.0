Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6ED75E007AA; Mon,  5 Dec 2016 08:51:31 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.217.196 listed in dnsbl.sorbs.net]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.196 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ua0-f196.google.com (mail-ua0-f196.google.com
	[209.85.217.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E8C2FE00712
	for <yocto@yoctoproject.org>; Mon,  5 Dec 2016 08:51:28 -0800 (PST)
Received: by mail-ua0-f196.google.com with SMTP id 20so32594092uak.0
	for <yocto@yoctoproject.org>; Mon, 05 Dec 2016 08:51:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=GagCi/YEfS2YOzd0jpQ9VRWAATDZiCD7FKJ1jpe17+w=;
	b=XGIMLm/BxKuKrRo5oav6bDlANeVMgMnZpfgeeEy+ATfh4znNzcJO+qvuKmA5QeN4kt
	R/WFyIwwJwcHj2hAjjRU5hfzyS/U4idWNmH/RfYYoboOi8AHxggZMNLzHIWWdA4+NNFT
	i1JK0+U8t4fPeBkpB0xWvEvefdFP31rvuRsL8c4XtawbIwTVnVMVxQI6wSYHR/nyZgBD
	8hMxugabQgECYSeORIhQlwPY63D6xmR+elyUxhGpSK8GY6DIWIDkPZiwpi2neS881Tpt
	dMyQ5pZio0m+aqRgOs01Ry4Sc3OK1G6TsrzoL6w6oxpwSyHojujz5XnbGmVrhOfPt3m2
	0PzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=GagCi/YEfS2YOzd0jpQ9VRWAATDZiCD7FKJ1jpe17+w=;
	b=O/HsIy8Gu2gS/9SXuamygM9+0JHUq+Dmh+MXSpcipzM4fq+CNjCUxwEgbVPnmxENLx
	JYOS9m37BGdwzAV3a9135/30isJg/IbiDANtVl09a9+fMRWEjd2D9pddbI0wCdTJppxF
	bi04jpteDJ6Ws0quiV4H0+UMVtV0WlJo/+AJznCcH0tW1G2t3kiNZEnSXW2b5hwesIVl
	kN554OkSpIqHzOrjROSY/fNulN9ORLFMNoGSWPYIE60G+1ZPG3JtQZBi4toSkIuzkBiD
	ApbR+Q3Aa44W9AsPF8etZqY2r5X77AJd4nQhLTZqk2eEenq/1bkgcDvmnCi10Tv92mgG
	+yAQ==
X-Gm-Message-State: AKaTC03PJlPBVn5VHGq4vLqkpB9ZVFM3GgpPom1kSvghMZtFApcr306/GLNrjDvyrh7O9mCFOV5Ra+azw506vw==
X-Received: by 10.176.0.180 with SMTP id 49mr44579553uaj.32.1480956687710;
	Mon, 05 Dec 2016 08:51:27 -0800 (PST)
MIME-Version: 1.0
Received: by 10.159.48.87 with HTTP; Mon, 5 Dec 2016 08:50:57 -0800 (PST)
In-Reply-To: <9f5e8157-ba81-7486-d761-3fd0ec5de3f9@mlbassoc.com>
References: <19a9d76a-2c15-551a-2fce-55d8b8cfe1d0@mlbassoc.com>
	<20161203141606.2899e98c@nuc.betafive.co.uk>
	<CAK18fxFm3ttr1TJxw3+-PJD0A8WMDb0SKMMq2cJxiOwuY7=H1A@mail.gmail.com>
	<9f5e8157-ba81-7486-d761-3fd0ec5de3f9@mlbassoc.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 5 Dec 2016 08:50:57 -0800
Message-ID: <CAMKF1sq0U1G-c266eCNCGAdw=B0Dcv0dXF7LjG8G=yPd4dFBXg@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
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
X-List-Received-Date: Mon, 05 Dec 2016 16:51:31 -0000
Content-Type: text/plain; charset=UTF-8

On Sun, Dec 4, 2016 at 10:03 PM, Gary Thomas <gary@mlbassoc.com> wrote:
> On 2016-12-05 01:54, Andrei Gherzan wrote:
>>
>> Hi Gary,
>>
>>
>> On Sat, Dec 3, 2016 at 2:16 PM, Paul Barker <paul@paulbarker.me.uk> wrote:
>>>
>>> On Sat, 3 Dec 2016 08:33:40 +0100
>>> Gary Thomas <gary@mlbassoc.com> wrote:
>>>
>>>> I'm currently unable to build for the RaspberryPi-3 using the master
>>>> branch:
>>>>
>>>> Build Configuration:
>>>> BB_VERSION        = "1.32.0"
>>>> BUILD_SYS         = "x86_64-linux"
>>>> NATIVELSBSTRING   = "universal"
>>>> TARGET_SYS        = "arm-amltd-linux-gnueabi"
>>>> MACHINE           = "raspberrypi3"
>>>> DISTRO            = "amltd"
>>>> DISTRO_VERSION    = "2.2+snapshot-20161202"
>>>> TUNE_FEATURES     = "arm armv7ve vfp thumb neon vfpv4
>>>> callconvention-hard cortexa7"
>>>> TARGET_FPU        = "hard"
>>>> meta              = "master:9e63f81c78e284c9b325fe04a1b59e61c7ad8a1a"
>>>> meta-amltd        = "master:074120ab3a82cea0ac50d4e9eec89130a860a4fa"
>>>> meta-raspberrypi  = "master:44d41bf3e94c4c8fe5ad5a3650572c8d17ef36c9"
>>>>
>>>> Initialising tasks: 100%
>>>> |#############################################################| Time:
>>>> 0:00:00
>>>> Checking sstate mirror object availability: 100%
>>>> |#####################################| Time: 0:00:00
>>>> NOTE: Executing SetScene Tasks
>>>> NOTE: Executing RunQueue Tasks
>>>> ERROR: linux-raspberrypi-1_4.4.28+gitAUTOINC+5afda48c34-r0
>>>> do_kernel_metadata: Function failed: do_kernel_metadata (log
>>>> file is located at
>>>>
>>>> /build/rpi3_2016-09-13/tmp/work/raspberrypi3-amltd-linux-gnueabi/linux-raspberrypi/1_4.4.28+gitAUTOINC+5afda48c34-r0/temp/log.do_kernel_metadata.5647)
>>>> ERROR: Logfile of failure stored in:
>>>>
>>>> /build/rpi3_2016-09-13/tmp/work/raspberrypi3-amltd-linux-gnueabi/linux-raspberrypi/1_4.4.28+gitAUTOINC+5afda48c34-r0/temp/log.do_kernel_metadata.5647
>>>> Log data follows:
>>>> | DEBUG: Executing shell function do_kernel_metadata
>>>> | [ERROR]: processing of file /tmp/tmp.bXPr8PVPz3 failed
>>>> |
>>>> /build/rpi3_2016-09-13/tmp/sysroots/x86_64-linux/usr/bin/scc-cmds/patch.cmd:
>>>> line 29: : No such file or directory
>>>> |
>>>> | Context around the error is:
>>>> |
>>>> |     #
>>>> |     prefix
>>>> /local/poky-cutting-edge/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi/
>>>> |     kconf non-hardware
>>>> /local/poky-cutting-edge/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi/defconfig
>>>> |     prefix
>>>> /local/poky-cutting-edge/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi-4.4/
>>>> |     patch
>>>> "/local/poky-cutting-edge/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi-4.4/0001-fix-dtbo-rules.patch"
>>>> |     # run time: 0 seconds
>>>> |     # processed files:
>>>> |     # _cfg
>>>> /local/poky-cutting-edge/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi/defconfig
>>>> |     # _cfg
>>>> /local/poky-cutting-edge/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi-4.4/0001-fix-dtbo-rules.patch
>>>> |
>>>> | See pre-processed file /tmp/tmp.bXPr8PVPz3 for more details
>>>> | #
>>>> | # scc v0.8
>>>> | # processed: Fri Dec  2 04:12:25 CET 2016
>>>> | #
>>>> | # This is a scc output file, do not edit
>>>> | #
>>>> | [ERROR]: processing of file /tmp/tmp.eTLAT789Q2 failed
>>>> | # _reloc_dir
>>>> /local/poky-cutting-edge/meta-raspberrypi/recipes-kernel/linux
>>>> | # _reloc_dir
>>>> /local/poky-cutting-edge/meta-raspberrypi/recipes-kernel/linux
>>>> |
>>>> /build/rpi3_2016-09-13/tmp/sysroots/x86_64-linux/usr/bin/scc-cmds/patch.cmd:
>>>> line 29: : No such file or directory
>>>> |
>>>> | Context around the error is:
>>>> |
>>>> |     #
>>>> |     prefix
>>>> /local/poky-cutting-edge/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi/
>>>> |     kconf non-hardware
>>>> /local/poky-cutting-edge/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi/defconfig
>>>> |     prefix
>>>> /local/poky-cutting-edge/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi-4.4/
>>>> |     patch
>>>> "/local/poky-cutting-edge/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi-4.4/0001-fix-dtbo-rules.patch"
>>>> |     # run time: 1 seconds
>>>> |     # processed files:
>>>> |     # _cfg
>>>> /local/poky-cutting-edge/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi/defconfig
>>>> |     # _cfg
>>>> /local/poky-cutting-edge/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi-4.4/0001-fix-dtbo-rules.patch
>>>> |
>>>> | See pre-processed file /tmp/tmp.eTLAT789Q2 for more details
>>>> | WARNING: exit code 1 from a shell command.
>>>> | ERROR: Function failed: do_kernel_metadata (log file is located at
>>>>
>>>> /build/rpi3_2016-09-13/tmp/work/raspberrypi3-amltd-linux-gnueabi/linux-raspberrypi/1_4.4.28+gitAUTOINC+5afda48c34-r0/temp/log.do_kernel_metadata.5647)
>>>> ERROR: Task
>>>> (/local/poky-cutting-edge/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi_4.4.bb:do_kernel_metadata)
>>>> failed with exit code '1'
>>>>
>>>> I also tried kernel version 4.7:
>>>> ERROR: linux-raspberrypi-1_4.7.7+gitAUTOINC+a45a35c085-r0 do_fetch:
>>>> Fetcher failure: Unable to find revision
>>>> a45a35c08598b23f9fd82e49c83b46c7d536244f in branch rpi-4.7.y even from
>>>> upstream
>>>> ERROR: linux-raspberrypi-1_4.7.7+gitAUTOINC+a45a35c085-r0 do_fetch:
>>>> Fetcher failure for URL:
>>>> 'git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-4.7.y'.
>>>> Unable to fetch URL from any source.
>>>> ERROR: linux-raspberrypi-1_4.7.7+gitAUTOINC+a45a35c085-r0 do_fetch:
>>>> Function failed: base_do_fetch
>>>> ERROR: Logfile of failure stored in:
>>>>
>>>> /build/rpi3_2016-09-13/tmp/work/raspberrypi3-amltd-linux-gnueabi/linux-raspberrypi/1_4.7.7+gitAUTOINC+a45a35c085-r0/temp/log.do_fetch.6133
>>>> ERROR: Task
>>>> (/local/poky-cutting-edge/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi_4.7.bb:do_fetch)
>>>> failed
>>>> with exit code '1'
>>>>
>>>> I was able to build with 4.8, but X didn't come up :-(
>>>>
>>>> Any ideas?
>>>>
>>>> Note: I changed the 4.7 recipe to use a good revision (c2cbd9c611)
>>>> but then I suffered the same problem installing the .dtbo patch :-(
>>>>
>>>
>>> It looks like the following oe-core commit broke the build for
>>> meta-raspberrypi:
>>>
>>>
>>> http://git.openembedded.org/openembedded-core/commit/?id=83d10e2acef936b1f38804988f10eafa48db36f9
>>>
>>> Applying the following patch from the oe-core mailing list fixes it for
>>> me:
>>>
>>>
>>> http://lists.openembedded.org/pipermail/openembedded-core/2016-December/129567.html
>>>
>>> I'm just going to apply that locally until it's merged into master.
>>
>>
>> Does the referenced patch by Paul fix your issue here?
>
>
> Yes, for version 4.4.x
>
> When I tried to build 4.7.x, I got these errors:
>
> ERROR: linux-raspberrypi-1_4.7.7+gitAUTOINC+c2cbd9c611-r0
> do_kernel_version_sanity_check: Package Version
> (4.7.7+gitAUTOINC+c2cbd9c611) does not match of kernel being built (4.7.10).
> Please update the PV variable to match the kernel source.
> ERROR: linux-raspberrypi-1_4.7.7+gitAUTOINC+c2cbd9c611-r0
> do_kernel_version_sanity_check: Function failed:
> do_kernel_version_sanity_check (log file is located at
> /build/rpi3_2016-09-13/tmp/work/raspberrypi3-amltd-linux-gnueabi/linux-raspberrypi/1_4.7.7+gitAUTOINC+c2cbd9c611-r0/temp/log.do_kernel_version_sanity_check.2574)
> ERROR: Logfile of failure stored in:
> /build/rpi3_2016-09-13/tmp/work/raspberrypi3-amltd-linux-gnueabi/linux-raspberrypi/1_4.7.7+gitAUTOINC+c2cbd9c611-r0/temp/log.do_kernel_version_sanity_check.2574
> ERROR: Task
> (/local/poky-cutting-edge/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi_4.7.bb:do_kernel_version_sanity_check)
> failed with exit code '1'

Yeah there are changes in OE-Core master to catch kernel verison
mismatches now and moreover rpi folks rebase the trees except 4.1 and
4.4 none of recipes may hold
true with SRCREV after sometime, we should bring this to notice of rpi
community if they could instead do merges instead of rebasing the
trees we can keep those recipes
locked to a given version, otherwise we are forced to move them as
soon as the rebase is detected.

>
> --
> ------------------------------------------------------------
> Gary Thomas                 |  Consulting for the
> MLB Associates              |    Embedded world
> ------------------------------------------------------------
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

