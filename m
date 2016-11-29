Return-Path: <paul@paulbarker.me.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5F049E0083E; Tue, 29 Nov 2016 18:14:23 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [188.165.39.218 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from 6.mo7.mail-out.ovh.net (6.mo7.mail-out.ovh.net [188.165.39.218])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9340FE007A2
	for <yocto@yoctoproject.org>; Tue, 29 Nov 2016 18:14:20 -0800 (PST)
Received: from player796.ha.ovh.net (b7.ovh.net [213.186.33.57])
	by mo7.mail-out.ovh.net (Postfix) with ESMTP id 33A89213FB
	for <yocto@yoctoproject.org>; Tue, 29 Nov 2016 22:27:07 +0100 (CET)
Received: from nuc.betafive.co.uk
	(cpc11-shep11-2-0-cust130.8-3.cable.virginm.net [86.27.96.131])
	(Authenticated sender: paul@betafive.co.uk)
	by player796.ha.ovh.net (Postfix) with ESMTPSA id 2A00F5C007B;
	Tue, 29 Nov 2016 22:27:05 +0100 (CET)
Date: Tue, 29 Nov 2016 21:27:03 +0000
From: Paul Barker <paul@paulbarker.me.uk>
To: Thomas Thorne <Thomas.Thorne@net2edge.com>
Message-ID: <20161129212703.255a4b98@nuc.betafive.co.uk>
In-Reply-To: <DB6PR0701MB18797C1C59DBAB52F366D5C3D38D0@DB6PR0701MB1879.eurprd07.prod.outlook.com>
References: <DB6PR0701MB18797532F7B8802879D25D7AD38D0@DB6PR0701MB1879.eurprd07.prod.outlook.com>
	<DB6PR0701MB18797C1C59DBAB52F366D5C3D38D0@DB6PR0701MB1879.eurprd07.prod.outlook.com>
X-Mailer: Claws Mail 3.11.1 (GTK+ 2.24.25; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-Ovh-Tracer-Id: 17486069978451511557
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrfeelfedrfeejgddvjeelucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddm
Cc: 'Yocto Project Discussion' <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi] Seeing "dd: failed to open '/core-image-minimal-raspberrypi3-20161129134515.rootfs.rpi-sdimg': Permission denied" Errors After Update
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
X-List-Received-Date: Wed, 30 Nov 2016 02:14:23 -0000
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Tue, 29 Nov 2016 17:22:15 +0000
Thomas Thorne <Thomas.Thorne@net2edge.com> wrote:

> I did not think my directory was that out of date but I can see a change to the meta-raspberrypi/classes/sdcard_image-rpi.bbclass file from the 13th September 2016.  https://github.com/agherzan/meta-raspberrypi/commit/4817e2c087097c02755d6309304878e42cf61d3c or https://lists.yoctoproject.org/pipermail/yocto/2016-September/031961.html
> 
> This changes a variable name from DEPLOY_DIR_IMAGE to IMGDEPLOYDIR.  Nothing I have currently sets that variable.
> 
> If I change my local.conf to set the new variable to "/tmp" the error changes to:
> 
> $ bitbake rpi-hwup-image
> WARNING: Host distribution "Ubuntu-16.04" has not been validated with this version of the build system; you may possibly experience unexpected failures. It is recommended that you use a tested distribution.
> Loading cache: 100% |########################################################################| ETA:  00:00:00
> Loaded 2476 entries from dependency cache.
> NOTE: Resolving any missing task queue dependencies
> 
> Build Configuration:
> BB_VERSION        = "1.30.0"
> BUILD_SYS         = "x86_64-linux"
> NATIVELSBSTRING   = "universal"
> TARGET_SYS        = "arm-poky-linux-gnueabi"
> MACHINE           = "raspberrypi3"
> DISTRO            = "poky"
> DISTRO_VERSION    = "2.1.2"
> TUNE_FEATURES     = "arm armv7ve vfp thumb neon vfpv4 callconvention-hard cortexa7"
> TARGET_FPU        = "hard"
> meta
> meta-poky
> meta-yocto-bsp    = "krogoth:ae9b341ecfcc60e970f29cfe04306411ad26c0cf"
> meta-oe
> meta-multimedia
> meta-networking
> meta-python       = "krogoth:851a064b53dca3b14dd33eaaaca9573b1a36bf0e"
> meta-qt5          = "HEAD:2b1871f0d139dc3caaa779a32a1931409c245a36"
> meta-raspberrypi  = "heads/origin/krogoth:44d41bf3e94c4c8fe5ad5a3650572c8d17ef36c9"
> 
> NOTE: Preparing RunQueue
> NOTE: Executing SetScene Tasks
> NOTE: Executing RunQueue Tasks
> ERROR: rpi-hwup-image-1.0-r0 do_image_rpi_sdimg: Function failed: do_image_rpi_sdimg (log file is located at /home/thomasthorne/work/yocto-rpi/build-pi3/tmp/work/raspberrypi3-poky-linux-gnueabi/rpi-hwup-image/1.0-r0/temp/log.do_image_rpi_sdimg.28755)
> ERROR: Logfile of failure stored in: /home/thomasthorne/work/yocto-rpi/build-pi3/tmp/work/raspberrypi3-poky-linux-gnueabi/rpi-hwup-image/1.0-r0/temp/log.do_image_rpi_sdimg.28755
> Log data follows:
> | DEBUG: Executing python function set_image_size
> | DEBUG: Python function set_image_size finished
> | DEBUG: Executing shell function do_image_rpi_sdimg
> | Creating filesystem with Boot partition 40960 KiB and RootFS 77824 KiB
> | 0+0 records in
> | 0+0 records out
> | 0 bytes copied, 9.734e-06 s, 0.0 kB/s
> | Model:  (file)
> | Disk /tmp/rpi-hwup-image-raspberrypi3-20161129171221.rootfs.rpi-sdimg: 126MB
> | Sector size (logical/physical): 512B/512B
> | Partition Table: msdos
> | Disk Flags:
> |
> | Number  Start   End     Size    Type     File system  Flags
> |  1      4194kB  46.1MB  41.9MB  primary               boot, lba
> |  2      46.1MB  126MB   79.7MB  primary
> |
> | mkfs.fat: warning - lowercase labels might not work properly with DOS or Windows
> | mkfs.fat 3.0.28 (2015-05-16)
> | /home/thomasthorne/work/yocto-rpi/build-pi3/tmp/deploy/images/raspberrypi3/Image-hifiberry-amp.dtbo: No such file or directory
> | WARNING: /home/thomasthorne/work/yocto-rpi/build-pi3/tmp/work/raspberrypi3-poky-linux-gnueabi/rpi-hwup-image/1.0-r0/temp/run.do_image_rpi_sdimg.28755:1 exit 1 from 'mcopy -i /home/thomasthorne/work/yocto-rpi/build-pi3/tmp/work/raspberrypi3-poky-linux-gnueabi/rpi-hwup-image/1.0-r0/boot.img -s /home/thomasthorne/work/yocto-rpi/build-pi3/tmp/deploy/images/raspberrypi3/Image-${DTB_BASE_NAME}.${DTB_EXT} ::overlays/${DTB_BASE_NAME}.${DTB_EXT}'
> | ERROR: Function failed: do_image_rpi_sdimg (log file is located at /home/thomasthorne/work/yocto-rpi/build-pi3/tmp/work/raspberrypi3-poky-linux-gnueabi/rpi-hwup-image/1.0-r0/temp/log.do_image_rpi_sdimg.28755)
> ERROR: Task 16 (/home/thomasthorne/work/yocto-rpi/meta-raspberrypi/recipes-core/images/rpi-hwup-image.bb, do_image_rpi_sdimg) failed with exit code '1'
> NOTE: Tasks Summary: Attempted 2117 tasks of which 2116 didn't need to be rerun and 1 failed.
> No currently running tasks (1925 of 2119)
> 
> Summary: 1 task failed:
>   /home/thomasthorne/work/yocto-rpi/meta-raspberrypi/recipes-core/images/rpi-hwup-image.bb, do_image_rpi_sdimg
> Summary: There was 1 WARNING message shown.
> Summary: There was 1 ERROR message shown, returning a non-zero exit code.
> thomasthorne@thorne-ul-dt:~/work/yocto-rpi/build-pi3$ view /home/thomasthorne/work/yocto-rpi/build-pi3/tmp/work/raspberrypi3-poky-linux-gnueabi/rpi-hwup-image/1.0-r0/temp/log.do_image_rpi_sdimg.28755
> 
> 
> To stop the error I have to change my image types from:
> 
> IMAGE_FSTYPES = "tar.xz ext3 rpi-sdimg"
> 
> To:
> 
> IMAGE_FSTYPES = "tar.xz ext3"
> 
> Is this a bug I should raise on the https://github.com/agherzan/meta-raspberrypi/ project or am I missing some step?
> I take it there might be a handful of variables I need to set before it is safe to use the rpi-sdimg in my configuration now?
> 
> Thomas A. F. Thorne<mailto:Thomas.Thorne@Net2Edge.com>  Software Engineer  Net2Edge<http://www.net2edge.com/>
> 
> From: Thomas Thorne
> Sent: 29 November 2016 13:56
> To: Yocto Project Discussion <yocto@yoctoproject.org>
> Subject: [meta-raspberrypi] Seeing "dd: failed to open '/core-image-minimal-raspberrypi3-20161129134515.rootfs.rpi-sdimg': Permission denied" Errors After Update
> 
> I updated my Krogoth work area today with `git pull` and I now seeing error messages about being unable to open a root filesystem image for a raspberrypi3.  I have tried in my build area that tries to make an SD card image and the default one which does whatever the basic setup is.
> 
> Output from bitbake core-image-minimal attempt. I think this target was working before I did the pull.  rpi-basic-image, rpi-test-image rpi-hwup-image were also working yesterday but
> 
> $ bitbake core-image-minimal
> WARNING: Host distribution "Ubuntu-16.04" has not been validated with this version of the build system; you may possibly experience unexpected failures. It is recommended that you use a tested distribution.
> Parsing recipes: 100% |######################################################################| Time: 00:00:33
> Parsing of 1922 .bb files complete (0 cached, 1922 parsed). 2475 targets, 146 skipped, 0 masked, 0 errors.
> NOTE: Resolving any missing task queue dependencies
> 
> Build Configuration:
> BB_VERSION        = "1.30.0"
> BUILD_SYS         = "x86_64-linux"
> NATIVELSBSTRING   = "universal"
> TARGET_SYS        = "arm-poky-linux-gnueabi"
> MACHINE           = "raspberrypi3"
> DISTRO            = "poky"
> DISTRO_VERSION    = "2.1.2"
> TUNE_FEATURES     = "arm armv7ve vfp thumb neon vfpv4 callconvention-hard cortexa7"
> TARGET_FPU        = "hard"
> meta
> meta-poky
> meta-yocto-bsp    = "krogoth:ae9b341ecfcc60e970f29cfe04306411ad26c0cf"
> meta-oe
> meta-multimedia
> meta-networking
> meta-python       = "krogoth:851a064b53dca3b14dd33eaaaca9573b1a36bf0e"
> meta-qt5          = "HEAD:2b1871f0d139dc3caaa779a32a1931409c245a36"
> meta-raspberrypi  = "heads/origin/krogoth:44d41bf3e94c4c8fe5ad5a3650572c8d17ef36c9"
> 

You seem to be mixing krogoth branches with master of meta-raspberrypi
(44d41bf is the latest commit on master). I wouldn't expect that to
work at all as master can change in backwards incompatible ways.

It looks like the variable name transitioned from DEPLOY_DIR_IMAGE to
IMGDEPLOYDIR on the master branch of openembedded-core and other
layers. I'd suggest either moving everything forward to master or
moving meta-raspberrypi back to krogoth.

Is there any particular reason why you need the master branch of
meta-raspberrypi or is krogoth good enough for your needs?

Thanks,
Paul

