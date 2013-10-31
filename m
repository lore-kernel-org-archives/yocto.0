Return-Path: <diego.sueiro@gmail.com>
Received: from mail-ie0-f182.google.com (mail-ie0-f182.google.com
	[209.85.223.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EF2E5E017C9
	for <yocto@yoctoproject.org>; Thu, 31 Oct 2013 03:59:16 -0700 (PDT)
Received: by mail-ie0-f182.google.com with SMTP id as1so4609944iec.41
	for <yocto@yoctoproject.org>; Thu, 31 Oct 2013 03:59:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=pH7VUgdrbM6cHJF960z3q+u1X36k8n4Vzp/XQPZakhQ=;
	b=NHa9P8bBSHM1NOcBsKtaEs+NjtmbFgePlP/6AadDbS6B3G3gjR5+ol8b1UcPMRILYA
	XlI3dkXVySOa9gJXXfxDaIK3GX8LW5C0qyAGZbAGRva6Qgkn32K5fxS5lQoyKXEq1mm1
	DTWImihwjItXcSLQS+RMEfQIjl1gtpUjYCgWb3Lyd/5/ml0oSo5gHzfhMIpgF+o5LLPc
	yaiLQ/yITiq8MYPeGywTvIbEPSS53vPG7nscZiipO2kOmsaWrRcsBBPA19rj+xH7VReu
	pn8jTwzS2hQ9njxr+2ZuMf8oISk6VDrQRd/D6JIgEbHdZaeMHuurPXRzyiz0NwwhOYpd
	gvCA==
X-Received: by 10.42.192.18 with SMTP id do18mr210867icb.65.1383217155885;
	Thu, 31 Oct 2013 03:59:15 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.64.26.233 with HTTP; Thu, 31 Oct 2013 03:58:55 -0700 (PDT)
In-Reply-To: <5272309D.3000508@mlbassoc.com>
References: <CANwz6nxT34jJGydYGe=snHHijwMdMOKdOgnxQWCp0KGkBN4OHw@mail.gmail.com>
	<CAMKF1spw=Kr99nmVHjAw8PELK6E768RBpgxLCZFMcdMyConSEg@mail.gmail.com>
	<CANwz6nyYTVxmNfxK2kK0Z54uDw+Yq=RRTzmpXvJz19MDCB47MA@mail.gmail.com>
	<5272309D.3000508@mlbassoc.com>
From: Diego Sueiro <diego.sueiro@gmail.com>
Date: Thu, 31 Oct 2013 08:58:55 -0200
Message-ID: <CAMCfZKGq7XQ2E8XRvTCtaxkxYv2pGO_TAJOFnPeZq3K_9WQVfA@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
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
X-List-Received-Date: Thu, 31 Oct 2013 10:59:17 -0000
Content-Type: multipart/alternative; boundary=20cf304349d039521004ea075765

--20cf304349d039521004ea075765
Content-Type: text/plain; charset=ISO-8859-1

Is it enabled on kernel config?
Some references:
http://linuxtv.org/wiki/index.php/Webcam_Devices
http://tldp.org/HOWTO/Webcam-HOWTO/hardware.html


Regards,

--
*dS
Diego Sueiro

/*long live rock 'n roll*/


2013/10/31 Gary Thomas <gary@mlbassoc.com>

> On 2013-10-30 19:12, Edward Vidal wrote:
>
>> Hello,
>> This is when I connect the camera
>> udevadm monitor test
>> monitor will print the received events for:
>> UDEV - the event which udev sends out after rule processing
>> KERNEL - the kernel uevent
>>
>> KERNEL[803.263336] add      /devices/platform/usbhs_omap/**
>> ehci-omap.0/usb1/1-2/1-2.3/1-**2.3.4 (usb)
>> KERNEL[803.267456] add      /devices/platform/usbhs_omap/**
>> ehci-omap.0/usb1/1-2/1-2.3/1-**2.3.4/1-2.3.4:1.0 (usb)
>> KERNEL[803.269287] add      /devices/platform/usbhs_omap/**
>> ehci-omap.0/usb1/1-2/1-2.3/1-**2.3.4/1-2.3.4:1.1 (usb)
>> KERNEL[803.269958] add      /devices/platform/usbhs_omap/**
>> ehci-omap.0/usb1/1-2/1-2.3/1-**2.3.4/1-2.3.4:1.2 (usb)
>> KERNEL[803.270721] add      /devices/platform/usbhs_omap/**
>> ehci-omap.0/usb1/1-2/1-2.3/1-**2.3.4/1-2.3.4:1.3 (usb)
>> KERNEL[803.276214] add      /devices/platform/usbhs_omap/**
>> ehci-omap.0/usb1/1-2/1-2.3/1-**2.3.4/usb_device/usbdev1.15
>> (usb_device)**********
>> UDEV  [803.277191] add      /devices/platform/usbhs_omap/**
>> ehci-omap.0/usb1/1-2/1-2.3/1-**2.3.4 (usb)
>> UDEV  [803.306091] add      /devices/platform/usbhs_omap/**
>> ehci-omap.0/usb1/1-2/1-2.3/1-**2.3.4/usb_device/usbdev1.15 (usb_device)
>> UDEV  [803.318603] add      /devices/platform/usbhs_omap/**
>> ehci-omap.0/usb1/1-2/1-2.3/1-**2.3.4/1-2.3.4:1.2 (usb)
>> UDEV  [803.324249] add      /devices/platform/usbhs_omap/**
>> ehci-omap.0/usb1/1-2/1-2.3/1-**2.3.4/1-2.3.4:1.1 (usb)
>> UDEV  [803.329712] add      /devices/platform/usbhs_omap/**
>> ehci-omap.0/usb1/1-2/1-2.3/1-**2.3.4/1-2.3.4:1.0 (usb)
>> UDEV  [803.333160] add      /devices/platform/usbhs_omap/**
>> ehci-omap.0/usb1/1-2/1-2.3/1-**2.3.4/1-2.3.4:1.3 (usb)
>>
>> still no /dev/video0
>> ls -la /dev/v*
>> crw-rw---- 1 root tty 7,   0 Jan  1  2000 /dev/vcs
>> crw-rw---- 1 root tty 7,   1 Jan  1  2000 /dev/vcs1
>> crw-rw---- 1 root tty 7,   2 Jan  1  2000 /dev/vcs2
>> crw-rw---- 1 root tty 7,   3 Oct 29 13:51 /dev/vcs3
>> crw-rw---- 1 root tty 7, 128 Jan  1  2000 /dev/vcsa
>> crw-rw---- 1 root tty 7, 129 Jan  1  2000 /dev/vcsa1
>> crw-rw---- 1 root tty 7, 130 Jan  1  2000 /dev/vcsa2
>> crw-rw---- 1 root tty 7, 131 Oct 29 13:51 /dev/vcsa3
>> root@beagleboard:~# lsusb
>> Bus 001 Device 002: ID 0424:9514 Standard Microsystems Corp.
>> Bus 001 Device 001: ID 1d6b:0002 Linux Foundation 2.0 root hub
>> Bus 002 Device 001: ID 1d6b:0002 Linux Foundation 2.0 root hub
>> Bus 001 Device 003: ID 0424:ec00 Standard Microsystems Corp.
>> Bus 001 Device 004: ID 0409:0059 NEC Corp. HighSpeed Hub
>> Bus 001 Device 005: ID 413c:2005 Dell Computer Corp. RT7D50 Keyboard
>> Bus 001 Device 006: ID 046d:c001 Logitech, Inc. N48/M-BB48 [FirstMouse
>> Plus]
>> Bus 001 Device 015: ID 046d:082d Logitech, Inc.
>> ****************************************************************
>> ***********************
>>
>>
>> udevadm monitor --udev
>> monitor will print the received events for:
>> UDEV - the event which udev sends out after rule processing
>> camera removed*******************************************************
>> UDEV  [1325.916811] remove   /devices/platform/usbhs_omap/**
>> ehci-omap.0/usb1/1-2/1-2.3/1-**2.3.4/1-2.3.4:1.1 (usb)
>> UDEV  [1325.918489] remove   /devices/platform/usbhs_omap/**
>> ehci-omap.0/usb1/1-2/1-2.3/1-**2.3.4/1-2.3.4:1.0 (usb)
>> UDEV  [1325.919282] remove   /devices/platform/usbhs_omap/**
>> ehci-omap.0/usb1/1-2/1-2.3/1-**2.3.4/1-2.3.4:1.2 (usb)
>> UDEV  [1325.923005] remove   /devices/platform/usbhs_omap/**
>> ehci-omap.0/usb1/1-2/1-2.3/1-**2.3.4/1-2.3.4:1.3 (usb)
>> UDEV  [1325.928437] remove   /devices/platform/usbhs_omap/**
>> ehci-omap.0/usb1/1-2/1-2.3/1-**2.3.4/usb_device/usbdev1.15 (usb_device)
>> UDEV  [1325.932709] remove   /devices/platform/usbhs_omap/**
>> ehci-omap.0/usb1/1-2/1-2.3/1-**2.3.4 (usb)
>> camera added ********************************
>> ***********************************************
>> UDEV  [1329.344727] add      /devices/platform/usbhs_omap/**
>> ehci-omap.0/usb1/1-2/1-2.3/1-**2.3.4 (usb)
>> UDEV  [1329.376313] add      /devices/platform/usbhs_omap/**
>> ehci-omap.0/usb1/1-2/1-2.3/1-**2.3.4/usb_device/usbdev1.16 (usb_device)
>> UDEV  [1329.389008] add      /devices/platform/usbhs_omap/**
>> ehci-omap.0/usb1/1-2/1-2.3/1-**2.3.4/1-2.3.4:1.2 (usb)
>> UDEV  [1329.396241] add      /devices/platform/usbhs_omap/**
>> ehci-omap.0/usb1/1-2/1-2.3/1-**2.3.4/1-2.3.4:1.1 (usb)
>> UDEV  [1329.401795] add      /devices/platform/usbhs_omap/**
>> ehci-omap.0/usb1/1-2/1-2.3/1-**2.3.4/1-2.3.4:1.0 (usb)
>> UDEV  [1329.406739] add      /devices/platform/usbhs_omap/**
>> ehci-omap.0/usb1/1-2/1-2.3/1-**2.3.4/1-2.3.4:1.3 (usb)
>>
>> This is what I get in /var/log/messages
>> Oct 29 14:17:28 beagleboard user.info <http://user.info> kernel: usb
>> 1-2.3.4: USB disconnect, device number 16
>> Oct 29 14:17:31 beagleboard user.info <http://user.info> kernel: usb
>> 1-2.3.4: new high-speed USB device number 17 using ehci-omap
>>
>> Is there anything else that I can test  / provide
>>
>
> What version of the Linux kernel are you using?
>
> Are you sure that there is a driver available for this camera?  Does it
> work in your laptop/desktop?
>
> n.b. This question is probably better suited elsewhere as it is not really
> a Yocto issue.  Maybe try:
>   linux-media@vger.kernel.org
>
>  Thanks
>>
>>
>> On Wed, Oct 30, 2013 at 5:58 PM, Khem Raj <raj.khem@gmail.com <mailto:
>> raj.khem@gmail.com>> wrote:
>>
>>
>>     On Wed, Oct 30, 2013 at 1:51 PM, Edward Vidal <
>> vidal.develone@gmail.com <mailto:vidal.develone@gmail.**com<vidal.develone@gmail.com>>>
>> wrote:
>>     > Hello,
>>     > I am trying to add a c920 camera to my systems.  I am not getting a
>>     > /dev/video0.
>>     > lsusb --verbose shows the HD Pro Webcam C920
>>     > Bus 001 Device 007: ID 046d:082d Logitech, Inc.
>>     > Device Descriptor:
>>     >   bLength                18
>>     >   bDescriptorType         1
>>     >   bcdUSB               2.00
>>     >   bDeviceClass          239 Miscellaneous Device
>>     >   bDeviceSubClass         2 ?
>>     >   bDeviceProtocol         1 Interface Association
>>     >   bMaxPacketSize0        64
>>     >   idVendor           0x046d Logitech, Inc.
>>     >   idProduct          0x082d
>>     >   bcdDevice            0.11
>>     >   iManufacturer           0
>>     >   iProduct                2 HD Pro Webcam C920
>>     >   iSerial                 1 211EF9AF
>>     >   bNumConfigurations      1
>>     > plus much more information
>>     >
>>     > I created /etc/udev/rules.d/10-c920.**rules
>>     > SUBSYSTEM=="video4linux", BUS=="usb", ATTRS{idvendor}=="0x046d",
>>     > ATTRS{idProduct}=="0x082d", NAME="video0", MODE:="0660"
>>     >
>>     > mknod /dev/video0 c 81 0
>>     >
>>     > when I v4l2-ctl --all error no /dev/video0
>>     > Any and all help will be appreciated.
>>
>>     you can check if udev rule is infact kicking in. use udevadm
>> monitor/test
>>
>>     > Thanks
>>     >
>>     >
>>     > ______________________________**_________________
>>     > yocto mailing list
>>     >yocto@yoctoproject.org <mailto:yocto@yoctoproject.org**>
>>     >https://lists.yoctoproject.**org/listinfo/yocto<https://lists.yoctoproject.org/listinfo/yocto>
>>
>>     >
>>
>>
>>
>>
>> ______________________________**_________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.**org/listinfo/yocto<https://lists.yoctoproject.org/listinfo/yocto>
>>
>>
> --
> ------------------------------**------------------------------
> Gary Thomas                 |  Consulting for the
> MLB Associates              |    Embedded world
> ------------------------------**------------------------------
>
> ______________________________**_________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.**org/listinfo/yocto<https://lists.yoctoproject.org/listinfo/yocto>
>

--20cf304349d039521004ea075765
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Is it enabled on kernel config?<div style>Some references:=
</div><div style><a href=3D"http://linuxtv.org/wiki/index.php/Webcam_Device=
s">http://linuxtv.org/wiki/index.php/Webcam_Devices</a><br></div><div style=
>

<a href=3D"http://tldp.org/HOWTO/Webcam-HOWTO/hardware.html">http://tldp.or=
g/HOWTO/Webcam-HOWTO/hardware.html</a><br></div><div style><br></div><div c=
lass=3D"gmail_extra"><br clear=3D"all"><div><div dir=3D"ltr"><div>Regards,<=
/div>

<div><br></div>--<br>*dS<br>Diego Sueiro<br><br>/*long live rock &#39;n rol=
l*/</div></div>
<br><br><div class=3D"gmail_quote">2013/10/31 Gary Thomas <span dir=3D"ltr"=
>&lt;<a href=3D"mailto:gary@mlbassoc.com" target=3D"_blank">gary@mlbassoc.c=
om</a>&gt;</span><br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 =
0 .8ex;border-left:1px #ccc solid;padding-left:1ex">

<div class=3D"HOEnZb"><div class=3D"h5">On 2013-10-30 19:12, Edward Vidal w=
rote:<br>
</div></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bo=
rder-left:1px #ccc solid;padding-left:1ex"><div><div class=3D"h5">
Hello,<br>
This is when I connect the camera<br>
udevadm monitor test<br>
monitor will print the received events for:<br>
UDEV - the event which udev sends out after rule processing<br>
KERNEL - the kernel uevent<br>
<br>
KERNEL[803.263336] add =A0 =A0 =A0/devices/platform/usbhs_omap/<u></u>ehci-=
omap.0/usb1/1-2/1-2.3/1-<u></u>2.3.4 (usb)<br>
KERNEL[803.267456] add =A0 =A0 =A0/devices/platform/usbhs_omap/<u></u>ehci-=
omap.0/usb1/1-2/1-2.3/1-<u></u>2.3.4/1-2.3.4:1.0 (usb)<br>
KERNEL[803.269287] add =A0 =A0 =A0/devices/platform/usbhs_omap/<u></u>ehci-=
omap.0/usb1/1-2/1-2.3/1-<u></u>2.3.4/1-2.3.4:1.1 (usb)<br>
KERNEL[803.269958] add =A0 =A0 =A0/devices/platform/usbhs_omap/<u></u>ehci-=
omap.0/usb1/1-2/1-2.3/1-<u></u>2.3.4/1-2.3.4:1.2 (usb)<br>
KERNEL[803.270721] add =A0 =A0 =A0/devices/platform/usbhs_omap/<u></u>ehci-=
omap.0/usb1/1-2/1-2.3/1-<u></u>2.3.4/1-2.3.4:1.3 (usb)<br>
KERNEL[803.276214] add =A0 =A0 =A0/devices/platform/usbhs_omap/<u></u>ehci-=
omap.0/usb1/1-2/1-2.3/1-<u></u>2.3.4/usb_device/usbdev1.15 (usb_device)****=
******<br>
UDEV =A0[803.277191] add =A0 =A0 =A0/devices/platform/usbhs_omap/<u></u>ehc=
i-omap.0/usb1/1-2/1-2.3/1-<u></u>2.3.4 (usb)<br>
UDEV =A0[803.306091] add =A0 =A0 =A0/devices/platform/usbhs_omap/<u></u>ehc=
i-omap.0/usb1/1-2/1-2.3/1-<u></u>2.3.4/usb_device/usbdev1.15 (usb_device)<b=
r>
UDEV =A0[803.318603] add =A0 =A0 =A0/devices/platform/usbhs_omap/<u></u>ehc=
i-omap.0/usb1/1-2/1-2.3/1-<u></u>2.3.4/1-2.3.4:1.2 (usb)<br>
UDEV =A0[803.324249] add =A0 =A0 =A0/devices/platform/usbhs_omap/<u></u>ehc=
i-omap.0/usb1/1-2/1-2.3/1-<u></u>2.3.4/1-2.3.4:1.1 (usb)<br>
UDEV =A0[803.329712] add =A0 =A0 =A0/devices/platform/usbhs_omap/<u></u>ehc=
i-omap.0/usb1/1-2/1-2.3/1-<u></u>2.3.4/1-2.3.4:1.0 (usb)<br>
UDEV =A0[803.333160] add =A0 =A0 =A0/devices/platform/usbhs_omap/<u></u>ehc=
i-omap.0/usb1/1-2/1-2.3/1-<u></u>2.3.4/1-2.3.4:1.3 (usb)<br>
<br>
still no /dev/video0<br>
ls -la /dev/v*<br>
crw-rw---- 1 root tty 7, =A0 0 Jan =A01 =A02000 /dev/vcs<br>
crw-rw---- 1 root tty 7, =A0 1 Jan =A01 =A02000 /dev/vcs1<br>
crw-rw---- 1 root tty 7, =A0 2 Jan =A01 =A02000 /dev/vcs2<br>
crw-rw---- 1 root tty 7, =A0 3 Oct 29 13:51 /dev/vcs3<br>
crw-rw---- 1 root tty 7, 128 Jan =A01 =A02000 /dev/vcsa<br>
crw-rw---- 1 root tty 7, 129 Jan =A01 =A02000 /dev/vcsa1<br>
crw-rw---- 1 root tty 7, 130 Jan =A01 =A02000 /dev/vcsa2<br>
crw-rw---- 1 root tty 7, 131 Oct 29 13:51 /dev/vcsa3<br>
root@beagleboard:~# lsusb<br>
Bus 001 Device 002: ID 0424:9514 Standard Microsystems Corp.<br>
Bus 001 Device 001: ID 1d6b:0002 Linux Foundation 2.0 root hub<br>
Bus 002 Device 001: ID 1d6b:0002 Linux Foundation 2.0 root hub<br>
Bus 001 Device 003: ID 0424:ec00 Standard Microsystems Corp.<br>
Bus 001 Device 004: ID 0409:0059 NEC Corp. HighSpeed Hub<br>
Bus 001 Device 005: ID 413c:2005 Dell Computer Corp. RT7D50 Keyboard<br>
Bus 001 Device 006: ID 046d:c001 Logitech, Inc. N48/M-BB48 [FirstMouse Plus=
]<br>
Bus 001 Device 015: ID 046d:082d Logitech, Inc. ***************************=
***<u></u>******************************<u></u>***********************<br>
<br>
<br>
udevadm monitor --udev<br>
monitor will print the received events for:<br>
UDEV - the event which udev sends out after rule processing<br>
camera removed***********************<u></u>******************************<=
br>
UDEV =A0[1325.916811] remove =A0 /devices/platform/usbhs_omap/<u></u>ehci-o=
map.0/usb1/1-2/1-2.3/1-<u></u>2.3.4/1-2.3.4:1.1 (usb)<br>
UDEV =A0[1325.918489] remove =A0 /devices/platform/usbhs_omap/<u></u>ehci-o=
map.0/usb1/1-2/1-2.3/1-<u></u>2.3.4/1-2.3.4:1.0 (usb)<br>
UDEV =A0[1325.919282] remove =A0 /devices/platform/usbhs_omap/<u></u>ehci-o=
map.0/usb1/1-2/1-2.3/1-<u></u>2.3.4/1-2.3.4:1.2 (usb)<br>
UDEV =A0[1325.923005] remove =A0 /devices/platform/usbhs_omap/<u></u>ehci-o=
map.0/usb1/1-2/1-2.3/1-<u></u>2.3.4/1-2.3.4:1.3 (usb)<br>
UDEV =A0[1325.928437] remove =A0 /devices/platform/usbhs_omap/<u></u>ehci-o=
map.0/usb1/1-2/1-2.3/1-<u></u>2.3.4/usb_device/usbdev1.15 (usb_device)<br>
UDEV =A0[1325.932709] remove =A0 /devices/platform/usbhs_omap/<u></u>ehci-o=
map.0/usb1/1-2/1-2.3/1-<u></u>2.3.4 (usb)<br>
camera added ******************************<u></u>*************************=
*****<u></u>***************<br>
UDEV =A0[1329.344727] add =A0 =A0 =A0/devices/platform/usbhs_omap/<u></u>eh=
ci-omap.0/usb1/1-2/1-2.3/1-<u></u>2.3.4 (usb)<br>
UDEV =A0[1329.376313] add =A0 =A0 =A0/devices/platform/usbhs_omap/<u></u>eh=
ci-omap.0/usb1/1-2/1-2.3/1-<u></u>2.3.4/usb_device/usbdev1.16 (usb_device)<=
br>
UDEV =A0[1329.389008] add =A0 =A0 =A0/devices/platform/usbhs_omap/<u></u>eh=
ci-omap.0/usb1/1-2/1-2.3/1-<u></u>2.3.4/1-2.3.4:1.2 (usb)<br>
UDEV =A0[1329.396241] add =A0 =A0 =A0/devices/platform/usbhs_omap/<u></u>eh=
ci-omap.0/usb1/1-2/1-2.3/1-<u></u>2.3.4/1-2.3.4:1.1 (usb)<br>
UDEV =A0[1329.401795] add =A0 =A0 =A0/devices/platform/usbhs_omap/<u></u>eh=
ci-omap.0/usb1/1-2/1-2.3/1-<u></u>2.3.4/1-2.3.4:1.0 (usb)<br>
UDEV =A0[1329.406739] add =A0 =A0 =A0/devices/platform/usbhs_omap/<u></u>eh=
ci-omap.0/usb1/1-2/1-2.3/1-<u></u>2.3.4/1-2.3.4:1.3 (usb)<br>
<br>
This is what I get in /var/log/messages<br></div></div>
Oct 29 14:17:28 beagleboard <a href=3D"http://user.info" target=3D"_blank">=
user.info</a> &lt;<a href=3D"http://user.info" target=3D"_blank">http://use=
r.info</a>&gt; kernel: usb 1-2.3.4: USB disconnect, device number 16<br>
Oct 29 14:17:31 beagleboard <a href=3D"http://user.info" target=3D"_blank">=
user.info</a> &lt;<a href=3D"http://user.info" target=3D"_blank">http://use=
r.info</a>&gt; kernel: usb 1-2.3.4: new high-speed USB device number 17 usi=
ng ehci-omap<div class=3D"im">

<br>
Is there anything else that I can test =A0/ provide<br>
</div></blockquote>
<br>
What version of the Linux kernel are you using?<br>
<br>
Are you sure that there is a driver available for this camera? =A0Does it w=
ork in your laptop/desktop?<br>
<br>
n.b. This question is probably better suited elsewhere as it is not really =
a Yocto issue. =A0Maybe try:<br>
=A0 <a href=3D"mailto:linux-media@vger.kernel.org" target=3D"_blank">linux-=
media@vger.kernel.org</a><br>
<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
Thanks<br>
<br>
<br>
On Wed, Oct 30, 2013 at 5:58 PM, Khem Raj &lt;<a href=3D"mailto:raj.khem@gm=
ail.com" target=3D"_blank">raj.khem@gmail.com</a> &lt;mailto:<a href=3D"mai=
lto:raj.khem@gmail.com" target=3D"_blank">raj.khem@gmail.com</a>&gt;&gt; wr=
ote:<div>

<div class=3D"h5"><br>
<br>
=A0 =A0 On Wed, Oct 30, 2013 at 1:51 PM, Edward Vidal &lt;<a href=3D"mailto=
:vidal.develone@gmail.com" target=3D"_blank">vidal.develone@gmail.com</a> &=
lt;mailto:<a href=3D"mailto:vidal.develone@gmail.com" target=3D"_blank">vid=
al.develone@gmail.<u></u>com</a>&gt;&gt; wrote:<br>


=A0 =A0 &gt; Hello,<br>
=A0 =A0 &gt; I am trying to add a c920 camera to my systems. =A0I am not ge=
tting a<br>
=A0 =A0 &gt; /dev/video0.<br>
=A0 =A0 &gt; lsusb --verbose shows the HD Pro Webcam C920<br>
=A0 =A0 &gt; Bus 001 Device 007: ID 046d:082d Logitech, Inc.<br>
=A0 =A0 &gt; Device Descriptor:<br>
=A0 =A0 &gt; =A0 bLength =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A018<br>
=A0 =A0 &gt; =A0 bDescriptorType =A0 =A0 =A0 =A0 1<br>
=A0 =A0 &gt; =A0 bcdUSB =A0 =A0 =A0 =A0 =A0 =A0 =A0 2.00<br>
=A0 =A0 &gt; =A0 bDeviceClass =A0 =A0 =A0 =A0 =A0239 Miscellaneous Device<b=
r>
=A0 =A0 &gt; =A0 bDeviceSubClass =A0 =A0 =A0 =A0 2 ?<br>
=A0 =A0 &gt; =A0 bDeviceProtocol =A0 =A0 =A0 =A0 1 Interface Association<br=
>
=A0 =A0 &gt; =A0 bMaxPacketSize0 =A0 =A0 =A0 =A064<br>
=A0 =A0 &gt; =A0 idVendor =A0 =A0 =A0 =A0 =A0 0x046d Logitech, Inc.<br>
=A0 =A0 &gt; =A0 idProduct =A0 =A0 =A0 =A0 =A00x082d<br>
=A0 =A0 &gt; =A0 bcdDevice =A0 =A0 =A0 =A0 =A0 =A00.11<br>
=A0 =A0 &gt; =A0 iManufacturer =A0 =A0 =A0 =A0 =A0 0<br>
=A0 =A0 &gt; =A0 iProduct =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A02 HD Pro Webcam C9=
20<br>
=A0 =A0 &gt; =A0 iSerial =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 1 211EF9AF<br>
=A0 =A0 &gt; =A0 bNumConfigurations =A0 =A0 =A01<br>
=A0 =A0 &gt; plus much more information<br>
=A0 =A0 &gt;<br>
=A0 =A0 &gt; I created /etc/udev/rules.d/10-c920.<u></u>rules<br>
=A0 =A0 &gt; SUBSYSTEM=3D=3D&quot;video4linux&quot;, BUS=3D=3D&quot;usb&quo=
t;, ATTRS{idvendor}=3D=3D&quot;0x046d&quot;,<br>
=A0 =A0 &gt; ATTRS{idProduct}=3D=3D&quot;0x082d&quot;, NAME=3D&quot;video0&=
quot;, MODE:=3D&quot;0660&quot;<br>
=A0 =A0 &gt;<br>
=A0 =A0 &gt; mknod /dev/video0 c 81 0<br>
=A0 =A0 &gt;<br>
=A0 =A0 &gt; when I v4l2-ctl --all error no /dev/video0<br>
=A0 =A0 &gt; Any and all help will be appreciated.<br>
<br>
=A0 =A0 you can check if udev rule is infact kicking in. use udevadm monito=
r/test<br>
<br>
=A0 =A0 &gt; Thanks<br>
=A0 =A0 &gt;<br>
=A0 =A0 &gt;<br>
=A0 =A0 &gt; ______________________________<u></u>_________________<br>
=A0 =A0 &gt; yocto mailing list<br></div></div>
=A0 =A0 &gt;<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yoc=
to@yoctoproject.org</a> &lt;mailto:<a href=3D"mailto:yocto@yoctoproject.org=
" target=3D"_blank">yocto@yoctoproject.org</a><u></u>&gt;<br>
=A0 =A0 &gt;<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" targe=
t=3D"_blank">https://lists.yoctoproject.<u></u>org/listinfo/yocto</a><div c=
lass=3D"im"><br>
=A0 =A0 &gt;<br>
<br>
<br>
<br>
<br>
______________________________<u></u>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.<u></u>org/listinfo/yocto</a><br>
<br>
</div></blockquote><span class=3D"HOEnZb"><font color=3D"#888888">
<br>
-- <br>
------------------------------<u></u>------------------------------<br>
Gary Thomas =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 | =A0Consulting for the<br>
MLB Associates =A0 =A0 =A0 =A0 =A0 =A0 =A0| =A0 =A0Embedded world<br>
------------------------------<u></u>------------------------------</font><=
/span><div class=3D"HOEnZb"><div class=3D"h5"><br>
______________________________<u></u>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.<u></u>org/listinfo/yocto</a><br>
</div></div></blockquote></div><br></div></div>

--20cf304349d039521004ea075765--
