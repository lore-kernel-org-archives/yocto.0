Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5B605E00B6F; Tue,  9 Oct 2018 20:16:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 38226E0097C
	for <yocto@yoctoproject.org>; Tue,  9 Oct 2018 20:16:51 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id w9A3GBdF013614
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 9 Oct 2018 20:16:22 -0700
Received: from server.local (147.11.119.160) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.40) with Microsoft SMTP Server id 14.3.408.0;
	Tue, 9 Oct 2018 20:16:01 -0700
To: Greg Wilson-Lindberg <GWilson@sakuraus.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
References: <286078d59ba1400fb6646b0e6057add6@sakuraus.com>
	<16551d421c7747ab9ae52856a668d750@sakuraus.com>
	<a3fc06bf-e202-dec1-8618-f7f89e1c8a93@windriver.com>
	<7b74cef2003b44909e3033efa1d4305a@sakuraus.com>
	<772b7fca373e4a9085660b8a79a36673@sakuraus.com>
From: Bruce Ashfield <bruce.ashfield@windriver.com>
Message-ID: <42ca53b6-4264-642a-c654-f34740d813e8@windriver.com>
Date: Tue, 9 Oct 2018 23:16:00 -0400
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:52.0)
	Gecko/20100101 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <772b7fca373e4a9085660b8a79a36673@sakuraus.com>
Subject: Re: changing kernel config in Morty build
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
X-List-Received-Date: Wed, 10 Oct 2018 03:16:52 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit

On 2018-10-05 7:26 PM, Greg Wilson-Lindberg wrote:
> Hi Bruce,
> I've been able to reproduce the problem in a more minimal environment.
> 
> To build a basic Yocto Raspberry Pi environment I based my build on the instructions found here:
> https://themeaningfulengineer.github.io/exploring-yocto-with-raspberrypi/
> 
> The steps that I actually executed are:
> 
> git clone -b morty --single-branch git://git.yoctoproject.org/poky
> cd poky/
> git clone -b morty http://git.yoctoproject.org/git/meta-raspberrypi
> source oe-init-build-env rpi-build
> 
> In rpi-build/conf/local.conf I changed the MACHINE assignment to "raspberrypi2" from "qemu86"
> 
> In rpi-build/conf/bblayers.conf I added "  /home/gwilson/Qt/poky/meta-raspberrypi \" to pick up the raspberry layer.
> 
> At this point I ran:
> bitbake rpi-hwup-image
> 
> to verify that the environment was correct. The build finished with only a couple of warnings about checksum problems and using alternate mirrors.
> 
> I then copied in my kernel scripts and added in the directory to the bblayers file.
> 
> When I rebuilt with these changes I get the same warnings/errors about changing the kernel config that I get with my full build environment.
> 
> I've attached my meta-test directory with the kernel configuration .bbappend and .scc & .cfg files, and the final bblayers.conf & local.conf files.

Thanks for the layers and cut & paste instructions. They helped
a lot.

.. even with that start, it took me a bit to figure things out.

In the end, I can't actually figure out how to get the fragment
working with the rpi kernel configuration routines as they stand
in the morty timeframe.

in recipes-kernel/linux/linux-rpi.inc, there's a do_configure_prepend
routine who's first action is to clear ${B}/.config .. which is where
the kernel-yocto bbclass would have put the merged config + fragment.
(The defconfig is also a placeholder defconfig, I could work around
that, but in the end, it doesn't matter since that routine zeros out
anything that has merged).

So as I see it, you'll either need to carry your own defconfig, patch
the in-tree defconfig that is used, or write routines in your bbappend
to modify the configuration directly. I admit to not looking to see
if the techniques to do this are described anywhere, since I was just
trying to sort out why the fragment wasn't being properly applied.

Sorry I couldn't be of more help.

Cheers,

Bruce

