Return-Path: <jonathan.austin@arm.com>
Received: from service87.mimecast.com (service87.mimecast.com [91.220.42.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 11CDCE009A7
	for <yocto@yoctoproject.org>; Tue, 11 Mar 2014 11:00:29 -0700 (PDT)
Received: from cam-owa2.Emea.Arm.com (fw-tnat.cambridge.arm.com
	[217.140.96.21]) by service87.mimecast.com;
	Tue, 11 Mar 2014 18:00:24 +0000
Received: from [10.2.202.23] ([10.1.255.212]) by cam-owa2.Emea.Arm.com with
	Microsoft SMTPSVC(6.0.3790.3959); Tue, 11 Mar 2014 18:00:33 +0000
Message-ID: <531F4F28.40506@arm.com>
Date: Tue, 11 Mar 2014 18:00:08 +0000
From: Jonathan Austin <jonathan.austin@arm.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.2.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
X-OriginalArrivalTime: 11 Mar 2014 18:00:33.0866 (UTC)
	FILETIME=[CC725AA0:01CF3D53]
X-MC-Unique: 114031118002402301
Subject: Debugging udev cache issues
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
X-List-Received-Date: Tue, 11 Mar 2014 18:00:30 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi all,

I've built a small poky/Yocto 1.5 system for an imx6 board, using
core-image-minimal. I want to use the gadget driver, and have an init
script of my own to set that up.

However, this only works when the udev cache is not involved at boot time.

On the first boot of my new system, udev runs and loads the modules for my
USB hardware. (among other things):

---
Starting udev
udevd[69]: starting version 182
usbcore: registered new interface driver usbfs
usbcore: registered new interface driver hub
usbcore: registered new device driver usb
[...]
Starting Bootlog daemon: bootlogd: cannot allocate pseudo tty: No such file=
 or directory bootlogd.
Populating dev cache
---

Good!

However, on subsequent boots, the udev cache kicks in and the appropriate
modules are no longer loaded.
---
Starting udev
udevd[71]: starting version 182
Starting Bootlog daemon: bootlogd: cannot allocate pseudo tty: No such file=
 or directory bootlogd.
[...]
---

This means the init script that loads the gadget module for me fails.

I added some debug (set -x) to the udev init script, and I can see that
it is finding/unpacking the cache, and then running udevadm, as expected:

---
+ cd /
+ tar xf /etc/dev.tar
+ not_first_boot=3D1
+ [ no !=3D no ]
+ [ -e /dev/shm/udev.cache ]
+ rm -f /dev/shm/udev.cache
+ kill_udevd
+ echo -e \000\000\000\000
+ /lib/udev/udevd -d
+ udevadm control --env=3DSTARTUP=3D1
+ [ 1 !=3D  ]
+ udevadm trigger --action=3Dadd --subsystem-nomatch=3Dtty --subsystem-noma=
tch=3Dmem --subsystem-nomatch=3Dvc --subsystem-nomatch=3Dvtconsole --subsys=
tem-nomatch=3Dmisc --subsystem-nomatch=3Ddcon --subsystem-nomatch=3Dpci_bus=
 --subsystem-nomatch=3Dgraphics --subsystem-nomatch=3Dbacklight --subsystem=
-nomatch=3Dvideo4linux --subsystem-nomatch=3Dplatform
+ exit 0
+ udevadm settle --timeout=3D3
---

But at that stage, no drivers are loaded.

Curiously, if I manually run the udevadm trigger command (as above) after I=
've
logged in, the usb drivers come up...

$udevadm trigger --action=3Dadd --subsystem-nomatch=3Dtty --subsystem-nomat=
ch=3Dmem --subsystem-nomatch=3Dvc --subsystem-nomatch=3Dvtconsole --subsyst=
em-nomatch=3Dmisc --subsystem-nomatch=3Ddcon --subsystem-nomatch=3Dpci_bus =
 --subsystem-nomatch=3Dgraphics --subsystem-nomatch=3Dbacklight --subsystem=
-nomatch=3Dvideo4linux--subsystem-nomatch=3Dplatform
usbcore: registered new interface driver usbfs
usbcore: registered new interface driver hub
usbcore: registered new device driver usb
[...]

From there I can restart my service that controls the gadget driver and it
works...

This behaviour seems insensitive to the STARTUP env variable - I can
set it either way when I manually run udevadm and it still 'works' (ie caus=
es
the USB hardware to be initialized)

So, I guess my initial question is: Why does running:

udevadm trigger --action=3Dadd --subsystem-noma[..etc...]

inside of the udev init script not work as expected, and how can I debug th=
is
further? Does this work for other people with core-image-minimal? Perhaps I=
've
missed something obvious about how to compose the system?

I am aware I can disable the udev cache, but I'd rather sort out what's
going wrong rather than turn it off because it isn't working!

Thanks in advance for any pointers,

Jonny


