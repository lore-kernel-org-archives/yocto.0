Return-Path: <denis@denix.org>
Received: from vms173017pub.verizon.net (vms173017pub.verizon.net
	[206.46.173.17])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5553CE00B5C
	for <yocto@yoctoproject.org>; Sat, 19 Apr 2014 15:25:14 -0700 (PDT)
Received: from gandalf.denix.org ([unknown] [71.191.205.189])
	by vms173017.mailsrvcs.net
	(Sun Java(tm) System Messaging Server 7u2-7.02 32bit (built Apr 16
	2009)) with ESMTPA id <0N4A007Q6U9HJW50@vms173017.mailsrvcs.net> for
	yocto@yoctoproject.org; Sat, 19 Apr 2014 17:24:58 -0500 (CDT)
Received: by gandalf.denix.org (Postfix, from userid 1000)	id 3B0AA20182; Sat,
	19 Apr 2014 18:24:53 -0400 (EDT)
Date: Sat, 19 Apr 2014 18:24:52 -0400
From: Denys Dmytriyenko <denis@denix.org>
To: Jeremy Cole-Baker <jeremy@rhtech.co.nz>
Message-id: <20140419222452.GO11339@denix.org>
References: <534DAEF0.2000501@rhtech.co.nz> <5352E049.8050604@rhtech.co.nz>
MIME-version: 1.0
In-reply-to: <5352E049.8050604@rhtech.co.nz>
User-Agent: Mutt/1.5.20 (2009-06-14)
Cc: yocto@yoctoproject.org
Subject: Re: No USB devices on BeagleBoard xM!
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
X-List-Received-Date: Sat, 19 Apr 2014 22:25:15 -0000
Content-type: text/plain; charset=us-ascii
Content-disposition: inline

On Sun, Apr 20, 2014 at 08:44:57AM +1200, Jeremy Cole-Baker wrote:
> 
> Hi, I still can't figure out how to get the USB hardware working on
> my BeagelBoard xM.
> 
> I've managed to build a couple of different recipes for my
> BeagleBoard (BeagleBoard xM Rev C), and also had a go at customising
> it.  I think I've tried core-image-minimal and core-image-basic.
> 
> The build works OK, and I can set up my micro SD card and get it to
> boot. I see lots of messages about loading drivers during boot, and
> I can log in to linux.
> 
> However, the USB devices don't seem to be working. The built in
> USB-Ethernet isn't there, and when I plug in a USB stick nothing
> happens - nothing in /dev/ and no messages in the system log.
> 
> I don't know whether this is something I missed in the build, or
> some configuration I need to do. I also don't know whether it is
> specific to the Beagle or a general problem. Unfortunately I am new
> to Kernel builds and device drivers.
> 
> Here's what I've looked into:
> 
> The boot-up messages indicate that the USB drivers are loaded, e.g.:
> 
> <snip>
> usbcore: registered new interface driver usbfs
> usbcore: registered new interface driver hub
> usbcore: registered new device driver usb
> ...
> usbcore: registered new interface driver smsc75xx
> usbcore: registered new interface driver smsc95xx
> ...etc
> 
> (I think smsc95xx is the USB-Ethernet chip on the beagle board xM).
> 
> ehci_hcd: USB 2.0 'Enhanced' Host Controller (EHCI) Driver
> ehci-omap: OMAP-EHCI Host Controller driver
> ehci-omap 48064800.ehci: EHCI Host Controller
> ehci-omap 48064800.ehci: new USB bus registered, assigned bus number 1
> ehci-omap 48064800.ehci: irq 93, io mem 0x48064800
> ehci-omap 48064800.ehci: USB 2.0 started, EHCI 1.00
> hub 1-0:1.0: USB hub found
> hub 1-0:1.0: 3 ports detected
> usbcore: registered new interface driver usb-storage
> musb-hdrc musb-hdrc.0.auto: musb_init_controller failed with status -6
> mousedev: PS/2 mouse device common for all mice
> ...Etc
> 
> There's a modprobe error which occurs a couple of times:
> 
> udevd[71]: starting version 175
> modprobe: chdir(3.10.11-yocto-standard): No such file or directory

Doesn't seem like you have modules installed in your rootfs ^^^

If you build core-image-minimal, you then need to extract the modules from a 
tarball you got in the deplot area...


> I also saw errors from the ethernet subsystem (?), along the lines
> of "eth0: device not found" and "usb0: device not found". This
> occurred during boot and also when I used "ifup eth0". I'm actually
> seeing a different error now: "ifconfig: SIOCGIFFLAGS: No such
> device". In either case, I think it's because something to do with
> the actual USB hardware is missing or not configured.
> 
> "lsmod" shows no modules loaded, i.e.:
> 
> root@beagleboard:~# lsmod
> Module Size Used by
> root@beagleboard:~#
> 
> Does this mean that the various device drivers, etc, above are built
> in to the kernel?
> 
> Any suggestions for how to diagnose / fix this problem? Anybody else
> have experience with the BeagleBoard xM? I'm a bit lost.
> 
> Thanks!
> 
> Jeremy Cole-Baker
> 
> -- 
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

