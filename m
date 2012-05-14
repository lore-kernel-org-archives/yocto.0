Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0C5B5E013BB
	for <yocto@yoctoproject.org>; Mon, 14 May 2012 12:05:58 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id q4EJ5ltF014976
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 14 May 2012 12:05:47 -0700 (PDT)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Mon, 14 May 2012 12:05:47 -0700
Message-ID: <4FB15788.80900@windriver.com>
Date: Mon, 14 May 2012 15:05:44 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:12.0) Gecko/20120430 Thunderbird/12.0.1
MIME-Version: 1.0
To: Chris Tapp <opensource@keylevel.com>
References: <EE688041-FB89-4D1A-AE38-8DFF617C244D@keylevel.com>
In-Reply-To: <EE688041-FB89-4D1A-AE38-8DFF617C244D@keylevel.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Kernel modules fail to compile for ARM
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
X-List-Received-Date: Mon, 14 May 2012 19:05:58 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 12-05-14 02:52 PM, Chris Tapp wrote:
> I'm trying to put a BSP together for an ARM system (Raspberry Pi, ARM1176JZF-S CPU). However, when I try and build the kernel I am getting a build failure when the kernel modules are compiled:
>
> |   CC [M]  net/core/pktgen.o
> | /media/SSD-RAID/build-edison-pi/tmp/work/pi-poky-linux-gnueabi/linux-yocto-3.0.18+git1+d386e09f316e03061c088d2b13a48605c20fb3a6_1+2bba211297d10047637b8f49abd2c5415480ce4d-r3/linux/net/core/pktgen.c: In function 'pktgen_if_show':
> | /media/SSD-RAID/build-edison-pi/tmp/work/pi-poky-linux-gnueabi/linux-yocto-3.0.18+git1+d386e09f316e03061c088d2b13a48605c20fb3a6_1+2bba211297d10047637b8f49abd2c5415480ce4d-r3/linux/net/core/pktgen.c:682:2: error: can't find a register in class 'GENERAL_REGS' while reloading 'asm'
> | /media/SSD-RAID/build-edison-pi/tmp/work/pi-poky-linux-gnueabi/linux-yocto-3.0.18+git1+d386e09f316e03061c088d2b13a48605c20fb3a6_1+2bba211297d10047637b8f49abd2c5415480ce4d-r3/linux/net/core/pktgen.c:682:2: error: can't find a register in class 'GENERAL_REGS' while reloading 'asm'
> | /media/SSD-RAID/build-edison-pi/tmp/work/pi-poky-linux-gnueabi/linux-yocto-3.0.18+git1+d386e09f316e03061c088d2b13a48605c20fb3a6_1+2bba211297d10047637b8f49abd2c5415480ce4d-r3/linux/net/core/pktgen.c:682:2: error: 'asm' operand has impossible constraints
> | /media/SSD-RAID/build-edison-pi/tmp/work/pi-poky-linux-gnueabi/linux-yocto-3.0.18+git1+d386e09f316e03061c088d2b13a48605c20fb3a6_1+2bba211297d10047637b8f49abd2c5415480ce4d-r3/linux/net/core/pktgen.c:682:2: error: 'asm' operand has impossible constraints
> | make[4]: *** [net/core/pktgen.o] Error 1
>
> As a test, I __think__ I've modified my machine configuration so that it is the same as the BeagleBoard, but that also get the same even though the use of the BeagleBoard machine itself compiles. The only difference is I am trying to use the 3.0 kernel.
>
> I see that the 3.0.bbappend doesn't list beagleboard as a 'compatible' machine but 2.6.37 does (under 6.0.1). Is what I see a known issue with the 3.0 kernel, or is there something else I can check?

It was a matter of time and energy and the lack of an urgent need to
update things.

The board does work on the newer kernels (obviously), so trying the
same thing against the 3.2+ kernel would be a good starting point.

Bruce

>
> Chris Tapp
>
> opensource@keylevel.com
> www.keylevel.com
>
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


