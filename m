Return-Path: <u.apeiron@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 09678C3ABBC
	for <webhook@archiver.kernel.org>; Mon, 12 May 2025 03:14:10 +0000 (UTC)
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
 by mx.groups.io with SMTP id smtpd.web11.41874.1747019644583971730
 for <yocto@lists.yoctoproject.org>;
 Sun, 11 May 2025 20:14:05 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=eeJGIWwA;
 spf=pass (domain: gmail.com, ip: 209.85.218.42, mailfrom: u.apeiron@gmail.com)
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-ad221e3e5a2so393297466b.1
        for <yocto@lists.yoctoproject.org>; Sun, 11 May 2025 20:14:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1747019642; x=1747624442; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=/3RX+Cvy67Udp30o+V4KuFllntGDaQPBoLpf1JN+pNI=;
        b=eeJGIWwA35xXojY0Un/LeA4JLJKiNTOAWv/VhZFI3CdGhbco44kxguWL4s+YyPZOHb
         7Mc/WRBjBl20CMFUQjOexrd/K82nCxXOjBwlXDSZF+KpylztuGGg2NJCeoaDN2QMwHf3
         LgaakL0mp/eCVIJEWlJ9LtBKlVG8X3YYs5ER3alAe1sIbrPM/wzlW6Zg9/4N83crPE34
         wQZ0Ofz+CbZl81sqidPEX+V6hpiQ4pSU2S98l4CCUlEXFJS1KL0KRkpvEJ+oVo1n/itl
         bsxQ/alhVQ4QIH/YFH+DLKkePYYyuOvo+qbzo0KnvZMwI3K9sJ4WUnXLbUY0YIAcjBz+
         pqBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747019642; x=1747624442;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=/3RX+Cvy67Udp30o+V4KuFllntGDaQPBoLpf1JN+pNI=;
        b=sRzNl3saVZC2v3I9cXTBlPYf/WAJ23pz8FQy6ZVHSbZZhGdYSwT8RZKFq5tvdyBmwJ
         hKKW2+OfZX32EdGveBPulI+spXXxayo5L7rUmFhox/+j2Wm6lphEJUD5kYemtVB9EAdF
         u4y5hqD9FQLnVC167HxTm76XY3X4B8UB5qbwEY6TdyzJVfL4OiBJS8zyEtf0AUp+2NuX
         +qyUcGkQjOsoAf5lJEnVzUycJUeR3Udqzew5OxZWhZPphs5eg6Z0PTnoedeLgQ7E88cp
         dxY7Dl0tjCVJfdVDhm80Yt/Z74GqioZRLVWaqao9VxRw+p7pl4zFqEWc5zhfhETIrtLu
         9d1w==
X-Gm-Message-State: AOJu0YxTwsctav42LPWNAIvabVLTqAEIw7jzBP1yTI8WYImeBRmENB4R
	Zserq9OfX99y052fil21rtMFXe6aqq0pqkmemVelRM+LZ1BXO9OF68Rry3VYClKz1xGkmmnYKU9
	qcREIGMHdk6ZQuq0vpcVNO7UtOE4dlrhO
X-Gm-Gg: ASbGncvdy9Oje/89WGFas/6BlK2JtpL2mYIHQs2oGstOFEvq/yaT7TuiUKiw9gBkvxO
	90BmGmULpkZQ7Vrgu+hA6MiXt0alXFQtAMI2PJLr84s3XclqDP92BNVHeYSRYITa5SisGeJA+OX
	omiTBenTq/GhmHk7a444UuBK3N0AsUNlV/Z8revFghsGuHV0JEkHuRmi0JUPvue4g=
X-Google-Smtp-Source: AGHT+IHeOtGL/rTyJOHz79zDupNRphpLsU4KD22ZMEX9+YImlm2WCVFDRgzyzF7Y5J7eHxJriHglI8lFkY2ysH4fdTE=
X-Received: by 2002:a17:907:1c91:b0:ad2:3eab:4998 with SMTP id
 a640c23a62f3a-ad23eab4c5cmr577954066b.32.1747019641831; Sun, 11 May 2025
 20:14:01 -0700 (PDT)
MIME-Version: 1.0
From: "Ulises V." <u.apeiron@gmail.com>
Date: Sun, 11 May 2025 21:13:50 -0600
X-Gm-Features: AX0GCFukWOPE4Dz--bG0Nt_ehIuaAtNv_UhUI9Am1aISQbyFACKCyZ6n0NM3UHc
Message-ID: <CAK+BxzQtWjgzkNR83Hnhz83ncOj6KMsVNWQYt+G5CpW9q_-7HQ@mail.gmail.com>
Subject: [yocto][scarthgap][5.0.1] Help to boot BBAI-64 for AGL from SD Card
 and init-live.sh.
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000002ac3580634e7b5ae"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 12 May 2025 03:14:10 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65304

--0000000000002ac3580634e7b5ae
Content-Type: text/plain; charset="UTF-8"

Hello everyone,

I'm working to bring Automotive Grade Linux on BBAI-64 with the following
yocto project version

DISTRO_VERSION = "5.0.1"
DISTRO_CODENAME = "scarthgap"

It seems I'm having a problem at boot time due to a init-live.sh script
from yocto project or my boot arguments are wrong in some way.

I found in a public post that the file that configures this boot for
yocto/poky is init-live.sh (
https://community.nxp.com/t5/i-MX-Processors/Bundle-a-core-image-tiny-initramfs-to-a-core-image-minimal-wic/m-p/1045656#M154024
)

The BOOT_IMAGE= from /proc/cmdline has the parameters of below mentioned
file grub.cfg. and BOOT_IMAGE has two values for two different
circumstances.

The current code available in the post as fix is almost identical to the
current code available in agl/yocto/poky except for the fact that the
/proc/cmdline and variable ROOT_DISK and flash_device have different
behaviors depending on how the board boots. They are not empty when it runs
BBAI_64 for AGL in normal boot up without stopping and booting with u-boot
commands, but when I do the boot through u-boot command there is no
BOOT_IMAGE= content in /proc/cmdline. The block devices are there but they
are not being able to mount. In below lines "Ulises ..." means debugging
output I wrote to print variable values on script init-live.sh ...

Below is the log when BOOT_IMAGE= is empty in /proc/cmdline when booting
the BBAI-64 using u-boot commands

[    5.117840] mmc1: SDHCI controller on 4fb0000.mmc [4fb0000.mmc] using
ADMA 64-bit
[    5.192938] Freeing unused kernel memory: 128576K
[    5.226576] Checked W+X mappings: passed, no W+X pages found
[    5.232334] Run /init as init process
Ulises early_setup: CMDLINE -><-

