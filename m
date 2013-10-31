Return-Path: <raj.khem@gmail.com>
Received: from mail-ie0-f169.google.com (mail-ie0-f169.google.com
	[209.85.223.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 37290E0174D
	for <yocto@yoctoproject.org>; Thu, 31 Oct 2013 07:42:29 -0700 (PDT)
Received: by mail-ie0-f169.google.com with SMTP id ar20so5263265iec.0
	for <yocto@yoctoproject.org>; Thu, 31 Oct 2013 07:42:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=TqjvLZavl7RosQcsSWWL6CVKEEuUru6/Rr2IFi585Ks=;
	b=RjB0jRIbF1nwAjJPWc6Qj+vSEMD4Xqig2jDZXK+KWtGhqeudkzYzoZIcjBQ3EQZvte
	EoGGjF8P7HzZLzxCMYQgC5dCr432hiwn23GGxLHTgAWeabONweuCA/xjNZ6+5KRO2lth
	Ed+ET+5FkJNkv3qaI1kIESNM82461/fBFocwund3IKpu7U5tKicsg9/dXYSqOEWREvEE
	An+rd+Zv5Chlx6+bRmN3ucE7oOYVVyF0efJ3+y+CjsoQ8kovYnN1JgnbBqrwMJk/CCtH
	+gBUUS9qidFmmUM4twYV4m1CFAgeXRdx0O61izDU4eaXbdwWvSc95Wbc4gisQUTkJvTt
	2xbg==
X-Received: by 10.42.64.74 with SMTP id f10mr327982ici.86.1383230549418; Thu,
	31 Oct 2013 07:42:29 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.50.219.195 with HTTP; Thu, 31 Oct 2013 07:41:58 -0700 (PDT)
In-Reply-To: <CANwz6nyYTVxmNfxK2kK0Z54uDw+Yq=RRTzmpXvJz19MDCB47MA@mail.gmail.com>
References: <CANwz6nxT34jJGydYGe=snHHijwMdMOKdOgnxQWCp0KGkBN4OHw@mail.gmail.com>
	<CAMKF1spw=Kr99nmVHjAw8PELK6E768RBpgxLCZFMcdMyConSEg@mail.gmail.com>
	<CANwz6nyYTVxmNfxK2kK0Z54uDw+Yq=RRTzmpXvJz19MDCB47MA@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 31 Oct 2013 07:41:58 -0700
Message-ID: <CAMKF1spP+BYrodrAoWzO=ZCfDqhpN=1-BnmDMr80-_f+pupdtQ@mail.gmail.com>
To: Edward Vidal <vidal.develone@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
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
X-List-Received-Date: Thu, 31 Oct 2013 14:42:30 -0000
Content-Type: text/plain; charset=UTF-8

On Wed, Oct 30, 2013 at 6:12 PM, Edward Vidal <vidal.develone@gmail.com> wrote:
> Hello,
> This is when I connect the camera
> udevadm monitor test
> monitor will print the received events for:
> UDEV - the event which udev sends out after rule processing
> KERNEL - the kernel uevent
>
> KERNEL[803.263336] add
> /devices/platform/usbhs_omap/ehci-omap.0/usb1/1-2/1-2.3/1-2.3.4 (usb)
> KERNEL[803.267456] add
> /devices/platform/usbhs_omap/ehci-omap.0/usb1/1-2/1-2.3/1-2.3.4/1-2.3.4:1.0
> (usb)
> KERNEL[803.269287] add
> /devices/platform/usbhs_omap/ehci-omap.0/usb1/1-2/1-2.3/1-2.3.4/1-2.3.4:1.1
> (usb)
> KERNEL[803.269958] add
> /devices/platform/usbhs_omap/ehci-omap.0/usb1/1-2/1-2.3/1-2.3.4/1-2.3.4:1.2
> (usb)
> KERNEL[803.270721] add
> /devices/platform/usbhs_omap/ehci-omap.0/usb1/1-2/1-2.3/1-2.3.4/1-2.3.4:1.3
> (usb)
> KERNEL[803.276214] add
> /devices/platform/usbhs_omap/ehci-omap.0/usb1/1-2/1-2.3/1-2.3.4/usb_device/usbdev1.15
> (usb_device)**********
> UDEV  [803.277191] add
> /devices/platform/usbhs_omap/ehci-omap.0/usb1/1-2/1-2.3/1-2.3.4 (usb)
> UDEV  [803.306091] add
> /devices/platform/usbhs_omap/ehci-omap.0/usb1/1-2/1-2.3/1-2.3.4/usb_device/usbdev1.15
> (usb_device)
> UDEV  [803.318603] add
> /devices/platform/usbhs_omap/ehci-omap.0/usb1/1-2/1-2.3/1-2.3.4/1-2.3.4:1.2
> (usb)
> UDEV  [803.324249] add
> /devices/platform/usbhs_omap/ehci-omap.0/usb1/1-2/1-2.3/1-2.3.4/1-2.3.4:1.1
> (usb)
> UDEV  [803.329712] add
> /devices/platform/usbhs_omap/ehci-omap.0/usb1/1-2/1-2.3/1-2.3.4/1-2.3.4:1.0
> (usb)
> UDEV  [803.333160] add
> /devices/platform/usbhs_omap/ehci-omap.0/usb1/1-2/1-2.3/1-2.3.4/1-2.3.4:1.3
> (usb)
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
> Bus 001 Device 015: ID 046d:082d Logitech, Inc.
> ***********************************************************************************
>
>
> udevadm monitor --udev
> monitor will print the received events for:
> UDEV - the event which udev sends out after rule processing
> camera removed*****************************************************
> UDEV  [1325.916811] remove
> /devices/platform/usbhs_omap/ehci-omap.0/usb1/1-2/1-2.3/1-2.3.4/1-2.3.4:1.1
> (usb)
> UDEV  [1325.918489] remove
> /devices/platform/usbhs_omap/ehci-omap.0/usb1/1-2/1-2.3/1-2.3.4/1-2.3.4:1.0
> (usb)
> UDEV  [1325.919282] remove
> /devices/platform/usbhs_omap/ehci-omap.0/usb1/1-2/1-2.3/1-2.3.4/1-2.3.4:1.2
> (usb)
> UDEV  [1325.923005] remove
> /devices/platform/usbhs_omap/ehci-omap.0/usb1/1-2/1-2.3/1-2.3.4/1-2.3.4:1.3
> (usb)
> UDEV  [1325.928437] remove
> /devices/platform/usbhs_omap/ehci-omap.0/usb1/1-2/1-2.3/1-2.3.4/usb_device/usbdev1.15
> (usb_device)
> UDEV  [1325.932709] remove
> /devices/platform/usbhs_omap/ehci-omap.0/usb1/1-2/1-2.3/1-2.3.4 (usb)
> camera added
> ***************************************************************************
> UDEV  [1329.344727] add
> /devices/platform/usbhs_omap/ehci-omap.0/usb1/1-2/1-2.3/1-2.3.4 (usb)
> UDEV  [1329.376313] add
> /devices/platform/usbhs_omap/ehci-omap.0/usb1/1-2/1-2.3/1-2.3.4/usb_device/usbdev1.16
> (usb_device)
> UDEV  [1329.389008] add
> /devices/platform/usbhs_omap/ehci-omap.0/usb1/1-2/1-2.3/1-2.3.4/1-2.3.4:1.2
> (usb)
> UDEV  [1329.396241] add
> /devices/platform/usbhs_omap/ehci-omap.0/usb1/1-2/1-2.3/1-2.3.4/1-2.3.4:1.1
> (usb)
> UDEV  [1329.401795] add
> /devices/platform/usbhs_omap/ehci-omap.0/usb1/1-2/1-2.3/1-2.3.4/1-2.3.4:1.0
> (usb)
> UDEV  [1329.406739] add
> /devices/platform/usbhs_omap/ehci-omap.0/usb1/1-2/1-2.3/1-2.3.4/1-2.3.4:1.3
> (usb)
>
> This is what I get in /var/log/messages
> Oct 29 14:17:28 beagleboard user.info kernel: usb 1-2.3.4: USB disconnect,
> device number 16
> Oct 29 14:17:31 beagleboard user.info kernel: usb 1-2.3.4: new high-speed
> USB device number 17 using ehci-omap
> Is there anything else that I can test  / provide

OK another thing to try is

udevadm test --action=add /sys/....

where /sys/... is path to your device in sysfs

this should give enough reason to what udev is doing when its getting an add
event for this device.

Secondly in your udev rule refer mknod with absolute path like
/sbin/mknod or /bin/mknod where ever it is

