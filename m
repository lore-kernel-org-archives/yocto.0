Return-Path: <mariano.lopez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A74BDE00D4D; Thu, 24 Nov 2016 08:46:38 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8040FE00BC0
	for <yocto@yoctoproject.org>; Thu, 24 Nov 2016 08:46:33 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by orsmga103.jf.intel.com with ESMTP; 24 Nov 2016 08:46:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.31,543,1473145200"; d="scan'208";a="1089993690"
Received: from unknown (HELO mlopezva-mobl2.zpn.intel.com) ([10.219.5.43])
	by fmsmga002.fm.intel.com with ESMTP; 24 Nov 2016 08:46:32 -0800
From: Mariano Lopez <mariano.lopez@linux.intel.com>
To: yocto@yoctoproject.org, Peter Balazovic <balazovic.peter@gmail.com>
Date: Thu, 24 Nov 2016 10:46:36 -0600
Message-ID: <1755924.RbnoYmRITu@mlopezva-mobl2>
User-Agent: KMail/4.14.10 (Linux/4.4.26-gentoo; KDE/4.14.24; x86_64; ; )
In-Reply-To: <CAFq4t4gmAmVmsxJY-78kooGzBWNJ0O47OQ8+1VFd0x7o0tzxjA@mail.gmail.com>
References: <CAFq4t4gmAmVmsxJY-78kooGzBWNJ0O47OQ8+1VFd0x7o0tzxjA@mail.gmail.com>
MIME-Version: 1.0
Subject: Re: change/modify recipe for OpenCV
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
X-List-Received-Date: Thu, 24 Nov 2016 16:46:38 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Thursday, November 24, 2016 11:40:16 AM Peter Balazovic wrote:
> Dears,
> 
> I'm building Yocto image and this includes OpenCV 2.4 release.
> 
> For example my loca.conf looks similar as
> http://www.engcore.com/2014/02/building-opencv-2-4-x-for-freescales-i-mx6-bsp-yocto/
> :
> 
> ..
> *CORE_IMAGE_EXTRA_INSTALL += "libopencv-core-dev libopencv-highgui-dev*
> *libopencv-imgproc-dev libopencv-objdetect-dev libopencv-ml-dev"*
> ..
> 
> 
> I have located recipes *.bb @
> *../sources/meta-openembedded/meta-oe/recipes-support/opencv/*
> *opencv_2.4.bb <http://opencv_2.4.bb>*
> *opencv_3.0.bb <http://opencv_3.0.bb>*
> 
> *.bbapend @
> *../sources/meta-fsl-arm/openembedded-layer/recipes-support/opencv/*
> *opencv_2.4.bbappend*
> *opencv_3.0.bbappend*
> 
> Within fsl-imx-base.inc I can see reference to opencv_2.4.bbappend
> *../sources/meta-fsl-bsp-release/imx/meta-sdk/conf/distro/include*
> 
> ..
> BBMASK .=
> "|meta-fsl-arm/openembedded-layer/recipes-support/opencv/opencv_2.4.bbappend"
> ..
> 
> but replacing with 3.0 doesn't compile with 3.0.

I haven't check the bbappend file, but most likely the changes won't apply for 3.0.

> 
> I'd like to have OpenCV 3.0 installed.
> 
> 1) How/what to modify/configure to get installed OpenCV 3.0 into image ?

Unless you have a restriction (license, PREFERRED_VERSION) to not install
OpenCV 3.0, bitbake will install the newer.


> 2) How to control OpenCV build for Yocto and how packageconfig option to
> use to turn on/off individual OpenCV options?

I think you are looking for PACKAGECONFIG recipe variable, you can find more
info in here:

http://www.yoctoproject.org/docs/latest/ref-manual/ref-manual.html#var-PACKAGECONFIG

A good recipe example would be ffmpeg.

> 
> 
> Thank you for your advice very much.

Cheers

Mariano

