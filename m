Return-Path: <vm.rod25@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D4146E00A44; Sat, 20 Jun 2015 19:22:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (vm.rod25[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.171 listed in list.dnswl.org]
Received: from mail-ie0-f171.google.com (mail-ie0-f171.google.com
	[209.85.223.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 97E93E009A7
	for <yocto@yoctoproject.org>; Sat, 20 Jun 2015 19:22:43 -0700 (PDT)
Received: by ieqy10 with SMTP id y10so7476435ieq.0
	for <yocto@yoctoproject.org>; Sat, 20 Jun 2015 19:22:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=Fo3XQ4+6rSWMT+S39Zzx3kzm6T5dB0C04m0w2cINWPQ=;
	b=dqBi/nYCnsUIW5Ftwd0q3Gxy9QroPwocNrZYwvOS0gF1Tu0d86fh0bml2O9MCUNbLX
	uICuO0NjhBXKCAMbhtskNKDHig3b/xaJLqXYrUcnexYfhoEF66/LCgaAIu6oZEmMbptk
	fD3v1+HVNWTuaq/AZ2CJteFHes35PsX3T1Yu+/6pUXWJ6TZ6ducO9rMqECq180csAC7w
	B1MRwH+Fdi7FkGxIwpKmDKTPyQW5308/cr9kgqB356XA6oHGSppoEc6gMkhWHuZyrmIK
	VoFxqnZQeTeAAAGiTGiMD9wYsBI9WIhB6BCUzUssnOlt+w6WibvwIX6tZ2otiN8oyzgu
	NIXQ==
MIME-Version: 1.0
X-Received: by 10.42.93.17 with SMTP id v17mr19959049icm.42.1434853363428;
	Sat, 20 Jun 2015 19:22:43 -0700 (PDT)
Received: by 10.50.141.228 with HTTP; Sat, 20 Jun 2015 19:22:43 -0700 (PDT)
Date: Sat, 20 Jun 2015 21:22:43 -0500
Message-ID: <CAK5mtexAAs35+7SPauu3ftDVbpr1A_6fcVjn14ULOb43cXAboA@mail.gmail.com>
From: Victor Rodriguez <vm.rod25@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: OpenCV yocto
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
X-List-Received-Date: Sun, 21 Jun 2015 02:22:49 -0000
Content-Type: text/plain; charset=UTF-8

HI team

I am having this same problem:

http://stackoverflow.com/questions/25332969/opencv-pkg-config-cannot-find-lopencv-ts-when-compiling-using-g

I try to build opencv simple source code :

g++ hello.cpp -o video `pkg-config --cflags --libs opencv`

But got this error :

/usr/lib/gcc/i586-poky-linux/4.9.2/../../../../i586-poky-linux/bin/ld:
cannot find -lopencv_ts
collect2: error: ld returned 1 exit status

My local.conf is like this :

EXTRA_IMAGE_FEATURES = "debug-tweaks tools-sdk"
IMAGE_INSTALL_append = " mpich mpich-dev gcc gcc-dev openssh php mariadb opencv"
LICENSE_FLAGS_WHITELIST = "commercial"
CORE_IMAGE_EXTRA_INSTALL += "libopencv-core-dev libopencv-highgui-dev
libopencv-imgproc-dev libopencv-objdetect-dev libopencv-ml-dev"


All the help is more than welcome

Best regards

Victor Rodriguez

