Return-Path: <kaback@googlemail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 85D3FE00D60; Fri, 18 Sep 2015 07:38:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (kaback[at]googlemail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.212.181 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wi0-f181.google.com (mail-wi0-f181.google.com
	[209.85.212.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6729EE00B66
	for <yocto@yoctoproject.org>; Fri, 18 Sep 2015 07:38:24 -0700 (PDT)
Received: by wiclk2 with SMTP id lk2so33826236wic.1
	for <yocto@yoctoproject.org>; Fri, 18 Sep 2015 07:38:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=Frr4Ch38vByTrfY1/+gRtc45CJdUNypk6P8YbPL5N0k=;
	b=eHsgdRFe4qJxLJT2IBJK4jd5EZmwsvcS1py+eA9eoqmmM+IIYER+B6uhL+QEcimY+K
	AEb4hh+t/o5J0xgHn6m9g9lFefLfP+u1x4ASXpNCVKyAgod3piD2v6x8nwJ6ynw5G1A0
	EUwH9waCHAXh/h9J3Bhr8ElXe/EnlNUfJYEO/jWuZPtJsB1F2x8Hi1mD7EWe+4N1WSnr
	AG072gzPQ2tEzMedsI+UihLKhIVobKdj/CcQcJqMpP9zzNxYKXdZ7M0CyRKqOGj4CpPH
	HwAJLZTiMgYv8vQa4bC0NIJL68vu6by0zVw7ISUGKMM+5z248vYFFXyvrbcZnb30kbDK
	iWLw==
MIME-Version: 1.0
X-Received: by 10.180.91.131 with SMTP id ce3mr39899367wib.84.1442587104230;
	Fri, 18 Sep 2015 07:38:24 -0700 (PDT)
Received: by 10.194.33.228 with HTTP; Fri, 18 Sep 2015 07:38:24 -0700 (PDT)
Date: Fri, 18 Sep 2015 16:38:24 +0200
Message-ID: <CADS8tSLihx5e0u1PeOQL7d8DjO50Yh8sn+aA8=TiBMSGjoRU3w@mail.gmail.com>
From: Karsten von Hornbostel <kaback@googlemail.com>
To: yocto@yoctoproject.org
X-Mailman-Approved-At: Fri, 18 Sep 2015 10:19:14 -0700
Subject: Raspberrypi2 mesa/libgl conflicts
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
X-List-Received-Date: Fri, 18 Sep 2015 14:38:27 -0000
Content-Type: text/plain; charset=UTF-8

I try to build gnuradio-demo-image from meta-sdr for raspberrypi 2 (the new B+).

First i did the kickstart guide for raspberry pi 2 from here:
    https://github.com/Nuand/bladeRF/wiki/Creating-Linux-based-Embedded-System-Images-with-Yocto
and the "bibbake core-image-minimal" went fine.

Then i tried "bitbake gnuradio-demo-image", but there was an ERROR
after "preparing RunQueue". I considered this Error to be not
critical, since the build process starts:

kaback@ThinkPad-T500:~/builds/build/sdr$ bitbake gnuradio-demo-image
Parsing recipes: 100%
|################################################################################################################################################################|
Time: 00:01:36
Parsing of 1705 .bb files complete (0 cached, 1705 parsed). 2202
targets, 101 skipped, 0 masked, 0 errors.
NOTE: Resolving any missing task queue dependencies

Build Configuration:
BB_VERSION        = "1.26.0"
BUILD_SYS         = "i686-linux"
NATIVELSBSTRING   = "Ubuntu-14.04"
TARGET_SYS        = "arm-poky-linux-gnueabi"
MACHINE           = "raspberrypi2"
DISTRO            = "poky"
DISTRO_VERSION    = "1.8"
TUNE_FEATURES     = "arm armv7a vfp thumb neon callconvention-hard
vfpv4 cortexa7"
TARGET_FPU        = "vfp-vfpv4-neon"
meta
meta-yocto
meta-yocto-bsp    = "fido:b50596d8f6e858e2e733f2d9913a19c6f3cd5863"
meta-oe
meta-filesystems
meta-networking
meta-python       = "fido:6c5bce759e96bede1678264b68131984188904f6"
meta-sdr          = "master:3ca726d7b5cfb8f76cb2765e245f52f42c525155"
meta-raspberrypi  = "fido:b896a7da70dd7a16ba7ffd664f7747cb37e1d142"

NOTE: Preparing RunQueue
ERROR: Multiple .bb files are due to be built which each provide
virtual/mesa (/home/kaback/builds/poky-fido-1.8/meta/recipes-graphics/mesa/mesa_10.4.4.bb
/home/kaback/builds/poky-fido-1.8/meta/recipes-graphics/mesa/mesa-gl_10.4.4.bb).
 This usually means one provides something the other doesn't and should.
ERROR: Multiple .bb files are due to be built which each provide
virtual/libgl (/home/kaback/builds/poky-fido-1.8/meta/recipes-graphics/mesa/mesa_10.4.4.bb
/home/kaback/builds/poky-fido-1.8/meta/recipes-graphics/mesa/mesa-gl_10.4.4.bb).
 This usually means one provides something the other doesn't and should.
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
Currently 2 running tasks (3025 of 6542):

After some time of compiling, another Error rises and compiling stopped
http://pastebin.ca/3163780

ERROR: If the above message is too much, the simpler version is you're
advised to wipe out tmp and rebuild (reusing sstate is fine). That
will likely fix things in most (but not all) cases.
ERROR: Function failed: sstate_task_postfunc
ERROR: Logfile of failure stored in:
/home/kaback/builds/build/sdr/tmp/work/cortexa7hf-vfp-vfpv4-neon-poky-linux-gnueabi/mesa/2_10.4.4-r0/temp/log.do_packagedata.21868

Since I am new to openembedded/yocto I have no idea whats going wrong.
From my understanding there are two *.bb files that write libs/files
into the same file/directory.

I googled a bit, but did not find a solution. Please note, that i try
to build for raspberrypi 2 (the new B+), not for the older pi.

Is there any workaround for this error? What can i do to find out the
cause of the error?

Regards,
Karsten

