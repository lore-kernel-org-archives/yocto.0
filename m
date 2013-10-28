Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A55A9E011B9
	for <yocto@yoctoproject.org>; Sun, 27 Oct 2013 21:32:44 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id r9S4WfTp013157
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Sun, 27 Oct 2013 21:32:42 -0700 (PDT)
Received: from bruce-ashfields-macbook.local (128.224.21.23) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.2.347.0; Sun, 27 Oct 2013 21:32:41 -0700
Message-ID: <526DE8E8.2010304@windriver.com>
Date: Mon, 28 Oct 2013 00:32:40 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.7;
	rv:24.0) Gecko/20100101 Thunderbird/24.0.1
MIME-Version: 1.0
To: Michael Gloff <mgloff@emacinc.com>, <yocto@yoctoproject.org>
References: <CALXw4G68j9YkaJtULPQfKdYE=hEs_UGCNpneyHdLqycVW-A7Xg@mail.gmail.com>
In-Reply-To: <CALXw4G68j9YkaJtULPQfKdYE=hEs_UGCNpneyHdLqycVW-A7Xg@mail.gmail.com>
Subject: Re: 3.10 Kernel module loading
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
X-List-Received-Date: Mon, 28 Oct 2013 04:32:53 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 13-10-25 8:32 PM, Michael Gloff wrote:
> I am having an issue getting a custom touchscreen kernel driver to load.
> It's a pixcir touchscreen and I've modified the driver found below to
> work with this particular display:
>
> http://lii-enac.fr/cgi-bin/gitweb.cgi?p=linux-input/drivers.git;a=shortlog;h=refs/heads/pixcir
>
> The driver works perfectly with 3.2.32 kernel.
> Upgrading to 3.10.11 the driver will load when the system starts, but is
> not responding to touches using evtest. If I unload and reload the
> driver, (rmmod, modprobe) it works perfectly. Also, if I blacklist the
> driver on start, then load it, it will not work. Again, unload, reload
> works. I've tried with 3.8 also with similar results.
>
> The display registers itself as both a mouse (usually /dev/input/event2)
> and a touchscreen (/dev/input/event5). event2 responds to evtest, but
> when used in QT, the motions are way off. This display has no external
> calibration capabilities and is connected via usb.
>
> The machine is an atom board. Image was built with yocto 1.5 as a
> genericx86 machine type and kernel configed to include custom driver.
>
> I wondering if anyone here knows what might have changed in the kernel
> versions on how the modules are loaded.

Not sure if you are still hunting for this problem, but I wanted to
say something .. even if it isn't particularly useful.

Nothing in particular is jumping to mind as a change that would directly
impact this.

But your description really smells like memory being allocated differently
and hence the h/w not being initialized with the proper values (i.e.
all zeroes) on the first load, and then the subsequent load fixes the
problem since everything is partially initialized from the first load.

Since it is working the second time around, the hooks/init functions
are all still valid, so it isn't something structural with the registration
of the driver.

Out of curiosity .. does it work if you build the driver into the kernel ?

Bruce