Starting systemd-udevd version 255.4^
[    5.282783] mmc1: new ultra high speed DDR50 SDHC card at address aaaa
[    5.290072] mmcblk1: mmc1:aaaa SE32G 29.7 GiB
[    5.300082]  mmcblk1: p1 p2
Ulises read_args : CMDLINE -><-

Waiting for removable media...
Ulises ....
...
Ulises Mounted filesystemsi media
Ulises Mounted filesystems ...
rootfs on / type rootfs (rw,size=1770760k,nr_inodes=442690,inode64)
proc on /proc type proc (rw,relatime)
sysfs on /sys type sysfs (rw,relatime)
none on /dev type devtmpfs
(rw,relatime,size=1770760k,nr_inodes=442690,mode=755,inode64)
Ulises Available block devices
major minor  #blocks  name

 179        0   15310848 mmcblk0
 179        1     131072 mmcblk0p1
 179        2   15178752 mmcblk0p2
 179      256       4096 mmcblk0boot0
 179      512       4096 mmcblk0boot1
 179      768   31166976 mmcblk1
 179      769    4193280 mmcblk1p1
 179      770   26972160 mmcblk1p2
Ulises ... /proc/cmdline

Ulises ... backticks cat /proc/cmdlined
Ulises ls /run/media...
ls: /run/media: No such file or directory
Ulises ls /run/media...
ls: /run/media: No such file or directory
Ulises before found == yes : ROOT_DISK -><- found ->yes<-
/init: line 189: found: not found
mount: /rootfs: failed to setup loop device for /run/media///rootfs.img.
Could not mount rootfs image

/bin/sh: can't access tty; job control turned off

Below is the output when BOOT_IMAGE= when /proc/cmdline is not empty and
has the parameters of grub.cfg (content shown some lines below) direct boot
from configuration files without sending u-boot manual commands:

[    4.270051] mmc1: CQHCI version 5.10
[    4.279350] omap_rng 4e10000.rng: Random Number Generator ver. 241b34c
[    4.279556] random: crng init done
[    4.289526] input: gpio-keys as /devices/platform/gpio-keys/input/input0
[    4.308328] ALSA device list:
[    4.311311]   No soundcards found.
[    5.339402] mmc1: SDHCI controller on 4fb0000.mmc [4fb0000.mmc] using
ADMA 64-bit
[    5.414848] Freeing unused kernel memory: 128576K
[    5.448543] Checked W+X mappings: passed, no W+X pages found
[    5.454304] Run /init as init process
Ulises early_setup: CMDLINE -><-
BOOT_IMAGE=/Image-initramfs-beaglebone-ai64.bin root=PARTUUID=dba7902b-02
rootwait rootfstype=ext4
Starting systemd-udevd version 255.4^
[    5.504180] mmc1: new ultra high speed DDR50 SDHC card at address aaaa
[    5.511494] mmcblk1: mmc1:aaaa SE32G 29.7 GiB
[    5.521590]  mmcblk1: p1 p2
Ulises read_args : CMDLINE -><-
BOOT_IMAGE=/Image-initramfs-beaglebone-ai64.bin root=PARTUUID=dba7902b-02
rootwait rootfstype=ext4
Waiting for removable media...
Ulises ....
...
Ulises Mounted filesystemsi media
Ulises Mounted filesystems ...
rootfs on / type rootfs (rw)
proc on /proc type proc (rw,relatime)
sysfs on /sys type sysfs (rw,relatime)
none on /dev type devtmpfs
(rw,relatime,size=1770552k,nr_inodes=442638,mode=755,inode64)
Ulises Available block devices
major minor  #blocks  name

 179        0   15310848 mmcblk0
 179        1     131072 mmcblk0p1
 179        2   15178752 mmcblk0p2
 179      256       4096 mmcblk0boot0
 179      512       4096 mmcblk0boot1
 179      768   31166976 mmcblk1
 179      769    4193280 mmcblk1p1
 179      770   26972160 mmcblk1p2
Ulises ... /proc/cmdline
BOOT_IMAGE=/Image-initramfs-beaglebone-ai64.bin root=PARTUUID=dba7902b-02
rootwait rootfstype=ext4
Ulises ... backticks cat /proc/cmdlined
/init: line 183: BOOT_IMAGE=/Image-initramfs-beaglebone-ai64.bin: not found
Ulises ls /run/media...
ls: /run/media: No such file or directory
Ulises ls /run/media...
ls: /run/media: No such file or directory
Ulises before found == yes : ROOT_DISK -><- found ->yes<-
/init: line 189: found: not found
mount: /rootfs: failed to setup loop device for /run/media///rootfs.img.
Could not mount rootfs image

/bin/sh: can't access tty; job control turned off

I can confirm it is not booting from SD Card because of below lines says
that "/" is device 179,2, which is mmcblk0p2=eMMC not SD Card=mmcblk1, and
the content of /home is empty:

# ls -la /dev/mmcblk*
brw-rw----    1 root     disk      179,   0 Jan  1 00:00 /dev/mmcblk0
brw-rw----    1 root     disk      179, 256 Jan  1 00:00 /dev/mmcblk0boot0
brw-rw----    1 root     disk      179, 512 Jan  1 00:00 /dev/mmcblk0boot1
brw-rw----    1 root     disk      179,   1 Jan  1 00:00 /dev/mmcblk0p1
brw-rw----    1 root     disk      179,   2 Jan  1 00:00 /dev/mmcblk0p2
crw-------    1 root     root      237,   0 Jan  1 00:00 /dev/mmcblk0rpmb
brw-rw----    1 root     disk      179, 768 Jan  1 00:00 /dev/mmcblk1
brw-rw----    1 root     disk      179, 769 Jan  1 00:00 /dev/mmcblk1p1
brw-rw----    1 root     disk      179, 770 Jan  1 00:00 /dev/mmcblk1p2
~ # stat /
  File: /
  Size: 440       Blocks: 0          IO Block: 4096   directory
Device: 2h/2d Inode: 1           Links: 17
Access: (0755/drwxr-xr-x)  Uid: (    0/    root)   Gid: (    0/    root)
Access: 1970-01-01 00:00:39.264000000 +0000
Modify: 1970-01-01 00:00:44.852000000 +0000
Change: 1970-01-01 00:00:44.852000000 +0000
~ # ls -la /hom
~ # ls -la /home/
drwxr-xr-x    2 root     root            40 Jun 10  2024 .
drwxr-xr-x   17 root     root           440 Jan  1 00:00 ..
~ #


AGL through yocto creates the configuration for grub as follows:

serial --unit=0 --speed=115200 --word=8 --parity=no --stop=1
default=boot
timeout=3
menuentry 'boot'{
linux /Image-initramfs-beaglebone-ai64.bin root=PARTUUID=dba7902b-02
rootwait rootfstype=ext4
}

