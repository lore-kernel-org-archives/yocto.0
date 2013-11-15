Return-Path: <lschwab@xeralux.com>
Received: from mail-ea0-f182.google.com (mail-ea0-f182.google.com
	[209.85.215.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1D13BE01575
	for <yocto@yoctoproject.org>; Fri, 15 Nov 2013 14:52:28 -0800 (PST)
Received: by mail-ea0-f182.google.com with SMTP id o10so1562771eaj.41
	for <yocto@yoctoproject.org>; Fri, 15 Nov 2013 14:52:27 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to
	:content-type;
	bh=MGsWscKzvRG0pR18zCybUpAQUXRlNs4dx6RS0DQDxT8=;
	b=X5urBP3Xh+rFhGrWm8A/MIr0ASshD2faz4h6aZtwW+tooyyJpnnxFiyJywKrp0PNWu
	gJ9auWj+qCIKCqGvFkG3mEqiRV8/srdsZDU1XM+GVDo8zgyGpErPPwd6Lde/UnjIetoO
	uF8UyPKM8YsXQ12IKDHmhf3tTyMe1fbQVu4PEmzoQYG2vFWlgXvKI4ovzvUdvSHAMwYY
	/KCyu3IEtv27znjHoRQ1To/2sm0wjHIOlYw811KeLZGsuIFHEZ0MdhNxOwx/VUlB1nLt
	zFOCi9MiVKzrn0LlNz7LNKvvTiAPkoh1vvCWklbjOEHEgu1MQ35w7/gzOLLZBEcJJG8W
	kD6g==
X-Gm-Message-State: ALoCoQnHbrixOhTgO12Qgj4ut4oYknWNeQrom4yj9/gZUg9HaoM2ZqApQPT9p7CuXtk72f2JhYyE
MIME-Version: 1.0
X-Received: by 10.14.224.132 with SMTP id x4mr5410101eep.5.1384555947237; Fri,
	15 Nov 2013 14:52:27 -0800 (PST)
Received: by 10.15.34.75 with HTTP; Fri, 15 Nov 2013 14:52:27 -0800 (PST)
Date: Fri, 15 Nov 2013 14:52:27 -0800
Message-ID: <CALb2249ae4iDYnv3RG9aQJdVEJCMWP5AH4vOR4jgg_TxuF+BJg@mail.gmail.com>
From: Leo Schwab <lschwab@sensity.com>
To: yocto <yocto@yoctoproject.org>
Subject: FILESPATH Search Order Changed?
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
X-List-Received-Date: Fri, 15 Nov 2013 22:52:30 -0000
Content-Type: text/plain; charset=UTF-8

I'm working on transitioning from 'dylan' to the 'dora' branch for our
Freescale-based project, and suddenly my kernel is building with the
wrong config.  I've isolated it to a change in (what I presume is) the
FILESPATH search order, and shows up very plainly when looking at the
log.do_unpack file.

My defconfig is located in
/..paths../sources/meta-belis3/recipes-kernel/linux/files/defconfig.
Under 'dylan', it does this, and gets picked up correctly:

----
DEBUG: Searching for defconfig in paths:
/..paths../sources/meta-belis3/recipes-kernel/linux/files/arm
/..paths../sources/meta-belis3/recipes-kernel/linux/files/armv7a
/..paths../sources/meta-belis3/recipes-kernel/linux/files/mx6
/..paths../sources/meta-belis3/recipes-kernel/linux/files/mx6dl
/..paths../sources/meta-belis3/recipes-kernel/linux/files/medianode
/..paths../sources/meta-belis3/recipes-kernel/linux/files/poky
/..paths../sources/meta-belis3/recipes-kernel/linux/files/
/..paths../sources/meta-fsl-arm-extra/recipes-kernel/linux/linux-imx-3.0.35/arm
/..paths../sources/meta-fsl-arm-extra/recipes-kernel/linux/linux-imx-3.0.35/armv7a
/..paths../sources/meta-fsl-arm-extra/recipes-kernel/linux/linux-imx-3.0.35/mx6
/..paths../sources/meta-fsl-arm-extra/recipes-kernel/linux/linux-imx-3.0.35/mx6dl
/..paths../sources/meta-fsl-arm-extra/recipes-kernel/linux/linux-imx-3.0.35/medianode
/..paths../sources/meta-fsl-arm-extra/recipes-kernel/linux/linux-imx-3.0.35/poky
/..paths../sources/meta-fsl-arm-extra/recipes-kernel/linux/linux-imx-3.0.35/
/..paths../sources/meta-fsl-arm/recipes-kernel/linux/linux-imx-3.0.35/arm
/..paths../sources/meta-fsl-arm/recipes-kernel/linux/linux-imx-3.0.35/armv7a
/..paths../sources/meta-fsl-arm/recipes-kernel/linux/linux-imx-3.0.35/mx6
/..paths../sources/meta-fsl-arm/recipes-kernel/linux/linux-imx-3.0.35/mx6dl
/..paths../sources/meta-fsl-arm/recipes-kernel/linux/linux-imx-3.0.35/medianode
/..paths../sources/meta-fsl-arm/recipes-kernel/linux/linux-imx-3.0.35/poky
/..paths../sources/meta-fsl-arm/recipes-kernel/linux/linux-imx-3.0.35/
/..paths../sources/meta-fsl-arm/recipes-kernel/linux/linux-imx/arm
/..paths../sources/meta-fsl-arm/recipes-kernel/linux/linux-imx/armv7a
/..paths../sources/meta-fsl-arm/recipes-kernel/linux/linux-imx/mx6
/..paths../sources/meta-fsl-arm/recipes-kernel/linux/linux-imx/mx6dl
/..paths../sources/meta-fsl-arm/recipes-kernel/linux/linux-imx/medianode
/..paths../sources/meta-fsl-arm/recipes-kernel/linux/linux-imx/poky
/..paths../sources/meta-fsl-arm/recipes-kernel/linux/linux-imx/
/..paths../sources/meta-fsl-arm/recipes-kernel/linux/files/arm
/..paths../sources/meta-fsl-arm/recipes-kernel/linux/files/armv7a
/..paths../sources/meta-fsl-arm/recipes-kernel/linux/files/mx6
/..paths../sources/meta-fsl-arm/recipes-kernel/linux/files/mx6dl
/..paths../sources/meta-fsl-arm/recipes-kernel/linux/files/medianode
/..paths../sources/meta-fsl-arm/recipes-kernel/linux/files/poky
/..paths../sources/meta-fsl-arm/recipes-kernel/linux/files/
NOTE: Unpacking
/..paths../sources/meta-belis3/recipes-kernel/linux/files/defconfig to
/..paths../build/tmp/work/medianode-poky-linux-gnueabi/linux-imx/3.0.35-r39.14/
----

But under 'dora', it does this:

----
DEBUG: Searching for defconfig in paths:
/..paths../sources/meta-belis3/recipes-kernel/linux/files/poky
/..paths../sources/meta-fsl-arm-extra/recipes-kernel/linux/linux-imx-3.0.35/poky
/..paths../sources/meta-fsl-arm/recipes-kernel/linux/linux-imx-3.0.35/poky
/..paths../sources/meta-fsl-arm/recipes-kernel/linux/linux-imx/poky
/..paths../sources/meta-fsl-arm/recipes-kernel/linux/files/poky
/..paths../sources/meta-belis3/recipes-kernel/linux/files/medianode
/..paths../sources/meta-fsl-arm-extra/recipes-kernel/linux/linux-imx-3.0.35/medianode
/..paths../sources/meta-fsl-arm/recipes-kernel/linux/linux-imx-3.0.35/medianode
/..paths../sources/meta-fsl-arm/recipes-kernel/linux/linux-imx/medianode
/..paths../sources/meta-fsl-arm/recipes-kernel/linux/files/medianode
/..paths../sources/meta-belis3/recipes-kernel/linux/files/mx6dl
/..paths../sources/meta-fsl-arm-extra/recipes-kernel/linux/linux-imx-3.0.35/mx6dl
/..paths../sources/meta-fsl-arm/recipes-kernel/linux/linux-imx-3.0.35/mx6dl
/..paths../sources/meta-fsl-arm/recipes-kernel/linux/linux-imx/mx6dl
/..paths../sources/meta-fsl-arm/recipes-kernel/linux/files/mx6dl
/..paths../sources/meta-belis3/recipes-kernel/linux/files/mx6
/..paths../sources/meta-fsl-arm-extra/recipes-kernel/linux/linux-imx-3.0.35/mx6
/..paths../sources/meta-fsl-arm/recipes-kernel/linux/linux-imx-3.0.35/mx6
/..paths../sources/meta-fsl-arm/recipes-kernel/linux/linux-imx/mx6
/..paths../sources/meta-fsl-arm/recipes-kernel/linux/files/mx6
/..paths../sources/meta-belis3/recipes-kernel/linux/files/armv7a
/..paths../sources/meta-fsl-arm-extra/recipes-kernel/linux/linux-imx-3.0.35/armv7a
/..paths../sources/meta-fsl-arm/recipes-kernel/linux/linux-imx-3.0.35/armv7a
/..paths../sources/meta-fsl-arm/recipes-kernel/linux/linux-imx/armv7a
/..paths../sources/meta-fsl-arm/recipes-kernel/linux/files/armv7a
/..paths../sources/meta-belis3/recipes-kernel/linux/files/arm
/..paths../sources/meta-fsl-arm-extra/recipes-kernel/linux/linux-imx-3.0.35/arm
/..paths../sources/meta-fsl-arm/recipes-kernel/linux/linux-imx-3.0.35/arm
/..paths../sources/meta-fsl-arm/recipes-kernel/linux/linux-imx/arm
/..paths../sources/meta-fsl-arm/recipes-kernel/linux/files/arm
/..paths../sources/meta-belis3/recipes-kernel/linux/files/
/..paths../sources/meta-fsl-arm-extra/recipes-kernel/linux/linux-imx-3.0.35/
/..paths../sources/meta-fsl-arm/recipes-kernel/linux/linux-imx-3.0.35/
/..paths../sources/meta-fsl-arm/recipes-kernel/linux/linux-imx/
/..paths../sources/meta-fsl-arm/recipes-kernel/linux/files/
NOTE: Unpacking
/..paths../sources/meta-fsl-arm/recipes-kernel/linux/linux-imx-3.0.35/mx6dl/defconfig
to /..paths../build/tmp/work/medianode-poky-linux-gnueabi/linux-imx/3.0.35-r39.14/
----

As a consequence, it picks up a default Freescale-supplied 'defconfig'
rather than mine.

The "obvious" solution is to move my 'defconfig' under a directory
named 'medianode' or 'poky'.  What's less clear is what I should have
been doing in the first place and why, so that I can avoid getting
bitten by this kind of thing again.

Schwab

