Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ED851E017C9
	for <yocto@yoctoproject.org>; Thu, 31 Oct 2013 03:27:32 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id A3AECF811D9; Thu, 31 Oct 2013 04:27:29 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham version=3.3.2
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 3F18DF811D7;
	Thu, 31 Oct 2013 04:27:25 -0600 (MDT)
Message-ID: <5272309D.3000508@mlbassoc.com>
Date: Thu, 31 Oct 2013 04:27:41 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <CANwz6nxT34jJGydYGe=snHHijwMdMOKdOgnxQWCp0KGkBN4OHw@mail.gmail.com>	<CAMKF1spw=Kr99nmVHjAw8PELK6E768RBpgxLCZFMcdMyConSEg@mail.gmail.com>
	<CANwz6nyYTVxmNfxK2kK0Z54uDw+Yq=RRTzmpXvJz19MDCB47MA@mail.gmail.com>
In-Reply-To: <CANwz6nyYTVxmNfxK2kK0Z54uDw+Yq=RRTzmpXvJz19MDCB47MA@mail.gmail.com>
Subject: Re: adding a udev entry for a camera
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
X-List-Received-Date: Thu, 31 Oct 2013 10:27:33 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2013-10-30 19:12, Edward Vidal wrote:
> Hello,
> This is when I connect the camera
> udevadm monitor test
> monitor will print the received events for:
> UDEV - the event which udev sends out after rule processing
> KERNEL - the kernel uevent
>
> KERNEL[803.263336] add      /devices/platform/usbhs_omap/ehci-omap.0/usb1/1-2/1-2.3/1-2.3.4 (usb)
> KERNEL[803.267456] add      /devices/platform/usbhs_omap/ehci-omap.0/usb1/1-2/1-2.3/1-2.3.4/1-2.3.4:1.0 (usb)
> KERNEL[803.269287] add      /devices/platform/usbhs_omap/ehci-omap.0/usb1/1-2/1-2.3/1-2.3.4/1-2.3.4:1.1 (usb)
> KERNEL[803.269958] add      /devices/platform/usbhs_omap/ehci-omap.0/usb1/1-2/1-2.3/1-2.3.4/1-2.3.4:1.2 (usb)
> KERNEL[803.270721] add      /devices/platform/usbhs_omap/ehci-omap.0/usb1/1-2/1-2.3/1-2.3.4/1-2.3.4:1.3 (usb)
> KERNEL[803.276214] add      /devices/platform/usbhs_omap/ehci-omap.0/usb1/1-2/1-2.3/1-2.3.4/usb_device/usbdev1.15 (usb_device)**********
> UDEV  [803.277191] add      /devices/platform/usbhs_omap/ehci-omap.0/usb1/1-2/1-2.3/1-2.3.4 (usb)
> UDEV  [803.306091] add      /devices/platform/usbhs_omap/ehci-omap.0/usb1/1-2/1-2.3/1-2.3.4/usb_device/usbdev1.15 (usb_device)
> UDEV  [803.318603] add      /devices/platform/usbhs_omap/ehci-omap.0/usb1/1-2/1-2.3/1-2.3.4/1-2.3.4:1.2 (usb)
> UDEV  [803.324249] add      /devices/platform/usbhs_omap/ehci-omap.0/usb1/1-2/1-2.3/1-2.3.4/1-2.3.4:1.1 (usb)
> UDEV  [803.329712] add      /devices/platform/usbhs_omap/ehci-omap.0/usb1/1-2/1-2.3/1-2.3.4/1-2.3.4:1.0 (usb)
> UDEV  [803.333160] add      /devices/platform/usbhs_omap/ehci-omap.0/usb1/1-2/1-2.3/1-2.3.4/1-2.3.4:1.3 (usb)
>
> still no /dev/video0
> ls -la /dev/v*
> crw-rw---- 1 root tty 7,   0 Jan  1  2000 /dev/vcs
> crw-rw---- 1 root tty 7,   1 Jan  1  2000 /dev/vcs1
> crw-rw---- 1 root tty 7,   2 Jan  1  2000 /dev/vcs2
> crw-rw---- 1 root tty 7,   3 Oct 29 13:51 /dev/vcs3
> crw-rw---- 1 root tty 7, 128 Jan  1  2000 /dev/vcsa
> crw-rw---- 1 root tty 7, 129 Jan  1  2000 /dev/vcsa1
> crw-rw---- 1 root tty 7, 130 Jan  1  2000 /dev/vcsa2
> crw-rw---- 1 root tty 7, 131 Oct 29 13:51 /dev/vcsa3
> root@beagleboard:~# lsusb
> Bus 001 Device 002: ID 0424:9514 Standard Microsystems Corp.
> Bus 001 Device 001: ID 1d6b:0002 Linux Foundation 2.0 root hub
> Bus 002 Device 001: ID 1d6b:0002 Linux Foundation 2.0 root hub
> Bus 001 Device 003: ID 0424:ec00 Standard Microsystems Corp.
> Bus 001 Device 004: ID 0409:0059 NEC Corp. HighSpeed Hub
> Bus 001 Device 005: ID 413c:2005 Dell Computer Corp. RT7D50 Keyboard
> Bus 001 Device 006: ID 046d:c001 Logitech, Inc. N48/M-BB48 [FirstMouse Plus]
> Bus 001 Device 015: ID 046d:082d Logitech, Inc. ***********************************************************************************
>
>
> udevadm monitor --udev
> monitor will print the received events for:
> UDEV - the event which udev sends out after rule processing
> camera removed*****************************************************
> UDEV  [1325.916811] remove   /devices/platform/usbhs_omap/ehci-omap.0/usb1/1-2/1-2.3/1-2.3.4/1-2.3.4:1.1 (usb)
> UDEV  [1325.918489] remove   /devices/platform/usbhs_omap/ehci-omap.0/usb1/1-2/1-2.3/1-2.3.4/1-2.3.4:1.0 (usb)
> UDEV  [1325.919282] remove   /devices/platform/usbhs_omap/ehci-omap.0/usb1/1-2/1-2.3/1-2.3.4/1-2.3.4:1.2 (usb)
> UDEV  [1325.923005] remove   /devices/platform/usbhs_omap/ehci-omap.0/usb1/1-2/1-2.3/1-2.3.4/1-2.3.4:1.3 (usb)
> UDEV  [1325.928437] remove   /devices/platform/usbhs_omap/ehci-omap.0/usb1/1-2/1-2.3/1-2.3.4/usb_device/usbdev1.15 (usb_device)
> UDEV  [1325.932709] remove   /devices/platform/usbhs_omap/ehci-omap.0/usb1/1-2/1-2.3/1-2.3.4 (usb)
> camera added ***************************************************************************
> UDEV  [1329.344727] add      /devices/platform/usbhs_omap/ehci-omap.0/usb1/1-2/1-2.3/1-2.3.4 (usb)
> UDEV  [1329.376313] add      /devices/platform/usbhs_omap/ehci-omap.0/usb1/1-2/1-2.3/1-2.3.4/usb_device/usbdev1.16 (usb_device)
> UDEV  [1329.389008] add      /devices/platform/usbhs_omap/ehci-omap.0/usb1/1-2/1-2.3/1-2.3.4/1-2.3.4:1.2 (usb)
> UDEV  [1329.396241] add      /devices/platform/usbhs_omap/ehci-omap.0/usb1/1-2/1-2.3/1-2.3.4/1-2.3.4:1.1 (usb)
> UDEV  [1329.401795] add      /devices/platform/usbhs_omap/ehci-omap.0/usb1/1-2/1-2.3/1-2.3.4/1-2.3.4:1.0 (usb)
> UDEV  [1329.406739] add      /devices/platform/usbhs_omap/ehci-omap.0/usb1/1-2/1-2.3/1-2.3.4/1-2.3.4:1.3 (usb)
>
> This is what I get in /var/log/messages
> Oct 29 14:17:28 beagleboard user.info <http://user.info> kernel: usb 1-2.3.4: USB disconnect, device number 16
> Oct 29 14:17:31 beagleboard user.info <http://user.info> kernel: usb 1-2.3.4: new high-speed USB device number 17 using ehci-omap
> Is there anything else that I can test  / provide

