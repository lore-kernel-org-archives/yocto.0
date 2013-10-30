Return-Path: <vidal.develone@gmail.com>
Received: from mail-qe0-f52.google.com (mail-qe0-f52.google.com
	[209.85.128.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BD512E01775
	for <yocto@yoctoproject.org>; Wed, 30 Oct 2013 13:51:14 -0700 (PDT)
Received: by mail-qe0-f52.google.com with SMTP id w7so1181020qeb.25
	for <yocto@yoctoproject.org>; Wed, 30 Oct 2013 13:51:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=xXBhaaYhKUOd9NY816/qNNNfllkXVtFrO4W/vVAiGF8=;
	b=mdouZPzV6DOuDTGxTYrHflCTSnF8gts6wSyXJqzDY7brav3u2iSZ42HkPP8+jfHj6e
	1o5hJIgijs0t6NqATloNiG0zC+S+cnm34Lgtf9JLlzlyKnVQ5OlNYZ6/iYZxE0o/yCUP
	wLdgPVgGGVhff+GQ//ZT3GDkholvUUjpoPRDRLUbeatYIS8Xk6tf9Ala9pg6YDVPRg2I
	B5GPHjm1kbZRJlHKRRo/jnuhb2CHB8gT4n9eqWlCp+8yNRi+0ULAj8kRt4sZSPDAqhq0
	17pF+NKeT2Aj6LZuIJYdiMpL5nggD9CPq940DfVDeuvPBTY/s98mzksEmqWJUHrjMC+f
	JE+A==
MIME-Version: 1.0
X-Received: by 10.224.44.1 with SMTP id y1mr469708qae.35.1383166273427; Wed,
	30 Oct 2013 13:51:13 -0700 (PDT)
Received: by 10.96.26.37 with HTTP; Wed, 30 Oct 2013 13:51:13 -0700 (PDT)
Date: Wed, 30 Oct 2013 14:51:13 -0600
Message-ID: <CANwz6nxT34jJGydYGe=snHHijwMdMOKdOgnxQWCp0KGkBN4OHw@mail.gmail.com>
From: Edward Vidal <vidal.develone@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: adding a udev entry for a camera
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
X-List-Received-Date: Wed, 30 Oct 2013 20:51:15 -0000
Content-Type: multipart/alternative; boundary=047d7bdc96be64a1ee04e9fb7e5e

--047d7bdc96be64a1ee04e9fb7e5e
Content-Type: text/plain; charset=ISO-8859-1

Hello,
I am trying to add a c920 camera to my systems.  I am not getting a
/dev/video0.
lsusb --verbose shows the HD Pro Webcam C920
Bus 001 Device 007: ID 046d:082d Logitech, Inc.
Device Descriptor:
  bLength                18
  bDescriptorType         1
  bcdUSB               2.00
  bDeviceClass          239 Miscellaneous Device
  bDeviceSubClass         2 ?
  bDeviceProtocol         1 Interface Association
  bMaxPacketSize0        64
  idVendor           0x046d Logitech, Inc.
  idProduct          0x082d
  bcdDevice            0.11
  iManufacturer           0
  iProduct                2 HD Pro Webcam C920
  iSerial                 1 211EF9AF
  bNumConfigurations      1
plus much more information

I created /etc/udev/rules.d/10-c920.rules
SUBSYSTEM=="video4linux", BUS=="usb", ATTRS{idvendor}=="0x046d",
ATTRS{idProduct}=="0x082d", NAME="video0", MODE:="0660"

mknod /dev/video0 c 81 0

when I v4l2-ctl --all error no /dev/video0
Any and all help will be appreciated.
Thanks

--047d7bdc96be64a1ee04e9fb7e5e
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div><div><div>Hello,<br></div>I am trying =
to add a c920 camera to my systems.=A0 I am not getting a /dev/video0.<br><=
/div>lsusb --verbose shows the HD Pro Webcam C920<br>Bus 001 Device 007: ID=
 046d:082d Logitech, Inc. <br>
Device Descriptor:<br>=A0 bLength=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0 18<br>=A0 bDescriptorType=A0=A0=A0=A0=A0=A0=A0=A0 1<br>=A0 bcdUSB=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 2.00<br>=A0 bDeviceClass=A0=A0=A0=A0=
=A0=A0=A0=A0=A0 239 Miscellaneous Device<br>=A0 bDeviceSubClass=A0=A0=A0=A0=
=A0=A0=A0=A0 2 ?<br>=A0 bDeviceProtocol=A0=A0=A0=A0=A0=A0=A0=A0 1 Interface=
 Association<br>
=A0 bMaxPacketSize0=A0=A0=A0=A0=A0=A0=A0 64<br>=A0 idVendor=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0 0x046d Logitech, Inc.<br>=A0 idProduct=A0=A0=A0=A0=A0=A0=A0=
=A0=A0 0x082d <br>=A0 bcdDevice=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 0.11<br>=
=A0 iManufacturer=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 0 <br>=A0 iProduct=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 2 HD Pro Webcam C920<br>
=A0 iSerial=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 1 211EF9AF<br>=
=A0 bNumConfigurations=A0=A0=A0=A0=A0 1<br></div>plus much more information=
 <br><br>I created /etc/udev/rules.d/10-c920.rules<br>SUBSYSTEM=3D=3D&quot;=
video4linux&quot;, BUS=3D=3D&quot;usb&quot;, ATTRS{idvendor}=3D=3D&quot;0x0=
46d&quot;, ATTRS{idProduct}=3D=3D&quot;0x082d&quot;, NAME=3D&quot;video0&qu=
ot;, MODE:=3D&quot;0660&quot;<br>
<br>mknod /dev/video0 c 81 0<br><br></div>when I v4l2-ctl --all error no /d=
ev/video0<br></div>Any and all help will be appreciated.<br></div>Thanks<br=
><br></div>

--047d7bdc96be64a1ee04e9fb7e5e--
