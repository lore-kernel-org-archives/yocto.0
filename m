Return-Path: <swaroop.damarla@gmail.com>
Received: from mail-vb0-f43.google.com (mail-vb0-f43.google.com
	[209.85.212.43]) (using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 504B8E014CC
	for <yocto@yoctoproject.org>; Sun,  3 Mar 2013 22:59:39 -0800 (PST)
Received: by mail-vb0-f43.google.com with SMTP id fs19so798347vbb.2
	for <yocto@yoctoproject.org>; Sun, 03 Mar 2013 22:59:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:date:message-id:subject:from:to
	:content-type; bh=U3wKPK2ux6MRhLYYsNwsq+LilsKPrP3DGRa08jvz80o=;
	b=PyMRpithDBMyH4rbkhqg/Y0xCbwnWIIHX0WE5o8UfrF828m+j2xY1Ls31NNmrGWtJy
	WkLeann+c2dKrz+1lX79pPe28q9Hp3y6aYXIT+9E+1Dz/bio7/vtkdX8HSDn4rQrytQv
	DQjA5vqmDv3PcGpuOeJb1b70ITZq8eEsOy9NF3ROYZ5MKBvc3lhJFKZf9CrU/tm56TtI
	NgEx02tnrsB8di8NUY50uvN8d2SOMhxrv8K0lreNpXNPXUSZJhgv/BKNxIxILfx96Ibm
	kCtyra5BMnRkkl+QB0Jn9oTaABlpAL83dX8cyp33Nss1R+RiSwYcKMQHy6VkurfBuAdo
	DaYg==
MIME-Version: 1.0
X-Received: by 10.58.28.169 with SMTP id c9mr7404071veh.5.1362380378117; Sun,
	03 Mar 2013 22:59:38 -0800 (PST)
Received: by 10.58.187.42 with HTTP; Sun, 3 Mar 2013 22:59:38 -0800 (PST)
Date: Mon, 4 Mar 2013 07:59:38 +0100
Message-ID: <CABTzgQ4=MKSjzty95SoF71LDTqFW8si=Z32XkingURRk3qCWFA@mail.gmail.com>
From: Satya Swaroop Damarla <swaroop.damarla@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Kernel compiled using linux-yocto-3.2 not Starting
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
X-List-Received-Date: Mon, 04 Mar 2013 06:59:39 -0000
Content-Type: multipart/alternative; boundary=047d7b6da95a7c9ea104d713e638

--047d7b6da95a7c9ea104d713e638
Content-Type: text/plain; charset=ISO-8859-1

My kernel is not starting.. I compiled it fora modified version of Avionic
Tamonten board... May I know the potential reasons





U-Boot 2009.11.1-dirty (Nov 03 2011 - 10:04:17)


TEGRA2
Board:   Tegra2 Harmony board
DRAM:  512 MB
NAND:  Chip Id: 0x20 (Handheld SOC) Major: 0x1 Minor: 0x3 SKU: 0x8
512 MiB
MMC:  Sdmmc dev 0... not found
Sdmmc dev 1... detected card
EMMC Probed Successfully. Detected 1 card(s).
*** Warning - bad CRC or NAND, using default environment

In:    serial
Out:   serial
Err:   serial
Net:   No ethernet found.
(Re)start USB...
USB:   Tegra ehci init hccr c5008100 and hcor c5008140 hc_length 64
Register 10011 NbrPorts 1
USB EHCI 1.00
scanning bus for devices... 3 USB Device(s) found
       scanning bus for storage devices... 0 Storage Device(s) found
       scanning bus for ethernet devices... 1 Ethernet Device(s) found

Hit any key to stop autoboot:  0
Loading file "/boot/uImage" from mmc device 1:1 (xxb1)
4021264 bytes read
## Booting kernel from Legacy Image at 17000000 ...
   Image Name:   Linux-3.2.32-yocto-standard
   Image Type:   ARM Linux Kernel Image (uncompressed)
   Data Size:    4021200 Bytes =  3.8 MB
   Load Address: 00008000
   Entry Point:  00008000
   Verifying Checksum ... OK
   Loading Kernel Image ... OK
OK
replacing commandline [mem=384M@0M nvmem=128M@384M vmalloc=384M
video=tegrafb console=ttyS0,115200n8 tegraboot=nand
mtdparts=tegra_nand:358400K@29952K(system) usbcore.old_scheme_first=1 rw
root=/dev/disk/by-]
  adding initrd tag 0x00000000, 0x00000000
 tag: size=0x00000002 tag=0x54410001 (ATAG_CORE)
 tag: size=0x00000004 tag=0x54410006 (ATAG_SERIAL)
 tag: size=0x00000102 tag=0x54410009 (ATAG_CMDLINE)

Starting kernel ...

Cheers,
Satya

--047d7b6da95a7c9ea104d713e638
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">My kernel is not starting.. I compiled it fora modified ve=
rsion of Avionic Tamonten board... May I know the potential reasons<div><br=
></div><div><div>=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=
 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0</div>
<div>=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=
 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0</div><div>U-Boot 2009.11.1-dirty (Nov 03 2011 - 10:04:1=
7) =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0</div>
<div><br></div><div>TEGRA2=A0</div><div>Board: =A0 Tegra2 Harmony board</di=
v><div>DRAM: =A0512 MB</div><div>NAND: =A0Chip Id: 0x20 (Handheld SOC) Majo=
r: 0x1 Minor: 0x3 SKU: 0x8</div><div>512 MiB</div><div>MMC: =A0Sdmmc dev 0.=
.. not found</div>
<div>Sdmmc dev 1... detected card</div><div>EMMC Probed Successfully. Detec=
ted 1 card(s).</div><div>*** Warning - bad CRC or NAND, using default envir=
onment</div><div><br></div><div>In: =A0 =A0serial</div><div>Out: =A0 serial=
</div>
<div>Err: =A0 serial</div><div>Net: =A0 No ethernet found.</div><div>(Re)st=
art USB...</div><div>USB: =A0 Tegra ehci init hccr c5008100 and hcor c50081=
40 hc_length 64</div><div>Register 10011 NbrPorts 1</div><div>USB EHCI 1.00=
</div>
<div>scanning bus for devices... 3 USB Device(s) found</div><div>=A0 =A0 =
=A0 =A0scanning bus for storage devices... 0 Storage Device(s) found</div><=
div>=A0 =A0 =A0 =A0scanning bus for ethernet devices... 1 Ethernet Device(s=
) found</div><div>
<br></div><div>Hit any key to stop autoboot: =A00=A0</div><div>Loading file=
 &quot;/boot/uImage&quot; from mmc device 1:1 (xxb1)</div><div>4021264 byte=
s read</div><div>## Booting kernel from Legacy Image at 17000000 ...</div><=
div>
=A0 =A0Image Name: =A0 Linux-3.2.32-yocto-standard</div><div>=A0 =A0Image T=
ype: =A0 ARM Linux Kernel Image (uncompressed)</div><div>=A0 =A0Data Size: =
=A0 =A04021200 Bytes =3D =A03.8 MB</div><div>=A0 =A0Load Address: 00008000<=
/div><div>=A0 =A0Entry Point: =A000008000</div>
<div>=A0 =A0Verifying Checksum ... OK</div><div>=A0 =A0Loading Kernel Image=
 ... OK</div><div>OK</div><div>replacing commandline [mem=3D384M@0M nvmem=
=3D128M@384M vmalloc=3D384M video=3Dtegrafb console=3DttyS0,115200n8 tegrab=
oot=3Dnand mtdparts=3Dtegra_nand:358400K@29952K(system) usbcore.old_scheme_=
first=3D1 rw root=3D/dev/disk/by-]</div>
<div>=A0 adding initrd tag 0x00000000, 0x00000000</div><div>=A0tag: size=3D=
0x00000002 tag=3D0x54410001 (ATAG_CORE)</div><div>=A0tag: size=3D0x00000004=
 tag=3D0x54410006 (ATAG_SERIAL)</div><div>=A0tag: size=3D0x00000102 tag=3D0=
x54410009 (ATAG_CMDLINE)</div>
<div><br></div><div>Starting kernel ...</div></div><div><br></div><div styl=
e>Cheers,</div><div style>Satya</div><div style><br></div></div>

--047d7b6da95a7c9ea104d713e638--
