Return-Path: <vidal.develone@gmail.com>
Received: from mail-qc0-f179.google.com (mail-qc0-f179.google.com
	[209.85.216.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9C5D0E016E9
	for <yocto@yoctoproject.org>; Wed, 23 Oct 2013 09:09:46 -0700 (PDT)
Received: by mail-qc0-f179.google.com with SMTP id k18so590829qcv.10
	for <yocto@yoctoproject.org>; Wed, 23 Oct 2013 09:09:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=16pUxOonce4I3ldmeGeONJIGAv7BWpLJZM3Gdl8JdR0=;
	b=V7U2LBgppP3BrMOF9S/CXY8S4dV+gkEVqhwFkiX/qkH0eBt4fCSNrOnO3KjEgZfmEJ
	59sIqrwJiR9uh2MGJt/AG9XuOd3NULuNBAXKhedE596nc1fmvkTVEVyImdiNVSeQQ5Zh
	BeeahQP5hvv377AoZMEMR+vsUm+ogwWqB3+iGGoEB7ulUhK6d477PWwWiSrc+AlGbkRQ
	E+GyW2zZJSwEXDxHw9gDGHRkM9vF2yZ+NGNUM+XNLue+WC7aYdSyjemEkri1hyh1rC/k
	oyHbF++nBMwbbhNdY5R3Bxzxrp1e4jeFu5urxQTqqE+P66nOJJmC17tLz7zPAHe+YrTW
	qz9Q==
MIME-Version: 1.0
X-Received: by 10.229.16.137 with SMTP id o9mr2654768qca.0.1382544585957; Wed,
	23 Oct 2013 09:09:45 -0700 (PDT)
Received: by 10.96.26.37 with HTTP; Wed, 23 Oct 2013 09:09:45 -0700 (PDT)
Date: Wed, 23 Oct 2013 10:09:45 -0600
Message-ID: <CANwz6nzQq8a1RnqL3Ety2tJ-CkTOnOObQtiEVXu6+TOhve5LAA@mail.gmail.com>
From: Edward Vidal <vidal.develone@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Rudolf Streif <rstreif@linuxfoundation.org>
Subject: uimage instead of zImage
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
X-List-Received-Date: Wed, 23 Oct 2013 16:09:48 -0000
Content-Type: multipart/alternative; boundary=001a1133cb88eec44304e96abe78

--001a1133cb88eec44304e96abe78
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

Hello,
Still struggling with zImage not booting on my beagleboard.

 Any help with this issue will be appreciated.
With a zImage the follow was the error I was getting.

VFS: Cannot open root device "ubi0:rootfs" or unknown-block(0,0): error -19
Please append a correct "root=3D" boot option; here are the available
partitions:
VFS: Unable to mount root fs on unknown-block(0,0)
User configuration error - no valid root filesystem found
Kernel panic - not syncing: Invalid configuration from end user prevents
continu
ing

I did a Search for Image zImage uImage

http://chaitutechbits.blogspot.com/2010/12/what-is-difference-between-zimag=
e-bz.html

the difference between bz image and z image is in compression mode
not only compression mode
there are many differnces

A uImage file is a kernel with a modified header for u-boot. A tool called
mkimage is used to convert a zImage (regular kernel compressed image) to a
uImage file. And No, zImage files, as they are, are not compatible with
U-Boot. You must convert them

make zImage - Creates a gzip=92d kernel image that must be installed manual=
ly.
make bzImage - Creates a bzip2=92d kernel image that must be installed manu=
al
fdisk /dev/sdb
Welcome to fdisk (util-linux 2.22.2).

Changes will remain in memory only, until you decide to write them.
Be careful before using the write command.


Command (m for help): p

Disk /dev/sdb: 3904 MB, 3904897024 bytes, 7626752 sectors
Units =3D sectors of 1 * 512 =3D 512 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 512 bytes / 512 bytes
Disk identifier: 0x0008bd36

   Device Boot      Start         End      Blocks   Id  System
/dev/sdb1   *        2048       63487       30720    c  W95 FAT32 (LBA)
/dev/sdb2           63488     7626751     3781632   83  Linux
mkfs.vfat -F 16 -n  "boot" /dev/sdb1
mke2fs -j -L "rootfs" /dev/sdb2

Go to location where zImage is located.

cd /home/vidal/img_beagleboard102113/beagleboard
I found this by doing a grep on my build that had a uImage.

mkimage -A arm -O linux -T kernel -C gzip -a 80200000 -e 80200000 -n
myuImage -d zImage uImage
Image Name:   myuImage
Created:      Wed Oct 23 09:31:11 2013
Image Type:   ARM Linux Kernel Image (gzip compressed)
Data Size:    4642760 Bytes =3D 4533.95 kB =3D 4.43 MB
Load Address: 80200000
Entry Point:  80200000


Transfer files to DOS partition.

cp /home/vidal/img_beagleboard102113/beagleboard/MLO /run/media/vidal/BOOT/
cp /home/vidal/img_beagleboard102113/beagleboard/u-boot.img
/run/media/vidal/BOOT/
cp /home/vidal/img_beagleboard102113/beagleboard/uImage
/run/media/vidal/BOOT/

uEnv.txt
mpurate=3Dauto

bootcmd=3D"mmc rescan 0; fatload mmc 0:1 0x80200000 uImage; bootm 0x8020000=
0"
dvimode=3D"hd720 omapfb.vram=3D0:8M,1:4M,2:4M"
vram=3D16M
optargs=3D"consoleblank=3D0"
console=3D"ttyO2 console=3Dtty0,115200n8"

cp /home/vidal/img_beagleboard102113/uEnv.txt /run/media/vidal/BOOT/uEnv.tx=
t

ls -la /run/media/vidal/BOOT/
total 4942
drwx------. 2 vidal users   16384 Dec 31  1969 .
drwxr-x---+ 3 root  root       60 Oct 23 09:40 ..
-rw-r--r--. 1 vidal users   47932 Oct 23 06:35 MLO
-rw-r--r--. 1 vidal users  346220 Oct 23 06:36 u-boot.img
-rw-r--r--. 1 vidal users     206 Oct 23 09:26 uEnv.txt
-rw-r--r--. 1 vidal users 4642824 Oct 23 09:33 uImage

cd ../rootfs/
Extract rootfs on Linux partition.

tar jxvf
/home/vidal/img_beagleboard102113/beagleboard/core-image-sato-sdk-ex-beagle=
board-20131021212900.rootfs.tar.bz2

Hit any key to stop autoboot:  3  2  1  0
mmc0 is current device
gpio: pin 173 (gpio 173) value is 0
gpio: pin 4 (gpio 4) value is 0
SD/MMC found on device 0
reading uEnv.txt
206 bytes read in 3 ms (66.4 KiB/s)
Loaded environment from uEnv.txt
Importing environment from mmc ...
4642824 bytes read in 315 ms (14.1 MiB/s)
Booting from mmc ...
## Booting kernel from Legacy Image at 80200000 ...
   Image Name:   myuImage
   Image Type:   ARM Linux Kernel Image (gzip compressed)
   Data Size:    4642760 Bytes =3D 4.4 MiB
   Load Address: 80200000
   Entry Point:  80200000
   Verifying Checksum ... OK
   Uncompressing Kernel Image ... Error: Bad gzipped data
GUNZIP: uncompress, out-of-mem or overwrite error - must RESET board to
recover
resetting ...
thanks

--001a1133cb88eec44304e96abe78
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>Hello,<br></div>Still struggling with zImage not=
 booting on my beagleboard. <br><br>=A0Any help with this issue will be app=
reciated.<br>With a zImage the follow was the error I was getting.<br><br>V=
FS: Cannot open root device &quot;ubi0:rootfs&quot; or unknown-block(0,0): =
error -19<br>
Please append a correct &quot;root=3D&quot; boot option; here are the avail=
able partitions:<br>VFS: Unable to mount root fs on unknown-block(0,0)<br>U=
ser configuration error - no valid root filesystem found<br>Kernel panic - =
not syncing: Invalid configuration from end user prevents continu<br>
ing<br><br>I did a Search for Image zImage uImage<br><br><a href=3D"http://=
chaitutechbits.blogspot.com/2010/12/what-is-difference-between-zimage-bz.ht=
ml">http://chaitutechbits.blogspot.com/2010/12/what-is-difference-between-z=
image-bz.html</a><br>
<br>the difference between bz image and z image is in compression mode<br>n=
ot only compression mode<br>there are many differnces<br><br>A uImage file =
is a kernel with a modified header for u-boot. A tool called mkimage is use=
d to convert a zImage (regular kernel compressed image) to a uImage file. A=
nd No, zImage files, as they are, are not compatible with U-Boot. You must =
convert them<br>
<br>make zImage - Creates a gzip=92d kernel image that must be installed ma=
nually.<br>make bzImage - Creates a bzip2=92d kernel image that must be ins=
talled manual<br>fdisk /dev/sdb<br>Welcome to fdisk (util-linux 2.22.2).<br=
>
<br>Changes will remain in memory only, until you decide to write them.<br>=
Be careful before using the write command.<br><br><br>Command (m for help):=
 p<br><br>Disk /dev/sdb: 3904 MB, 3904897024 bytes, 7626752 sectors<br>
Units =3D sectors of 1 * 512 =3D 512 bytes<br>Sector size (logical/physical=
): 512 bytes / 512 bytes<br>I/O size (minimum/optimal): 512 bytes / 512 byt=
es<br>Disk identifier: 0x0008bd36<br><br>=A0=A0 Device Boot=A0=A0=A0=A0=A0 =
Start=A0=A0=A0=A0=A0=A0=A0=A0 End=A0=A0=A0=A0=A0 Blocks=A0=A0 Id=A0 System<=
br>
/dev/sdb1=A0=A0 *=A0=A0=A0=A0=A0=A0=A0 2048=A0=A0=A0=A0=A0=A0 63487=A0=A0=
=A0=A0=A0=A0 30720=A0=A0=A0 c=A0 W95 FAT32 (LBA)<br>/dev/sdb2=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0 63488=A0=A0=A0=A0 7626751=A0=A0=A0=A0 3781632=A0=A0 83=
=A0 Linux<br>mkfs.vfat -F 16 -n=A0 &quot;boot&quot; /dev/sdb1<br>mke2fs -j =
-L &quot;rootfs&quot; /dev/sdb2<br>
<br>Go to location where zImage is located. <br><br>cd /home/vidal/img_beag=
leboard102113/beagleboard<br>I found this by doing a grep on my build that =
had a uImage.<br><br>mkimage -A arm -O linux -T kernel -C gzip -a 80200000 =
-e 80200000 -n myuImage -d zImage uImage<br>
Image Name:=A0=A0 myuImage<br>Created:=A0=A0=A0=A0=A0 Wed Oct 23 09:31:11 2=
013<br>Image Type:=A0=A0 ARM Linux Kernel Image (gzip compressed)<br>Data S=
ize:=A0=A0=A0 4642760 Bytes =3D 4533.95 kB =3D 4.43 MB<br>Load Address: 802=
00000<br>Entry Point:=A0 80200000<br>
=A0<br>=A0<br>Transfer files to DOS partition.<br><br>cp /home/vidal/img_be=
agleboard102113/beagleboard/MLO /run/media/vidal/BOOT/<br>cp /home/vidal/im=
g_beagleboard102113/beagleboard/u-boot.img /run/media/vidal/BOOT/<br>cp /ho=
me/vidal/img_beagleboard102113/beagleboard/uImage /run/media/vidal/BOOT/<br=
>
<br>uEnv.txt<br>mpurate=3Dauto<br><br>bootcmd=3D&quot;mmc rescan 0; fatload=
 mmc 0:1 0x80200000 uImage; bootm 0x80200000&quot;<br>dvimode=3D&quot;hd720=
 omapfb.vram=3D0:8M,1:4M,2:4M&quot;<br>vram=3D16M<br>optargs=3D&quot;consol=
eblank=3D0&quot;<br>
console=3D&quot;ttyO2 console=3Dtty0,115200n8&quot;<br><br>cp /home/vidal/i=
mg_beagleboard102113/uEnv.txt /run/media/vidal/BOOT/uEnv.txt<br><br>ls -la =
/run/media/vidal/BOOT/<br>total 4942<br>drwx------. 2 vidal users=A0=A0 163=
84 Dec 31=A0 1969 .<br>
drwxr-x---+ 3 root=A0 root=A0=A0=A0=A0=A0=A0 60 Oct 23 09:40 ..<br>-rw-r--r=
--. 1 vidal users=A0=A0 47932 Oct 23 06:35 MLO<br>-rw-r--r--. 1 vidal users=
=A0 346220 Oct 23 06:36 u-boot.img<br>-rw-r--r--. 1 vidal users=A0=A0=A0=A0=
 206 Oct 23 09:26 uEnv.txt<br>
-rw-r--r--. 1 vidal users 4642824 Oct 23 09:33 uImage<br><br>cd ../rootfs/<=
br>Extract rootfs on Linux partition.<br><br>tar jxvf /home/vidal/img_beagl=
eboard102113/beagleboard/core-image-sato-sdk-ex-beagleboard-20131021212900.=
rootfs.tar.bz2<br>
<br>Hit any key to stop autoboot:=A0 3=A0 2=A0 1=A0 0 <br>mmc0 is current d=
evice<br>gpio: pin 173 (gpio 173) value is 0<br>gpio: pin 4 (gpio 4) value =
is 0<br>SD/MMC found on device 0<br>reading uEnv.txt<br>206 bytes read in 3=
 ms (66.4 KiB/s)<br>
Loaded environment from uEnv.txt<br>Importing environment from mmc ...<br>4=
642824 bytes read in 315 ms (14.1 MiB/s)<br>Booting from mmc ...<br>## Boot=
ing kernel from Legacy Image at 80200000 ...<br>=A0=A0 Image Name:=A0=A0 my=
uImage<br>
=A0=A0 Image Type:=A0=A0 ARM Linux Kernel Image (gzip compressed)<br>=A0=A0=
 Data Size:=A0=A0=A0 4642760 Bytes =3D 4.4 MiB<br>=A0=A0 Load Address: 8020=
0000<br>=A0=A0 Entry Point:=A0 80200000<br>=A0=A0 Verifying Checksum ... OK=
<br>=A0=A0 Uncompressing Kernel Image ... Error: Bad gzipped data<br>
GUNZIP: uncompress, out-of-mem or overwrite error - must RESET board to rec=
over<br>resetting ...<br></div>thanks<br><div><br></div></div>

--001a1133cb88eec44304e96abe78--
