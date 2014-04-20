Return-Path: <jeremy@rhtech.co.nz>
Received: from linuxplesk9.openhost.net.nz (linuxplesk9.openhost.net.nz
	[119.47.118.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D224BE00B5C
	for <yocto@yoctoproject.org>; Sat, 19 Apr 2014 22:37:27 -0700 (PDT)
Received: (qmail 30566 invoked from network); 20 Apr 2014 17:37:25 +1200
Received: from 122-61-40-229.jetstream.xtra.co.nz (HELO ?192.168.1.98?)
	(122.61.40.229)
	by linuxplesk9.openhost.net.nz with (DHE-RSA-AES128-SHA encrypted) SMTP;
	20 Apr 2014 17:37:25 +1200
Message-ID: <53535D16.8030008@rhtech.co.nz>
Date: Sun, 20 Apr 2014 17:37:26 +1200
From: Jeremy Cole-Baker <jeremy@rhtech.co.nz>
Organization: Riverhead Technology
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64;
	rv:24.0) Gecko/20100101 Thunderbird/24.4.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <534DAEF0.2000501@rhtech.co.nz> <5352E049.8050604@rhtech.co.nz>
	<20140419222452.GO11339@denix.org>
In-Reply-To: <20140419222452.GO11339@denix.org>
Subject: Re: No USB devices on BeagleBoard xM!
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: jeremy@rhtech.co.nz
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sun, 20 Apr 2014 05:37:33 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit

Hi, thanks for your reply.

I did have a modules file from the build, which I installed on my root 
fs as follows:

tar x -C _root/ -f 
modules–3.10.11+git0+363bd856c8_702040ac7c-r0-beagleboard-20140415194907.tgz

(_root is a link to the correct partition on the flash card). The file 
contained a number of directories and files which were installed under 
/lib/modules/3.10.11-yocto-standard/. I have verified that these were 
copied correctly.

Could I be missing one or more modules, because I haven't selected some 
option in the build somewhere?

Is there any way to find out what module it is trying to load (i.e. when 
it says "no such file or directory")?


On 20/04/2014 10:24 a.m., Denys Dmytriyenko wrote:
> On Sun, Apr 20, 2014 at 08:44:57AM +1200, Jeremy Cole-Baker wrote:
>>
>> Hi, I still can't figure out how to get the USB hardware working on
>> my BeagelBoard xM.
>>
>> I've managed to build a couple of different recipes for my
>> BeagleBoard (BeagleBoard xM Rev C), and also had a go at customising
>> it.  I think I've tried core-image-minimal and core-image-basic.
>>
>> The build works OK, and I can set up my micro SD card and get it to
>> boot. I see lots of messages about loading drivers during boot, and
>> I can log in to linux.
>>
>> However, the USB devices don't seem to be working. The built in
>> USB-Ethernet isn't there, and when I plug in a USB stick nothing
>> happens - nothing in /dev/ and no messages in the system log.
>>
>> I don't know whether this is something I missed in the build, or
>> some configuration I need to do. I also don't know whether it is
>> specific to the Beagle or a general problem. Unfortunately I am new
>> to Kernel builds and device drivers.
>>
>> Here's what I've looked into:
>>
>> The boot-up messages indicate that the USB drivers are loaded, e.g.:
>>
>> <snip>
>> usbcore: registered new interface driver usbfs
>> usbcore: registered new interface driver hub
>> usbcore: registered new device driver usb
>> ...
>> usbcore: registered new interface driver smsc75xx
>> usbcore: registered new interface driver smsc95xx
>> ...etc
>>
>> (I think smsc95xx is the USB-Ethernet chip on the beagle board xM).
>>
>> ehci_hcd: USB 2.0 'Enhanced' Host Controller (EHCI) Driver
>> ehci-omap: OMAP-EHCI Host Controller driver
>> ehci-omap 48064800.ehci: EHCI Host Controller
>> ehci-omap 48064800.ehci: new USB bus registered, assigned bus number 1
>> ehci-omap 48064800.ehci: irq 93, io mem 0x48064800
>> ehci-omap 48064800.ehci: USB 2.0 started, EHCI 1.00
>> hub 1-0:1.0: USB hub found
>> hub 1-0:1.0: 3 ports detected
>> usbcore: registered new interface driver usb-storage
>> musb-hdrc musb-hdrc.0.auto: musb_init_controller failed with status -6
>> mousedev: PS/2 mouse device common for all mice
>> ...Etc
>>
>> There's a modprobe error which occurs a couple of times:
>>
>> udevd[71]: starting version 175
>> modprobe: chdir(3.10.11-yocto-standard): No such file or directory
>
> Doesn't seem like you have modules installed in your rootfs ^^^
>
> If you build core-image-minimal, you then need to extract the modules from a
> tarball you got in the deplot area...
>
>
>> I also saw errors from the ethernet subsystem (?), along the lines
>> of "eth0: device not found" and "usb0: device not found". This
>> occurred during boot and also when I used "ifup eth0". I'm actually
>> seeing a different error now: "ifconfig: SIOCGIFFLAGS: No such
>> device". In either case, I think it's because something to do with
>> the actual USB hardware is missing or not configured.
>>
>> "lsmod" shows no modules loaded, i.e.:
>>
>> root@beagleboard:~# lsmod
>> Module Size Used by
>> root@beagleboard:~#
>>
>> Does this mean that the various device drivers, etc, above are built
>> in to the kernel?
>>
>> Any suggestions for how to diagnose / fix this problem? Anybody else
>> have experience with the BeagleBoard xM? I'm a bit lost.
>>
>> Thanks!
>>
>> Jeremy Cole-Baker
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>


-- 
Jeremy Cole-Baker


