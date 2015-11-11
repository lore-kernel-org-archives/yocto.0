Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0A097E00BB9; Wed, 11 Nov 2015 05:27:01 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.215.52 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f52.google.com (mail-lf0-f52.google.com
	[209.85.215.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 792FAE00B4F
	for <yocto@yoctoproject.org>; Wed, 11 Nov 2015 05:26:57 -0800 (PST)
Received: by lffz63 with SMTP id z63so16211503lff.0
	for <yocto@yoctoproject.org>; Wed, 11 Nov 2015 05:26:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan_ro.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=4GcWDNVzP0PyT8BdaaDhkgFQV89mt2wt8NsQFY/SC6w=;
	b=1khaEWSUTJNIATJxvz/e3fY24OUN3xj0jJ0srkkhzh1dTugYlWEAipmRqCGuEL3ybD
	UQreoFsQ2hIjznhsId//wlnb/E/+IdxHWjc3UvD9clvdyCuSqs0r0ipvRVDaMYGqF10m
	koyTM6N3LnpgATyvOaMPomr4tD2TDBkgA3tWrcrAVi7nFrVq0rGxyElI18Bma1Any5d5
	GUZb0h3tS+eu80Zx3gOWmvXIq4LsubD89ojWuOm0pdwwslhNlZBXeKoKtMdGiXXMmYHy
	IRP8xjgCo459eOSZWBNMzNyctne6WeWNhGkuEz5jAl/33/RKQMoxwqpCZJtaLQH9MGdi
	+hcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=4GcWDNVzP0PyT8BdaaDhkgFQV89mt2wt8NsQFY/SC6w=;
	b=D3AUDDGB3eMZQwX1O5WcjKDs4NnVIlLZT1u0ugdR+n+bJmnPZEvBDu6WujopIzrXzB
	EmUtdTZ2p/XK5rNFY1kKfKdbEGHFvQO+VWlXesOzPuwRA6cNEeQcz+/HWrWGvC9n+sl4
	CLV6VK4v5KslizGAjs1Fl5NatjmANOc2ZB8fuupRusS7IQBifxF4S1dJFmgiyC+ANSr8
	R01RqVOWou0UdiKX0bgvSFfdR6o7Adr3nkZ/u888yegUVX64m8G/g4kkkaAtTF8fLoZX
	IQons0luqGwQ6ULr8cBEYoo93cQsJgRbxw0avShtVE2OiDvSU2pUmnNai+otRi5lC8qo
	lRIg==
X-Gm-Message-State: ALoCoQllb3Bchfql0aMwS2NR12B2+dHpoH3HzE1tBuvZ0TDhRJytESQf00+kfBLOQGvadFpXw+2W
X-Received: by 10.25.20.97 with SMTP id k94mr4315426lfi.71.1447248415824; Wed,
	11 Nov 2015 05:26:55 -0800 (PST)
MIME-Version: 1.0
Received: by 10.112.61.195 with HTTP; Wed, 11 Nov 2015 05:26:16 -0800 (PST)
X-Originating-IP: [131.159.210.33]
In-Reply-To: <CAK3ATuHc9C4T6mF-m8J=CuMWu=QJGtBOVvLbTYae-HgLS1uZFw@mail.gmail.com>
References: <CAK3ATuEW_u3JpNxxx7m2wVrJdERX=p3=2k_6YF_9NLue6EYWcw@mail.gmail.com>
	<CAK3ATuHc9C4T6mF-m8J=CuMWu=QJGtBOVvLbTYae-HgLS1uZFw@mail.gmail.com>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Wed, 11 Nov 2015 14:26:16 +0100
Message-ID: <CAK18fxF6D9+8_VNyZEJhud1Rqz_Fs6nmZTgpbTwqF-e-fjn8iQ@mail.gmail.com>
To: Raj Jar <jarraj400@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: raspberry pi do rootfs
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
X-List-Received-Date: Wed, 11 Nov 2015 13:27:01 -0000
Content-Type: multipart/alternative; boundary=001a11406b62ba3501052443c7dc

--001a11406b62ba3501052443c7dc
Content-Type: text/plain; charset=UTF-8

--
Andrei Gherzan

On Wed, Nov 11, 2015 at 9:09 AM, Raj Jar <jarraj400@gmail.com> wrote:

> Hi All,
>
> I have 60GB space in my build system still i face
>
>
Do you have any custom modifications or so. It seems like the fat partition
is not big enough for what you write in. What poky/meta-rpi are you using?


>
> NOTE: Preparing RunQueue
> NOTE: Executing SetScene Tasks
> NOTE: Executing RunQueue Tasks
> ERROR: Error: The image creation script
> '/home/raj/Projects/raspberry_pi/yacto/poky/raspberrypi_build/tmp/work/raspberrypi-poky-linux-gnueabi/rpi-hwup-image/1.0-r0/temp/create_image.rpi-sdimg'
> returned 1:
> Creating filesystem with Boot partition 20480 KiB and RootFS 77824 KiB
> 0+0 records in
> 0+0 records out
> 0 bytes (0 B) copied, 7.4427e-05 s, 0.0 kB/s
> Model:  (file)
> Disk
> /home/raj/Projects/raspberry_pi/yacto/poky/raspberrypi_build/tmp/deploy/images/raspberrypi/rpi-hwup-image-raspberrypi-20151102024300.rootfs.rpi-sdimg:
> 105MB
> Sector size (logical/physical): 512B/512B
> Partition Table: msdos
> Disk Flags:
>
> Number  Start   End     Size    Type     File system  Flags
>  1      4194kB  25.2MB  21.0MB  primary               boot, lba
>  2      25.2MB  105MB   79.7MB  primary
>
> mkfs.vfat 2.11 (12 Mar 2005)
> Disk full
> WARNING:
> /home/raj/Projects/raspberry_pi/yacto/poky/raspberrypi_build/tmp/work/raspberrypi-poky-linux-gnueabi/rpi-hwup-image/1.0-r0/temp/create_image.rpi-sdimg:1
> exit 1 from
>   mcopy -i
> /home/raj/Projects/raspberry_pi/yacto/poky/raspberrypi_build/tmp/work/raspberrypi-poky-linux-gnueabi/rpi-hwup-image/1.0-r0/boot.img
> -s
> /home/raj/Projects/raspberry_pi/yacto/poky/raspberrypi_build/tmp/deploy/images/raspberrypi/Image-raspberrypi.bin
> ::kernel.img
>
> ERROR: Function failed: do_rootfs
> ERROR: Logfile of failure stored in:
> /home/raj/Projects/raspberry_pi/yacto/poky/raspberrypi_build/tmp/work/raspberrypi-poky-linux-gnueabi/rpi-hwup-image/1.0-r0/temp/log.do_rootfs.13457
> ERROR: Task 7
> (/home/raj/Projects/raspberry_pi/yacto/poky/meta-raspberrypi/recipes-core/images/
> rpi-hwup-image.bb, do_rootfs) failed with exit code '1'
> NOTE: Tasks Summary: Attempted 1954 tasks of which 1953 didn't need to be
> rerun and 1 failed.
> No currently running tasks (1953 of 1955)
>
> Summary: 1 task failed:
>
> /home/raj/Projects/raspberry_pi/yacto/poky/meta-raspberrypi/recipes-core/images/
> rpi-hwup-image.bb, do_rootfs
>
>
> On Tue, Nov 3, 2015 at 10:17 AM, Raj Jar <jarraj400@gmail.com> wrote:
>
>> I got this error when i do bitbake rpi-hwup-image
>> I suspect error come from mcopy .....
>> how to recover this error
>> MACHINE ?="raspberry pi"
>>
>>
>> NOTE: Preparing RunQueue
>> NOTE: Executing SetScene Tasks
>> NOTE: Executing RunQueue Tasks
>> ERROR: Error: The image creation script
>> '/home/raj/Projects/raspberry_pi/yacto/poky/raspberrypi_build/tmp/work/raspberrypi-poky-linux-gnueabi/rpi-hwup-image/1.0-r0/temp/create_image.rpi-sdimg'
>> returned 1:
>> Creating filesystem with Boot partition 20480 KiB and RootFS 77824 KiB
>> 0+0 records in
>> 0+0 records out
>> 0 bytes (0 B) copied, 7.4427e-05 s, 0.0 kB/s
>> Model:  (file)
>> Disk
>> /home/raj/Projects/raspberry_pi/yacto/poky/raspberrypi_build/tmp/deploy/images/raspberrypi/rpi-hwup-image-raspberrypi-20151102024300.rootfs.rpi-sdimg:
>> 105MB
>> Sector size (logical/physical): 512B/512B
>> Partition Table: msdos
>> Disk Flags:
>>
>> Number  Start   End     Size    Type     File system  Flags
>>  1      4194kB  25.2MB  21.0MB  primary               boot, lba
>>  2      25.2MB  105MB   79.7MB  primary
>>
>> mkfs.vfat 2.11 (12 Mar 2005)
>> Disk full
>> WARNING:
>> /home/raj/Projects/raspberry_pi/yacto/poky/raspberrypi_build/tmp/work/raspberrypi-poky-linux-gnueabi/rpi-hwup-image/1.0-r0/temp/create_image.rpi-sdimg:1
>> exit 1 from
>>   mcopy -i
>> /home/raj/Projects/raspberry_pi/yacto/poky/raspberrypi_build/tmp/work/raspberrypi-poky-linux-gnueabi/rpi-hwup-image/1.0-r0/boot.img
>> -s
>> /home/raj/Projects/raspberry_pi/yacto/poky/raspberrypi_build/tmp/deploy/images/raspberrypi/Image-raspberrypi.bin
>> ::kernel.img
>>
>> ERROR: Function failed: do_rootfs
>> ERROR: Logfile of failure stored in:
>> /home/raj/Projects/raspberry_pi/yacto/poky/raspberrypi_build/tmp/work/raspberrypi-poky-linux-gnueabi/rpi-hwup-image/1.0-r0/temp/log.do_rootfs.13457
>> ERROR: Task 7
>> (/home/raj/Projects/raspberry_pi/yacto/poky/meta-raspberrypi/recipes-core/images/
>> rpi-hwup-image.bb, do_rootfs) failed with exit code '1'
>> NOTE: Tasks Summary: Attempted 1954 tasks of which 1953 didn't need to be
>> rerun and 1 failed.
>> No currently running tasks (1953 of 1955)
>>
>> Summary: 1 task failed:
>>
>> /home/raj/Projects/raspberry_pi/yacto/poky/meta-raspberrypi/recipes-core/images/
>> rpi-hwup-image.bb, do_rootfs
>> Summary: There were 2 ERROR messages shown, returning a non-zero exit
>> code.
>>
>>
>>
>>
>
>
> --
> Regards,
> RAJ M
> Mob. # +91-9597208150
>
>
> Have a great day ahead.
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--001a11406b62ba3501052443c7dc
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br clear=3D"all"><div><div=
 class=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr"><div>--</=
div>Andrei Gherzan</div></div></div></div></div>
<br><div class=3D"gmail_quote">On Wed, Nov 11, 2015 at 9:09 AM, Raj Jar <sp=
an dir=3D"ltr">&lt;<a href=3D"mailto:jarraj400@gmail.com" target=3D"_blank"=
>jarraj400@gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex=
"><div dir=3D"ltr"><div>Hi All,<br><br></div>I have 60GB space in my build =
system still i face<span><br><br></span></div></blockquote><div><br></div><=
div>Do you have any custom modifications or so. It seems like the fat parti=
tion is not big enough for what you write in. What poky/meta-rpi are you us=
ing?</div><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margi=
n:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr">=
<span></span><br>NOTE: Preparing RunQueue<br>NOTE: Executing SetScene Tasks=
<br>NOTE: Executing RunQueue Tasks<br>ERROR: Error: The image creation scri=
pt &#39;/home/raj/Projects/raspberry_pi/yacto/poky/raspberrypi_build/tmp/wo=
rk/raspberrypi-poky-linux-gnueabi/rpi-hwup-image/1.0-r0/temp/create_image.r=
pi-sdimg&#39; returned 1:<br>Creating filesystem with Boot partition 20480 =
KiB and RootFS 77824 KiB<br>0+0 records in<br>0+0 records out<br>0 bytes (0=
 B) copied, 7.4427e-05 s, 0.0 kB/s<br>Model:=C2=A0 (file)<br>Disk /home/raj=
/Projects/raspberry_pi/yacto/poky/raspberrypi_build/tmp/deploy/images/raspb=
errypi/rpi-hwup-image-raspberrypi-20151102024300.rootfs.rpi-sdimg: 105MB<br=
>Sector size (logical/physical): 512B/512B<br>Partition Table: msdos<br>Dis=
k Flags:<br><br>Number=C2=A0 Start=C2=A0=C2=A0 End=C2=A0=C2=A0=C2=A0=C2=A0 =
Size=C2=A0=C2=A0=C2=A0 Type=C2=A0=C2=A0=C2=A0=C2=A0 File system=C2=A0 Flags=
<br>=C2=A01=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 4194kB=C2=A0 25.2MB=C2=A0 21.0MB=
=C2=A0 primary=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 boot, lba<br>=C2=A02=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 25.2MB=C2=A0 105MB=C2=A0=C2=A0 79.7MB=C2=A0 primary<br><br>mkfs.vfat 2.11 =
(12 Mar 2005)<br>Disk full<br>WARNING: /home/raj/Projects/raspberry_pi/yact=
o/poky/raspberrypi_build/tmp/work/raspberrypi-poky-linux-gnueabi/rpi-hwup-i=
mage/1.0-r0/temp/create_image.rpi-sdimg:1 exit 1 from<br>=C2=A0 mcopy -i /h=
ome/raj/Projects/raspberry_pi/yacto/poky/raspberrypi_build/tmp/work/raspber=
rypi-poky-linux-gnueabi/rpi-hwup-image/1.0-r0/boot.img -s /home/raj/Project=
s/raspberry_pi/yacto/poky/raspberrypi_build/tmp/deploy/images/raspberrypi/I=
mage-raspberrypi.bin ::kernel.img<br><br>ERROR: Function failed: do_rootfs<=
br>ERROR: Logfile of failure stored in: /home/raj/Projects/raspberry_pi/yac=
to/poky/raspberrypi_build/tmp/work/raspberrypi-poky-linux-gnueabi/rpi-hwup-=
image/1.0-r0/temp/log.do_rootfs.13457<br>ERROR: Task 7 (/home/raj/Projects/=
raspberry_pi/yacto/poky/meta-raspberrypi/recipes-core/images/<a href=3D"htt=
p://rpi-hwup-image.bb" target=3D"_blank">rpi-hwup-image.bb</a>, do_rootfs) =
failed with exit code &#39;1&#39;<br>NOTE: Tasks Summary: Attempted 1954 ta=
sks of which 1953 didn&#39;t need to be rerun and 1 failed.<br>No currently=
 running tasks (1953 of 1955)<br><br>Summary: 1 task failed:<br>=C2=A0 /hom=
e/raj/Projects/raspberry_pi/yacto/poky/meta-raspberrypi/recipes-core/images=
/<a href=3D"http://rpi-hwup-image.bb" target=3D"_blank">rpi-hwup-image.bb</=
a>, do_rootfs<br><br></div><div class=3D"gmail_extra"><br><div class=3D"gma=
il_quote">On Tue, Nov 3, 2015 at 10:17 AM, Raj Jar <span dir=3D"ltr">&lt;<a=
 href=3D"mailto:jarraj400@gmail.com" target=3D"_blank">jarraj400@gmail.com<=
/a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:=
0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><d=
iv><div><div>I got this error when i do bitbake rpi-hwup-image<br></div>I s=
uspect error come from mcopy .....<br></div>how to recover this error<br></=
div>MACHINE ?=3D&quot;raspberry pi&quot;<br><div><div><div><div><br><div><b=
r>NOTE: Preparing RunQueue<br>NOTE: Executing SetScene Tasks<br>NOTE: Execu=
ting RunQueue Tasks<br>ERROR: Error: The image creation script &#39;/home/r=
aj/Projects/raspberry_pi/yacto/poky/raspberrypi_build/tmp/work/raspberrypi-=
poky-linux-gnueabi/rpi-hwup-image/1.0-r0/temp/create_image.rpi-sdimg&#39; r=
eturned 1:<br>Creating filesystem with Boot partition 20480 KiB and RootFS =
77824 KiB<br>0+0 records in<br>0+0 records out<br>0 bytes (0 B) copied, 7.4=
427e-05 s, 0.0 kB/s<br>Model:=C2=A0 (file)<br>Disk /home/raj/Projects/raspb=
erry_pi/yacto/poky/raspberrypi_build/tmp/deploy/images/raspberrypi/rpi-hwup=
-image-raspberrypi-20151102024300.rootfs.rpi-sdimg: 105MB<br>Sector size (l=
ogical/physical): 512B/512B<br>Partition Table: msdos<br>Disk Flags:<br><br=
>Number=C2=A0 Start=C2=A0=C2=A0 End=C2=A0=C2=A0=C2=A0=C2=A0 Size=C2=A0=C2=
=A0=C2=A0 Type=C2=A0=C2=A0=C2=A0=C2=A0 File system=C2=A0 Flags<br>=C2=A01=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 4194kB=C2=A0 25.2MB=C2=A0 21.0MB=C2=A0 prima=
ry=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 boot, lba<br>=C2=A02=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 25.2MB=C2=
=A0 105MB=C2=A0=C2=A0 79.7MB=C2=A0 primary<br><br>mkfs.vfat 2.11 (12 Mar 20=
05)<br>Disk full<br>WARNING: /home/raj/Projects/raspberry_pi/yacto/poky/ras=
pberrypi_build/tmp/work/raspberrypi-poky-linux-gnueabi/rpi-hwup-image/1.0-r=
0/temp/create_image.rpi-sdimg:1 exit 1 from<br>=C2=A0 mcopy -i /home/raj/Pr=
ojects/raspberry_pi/yacto/poky/raspberrypi_build/tmp/work/raspberrypi-poky-=
linux-gnueabi/rpi-hwup-image/1.0-r0/boot.img -s /home/raj/Projects/raspberr=
y_pi/yacto/poky/raspberrypi_build/tmp/deploy/images/raspberrypi/Image-raspb=
errypi.bin ::kernel.img<br><br>ERROR: Function failed: do_rootfs<br>ERROR: =
Logfile of failure stored in: /home/raj/Projects/raspberry_pi/yacto/poky/ra=
spberrypi_build/tmp/work/raspberrypi-poky-linux-gnueabi/rpi-hwup-image/1.0-=
r0/temp/log.do_rootfs.13457<br>ERROR: Task 7 (/home/raj/Projects/raspberry_=
pi/yacto/poky/meta-raspberrypi/recipes-core/images/<a href=3D"http://rpi-hw=
up-image.bb" target=3D"_blank">rpi-hwup-image.bb</a>, do_rootfs) failed wit=
h exit code &#39;1&#39;<br>NOTE: Tasks Summary: Attempted 1954 tasks of whi=
ch 1953 didn&#39;t need to be rerun and 1 failed.<br>No currently running t=
asks (1953 of 1955)<br><br>Summary: 1 task failed:<br>=C2=A0 /home/raj/Proj=
ects/raspberry_pi/yacto/poky/meta-raspberrypi/recipes-core/images/<a href=
=3D"http://rpi-hwup-image.bb" target=3D"_blank">rpi-hwup-image.bb</a>, do_r=
ootfs<br>Summary: There were 2 ERROR messages shown, returning a non-zero e=
xit code.<br><br><div><div dir=3D"ltr"><br><div><br></div></div></div><span=
 class=3D"HOEnZb"><font color=3D"#888888">
</font></span></div></div></div></div></div></div><span class=3D"HOEnZb"><f=
ont color=3D"#888888">
</font></span></blockquote></div><span class=3D"HOEnZb"><font color=3D"#888=
888"><br><br clear=3D"all"><br>-- <br><div><div dir=3D"ltr">Regards,<div>RA=
J M</div><div>Mob. # <a href=3D"tel:%2B91-9597208150" value=3D"+91959720815=
0" target=3D"_blank">+91-9597208150</a></div><div><br></div><div><br></div>=
<div>Have a great day ahead.</div><div><br></div></div></div>
</font></span></div>
<br>--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br></blockquote></div><br></div></div>

--001a11406b62ba3501052443c7dc--
