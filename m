Return-Path: <dgross@intronik.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 75D9BE00B20; Tue,  3 Jun 2014 03:06:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU, HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: *  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.179 listed in list.dnswl.org]
Received: from mail-ie0-f179.google.com (mail-ie0-f179.google.com
	[209.85.223.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 87D54E00AFD
	for <yocto@yoctoproject.org>; Tue,  3 Jun 2014 03:06:03 -0700 (PDT)
Received: by mail-ie0-f179.google.com with SMTP id rd18so5517881iec.24
	for <yocto@yoctoproject.org>; Tue, 03 Jun 2014 03:06:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intronik.de; s=intronik;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=wXVQylNKVeRp6viPtY/63/5uQ+SjGZBRRr/+xsfXVmc=;
	b=J1j1PDMvmP9Moam94R+XUFcuxQcsZXSE4zcpmr61fgGaaJp97Nmk7y7S6BRRMgujR2
	WuyGX4q0LHnDUSA5tARwm0c7X6y4LYcgZDebNGsj824WnPNssVPJncqFIDDnFLCr9CmR
	+wX1b4DqTOZ7VFRaDzP2g7KXpxpTN8Pbj2e8o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to
	:content-type;
	bh=wXVQylNKVeRp6viPtY/63/5uQ+SjGZBRRr/+xsfXVmc=;
	b=ixPoQtJlf8FaHw2rYFQ37QUor1vgLF0PTHx1ZZIgO4Gxscb3oOT6f4bxYm0sOwh9gf
	i/60cwsVw9A6esv7sv17425JlJstLUAd5GmkpMxyXjF1YWEldCiWt7SNF+/o8H3bHzzo
	w6urpbatj3aDWGgTSsRDGbE5KNcpIDh+kHJ9kaldNMPBVq1ihd0HUvs9hogBQavBSVH3
	5OKI+ZSqRjyXUmAoDMMNob7lu515//nS85/YNCV6c0T2QEjSqqFqEflJHmwbOw3TmCe7
	nmZvripbjwFbG7X62BqwwuJQrhGjW1QBtZgvqmfCRCp2hrdNkufGYGFZXqWsBIH0Sba1
	B4Vg==
X-Gm-Message-State: ALoCoQnhpmnf2l5GKWubrzp8je+DqfSrg4wq8oXeAlyD3U0q3hFAuIuj6oxpao+VGmw0U8XokpKZ
MIME-Version: 1.0
X-Received: by 10.50.128.162 with SMTP id np2mr27542381igb.22.1401789963259;
	Tue, 03 Jun 2014 03:06:03 -0700 (PDT)
Received: by 10.64.27.136 with HTTP; Tue, 3 Jun 2014 03:06:03 -0700 (PDT)
Date: Tue, 3 Jun 2014 12:06:03 +0200
Message-ID: <CAJ0JmfWKrLGXAB+7PmRK-dw013kU_ASQpqvchc5nY34eMYhtwA@mail.gmail.com>
From: =?UTF-8?B?RGFuaWVsIEdyb8Of?= <dgross@intronik.de>
To: yocto@yoctoproject.org
X-Mailman-Approved-At: Fri, 06 Jun 2014 11:32:24 -0700
Subject: beaglebone black usb device problem (daisy)
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
X-List-Received-Date: Tue, 03 Jun 2014 10:06:08 -0000
Content-Type: multipart/alternative; boundary=047d7b10ce8fcf672c04faeba82f

--047d7b10ce8fcf672c04faeba82f
Content-Type: text/plain; charset=UTF-8

Hello there,
I have successfully build several beaglebone (qt4embedded demo and
sato+mono hard float) images using yocto 1.6 (daisy) for the beagle bone
black.

However USB devices (mouse, keyboard, anything) are only found during the
first boot.

I narrowed the problem down to the file "/etc/udev/cache.data". If I remove
this file and boot again (using the serial console), USB works once for the
next boot process.

After some try and error, I was able to restart the USB enumeration by
issuing a "udevadm trigger" command again using the serial console. That
always works. To me it seems that USB root hub is not loaded by udev if the
/etc/udev/cache.data file exists.

The output of the trigger command is:
root@beaglebone:~# udevadm trigger
udevadm trigger
47401300.usb-phy supply vcc not found, using dummy regulator
47401b00.usb-phy supply vcc not found, using dummy regulator
omap_rng 48310000.rng: OMAP Random Number Generator ver. 20
root@beaglebone:~# musb-hdrc musb-hdrc.0.auto: MUSB HDRC host driver
musb-hdrc musb-hdrc.0.auto: new USB bus registered, assigned bus number 1
hub 1-0:1.0: USB hub found
hub 1-0:1.0: 1 port detected
musb-hdrc musb-hdrc.1.auto: MUSB HDRC host driver
musb-hdrc musb-hdrc.1.auto: new USB bus registered, assigned bus number 2
hub 2-0:1.0: USB hub found
hub 2-0:1.0: 1 port detected
usb 2-1: new low-speed USB device number 2 using musb-hdrc
input: Logitech USB Optical Mouse as
/devices/ocp.3/47400000.usb/47401c00.usb/musb-hdrc.1.auto/usb2/2-1/2-1:1.0/0003:046D:C00C.0001/input/input0
hid-generic 0003:046D:C00C.0001: input: USB HID v1.10 Mouse [Logitech USB
Optical Mouse] on usb-musb-hdrc.1.auto-1/input0

The content of the /etc/udev/cache.data file is:
root@beaglebone:~# cat /etc/udev/cache.data
cat /etc/udev/cache.data
Linux version 3.14.0-yocto-standard (daniel@daniel-ubuntu) (gcc version
4.8.2 (GCC) ) #1 PREEMPT Sat May 24 16:40:23 CEST
2014console=ttyO0,115200n8 root=/dev/mmcblk0p2 ro rootfstype=ext4
rootwaitCharacter devices:1 mem2 pty3 ttyp4 /dev/vc/04 tty5 /dev/tty5
/dev/console5 /dev/ptmx7 vcs10 misc13 input29 fb89 i2c90 mtd128 ptm136
pts180 usb189 usb_device226 drm250 ttySDIO251 ttyO252 bsg253 watchdog254
rtcBlock devices:1 ramdisk259 blkext8 sd31 mtdblock65 sd66 sd67 sd68 sd69
sd70 sd71 sd128 sd129 sd130 sd131 sd132 sd133 sd134 sd135 sd179 mmc


For the sake of completeness:
root@beaglebone:~# uname -a
uname -a
Linux beaglebone 3.14.0-yocto-standard #1 PREEMPT Sat May 24 16:40:23 CEST
2014 armv7l GNU/Linux


Did anyone else see these problems? And is this a bug - or a feature?


Daniel

--047d7b10ce8fcf672c04faeba82f
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div style=3D"font-family:arial,sans-serif;font-size:13px"=
>Hello there,</div><div style=3D"font-family:arial,sans-serif;font-size:13p=
x">I have successfully build several beaglebone (qt4embedded demo and sato+=
mono hard float) images using yocto 1.6 (daisy) for the beagle bone black.<=
/div>
<div style=3D"font-family:arial,sans-serif;font-size:13px"><br></div><div s=
tyle=3D"font-family:arial,sans-serif;font-size:13px">However USB devices (m=
ouse, keyboard, anything) are only found during the first boot.</div><div s=
tyle=3D"font-family:arial,sans-serif;font-size:13px">
<br></div><div style=3D"font-family:arial,sans-serif;font-size:13px">I narr=
owed the problem down to the file &quot;/etc/udev/cache.data&quot;. If I re=
move this file and boot again (using the serial console), USB works once fo=
r the next boot process.</div>
<div style=3D"font-family:arial,sans-serif;font-size:13px"><br></div><div s=
tyle=3D"font-family:arial,sans-serif;font-size:13px">After some try and err=
or, I was able to restart the USB enumeration by issuing a &quot;udevadm tr=
igger&quot; command again using the serial console. That always works. To m=
e it seems that USB root hub is not loaded by udev if the /etc/udev/cache.d=
ata file exists.</div>
<div style=3D"font-family:arial,sans-serif;font-size:13px"><br></div><div s=
tyle=3D"font-family:arial,sans-serif;font-size:13px">The output of the trig=
ger command is:</div><div style=3D"font-family:arial,sans-serif;font-size:1=
3px">
root@beaglebone:~# udevadm trigger<br></div><div style=3D"font-family:arial=
,sans-serif;font-size:13px"><div>udevadm trigger</div><div>47401300.usb-phy=
 supply vcc not found, using dummy regulator</div><div>47401b00.usb-phy sup=
ply vcc not found, using dummy regulator</div>
<div>omap_rng 48310000.rng: OMAP Random Number Generator ver. 20</div><div>=
root@beaglebone:~# musb-hdrc musb-hdrc.0.auto: MUSB HDRC host driver</div><=
div>musb-hdrc musb-hdrc.0.auto: new USB bus registered, assigned bus number=
 1</div>
<div>hub 1-0:1.0: USB hub found</div><div>hub 1-0:1.0: 1 port detected</div=
><div>musb-hdrc musb-hdrc.1.auto: MUSB HDRC host driver</div><div>musb-hdrc=
 musb-hdrc.1.auto: new USB bus registered, assigned bus number 2</div><div>
hub 2-0:1.0: USB hub found</div><div>hub 2-0:1.0: 1 port detected</div><div=
>usb 2-1: new low-speed USB device number 2 using musb-hdrc</div><div>input=
: Logitech USB Optical Mouse as /devices/ocp.3/47400000.usb/47401c00.usb/mu=
sb-hdrc.1.auto/usb2/2-1/2-1:1.0/0003:046D:C00C.0001/input/input0</div>
<div>hid-generic 0003:046D:C00C.0001: input: USB HID v1.10 Mouse [Logitech =
USB Optical Mouse] on usb-musb-hdrc.1.auto-1/input0</div></div><div style=
=3D"font-family:arial,sans-serif;font-size:13px"><br></div><div style=3D"fo=
nt-family:arial,sans-serif;font-size:13px">
The content of the /etc/udev/cache.data file is:</div><div style=3D"font-fa=
mily:arial,sans-serif;font-size:13px"><div>root@beaglebone:~# cat /etc/udev=
/cache.data</div><div>cat /etc/udev/cache.data</div><div>Linux version 3.14=
.0-yocto-standard (daniel@daniel-ubuntu) (gcc version 4.8.2 (GCC) ) #1 PREE=
MPT Sat May 24 16:40:23 CEST 2014console=3DttyO0,115200n8 root=3D/dev/mmcbl=
k0p2 ro rootfstype=3Dext4 rootwaitCharacter devices:1 mem2 pty3 ttyp4 /dev/=
vc/04 tty5 /dev/tty5 /dev/console5 /dev/ptmx7 vcs10 misc13 input29 fb89 i2c=
90 mtd128 ptm136 pts180 usb189 usb_device226 drm250 ttySDIO251 ttyO252 bsg2=
53 watchdog254 rtcBlock devices:1 ramdisk259 blkext8 sd31 mtdblock65 sd66 s=
d67 sd68 sd69 sd70 sd71 sd128 sd129 sd130 sd131 sd132 sd133 sd134 sd135 sd1=
79 mmc</div>
<div><br></div></div><div style=3D"font-family:arial,sans-serif;font-size:1=
3px"><br></div><div style=3D"font-family:arial,sans-serif;font-size:13px">F=
or the sake of completeness:</div><div style=3D"font-family:arial,sans-seri=
f;font-size:13px">
<div>root@beaglebone:~# uname -a</div><div>uname -a</div><div>Linux beagleb=
one 3.14.0-yocto-standard #1 PREEMPT Sat May 24 16:40:23 CEST 2014 armv7l G=
NU/Linux</div></div><div style=3D"font-family:arial,sans-serif;font-size:13=
px">
<br></div><div style=3D"font-family:arial,sans-serif;font-size:13px"><br></=
div><div style=3D"font-family:arial,sans-serif;font-size:13px">Did anyone e=
lse see these problems? And is this a bug - or a feature?</div><div class=
=3D"" style=3D"font-family:arial,sans-serif;font-size:13px">
<div id=3D":28q" class=3D"" tabindex=3D"0"><img class=3D"" src=3D"https://m=
ail.google.com/mail/u/0/images/cleardot.gif"></div></div><span class=3D"" s=
tyle=3D"font-family:arial,sans-serif;font-size:13px"><font color=3D"#888888=
"><div><br></div>
<div><div dir=3D"ltr"><br>Daniel</div></div></font></span>
</div>

--047d7b10ce8fcf672c04faeba82f--
