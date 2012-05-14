Return-Path: <opensource@keylevel.com>
Received: from hxhsvr03.internetintuitive.net (hxhsvr03.internetintuitive.net
	[80.254.228.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D967CE013A6
	for <yocto@yoctoproject.org>; Mon, 14 May 2012 11:52:07 -0700 (PDT)
Received: from [109.224.129.17] (port=56539
	helo=macbook-pro.durham.keylevel.com)
	by hxhsvr03.internetintuitive.net with esmtpa (Exim 4.69)
	(envelope-from <opensource@keylevel.com>) id 1SU0NK-0005Wi-D7
	for yocto@yoctoproject.org; Mon, 14 May 2012 19:52:06 +0100
From: Chris Tapp <opensource@keylevel.com>
Date: Mon, 14 May 2012 19:52:03 +0100
Message-Id: <EE688041-FB89-4D1A-AE38-8DFF617C244D@keylevel.com>
To: Yocto Project <yocto@yoctoproject.org>
Mime-Version: 1.0 (Apple Message framework v1278)
X-Mailer: Apple Mail (2.1278)
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - hxhsvr03.internetintuitive.net
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - keylevel.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Subject: Kernel modules fail to compile for ARM
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
X-List-Received-Date: Mon, 14 May 2012 18:52:08 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

I'm trying to put a BSP together for an ARM system (Raspberry Pi, =
ARM1176JZF-S CPU). However, when I try and build the kernel I am getting =
a build failure when the kernel modules are compiled:

|   CC [M]  net/core/pktgen.o
| =
/media/SSD-RAID/build-edison-pi/tmp/work/pi-poky-linux-gnueabi/linux-yocto=
-3.0.18+git1+d386e09f316e03061c088d2b13a48605c20fb3a6_1+2bba211297d1004763=
7b8f49abd2c5415480ce4d-r3/linux/net/core/pktgen.c: In function =
'pktgen_if_show':
| =
/media/SSD-RAID/build-edison-pi/tmp/work/pi-poky-linux-gnueabi/linux-yocto=
-3.0.18+git1+d386e09f316e03061c088d2b13a48605c20fb3a6_1+2bba211297d1004763=
7b8f49abd2c5415480ce4d-r3/linux/net/core/pktgen.c:682:2: error: can't =
find a register in class 'GENERAL_REGS' while reloading 'asm'
| =
/media/SSD-RAID/build-edison-pi/tmp/work/pi-poky-linux-gnueabi/linux-yocto=
-3.0.18+git1+d386e09f316e03061c088d2b13a48605c20fb3a6_1+2bba211297d1004763=
7b8f49abd2c5415480ce4d-r3/linux/net/core/pktgen.c:682:2: error: can't =
find a register in class 'GENERAL_REGS' while reloading 'asm'
| =
/media/SSD-RAID/build-edison-pi/tmp/work/pi-poky-linux-gnueabi/linux-yocto=
-3.0.18+git1+d386e09f316e03061c088d2b13a48605c20fb3a6_1+2bba211297d1004763=
7b8f49abd2c5415480ce4d-r3/linux/net/core/pktgen.c:682:2: error: 'asm' =
operand has impossible constraints
| =
/media/SSD-RAID/build-edison-pi/tmp/work/pi-poky-linux-gnueabi/linux-yocto=
-3.0.18+git1+d386e09f316e03061c088d2b13a48605c20fb3a6_1+2bba211297d1004763=
7b8f49abd2c5415480ce4d-r3/linux/net/core/pktgen.c:682:2: error: 'asm' =
operand has impossible constraints
| make[4]: *** [net/core/pktgen.o] Error 1

As a test, I __think__ I've modified my machine configuration so that it =
is the same as the BeagleBoard, but that also get the same even though =
the use of the BeagleBoard machine itself compiles. The only difference =
is I am trying to use the 3.0 kernel.

I see that the 3.0.bbappend doesn't list beagleboard as a 'compatible' =
machine but 2.6.37 does (under 6.0.1). Is what I see a known issue with =
the 3.0 kernel, or is there something else I can check?

Chris Tapp

opensource@keylevel.com
www.keylevel.com




