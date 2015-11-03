Return-Path: <jarraj400@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6AA16E00B56; Mon,  2 Nov 2015 20:47:52 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jarraj400[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.215.42 listed in list.dnswl.org]
Received: from mail-lf0-f42.google.com (mail-lf0-f42.google.com
	[209.85.215.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D1A98E00B4F
	for <yocto@yoctoproject.org>; Mon,  2 Nov 2015 20:47:47 -0800 (PST)
Received: by lfbn126 with SMTP id n126so4874893lfb.2
	for <yocto@yoctoproject.org>; Mon, 02 Nov 2015 20:47:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=076ZcurC5OvRrI7NPVoHwEMUG3DdbHJuOWDaO78mNXg=;
	b=UKyG4d4w1xSINgSO/jAkZCr/sA7Q9gWYL9wPqy21x/PtVQL/SGCsciIWdg6vVMsD3p
	m9xQaQlgi8JDg4ZGtgr358jKs/19WyaiCsX6Lq7+6zKeMRKJBdUX6S3Qdq1VXQ1mvYnm
	FOXONnn6AwiTfSQrh6Uv967lBpFT4QREbwymB34qBIx6GkTDKhbG+8nsCm0UPGVm9COO
	SKEVIAq8vVCq2/LdUjmOE1Hkdnju+hEEXOjQhYNBh+NGLtEGxgvT5WwxAx682qSAFak8
	ntMqLptBdGzpAGWEVqh2EmKXc5yH4xvmAzWuFZ/jKowZkkrrfrydf720G56s1BbK73Ts
	p+aQ==
MIME-Version: 1.0
X-Received: by 10.112.140.197 with SMTP id ri5mr11743690lbb.65.1446526065395; 
	Mon, 02 Nov 2015 20:47:45 -0800 (PST)
Received: by 10.25.25.147 with HTTP; Mon, 2 Nov 2015 20:47:45 -0800 (PST)
Date: Tue, 3 Nov 2015 10:17:45 +0530
Message-ID: <CAK3ATuEW_u3JpNxxx7m2wVrJdERX=p3=2k_6YF_9NLue6EYWcw@mail.gmail.com>
From: Raj Jar <jarraj400@gmail.com>
To: yocto@yoctoproject.org
X-Mailman-Approved-At: Tue, 03 Nov 2015 06:41:51 -0800
Subject: raspberry pi do rootfs
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
X-List-Received-Date: Tue, 03 Nov 2015 04:47:52 -0000
Content-Type: multipart/alternative; boundary=001a11c25b4649534105239b980b

--001a11c25b4649534105239b980b
Content-Type: text/plain; charset=UTF-8

I got this error when i do bitbake rpi-hwup-image
I suspect error come from mcopy .....
how to recover this error
MACHINE ?="raspberry pi"


NOTE: Preparing RunQueue
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
ERROR: Error: The image creation script
'/home/raj/Projects/raspberry_pi/yacto/poky/raspberrypi_build/tmp/work/raspberrypi-poky-linux-gnueabi/rpi-hwup-image/1.0-r0/temp/create_image.rpi-sdimg'
returned 1:
Creating filesystem with Boot partition 20480 KiB and RootFS 77824 KiB
0+0 records in
0+0 records out
0 bytes (0 B) copied, 7.4427e-05 s, 0.0 kB/s
Model:  (file)
Disk
/home/raj/Projects/raspberry_pi/yacto/poky/raspberrypi_build/tmp/deploy/images/raspberrypi/rpi-hwup-image-raspberrypi-20151102024300.rootfs.rpi-sdimg:
105MB
Sector size (logical/physical): 512B/512B
Partition Table: msdos
Disk Flags:

Number  Start   End     Size    Type     File system  Flags
 1      4194kB  25.2MB  21.0MB  primary               boot, lba
 2      25.2MB  105MB   79.7MB  primary

mkfs.vfat 2.11 (12 Mar 2005)
Disk full
WARNING:
/home/raj/Projects/raspberry_pi/yacto/poky/raspberrypi_build/tmp/work/raspberrypi-poky-linux-gnueabi/rpi-hwup-image/1.0-r0/temp/create_image.rpi-sdimg:1
exit 1 from
  mcopy -i
/home/raj/Projects/raspberry_pi/yacto/poky/raspberrypi_build/tmp/work/raspberrypi-poky-linux-gnueabi/rpi-hwup-image/1.0-r0/boot.img
-s
/home/raj/Projects/raspberry_pi/yacto/poky/raspberrypi_build/tmp/deploy/images/raspberrypi/Image-raspberrypi.bin
::kernel.img

ERROR: Function failed: do_rootfs
ERROR: Logfile of failure stored in:
/home/raj/Projects/raspberry_pi/yacto/poky/raspberrypi_build/tmp/work/raspberrypi-poky-linux-gnueabi/rpi-hwup-image/1.0-r0/temp/log.do_rootfs.13457
ERROR: Task 7
(/home/raj/Projects/raspberry_pi/yacto/poky/meta-raspberrypi/recipes-core/images/
rpi-hwup-image.bb, do_rootfs) failed with exit code '1'
NOTE: Tasks Summary: Attempted 1954 tasks of which 1953 didn't need to be
rerun and 1 failed.
No currently running tasks (1953 of 1955)

Summary: 1 task failed:

/home/raj/Projects/raspberry_pi/yacto/poky/meta-raspberrypi/recipes-core/images/
rpi-hwup-image.bb, do_rootfs
Summary: There were 2 ERROR messages shown, returning a non-zero exit code.

--001a11c25b4649534105239b980b
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div>I got this error when i do bitbake rpi-hwup=
-image<br></div>I suspect error come from mcopy .....<br></div>how to recov=
er this error<br></div>MACHINE ?=3D&quot;raspberry pi&quot;<br><div><div><d=
iv><div><br><div><br>NOTE: Preparing RunQueue<br>NOTE: Executing SetScene T=
asks<br>NOTE: Executing RunQueue Tasks<br>ERROR: Error: The image creation =
script &#39;/home/raj/Projects/raspberry_pi/yacto/poky/raspberrypi_build/tm=
p/work/raspberrypi-poky-linux-gnueabi/rpi-hwup-image/1.0-r0/temp/create_ima=
ge.rpi-sdimg&#39; returned 1:<br>Creating filesystem with Boot partition 20=
480 KiB and RootFS 77824 KiB<br>0+0 records in<br>0+0 records out<br>0 byte=
s (0 B) copied, 7.4427e-05 s, 0.0 kB/s<br>Model:=C2=A0 (file)<br>Disk /home=
/raj/Projects/raspberry_pi/yacto/poky/raspberrypi_build/tmp/deploy/images/r=
aspberrypi/rpi-hwup-image-raspberrypi-20151102024300.rootfs.rpi-sdimg: 105M=
B<br>Sector size (logical/physical): 512B/512B<br>Partition Table: msdos<br=
>Disk Flags:<br><br>Number=C2=A0 Start=C2=A0=C2=A0 End=C2=A0=C2=A0=C2=A0=C2=
=A0 Size=C2=A0=C2=A0=C2=A0 Type=C2=A0=C2=A0=C2=A0=C2=A0 File system=C2=A0 F=
lags<br>=C2=A01=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 4194kB=C2=A0 25.2MB=C2=A0 21.=
0MB=C2=A0 primary=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 boot, lba<br>=C2=A02=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 25.2MB=C2=A0 105MB=C2=A0=C2=A0 79.7MB=C2=A0 primary<br><br>mkfs.vfat 2.=
11 (12 Mar 2005)<br>Disk full<br>WARNING: /home/raj/Projects/raspberry_pi/y=
acto/poky/raspberrypi_build/tmp/work/raspberrypi-poky-linux-gnueabi/rpi-hwu=
p-image/1.0-r0/temp/create_image.rpi-sdimg:1 exit 1 from<br>=C2=A0 mcopy -i=
 /home/raj/Projects/raspberry_pi/yacto/poky/raspberrypi_build/tmp/work/rasp=
berrypi-poky-linux-gnueabi/rpi-hwup-image/1.0-r0/boot.img -s /home/raj/Proj=
ects/raspberry_pi/yacto/poky/raspberrypi_build/tmp/deploy/images/raspberryp=
i/Image-raspberrypi.bin ::kernel.img<br><br>ERROR: Function failed: do_root=
fs<br>ERROR: Logfile of failure stored in: /home/raj/Projects/raspberry_pi/=
yacto/poky/raspberrypi_build/tmp/work/raspberrypi-poky-linux-gnueabi/rpi-hw=
up-image/1.0-r0/temp/log.do_rootfs.13457<br>ERROR: Task 7 (/home/raj/Projec=
ts/raspberry_pi/yacto/poky/meta-raspberrypi/recipes-core/images/<a href=3D"=
http://rpi-hwup-image.bb">rpi-hwup-image.bb</a>, do_rootfs) failed with exi=
t code &#39;1&#39;<br>NOTE: Tasks Summary: Attempted 1954 tasks of which 19=
53 didn&#39;t need to be rerun and 1 failed.<br>No currently running tasks =
(1953 of 1955)<br><br>Summary: 1 task failed:<br>=C2=A0 /home/raj/Projects/=
raspberry_pi/yacto/poky/meta-raspberrypi/recipes-core/images/<a href=3D"htt=
p://rpi-hwup-image.bb">rpi-hwup-image.bb</a>, do_rootfs<br>Summary: There w=
ere 2 ERROR messages shown, returning a non-zero exit code.<br><br><div cla=
ss=3D"gmail_signature"><div dir=3D"ltr"><br><div><br></div></div></div>
</div></div></div></div></div></div>

--001a11c25b4649534105239b980b--
