Return-Path: <vidal.develone@gmail.com>
Received: from mail-qa0-f48.google.com (mail-qa0-f48.google.com
	[209.85.216.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F00FBE017BB
	for <yocto@yoctoproject.org>; Wed, 30 Oct 2013 18:12:24 -0700 (PDT)
Received: by mail-qa0-f48.google.com with SMTP id k4so1316327qaq.7
	for <yocto@yoctoproject.org>; Wed, 30 Oct 2013 18:12:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=t3uynGUWstM5Y6OapAQS8lhxifahK4rf5+d0tHDY9uE=;
	b=AfTSPac29nNgCAjsNmpfQCydv9F7/mxx2otSpFlD6ygpUufKSmdydWROoiW1WqCzqp
	g0nV5FGmMtJf3cQuvfEg+2Bcjx1FJpKTVbs3kdItY6ZvsV8rmiKdfz9+dENBdJTMcObM
	w9mrz1sGKY0sFFbQUZOGEttB/LCZIY2F2bL6wKW1orB/pitQpGBnjj9hijxuHnycIFvs
	6f4yJa4QFc+74u4KP0mK70oPOf2+WAe5qv3gNHnrh7klKvHJcleNxLzi24/yVE0Dlo8Q
	X6LlEYzX1DQVqWtxyQSVX6gh8JLDeb9LfvKTQSBi0zSTPdIvg4EZYEkBIrtZkEvDG/CW
	e8Nw==
MIME-Version: 1.0
X-Received: by 10.49.35.36 with SMTP id e4mr814969qej.26.1383181942895; Wed,
	30 Oct 2013 18:12:22 -0700 (PDT)
Received: by 10.96.26.37 with HTTP; Wed, 30 Oct 2013 18:12:22 -0700 (PDT)
In-Reply-To: <CAMKF1spw=Kr99nmVHjAw8PELK6E768RBpgxLCZFMcdMyConSEg@mail.gmail.com>
References: <CANwz6nxT34jJGydYGe=snHHijwMdMOKdOgnxQWCp0KGkBN4OHw@mail.gmail.com>
	<CAMKF1spw=Kr99nmVHjAw8PELK6E768RBpgxLCZFMcdMyConSEg@mail.gmail.com>
Date: Wed, 30 Oct 2013 19:12:22 -0600
Message-ID: <CANwz6nyYTVxmNfxK2kK0Z54uDw+Yq=RRTzmpXvJz19MDCB47MA@mail.gmail.com>
From: Edward Vidal <vidal.develone@gmail.com>
To: Khem Raj <raj.khem@gmail.com>
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
X-List-Received-Date: Thu, 31 Oct 2013 01:12:25 -0000
Content-Type: multipart/alternative; boundary=047d7b6dce1a5db9bb04e9ff2445

--047d7b6dce1a5db9bb04e9ff2445
Content-Type: text/plain; charset=ISO-8859-1

Hello,
This is when I connect the camera
udevadm monitor test
monitor will print the received events for:
UDEV - the event which udev sends out after rule processing
KERNEL - the kernel uevent

KERNEL[803.263336] add
/devices/platform/usbhs_omap/ehci-omap.0/usb1/1-2/1-2.3/1-2.3.4 (usb)
KERNEL[803.267456] add
/devices/platform/usbhs_omap/ehci-omap.0/usb1/1-2/1-2.3/1-2.3.4/1-2.3.4:1.0
(usb)
KERNEL[803.269287] add
/devices/platform/usbhs_omap/ehci-omap.0/usb1/1-2/1-2.3/1-2.3.4/1-2.3.4:1.1
(usb)
KERNEL[803.269958] add
/devices/platform/usbhs_omap/ehci-omap.0/usb1/1-2/1-2.3/1-2.3.4/1-2.3.4:1.2
(usb)
KERNEL[803.270721] add
/devices/platform/usbhs_omap/ehci-omap.0/usb1/1-2/1-2.3/1-2.3.4/1-2.3.4:1.3
(usb)
KERNEL[803.276214] add
/devices/platform/usbhs_omap/ehci-omap.0/usb1/1-2/1-2.3/1-2.3.4/usb_device/usbdev1.15
(usb_device)**********
UDEV  [803.277191] add
/devices/platform/usbhs_omap/ehci-omap.0/usb1/1-2/1-2.3/1-2.3.4 (usb)
UDEV  [803.306091] add
/devices/platform/usbhs_omap/ehci-omap.0/usb1/1-2/1-2.3/1-2.3.4/usb_device/usbdev1.15
(usb_device)
UDEV  [803.318603] add
/devices/platform/usbhs_omap/ehci-omap.0/usb1/1-2/1-2.3/1-2.3.4/1-2.3.4:1.2
(usb)
UDEV  [803.324249] add
/devices/platform/usbhs_omap/ehci-omap.0/usb1/1-2/1-2.3/1-2.3.4/1-2.3.4:1.1
(usb)
UDEV  [803.329712] add
/devices/platform/usbhs_omap/ehci-omap.0/usb1/1-2/1-2.3/1-2.3.4/1-2.3.4:1.0
(usb)
UDEV  [803.333160] add
/devices/platform/usbhs_omap/ehci-omap.0/usb1/1-2/1-2.3/1-2.3.4/1-2.3.4:1.3
(usb)

still no /dev/video0
ls -la /dev/v*
crw-rw---- 1 root tty 7,   0 Jan  1  2000 /dev/vcs
crw-rw---- 1 root tty 7,   1 Jan  1  2000 /dev/vcs1
crw-rw---- 1 root tty 7,   2 Jan  1  2000 /dev/vcs2
crw-rw---- 1 root tty 7,   3 Oct 29 13:51 /dev/vcs3
crw-rw---- 1 root tty 7, 128 Jan  1  2000 /dev/vcsa
crw-rw---- 1 root tty 7, 129 Jan  1  2000 /dev/vcsa1
crw-rw---- 1 root tty 7, 130 Jan  1  2000 /dev/vcsa2
crw-rw---- 1 root tty 7, 131 Oct 29 13:51 /dev/vcsa3
root@beagleboard:~# lsusb
Bus 001 Device 002: ID 0424:9514 Standard Microsystems Corp.
Bus 001 Device 001: ID 1d6b:0002 Linux Foundation 2.0 root hub
Bus 002 Device 001: ID 1d6b:0002 Linux Foundation 2.0 root hub
Bus 001 Device 003: ID 0424:ec00 Standard Microsystems Corp.
Bus 001 Device 004: ID 0409:0059 NEC Corp. HighSpeed Hub
Bus 001 Device 005: ID 413c:2005 Dell Computer Corp. RT7D50 Keyboard
Bus 001 Device 006: ID 046d:c001 Logitech, Inc. N48/M-BB48 [FirstMouse Plus]
Bus 001 Device 015: ID 046d:082d Logitech, Inc.
***********************************************************************************


udevadm monitor --udev
monitor will print the received events for:
UDEV - the event which udev sends out after rule processing
camera removed*****************************************************
UDEV  [1325.916811] remove
/devices/platform/usbhs_omap/ehci-omap.0/usb1/1-2/1-2.3/1-2.3.4/1-2.3.4:1.1
(usb)
UDEV  [1325.918489] remove
/devices/platform/usbhs_omap/ehci-omap.0/usb1/1-2/1-2.3/1-2.3.4/1-2.3.4:1.0
(usb)
UDEV  [1325.919282] remove
/devices/platform/usbhs_omap/ehci-omap.0/usb1/1-2/1-2.3/1-2.3.4/1-2.3.4:1.2
(usb)
UDEV  [1325.923005] remove
/devices/platform/usbhs_omap/ehci-omap.0/usb1/1-2/1-2.3/1-2.3.4/1-2.3.4:1.3
(usb)
UDEV  [1325.928437] remove
/devices/platform/usbhs_omap/ehci-omap.0/usb1/1-2/1-2.3/1-2.3.4/usb_device/usbdev1.15
(usb_device)
UDEV  [1325.932709] remove
/devices/platform/usbhs_omap/ehci-omap.0/usb1/1-2/1-2.3/1-2.3.4 (usb)
camera added
***************************************************************************
UDEV  [1329.344727] add
/devices/platform/usbhs_omap/ehci-omap.0/usb1/1-2/1-2.3/1-2.3.4 (usb)
UDEV  [1329.376313] add
/devices/platform/usbhs_omap/ehci-omap.0/usb1/1-2/1-2.3/1-2.3.4/usb_device/usbdev1.16
(usb_device)
UDEV  [1329.389008] add
/devices/platform/usbhs_omap/ehci-omap.0/usb1/1-2/1-2.3/1-2.3.4/1-2.3.4:1.2
(usb)
UDEV  [1329.396241] add
/devices/platform/usbhs_omap/ehci-omap.0/usb1/1-2/1-2.3/1-2.3.4/1-2.3.4:1.1
(usb)
UDEV  [1329.401795] add
/devices/platform/usbhs_omap/ehci-omap.0/usb1/1-2/1-2.3/1-2.3.4/1-2.3.4:1.0
(usb)
UDEV  [1329.406739] add
/devices/platform/usbhs_omap/ehci-omap.0/usb1/1-2/1-2.3/1-2.3.4/1-2.3.4:1.3
(usb)

This is what I get in /var/log/messages
Oct 29 14:17:28 beagleboard user.info kernel: usb 1-2.3.4: USB disconnect,
device number 16
Oct 29 14:17:31 beagleboard user.info kernel: usb 1-2.3.4: new high-speed
USB device number 17 using ehci-omap
Is there anything else that I can test  / provide
Thanks


On Wed, Oct 30, 2013 at 5:58 PM, Khem Raj <raj.khem@gmail.com> wrote:

> On Wed, Oct 30, 2013 at 1:51 PM, Edward Vidal <vidal.develone@gmail.com>
> wrote:
> > Hello,
> > I am trying to add a c920 camera to my systems.  I am not getting a
> > /dev/video0.
> > lsusb --verbose shows the HD Pro Webcam C920
> > Bus 001 Device 007: ID 046d:082d Logitech, Inc.
> > Device Descriptor:
> >   bLength                18
> >   bDescriptorType         1
> >   bcdUSB               2.00
> >   bDeviceClass          239 Miscellaneous Device
> >   bDeviceSubClass         2 ?
> >   bDeviceProtocol         1 Interface Association
> >   bMaxPacketSize0        64
> >   idVendor           0x046d Logitech, Inc.
> >   idProduct          0x082d
> >   bcdDevice            0.11
> >   iManufacturer           0
> >   iProduct                2 HD Pro Webcam C920
> >   iSerial                 1 211EF9AF
> >   bNumConfigurations      1
> > plus much more information
> >
> > I created /etc/udev/rules.d/10-c920.rules
> > SUBSYSTEM=="video4linux", BUS=="usb", ATTRS{idvendor}=="0x046d",
> > ATTRS{idProduct}=="0x082d", NAME="video0", MODE:="0660"
> >
> > mknod /dev/video0 c 81 0
> >
> > when I v4l2-ctl --all error no /dev/video0
> > Any and all help will be appreciated.
>
> you can check if udev rule is infact kicking in. use udevadm monitor/test
>
> > Thanks
> >
> >
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
> >
>

--047d7b6dce1a5db9bb04e9ff2445
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div><div><div>Hello,<br></div>This is when=
 I connect the camera<br>udevadm monitor test=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0 <br>monitor will print the received events for:<br>UDEV - the eve=
nt which udev sends out after rule processing<br>
KERNEL - the kernel uevent<br><br>KERNEL[803.263336] add=A0=A0=A0=A0=A0 /de=
vices/platform/usbhs_omap/ehci-omap.0/usb1/1-2/1-2.3/1-2.3.4 (usb)<br>KERNE=
L[803.267456] add=A0=A0=A0=A0=A0 /devices/platform/usbhs_omap/ehci-omap.0/u=
sb1/1-2/1-2.3/1-2.3.4/1-2.3.4:1.0 (usb)<br>
KERNEL[803.269287] add=A0=A0=A0=A0=A0 /devices/platform/usbhs_omap/ehci-oma=
p.0/usb1/1-2/1-2.3/1-2.3.4/1-2.3.4:1.1 (usb)<br>KERNEL[803.269958] add=A0=
=A0=A0=A0=A0 /devices/platform/usbhs_omap/ehci-omap.0/usb1/1-2/1-2.3/1-2.3.=
4/1-2.3.4:1.2 (usb)<br>
KERNEL[803.270721] add=A0=A0=A0=A0=A0 /devices/platform/usbhs_omap/ehci-oma=
p.0/usb1/1-2/1-2.3/1-2.3.4/1-2.3.4:1.3 (usb)<br>KERNEL[803.276214] add=A0=
=A0=A0=A0=A0 /devices/platform/usbhs_omap/ehci-omap.0/usb1/1-2/1-2.3/1-2.3.=
4/usb_device/usbdev1.15 (usb_device)**********<br>
UDEV=A0 [803.277191] add=A0=A0=A0=A0=A0 /devices/platform/usbhs_omap/ehci-o=
map.0/usb1/1-2/1-2.3/1-2.3.4 (usb)<br>UDEV=A0 [803.306091] add=A0=A0=A0=A0=
=A0 /devices/platform/usbhs_omap/ehci-omap.0/usb1/1-2/1-2.3/1-2.3.4/usb_dev=
ice/usbdev1.15 (usb_device)<br>
UDEV=A0 [803.318603] add=A0=A0=A0=A0=A0 /devices/platform/usbhs_omap/ehci-o=
map.0/usb1/1-2/1-2.3/1-2.3.4/1-2.3.4:1.2 (usb)<br>UDEV=A0 [803.324249] add=
=A0=A0=A0=A0=A0 /devices/platform/usbhs_omap/ehci-omap.0/usb1/1-2/1-2.3/1-2=
.3.4/1-2.3.4:1.1 (usb)<br>
UDEV=A0 [803.329712] add=A0=A0=A0=A0=A0 /devices/platform/usbhs_omap/ehci-o=
map.0/usb1/1-2/1-2.3/1-2.3.4/1-2.3.4:1.0 (usb)<br>UDEV=A0 [803.333160] add=
=A0=A0=A0=A0=A0 /devices/platform/usbhs_omap/ehci-omap.0/usb1/1-2/1-2.3/1-2=
.3.4/1-2.3.4:1.3 (usb)<br>
<br></div>still no /dev/video0<br>ls -la /dev/v*<br>crw-rw---- 1 root tty 7=
,=A0=A0 0 Jan=A0 1=A0 2000 /dev/vcs<br>crw-rw---- 1 root tty 7,=A0=A0 1 Jan=
=A0 1=A0 2000 /dev/vcs1<br>crw-rw---- 1 root tty 7,=A0=A0 2 Jan=A0 1=A0 200=
0 /dev/vcs2<br>crw-rw---- 1 root tty 7,=A0=A0 3 Oct 29 13:51 /dev/vcs3<br>
crw-rw---- 1 root tty 7, 128 Jan=A0 1=A0 2000 /dev/vcsa<br>crw-rw---- 1 roo=
t tty 7, 129 Jan=A0 1=A0 2000 /dev/vcsa1<br>crw-rw---- 1 root tty 7, 130 Ja=
n=A0 1=A0 2000 /dev/vcsa2<br>crw-rw---- 1 root tty 7, 131 Oct 29 13:51 /dev=
/vcsa3<br>
root@beagleboard:~# lsusb<br>Bus 001 Device 002: ID 0424:9514 Standard Micr=
osystems Corp. <br>Bus 001 Device 001: ID 1d6b:0002 Linux Foundation 2.0 ro=
ot hub<br>Bus 002 Device 001: ID 1d6b:0002 Linux Foundation 2.0 root hub<br=
>
Bus 001 Device 003: ID 0424:ec00 Standard Microsystems Corp. <br>Bus 001 De=
vice 004: ID 0409:0059 NEC Corp. HighSpeed Hub<br>Bus 001 Device 005: ID 41=
3c:2005 Dell Computer Corp. RT7D50 Keyboard<br>Bus 001 Device 006: ID 046d:=
c001 Logitech, Inc. N48/M-BB48 [FirstMouse Plus]<br>
Bus 001 Device 015: ID 046d:082d Logitech, Inc. ***************************=
********************************************************<br></div><br><br>u=
devadm monitor --udev<br>monitor will print the received events for:<br>
UDEV - the event which udev sends out after rule processing<br>camera remov=
ed*****************************************************<br>UDEV=A0 [1325.91=
6811] remove=A0=A0 /devices/platform/usbhs_omap/ehci-omap.0/usb1/1-2/1-2.3/=
1-2.3.4/1-2.3.4:1.1 (usb)<br>
UDEV=A0 [1325.918489] remove=A0=A0 /devices/platform/usbhs_omap/ehci-omap.0=
/usb1/1-2/1-2.3/1-2.3.4/1-2.3.4:1.0 (usb)<br>UDEV=A0 [1325.919282] remove=
=A0=A0 /devices/platform/usbhs_omap/ehci-omap.0/usb1/1-2/1-2.3/1-2.3.4/1-2.=
3.4:1.2 (usb)<br>
UDEV=A0 [1325.923005] remove=A0=A0 /devices/platform/usbhs_omap/ehci-omap.0=
/usb1/1-2/1-2.3/1-2.3.4/1-2.3.4:1.3 (usb)<br>UDEV=A0 [1325.928437] remove=
=A0=A0 /devices/platform/usbhs_omap/ehci-omap.0/usb1/1-2/1-2.3/1-2.3.4/usb_=
device/usbdev1.15 (usb_device)<br>
UDEV=A0 [1325.932709] remove=A0=A0 /devices/platform/usbhs_omap/ehci-omap.0=
/usb1/1-2/1-2.3/1-2.3.4 (usb)<br>camera added *****************************=
**********************************************<br>UDEV=A0 [1329.344727] add=
=A0=A0=A0=A0=A0 /devices/platform/usbhs_omap/ehci-omap.0/usb1/1-2/1-2.3/1-2=
.3.4 (usb)<br>
UDEV=A0 [1329.376313] add=A0=A0=A0=A0=A0 /devices/platform/usbhs_omap/ehci-=
omap.0/usb1/1-2/1-2.3/1-2.3.4/usb_device/usbdev1.16 (usb_device)<br>UDEV=A0=
 [1329.389008] add=A0=A0=A0=A0=A0 /devices/platform/usbhs_omap/ehci-omap.0/=
usb1/1-2/1-2.3/1-2.3.4/1-2.3.4:1.2 (usb)<br>
UDEV=A0 [1329.396241] add=A0=A0=A0=A0=A0 /devices/platform/usbhs_omap/ehci-=
omap.0/usb1/1-2/1-2.3/1-2.3.4/1-2.3.4:1.1 (usb)<br>UDEV=A0 [1329.401795] ad=
d=A0=A0=A0=A0=A0 /devices/platform/usbhs_omap/ehci-omap.0/usb1/1-2/1-2.3/1-=
2.3.4/1-2.3.4:1.0 (usb)<br>
UDEV=A0 [1329.406739] add=A0=A0=A0=A0=A0 /devices/platform/usbhs_omap/ehci-=
omap.0/usb1/1-2/1-2.3/1-2.3.4/1-2.3.4:1.3 (usb)<br><br></div>This is what I=
 get in /var/log/messages<br>Oct 29 14:17:28 beagleboard <a href=3D"http://=
user.info">user.info</a> kernel: usb 1-2.3.4: USB disconnect, device number=
 16<br>
Oct 29 14:17:31 beagleboard <a href=3D"http://user.info">user.info</a> kern=
el: usb 1-2.3.4: new high-speed USB device number 17 using ehci-omap<br></d=
iv>Is there anything else that I can test=A0 / provide<br></div>Thanks<br><=
/div>
<div class=3D"gmail_extra"><br><br><div class=3D"gmail_quote">On Wed, Oct 3=
0, 2013 at 5:58 PM, Khem Raj <span dir=3D"ltr">&lt;<a href=3D"mailto:raj.kh=
em@gmail.com" target=3D"_blank">raj.khem@gmail.com</a>&gt;</span> wrote:<br=
><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1=
px #ccc solid;padding-left:1ex">
<div class=3D"HOEnZb"><div class=3D"h5">On Wed, Oct 30, 2013 at 1:51 PM, Ed=
ward Vidal &lt;<a href=3D"mailto:vidal.develone@gmail.com">vidal.develone@g=
mail.com</a>&gt; wrote:<br>
&gt; Hello,<br>
&gt; I am trying to add a c920 camera to my systems. =A0I am not getting a<=
br>
&gt; /dev/video0.<br>
&gt; lsusb --verbose shows the HD Pro Webcam C920<br>
&gt; Bus 001 Device 007: ID 046d:082d Logitech, Inc.<br>
&gt; Device Descriptor:<br>
&gt; =A0 bLength =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A018<br>
&gt; =A0 bDescriptorType =A0 =A0 =A0 =A0 1<br>
&gt; =A0 bcdUSB =A0 =A0 =A0 =A0 =A0 =A0 =A0 2.00<br>
&gt; =A0 bDeviceClass =A0 =A0 =A0 =A0 =A0239 Miscellaneous Device<br>
&gt; =A0 bDeviceSubClass =A0 =A0 =A0 =A0 2 ?<br>
&gt; =A0 bDeviceProtocol =A0 =A0 =A0 =A0 1 Interface Association<br>
&gt; =A0 bMaxPacketSize0 =A0 =A0 =A0 =A064<br>
&gt; =A0 idVendor =A0 =A0 =A0 =A0 =A0 0x046d Logitech, Inc.<br>
&gt; =A0 idProduct =A0 =A0 =A0 =A0 =A00x082d<br>
&gt; =A0 bcdDevice =A0 =A0 =A0 =A0 =A0 =A00.11<br>
&gt; =A0 iManufacturer =A0 =A0 =A0 =A0 =A0 0<br>
&gt; =A0 iProduct =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A02 HD Pro Webcam C920<br>
&gt; =A0 iSerial =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 1 211EF9AF<br>
&gt; =A0 bNumConfigurations =A0 =A0 =A01<br>
&gt; plus much more information<br>
&gt;<br>
&gt; I created /etc/udev/rules.d/10-c920.rules<br>
&gt; SUBSYSTEM=3D=3D&quot;video4linux&quot;, BUS=3D=3D&quot;usb&quot;, ATTR=
S{idvendor}=3D=3D&quot;0x046d&quot;,<br>
&gt; ATTRS{idProduct}=3D=3D&quot;0x082d&quot;, NAME=3D&quot;video0&quot;, M=
ODE:=3D&quot;0660&quot;<br>
&gt;<br>
&gt; mknod /dev/video0 c 81 0<br>
&gt;<br>
&gt; when I v4l2-ctl --all error no /dev/video0<br>
&gt; Any and all help will be appreciated.<br>
<br>
</div></div>you can check if udev rule is infact kicking in. use udevadm mo=
nitor/test<br>
<br>
&gt; Thanks<br>
&gt;<br>
&gt;<br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><b=
r>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_b=
lank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
&gt;<br>
</blockquote></div><br></div>

--047d7b6dce1a5db9bb04e9ff2445--
