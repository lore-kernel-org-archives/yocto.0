Return-Path: <munoz0raul@gmail.com>
Received: from mail-ie0-f169.google.com (mail-ie0-f169.google.com
	[209.85.223.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 40DAEE00716
	for <yocto@yoctoproject.org>; Sat, 19 Jan 2013 11:41:43 -0800 (PST)
Received: by mail-ie0-f169.google.com with SMTP id c14so7928398ieb.14
	for <yocto@yoctoproject.org>; Sat, 19 Jan 2013 11:41:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:content-type;
	bh=CqTdcVfYKAeBKvip05/8azYKtIyYqbJ4laqV1fG5zTI=;
	b=EGineBZNbUgVGZg1hnHCGpsgZ7TBSanCDEF0VVJu7UkjyJ9aa1Y+BZAmMAV2YIDSGl
	bn61TjArgN9Luy14qCiLj3bwVG8IAK9siGRT+jZDesVg0RdE8AZ/iH8Ry2Q23p9xAjMF
	F2L6ETw6f52hRYUdH+C/LAQrvZX3th8+8vPYDGUaViZUIONgQZ2ysg6Mo+5jI0SXARrP
	DtQ9P49KXXy/Imh+ommGde8lEgqDesMCS96aFa+zpAaM3EqjoP3Jd8v3vkhpQ8lIYd1l
	7DIPPH5CJJ3FRliP80Fh+PL8vbiLRrHABkXQtZLpMLjA5ORR+qgVmuEC/4Gbxc9X2Ong
	eU7Q==
MIME-Version: 1.0
X-Received: by 10.50.184.229 with SMTP id ex5mr5377530igc.72.1358624502502;
	Sat, 19 Jan 2013 11:41:42 -0800 (PST)
Received: by 10.64.147.40 with HTTP; Sat, 19 Jan 2013 11:41:42 -0800 (PST)
In-Reply-To: <CANmVirgp9nqu65jvhXQ3kpSEt=9roE6W8y5e65S6Kr9_2VnjHw@mail.gmail.com>
References: <CANmVirgp9nqu65jvhXQ3kpSEt=9roE6W8y5e65S6Kr9_2VnjHw@mail.gmail.com>
Date: Sat, 19 Jan 2013 17:41:42 -0200
Message-ID: <CANmViri+1QurY-EUmp71-w3tnY6diH6kxXZraWXYmLmkvxjqQg@mail.gmail.com>
From: Raul Rosetto Munoz <munoz0raul@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Mouse Keyboard don't work at sato Beagle Image
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
X-List-Received-Date: Sat, 19 Jan 2013 19:41:43 -0000
Content-Type: multipart/alternative; boundary=14dae9340ddfdad69904d3a96a81

--14dae9340ddfdad69904d3a96a81
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hello All,

I compiled a core-image-sato for a BeagleBone and BeagleBoard.

I'm using all layers at danny version.

My bblayer is like this:


BBLAYERS ?=3D " \
  /home/prjs/video0001/linux/poky/meta \
  /home/prjs/video0001/linux/poky/meta-yocto \
  /home/prjs/video0001/linux/meta-ti \
  /home/prjs/video0001/linux/meta-openembedded/meta-oe  \
  "

In beagleboard Im using the DVI conector to see the X, and for beaglebone
I'm using a DVI cape.

At the two cases the video  working very well but for this two situation,
when I plug some USB keyboard or USB mouse, I see at serial console that
linux recognize the device, but in video interface, nothing happen.

I dont know if is necessary create a video target for the USB devices.

Here is a USB mouse log example:


[   74.651458] usb 1-1: USB disconnect, device number 2
[   79.874298] usb 1-1: new low-speed USB device number 3 using musb-hdrc
[   80.016906] usb 1-1: New USB device found, idVendor=3D15d9, idProduct=3D=
0a33
[   80.023925] usb 1-1: New USB device strings: Mfr=3D0, Product=3D1,
SerialNumber=3D0
[   80.031402] usb 1-1: Product: USB Mouse
[   80.041412] input: USB Mouse as
/devices/platform/omap/musb-ti81xx/musb-hdrc.1/usb1/1-1/1-1:1.0/input/input=
1
[   80.052642] generic-usb 0003:15D9:0A33.0002: input: USB HID v1.10 Mouse
[USB Mouse] on usb-musb-hdrc.1-1/input0


Thanks

--=20
*Raul Rosetto Mu=F1oz*



--=20
*Raul Rosetto Mu=F1oz*

--14dae9340ddfdad69904d3a96a81
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_quote"><br><div dir=3D"ltr"><div>Hello=
 All,<br></div><div><br></div><div>I compiled a core-image-sato for a Beagl=
eBone and BeagleBoard.</div><div><br></div><div>I&#39;m using all layers at=
 danny version.</div>
<div><br></div><div>My bblayer is like this:</div>
<div><br></div><div><br></div><div><font face=3D"courier new, monospace">BB=
LAYERS ?=3D &quot; \</font></div><div><font face=3D"courier new, monospace"=
>=A0 /home/prjs/video0001/linux/poky/meta \</font></div><div><font face=3D"=
courier new, monospace">=A0 /home/prjs/video0001/linux/poky/meta-yocto \</f=
ont></div>

<div><font face=3D"courier new, monospace">=A0 /home/prjs/video0001/linux/m=
eta-ti \</font></div><div><font face=3D"courier new, monospace">=A0 /home/p=
rjs/video0001/linux/meta-openembedded/meta-oe =A0\</font></div><div><font f=
ace=3D"courier new, monospace">=A0 &quot;</font></div>

<div><br></div><div>In beagleboard Im using the DVI conector to see the X, =
and for beaglebone I&#39;m using a DVI cape.</div><div><br></div><div>At th=
e two cases the video =A0working very well but for this two situation, when=
 I plug some USB keyboard or USB mouse, I see at serial console that linux =
recognize the device, but in video interface, nothing happen.</div>

<div><br></div><div>I dont know if is necessary create a video target for t=
he USB devices.</div><div><br></div><div>Here is a USB mouse log example:</=
div><div><br></div><div><br></div><div><font face=3D"courier new, monospace=
">[ =A0 74.651458] usb 1-1: USB disconnect, device number 2</font></div>

<div><font face=3D"courier new, monospace">[ =A0 79.874298] usb 1-1: new lo=
w-speed USB device number 3 using musb-hdrc</font></div><div><font face=3D"=
courier new, monospace">[ =A0 80.016906] usb 1-1: New USB device found, idV=
endor=3D15d9, idProduct=3D0a33</font></div>

<div><font face=3D"courier new, monospace">[ =A0 80.023925] usb 1-1: New US=
B device strings: Mfr=3D0, Product=3D1, SerialNumber=3D0</font></div><div><=
font face=3D"courier new, monospace">[ =A0 80.031402] usb 1-1: Product: USB=
 Mouse</font></div>

<div><font face=3D"courier new, monospace">[ =A0 80.041412] input: USB Mous=
e as /devices/platform/omap/musb-ti81xx/musb-hdrc.1/usb1/1-1/1-1:1.0/input/=
input1</font></div><div><font face=3D"courier new, monospace">[ =A0 80.0526=
42] generic-usb 0003:15D9:0A33.0002: input: USB HID v1.10 Mouse [USB Mouse]=
 on usb-musb-hdrc.1-1/input0</font></div>

<div><br></div><div><br></div><div>Thanks</div><span class=3D"HOEnZb"><font=
 color=3D"#888888"><div><br></div>-- <br><b>Raul Rosetto Mu=F1oz</b>
</font></span></div>
</div><br><br clear=3D"all"><div><br></div>-- <br><b>Raul Rosetto Mu=F1oz</=
b>
</div>

--14dae9340ddfdad69904d3a96a81--