What version of the Linux kernel are you using?

Are you sure that there is a driver available for this camera?  Does it work in your laptop/desktop?

n.b. This question is probably better suited elsewhere as it is not really a Yocto issue.  Maybe try:
   linux-media@vger.kernel.org

> Thanks
>
>
> On Wed, Oct 30, 2013 at 5:58 PM, Khem Raj <raj.khem@gmail.com <mailto:raj.khem@gmail.com>> wrote:
>
>     On Wed, Oct 30, 2013 at 1:51 PM, Edward Vidal <vidal.develone@gmail.com <mailto:vidal.develone@gmail.com>> wrote:
>     > Hello,
>     > I am trying to add a c920 camera to my systems.  I am not getting a
>     > /dev/video0.
>     > lsusb --verbose shows the HD Pro Webcam C920
>     > Bus 001 Device 007: ID 046d:082d Logitech, Inc.
>     > Device Descriptor:
>     >   bLength                18
>     >   bDescriptorType         1
>     >   bcdUSB               2.00
>     >   bDeviceClass          239 Miscellaneous Device
>     >   bDeviceSubClass         2 ?
>     >   bDeviceProtocol         1 Interface Association
>     >   bMaxPacketSize0        64
>     >   idVendor           0x046d Logitech, Inc.
>     >   idProduct          0x082d
>     >   bcdDevice            0.11
>     >   iManufacturer           0
>     >   iProduct                2 HD Pro Webcam C920
>     >   iSerial                 1 211EF9AF
>     >   bNumConfigurations      1
>     > plus much more information
>     >
>     > I created /etc/udev/rules.d/10-c920.rules
>     > SUBSYSTEM=="video4linux", BUS=="usb", ATTRS{idvendor}=="0x046d",
>     > ATTRS{idProduct}=="0x082d", NAME="video0", MODE:="0660"
>     >
>     > mknod /dev/video0 c 81 0
>     >
>     > when I v4l2-ctl --all error no /dev/video0
>     > Any and all help will be appreciated.
>
>     you can check if udev rule is infact kicking in. use udevadm monitor/test
>
>     > Thanks
>     >
>     >
>     > _______________________________________________
>     > yocto mailing list
>     >yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>     >https://lists.yoctoproject.org/listinfo/yocto
>     >
>
>
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

