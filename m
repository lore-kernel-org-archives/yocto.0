Return-Path: <mgloff@emacinc.com>
Received: from mail-wg0-f47.google.com (mail-wg0-f47.google.com [74.125.82.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EC369E01776
	for <yocto@yoctoproject.org>; Fri, 25 Oct 2013 17:32:26 -0700 (PDT)
Received: by mail-wg0-f47.google.com with SMTP id c11so4460155wgh.2
	for <yocto@yoctoproject.org>; Fri, 25 Oct 2013 17:32:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to
	:content-type;
	bh=7MfkoEVc4j475i5E40qu4sPv7FRvuvcMrQjWNQJCIF8=;
	b=fokvMsdZYLGJ7ugEX5izRcq0kShcGojZbAXdyW5O8nwjteKB5ZDSkYGlHvieRoCyqZ
	GHsRLsaGI592OMb46DPzCJpmVCGSvUjmzg+8lh8moMcNd18Ng20gsbC/CBKDTUewy4uS
	2FVyjuVzOUBEkBlbRT2iv4pbNT0pZh23jwY2efAnDa7LPJGsLzl3kY7ndiYTEjrVjzNk
	kMFtpygM6pDmin+t6mkQw/fzoHPbylDmrkwcm9H5lWC8D980TNCI6/Tczh2iXFP7RCZv
	rh+57XNwXM3CQE0fmLjRy52Ym35FOLc0IYDeHJ3rpYPNa6qCBJnM28mkLqXjJq+LpYta
	nUaA==
X-Gm-Message-State: ALoCoQnFncsrIgHwJiywvVvKcqZ9rP/UiN8IgSkjEdX6yDZdsGJ2il6QdyeXQ5umSGJ6dvZ22DsE
MIME-Version: 1.0
X-Received: by 10.180.105.36 with SMTP id gj4mr707209wib.14.1382747545554;
	Fri, 25 Oct 2013 17:32:25 -0700 (PDT)
Received: by 10.216.9.6 with HTTP; Fri, 25 Oct 2013 17:32:25 -0700 (PDT)
Date: Fri, 25 Oct 2013 19:32:25 -0500
Message-ID: <CALXw4G68j9YkaJtULPQfKdYE=hEs_UGCNpneyHdLqycVW-A7Xg@mail.gmail.com>
From: Michael Gloff <mgloff@emacinc.com>
To: yocto@yoctoproject.org
Subject: 3.10 Kernel module loading
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
X-List-Received-Date: Sat, 26 Oct 2013 00:32:33 -0000
Content-Type: multipart/alternative; boundary=f46d0442823c44856704e99a0044

--f46d0442823c44856704e99a0044
Content-Type: text/plain; charset=ISO-8859-1

I am having an issue getting a custom touchscreen kernel driver to load.
It's a pixcir touchscreen and I've modified the driver found below to work
with this particular display:

http://lii-enac.fr/cgi-bin/gitweb.cgi?p=linux-input/drivers.git;a=shortlog;h=refs/heads/pixcir

The driver works perfectly with 3.2.32 kernel.
Upgrading to 3.10.11 the driver will load when the system starts, but is
not responding to touches using evtest. If I unload and reload the driver,
(rmmod, modprobe) it works perfectly. Also, if I blacklist the driver on
start, then load it, it will not work. Again, unload, reload works. I've
tried with 3.8 also with similar results.

The display registers itself as both a mouse (usually /dev/input/event2)
and a touchscreen (/dev/input/event5). event2 responds to evtest, but when
used in QT, the motions are way off. This display has no external
calibration capabilities and is connected via usb.

The machine is an atom board. Image was built with yocto 1.5 as a
genericx86 machine type and kernel configed to include custom driver.

I wondering if anyone here knows what might have changed in the kernel
versions on how the modules are loaded.

Relevant kernel messages below. In this case, I booted normally, unloaded
the module and reloaded as can be seen by the last messages. I can provide
more info if necessary.

Thanks!
-- 
Michael Gloff


[    1.414612] input: PIXCIR HID Touch Panel as
/devices/pci0000:00/0000:00:1d.2/usb4/4-1/4-1:1.1/input/input2
[    1.414802] hid-generic 0003:040B:2230.0002: input: USB HID v1.00 Mouse
[PIXCIR HID Touch Panel] on usb-0000:00:1d.2-1/input1
[    1.620535] usb 5-1: new low-speed USB device number 2 using uhci_hcd
[    1.799174] ata4.01: failed to resume link (SControl 0)
[    1.810053] ata4.00: SATA link down (SStatus 0 SControl 310)
[    1.810129] ata4.01: SATA link down (SStatus 0 SControl 0)
[    1.812866] kjournald starting.  Commit interval 5 seconds
[    1.812917] EXT3-fs (sda1): mounted filesystem with ordered data mode
[    1.812942] VFS: Mounted root (ext3 filesystem) readonly on device 8:1.
[    1.813832] devtmpfs: mounted
[    1.813926] Freeing unused kernel memory: 480k freed
[    1.814276] Write protecting the kernel text: 5660k
[    1.814406] Write protecting the kernel read-only data: 2200k
[    1.826189] input: Logitech USB Keyboard as
/devices/pci0000:00/0000:00:1d.3/usb5/5-1/5-1:1.0/input/input3
[    1.826431] hid-generic 0003:046D:C31D.0003: input: USB HID v1.10
Keyboard [Logitech USB Keyboard] on usb-0000:00:1d.3-1/input0
[    1.876337] input: Logitech USB Keyboard as
/devices/pci0000:00/0000:00:1d.3/usb5/5-1/5-1:1.1/input/input4
[    1.876543] hid-generic 0003:046D:C31D.0004: input: USB HID v1.10 Device
[Logitech USB Keyboard] on usb-0000:00:1d.3-1/input1
[    2.057877] udevd[91]: starting version 182
[   12.304518] pixcir 0003:040B:2230.0001: usb_submit_urb(ctrl) failed: -1
[   12.304594] pixcir 0003:040B:2230.0001: timeout initializing reports
[   12.304785] input: PIXCIR HID Touch Panel as
/devices/pci0000:00/0000:00:1d.2/usb4/4-1/4-1:1.0/input/input5
[   12.305048] pixcir 0003:040B:2230.0001: input: USB HID v1.00 Device
[PIXCIR HID Touch Panel] on usb-0000:00:1d.2-1/input0
[   12.361395] EXT3-fs (sda1): using internal journal
[   12.653933] e1000e 0000:00:19.0: irq 41 for MSI/MSI-X
[   12.754413] e1000e 0000:00:19.0: irq 41 for MSI/MSI-X
[   12.754585] IPv6: ADDRCONF(NETDEV_UP): eth0: link is not ready
[   22.096102] uvesafb: Intel Corporation, Intel(r)PineView Graphics
Controller, Hardware Version 0.0, OEM: Intel(r)PineView Graphics Chip
Accelerated VGA BIOS, VBE v3.0
[   22.127124] uvesafb: VBIOS/hardware doesn't support DDC transfers
[   22.127182] uvesafb: no monitor limits have been set, default refresh
rate will be used
[   22.127365] uvesafb: scrolling: redraw
[   22.284754] Console: switching to colour frame buffer device 100x30
[   22.289705] uvesafb: framebuffer at 0xd0000000, mapped to 0xf8280000,
using 3000k, total 8128k
[   22.289850] fb0: VESA VGA frame buffer device
[   28.170923] e1000e: eth0 NIC Link is Up 100 Mbps Full Duplex, Flow
Control: None
[   28.173135] e1000e 0000:00:19.0 eth0: 10/100 speed: disabling TSO
[   28.175451] IPv6: ADDRCONF(NETDEV_CHANGE): eth0: link becomes ready
[   72.660551] pixcir 0003:040B:2230.0001: usb_submit_urb(ctrl) failed: -1
[   72.661522] pixcir 0003:040B:2230.0001: timeout initializing reports
[   72.665381] input: PIXCIR HID Touch Panel as
/devices/pci0000:00/0000:00:1d.2/usb4/4-1/4-1:1.0/input/input6
[   72.668159] pixcir 0003:040B:2230.0001: input: USB HID v1.00 Device
[PIXCIR HID Touch Panel] on usb-0000:00:1d.2-1/input0

--f46d0442823c44856704e99a0044
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div><div>I am having an issue getting a cu=
stom touchscreen kernel driver to load. It&#39;s a pixcir touchscreen and I=
&#39;ve modified the driver found below to work with this particular displa=
y:<br>
<br><a href=3D"http://lii-enac.fr/cgi-bin/gitweb.cgi?p=3Dlinux-input/driver=
s.git;a=3Dshortlog;h=3Drefs/heads/pixcir">http://lii-enac.fr/cgi-bin/gitweb=
.cgi?p=3Dlinux-input/drivers.git;a=3Dshortlog;h=3Drefs/heads/pixcir</a><br>=
</div><br>
The driver works perfectly with 3.2.32 kernel.<br></div>Upgrading to 3.10.1=
1 the driver will load when the system starts, but is not responding to tou=
ches using evtest. If I unload and reload the driver, (rmmod, modprobe) it =
works perfectly. Also, if I blacklist the driver on start, then load it, it=
 will not work. Again, unload, reload works. I&#39;ve tried with 3.8 also w=
ith=20
similar results. </div><br></div>The display registers itself as both a mou=
se (usually /dev/input/event2) and a touchscreen (/dev/input/event5). event=
2 responds to evtest, but when used in QT, the motions are way off. This di=
splay has no external calibration capabilities and is connected via usb.<br=
>
<br></div>The machine is an atom board. Image was built with yocto 1.5 as a=
 genericx86 machine type and kernel configed to include custom driver.<br><=
div><div><div><br>I wondering if anyone here knows what might have changed =
in the kernel=20
versions on how the modules are loaded. <br clear=3D"all"><div><div><div><b=
r></div><div>Relevant kernel messages below. In this case, I booted normall=
y, unloaded the module and reloaded as can be seen by the last messages. I =
can provide more info if necessary.<br>
<br></div><div>Thanks!<br></div><div>-- <br><div dir=3D"ltr"><div>Michael G=
loff<br><br><br>[=A0=A0=A0 1.414612] input: PIXCIR HID Touch Panel as /devi=
ces/pci0000:00/0000:00:1d.2/usb4/4-1/4-1:1.1/input/input2<br>[=A0=A0=A0 1.4=
14802] hid-generic 0003:040B:2230.0002: input: USB HID v1.00 Mouse [PIXCIR =
HID Touch Panel] on usb-0000:00:1d.2-1/input1<br>
[=A0=A0=A0 1.620535] usb 5-1: new low-speed USB device number 2 using uhci_=
hcd<br>[=A0=A0=A0 1.799174] ata4.01: failed to resume link (SControl 0)<br>=
[=A0=A0=A0 1.810053] ata4.00: SATA link down (SStatus 0 SControl 310)<br>[=
=A0=A0=A0 1.810129] ata4.01: SATA link down (SStatus 0 SControl 0)<br>
[=A0=A0=A0 1.812866] kjournald starting.=A0 Commit interval 5 seconds<br>[=
=A0=A0=A0 1.812917] EXT3-fs (sda1): mounted filesystem with ordered data mo=
de<br>[=A0=A0=A0 1.812942] VFS: Mounted root (ext3 filesystem) readonly on =
device 8:1.<br>[=A0=A0=A0 1.813832] devtmpfs: mounted<br>
[=A0=A0=A0 1.813926] Freeing unused kernel memory: 480k freed<br>[=A0=A0=A0=
 1.814276] Write protecting the kernel text: 5660k<br>[=A0=A0=A0 1.814406] =
Write protecting the kernel read-only data: 2200k<br>[=A0=A0=A0 1.826189] i=
nput: Logitech USB Keyboard as /devices/pci0000:00/0000:00:1d.3/usb5/5-1/5-=
1:1.0/input/input3<br>
[=A0=A0=A0 1.826431] hid-generic 0003:046D:C31D.0003: input: USB HID v1.10 =
Keyboard [Logitech USB Keyboard] on usb-0000:00:1d.3-1/input0<br>[=A0=A0=A0=
 1.876337] input: Logitech USB Keyboard as /devices/pci0000:00/0000:00:1d.3=
/usb5/5-1/5-1:1.1/input/input4<br>
[=A0=A0=A0 1.876543] hid-generic 0003:046D:C31D.0004: input: USB HID v1.10 =
Device [Logitech USB Keyboard] on usb-0000:00:1d.3-1/input1<br>[=A0=A0=A0 2=
.057877] udevd[91]: starting version 182<br>[=A0=A0 12.304518] pixcir 0003:=
040B:2230.0001: usb_submit_urb(ctrl) failed: -1<br>
[=A0=A0 12.304594] pixcir 0003:040B:2230.0001: timeout initializing reports=
<br>[=A0=A0 12.304785] input: PIXCIR HID Touch Panel as /devices/pci0000:00=
/0000:00:1d.2/usb4/4-1/4-1:1.0/input/input5<br>[=A0=A0 12.305048] pixcir 00=
03:040B:2230.0001: input: USB HID v1.00 Device [PIXCIR HID Touch Panel] on =
usb-0000:00:1d.2-1/input0<br>
[=A0=A0 12.361395] EXT3-fs (sda1): using internal journal<br>[=A0=A0 12.653=
933] e1000e 0000:00:19.0: irq 41 for MSI/MSI-X<br>[=A0=A0 12.754413] e1000e=
 0000:00:19.0: irq 41 for MSI/MSI-X<br>[=A0=A0 12.754585] IPv6: ADDRCONF(NE=
TDEV_UP): eth0: link is not ready<br>
[=A0=A0 22.096102] uvesafb: Intel Corporation, Intel(r)PineView Graphics Co=
ntroller, Hardware Version 0.0, OEM: Intel(r)PineView Graphics Chip Acceler=
ated VGA BIOS, VBE v3.0<br>[=A0=A0 22.127124] uvesafb: VBIOS/hardware doesn=
&#39;t support DDC transfers<br>
[=A0=A0 22.127182] uvesafb: no monitor limits have been set, default refres=
h rate will be used<br>[=A0=A0 22.127365] uvesafb: scrolling: redraw<br>[=
=A0=A0 22.284754] Console: switching to colour frame buffer device 100x30<b=
r>[=A0=A0 22.289705] uvesafb: framebuffer at 0xd0000000, mapped to 0xf82800=
00, using 3000k, total 8128k<br>
[=A0=A0 22.289850] fb0: VESA VGA frame buffer device<br>[=A0=A0 28.170923] =
e1000e: eth0 NIC Link is Up 100 Mbps Full Duplex, Flow Control: None<br>[=
=A0=A0 28.173135] e1000e 0000:00:19.0 eth0: 10/100 speed: disabling TSO<br>=
[=A0=A0 28.175451] IPv6: ADDRCONF(NETDEV_CHANGE): eth0: link becomes ready<=
br>
[=A0=A0 72.660551] pixcir 0003:040B:2230.0001: usb_submit_urb(ctrl) failed:=
 -1<br>[=A0=A0 72.661522] pixcir 0003:040B:2230.0001: timeout initializing =
reports<br>[=A0=A0 72.665381] input: PIXCIR HID Touch Panel as /devices/pci=
0000:00/0000:00:1d.2/usb4/4-1/4-1:1.0/input/input6<br>
[=A0=A0 72.668159] pixcir 0003:040B:2230.0001: input: USB HID v1.00 Device =
[PIXCIR HID Touch Panel] on usb-0000:00:1d.2-1/input0<br></div><span style=
=3D"font-family:Arial,sans-serif;font-size:13.3333px"></span></div>
</div></div></div></div></div></div></div>

--f46d0442823c44856704e99a0044--