it is in the boot partition on EFI/BOOT/grub.cfg file.

I added also an extlinux.conf configuration in order to enable the boot but
it seems to be overwritten by this grub.cfg may be by priorities of boot
mode in BBAI-64 following and advice in beagleboard forum:

The content of boot partition is extlinux/extlinux.conf

label Linux microSD
    kernel /Image
    append console=ttyS2,115200n8 earlycon=ns16550a,mmio32,0x02800000
root=/dev/mmcblk1p2 rw rootfstype=ext4 rootwait net.ifnames=0
    fdtdir /
    #initrd /Image-initramfs-beaglebone-ai64.bin

I used to have the following boot sequence where you could see the *ERROR:
FDT image overlaps OS image (OS=0x82000000..0x8ba40000)* in below log:

U-Boot 2021.01-gea96725b (Feb 16 2023 - 17:13:47 +0000)

SoC:   J721E SR1.1 GP
Model: Texas Instruments K3 J721E SoC
Board: BBONEAI-64-B0- rev B0
DRAM:  4 GiB
Flash: 0 Bytes
MMC:   sdhci@4f80000: 0, sdhci@4fb0000: 1
Loading Environment from FAT... *** Warning - bad CRC, using default
environment

In:    serial@2800000
Out:   serial@2800000
Err:   serial@2800000
am65_cpsw_nuss ethernet@46000000: K3 CPSW: nuss_ver: 0x6BA00101 cpsw_ver:
0x6BA80100 ale_ver: 0x00293904 Ports:1 mdio_freq:1000000
Net:   eth0: ethernet@46000000port@1
Press SPACE to abort autoboot in 2 seconds
board_name=[BBONEAI-64-B0-] ...
name_fdt=[k3-j721e-beagleboneai64.dtb] ...
i2c_write: error waiting for data ACK (status=0x116)
pca953x gpio@22: Error reading output register
switch to partitions #0, OK
mmc1 is current device
Scanning mmc 1:1...
Found /extlinux/extlinux.conf
Retrieving file: /extlinux/extlinux.conf
232 bytes read in 18 ms (11.7 KiB/s)
1: Linux microSD
Retrieving file: /Image
160465408 bytes read in 6633 ms (23.1 MiB/s)
append: console=ttyS2,115200n8 earlycon=ns16550a,mmio32,0x02800000
root=/dev/mmcblk1p2 rw rootfstype=ext4 rootwait net.ifnames=0
Retrieving file: /k3-j721e-beagleboneai64.dtb
103269 bytes read in 17 ms (5.8 MiB/s)
## Flattened Device Tree blob at 88000000
   Booting using the fdt blob at 0x88000000
ERROR: FDT image overlaps OS image (OS=0x82000000..0x8ba40000)
SCRIPT FAILED: continuing...
103269 bytes read in 19 ms (5.2 MiB/s)
Scanning disk sdhci@4f80000.blk...
Scanning disk sdhci@4fb0000.blk...
Found 6 disks
No EFI system partition
BootOrder not defined
EFI boot manager: Cannot load any image
Found EFI removable media binary efi/boot/bootaa64.efi
741376 bytes read in 55 ms (12.9 MiB/s)
Booting /efi\boot\bootaa64.efi
error: no such device: ((hd0,msdos1)/efi/boot)/EFI/BOOT/grub.cfg.
error: serial port `com0' isn't found.
GNU GRUB  version 2.12

I was able to correct it as follows:

U-Boot 2021.01-gea96725b (Feb 16 2023 - 17:13:47 +0000)

SoC:   J721E SR1.1 GP
Model: Texas Instruments K3 J721E SoC
Board: BBONEAI-64-B0- rev B0
DRAM:  4 GiB
Flash: 0 Bytes
MMC:   sdhci@4f80000: 0, sdhci@4fb0000: 1
Loading Environment from FAT... *** Warning - bad CRC, using default
environment

In:    serial@2800000
Out:   serial@2800000
Err:   serial@2800000
am65_cpsw_nuss ethernet@46000000: K3 CPSW: nuss_ver: 0x6BA00101 cpsw_ver:
0x6BA80100 ale_ver: 0x00293904 Ports:1 mdio_freq:1000000
Net:   eth0: ethernet@46000000port@1
Press SPACE to abort autoboot in 2 seconds
=> mmc lixt st
sdhci@4f80000: 0 (eMMC)
sdhci@4fb0000: 1
=> mmc dev 1
i2c_write: error waiting for data ACK (status=0x116)
pca953x gpio@22: Error reading output register
switch to partitions #0, OK
mmc1 is current device
=> mmc list
sdhci@4f80000: 0 (eMMC)
sdhci@4fb0000: 1 (SD)
=> mmc info
Device: sdhci@4fb0000
Manufacturer ID: 3
OEM: 5344
Name: SE32G
Bus Speed: 50000000
Mode: SD High Speed (50MHz)
Rd Block Len: 512
SD version 3.0
High Capacity: Yes
Capacity: 29.7 GiB
Bus Width: 4-bit
Erase Group Size: 512 Bytes
=> mmc part

Partition Map for MMC device 1  --   Partition Type: DOS

Part Start Sector Num Sectors UUID Type
  1 2048       8386560   5cafe3fe-01 06 Boot
  2 8388608   53944320   5cafe3fe-02 83
=> fatload mmc 1:1 0x0000000880000000 Image-initramfs-beaglebone-ai64.bin
160465408 bytes read in 6637 ms (23.1 MiB/s)
=> fatload mmc 11 :1 0x00000008A0000000 k3-j721e-beagleboneai64.dtb
103269 bytes read in 17 ms (5.8 MiB/s)
=> booti 0x0000000880000000 - 0x00000008A0000000
## Flattened Device Tree blob at 8a0000000
   Booting using the fdt blob at 0x8a0000000
   Loading Device Tree to 000000008ffe3000, end 000000008ffff364 ... OK

Starting kernel ...

[    0.000000] Booting Linux on physical CPU 0x0000000000 [0x411fd080]
[    0.000000] Linux version 6.1.69-ti (oe-user@oe-host)
(aarch64-agl-linux-gcc (GCC) 13.2.0, GNU ld (GNU Binutils) 2.42.0.20240216)
#1 SMP PREEMPT_DYNAMIC Mon Jun 10 06:13:20 UTC 2024
[    0.000000] Machine model: BeagleBoard.org BeagleBone AI-64
[    0.000000] efi: UEFI not found.

As in the previous comment on AGL forum someone suggested a long time ago
making more space between the kernel image and the dtb.

Now there is no problem between the kernel image and the dtb memory ranges.
as we can see from above log output:

I can confirm I'm booting the right image kernel from this because we are
booting agl image: aarch64-agl-linux-gcc from TI Linux version 6.1.69-ti ,
and with the correct machine model: BBAI-64.

[    0.000000] Linux version 6.1.69-ti (oe-user@oe-host)
(aarch64-agl-linux-gcc (GCC) 13.2.0, GNU ld (GNU Binutils) 2.42.0.20240216)
#1 SMP PREEMPT_DYNAMIC Mon Jun 10 06:13:20 UTC 2024
[    0.000000] Machine model: BeagleBoard.org BeagleBone AI-64

I still have the following errors,
1)  The first one happens similarly when I switch to SD CARD/mmc device 1
partition 1. It appears at boot (see above boot log, and inside u-boot line
commands):

boot log above:
i2c_write: error waiting for data ACK (status=0x116)
pca953x gpio@22: Error reading output register
switch to partitions #0, OK

u-boot command line log
=> mmc dev 1
i2c_write: error waiting for data ACK (status=0x116)
pca953x gpio@22: Error reading output register
switch to partitions #0, OK
mmc1 is current device

From below boot log lines it seems BBA-64 is booting as indicated by
extlinux.conf file:

Scanning mmc 1:1...
Found /extlinux/extlinux.conf
Retrieving file: /extlinux/extlinux.conf
232 bytes read in 18 ms (11.7 KiB/s)
1: Linux microSD
Retrieving file: /Image
160465408 bytes read in 6633 ms (23.1 MiB/s)
append: console=ttyS2,115200n8 earlycon=ns16550a,mmio32,0x02800000
root=/dev/mmcblk1p2 rw rootfstype=ext4 rootwait net.ifnames=0
Retrieving file: /k3-j721e-beagleboneai64.dtb

and grub load boot is discarded in below lines:

Scanning disk sdhci@4f80000.blk...
Scanning disk sdhci@4fb0000.blk...
Found 6 disks
No EFI system partition
BootOrder not defined
EFI boot manager: Cannot load any image
Found EFI removable media binary efi/boot/bootaa64.efi
741376 bytes read in 55 ms (12.9 MiB/s)
Booting /efi\boot\bootaa64.efi
error: no such device: ((hd0,msdos1)/efi/boot)/EFI/BOOT/grub.cfg.
error: serial port `com0' isn't found.
GNU GRUB  version 2.12

