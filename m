Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9F3A5E0080D; Thu, 15 Sep 2016 06:57:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.analogue-micro.com (mail.analogue-micro.com
	[217.144.149.242])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 53815E0034A
	for <yocto@yoctoproject.org>; Thu, 15 Sep 2016 06:57:00 -0700 (PDT)
Received: by mail.analogue-micro.com (Postfix, from userid 999)
	id 4C5E068A019; Thu, 15 Sep 2016 14:57:00 +0100 (BST)
Received: from zeus.mlbassoc.com (unknown [10.8.0.2])
	by mail.analogue-micro.com (Postfix) with ESMTP id BDEC468A019;
	Thu, 15 Sep 2016 14:56:59 +0100 (BST)
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by zeus.mlbassoc.com (Postfix) with ESMTP id 77EE5674034E;
	Thu, 15 Sep 2016 15:56:59 +0200 (CEST)
To: yocto@yoctoproject.org
References: <1a502d33-73a4-be2e-a3dd-eca4649bc34e@mlbassoc.com>
	<CAF3SDA5NiRr=Fh4bHKVpSfYPVUHmGry7eO6nsg+nLhfZSjY0vQ@mail.gmail.com>
From: Gary Thomas <gary@mlbassoc.com>
Message-ID: <f2b763a5-7e40-cbb2-84ee-01691cd6c009@mlbassoc.com>
Date: Thu, 15 Sep 2016 15:56:59 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.2.0
MIME-Version: 1.0
In-Reply-To: <CAF3SDA5NiRr=Fh4bHKVpSfYPVUHmGry7eO6nsg+nLhfZSjY0vQ@mail.gmail.com>
Subject: Re: [meta-raspberrypi] WiFi
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
X-List-Received-Date: Thu, 15 Sep 2016 13:57:06 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 2016-09-15 15:32, Daniel. wrote:
> Garry, if you are facing problems posting and detailed description of
> your problem and by detailed I mean "I do X expecting Y but got Z"
> being Z errors, logs, outputs etc would help a lot people to help you.

A reasonable observation (although if you look through the records for
the past ~10 years, you can see that I know how to pose relevant questions!)
I'm sure that the answer will be obvious to anyone who has set up a RaspberryPi-3.

Anyway, for completeness, when my Rpi-3 board boots, I get a ton of these messages from the kernel:
[    8.737220] cfg80211: Calling CRDA to update world regulatory domain

Also, whenever I try to do anything with the WiFi device, I get this error:
   root@raspberrypi3:~# iw dev wlan0 scan
   command failed: Network is down (-100)

Here are the modules loaded into the kernel:
   root@raspberrypi3:~# lsmod
     Not tainted
   ipv6 343600 26 [permanent], Live 0x7f1f6000
   joydev 9044 0 - Live 0x7f1f0000
   evdev 10254 3 - Live 0x7f1e2000
   brcmfmac 179873 0 - Live 0x7f16c000
   brcmutil 5693 1 brcmfmac, Live 0x7f160000
   cfg80211 416259 1 brcmfmac, Live 0x7f03a000
   rfkill 16941 1 cfg80211, Live 0x7f026000
   bcm2835_rng 1763 0 - Live 0x7f022000
   bcm2835_gpiomem 2852 0 - Live 0x7f01e000
   uio_pdrv_genirq 2944 0 - Live 0x7f012000
   uio 8032 1 uio_pdrv_genirq, Live 0x7f000000

Perhaps I'm missing some firmware or driver for this WiFi device?  Note: I had
this working fine on my RaspberryPi-2 with an external [USB] dongle.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

