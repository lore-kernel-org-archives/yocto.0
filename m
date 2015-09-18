Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C129AE00BDA; Fri, 18 Sep 2015 14:09:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.178 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f178.google.com (mail-io0-f178.google.com
	[209.85.223.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4494BE009B8
	for <yocto@yoctoproject.org>; Fri, 18 Sep 2015 14:09:16 -0700 (PDT)
Received: by ioiz6 with SMTP id z6so69314293ioi.2
	for <yocto@yoctoproject.org>; Fri, 18 Sep 2015 14:09:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=7Gs3AVipfoCKlqRJS7zYbCwhYmpJ2cbiSX/EHWdA/ZI=;
	b=gAWsiMIZDdgPzovF7ulIc6SjbBpJ3xzwvvHab4oB/UjwUbkfyejYBY+M3LA+xlYebc
	+4G74tCLzfVy22h1rljDDT6O9nKsCHmaRVwkAsZvlAMkp/AloV0PL6SGLWsZzGLLGs8D
	+48AfI4bFY4kRYm7KtHk97hRHDdd5YmFT1fQNot17pWP15KD6ykPHtkTwKnvgAfHum2T
	M8WXb/gkj/ewri6D5aFlUoo5KIlgI7MVeF8UfPvmmLUZ25wfoiQgJ95HhWrJQ8KLhuD6
	p0CBVy/NfqGjlnD08uM2r3ng9RTMAduMN7/BCiIqM7uOcCAWnxvOTFcZPpQS7WKrcx5V
	AOMA==
X-Received: by 10.107.34.149 with SMTP id i143mr17892490ioi.195.1442610556269; 
	Fri, 18 Sep 2015 14:09:16 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.142.130 with HTTP; Fri, 18 Sep 2015 14:08:46 -0700 (PDT)
In-Reply-To: <CADS8tSLihx5e0u1PeOQL7d8DjO50Yh8sn+aA8=TiBMSGjoRU3w@mail.gmail.com>
References: <CADS8tSLihx5e0u1PeOQL7d8DjO50Yh8sn+aA8=TiBMSGjoRU3w@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 18 Sep 2015 14:08:46 -0700
Message-ID: <CAMKF1sqSo_Lu+f-5QPJJZ1p213tjhie9Km-B4aD=t4VRRWJhZw@mail.gmail.com>
To: Karsten von Hornbostel <kaback@googlemail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Raspberrypi2 mesa/libgl conflicts
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
X-List-Received-Date: Fri, 18 Sep 2015 21:09:20 -0000
Content-Type: text/plain; charset=UTF-8

On Fri, Sep 18, 2015 at 7:38 AM, Karsten von Hornbostel
<kaback@googlemail.com> wrote:
> I try to build gnuradio-demo-image from meta-sdr for raspberrypi 2 (the new B+).
>
> First i did the kickstart guide for raspberry pi 2 from here:
>     https://github.com/Nuand/bladeRF/wiki/Creating-Linux-based-Embedded-System-Images-with-Yocto
> and the "bibbake core-image-minimal" went fine.
>
> Then i tried "bitbake gnuradio-demo-image", but there was an ERROR
> after "preparing RunQueue". I considered this Error to be not
> critical, since the build process starts:
>

search the mailing list IIRC there were patches to fix it

> kaback@ThinkPad-T500:~/builds/build/sdr$ bitbake gnuradio-demo-image
> Parsing recipes: 100%
> |################################################################################################################################################################|
> Time: 00:01:36
> Parsing of 1705 .bb files complete (0 cached, 1705 parsed). 2202
> targets, 101 skipped, 0 masked, 0 errors.
> NOTE: Resolving any missing task queue dependencies
>
> Build Configuration:
> BB_VERSION        = "1.26.0"
> BUILD_SYS         = "i686-linux"
> NATIVELSBSTRING   = "Ubuntu-14.04"
> TARGET_SYS        = "arm-poky-linux-gnueabi"
> MACHINE           = "raspberrypi2"
> DISTRO            = "poky"
> DISTRO_VERSION    = "1.8"
> TUNE_FEATURES     = "arm armv7a vfp thumb neon callconvention-hard
> vfpv4 cortexa7"
> TARGET_FPU        = "vfp-vfpv4-neon"
> meta
> meta-yocto
> meta-yocto-bsp    = "fido:b50596d8f6e858e2e733f2d9913a19c6f3cd5863"
> meta-oe
> meta-filesystems
> meta-networking
> meta-python       = "fido:6c5bce759e96bede1678264b68131984188904f6"
> meta-sdr          = "master:3ca726d7b5cfb8f76cb2765e245f52f42c525155"
> meta-raspberrypi  = "fido:b896a7da70dd7a16ba7ffd664f7747cb37e1d142"
>
> NOTE: Preparing RunQueue
> ERROR: Multiple .bb files are due to be built which each provide
> virtual/mesa (/home/kaback/builds/poky-fido-1.8/meta/recipes-graphics/mesa/mesa_10.4.4.bb
> /home/kaback/builds/poky-fido-1.8/meta/recipes-graphics/mesa/mesa-gl_10.4.4.bb).
>  This usually means one provides something the other doesn't and should.
> ERROR: Multiple .bb files are due to be built which each provide
> virtual/libgl (/home/kaback/builds/poky-fido-1.8/meta/recipes-graphics/mesa/mesa_10.4.4.bb
> /home/kaback/builds/poky-fido-1.8/meta/recipes-graphics/mesa/mesa-gl_10.4.4.bb).
>  This usually means one provides something the other doesn't and should.
> NOTE: Executing SetScene Tasks
> NOTE: Executing RunQueue Tasks
> Currently 2 running tasks (3025 of 6542):
>
> After some time of compiling, another Error rises and compiling stopped
> http://pastebin.ca/3163780
>
> ERROR: If the above message is too much, the simpler version is you're
> advised to wipe out tmp and rebuild (reusing sstate is fine). That
> will likely fix things in most (but not all) cases.
> ERROR: Function failed: sstate_task_postfunc
> ERROR: Logfile of failure stored in:
> /home/kaback/builds/build/sdr/tmp/work/cortexa7hf-vfp-vfpv4-neon-poky-linux-gnueabi/mesa/2_10.4.4-r0/temp/log.do_packagedata.21868
>
> Since I am new to openembedded/yocto I have no idea whats going wrong.
> From my understanding there are two *.bb files that write libs/files
> into the same file/directory.
>
> I googled a bit, but did not find a solution. Please note, that i try
> to build for raspberrypi 2 (the new B+), not for the older pi.
>
> Is there any workaround for this error? What can i do to find out the
> cause of the error?
>
> Regards,
> Karsten
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