> 
> Thank you for taking a look at this.
> 
> Regards,
> 
> Greg Wilson-Lindberg
> 
> 
> 
> ------------------------------------------------------------------------
> *From:* yocto-bounces@yoctoproject.org <yocto-bounces@yoctoproject.org> 
> on behalf of Greg Wilson-Lindberg <GWilson@sakuraus.com>
> *Sent:* Friday, October 5, 2018 9:23:52 AM
> *To:* Bruce Ashfield; yocto@yoctoproject.org
> *Subject:* Re: [yocto] changing kernel config in Morty build
> Hi Bruce,
> I'll do my best to get something for you.
> Thanks,
> 
> Greg Wilson-Lindberg
> Principal Firmware Engineer | Sakura Finetek USA, Inc.
> 
> 1750 W 214th Street | Torrance, CA 90501 | U.S.A.
> T: +1 310 783 5075
> F: +1 310 618 6902 | E: gwilson@sakuraus.com
> www.sakuraus.com <http://www.sakuraus.com>
> 
> 
> 
> 
> 
> Confidentiality Notice: This e-mail transmission may contain 
> confidential or legally privileged information that is intended only for 
> the individual or entity named in the e-mail address. If you are not the 
> intended recipient, you are hereby notified that any disclosure, 
> copying, distribution, or reliance upon the contents of this e-mail is 
> strictly prohibited. If you have received this e-mail transmission in 
> error, please reply to the sender, so that Sakura Finetek USA, Inc. can 
> arrange for proper delivery, and then please delete the message from 
> your inbox. Thank you.
> 
> 
> 
>> -----Original Message-----
>> From: Bruce Ashfield [mailto:bruce.ashfield@windriver.com]
>> Sent: Friday, October 05, 2018 08:46 AM
>> To: Greg Wilson-Lindberg <GWilson@sakuraus.com>; yocto@yoctoproject.org
>> Subject: Re: [yocto] changing kernel config in Morty build
>> 
>> On 2018-10-04 4:38 PM, Greg Wilson-Lindberg wrote:
>> > Does anybody else have any idea about what is going on here?
>> >
>> 
>> I can't tell from the information provided.
>> 
>> But if you can send me a set of layers to clone, and configure locally, I can figure it
>> out.
>> 
>> Cheers,
>> 
>> Bruce
>> 
>> > Yocto is seeing my request to change the kernel config, suggests that
>> > the change is acceptable, but then doesn't make it.
>> >
>> > Thanks in advance for any insight,
>> >
>> > Greg
>> >
>> > **
>> >
>> > *From:*Greg Wilson-Lindberg
>> > *Sent:* Tuesday, October 02, 2018 02:22 PM
>> > *To:* yocto@yoctoproject.org
>> > *Subject:* changing kernel config in Morty build
>> >
>> > I'm trying to change some kernel configuration flags in a
>> > raspberrypi3 Morty build and I get warnings that it isn't working.
>> >
>> > Here is the build info and warnings:
>> >
>> > Build Configuration:
>> >
>> > BB_VERSION        = "1.32.0"
>> >
>> > BUILD_SYS         = "x86_64-linux"
>> >
>> > NATIVELSBSTRING   = "universal"
>> >
>> > TARGET_SYS        = "arm-poky-linux-gnueabi"
>> >
>> > MACHINE           = "raspberrypi3"
>> >
>> > DISTRO            = "b2qt"
>> >
>> > DISTRO_VERSION    = "2.2.4"
>> >
>> > TUNE_FEATURES     = "arm armv7ve vfp thumb neon vfpv4
>> > callconvention-hard cortexa7"
>> >
>> > TARGET_FPU        = "hard"
>> >
>> > SDKMACHINE        = "x86_64"
>> >
>> > meta
>> >
>> > meta-poky         = "HEAD:df76669bdd70aa0d903c4211dde731221c7e756d"
>> >
>> > meta-raspberrypi  = "HEAD:2a192261a914892019f4f428d7462bb3c585ebac"
>> >
>> > meta-oe
>> >
>> > meta-python
>> >
>> > meta-networking
>> >
>> > meta-initramfs
>> >
>> > meta-multimedia   = "HEAD:b40116cf457b88a2db14b86fda9627fb34d56ae6"
>> >
>> > meta-boot2qt
>> >
>> > meta-raspberrypi-extras = "<unknown>:<unknown>"
>> >
>> > meta-mingw        = "HEAD:1c2e155111dce94423cc227ea69f7f50f316c78e"
>> >
>> > meta-qt5          = "HEAD:49e9d9a73b5c6e3d6eab88dc0005305e85b1a62d"
>> >
>> > meta-sakura       = "<unknown>:<unknown>"
>> >
>> > Initialising tasks: 100%
>> >
>> |###################################################################
>> ##
>> >
>> |###################################################################
>> ##
>> > |###|
>> > Time: 0:00:00
>> >
>> > NOTE: Executing SetScene Tasks
>> >
>> > NOTE: Executing RunQueue Tasks
>> >
>> > WARNING: linux-raspberrypi-1_4.4.50+gitAUTOINC+04c8e47067-r0
>> > do_kernel_configcheck: [kernel config]: specified values did not make
>> > it into the kernel's final configuration:
>> >
>> > ---------- CONFIG_SND_SOC_MAX9768 -----------------
>> >
>> > Config: CONFIG_SND_SOC_MAX9768
>> >
>> > From:
>> > /home/gwilson/Qt/Qt-5.9.6/Yocto-build-RPi3/build-raspberrypi3/tmp/work
>> > -shared/raspberrypi3/kernel-source/.kernel-meta/configs/Scribe.cfg
>> >
>> > Requested value:  CONFIG_SND_SOC_MAX9768=y
>> >
>> > Actual value:
>> >
>> > Config 'SND_SOC_MAX9768' has the following conditionals:
>> >
>> > Dependency values are:
>> >
>> > ---------- CONFIG_MAX1363 -----------------
>> >
>> > Config: CONFIG_MAX1363
>> >
>> > From:
>> > /home/gwilson/Qt/Qt-5.9.6/Yocto-build-RPi3/build-raspberrypi3/tmp/work
>> > -shared/raspberrypi3/kernel-source/.kernel-meta/configs/Scribe.cfg
>> >
>> > Requested value:  CONFIG_MAX1363=m
>> >
>> > Actual value:     # CONFIG_MAX1363 is not set
>> >
>> > Config 'MAX1363' has the following conditionals:
>> >
>> >    I2C (value: "y")
>> >
>> > Dependency values are:
>> >
>> >    I2C [y]
>> >
>> > ---------- CONFIG_CAN_EMS_USB -----------------
>> >
>> > Config: CONFIG_CAN_EMS_USB
>> >
>> > From:
>> > /home/gwilson/Qt/Qt-5.9.6/Yocto-build-RPi3/build-raspberrypi3/tmp/work
>> > -shared/raspberrypi3/kernel-source/.kernel-meta/configs/Scribe.cfg
>> >
>> > Requested value:  CONFIG_CAN_EMS_USB=m
>> >
>> > Actual value:     # CONFIG_CAN_EMS_USB is not set
>> >
>> > Config 'CAN_EMS_USB' has the following conditionals:
>> >
>> >    (none)
>> >
>> > Dependency values are:
>> >
>> > Here is my
>> >
>> > linux-raspberrypi_4.4.bbappend for the kernel:
>> >
>> > # Scribe additions to Kernel configuration
>> >
>> > FILESEXTRAPATHS_prepend := "${FILE_DIRNAME}/files:"
>> >
>> > FILESEXTRAPATHS_prepend := "${FILE_DIRNAME}/${PN}:"
>> >
>> > SRC_URI += "file://Scribe.scc <file:///%5C%5CScribe.scc>"
>> >
>> > SRC_URI += "file://mcp251x.c.patch <file:///%5C%5Cmcp251x.c.patch>"
>> >
>> > The Scribe.scc file:
>> >
>> > # Scribe additions to kernel configuration
>> >
>> > kconf hardware Scribe.cfg
>> >
>> > And the Scribe.cfg file:
>> >
>> > # Scribe additions to kernel configuration
>> >
>> > # Enable MAX9768
>> >
>> > #CONFIG_SOC_ALL_CODECS=m
>> >
>> > #CONFIG_COMPILE_TEST=y
>> >
>> > CONFIG_SND_SOC_MAX9768=y
>> >
>> > # Enable MAX11606
>> >
>> > #IIO=y
>> >
>> > CONFIG_MAX1363=m
>> >
>> > # Enable EMS CPC-USB
>> >
>> > CONFIG_CAN_EMS_USB=m
>> >
>> > Here is my directory tree:
>> >
>> > Qt-5.9.6
>> >
>> >       Yocto-mirror
>> > # Yocto build mirror
>> >
>> >       Yocto-build-RPi3                                              #
>> > Yocto build root
>> >
>> >                  build-raspberrypi                                   #
>> > build directory
>> >
>> >                  sources
>> >   # yocto sources
>> >
>> >                         meta-sakura
>> > # our recipes
>> >
>> >                                 recipes-kernel
>> > # directory for kernel changes
>> >
>> >                                         linux
>> >     # directory that contains linux-raspberrypi_4.4.bbappend
>> >
>> >                                                files
>> >       # directory that contains .scc & .cfg files
>> >
>> > As seen above none of the changes are accepted although there is
>> > nothing that blocks any of them.
>> >
>> > Any help understanding this would be greatly appreciated.
>> >
>> > Regards,
>> >
>> > Greg Wilson-Lindberg
>> >
>> >
>> >
> 
> -- 
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