but honestly I'm doubting it is following extlinux.conf since at least in
one case BOOT_IMAGE has the parameters from grub.cfg.

I'm really confused which and where are the booting params being obtained.

Conclusions.

1.- Booting is partially working.

question 1.a.- I need to find out why when I boot BBAI-64 through u-boot
commands above there is an empty /proc/cmdline, and when I let the board
boot directly without stopping in u-boot with automatic variables
/proc/cmdline is not empty. is it possible am I missing some boot params
while sending commands to u-boot?

question 1.b.- How do we make the changes in addresses for kernel, and dtb
image permanent and allowing for possible increase of size, relocations in
future developments?

question 1.c.- I need to verify the source of error while switching/reading
from the SD Card. I will get an extreme SD Card following comments from the
beagleboard forum but I doubt the main problem is this one.

2.- The real problem may reside in this init-live.sh script since the
current version is not able to mount the SD Card / mmcblk1  as possibly
ROOT_DISK inside init-live.sh. As a failure of this it is booting mmcblk0.

question 2.- How do we modify init-live.sh so that it mounts properly from
mmcblk1/SD Card and not mmcblk0.

if the init-live.sh file is correct then everything comes back to booting
params either in u-boot or in extlinux.conf or in grub.cfg

I really appreciate your help with this. I know I write very long emails :).

Ulises

--0000000000002ac3580634e7b5ae
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello everyone,</div><div><br></div><div>I&#39;m work=
ing to bring Automotive Grade Linux on BBAI-64 with the following yocto pro=
ject version</div><div><br></div><div>DISTRO_VERSION =3D &quot;5.0.1&quot;<=
br>DISTRO_CODENAME =3D &quot;scarthgap&quot;</div><div><br></div><div>It se=
ems I&#39;m having a problem at boot time due to a init-live.sh script from=
 yocto project or my boot arguments are wrong in some way.</div><div><br></=
