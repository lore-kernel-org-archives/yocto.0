Return-Path: <vidal.develone@gmail.com>
Received: from mail-ie0-f176.google.com (mail-ie0-f176.google.com
	[209.85.223.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4AB4FE0045E
	for <yocto@yoctoproject.org>; Sat,  6 Oct 2012 12:20:32 -0700 (PDT)
Received: by mail-ie0-f176.google.com with SMTP id k11so7656347iea.35
	for <yocto@yoctoproject.org>; Sat, 06 Oct 2012 12:20:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=kZWj0Yt4Xu5CT0hI8Zx3UyhtoZo0gHw353axG+GH3cE=;
	b=PtSltqJuQNpXlijDAAMM0ECY0eD2FpkloKFZdajG/acienaE0bAoNPevPlwdLuQbKX
	2nS1m5YWQkWOBHI1ITLf7ou/oFAuJy6ATYf3M3lrQNgFGboRAdYu0f5lr12Q3RDtFV4f
	DAIrIpdx2/eZOPZGldqj++iWb0nSA2n/vFLMAf4AHMoXOj/0zFZkuc8wkiYqUyuFkPBX
	gjBsRzn4fWjx6CbmNfr25Kqoszz0f4hKxkI5xgtivn7P6EWx8WscYtsWDyHLA8v5n5BP
	nkNgOPxLIhMaiZUmzysekOsHv8sVvLDWKwNSNjckNZAJp8IimFbgak0AunFdxFK9DAKM
	Zaag==
MIME-Version: 1.0
Received: by 10.43.84.130 with SMTP id ak2mr3810758icc.39.1349551229634; Sat,
	06 Oct 2012 12:20:29 -0700 (PDT)
Received: by 10.64.59.138 with HTTP; Sat, 6 Oct 2012 12:20:29 -0700 (PDT)
Date: Sat, 6 Oct 2012 13:20:29 -0600
Message-ID: <CANwz6nzXviQwG=S-5nAF9wF70tQ4PyrZNLTHFHODA5WWJfkCTw@mail.gmail.com>
From: Edward Vidal <vidal.develone@gmail.com>
To: yocto@yoctoproject.org
Subject: core-image-sato keyboard
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
X-List-Received-Date: Sat, 06 Oct 2012 19:20:32 -0000
Content-Type: multipart/alternative; boundary=bcaec5182530a608bf04cb68e1b3

--bcaec5182530a608bf04cb68e1b3
Content-Type: text/plain; charset=ISO-8859-1

Hello,
Just built core-image-sato for beagleboard xM C.
I have a usb keyboard and mouse connected.  The Mouse works but not the
keyboard when Terminal is selected.  The virtual keyboard works okay.
The following is what I see with dmesg.
usb 1-2.2: new low-speed USB device number 4 using ehci-omap
input: CHESEN USB Keyboard as
/devices/platform/usbhs_omap/ehci-omap.0/usb1/1-2/1-2.2/1-2.2:1.0/input/input
0
generic-usb 0003:0A81:0101.0001: input: USB HID v1.10 Keyboard [CHESEN USB
Keyboard] on usb-ehci-omap.0-2.2
/input0
input: CHESEN USB Keyboard as
/devices/platform/usbhs_omap/ehci-omap.0/usb1/1-2/1-2.2/1-2.2:1.1/input/input
1
generic-usb 0003:0A81:0101.0002: input: USB HID v1.10 Device [CHESEN USB
Keyboard] on usb-ehci-omap.0-2.2/i
nput1

The file /etc/formfactor/machconfig
# Assume a USB mouse and touchscreen are connected
HAVE_TOUCHSCREEN=0
HAVE_KEYBOARD=1
I chmod +x /etc/formfactor/config and /etc/formfactor/matchconfig
Thanks in advance for any help

--bcaec5182530a608bf04cb68e1b3
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hello,<br>Just built core-image-sato for beagleboard xM C.<br>I have a usb =
keyboard and mouse connected.=A0 The Mouse works but not the keyboard when =
Terminal is selected.=A0 The virtual keyboard works okay.<br>The following =
is what I see with dmesg.<br>
usb 1-2.2: new low-speed USB device number 4 using ehci-omap<br>input: CHES=
EN USB Keyboard as /devices/platform/usbhs_omap/ehci-omap.0/usb1/1-2/1-2.2/=
1-2.2:1.0/input/input<br>0<br>generic-usb 0003:0A81:0101.0001: input: USB H=
ID v1.10 Keyboard [CHESEN USB Keyboard] on usb-ehci-omap.0-2.2<br>
/input0<br>input: CHESEN USB Keyboard as /devices/platform/usbhs_omap/ehci-=
omap.0/usb1/1-2/1-2.2/1-2.2:1.1/input/input<br>1<br>generic-usb 0003:0A81:0=
101.0002: input: USB HID v1.10 Device [CHESEN USB Keyboard] on usb-ehci-oma=
p.0-2.2/i<br>
nput1<br><br>The file /etc/formfactor/machconfig<br># Assume a USB mouse an=
d touchscreen are connected<br>HAVE_TOUCHSCREEN=3D0<br>HAVE_KEYBOARD=3D1<br=
>I chmod +x /etc/formfactor/config and /etc/formfactor/matchconfig<br>Thank=
s in advance for any help<br>
<br><br>

--bcaec5182530a608bf04cb68e1b3--
