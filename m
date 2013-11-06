Return-Path: <hans.beckerus@gmail.com>
Received: from mail-oa0-f42.google.com (mail-oa0-f42.google.com
	[209.85.219.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EC99CE017DA
	for <yocto@yoctoproject.org>; Wed,  6 Nov 2013 03:32:06 -0800 (PST)
Received: by mail-oa0-f42.google.com with SMTP id l6so2024262oag.29
	for <yocto@yoctoproject.org>; Wed, 06 Nov 2013 03:32:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=6V7bG3WNHu+hlU4z36wovAXrTYpx8RIZQyMb83tDxQM=;
	b=xh3NvbxEsXm++her5gJdC0xM9HYP47MZWmsABoHnzymZ3narzr3XqDQHVztkIYSFgz
	d0PqobS9TE6UmmmOQJrq+nq4w7tAeC2Yk82hYVBhk64yGtqHs6IdJhE/veFwDoIZWbHn
	P53umU6LMNfSMf9tS6vhrVrr05vzHFYY+RPTvBN7KDSbewQvXurKsA7WS7bf9279eumr
	h/nbyCN57fZFB6lxPNSIhv72Uys9DCaA6sAaallo2NFlTAkXYC4i+BxxEXuL3EitMlDC
	1turRK4Ss3/+awBU9Jr1arHrij4C8Vh08K5Hb0eRC22Y2adHDXQFqcIvBhnDlHcpuJb2
	gGeA==
MIME-Version: 1.0
X-Received: by 10.182.99.231 with SMTP id et7mr2371698obb.10.1383737525607;
	Wed, 06 Nov 2013 03:32:05 -0800 (PST)
Received: by 10.182.44.8 with HTTP; Wed, 6 Nov 2013 03:32:05 -0800 (PST)
Date: Wed, 6 Nov 2013 12:32:05 +0100
Message-ID: <CAFyqS9q-SbkFD2t=1dRfLqv3KzNiGTGQUAkbRa9=tmrxuHZM-g@mail.gmail.com>
From: =?ISO-8859-1?Q?Hans_Beck=E9rus?= <hans.beckerus@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: gcc-cross-canadian-arm: found library in wrong location
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
X-List-Received-Date: Wed, 06 Nov 2013 11:32:07 -0000
Content-Type: text/plain; charset=ISO-8859-1

Hi, I am getting the below error when populating the sdk for our Yocto
1.5 based image.

WARNING: QA Issue: gcc-cross-canadian-arm: found library in wrong
location: /opt/poky/1.5/sysroots/x86_64-pokysdk-linux/usr/libexec/arm-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.8.1/liblto_plugin.so.0.0.0
gcc-cross-canadian-arm: found library in wrong location:
/opt/poky/1.5/sysroots/x86_64-pokysdk-linux/usr/libexec/arm-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.8.1/liblto_plugin.so.0
gcc-cross-canadian-arm: found library in wrong location:
/opt/poky/1.5/sysroots/x86_64-pokysdk-linux/usr/libexec/arm-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.8.1/liblto_plugin.so

Never got this on Yocto 1.4. I am not even planning of installing
anything in /opt so this really came out of nowhere. There is nothing
installed in /opt at the moment.
Did it actually expect to find something in /opt? And in that case,
how can it? It can not know where the toolchain will be installed!?
Somebody that can shed some light on this one? Can we safely ignore it?

Thanks.
Hans

---

Build Configuration:
BB_VERSION        = "1.20.0"
BUILD_SYS         = "x86_64-linux"
NATIVELSBSTRING   = "SUSE-LINUX-11"
TARGET_SYS        = "arm-poky-linux-gnueabi"
MACHINE           = "zynq-zc706"
DISTRO            = "poky"
DISTRO_VERSION    = "1.5"
TUNE_FEATURES     = "armv7a vfp cortexa9"
TARGET_FPU        = "vfp"
meta
meta-yocto
meta-yocto-bsp    = "dora:75bed4086eb83f1d24c31392f3dd54aa5c3679b1"
meta-oe           = "dora:513e7ca20ddd0a5c3b649bf292a67c3e0473d3a8"