div><div>I found in a public post that the file that configures this boot f=
or yocto/poky is init-live.sh (<a href=3D"https://community.nxp.com/t5/i-MX=
-Processors/Bundle-a-core-image-tiny-initramfs-to-a-core-image-minimal-wic/=
m-p/1045656#M154024" target=3D"_blank">https://community.nxp.com/t5/i-MX-Pr=
ocessors/Bundle-a-core-image-tiny-initramfs-to-a-core-image-minimal-wic/m-p=
/1045656#M154024</a>)</div><div><br></div><div><div>The BOOT_IMAGE=3D from =
/proc/cmdline has the parameters of below
mentioned file grub.cfg. and BOOT_IMAGE has two values for two different
 circumstances.</div><div><br></div><div>The
 current code available in the post as fix is almost identical to the curre=
nt=20
code available in agl/yocto/poky except for the fact that the=20
/proc/cmdline and variable ROOT_DISK and flash_device have different=20
behaviors depending on how the board boots. They are not empty when it runs=
=20
BBAI_64 for AGL in normal boot up without stopping and booting with u-boot =
commands, but when I do the boot through u-boot command=20
there is no BOOT_IMAGE=3D content in /proc/cmdline. The block devices are t=
here=20
but they are not being able to mount. In below lines &quot;Ulises ...&quot;=
 means=20
debugging output I wrote to print variable values on script=20
init-live.sh ...</div><div><br></div><div>Below is the log when BOOT_IMAGE=
=3D is empty in /proc/cmdline when booting the BBAI-64 using u-boot command=
s</div><div><br></div><div>[ =C2=A0 =C2=A05.117840] mmc1: SDHCI controller =
on 4fb0000.mmc [4fb0000.mmc] using ADMA 64-bit<br>[ =C2=A0 =C2=A05.192938] =
Freeing unused kernel memory: 128576K<br>[ =C2=A0 =C2=A05.226576] Checked W=
+X mappings: passed, no W+X pages found<br>[ =C2=A0 =C2=A05.232334] Run /in=
it as init process<br>Ulises early_setup: CMDLINE -&gt;&lt;-<br><br>Startin=
g systemd-udevd version 255.4^<br>[ =C2=A0 =C2=A05.282783] mmc1: new ultra =
high speed DDR50 SDHC card at address aaaa<br>[ =C2=A0 =C2=A05.290072] mmcb=
lk1: mmc1:aaaa SE32G 29.7 GiB <br>[ =C2=A0 =C2=A05.300082] =C2=A0mmcblk1: p=
1 p2<br>Ulises read_args : CMDLINE -&gt;&lt;-<br><br>Waiting for removable =
media...<br>Ulises ....<br>...<br>Ulises Mounted filesystemsi media<br>Ulis=
es Mounted filesystems ...<br>rootfs on / type rootfs (rw,size=3D1770760k,n=
r_inodes=3D442690,inode64)<br>proc on /proc type proc (rw,relatime)<br>sysf=
s on /sys type sysfs (rw,relatime)<br>none on /dev type devtmpfs (rw,relati=
me,size=3D1770760k,nr_inodes=3D442690,mode=3D755,inode64)<br>Ulises Availab=
le block devices<br>major minor =C2=A0#blocks =C2=A0name<br><br>=C2=A0179 =
=C2=A0 =C2=A0 =C2=A0 =C2=A00 =C2=A0 15310848 mmcblk0<br>=C2=A0179 =C2=A0 =
=C2=A0 =C2=A0 =C2=A01 =C2=A0 =C2=A0 131072 mmcblk0p1<br>=C2=A0179 =C2=A0 =
=C2=A0 =C2=A0 =C2=A02 =C2=A0 15178752 mmcblk0p2<br>=C2=A0179 =C2=A0 =C2=A0 =
=C2=A0256 =C2=A0 =C2=A0 =C2=A0 4096 mmcblk0boot0<br>=C2=A0179 =C2=A0 =C2=A0=
 =C2=A0512 =C2=A0 =C2=A0 =C2=A0 4096 mmcblk0boot1<br>=C2=A0179 =C2=A0 =C2=
=A0 =C2=A0768 =C2=A0 31166976 mmcblk1<br>=C2=A0179 =C2=A0 =C2=A0 =C2=A0769 =
=C2=A0 =C2=A04193280 mmcblk1p1<br>=C2=A0179 =C2=A0 =C2=A0 =C2=A0770 =C2=A0 =
26972160 mmcblk1p2<br>Ulises ... /proc/cmdline<br><br>Ulises ... backticks =
cat /proc/cmdlined<br>Ulises ls /run/media...<br>ls: /run/media: No such fi=
le or directory<br>Ulises ls /run/media...<br>ls: /run/media: No such file =
or directory<br>Ulises before found =3D=3D yes : ROOT_DISK -&gt;&lt;- found=
 -&gt;yes&lt;-<br>/init: line 189: found: not found<span class=3D"gmail-im"=
><br>mount: /rootfs: failed to setup loop device for /run/media///rootfs.im=
g.<br>Could not mount rootfs image<br><br>/bin/sh: can&#39;t access tty; jo=
b control turned off<br></span></div><div><br></div><div>Below is the outpu=
t when BOOT_IMAGE=3D when /proc/cmdline is not empty and has the parameters=
 of grub.cfg (content shown some lines below) direct boot from configuratio=
n files without sending u-boot manual commands:</div><div><br></div><div>[ =
=C2=A0 =C2=A04.270051] mmc1: CQHCI version 5.10<br>[ =C2=A0 =C2=A04.279350]=
 omap_rng 4e10000.rng: Random Number Generator ver. 241b34c<br>[ =C2=A0 =C2=
=A04.279556] random: crng init done<br>[ =C2=A0 =C2=A04.289526] input: gpio=
-keys as /devices/platform/gpio-keys/input/input0<br>[ =C2=A0 =C2=A04.30832=
8] ALSA device list:<br>[ =C2=A0 =C2=A04.311311] =C2=A0 No soundcards found=
.<br>[ =C2=A0 =C2=A05.339402] mmc1: SDHCI controller on 4fb0000.mmc [4fb000=
0.mmc] using ADMA 64-bit<br>[ =C2=A0 =C2=A05.414848] Freeing unused kernel =
memory: 128576K<br>[ =C2=A0 =C2=A05.448543] Checked W+X mappings: passed, n=
o W+X pages found<br>[ =C2=A0 =C2=A05.454304] Run /init as init process<br>=
Ulises early_setup: CMDLINE -&gt;&lt;-<br>BOOT_IMAGE=3D/Image-initramfs-bea=
glebone-ai64.bin root=3DPARTUUID=3Ddba7902b-02 rootwait rootfstype=3Dext4<b=
r>Starting systemd-udevd version 255.4^<br>[ =C2=A0 =C2=A05.504180] mmc1: n=
ew ultra high speed DDR50 SDHC card at address aaaa<br>[ =C2=A0 =C2=A05.511=
494] mmcblk1: mmc1:aaaa SE32G 29.7 GiB <br>[ =C2=A0 =C2=A05.521590] =C2=A0m=
mcblk1: p1 p2<br>Ulises read_args : CMDLINE -&gt;&lt;-<br>BOOT_IMAGE=3D/Ima=
ge-initramfs-beaglebone-ai64.bin root=3DPARTUUID=3Ddba7902b-02 rootwait roo=
tfstype=3Dext4<br>Waiting for removable media...<br>Ulises ....<br>...<br>U=
lises Mounted filesystemsi media<br>Ulises Mounted filesystems ...<br>rootf=
s on / type rootfs (rw)<br>proc on /proc type proc (rw,relatime)<br>sysfs o=
n /sys type sysfs (rw,relatime)<br>none on /dev type devtmpfs (rw,relatime,=
size=3D1770552k,nr_inodes=3D442638,mode=3D755,inode64)<br>Ulises Available =
block devices<br>major minor =C2=A0#blocks =C2=A0name<br><br>=C2=A0179 =C2=
=A0 =C2=A0 =C2=A0 =C2=A00 =C2=A0 15310848 mmcblk0<br>=C2=A0179 =C2=A0 =C2=
=A0 =C2=A0 =C2=A01 =C2=A0 =C2=A0 131072 mmcblk0p1<br>=C2=A0179 =C2=A0 =C2=
=A0 =C2=A0 =C2=A02 =C2=A0 15178752 mmcblk0p2<br>=C2=A0179 =C2=A0 =C2=A0 =C2=
=A0256 =C2=A0 =C2=A0 =C2=A0 4096 mmcblk0boot0<br>=C2=A0179 =C2=A0 =C2=A0 =
=C2=A0512 =C2=A0 =C2=A0 =C2=A0 4096 mmcblk0boot1<br>=C2=A0179 =C2=A0 =C2=A0=
 =C2=A0768 =C2=A0 31166976 mmcblk1<br>=C2=A0179 =C2=A0 =C2=A0 =C2=A0769 =C2=
=A0 =C2=A04193280 mmcblk1p1<br>=C2=A0179 =C2=A0 =C2=A0 =C2=A0770 =C2=A0 269=
72160 mmcblk1p2<br>Ulises ... /proc/cmdline<br>BOOT_IMAGE=3D/Image-initramf=
s-beaglebone-ai64.bin root=3DPARTUUID=3Ddba7902b-02 rootwait rootfstype=3De=
xt4<br>Ulises ... backticks cat /proc/cmdlined<br>/init: line 183: BOOT_IMA=
GE=3D/Image-initramfs-beaglebone-ai64.bin: not found<br>Ulises ls /run/medi=
a...<br>ls: /run/media: No such file or directory<br>Ulises ls /run/media..=
.<br>ls: /run/media: No such file or directory<br>Ulises before found =3D=
=3D yes : ROOT_DISK -&gt;&lt;- found -&gt;yes&lt;-<br>/init: line 189: foun=
d: not found<span class=3D"gmail-im"><br>mount: /rootfs: failed to setup lo=
op device for /run/media///rootfs.img.<br>Could not mount rootfs image<br><=
br>/bin/sh: can&#39;t access tty; job control turned off<br></span></div><d=
iv><br></div><div>I
 can confirm it is not booting from SD Card because of below lines says=20
that &quot;/&quot; is device 179,2, which is mmcblk0p2=3DeMMC not SD Card=
=3Dmmcblk1,=20
and the content of /home is empty:</div><div><br></div><div># ls -la /dev/m=
mcblk*<br>brw-rw---- =C2=A0 =C2=A01 root =C2=A0 =C2=A0 disk =C2=A0 =C2=A0 =
=C2=A0179, =C2=A0 0 Jan =C2=A01 00:00 /dev/mmcblk0<br>brw-rw---- =C2=A0 =C2=
=A01 root =C2=A0 =C2=A0 disk =C2=A0 =C2=A0 =C2=A0179, 256 Jan =C2=A01 00:00=
 /dev/mmcblk0boot0<br>brw-rw---- =C2=A0 =C2=A01 root =C2=A0 =C2=A0 disk =C2=
=A0 =C2=A0 =C2=A0179, 512 Jan =C2=A01 00:00 /dev/mmcblk0boot1<br>brw-rw----=
 =C2=A0 =C2=A01 root =C2=A0 =C2=A0 disk =C2=A0 =C2=A0 =C2=A0179, =C2=A0 1 J=
an =C2=A01 00:00 /dev/mmcblk0p1<br>brw-rw---- =C2=A0 =C2=A01 root =C2=A0 =
=C2=A0 disk =C2=A0 =C2=A0 =C2=A0179, =C2=A0 2 Jan =C2=A01 00:00 /dev/mmcblk=
0p2<br>crw------- =C2=A0 =C2=A01 root =C2=A0 =C2=A0 root =C2=A0 =C2=A0 =C2=
=A0237, =C2=A0 0 Jan =C2=A01 00:00 /dev/mmcblk0rpmb<br>brw-rw---- =C2=A0 =
=C2=A01 root =C2=A0 =C2=A0 disk =C2=A0 =C2=A0 =C2=A0179, 768 Jan =C2=A01 00=
:00 /dev/mmcblk1<br>brw-rw---- =C2=A0 =C2=A01 root =C2=A0 =C2=A0 disk =C2=
=A0 =C2=A0 =C2=A0179, 769 Jan =C2=A01 00:00 /dev/mmcblk1p1<br>brw-rw---- =
=C2=A0 =C2=A01 root =C2=A0 =C2=A0 disk =C2=A0 =C2=A0 =C2=A0179, 770 Jan =C2=
=A01 00:00 /dev/mmcblk1p2<br>~ # stat /<br>=C2=A0 File: /<br>=C2=A0 Size: 4=
40 =C2=A0 =C2=A0 =C2=A0 	Blocks: 0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0IO Blo=
ck: 4096 =C2=A0 directory<br>Device: 2h/2d	Inode: 1 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 Links: 17<br>Access: (0755/drwxr-xr-x) =C2=A0Uid: ( =C2=A0 =
=C2=A00/ =C2=A0 =C2=A0root) =C2=A0 Gid: ( =C2=A0 =C2=A00/ =C2=A0 =C2=A0root=
)<br>Access: 1970-01-01 00:00:39.264000000 +0000<br>Modify: 1970-01-01 00:0=
0:44.852000000 +0000<br>Change: 1970-01-01 00:00:44.852000000 +0000<br>~ # =
ls -la /hom</div><div>~ # ls -la /home/ <br>drwxr-xr-x =C2=A0 =C2=A02 root =
=C2=A0 =C2=A0 root =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A040 Jun 10 =C2=
=A02024 .<br>drwxr-xr-x =C2=A0 17 root =C2=A0 =C2=A0 root =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 440 Jan =C2=A01 00:00 ..<br>~ # <br></div></div><div><br>=
</div><div><br></div><div><div class=3D"gmail_quote"><div>AGL through yocto=
 creates the configuration for grub as follows:</div><span class=3D"gmail-i=
m"><div><br></div><div>serial --unit=3D0 --speed=3D115200 --word=3D8 --pari=
ty=3Dno --stop=3D1<br>default=3Dboot<br>timeout=3D3<br>menuentry &#39;boot&=
#39;{<br>linux /Image-initramfs-beaglebone-ai64.bin root=3DPARTUUID=3Ddba79=
02b-02 rootwait rootfstype=3Dext4<br>}<br></div><div><br></div></span><div>=
it is in the boot partition on EFI/BOOT/grub.cfg file.</div><div><br></div>=
<div>I
 added also an extlinux.conf configuration in order to enable the boot=20
