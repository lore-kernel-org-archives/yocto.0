Return-Path: <vidal.develone@gmail.com>
Received: from mail-ea0-f172.google.com (mail-ea0-f172.google.com
	[209.85.215.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D6598E017D2
	for <yocto@yoctoproject.org>; Thu, 31 Oct 2013 08:45:19 -0700 (PDT)
Received: by mail-ea0-f172.google.com with SMTP id r16so1496654ead.17
	for <yocto@yoctoproject.org>; Thu, 31 Oct 2013 08:45:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=+5+00pRtwK0Os2ecO5lCTj9CXmPMaZq7SJ2Aat/EPrg=;
	b=Gx5KIaM+wxhCPSeU73xElLi/mgVhizTtHEKlooiop6OgMRXidZ1fHzM8qLYjkDqC6I
	qVv7QVioYxVAnylH2AENeh8cBRzOH/ie03x/fHsIUsVsFEBhb2LkLBJr21UCxgyMSXZn
	klAaAQh4+ZvIiUhgPhCOvC7VtnhPbuicTffN3Iu/JKHuXa3bDu+QUu4lo1It5G5l/Njo
	+65aisPu7pPiLhQbEALhgbPHVQYMitkDs+IiuRGHsKhcHtAIlPRFRw7nt9FzZYUe8JJg
	iEhg5XHaqr36s+/1qYOLxD5CXX+7qq8dosMLOOpuoq5lzN//kIji/EAAG61qO7Dj83Fd
	kFqQ==
MIME-Version: 1.0
X-Received: by 10.14.241.141 with SMTP id g13mr3963860eer.75.1383234317799;
	Thu, 31 Oct 2013 08:45:17 -0700 (PDT)
Received: by 10.223.132.136 with HTTP; Thu, 31 Oct 2013 08:45:17 -0700 (PDT)
In-Reply-To: <CAMKF1spP+BYrodrAoWzO=ZCfDqhpN=1-BnmDMr80-_f+pupdtQ@mail.gmail.com>
References: <CANwz6nxT34jJGydYGe=snHHijwMdMOKdOgnxQWCp0KGkBN4OHw@mail.gmail.com>
	<CAMKF1spw=Kr99nmVHjAw8PELK6E768RBpgxLCZFMcdMyConSEg@mail.gmail.com>
	<CANwz6nyYTVxmNfxK2kK0Z54uDw+Yq=RRTzmpXvJz19MDCB47MA@mail.gmail.com>
	<CAMKF1spP+BYrodrAoWzO=ZCfDqhpN=1-BnmDMr80-_f+pupdtQ@mail.gmail.com>
Date: Thu, 31 Oct 2013 09:45:17 -0600
Message-ID: <CANwz6nzjixVwB1Q=nJ6JCQCJOw-uJe7edmC4gn+FVZ9mK8_-6A@mail.gmail.com>
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
X-List-Received-Date: Thu, 31 Oct 2013 15:45:22 -0000
Content-Type: multipart/alternative; boundary=001a1132f4dc2756c404ea0b5607

--001a1132f4dc2756c404ea0b5607
Content-Type: text/plain; charset=ISO-8859-1

Hello all,
less /etc/udev/rules.d/10-c920.rules
WARNING: terminal is not fully functional
SUBSYSTEM=="video4linux", BUS=="usb", ATTRS{idvendor}=="0x046d",
ATTRS{idProduct
}=="0x082d", NAME="video0", MODE:="0660"
It appears the key BUS is not correct based on the tests below.
My mknod is /bin/mknod.
find / -name sysfs
/usr/include/sysfs
/usr/src/kernel/fs/sysfs

udevadm test --action=add /usr/include/sysfs or udevadm test --action=add
/usr/src/kernel/fs/sysfs unable to open device
'/sys/usr/src/kernel/fs/sysfs'
run_command: calling: test
adm_test: version 182
This program is for debugging only, it does not run any program,
specified by a RUN key. It may show incorrect results, because
some values may be different, or not available at a simulation run.

builtin_kmod_init: load module index
add_matching_files: unable to open '/var/run/udev/rules.d': No such file or
directory
parse_file: reading '/etc/udev/rules.d/10-c920.rules' as rules file
add_rule: unknown key 'BUS' in /etc/udev/rules.d/10-c920.rules:1
add_rule: invalid rule '/etc/udev/rules.d/10-c920.rules:1'

lots of output

udev_rules_new: rules use 18408 bytes tokens (1534 * 12 bytes), 12756 bytes
buffer
udev_rules_new: temporary index used 12800 bytes (640 * 20 bytes)
unable to open device '/sys/usr/include/sysfs'
builtin_kmod_exit: unload module index

Do I add RUN+="/bin/mknod /dev/video0 c 81 0" see below new version of
1--c920.rules
cat 10-c920.rules
SUBSYSTEM=="video4linux", BUS=="usb", ATTRS{idvendor}=="0x046d",
ATTRS{idProduct}=="0x082d", NAME="video0", MODE:="0660", RUN+="/bin/mknod
/dev/video0 c 81 0"
udevadm test --action=add /usr/src/kernel/fs/sysfs
run_command: calling: test
adm_test: version 182
This program is for debugging only, it does not run any program,
specified by a RUN key. It may show incorrect results, because
some values may be different, or not available at a simulation run.

builtin_kmod_init: load module index
add_matching_files: unable to open '/var/run/udev/rules.d': No such file or
directory
parse_file: reading '/etc/udev/rules.d/10-c920.rules' as rules file
add_rule: unknown key 'BUS' in /etc/udev/rules.d/10-c920.rules:1
add_rule: invalid rule '/etc/udev/rules.d/10-c920.rules:1'

Where do you find information for working with rules other than just some
examples?

Thanks


On Thu, Oct 31, 2013 at 8:41 AM, Khem Raj <raj.khem@gmail.com> wrote:

> On Wed, Oct 30, 2013 at 6:12 PM, Edward Vidal <vidal.develone@gmail.com>
> wrote:
> > Hello,
> > This is when I connect the camera
> > udevadm monitor test
> > monitor will print the received events for:
> > UDEV - the event which udev sends out after rule processing
> > KERNEL - the kernel uevent
> >
> > KERNEL[803.263336] add
> > /devices/platform/usbhs_omap/ehci-omap.0/usb1/1-2/1-2.3/1-2.3.4 (usb)
> > KERNEL[803.267456] add
> >
> /devices/platform/usbhs_omap/ehci-omap.0/usb1/1-2/1-2.3/1-2.3.4/1-2.3.4:1.0
> > (usb)
> > KERNEL[803.269287] add
> >
> /devices/platform/usbhs_omap/ehci-omap.0/usb1/1-2/1-2.3/1-2.3.4/1-2.3.4:1.1
> > (usb)
> > KERNEL[803.269958] add
> >
> /devices/platform/usbhs_omap/ehci-omap.0/usb1/1-2/1-2.3/1-2.3.4/1-2.3.4:1.2
> > (usb)
> > KERNEL[803.270721] add
> >
> /devices/platform/usbhs_omap/ehci-omap.0/usb1/1-2/1-2.3/1-2.3.4/1-2.3.4:1.3
> > (usb)
> > KERNEL[803.276214] add
> >
> /devices/platform/usbhs_omap/ehci-omap.0/usb1/1-2/1-2.3/1-2.3.4/usb_device/usbdev1.15
> > (usb_device)**********
> > UDEV  [803.277191] add
> > /devices/platform/usbhs_omap/ehci-omap.0/usb1/1-2/1-2.3/1-2.3.4 (usb)
> > UDEV  [803.306091] add
> >
> /devices/platform/usbhs_omap/ehci-omap.0/usb1/1-2/1-2.3/1-2.3.4/usb_device/usbdev1.15
> > (usb_device)
> > UDEV  [803.318603] add
> >
> /devices/platform/usbhs_omap/ehci-omap.0/usb1/1-2/1-2.3/1-2.3.4/1-2.3.4:1.2
> > (usb)
> > UDEV  [803.324249] add
> >
> /devices/platform/usbhs_omap/ehci-omap.0/usb1/1-2/1-2.3/1-2.3.4/1-2.3.4:1.1
> > (usb)
> > UDEV  [803.329712] add
> >
> /devices/platform/usbhs_omap/ehci-omap.0/usb1/1-2/1-2.3/1-2.3.4/1-2.3.4:1.0
> > (usb)
> > UDEV  [803.333160] add
> >
> /devices/platform/usbhs_omap/ehci-omap.0/usb1/1-2/1-2.3/1-2.3.4/1-2.3.4:1.3
> > (usb)
> >
> > still no /dev/video0
> > ls -la /dev/v*
> > crw-rw---- 1 root tty 7,   0 Jan  1  2000 /dev/vcs
> > crw-rw---- 1 root tty 7,   1 Jan  1  2000 /dev/vcs1
> > crw-rw---- 1 root tty 7,   2 Jan  1  2000 /dev/vcs2
> > crw-rw---- 1 root tty 7,   3 Oct 29 13:51 /dev/vcs3
> > crw-rw---- 1 root tty 7, 128 Jan  1  2000 /dev/vcsa
> > crw-rw---- 1 root tty 7, 129 Jan  1  2000 /dev/vcsa1
> > crw-rw---- 1 root tty 7, 130 Jan  1  2000 /dev/vcsa2
> > crw-rw---- 1 root tty 7, 131 Oct 29 13:51 /dev/vcsa3
> > root@beagleboard:~# lsusb
> > Bus 001 Device 002: ID 0424:9514 Standard Microsystems Corp.
> > Bus 001 Device 001: ID 1d6b:0002 Linux Foundation 2.0 root hub
> > Bus 002 Device 001: ID 1d6b:0002 Linux Foundation 2.0 root hub
> > Bus 001 Device 003: ID 0424:ec00 Standard Microsystems Corp.
> > Bus 001 Device 004: ID 0409:0059 NEC Corp. HighSpeed Hub
> > Bus 001 Device 005: ID 413c:2005 Dell Computer Corp. RT7D50 Keyboard
> > Bus 001 Device 006: ID 046d:c001 Logitech, Inc. N48/M-BB48 [FirstMouse
> Plus]
> > Bus 001 Device 015: ID 046d:082d Logitech, Inc.
> >
> ***********************************************************************************
> >
> >
> > udevadm monitor --udev
> > monitor will print the received events for:
> > UDEV - the event which udev sends out after rule processing
> > camera removed*****************************************************
> > UDEV  [1325.916811] remove
> >
> /devices/platform/usbhs_omap/ehci-omap.0/usb1/1-2/1-2.3/1-2.3.4/1-2.3.4:1.1
> > (usb)
> > UDEV  [1325.918489] remove
> >
> /devices/platform/usbhs_omap/ehci-omap.0/usb1/1-2/1-2.3/1-2.3.4/1-2.3.4:1.0
> > (usb)
> > UDEV  [1325.919282] remove
> >
> /devices/platform/usbhs_omap/ehci-omap.0/usb1/1-2/1-2.3/1-2.3.4/1-2.3.4:1.2
> > (usb)
> > UDEV  [1325.923005] remove
> >
> /devices/platform/usbhs_omap/ehci-omap.0/usb1/1-2/1-2.3/1-2.3.4/1-2.3.4:1.3
> > (usb)
> > UDEV  [1325.928437] remove
> >
> /devices/platform/usbhs_omap/ehci-omap.0/usb1/1-2/1-2.3/1-2.3.4/usb_device/usbdev1.15
> > (usb_device)
> > UDEV  [1325.932709] remove
> > /devices/platform/usbhs_omap/ehci-omap.0/usb1/1-2/1-2.3/1-2.3.4 (usb)
> > camera added
> >
> ***************************************************************************
> > UDEV  [1329.344727] add
> > /devices/platform/usbhs_omap/ehci-omap.0/usb1/1-2/1-2.3/1-2.3.4 (usb)
> > UDEV  [1329.376313] add
> >
> /devices/platform/usbhs_omap/ehci-omap.0/usb1/1-2/1-2.3/1-2.3.4/usb_device/usbdev1.16
> > (usb_device)
> > UDEV  [1329.389008] add
> >
> /devices/platform/usbhs_omap/ehci-omap.0/usb1/1-2/1-2.3/1-2.3.4/1-2.3.4:1.2
> > (usb)
> > UDEV  [1329.396241] add
> >
> /devices/platform/usbhs_omap/ehci-omap.0/usb1/1-2/1-2.3/1-2.3.4/1-2.3.4:1.1
> > (usb)
> > UDEV  [1329.401795] add
> >
> /devices/platform/usbhs_omap/ehci-omap.0/usb1/1-2/1-2.3/1-2.3.4/1-2.3.4:1.0
> > (usb)
> > UDEV  [1329.406739] add
> >
> /devices/platform/usbhs_omap/ehci-omap.0/usb1/1-2/1-2.3/1-2.3.4/1-2.3.4:1.3
> > (usb)
> >
> > This is what I get in /var/log/messages
> > Oct 29 14:17:28 beagleboard user.info kernel: usb 1-2.3.4: USB
> disconnect,
> > device number 16
> > Oct 29 14:17:31 beagleboard user.info kernel: usb 1-2.3.4: new
> high-speed
> > USB device number 17 using ehci-omap
> > Is there anything else that I can test  / provide
>
> OK another thing to try is
>
> udevadm test --action=add /sys/....
>
> where /sys/... is path to your device in sysfs
>
> this should give enough reason to what udev is doing when its getting an
> add
> event for this device.
>
> Secondly in your udev rule refer mknod with absolute path like
> /sbin/mknod or /bin/mknod where ever it is
>

--001a1132f4dc2756c404ea0b5607
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello all,<br>less /etc/udev/rules.d/10-c920.rules <b=
r>WARNING: terminal is not fully functional<br>SUBSYSTEM=3D=3D&quot;video4l=
inux&quot;, BUS=3D=3D&quot;usb&quot;, ATTRS{idvendor}=3D=3D&quot;0x046d&quo=
t;, ATTRS{idProduct<br>
}=3D=3D&quot;0x082d&quot;, NAME=3D&quot;video0&quot;, MODE:=3D&quot;0660&qu=
ot;<br>It appears the key BUS is not correct based on the tests below. <br>=
My mknod is /bin/mknod.=A0=A0 <br>find / -name sysfs<br>/usr/include/sysfs<=
br>/usr/src/kernel/fs/sysfs<br>
<br>udevadm test --action=3Dadd /usr/include/sysfs or udevadm test --action=
=3Dadd /usr/src/kernel/fs/sysfs unable to open device &#39;/sys/usr/src/ker=
nel/fs/sysfs&#39;<br>run_command: calling: test<br>adm_test: version 182<br=
>
This program is for debugging only, it does not run any program,<br>specifi=
ed by a RUN key. It may show incorrect results, because<br>some values may =
be different, or not available at a simulation run.<br><br>builtin_kmod_ini=
t: load module index<br>
add_matching_files: unable to open &#39;/var/run/udev/rules.d&#39;: No such=
 file or directory<br>parse_file: reading &#39;/etc/udev/rules.d/10-c920.ru=
les&#39; as rules file<br>add_rule: unknown key &#39;BUS&#39; in /etc/udev/=
rules.d/10-c920.rules:1<br>
add_rule: invalid rule &#39;/etc/udev/rules.d/10-c920.rules:1&#39;<br>=A0<b=
r>lots of output <br><br>udev_rules_new: rules use 18408 bytes tokens (1534=
 * 12 bytes), 12756 bytes buffer<br>udev_rules_new: temporary index used 12=
800 bytes (640 * 20 bytes)<br>
unable to open device &#39;/sys/usr/include/sysfs&#39;<br>builtin_kmod_exit=
: unload module index<br><br>Do I add RUN+=3D&quot;/bin/mknod  /dev/video0 =
c 81 0&quot; see below new version of 1--c920.rules<br>cat 10-c920.rules <b=
r>
SUBSYSTEM=3D=3D&quot;video4linux&quot;, BUS=3D=3D&quot;usb&quot;, ATTRS{idv=
endor}=3D=3D&quot;0x046d&quot;, ATTRS{idProduct}=3D=3D&quot;0x082d&quot;, N=
AME=3D&quot;video0&quot;, MODE:=3D&quot;0660&quot;, RUN+=3D&quot;/bin/mknod=
 /dev/video0 c 81 0&quot;<br>
udevadm test --action=3Dadd /usr/src/kernel/fs/sysfs<br>run_command: callin=
g: test<br>adm_test: version 182<br>This program is for debugging only, it =
does not run any program,<br>specified by a RUN key. It may show incorrect =
results, because<br>
some values may be different, or not available at a simulation run.<br><br>=
builtin_kmod_init: load module index<br>add_matching_files: unable to open =
&#39;/var/run/udev/rules.d&#39;: No such file or directory<br>parse_file: r=
eading &#39;/etc/udev/rules.d/10-c920.rules&#39; as rules file<br>
add_rule: unknown key &#39;BUS&#39; in /etc/udev/rules.d/10-c920.rules:1<br=
>add_rule: invalid rule &#39;/etc/udev/rules.d/10-c920.rules:1&#39;<br><br>=
</div><div>Where do you find information for working with rules other than =
just some examples?<br>
<br></div>Thanks<br></div><div class=3D"gmail_extra"><br><br><div class=3D"=
gmail_quote">On Thu, Oct 31, 2013 at 8:41 AM, Khem Raj <span dir=3D"ltr">&l=
t;<a href=3D"mailto:raj.khem@gmail.com" target=3D"_blank">raj.khem@gmail.co=
m</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"im">On Wed, Oct 30, 2013 at 6:=
12 PM, Edward Vidal &lt;<a href=3D"mailto:vidal.develone@gmail.com">vidal.d=
evelone@gmail.com</a>&gt; wrote:<br>

&gt; Hello,<br>
</div><div><div class=3D"h5">&gt; This is when I connect the camera<br>
&gt; udevadm monitor test<br>
&gt; monitor will print the received events for:<br>
&gt; UDEV - the event which udev sends out after rule processing<br>
&gt; KERNEL - the kernel uevent<br>
&gt;<br>
&gt; KERNEL[803.263336] add<br>
&gt; /devices/platform/usbhs_omap/ehci-omap.0/usb1/1-2/1-2.3/1-2.3.4 (usb)<=
br>
&gt; KERNEL[803.267456] add<br>
&gt; /devices/platform/usbhs_omap/ehci-omap.0/usb1/1-2/1-2.3/1-2.3.4/1-2.3.=
4:1.0<br>
&gt; (usb)<br>
&gt; KERNEL[803.269287] add<br>
&gt; /devices/platform/usbhs_omap/ehci-omap.0/usb1/1-2/1-2.3/1-2.3.4/1-2.3.=
4:1.1<br>
&gt; (usb)<br>
&gt; KERNEL[803.269958] add<br>
&gt; /devices/platform/usbhs_omap/ehci-omap.0/usb1/1-2/1-2.3/1-2.3.4/1-2.3.=
4:1.2<br>
&gt; (usb)<br>
&gt; KERNEL[803.270721] add<br>
&gt; /devices/platform/usbhs_omap/ehci-omap.0/usb1/1-2/1-2.3/1-2.3.4/1-2.3.=
4:1.3<br>
&gt; (usb)<br>
&gt; KERNEL[803.276214] add<br>
&gt; /devices/platform/usbhs_omap/ehci-omap.0/usb1/1-2/1-2.3/1-2.3.4/usb_de=
vice/usbdev1.15<br>
&gt; (usb_device)**********<br>
&gt; UDEV =A0[803.277191] add<br>
&gt; /devices/platform/usbhs_omap/ehci-omap.0/usb1/1-2/1-2.3/1-2.3.4 (usb)<=
br>
&gt; UDEV =A0[803.306091] add<br>
&gt; /devices/platform/usbhs_omap/ehci-omap.0/usb1/1-2/1-2.3/1-2.3.4/usb_de=
vice/usbdev1.15<br>
&gt; (usb_device)<br>
&gt; UDEV =A0[803.318603] add<br>
&gt; /devices/platform/usbhs_omap/ehci-omap.0/usb1/1-2/1-2.3/1-2.3.4/1-2.3.=
4:1.2<br>
&gt; (usb)<br>
&gt; UDEV =A0[803.324249] add<br>
&gt; /devices/platform/usbhs_omap/ehci-omap.0/usb1/1-2/1-2.3/1-2.3.4/1-2.3.=
4:1.1<br>
&gt; (usb)<br>
&gt; UDEV =A0[803.329712] add<br>
&gt; /devices/platform/usbhs_omap/ehci-omap.0/usb1/1-2/1-2.3/1-2.3.4/1-2.3.=
4:1.0<br>
&gt; (usb)<br>
&gt; UDEV =A0[803.333160] add<br>
&gt; /devices/platform/usbhs_omap/ehci-omap.0/usb1/1-2/1-2.3/1-2.3.4/1-2.3.=
4:1.3<br>
&gt; (usb)<br>
&gt;<br>
&gt; still no /dev/video0<br>
&gt; ls -la /dev/v*<br>
&gt; crw-rw---- 1 root tty 7, =A0 0 Jan =A01 =A02000 /dev/vcs<br>
&gt; crw-rw---- 1 root tty 7, =A0 1 Jan =A01 =A02000 /dev/vcs1<br>
&gt; crw-rw---- 1 root tty 7, =A0 2 Jan =A01 =A02000 /dev/vcs2<br>
&gt; crw-rw---- 1 root tty 7, =A0 3 Oct 29 13:51 /dev/vcs3<br>
&gt; crw-rw---- 1 root tty 7, 128 Jan =A01 =A02000 /dev/vcsa<br>
&gt; crw-rw---- 1 root tty 7, 129 Jan =A01 =A02000 /dev/vcsa1<br>
&gt; crw-rw---- 1 root tty 7, 130 Jan =A01 =A02000 /dev/vcsa2<br>
&gt; crw-rw---- 1 root tty 7, 131 Oct 29 13:51 /dev/vcsa3<br>
&gt; root@beagleboard:~# lsusb<br>
&gt; Bus 001 Device 002: ID 0424:9514 Standard Microsystems Corp.<br>
&gt; Bus 001 Device 001: ID 1d6b:0002 Linux Foundation 2.0 root hub<br>
&gt; Bus 002 Device 001: ID 1d6b:0002 Linux Foundation 2.0 root hub<br>
&gt; Bus 001 Device 003: ID 0424:ec00 Standard Microsystems Corp.<br>
&gt; Bus 001 Device 004: ID 0409:0059 NEC Corp. HighSpeed Hub<br>
&gt; Bus 001 Device 005: ID 413c:2005 Dell Computer Corp. RT7D50 Keyboard<b=
r>
&gt; Bus 001 Device 006: ID 046d:c001 Logitech, Inc. N48/M-BB48 [FirstMouse=
 Plus]<br>
&gt; Bus 001 Device 015: ID 046d:082d Logitech, Inc.<br>
&gt; **********************************************************************=
*************<br>
&gt;<br>
&gt;<br>
&gt; udevadm monitor --udev<br>
&gt; monitor will print the received events for:<br>
&gt; UDEV - the event which udev sends out after rule processing<br>
&gt; camera removed*****************************************************<br=
>
&gt; UDEV =A0[1325.916811] remove<br>
&gt; /devices/platform/usbhs_omap/ehci-omap.0/usb1/1-2/1-2.3/1-2.3.4/1-2.3.=
4:1.1<br>
&gt; (usb)<br>
&gt; UDEV =A0[1325.918489] remove<br>
&gt; /devices/platform/usbhs_omap/ehci-omap.0/usb1/1-2/1-2.3/1-2.3.4/1-2.3.=
4:1.0<br>
&gt; (usb)<br>
&gt; UDEV =A0[1325.919282] remove<br>
&gt; /devices/platform/usbhs_omap/ehci-omap.0/usb1/1-2/1-2.3/1-2.3.4/1-2.3.=
4:1.2<br>
&gt; (usb)<br>
&gt; UDEV =A0[1325.923005] remove<br>
&gt; /devices/platform/usbhs_omap/ehci-omap.0/usb1/1-2/1-2.3/1-2.3.4/1-2.3.=
4:1.3<br>
&gt; (usb)<br>
&gt; UDEV =A0[1325.928437] remove<br>
&gt; /devices/platform/usbhs_omap/ehci-omap.0/usb1/1-2/1-2.3/1-2.3.4/usb_de=
vice/usbdev1.15<br>
&gt; (usb_device)<br>
&gt; UDEV =A0[1325.932709] remove<br>
&gt; /devices/platform/usbhs_omap/ehci-omap.0/usb1/1-2/1-2.3/1-2.3.4 (usb)<=
br>
&gt; camera added<br>
&gt; **********************************************************************=
*****<br>
&gt; UDEV =A0[1329.344727] add<br>
&gt; /devices/platform/usbhs_omap/ehci-omap.0/usb1/1-2/1-2.3/1-2.3.4 (usb)<=
br>
&gt; UDEV =A0[1329.376313] add<br>
&gt; /devices/platform/usbhs_omap/ehci-omap.0/usb1/1-2/1-2.3/1-2.3.4/usb_de=
vice/usbdev1.16<br>
&gt; (usb_device)<br>
&gt; UDEV =A0[1329.389008] add<br>
&gt; /devices/platform/usbhs_omap/ehci-omap.0/usb1/1-2/1-2.3/1-2.3.4/1-2.3.=
4:1.2<br>
&gt; (usb)<br>
&gt; UDEV =A0[1329.396241] add<br>
&gt; /devices/platform/usbhs_omap/ehci-omap.0/usb1/1-2/1-2.3/1-2.3.4/1-2.3.=
4:1.1<br>
&gt; (usb)<br>
&gt; UDEV =A0[1329.401795] add<br>
&gt; /devices/platform/usbhs_omap/ehci-omap.0/usb1/1-2/1-2.3/1-2.3.4/1-2.3.=
4:1.0<br>
&gt; (usb)<br>
&gt; UDEV =A0[1329.406739] add<br>
&gt; /devices/platform/usbhs_omap/ehci-omap.0/usb1/1-2/1-2.3/1-2.3.4/1-2.3.=
4:1.3<br>
&gt; (usb)<br>
&gt;<br>
&gt; This is what I get in /var/log/messages<br>
&gt; Oct 29 14:17:28 beagleboard <a href=3D"http://user.info" target=3D"_bl=
ank">user.info</a> kernel: usb 1-2.3.4: USB disconnect,<br>
&gt; device number 16<br>
&gt; Oct 29 14:17:31 beagleboard <a href=3D"http://user.info" target=3D"_bl=
ank">user.info</a> kernel: usb 1-2.3.4: new high-speed<br>
&gt; USB device number 17 using ehci-omap<br>
&gt; Is there anything else that I can test =A0/ provide<br>
<br>
</div></div>OK another thing to try is<br>
<br>
udevadm test --action=3Dadd /sys/....<br>
<br>
where /sys/... is path to your device in sysfs<br>
<br>
this should give enough reason to what udev is doing when its getting an ad=
d<br>
event for this device.<br>
<br>
Secondly in your udev rule refer mknod with absolute path like<br>
/sbin/mknod or /bin/mknod where ever it is<br>
</blockquote></div><br></div>

--001a1132f4dc2756c404ea0b5607--
