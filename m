Return-Path: <paul@paulbarker.me.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DE27AE00D96; Sat,  3 Dec 2016 07:34:16 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [178.32.228.179 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 3601 seconds by postgrey-1.32 at yocto-www;
	Sat, 03 Dec 2016 07:34:15 PST
Received: from mo179.mail-out.ovh.net (mo179.mail-out.ovh.net [178.32.228.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 825D2E00D8D
	for <yocto@yoctoproject.org>; Sat,  3 Dec 2016 07:34:15 -0800 (PST)
Received: from player792.ha.ovh.net (b7.ovh.net [213.186.33.57])
	by mo179.mail-out.ovh.net (Postfix) with ESMTP id 18A90E18B
	for <yocto@yoctoproject.org>; Sat,  3 Dec 2016 15:16:09 +0100 (CET)
Received: from nuc.betafive.co.uk
	(cpc11-shep11-2-0-cust130.8-3.cable.virginm.net [86.27.96.131])
	(Authenticated sender: paul@betafive.co.uk)
	by player792.ha.ovh.net (Postfix) with ESMTPSA id DDCD7A007A;
	Sat,  3 Dec 2016 15:16:07 +0100 (CET)
Date: Sat, 3 Dec 2016 14:16:06 +0000
From: Paul Barker <paul@paulbarker.me.uk>
To: Gary Thomas <gary@mlbassoc.com>
Message-ID: <20161203141606.2899e98c@nuc.betafive.co.uk>
In-Reply-To: <19a9d76a-2c15-551a-2fce-55d8b8cfe1d0@mlbassoc.com>
References: <19a9d76a-2c15-551a-2fce-55d8b8cfe1d0@mlbassoc.com>
X-Mailer: Claws Mail 3.11.1 (GTK+ 2.24.25; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-Ovh-Tracer-Id: 15251721616788982132
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrfeelfedrgeehgddviecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
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
X-List-Received-Date: Sat, 03 Dec 2016 15:34:16 -0000
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Sat, 3 Dec 2016 08:33:40 +0100
Gary Thomas <gary@mlbassoc.com> wrote:

> I'm currently unable to build for the RaspberryPi-3 using the master branch:
> 
> Build Configuration:
> BB_VERSION        = "1.32.0"
> BUILD_SYS         = "x86_64-linux"
> NATIVELSBSTRING   = "universal"
> TARGET_SYS        = "arm-amltd-linux-gnueabi"
> MACHINE           = "raspberrypi3"
> DISTRO            = "amltd"
> DISTRO_VERSION    = "2.2+snapshot-20161202"
> TUNE_FEATURES     = "arm armv7ve vfp thumb neon vfpv4 callconvention-hard cortexa7"
> TARGET_FPU        = "hard"
> meta              = "master:9e63f81c78e284c9b325fe04a1b59e61c7ad8a1a"
> meta-amltd        = "master:074120ab3a82cea0ac50d4e9eec89130a860a4fa"
> meta-raspberrypi  = "master:44d41bf3e94c4c8fe5ad5a3650572c8d17ef36c9"
> 
> Initialising tasks: 100% |#############################################################| Time: 0:00:00
> Checking sstate mirror object availability: 100% |#####################################| Time: 0:00:00
> NOTE: Executing SetScene Tasks
> NOTE: Executing RunQueue Tasks
> ERROR: linux-raspberrypi-1_4.4.28+gitAUTOINC+5afda48c34-r0 do_kernel_metadata: Function failed: do_kernel_metadata (log 
> file is located at 
> /build/rpi3_2016-09-13/tmp/work/raspberrypi3-amltd-linux-gnueabi/linux-raspberrypi/1_4.4.28+gitAUTOINC+5afda48c34-r0/temp/log.do_kernel_metadata.5647)
> ERROR: Logfile of failure stored in: 
> /build/rpi3_2016-09-13/tmp/work/raspberrypi3-amltd-linux-gnueabi/linux-raspberrypi/1_4.4.28+gitAUTOINC+5afda48c34-r0/temp/log.do_kernel_metadata.5647
> Log data follows:
> | DEBUG: Executing shell function do_kernel_metadata
> | [ERROR]: processing of file /tmp/tmp.bXPr8PVPz3 failed
> | /build/rpi3_2016-09-13/tmp/sysroots/x86_64-linux/usr/bin/scc-cmds/patch.cmd: line 29: : No such file or directory
> |
> | Context around the error is:
> |
> |     #
> |     prefix /local/poky-cutting-edge/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi/
> |     kconf non-hardware /local/poky-cutting-edge/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi/defconfig
> |     prefix /local/poky-cutting-edge/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi-4.4/
> |     patch "/local/poky-cutting-edge/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi-4.4/0001-fix-dtbo-rules.patch"
> |     # run time: 0 seconds
> |     # processed files:
> |     # _cfg /local/poky-cutting-edge/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi/defconfig
> |     # _cfg /local/poky-cutting-edge/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi-4.4/0001-fix-dtbo-rules.patch
> |
> | See pre-processed file /tmp/tmp.bXPr8PVPz3 for more details
> | #
> | # scc v0.8
> | # processed: Fri Dec  2 04:12:25 CET 2016
> | #
> | # This is a scc output file, do not edit
> | #
> | [ERROR]: processing of file /tmp/tmp.eTLAT789Q2 failed
> | # _reloc_dir /local/poky-cutting-edge/meta-raspberrypi/recipes-kernel/linux
> | # _reloc_dir /local/poky-cutting-edge/meta-raspberrypi/recipes-kernel/linux
> | /build/rpi3_2016-09-13/tmp/sysroots/x86_64-linux/usr/bin/scc-cmds/patch.cmd: line 29: : No such file or directory
> |
> | Context around the error is:
> |
> |     #
> |     prefix /local/poky-cutting-edge/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi/
> |     kconf non-hardware /local/poky-cutting-edge/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi/defconfig
> |     prefix /local/poky-cutting-edge/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi-4.4/
> |     patch "/local/poky-cutting-edge/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi-4.4/0001-fix-dtbo-rules.patch"
> |     # run time: 1 seconds
> |     # processed files:
> |     # _cfg /local/poky-cutting-edge/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi/defconfig
> |     # _cfg /local/poky-cutting-edge/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi-4.4/0001-fix-dtbo-rules.patch
> |
> | See pre-processed file /tmp/tmp.eTLAT789Q2 for more details
> | WARNING: exit code 1 from a shell command.
> | ERROR: Function failed: do_kernel_metadata (log file is located at 
> /build/rpi3_2016-09-13/tmp/work/raspberrypi3-amltd-linux-gnueabi/linux-raspberrypi/1_4.4.28+gitAUTOINC+5afda48c34-r0/temp/log.do_kernel_metadata.5647)
> ERROR: Task (/local/poky-cutting-edge/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi_4.4.bb:do_kernel_metadata) 
> failed with exit code '1'
> 
> I also tried kernel version 4.7:
> ERROR: linux-raspberrypi-1_4.7.7+gitAUTOINC+a45a35c085-r0 do_fetch: Fetcher failure: Unable to find revision 
> a45a35c08598b23f9fd82e49c83b46c7d536244f in branch rpi-4.7.y even from upstream
> ERROR: linux-raspberrypi-1_4.7.7+gitAUTOINC+a45a35c085-r0 do_fetch: Fetcher failure for URL: 
> 'git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-4.7.y'. Unable to fetch URL from any source.
> ERROR: linux-raspberrypi-1_4.7.7+gitAUTOINC+a45a35c085-r0 do_fetch: Function failed: base_do_fetch
> ERROR: Logfile of failure stored in: 
> /build/rpi3_2016-09-13/tmp/work/raspberrypi3-amltd-linux-gnueabi/linux-raspberrypi/1_4.7.7+gitAUTOINC+a45a35c085-r0/temp/log.do_fetch.6133
> ERROR: Task (/local/poky-cutting-edge/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi_4.7.bb:do_fetch) failed 
> with exit code '1'
> 
> I was able to build with 4.8, but X didn't come up :-(
> 
> Any ideas?
> 
> Note: I changed the 4.7 recipe to use a good revision (c2cbd9c611)
> but then I suffered the same problem installing the .dtbo patch :-(
> 

It looks like the following oe-core commit broke the build for
meta-raspberrypi:

http://git.openembedded.org/openembedded-core/commit/?id=83d10e2acef936b1f38804988f10eafa48db36f9

Applying the following patch from the oe-core mailing list fixes it for
me:

http://lists.openembedded.org/pipermail/openembedded-core/2016-December/129567.html

I'm just going to apply that locally until it's merged into master.

Thanks,
Paul Barker

