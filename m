Return-Path: <paul.betafive@gmail.com>
Received: from mail-vc0-f182.google.com (mail-vc0-f182.google.com
	[209.85.220.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 35DB6E00AEC
	for <yocto@yoctoproject.org>; Thu, 13 Mar 2014 13:32:50 -0700 (PDT)
Received: by mail-vc0-f182.google.com with SMTP id ks9so1718975vcb.41
	for <yocto@yoctoproject.org>; Thu, 13 Mar 2014 13:32:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=vkqONAmvV09bBHFPsfuG3hnm2Bwa8pFx5upP8ebB4s0=;
	b=xer+C/5n9MWlMcnSIsRTBmDHRAS5TAmzbfM4ckiZL/0gs2aCCYz8XpHsRD9oR+ucXX
	loyCKt9zw2DyjjzEw+wKKjOJ6Mdyaztt7DZRMvtB5XF4siXev75utsuWIkvt/B86Ajg1
	mI500lh0tK78r6prZoxVDTp4p+AS6wnXHUnQUcqYMtuYeQJtHJIdEwCwn7crkdHczyyi
	YorLaz/9WxGeX6KLWcy9Gb9CrriHJJ5OORH0l77Es4tQVydq80N0E4V62RgNcmN6fA2o
	OQbXSWn+n6o0z/6wz4HpXQRvoKwwcdWiGYtR7tzz3fcHm6fMg3SeLMh6a7IEHfEImMH/
	mu/Q==
X-Received: by 10.220.103.141 with SMTP id k13mr2962316vco.25.1394742769455;
	Thu, 13 Mar 2014 13:32:49 -0700 (PDT)
MIME-Version: 1.0
Sender: paul.betafive@gmail.com
Received: by 10.220.239.135 with HTTP; Thu, 13 Mar 2014 13:32:09 -0700 (PDT)
In-Reply-To: <CA+rwqNQgcrQ_Ee_3ABmLhRHh5ySk3izbOWf9Txa82=LVXnRCLg@mail.gmail.com>
References: <CA+rwqNQgcrQ_Ee_3ABmLhRHh5ySk3izbOWf9Txa82=LVXnRCLg@mail.gmail.com>
From: Paul Barker <paul@paulbarker.me.uk>
Date: Thu, 13 Mar 2014 20:32:09 +0000
X-Google-Sender-Auth: UAeQELmQy5zqhE9ILABAM9Wrths
Message-ID: <CANyK_8fyV-rokqVYWx7b=oskL-A3NXi1JDE6yH+oeta63xMtBw@mail.gmail.com>
To: Mateusz Kaczanowski <kaczanowski.mateusz@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Beagleboard booting kernel in qemu, halts
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
X-List-Received-Date: Thu, 13 Mar 2014 20:32:52 -0000
Content-Type: text/plain; charset=ISO-8859-1

On 13 March 2014 18:59, Mateusz Kaczanowski
<kaczanowski.mateusz@gmail.com> wrote:
> Hello everyone,
> I'm trying to run beagleboard image in qemu. So I've built the kernel and
> rootfs via yocto.
>
> But! Yocto generates zImage so I did:
> MACHINE=beagleboard bitbake virtual/kernel
> mkimage -A arm -O linux -T kernel -C none -a 0x80008000 -e 0x80008000 -n
> "Linux kernel" -d ./zImage uImage
>
> and then I'm  running the sdcard with
> qemu-system-arm -M beaglexm -drive if=sd,cache=writeback,file=/dev/sdb
> -clock unix -serial stdio
>
> Booting halts and nothing happends, no login prompt.
> I would appreciate ANY help, I'm really lame in that subject:/
>
> That is my output:
>

> Kernel command line: console=ttyO2,115200n8 mpurate=auto buddy=none
> camera=none vram=12M omapfb.mode=dvi:640x480MR-16@60 omapdss.def_disp=dvi
> root=/dev/mmcblk0p2 rw rootfstype=ext3 rootwait

Ignoring how gmail has wrapped it, this is the kernel command line.
It's putting the console on ttyO2 which is a serial port on the
Beagleboard xM. You need to somehow change it so the console is on
tty1 if you want it to appear on the screen in qemu.

Hope this helps,

-- 
Paul Barker

Email: paul@paulbarker.me.uk
http://www.paulbarker.me.uk

