Return-Path: <mohammedaqdam@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7C964E00BB7; Mon, 28 Aug 2017 01:41:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mohammedaqdam[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.161.170 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yw0-f170.google.com (mail-yw0-f170.google.com
	[209.85.161.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F2EFEE00B8E
	for <yocto@yoctoproject.org>; Mon, 28 Aug 2017 01:41:52 -0700 (PDT)
Received: by mail-yw0-f170.google.com with SMTP id t188so25703733ywb.1
	for <yocto@yoctoproject.org>; Mon, 28 Aug 2017 01:41:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=JOWc2yhjZvuNVIhaZWCGURAORV9Ie4Y3cS2btO+/D8U=;
	b=CGNP8bN2Q2IwUjLpVV11A2zj6FiLgOKBvE3wtXDEoO7eQpYkph0W/Ycnx9vEaVRS5v
	mBke7g3OCAzRcQylEpi9reQrV1ZXlAdKwQnFPqZqrO9IgJIOj7GGoX2oBri0mb+MyoCO
	UDCJI0AXoUMK21S2hXVzO4pPBRqRdBxsns1cHsFY+6fxGW39qrFnlUQGnBwwG4TapmF5
	SG3hLKUtL7ijcFKX/xwDZTqgXvynWVPA+IPQtaVhu9Kf0biVsV2ogOuinY+g+glnmDED
	GlJ2t+73R5dzxlJLHAGCFLV/o/qYUsW+1eizT8fJWIvG0AzpdIVi0ZeMWKCGRwlde/ZB
	RC9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=JOWc2yhjZvuNVIhaZWCGURAORV9Ie4Y3cS2btO+/D8U=;
	b=oAOlBEz45Wyn/jbxCTrIw6hQ0+ZJ/K1yuGFvuEQ8blcnUSwh7joXTxCnOTgU4Kza18
	GzdAGFAf8UEgnu937P1qRxh16uEEJl95NGX2TfM+qBm6KtptUNyRBQiZIM6me2uTYBfb
	RZbLsI5DxchvAwzq5enQwAwGjI8VLVk879dXHl+1NrQlCmwzU2VNV0W8b95EaxcNGMT5
	4EpzfX1VL59WaxlWSlAxzOxVkjEChEPimwNqotgDT54UXv2pn4rmcbJvKuV9Ps6xjSHP
	8SgtyXjsAuvAyyNCf2pVxUZ5D68gFJAS6+BZJF4xnMijwXv2FrDjSjleb8QRu3T03Eeh
	tVaw==
X-Gm-Message-State: AHYfb5jlTrqkJNEg6397ysW9gnbM9IFnKjHe7WLMo9Yw5BW3yA117dU6
	ywLh0JyW/de9BUU0ovF9LeS0OX9MTw==
X-Received: by 10.129.118.8 with SMTP id r8mr5638462ywc.119.1503909711891;
	Mon, 28 Aug 2017 01:41:51 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.129.73.133 with HTTP; Mon, 28 Aug 2017 01:41:51 -0700 (PDT)
From: mohammed aqdam <mohammedaqdam@gmail.com>
Date: Mon, 28 Aug 2017 14:11:51 +0530
Message-ID: <CAGsrAHdhMQfnrzer5zQOG-iNkKzQqGxVBQVLETuqj+_H7nYORw@mail.gmail.com>
To: yocto <yocto@yoctoproject.org>
Subject: do_fetch error
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
X-List-Received-Date: Mon, 28 Aug 2017 08:41:53 -0000
Content-Type: text/plain; charset="UTF-8"

Hello there,

I was build image for rpi3 using yocto, but the image which i build
was not supporting camera(picamera),so after googling for a while i found
this link

https://github.com/pauldotknopf/raspberry-pi-camera-source

now while building, i'm getting the following message...

root@(none):/u/my_poky/test_poky/cam_poky/raspberry-pi-camera-source/build#
bitbake -k camera-image-minimal
Loading cache: 100%
|############################################################################################################################################|
ETA:  00:00:00
Loaded 3645 entries from dependency cache.
NOTE: Resolving any missing task queue dependencies

Build Configuration:
BB_VERSION        = "1.28.0"
BUILD_SYS         = "x86_64-linux"
NATIVELSBSTRING   = "Ubuntu-14.04"
TARGET_SYS        = "arm-poky-linux-gnueabi"
MACHINE           = "raspberrypi2"
DISTRO            = "poky"
DISTRO_VERSION    = "2.0.1"
TUNE_FEATURES     = "arm armv7a vfp thumb neon callconvention-hard
vfpv4 cortexa7"
TARGET_FPU        = "vfp-vfpv4-neon"
meta
meta-yocto
meta-yocto-bsp    = "HEAD:3b223f75eec1738fbc913858e8e11c8305e3edcb"
meta-raspberrypi  = "HEAD:f2cff839f52a6e6211337fc45c7c3eabf0fac113"
meta              = "HEAD:4d879cb8d7384ac4a96f22c1664b8875f2d8f615"
meta-oe
meta-python
meta-networking   = "HEAD:c305ac5d2f5285d5eec8952a4ca7f3b4f89aed96"
meta-camera-source = "master:62521e29499baf0be515e0b73ead80e34645fe33"

NOTE: Preparing RunQueue
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
WARNING: Failed to fetch URL
ftp://ftp.freedesktop.org/pub/mesa/10.6.3/mesa-10.6.3.tar.xz,
attempting MIRRORS if available
ERROR: Fetcher failure: Fetch command failed with exit code 8, output:
No such directory 'pub/mesa/10.6.3'.


ERROR: Function failed: Fetcher failure for URL:
'ftp://ftp.freedesktop.org/pub/mesa/10.6.3/mesa-10.6.3.tar.xz'. Unable
to fetch URL from any source.
ERROR: Logfile of failure stored in:
/u/my_poky/test_poky/cam_poky/raspberry-pi-camera-source/build/tmp/work/cortexa7hf-vfp-vfpv4-neon-poky-linux-gnueabi/mesa-gl/2_10.6.3-r0/temp/log.do_fetch.5133
ERROR: Task 2426
(/u/my_poky/test_poky/cam_poky/raspberry-pi-camera-source/build/../openembedded-core/meta/recipes-graphics/mesa/mesa-gl_10.6.3.bb,
do_fetch) failed with exit code '1'

so tried to download the above file and copy that into download
folder.but even after the coping downloaded file i'm getting the same
error and
the file which download and copy into downloaded folder is getting replaced with
mesa.10.6.3.lock file.

how to solve this error? am i missing anything?
Don't know what to do...

thanks,
mohammed aqdam

