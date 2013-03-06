Return-Path: <swaroop.damarla@gmail.com>
Received: from mail-vc0-f182.google.com (mail-vc0-f182.google.com
	[209.85.220.182]) (using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 80C9FE014F8
	for <yocto@yoctoproject.org>; Wed,  6 Mar 2013 07:32:35 -0800 (PST)
Received: by mail-vc0-f182.google.com with SMTP id fl17so4947609vcb.27
	for <yocto@yoctoproject.org>; Wed, 06 Mar 2013 07:32:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:date:message-id:subject:from:to
	:content-type; bh=8plFB1kTe6iDzNWmV+Z0nC9p5H6d74C3CWpZTjt3UQI=;
	b=PZnni0+YzcosDhJ636OMNcnpEIVuqmy89Caf6mnTYLWqJpDn3g4vODg1xDuSrTFIfS
	ZIPpFpXptwjWMVB7GKdYjfiu8oYua2SRj32F3Kt4Sv9KWSK+12oDJLL04VP3IaoCAk3M
	im7wtPbUmHOEjt5UHX79lVj4c42ucTmVLRRZWsoUimSO00dcWiiA5EcCUeICpHlHGGx8
	YEkIYtDFAeKFPAoppkHiPwFnvAaUmkstdBxNuKg0hoyLVO6q8dWznlQiFZC72RN5exvb
	0dMazL1ejvbZhcJvXZiV4p4H+SdDY2ie5jufRImTt3W4rOJeoZLrhbx/313wdh6OXf0P
	uzww==
MIME-Version: 1.0
X-Received: by 10.220.205.195 with SMTP id fr3mr11356541vcb.6.1362583954223;
	Wed, 06 Mar 2013 07:32:34 -0800 (PST)
Received: by 10.58.187.42 with HTTP; Wed, 6 Mar 2013 07:32:34 -0800 (PST)
Date: Wed, 6 Mar 2013 16:32:34 +0100
Message-ID: <CABTzgQ6bgSFJ2nu2PcW37sfb=YiibDqOPZyc9m5u_w8RE=GJuA@mail.gmail.com>
From: Satya Swaroop Damarla <swaroop.damarla@gmail.com>
To: Rudolf Streif <rstreif@linuxfoundation.org>,
	=?ISO-8859-1?Q?Hans_Beck=E9rus?= <hans.beckerus@gmail.com>, 
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Problem with core-image-sato at init
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
X-List-Received-Date: Wed, 06 Mar 2013 15:32:35 -0000
Content-Type: multipart/alternative; boundary=14dae9cdc485917d3b04d7434cea

--14dae9cdc485917d3b04d7434cea
Content-Type: text/plain; charset=ISO-8859-1

Hey Guys, Hi Rudy, Hi Hans

As promised I am coming with the problem again.. I successfully made
core-image-minimal working and boot after chnaging the boot parameters...
but my core-image-sato is hanging at the boot.

I looked in the init files of core-image minimal and core-image-sato and
they are the same. Here is the output where it logs.... I tried to find the
error with my little yocto experience but so far no success. I would
request your professional suggestions in this problem

[    2.722016] Waiting for root device /dev/mmcblk0p1...
[    2.751141] usb 1-1.1: New USB device found, idVendor=0424,
idProduct=ec00
[    2.758007] usb 1-1.1: New USB device strings: Mfr=1, Product=2,
SerialNumber=3
[    2.765318] usb 1-1.1: Product: LAN9514
[    2.769216] usb 1-1.1: Manufacturer: SMSC
[    2.773246] usb 1-1.1: SerialNumber: 12345678
[    2.786684] smsc95xx v1.0.4
[    2.853796] smsc95xx 1-1.1:1.0: eth0: register 'smsc95xx' at
usb-tegra-ehci.2-1.1, smsc95xx USB 2.0 Ethernet, 00:0c:32:0c:07:02
[    2.873340] mmc2: new high speed SD card at address 13f1
[    2.879294] mmcblk0: mmc2:13f1 SD02G 1.83 GiB
[    2.885877]  mmcblk0: p1
[    2.940181] EXT4-fs (mmcblk0p1): mounting ext2 file system using the
ext4 subsystem
[    2.975889] EXT4-fs (mmcblk0p1): warning: mounting unchecked fs, running
e2fsck is recommended
[    3.232853] EXT4-fs (mmcblk0p1): mounted filesystem without journal.
Opts: (null)
[    3.240408] VFS: Mounted root (ext2 filesystem) on device 179:1.
[    3.273397] devtmpfs: mounted
[    3.276615] Freeing init memory: 236K
INIT: version 2.88 booting

Cheers,
Satya

--14dae9cdc485917d3b04d7434cea
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hey Guys, Hi Rudy, Hi Hans<div><br></div><div style>As pro=
mised I am coming with the problem again.. I successfully made core-image-m=
inimal working and boot after chnaging the boot parameters... but my core-i=
mage-sato is hanging at the boot.</div>
<div style><br></div><div style>I looked in the init files of core-image mi=
nimal and core-image-sato and they are the same. Here is the output where i=
t logs.... I tried to find the error with my little yocto experience but so=
 far no success. I would request your professional suggestions in this prob=
lem</div>
<div style><br></div><div style><div>[ =A0 =A02.722016] Waiting for root de=
vice /dev/mmcblk0p1...</div><div>[ =A0 =A02.751141] usb 1-1.1: New USB devi=
ce found, idVendor=3D0424, idProduct=3Dec00</div><div>[ =A0 =A02.758007] us=
b 1-1.1: New USB device strings: Mfr=3D1, Product=3D2, SerialNumber=3D3</di=
v>
<div>[ =A0 =A02.765318] usb 1-1.1: Product: LAN9514</div><div>[ =A0 =A02.76=
9216] usb 1-1.1: Manufacturer: SMSC</div><div>[ =A0 =A02.773246] usb 1-1.1:=
 SerialNumber: 12345678</div><div>[ =A0 =A02.786684] smsc95xx v1.0.4</div><=
div>[ =A0 =A02.853796] smsc95xx 1-1.1:1.0: eth0: register &#39;smsc95xx&#39=
; at usb-tegra-ehci.2-1.1, smsc95xx USB 2.0 Ethernet, 00:0c:32:0c:07:02</di=
v>
<div>[ =A0 =A02.873340] mmc2: new high speed SD card at address 13f1</div><=
div>[ =A0 =A02.879294] mmcblk0: mmc2:13f1 SD02G 1.83 GiB=A0</div><div>[ =A0=
 =A02.885877] =A0mmcblk0: p1</div><div>[ =A0 =A02.940181] EXT4-fs (mmcblk0p=
1): mounting ext2 file system using the ext4 subsystem</div>
<div>[ =A0 =A02.975889] EXT4-fs (mmcblk0p1): warning: mounting unchecked fs=
, running e2fsck is recommended</div><div>[ =A0 =A03.232853] EXT4-fs (mmcbl=
k0p1): mounted filesystem without journal. Opts: (null)</div><div>[ =A0 =A0=
3.240408] VFS: Mounted root (ext2 filesystem) on device 179:1.</div>
<div>[ =A0 =A03.273397] devtmpfs: mounted</div><div>[ =A0 =A03.276615] Free=
ing init memory: 236K</div><div>INIT: version 2.88 booting</div><div><br></=
div><div style>Cheers,</div><div style>Satya</div></div></div>

--14dae9cdc485917d3b04d7434cea--