but it seems to be overwritten by this grub.cfg may be by priorities of=20
boot mode in BBAI-64 following and advice in beagleboard forum:</div><div><=
br></div><div>The content of boot partition is extlinux/extlinux.conf</div>=
<div>=C2=A0</div><div><span class=3D"gmail-im">label Linux microSD<br>=C2=
=A0 =C2=A0 kernel /Image<br></span>=C2=A0 =C2=A0 append console=3DttyS2,115=
200n8 earlycon=3Dns16550a,mmio32,0x02800000 root=3D/dev/mmcblk1p2 rw rootfs=
type=3Dext4 rootwait net.ifnames=3D0<br>=C2=A0 =C2=A0 fdtdir /<br>=C2=A0 =
=C2=A0 #initrd /Image-initramfs-beaglebone-ai64.bin<br></div><div><br></div=
><div>I used to have the following boot sequence where you could see the <b=
>ERROR: FDT image overlaps OS image (OS=3D0x82000000..0x8ba40000)</b> in be=
low log:</div><div><br></div><div><span class=3D"gmail-im">U-Boot 2021.01-g=
ea96725b (Feb 16 2023 - 17:13:47 +0000)<br><br>SoC: =C2=A0 J721E SR1.1 GP<b=
r>Model: Texas Instruments K3 J721E SoC<br>Board: BBONEAI-64-B0- rev B0<br>=
DRAM: =C2=A04 GiB<br>Flash: 0 Bytes<br>MMC: =C2=A0 sdhci@4f80000: 0, sdhci@=
4fb0000: 1<br>Loading Environment from FAT... *** Warning - bad CRC, using =
default environment<br><br>In: =C2=A0 =C2=A0serial@2800000<br>Out: =C2=A0 s=
erial@2800000<br>Err: =C2=A0 serial@2800000<br>am65_cpsw_nuss
 ethernet@46000000: K3 CPSW: nuss_ver: 0x6BA00101 cpsw_ver: 0x6BA80100=20
