Return-Path: <Hollis_Blanchard@mentor.com>
Received: from relay1.mentorg.com (relay1.mentorg.com [192.94.38.131])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 95ABAE0044A
	for <yocto@yoctoproject.org>; Tue, 14 Feb 2012 16:12:47 -0800 (PST)
Received: from svr-orw-fem-01.mgc.mentorg.com ([147.34.98.93])
	by relay1.mentorg.com with esmtp 
	id 1RxSUJ-0000fg-6x from Hollis_Blanchard@mentor.com 
	for yocto@yoctoproject.org; Tue, 14 Feb 2012 16:12:47 -0800
Received: from SVR-ORW-FEM-05.mgc.mentorg.com ([147.34.97.43]) by
	svr-orw-fem-01.mgc.mentorg.com over TLS secured channel with
	Microsoft SMTPSVC(6.0.3790.4675); Tue, 14 Feb 2012 16:12:47 -0800
Received: from [172.30.11.25] (147.34.91.1) by svr-orw-fem-05.mgc.mentorg.com
	(147.34.97.43) with Microsoft SMTP Server id 14.1.289.1;
	Tue, 14 Feb 2012 16:12:46 -0800
Message-ID: <4F3AF87F.8010806@mentor.com>
Date: Tue, 14 Feb 2012 16:12:47 -0800
From: Hollis Blanchard <hollis_blanchard@mentor.com>
Organization: Mentor Graphics, Embedded Systems Division
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:9.0) Gecko/20111222 Thunderbird/9.0
MIME-Version: 1.0
To: <yocto@yoctoproject.org>
X-OriginalArrivalTime: 15 Feb 2012 00:12:47.0100 (UTC)
	FILETIME=[8BCC6BC0:01CCEB76]
Subject: missing USB gadget support on beagleboard?
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
X-List-Received-Date: Wed, 15 Feb 2012 00:12:47 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

Hi, I'm sure I'm missing something simple, but I just built Poky from 
git for beagleboard, and can't figure out USB networking. I expected to 
find g_cdc and g_ether modules in 
/lib/modules/3.0.18-yocto-standard+/kernel/drivers/usb, but that 
directory doesn't actually exist (I guess the drivers are built-in to 
this kernel).

I have MACHINE ??= beagleboard in local.conf, and "bitbake 
core-image-minimal" did produce a working kernel, uboot, etc. I see some 
USB messages at boot (see below), but although cdc_ether is mentioned, 
ifconfig -a lists only loopback.

Any suggestions? Thanks!

usbcore: registered new interface driver kaweth
pegasus: v0.6.14 (2006/09/27), Pegasus/Pegasus II USB Ethernet driver
usbcore: registered new interface driver pegasus
usbcore: registered new interface driver asix
usbcore: registered new interface driver cdc_ether
usbcore: registered new interface driver dm9601
usbcore: registered new interface driver smsc75xx
usbcore: registered new interface driver smsc95xx
usbcore: registered new interface driver net1080
usbcore: registered new interface driver cdc_subset
usbcore: registered new interface driver zaurus
usbcore: registered new interface driver MOSCHIP usb-ethernet driver
usbcore: registered new interface driver int51x1
cdc_ncm: 04-Aug-2011
usbcore: registered new interface driver cdc_ncm
console [netcon0] enabled
netconsole: network logging started
ehci_hcd: USB 2.0 'Enhanced' Host Controller (EHCI) Driver
_regulator_get: ehci-omap.0 supply hsusb0 not found, using dummy regulator
_regulator_get: ehci-omap.0 supply hsusb1 not found, using dummy regulator
ehci-omap ehci-omap.0: OMAP-EHCI Host Controller
ehci-omap ehci-omap.0: new USB bus registered, assigned bus number 1
ehci-omap ehci-omap.0: irq 77, io mem 0x48064800
ehci-omap ehci-omap.0: USB 2.0 started, EHCI 1.00
hub 1-0:1.0: USB hub found
hub 1-0:1.0: 3 ports detected
Initializing USB Mass Storage driver...
usbcore: registered new interface driver usb-storage
USB Mass Storage support registered.

-- 
Hollis Blanchard
Mentor Graphics, Embedded Systems Division


