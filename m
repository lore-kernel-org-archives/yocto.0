Return-Path: <andrew.wafaa@gmail.com>
Received: from mail-lb0-f176.google.com (mail-lb0-f176.google.com
	[209.85.217.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D78BFE01426
	for <yocto@yoctoproject.org>; Thu, 28 Jun 2012 06:49:39 -0700 (PDT)
Received: by lboj14 with SMTP id j14so3686036lbo.35
	for <yocto@yoctoproject.org>; Thu, 28 Jun 2012 06:49:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:date:x-google-sender-auth:message-id:subject
	:from:to:content-type;
	bh=tWDt4Jlc17xx2E8JKxghYQ97n9rIk+sErWQtSlh4f3A=;
	b=ia9WpFTEnqjyaW30oPaXnFdOgYbtRyLbxB/p8CczfIAiC9uU4Ch1PJpZECAM9jo7/x
	kyV7zxpEPd2xaLQ07XF4JlvXI7iExyw5ysocG0pjqprMP15dKlpE4+OwvewgtcKOKvzh
	Ly/3jBFxZ4WhO2W5lmK2TSDsgVvmnSJn0Vsa9tQG3ORRdr3xdLiQO0xFyjjjRpDFNGhP
	KG+zGlKB4WHGsRvk8t11D4XH7S58jQquT3tcPU3vBsK6gTJ2YffTlhAaKKvsBioC9YZP
	4ljCIuKtYY9uLwIFjEZwOsxwLP1o8O+YALdtb8fwLlOf2/A9hZSXopQADmXS1tFhqOVl
	hUlQ==
MIME-Version: 1.0
Received: by 10.112.85.225 with SMTP id k1mr1177944lbz.38.1340891378821; Thu,
	28 Jun 2012 06:49:38 -0700 (PDT)
Sender: andrew.wafaa@gmail.com
Received: by 10.112.38.234 with HTTP; Thu, 28 Jun 2012 06:49:38 -0700 (PDT)
Date: Thu, 28 Jun 2012 14:49:38 +0100
X-Google-Sender-Auth: 31IgihExmUp_vILGxDDCIwA5i-c
Message-ID: <CAO0oNxcVCBfEfJw9ucgqh+v7wPvBv_7iO-==jwA_ijmsfjfbmA@mail.gmail.com>
From: Andrew Wafaa <awafaa@opensuse.org>
To: yocto@yoctoproject.org
Subject: Looking for help in building a custom device tree based kernel
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 28 Jun 2012 13:49:40 -0000
Content-Type: text/plain; charset=UTF-8

Aloha,

I was wondering if someone could advise on how I would go about
creating a custom device tree based kernel?

I've created my meta-foo repo which includes my defconfig etc. The bit
I'm stuck on is how I would create the steps that I would manually do,
within Yocto. As in which files need what entries, below are the
manual steps I would do:

git clone git://kernel.repo.git
git checkout branch

I would then build a kernel zImage with:

make ARCH=arm platform_defconfig
make ARCH=arm CROSS_COMPILE=arm-linux-gnueabi- -j5 zImage

I then need to build and append the dtb:

git clone git://dts.repo.git
git checkout branch

I would then copy the motherboard.dtsi and processor.dts into
kernel.repo/arch/arm/boot/dts

Then do:
make ARCH=arm CROSS_COMPILE=arm-linux-gnueabi- rtsm_ve-cortex_a15x2.dtb

This creates a dtb entry in kernel.repo/arch/arm/boot

To append the blob to the kernel I do:

cat ./zImage ./rtsm_ve-cortex_a15x2.dtb | dd of=zimageProcessor.bin
bs=4 conv=sync

With the root tarballs I use manually I then have to create an
initramfs enabled rootfs by doing:

sudo sh -c 'find . | cpio --quiet -H newc -o | gzip -3 -n >
../filesystem.cpio.gz'

Now I'm not sure whether the last step is required if I use Yocto or
not, but I need to build the kernel with the dtb appended. Ant ideas?

Many thanks,

Andy

