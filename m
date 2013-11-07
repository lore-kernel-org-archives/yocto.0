Return-Path: <vidal.develone@gmail.com>
Received: from mail-qa0-f50.google.com (mail-qa0-f50.google.com
	[209.85.216.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9AD4DE01757
	for <yocto@yoctoproject.org>; Thu,  7 Nov 2013 11:37:12 -0800 (PST)
Received: by mail-qa0-f50.google.com with SMTP id f11so853565qae.9
	for <yocto@yoctoproject.org>; Thu, 07 Nov 2013 11:37:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=Bf7IGMyEC+Roa0vvphAMPICf6++aJIIAuYbFveawhto=;
	b=lTqHD1l36ijJM9674xbGjxvkoMHpmSIWbYBDFb0YThXvJCu26TdR9q7fGFqDGgSY+i
	aSYKwjGkGvZjJ5w6d6gibXUvNwnX1QTvB/Igu+OCxfTjSH7tdGz/FbH+yNzoON8c4Qgl
	ojhp9WClSnXT6yLuBydYNzAyv5zMD9JpFtmqGMOgvbD14BmHW3XyErYvlc+6aqe2CeHK
	C6Tz+8011i5kaaV7QM15CX2z7ocRiTBIfwdpexMqyPW+k3L/z7MLszqj/KtVrUU6847Z
	paQTJgJw+4EMj3VXu9sBenXITJDIM5WjhQQ+dwtISw/9cxoepweRFnP4fGNVwrBO/TFM
	4syg==
MIME-Version: 1.0
X-Received: by 10.49.82.52 with SMTP id f20mr15802733qey.73.1383853032017;
	Thu, 07 Nov 2013 11:37:12 -0800 (PST)
Received: by 10.140.37.81 with HTTP; Thu, 7 Nov 2013 11:37:11 -0800 (PST)
Date: Thu, 7 Nov 2013 12:37:11 -0700
Message-ID: <CANwz6nz1t9TVPBdP2afosdkV3k-erwsJFe4C_d21UwdV0ZZ4yg@mail.gmail.com>
From: Edward Vidal <vidal.develone@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: zImage MLO u-boot.
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
X-List-Received-Date: Thu, 07 Nov 2013 19:37:15 -0000
Content-Type: multipart/alternative; boundary=047d7b5dbf4c65168a04ea9b647c

--047d7b5dbf4c65168a04ea9b647c
Content-Type: text/plain; charset=ISO-8859-1

hello,
What is the relation between MLO u-boot.bin & u-boot.img and uimage.&zImage?
I have been try to get the module uvcvideo.ko
meta-beagleboard is used in Angstrom. I had built previously.

. /opt/poky/1.4.1/environment-setup-armv7a-vfp-neon-poky-linux-gnueabi

was getting errors with these LDFLAGS

LDFLAGS=-Wl,-O1 -Wl,--hash-style=gnu -Wl,--as-needed

set LDFLAGS with the following command export LDFLAGS=''

make ARCH=arm CROSS_COMPILE=arm-poky-linux-gnueabi- menuconfig

 CONFIG_VIDEO_V4L2_COMMON=m

USB Video Class (UVC) a module.

find . -name uvcvideo.ko
./drivers/media/video/uvc/uvcvideo.ko

[vidal@sim4 git]$ find . -name uImage
[vidal@sim4 git]$ find . -name zImage
./arch/arm/boot/zImage

I believe u-boot does not support zImage until

U-Boot 2013.07 (Oct 31 2013 - 23:25:55)

This is uEnv.txt I used to boot to boot zImage 3.10.11.

dvimode=hd720 omapfb.vram=0:8M,1:4M,2:4M
loaduimage=run mmcargs;mmc rescan ; fatload mmc 0:1 0x80300000 zImage
vram=16M
mpurate=1000
mmcboot=echo Booting from mmc ...;  bootz 0x80300000

Any and all help is appreciated.

Thanks

--047d7b5dbf4c65168a04ea9b647c
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>hello,<br></div>What is the relation between MLO=
 u-boot.bin &amp; u-boot.img and uimage.&amp;zImage?<br></div><div>I have b=
een try to get the module uvcvideo.ko<br></div><div>meta-beagleboard is use=
d in Angstrom. I had built previously.<br>



=09
=09
=09
	<style type=3D"text/css">P { margin-bottom: 0.08in; direction: ltr; color:=
 rgb(0, 0, 0); }P.western { font-family: "Liberation Serif","Times New Roma=
n",serif; font-size: 12pt; }P.cjk { font-family: "WenQuanYi Zen Hei Sharp";=
 font-size: 12pt; }P.ctl { font-family: "DejaVu Sans"; font-size: 12pt; }</=
style>


<p class=3D"" style=3D"margin-bottom:0in">.
/opt/poky/1.4.1/environment-setup-armv7a-vfp-neon-poky-linux-gnueabi</p><p =
class=3D"" style=3D"margin-bottom:0in">was getting errors with these LDFLAG=
S<br></p>
<p class=3D"" style=3D"margin-bottom:0in">LDFLAGS=3D-Wl,-O1
-Wl,--hash-style=3Dgnu -Wl,--as-needed</p><p class=3D"" style=3D"margin-bot=
tom:0in">set LDFLAGS with the following command export LDFLAGS=3D&#39;&#39;
</p><p class=3D"" style=3D"margin-bottom:0in">make ARCH=3Darm
CROSS_COMPILE=3Darm-poky-linux-gnueabi- menuconfig</p><p class=3D"" style=
=3D"margin-bottom:0in">


=09
=09
=09
	<style type=3D"text/css">P { margin-bottom: 0.08in; direction: ltr; color:=
 rgb(0, 0, 0); }P.western { font-family: "Liberation Serif","Times New Roma=
n",serif; font-size: 12pt; }P.cjk { font-family: "WenQuanYi Zen Hei Sharp";=
 font-size: 12pt; }P.ctl { font-family: "DejaVu Sans"; font-size: 12pt; }</=
style>


</p><p class=3D"" style=3D"margin-bottom:0in">CONFIG_VIDEO_V4L2_COMMON=3Dm<=
/p>



</div>


=09
=09
=09
	<style type=3D"text/css">P { margin-bottom: 0.08in; direction: ltr; color:=
 rgb(0, 0, 0); }P.western { font-family: "Liberation Serif","Times New Roma=
n",serif; font-size: 12pt; }P.cjk { font-family: "WenQuanYi Zen Hei Sharp";=
 font-size: 12pt; }P.ctl { font-family: "DejaVu Sans"; font-size: 12pt; }</=
style>


<p class=3D"" style=3D"margin-bottom:0in">USB Video Class (UVC) a module.</=
p><p class=3D"" style=3D"margin-bottom:0in">find . -name uvcvideo.ko<br>./d=
rivers/media/video/uvc/uvcvideo.ko</p><p class=3D"" style=3D"margin-bottom:=
0in">[vidal@sim4 git]$ find . -name uImage<br>
[vidal@sim4 git]$ find . -name zImage<br>./arch/arm/boot/zImage</p><p class=
=3D"" style=3D"margin-bottom:0in">I believe u-boot does not support zImage =
until=A0</p><p class=3D"" style=3D"margin-bottom:0in">U-Boot 2013.07 (Oct 3=
1 2013 - 23:25:55)</p>
<p class=3D"" style=3D"margin-bottom:0in">This is uEnv.txt I used to boot t=
o boot zImage 3.10.11.</p><p class=3D"" style=3D"margin-bottom:0in"> dvimod=
e=3Dhd720 omapfb.vram=3D0:8M,1:4M,2:4M<br>loaduimage=3Drun mmcargs;mmc resc=
an ; fatload mmc 0:1 0x80300000 zImage<br>
vram=3D16M<br>mpurate=3D1000<br>mmcboot=3Decho Booting from mmc ...;=A0 boo=
tz 0x80300000</p><p class=3D"" style=3D"margin-bottom:0in">Any and all help=
 is appreciated.</p><p class=3D"" style=3D"margin-bottom:0in">Thanks<br></p=
><p class=3D"" style=3D"margin-bottom:0in">
<br></p>

</div>

--047d7b5dbf4c65168a04ea9b647c--
