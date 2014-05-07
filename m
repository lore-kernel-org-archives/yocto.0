Return-Path: <andreas@galauner.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C132AE0070F; Wed,  7 May 2014 08:42:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=none autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
X-Greylist: delayed 555 seconds by postgrey-1.32 at yocto-www;
	Wed, 07 May 2014 08:42:47 PDT
Received: from server.galauner.de (server.galauner.de [144.76.20.253])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1DB11E00480
	for <yocto@yoctoproject.org>; Wed,  7 May 2014 08:42:47 -0700 (PDT)
Received: from [192.168.178.29] (ip-178-202-33-93.unitymediagroup.de
	[178.202.33.93])
	by server.galauner.de (Postfix) with ESMTPSA id 33AB840B66
	for <yocto@yoctoproject.org>; Wed,  7 May 2014 17:33:30 +0200 (CEST)
Message-ID: <536A5249.9030907@galauner.de>
Date: Wed, 07 May 2014 17:33:29 +0200
From: Andreas Galauner <andreas@galauner.de>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.5.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
X-Enigmail-Version: 1.6
Subject: linux-yocto custom device tree in overlay
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
X-List-Received-Date: Wed, 07 May 2014 15:42:50 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Hi Yocto Community,

I'm currently trying to build a custom image for a beaglebone black for
which I need to enable the can-controllers on the SoC. I managed to
create an overlay which already deals with building a few tools for CAN
communication, I created a kernel config snippet for linux-yocto to
enable CAN-support in the kernel and it already works with a USB
transceiver.

Now I need to modify the device tree for the board to enable the SoC
controllers. How do I put the device tree into my overlay? I tried
several ways, but the kernel buildsystem doesn't seem to find the dts
file to be compiled.

That definitely doesn't work:
> SRC_URI += "file://can.cfg \
>             file://am335x-boneblack-cansniff.dts"
> KERNEL_DEVICETREE = "am335x-boneblack-cansniff.dtb"

Any ideas? Google wasn't too fruitful either.
With non-yocto kernels I always put the device tree into the whole path
like 'git/arch/arm/boot/dts/mydevicetree.dts'  but that also doesn't
seem to work on linux-yocto because it uses another layout in its
working directory.

I'd rather not want to create my own git repo for linux-yocto like I did
for another project where I needed the same.

Thanks for your help,
- Andy

