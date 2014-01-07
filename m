Return-Path: <vidal.develone@gmail.com>
Received: from mail-qa0-f41.google.com (mail-qa0-f41.google.com
	[209.85.216.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A8A9CE006CA;
	Tue,  7 Jan 2014 14:07:53 -0800 (PST)
Received: by mail-qa0-f41.google.com with SMTP id w5so1159312qac.14
	for <multiple recipients>; Tue, 07 Jan 2014 14:07:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=wIJPZ+0QQP7mtaZ4gg+Zjc5QFQlBIK6v82ULpJX3xrY=;
	b=AysT8RryYBeXRje8D/tK45u8EPl3aW6bGWz105OaNqG/gN815u17pzyNJ14m9I9LtC
	kecBcmKONO+fE5LRRT2wTbRFj77z3nLpynNgP0y7hV1U7fMvs4uIHUg3S4pDbUe2Mm5w
	Td+/QZqNmfueEBOedtnKhTmYPNy/PGVU7883B/CjfUZ30KCsfaem3ggd3Bj1/j7BX0Xe
	UjbzIEoFJ/FcaZS9mqU3JyJLmbi9tgWldC0zmSWucKNKQT4zr0QrO6zO1iTjt+eMSE25
	qUNzjaDyHiFiXxaDThqskhI1oq6QnvGt3oOsj/rX+oQpDNMog2mTVtP5A3EWqrgjBNWp
	4pdA==
MIME-Version: 1.0
X-Received: by 10.49.28.101 with SMTP id a5mr201198553qeh.70.1389132472254;
	Tue, 07 Jan 2014 14:07:52 -0800 (PST)
Received: by 10.140.37.49 with HTTP; Tue, 7 Jan 2014 14:07:52 -0800 (PST)
Date: Tue, 7 Jan 2014 15:07:52 -0700
Message-ID: <CANwz6nyrM0SP=xukjr2QtYbR4M2XU1F7a7up1wW1rCAoQP-TCQ@mail.gmail.com>
From: Edward Vidal <vidal.develone@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	meta-xilinx@yoctoproject.org
Subject: booting zedboard dora build
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
X-List-Received-Date: Tue, 07 Jan 2014 22:07:57 -0000
Content-Type: multipart/alternative; boundary=047d7bd6adbc8e046004ef689bc1

--047d7bd6adbc8e046004ef689bc1
Content-Type: text/plain; charset=ISO-8859-1

hello All,

My boot starts to boot then I get a data abort see below.

md5sums of files where they source to be put on /run/media/vidal/ZED_BOOT/
These should match the md5sums on /run/media/vidal/ZED_BOOT/
d34217fdf453c318a11bada96464a014  yocto010514/BOOT.BIN
7a1525c3a1a63fcffbb172348cdd4221
zedboard_support_files/boot_files_yocto_wmyled/devicetree.dtb
7cf4e3eea28ce84886d4618856703979  yocto010514/zedboard-zynq7/uImage

md5sum /run/media/vidal/ZED_BOOT/*

d34217fdf453c318a11bada96464a014  /run/media/vidal/ZED_BOOT/BOOT.BIN
u-boot created with poky & bootgen
yocto010514/bootimage.bif
the_ROM_image:
{
        [bootloader]/home/vidal/yocto010514/FSBL.elf
        /home/vidal/yocto010514//system.bit
        /home/vidal/yocto010514/zedboard-zynq7/u-boot.elf
}

7a1525c3a1a63fcffbb172348cdd4221
/run/media/vidal/ZED_BOOT/devicetree.dtb   linux-digilent
105fce435d72233f63a35aeba7b8eab1  /run/media/vidal/ZED_BOOT/uEnv.txt
This the contents of uEnv.txt

devtreeld=fatload mmc 0 0x2A00000 devicetree.dtb
kerload=fatload mmc 0 0x00008000 uImage
mmcboot=run devtreeld; run kerload; bootm 0x00008000 - 0x2A00000

7cf4e3eea28ce84886d4618856703979  /run/media/vidal/ZED_BOOT/uImage
created with poky

mkimage -l /home/vidal/yocto010514/zedboard-zynq7/uImage
Image Name:   Linux-3.8.11-xilinx
Created:      Sun Jan  5 15:56:08 2014
Image Type:   ARM Linux Kernel Image (uncompressed)
Data Size:    2858760 Bytes = 2791.76 kB = 2.73 MB
Load Address: 00008000
Entry Point:  00008000


ls -la /run/media/vidal/ZED_BOOT/*
-rw-r--r--. 1 vidal users 4372888 Jan  7 13:04
/run/media/vidal/ZED_BOOT/BOOT.BIN
-rw-r--r--. 1 vidal users    9720 Jan  7 12:39
/run/media/vidal/ZED_BOOT/devicetree.dtb
-rw-r--r--. 1 vidal users     154 Jan  7 14:05
/run/media/vidal/ZED_BOOT/uEnv.txt
-rw-r--r--. 1 vidal users 2858824 Jan  7 13:27 /run/media/vidal/ZED_BOOT/uImage


After the uEnv.txt has been read
* - * Qodem 0.1.2 Capture Generated Tue, 07 Jan 2014 14:17:21 -0700 BEGIN * - *

echo $mmcboot
run devtreeld; run kerload; bootm 0x00008000 - 0x2A00000
zynq-uboot> echo $devtreeld
fatload mmc 0 0x2A00000 devicetree.dtb
zynq-uboot> echo $kerload
fatload mmc 0 0x00008000 uImage
zynq-uboot> setenv modeboot mmcboot
zynq-uboot> boot
Now when I boot using mmcboot this is the output

reading devicetree.dtb
9720 bytes read in 18 ms (527.3 KiB/s)
reading uImage
2858824 bytes read in 444 ms (6.1 MiB/s)
## Booting kernel from Legacy Image at 00008000 ...
   Image Name:   Linux-3.8.11-xilinx
   Image Type:   ARM Linux Kernel Image (uncompressed)
   Data Size:    2858760 Bytes = 2.7 MiB
   Load Address: 00008000
   Entry Point:  00008000
   Verifying Checksum ... OK
## Flattened Device Tree blob at 02a00000
   Booting using the fdt blob at 0x2a00000
   XIP Kernel Image ... OK
   Loading Device Tree to 1fb4f000, end 1fb545f7 ... OK

Starting kernel ...

data abort

    MAYBE you should read doc/README.arm-unaligned-accesses

pc : [<1ff7624c>]   lr : [<1ff777d0>]
sp : 3ffffffc  ip : 00000000 fp : 00020205
r10: 1ffaeaf0  r9 : f345364f r8 : 00800000
r7 : 00000000  r6 : 00008000 r5 : 1ffaeaf0  r4 : 00000000
r3 : 00002614  r2 : 1fb4f000 r1 : baefa2ee  r0 : 11acb1b4
Flags: nzcv  IRQs on  FIQs on  Mode SVC_32
Resetting CPU ...

resetting ...

Xilinx First Stage Boot Loader
Release 14.3 Sep 29 2013-13:27:28
Devcfg driver initialized
Silicon Version 1.0
Boot mode is SD
SD Init Done
Flash BaseAddress E0100000
Reboot status register 0x60000000
ImageStartAddress = 00000000
PartitionNumber = 00000000
flash read base addr E0100000, image base 0
FSBL main: Skip partition
Reboot status register 0x61000000
ImageStartAddress = 00000000
PartitionNumber = 00000001
flash read base addr E0100000, image base 0
Reset USB...
SUCCESSFUL_HANDOFF
  FSBLStatus = 0x1


U-Boot 2013.07 (Jan 06 2014 - 10:40:34)

Memory: ECC disabled
DRAM:  512 MiB
WARNING: Caches not enabled
MMC:   zynq_sdhci: 0
SF: Detected S25FL256S_64K with page size 64 KiB, total 32 MiB
*** Warning - bad CRC, using default environment

In:    serial
Out:   serial
Err:   serial
Net:   Gem.e000b000
Hit any key to stop autoboot:  3  2  1  0
Device: zynq_sdhci
Manufacturer ID: 2
OEM: 544d
Name: SA32G
Tran Speed: 50000000
Rd Block Len: 512
SD version 3.0
High Capacity: Yes
Capacity: 29.3 GiB
Bus Width: 4-bit
reading uEnv.txt
154 bytes read in 9 ms (16.6 KiB/s)
Loaded environment from uEnv.txt
Importing environment from SD ...
Copying Linux from SD to RAM...
reading uImage
2858824 bytes read in 448 ms (6.1 MiB/s)
reading devicetree.dtb
9720 bytes read in 19 ms (499 KiB/s)
reading uramdisk.image.gz
** Unable to read file uramdisk.image.gz **
zynq-uboot>
* - * Qodem 0.1.2 Capture Generated Tue, 07 Jan 2014 14:19:21 -0700 END * - *

Any and all help is appreciated.

Thanks
Ed Vidal

--047d7bd6adbc8e046004ef689bc1
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>hello All,<br>


=09
=09
=09
	<style type=3D"text/css">PRE { direction: ltr; color: rgb(0, 0, 0); }PRE.w=
estern {  }PRE.cjk { font-family: "WenQuanYi Zen Hei Sharp",monospace; }PRE=
.ctl { font-family: "Lohit Devanagari",monospace; }P { margin-bottom: 0.08i=
n; direction: ltr; color: rgb(0, 0, 0); }P.western { font-family: "Liberati=
on Serif","Times New Roman",serif; font-size: 12pt; }P.cjk { font-family: "=
WenQuanYi Zen Hei Sharp"; font-size: 12pt; }P.ctl { font-family: "Lohit Dev=
anagari"; font-size: 12pt; }</style>


<pre class=3D"">My boot starts to boot then I get a data abort see below.<b=
r><br>md5sums of files where they source to be put on /run/media/vidal/ZED_=
BOOT/
These should match the md5sums on /run/media/vidal/ZED_BOOT/
d34217fdf453c318a11bada96464a014  yocto010514/BOOT.BIN
7a1525c3a1a63fcffbb172348cdd4221  zedboard_support_files/boot_files_yocto_w=
myled/devicetree.dtb
7cf4e3eea28ce84886d4618856703979  yocto010514/zedboard-zynq7/uImage

md5sum /run/media/vidal/ZED_BOOT/*

d34217fdf453c318a11bada96464a014  /run/media/vidal/ZED_BOOT/BOOT.BIN u-boot=
 created with poky &amp; bootgen=20
yocto010514/bootimage.bif
the_ROM_image:
{
        [bootloader]/home/vidal/yocto010514/FSBL.elf
        /home/vidal/yocto010514//system.bit
        /home/vidal/yocto010514/zedboard-zynq7/u-boot.elf
}

7a1525c3a1a63fcffbb172348cdd4221  /run/media/vidal/ZED_BOOT/devicetree.dtb =
  linux-digilent
105fce435d72233f63a35aeba7b8eab1  /run/media/vidal/ZED_BOOT/uEnv.txt
This the contents of uEnv.txt

devtreeld=3Dfatload mmc 0 0x2A00000 devicetree.dtb
kerload=3Dfatload mmc 0 0x00008000 uImage
mmcboot=3Drun devtreeld; run kerload; bootm 0x00008000 - 0x2A00000

7cf4e3eea28ce84886d4618856703979  /run/media/vidal/ZED_BOOT/uImage created =
with poky

mkimage -l /home/vidal/yocto010514/zedboard-zynq7/uImage
Image Name:   Linux-3.8.11-xilinx
Created:      Sun Jan  5 15:56:08 2014
Image Type:   ARM Linux Kernel Image (uncompressed)
Data Size:    2858760 Bytes =3D 2791.76 kB =3D 2.73 MB
Load Address: 00008000
Entry Point:  00008000


ls -la /run/media/vidal/ZED_BOOT/*
-rw-r--r--. 1 vidal users 4372888 Jan  7 13:04 /run/media/vidal/ZED_BOOT/BO=
OT.BIN
-rw-r--r--. 1 vidal users    9720 Jan  7 12:39 /run/media/vidal/ZED_BOOT/de=
vicetree.dtb
-rw-r--r--. 1 vidal users     154 Jan  7 14:05 /run/media/vidal/ZED_BOOT/uE=
nv.txt
-rw-r--r--. 1 vidal users 2858824 Jan  7 13:27 /run/media/vidal/ZED_BOOT/uI=
mage


After the uEnv.txt has been read
* - * Qodem 0.1.2 Capture Generated Tue, 07 Jan 2014 14:17:21 -0700 BEGIN *=
 - *

echo $mmcboot
run devtreeld; run kerload; bootm 0x00008000 - 0x2A00000
zynq-uboot&gt; echo $devtreeld
fatload mmc 0 0x2A00000 devicetree.dtb
zynq-uboot&gt; echo $kerload
fatload mmc 0 0x00008000 uImage
zynq-uboot&gt; setenv modeboot mmcboot
zynq-uboot&gt; boot
Now when I boot using mmcboot this is the output

reading devicetree.dtb
9720 bytes read in 18 ms (527.3 KiB/s)
reading uImage
2858824 bytes read in 444 ms (6.1 MiB/s)
## Booting kernel from Legacy Image at 00008000 ...
   Image Name:   Linux-3.8.11-xilinx
   Image Type:   ARM Linux Kernel Image (uncompressed)
   Data Size:    2858760 Bytes =3D 2.7 MiB
   Load Address: 00008000
   Entry Point:  00008000
   Verifying Checksum ... OK
## Flattened Device Tree blob at 02a00000
   Booting using the fdt blob at 0x2a00000
   XIP Kernel Image ... OK
   Loading Device Tree to 1fb4f000, end 1fb545f7 ... OK

Starting kernel ...

data abort

    MAYBE you should read doc/README.arm-unaligned-accesses

pc : [&lt;1ff7624c&gt;]   lr : [&lt;1ff777d0&gt;]
sp : 3ffffffc  ip : 00000000 fp : 00020205
r10: 1ffaeaf0  r9 : f345364f r8 : 00800000
r7 : 00000000  r6 : 00008000 r5 : 1ffaeaf0  r4 : 00000000
r3 : 00002614  r2 : 1fb4f000 r1 : baefa2ee  r0 : 11acb1b4
Flags: nzcv  IRQs on  FIQs on  Mode SVC_32
Resetting CPU ...

resetting ...

Xilinx First Stage Boot Loader=20
Release 14.3 Sep 29 2013-13:27:28
Devcfg driver initialized=20
Silicon Version 1.0
Boot mode is SD
SD Init Done=20
Flash BaseAddress E0100000
Reboot status register 0x60000000=20
ImageStartAddress =3D 00000000
PartitionNumber =3D 00000000
flash read base addr E0100000, image base 0
FSBL main: Skip partition
Reboot status register 0x61000000=20
ImageStartAddress =3D 00000000
PartitionNumber =3D 00000001
flash read base addr E0100000, image base 0
Reset USB...
SUCCESSFUL_HANDOFF
  FSBLStatus =3D 0x1


U-Boot 2013.07 (Jan 06 2014 - 10:40:34)

Memory: ECC disabled
DRAM:  512 MiB
WARNING: Caches not enabled
MMC:   zynq_sdhci: 0
SF: Detected S25FL256S_64K with page size 64 KiB, total 32 MiB
*** Warning - bad CRC, using default environment

In:    serial
Out:   serial
Err:   serial
Net:   Gem.e000b000
Hit any key to stop autoboot:  3  2  1  0=20
Device: zynq_sdhci
Manufacturer ID: 2
OEM: 544d
Name: SA32G=20
Tran Speed: 50000000
Rd Block Len: 512
SD version 3.0
High Capacity: Yes
Capacity: 29.3 GiB
Bus Width: 4-bit
reading uEnv.txt
154 bytes read in 9 ms (16.6 KiB/s)
Loaded environment from uEnv.txt
Importing environment from SD ...
Copying Linux from SD to RAM...
reading uImage
2858824 bytes read in 448 ms (6.1 MiB/s)
reading devicetree.dtb
9720 bytes read in 19 ms (499 KiB/s)
reading uramdisk.image.gz
** Unable to read file uramdisk.image.gz **
zynq-uboot&gt;=20
* - * Qodem 0.1.2 Capture Generated Tue, 07 Jan 2014 14:19:21 -0700 END * -=
 *</pre>

Any and all help is appreciated.<br><br></div>Thanks<br></div>Ed Vidal<br><=
/div>

--047d7bd6adbc8e046004ef689bc1--