ale_ver: 0x00293904 Ports:1 mdio_freq:1000000<br>Net: =C2=A0 eth0: ethernet=
@46000000port@1<br>Press SPACE to abort autoboot in 2 seconds<br>board_name=
=3D[BBONEAI-64-B0-] ...<br>name_fdt=3D[k3-j721e-</span>beagleboneai64.dtb] =
...<span class=3D"gmail-im"><br>i2c_write: error waiting for data ACK (stat=
us=3D0x116)<br>pca953x gpio@22: Error reading output register<br>switch to =
partitions #0, OK<br>mmc1 is current device<br>Scanning mmc 1:1...<br>Found=
 /extlinux/extlinux.conf<br>Retrieving file: /extlinux/extlinux.conf<br></s=
pan>232 bytes read in 18 ms (11.7 KiB/s)<span class=3D"gmail-im"><br>1:	Lin=
ux microSD<br>Retrieving file: /Image<br></span>160465408 bytes read in 663=
3 ms (23.1 MiB/s)<br>append: console=3DttyS2,115200n8 earlycon=3Dns16550a,m=
mio32,0x02800000 root=3D/dev/mmcblk1p2 rw rootfstype=3Dext4 rootwait net.if=
names=3D0<br>Retrieving file: /k3-j721e-beagleboneai64.dtb<br>103269 bytes =
read in 17 ms (5.8 MiB/s)<span class=3D"gmail-im"><br>## Flattened Device T=
ree blob at 88000000<br>=C2=A0 =C2=A0Booting using the fdt blob at 0x880000=
00<br></span>ERROR: FDT image overlaps OS image (OS=3D0x82000000..0x8ba4000=
0)<br>SCRIPT FAILED: continuing...<br>103269 bytes read in 19 ms (5.2 MiB/s=
)<br>Scanning disk sdhci@4f80000.blk...<br>Scanning disk sdhci@4fb0000.blk.=
..<br>Found 6 disks<br>No EFI system partition<br>BootOrder not defined<br>=
EFI boot manager: Cannot load any image<br>Found EFI removable media binary=
 efi/boot/bootaa64.efi<br>741376 bytes read in 55 ms (12.9 MiB/s)<br>Bootin=