>
> Relevant kernel messages below. In this case, I booted normally,
> unloaded the module and reloaded as can be seen by the last messages. I
> can provide more info if necessary.
>
> Thanks!
> --
> Michael Gloff
>
>
> [    1.414612] input: PIXCIR HID Touch Panel as
> /devices/pci0000:00/0000:00:1d.2/usb4/4-1/4-1:1.1/input/input2
> [    1.414802] hid-generic 0003:040B:2230.0002: input: USB HID v1.00
> Mouse [PIXCIR HID Touch Panel] on usb-0000:00:1d.2-1/input1
> [    1.620535] usb 5-1: new low-speed USB device number 2 using uhci_hcd
> [    1.799174] ata4.01: failed to resume link (SControl 0)
> [    1.810053] ata4.00: SATA link down (SStatus 0 SControl 310)
> [    1.810129] ata4.01: SATA link down (SStatus 0 SControl 0)
> [    1.812866] kjournald starting.  Commit interval 5 seconds
> [    1.812917] EXT3-fs (sda1): mounted filesystem with ordered data mode
> [    1.812942] VFS: Mounted root (ext3 filesystem) readonly on device 8:1.
> [    1.813832] devtmpfs: mounted
> [    1.813926] Freeing unused kernel memory: 480k freed
> [    1.814276] Write protecting the kernel text: 5660k
> [    1.814406] Write protecting the kernel read-only data: 2200k
> [    1.826189] input: Logitech USB Keyboard as
> /devices/pci0000:00/0000:00:1d.3/usb5/5-1/5-1:1.0/input/input3
> [    1.826431] hid-generic 0003:046D:C31D.0003: input: USB HID v1.10
> Keyboard [Logitech USB Keyboard] on usb-0000:00:1d.3-1/input0
> [    1.876337] input: Logitech USB Keyboard as
> /devices/pci0000:00/0000:00:1d.3/usb5/5-1/5-1:1.1/input/input4
> [    1.876543] hid-generic 0003:046D:C31D.0004: input: USB HID v1.10
> Device [Logitech USB Keyboard] on usb-0000:00:1d.3-1/input1
> [    2.057877] udevd[91]: starting version 182
> [   12.304518] pixcir 0003:040B:2230.0001: usb_submit_urb(ctrl) failed: -1
> [   12.304594] pixcir 0003:040B:2230.0001: timeout initializing reports
> [   12.304785] input: PIXCIR HID Touch Panel as
> /devices/pci0000:00/0000:00:1d.2/usb4/4-1/4-1:1.0/input/input5
> [   12.305048] pixcir 0003:040B:2230.0001: input: USB HID v1.00 Device
> [PIXCIR HID Touch Panel] on usb-0000:00:1d.2-1/input0
> [   12.361395] EXT3-fs (sda1): using internal journal
> [   12.653933] e1000e 0000:00:19.0: irq 41 for MSI/MSI-X
> [   12.754413] e1000e 0000:00:19.0: irq 41 for MSI/MSI-X
> [   12.754585] IPv6: ADDRCONF(NETDEV_UP): eth0: link is not ready
> [   22.096102] uvesafb: Intel Corporation, Intel(r)PineView Graphics
> Controller, Hardware Version 0.0, OEM: Intel(r)PineView Graphics Chip
> Accelerated VGA BIOS, VBE v3.0
> [   22.127124] uvesafb: VBIOS/hardware doesn't support DDC transfers
> [   22.127182] uvesafb: no monitor limits have been set, default refresh
> rate will be used
> [   22.127365] uvesafb: scrolling: redraw
> [   22.284754] Console: switching to colour frame buffer device 100x30
> [   22.289705] uvesafb: framebuffer at 0xd0000000, mapped to 0xf8280000,
> using 3000k, total 8128k
> [   22.289850] fb0: VESA VGA frame buffer device
> [   28.170923] e1000e: eth0 NIC Link is Up 100 Mbps Full Duplex, Flow
> Control: None
> [   28.173135] e1000e 0000:00:19.0 eth0: 10/100 speed: disabling TSO
> [   28.175451] IPv6: ADDRCONF(NETDEV_CHANGE): eth0: link becomes ready
> [   72.660551] pixcir 0003:040B:2230.0001: usb_submit_urb(ctrl) failed: -1
> [   72.661522] pixcir 0003:040B:2230.0001: timeout initializing reports
> [   72.665381] input: PIXCIR HID Touch Panel as
> /devices/pci0000:00/0000:00:1d.2/usb4/4-1/4-1:1.0/input/input6
> [   72.668159] pixcir 0003:040B:2230.0001: input: USB HID v1.00 Device
> [PIXCIR HID Touch Panel] on usb-0000:00:1d.2-1/input0
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>


