Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 361D0E00B6C; Sun,  8 Jun 2014 20:42:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.3 required=5.0 tests=RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CF3CCE00A44
	for <yocto@yoctoproject.org>; Sun,  8 Jun 2014 20:42:41 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail.windriver.com (8.14.5/8.14.5) with ESMTP id s593gcu9014632
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Sun, 8 Jun 2014 20:42:38 -0700 (PDT)
Received: from server.local (128.224.22.209) by ALA-HCB.corp.ad.wrs.com
	(147.11.189.41) with Microsoft SMTP Server id 14.3.174.1;
	Sun, 8 Jun 2014 20:42:38 -0700
Message-ID: <53952DEE.6030907@windriver.com>
Date: Sun, 8 Jun 2014 23:45:50 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.9;
	rv:24.0) Gecko/20100101 Thunderbird/24.5.0
MIME-Version: 1.0
To: =?ISO-8859-1?Q?Daniel_Gro=DF?= <dgross@intronik.de>,
	<yocto@yoctoproject.org>
References: <CAJ0JmfWKrLGXAB+7PmRK-dw013kU_ASQpqvchc5nY34eMYhtwA@mail.gmail.com>
In-Reply-To: <CAJ0JmfWKrLGXAB+7PmRK-dw013kU_ASQpqvchc5nY34eMYhtwA@mail.gmail.com>
Subject: Re: beaglebone black usb device problem (daisy)
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
X-List-Received-Date: Mon, 09 Jun 2014 03:42:44 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 8bit

On 2014-06-03, 6:06 AM, Daniel Groß wrote:
> Hello there,
> I have successfully build several beaglebone (qt4embedded demo and
> sato+mono hard float) images using yocto 1.6 (daisy) for the beagle bone
> black.
>
> However USB devices (mouse, keyboard, anything) are only found during
> the first boot.
>
> I narrowed the problem down to the file "/etc/udev/cache.data". If I
> remove this file and boot again (using the serial console), USB works
> once for the next boot process.
>
> After some try and error, I was able to restart the USB enumeration by
> issuing a "udevadm trigger" command again using the serial console. That
> always works. To me it seems that USB root hub is not loaded by udev if
> the /etc/udev/cache.data file exists.
>
> The output of the trigger command is:
> root@beaglebone:~# udevadm trigger
> udevadm trigger
> 47401300.usb-phy supply vcc not found, using dummy regulator
> 47401b00.usb-phy supply vcc not found, using dummy regulator
> omap_rng 48310000.rng: OMAP Random Number Generator ver. 20
> root@beaglebone:~# musb-hdrc musb-hdrc.0.auto: MUSB HDRC host driver
> musb-hdrc musb-hdrc.0.auto: new USB bus registered, assigned bus number 1
> hub 1-0:1.0: USB hub found
> hub 1-0:1.0: 1 port detected
> musb-hdrc musb-hdrc.1.auto: MUSB HDRC host driver
> musb-hdrc musb-hdrc.1.auto: new USB bus registered, assigned bus number 2
> hub 2-0:1.0: USB hub found
> hub 2-0:1.0: 1 port detected
> usb 2-1: new low-speed USB device number 2 using musb-hdrc
> input: Logitech USB Optical Mouse as
> /devices/ocp.3/47400000.usb/47401c00.usb/musb-hdrc.1.auto/usb2/2-1/2-1:1.0/0003:046D:C00C.0001/input/input0
> hid-generic 0003:046D:C00C.0001: input: USB HID v1.10 Mouse [Logitech
> USB Optical Mouse] on usb-musb-hdrc.1.auto-1/input0
>
> The content of the /etc/udev/cache.data file is:
> root@beaglebone:~# cat /etc/udev/cache.data
> cat /etc/udev/cache.data
> Linux version 3.14.0-yocto-standard (daniel@daniel-ubuntu) (gcc version
> 4.8.2 (GCC) ) #1 PREEMPT Sat May 24 16:40:23 CEST
> 2014console=ttyO0,115200n8 root=/dev/mmcblk0p2 ro rootfstype=ext4
> rootwaitCharacter devices:1 mem2 pty3 ttyp4 /dev/vc/04 tty5 /dev/tty5
> /dev/console5 /dev/ptmx7 vcs10 misc13 input29 fb89 i2c90 mtd128 ptm136
> pts180 usb189 usb_device226 drm250 ttySDIO251 ttyO252 bsg253 watchdog254
> rtcBlock devices:1 ramdisk259 blkext8 sd31 mtdblock65 sd66 sd67 sd68
> sd69 sd70 sd71 sd128 sd129 sd130 sd131 sd132 sd133 sd134 sd135 sd179 mmc
>
>
> For the sake of completeness:
> root@beaglebone:~# uname -a
> uname -a
> Linux beaglebone 3.14.0-yocto-standard #1 PREEMPT Sat May 24 16:40:23
> CEST 2014 armv7l GNU/Linux
>
>
> Did anyone else see these problems? And is this a bug - or a feature?

I've never seen this myself. But it is worth logging this in the Yocto
bugzilla with a request for the QA team to confirm that they don't see
this during beaglebone testing.

Bruce

>
>
> Daniel
>
>


