Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5D155E00BB7; Mon, 28 Aug 2017 02:28:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0B8D3E00B8E
	for <yocto@yoctoproject.org>; Mon, 28 Aug 2017 02:28:16 -0700 (PDT)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	28 Aug 2017 02:28:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.41,441,1498546800"; d="scan'208";a="894699689"
Received: from ykhoo5-mobl1.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.249.79.63])
	by FMSMGA003.fm.intel.com with ESMTP; 28 Aug 2017 02:28:14 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: mohammed aqdam <mohammedaqdam@gmail.com>
Date: Mon, 28 Aug 2017 21:28:12 +1200
Message-ID: <2722379.oR4uEICHMH@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
In-Reply-To: <CAGsrAHdhMQfnrzer5zQOG-iNkKzQqGxVBQVLETuqj+_H7nYORw@mail.gmail.com>
References: <CAGsrAHdhMQfnrzer5zQOG-iNkKzQqGxVBQVLETuqj+_H7nYORw@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: do_fetch error
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
X-List-Received-Date: Mon, 28 Aug 2017 09:28:19 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Mohammed,

On Monday, 28 August 2017 8:41:51 PM NZST mohammed aqdam wrote:
> I was build image for rpi3 using yocto, but the image which i build
> was not supporting camera(picamera),so after googling for a while i found
> this link
> 
> https://github.com/pauldotknopf/raspberry-pi-camera-source
> 
> now while building, i'm getting the following message...
> 
> root@(none):/u/my_poky/test_poky/cam_poky/raspberry-pi-camera-source/build#
> bitbake -k camera-image-minimal
> Loading cache: 100%
> |
############################################################################################################################################|
> ETA:  00:00:00
> Loaded 3645 entries from dependency cache.
> NOTE: Resolving any missing task queue dependencies
> 
> Build Configuration:
> BB_VERSION        = "1.28.0"
> BUILD_SYS         = "x86_64-linux"
> NATIVELSBSTRING   = "Ubuntu-14.04"
> TARGET_SYS        = "arm-poky-linux-gnueabi"
> MACHINE           = "raspberrypi2"
> DISTRO            = "poky"
> DISTRO_VERSION    = "2.0.1"
> TUNE_FEATURES     = "arm armv7a vfp thumb neon callconvention-hard
> vfpv4 cortexa7"
> TARGET_FPU        = "vfp-vfpv4-neon"
> meta
> meta-yocto
> meta-yocto-bsp    = "HEAD:3b223f75eec1738fbc913858e8e11c8305e3edcb"
> meta-raspberrypi  = "HEAD:f2cff839f52a6e6211337fc45c7c3eabf0fac113"
> meta              = "HEAD:4d879cb8d7384ac4a96f22c1664b8875f2d8f615"
> meta-oe
> meta-python
> meta-networking   = "HEAD:c305ac5d2f5285d5eec8952a4ca7f3b4f89aed96"
> meta-camera-source = "master:62521e29499baf0be515e0b73ead80e34645fe33"
> 
> NOTE: Preparing RunQueue
> NOTE: Executing SetScene Tasks
> NOTE: Executing RunQueue Tasks
> WARNING: Failed to fetch URL
> ftp://ftp.freedesktop.org/pub/mesa/10.6.3/mesa-10.6.3.tar.xz,
> attempting MIRRORS if available
> ERROR: Fetcher failure: Fetch command failed with exit code 8, output:
> No such directory 'pub/mesa/10.6.3'.
> 
> 
> ERROR: Function failed: Fetcher failure for URL:
> 'ftp://ftp.freedesktop.org/pub/mesa/10.6.3/mesa-10.6.3.tar.xz'. Unable
> to fetch URL from any source.
> ERROR: Logfile of failure stored in:
> /u/my_poky/test_poky/cam_poky/raspberry-pi-camera-source/build/tmp/work/
cortexa7hf-vfp-vfpv4-neon-poky-linux-gnueabi/mesa-gl/2_10.6.3-r0/temp/
log.do_fetch.5133
> ERROR: Task 2426
> (/u/my_poky/test_poky/cam_poky/raspberry-pi-camera-source/build/../
openembedded-core/meta/recipes-graphics/mesa/mesa-gl_10.6.3.bb,
> do_fetch) failed with exit code '1'
> 
> so tried to download the above file and copy that into download
> folder.but even after the coping downloaded file i'm getting the same
> error and
> the file which download and copy into downloaded folder is getting replaced
> with mesa.10.6.3.lock file.
> 
> how to solve this error? am i missing anything?
> Don't know what to do...

Firstly, this error shouldn't have occurred because our source mirror has this 
file:

  http://downloads.yoctoproject.org/mirror/sources/mesa-10.6.3.tar.xz

I'm unsure as to why that wouldn't have worked unless your configuration 
clears out the default value of MIRRORS, or our source mirror couldn't be 
accessed by you for some reason. mesa-gl's log.do_fetch (path shown in your 
error log) would explain exactly which URLs it tried if you did want to figure 
that out.

Secondly, regarding copying the file into the downloads directory, that alone 
isn't enough, you also have to touch a ".done" file next to the file in the 
downloads directory (the name of the file with .done appended to it) so that 
it assumes the file completely downloaded.

Thirdly, you are using what is by now quite an old version of the build system 
- and you're building for rasperrypi2 which isn't the board you say you have 
(rasperrypi3) - perhaps because the raspberrypi3 configuration isn't available 
in that version, not sure. Maybe someone else can chime in regarding the 
camera software for newer versions, I'm not sure about that either.

Cheers,
Paul


-- 

Paul Eggleton
Intel Open Source Technology Centre