g /efi\boot\bootaa64.efi<br>error: no such device: ((hd0,msdos1)/efi/boot)/=
EFI/BOOT/grub.cfg.<span class=3D"gmail-im"><br>error: serial port `com0&#39=
; isn&#39;t found.<br>GNU GRUB =C2=A0version 2.12<br></span></div><div><br>=
</div><div>I was able to correct it as follows:</div><span class=3D"gmail-i=
m"><div><br></div>U-Boot 2021.01-gea96725b (Feb 16 2023 - 17:13:47 +0000)<b=
r><br>SoC: =C2=A0 J721E SR1.1 GP<br>Model: Texas Instruments K3 J721E SoC<b=
r>Board: BBONEAI-64-B0- rev B0<br>DRAM: =C2=A04 GiB<br>Flash: 0 Bytes<br>MM=
C: =C2=A0 sdhci@4f80000: 0, sdhci@4fb0000: 1<br>Loading Environment from FA=
T... *** Warning - bad CRC, using default environment<br><br>In: =C2=A0 =C2=
=A0serial@2800000<br>Out: =C2=A0 serial@2800000<br>Err: =C2=A0 serial@28000=
00<br>am65_cpsw_nuss
 ethernet@46000000: K3 CPSW: nuss_ver: 0x6BA00101 cpsw_ver: 0x6BA80100=20
ale_ver: 0x00293904 Ports:1 mdio_freq:1000000<br>Net: =C2=A0 eth0: ethernet=
@46000000port@1<br>Press SPACE to abort autoboot in 2 seconds<br></span>=3D=
&gt; mmc lixt      st<br>sdhci@4f80000: 0 (eMMC)<br>sdhci@4fb0000: 1<br>=3D=
&gt; mmc dev 1<span class=3D"gmail-im"><br>i2c_write: error waiting for dat=
a ACK (status=3D0x116)<br>pca953x gpio@22: Error reading output register<br=
>switch to partitions #0, OK<br>mmc1 is current device<br></span>=3D&gt; mm=
c list<br>sdhci@4f80000: 0 (eMMC)<br>sdhci@4fb0000: 1 (SD)<br>=3D&gt; mmc i=
nfo<br>Device: sdhci@4fb0000<br>Manufacturer ID: 3<br>OEM: 5344<br>Name: SE=
32G <br>Bus Speed: 50000000<br>Mode: SD High Speed (50MHz)<br>Rd Block Len:=
 512<br>SD version 3.0<br>High Capacity: Yes<br>Capacity: 29.7 GiB<br>Bus W=
idth: 4-bit<br>Erase Group Size: 512 Bytes<br>=3D&gt; mmc part<br><br>Parti=
tion Map for MMC device 1 =C2=A0-- =C2=A0 Partition Type: DOS<br><br>Part	S=
tart Sector	Num Sectors	UUID		Type<br>=C2=A0 1	2048 =C2=A0 =C2=A0 =C2=A0	83=
86560 =C2=A0 	5cafe3fe-01	06 Boot<br>=C2=A0 2	8388608 =C2=A0 	53944320 =C2=
=A0	5cafe3fe-02	83<br>=3D&gt; fatload mmc 1:1 0x0000000880000000 Image-init=
ramfs-beaglebone-ai64.bin <br>160465408 bytes read in 6637 ms (23.1 MiB/s)<=
br>=3D&gt; fatload mmc 11   :1  0x00000008A0000000 k3-j721e-beagleboneai64.=
dtb <br>103269 bytes read in 17 ms (5.8 MiB/s)<br>=3D&gt; booti 0x000000088=
0000000 - 0x00000008A0000000<br>## Flattened Device Tree blob at 8a0000000<=
br>=C2=A0 =C2=A0Booting using the fdt blob at 0x8a0000000<br>=C2=A0 =C2=A0L=
oading Device Tree to 000000008ffe3000, end 000000008ffff364 ... OK<br><div=
><br></div><div>Starting kernel ...<br><br>[ =C2=A0 =C2=A00.000000] Booting=
 Linux on physical CPU 0x0000000000 [0x411fd080]<span class=3D"gmail-im"><b=
r>[
 =C2=A0 =C2=A00.000000] Linux version 6.1.69-ti (oe-user@oe-host)=20
(aarch64-agl-linux-gcc (GCC) 13.2.0, GNU ld (GNU Binutils)=20
2.42.0.20240216) #1 SMP PREEMPT_DYNAMIC Mon Jun 10 06:13:20 UTC 2024<br></s=
pan>[ =C2=A0 =C2=A00.000000] Machine model: BeagleBoard.org BeagleBone AI-6=
4<br>[ =C2=A0 =C2=A00.000000] efi: UEFI not found.</div><div><br>As in the =
previous comment on AGL forum someone suggested a long time ago making more=
 space between the kernel image and the dtb.</div></div><div class=3D"gmail=
_quote"><div><br></div><div>Now there is no problem between the kernel imag=
e and the dtb memory ranges. as we can see from above log output:</div><div=
><br></div><div>I
 can confirm I&#39;m booting the right image kernel from this because we ar=
e
 booting agl image: aarch64-agl-linux-gcc from TI Linux version=20
6.1.69-ti , and with the correct machine model: BBAI-64.</div><div><br></di=
v><div>[ =C2=A0 =C2=A00.000000] Linux version 6.1.69-ti (oe-user@oe-host)=
=20
(aarch64-agl-linux-gcc (GCC) 13.2.0, GNU ld (GNU Binutils)=20
2.42.0.20240216) #1 SMP PREEMPT_DYNAMIC Mon Jun 10 06:13:20 UTC 2024</div><=
div>[ =C2=A0 =C2=A00.000000] Machine model: BeagleBoard.org BeagleBone AI-6=
4</div><div><br></div><div>I still have the following errors,=C2=A0</div><d=
iv>1)=C2=A0
 The first one happens similarly when I switch to SD CARD/mmc device 1=20
partition 1. It appears at boot (see above boot log, and inside u-boot=20
line commands):</div><div><br></div><div>boot log above:</div><span class=
=3D"gmail-im"><div>i2c_write: error waiting for data ACK (status=3D0x116)<b=
r>pca953x gpio@22: Error reading output register<br>switch to partitions #0=
, OK</div><div><br></div></span><div>u-boot command line log</div><div>=3D&=
gt; mmc dev 1<span class=3D"gmail-im"><br>i2c_write: error waiting for data=
 ACK (status=3D0x116)<br>pca953x gpio@22: Error reading output register<br>=
switch to partitions #0, OK<br>mmc1 is current device<br><br></span></div><=
div>From below boot log lines it seems BBA-64 is booting as indicated by ex=
tlinux.conf file:</div><div><br></div><div><span class=3D"gmail-im">Scannin=
g mmc 1:1...<br>Found /extlinux/extlinux.conf<br>Retrieving file: /extlinux=
/extlinux.conf<br></span>232 bytes read in 18 ms (11.7 KiB/s)<span class=3D=
"gmail-im"><br>1:	Linux microSD<br>Retrieving file: /Image<br></span>160465=
408 bytes read in 6633 ms (23.1 MiB/s)<br>append: console=3DttyS2,115200n8 =
earlycon=3Dns16550a,mmio32,0x02800000 root=3D/dev/mmcblk1p2 rw rootfstype=
=3Dext4 rootwait net.ifnames=3D0<br>Retrieving file: /k3-j721e-beagleboneai=
64.dtb</div><div><br></div><div>and grub load boot is discarded in below li=
nes:</div><div><br></div><div>Scanning disk sdhci@4f80000.blk...<br>Scannin=
g disk sdhci@4fb0000.blk...<br>Found 6 disks<br>No EFI system partition<br>=
BootOrder not defined<br>EFI boot manager: Cannot load any image<br>Found E=
FI removable media binary efi/boot/bootaa64.efi<br>741376 bytes read in 55 =
ms (12.9 MiB/s)<br>Booting /efi\boot\bootaa64.efi<br>error: no such device:=
 ((hd0,msdos1)/efi/boot)/EFI/BOOT/grub.cfg.<span class=3D"gmail-im"><br>err=
or: serial port `com0&#39; isn&#39;t found.<br>GNU GRUB =C2=A0version 2.12<=
/span></div></div><div class=3D"gmail_quote"><br></div><div class=3D"gmail_=
quote">but honestly I&#39;m doubting it is following extlinux.conf since at=
 least in one case BOOT_IMAGE has the parameters from grub.cfg.</div><div c=
lass=3D"gmail_quote"><br></div><div class=3D"gmail_quote">I&#39;m really co=
nfused which and where are the booting params being obtained.</div><div cla=
ss=3D"gmail_quote"><br><div>Conclusions. <br></div><div><br></div><div>1.- =
Booting is partially working.=C2=A0</div><div><br></div><div>question
 1.a.- I need to find out why when I boot BBAI-64 through u-boot=20
commands above there is an empty /proc/cmdline, and when I let the board
 boot directly without stopping in u-boot with automatic variables=20
/proc/cmdline is not empty. is it possible am I missing some boot params
 while sending commands to u-boot?</div><div><br></div><div>question=20
1.b.- How do we make the changes in addresses for kernel, and dtb image=20
permanent and allowing for possible increase of size, relocations in=20
future developments?</div><div><br></div><div>question 1.c.- I need to veri=
fy the source of error while switching/reading from the SD
 Card. I will get an extreme SD Card following comments from the=20
beagleboard forum but I doubt the main problem is this one. <br></div><div>=
<br></div><div>2.-
 The real problem may reside in this init-live.sh script since the=20
current version is not able to mount the SD Card / mmcblk1=C2=A0 as possibl=
y=20
ROOT_DISK inside init-live.sh. As a failure of this it is booting=20
mmcblk0.=C2=A0</div><div><br></div><div>question 2.- How do we modify init-=
live.sh so that it mounts properly from mmcblk1/SD Card and not mmcblk0.</d=
iv><div><br></div><div>if
 the init-live.sh file is correct then everything comes back to booting=20
params either in u-boot or in extlinux.conf or in grub.cfg</div><div><br></=
div><div>I really appreciate your help with this. I know I write very long =
emails :).</div><div><br></div><div>Ulises</div></div><br></div></div>

--0000000000002ac3580634e7b5ae--

