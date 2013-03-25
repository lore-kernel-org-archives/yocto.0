Return-Path: <dan.florincristian@gmail.com>
Received: from mail-da0-f41.google.com (mail-da0-f41.google.com
	[209.85.210.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3F2CEE0140A
	for <yocto@yoctoproject.org>; Mon, 25 Mar 2013 00:53:34 -0700 (PDT)
Received: by mail-da0-f41.google.com with SMTP id w4so3121112dam.0
	for <yocto@yoctoproject.org>; Mon, 25 Mar 2013 00:53:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:date:message-id:subject:from:to
	:content-type; bh=N5HsPD01sKBSHqqDeYQy35P5iuvNcnrjUzvvJbJilZk=;
	b=benmlUQtNyzwdwTAF9xOcApd+gAvOjIDg31P4Kp4odGQy/3rg13+nm0EuKNaYVGZUQ
	2XOO/1Lc/SkifNzXK9T6TwZclRvCuBBFgff9YZrO/7+yHLAs6oNX91grN/92xNmt0u52
	0XBLHPhrm1Rzlgks7hA9z84xCWlz6E+ATJ96JHj40yAPGM8M28l2C8ox1gTJ0ty1kMR/
	BwTzpHWrt0p7Hb/5uemFmBUo7hPFFzE4xzCjsgZ0nal0VVOjRbfqovKCtkTOBx1QDbPc
	OZRgdWYi7/QWlorN0h539V9bp0V+tcVMRrOL2zemW4xQcrMfilEAdi4gCafFUPZCbqAn
	y+Vg==
MIME-Version: 1.0
X-Received: by 10.68.117.104 with SMTP id kd8mr16330190pbb.1.1364198013778;
	Mon, 25 Mar 2013 00:53:33 -0700 (PDT)
Received: by 10.66.134.174 with HTTP; Mon, 25 Mar 2013 00:53:33 -0700 (PDT)
Date: Mon, 25 Mar 2013 09:53:33 +0200
Message-ID: <CABzOdpQ5dU9DRbsF7vsP8uYgcNVfBUzTvOVeRGJu5brSGD=Q-w@mail.gmail.com>
From: Florin Cristian Dan <dan.florincristian@gmail.com>
To: yocto@yoctoproject.org
Subject: Yocto Qt!
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
X-List-Received-Date: Mon, 25 Mar 2013 07:53:34 -0000
Content-Type: multipart/alternative; boundary=047d7b07233003c2be04d8bb1a88

--047d7b07233003c2be04d8bb1a88
Content-Type: text/plain; charset=ISO-8859-1

Hi,
This is my fifth mail i think and no one still responded me, i'm trying to
start developing apps, using Qt and add Qt support to Yocto.
I've built a image for my Intel Atom based target machine, and added
IMAGE_FEATURES
+= "qt4-pkgs" to local.conf file. It burned succesfuly the image
booted on my target machine and the i've pluged in a usb with a simple qt
app wich would displayed a window and tried to do this:

1. cd to a /usr/bin/qtopia/demos/mainwindow  (for example)
2. (qmake -project)
3. qmake -o Makefile mainwindow.pro
3. (uic ui files)
4. make


 But no succes.

Please can someone show me te correct path to do this?

--047d7b07233003c2be04d8bb1a88
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi,=A0<div>This is my fifth mail i think and no one still responded me, i&#=
39;m trying to start developing apps, using Qt and add Qt support to Yocto.=
</div><div>I&#39;ve built a image for my Intel Atom based target machine, a=
nd added=A0<span style=3D"white-space:pre-wrap">IMAGE_FEATURES +=3D &quot;q=
t4-pkgs&quot; to local.conf file. It burned succesfuly the image</span></di=
v>
<div><span style=3D"white-space:pre-wrap">booted on my target machine and t=
he i&#39;ve pluged in a usb with a simple qt app wich would displayed a win=
dow and tried to do this:</span></div><div><pre style=3D"font-family:courie=
r,&#39;courier new&#39;,monospace;font-size:14px;white-space:pre-wrap;word-=
wrap:break-word;margin-top:0px;margin-bottom:0px;line-height:19px;backgroun=
d-color:rgb(255,255,255)">
1. cd to a /usr/bin/qtopia/demos/mainwindow  (for example)
2. (qmake -project)
3. qmake -o Makefile <a href=3D"http://mainwindow.pro">mainwindow.pro</a>
3. (uic ui files)
4. make</pre><pre style=3D"font-family:courier,&#39;courier new&#39;,monosp=
ace;font-size:14px;white-space:pre-wrap;word-wrap:break-word;margin-top:0px=
;margin-bottom:0px;line-height:19px;background-color:rgb(255,255,255)"><br>
</pre><pre style=3D"font-family:courier,&#39;courier new&#39;,monospace;fon=
t-size:14px;white-space:pre-wrap;word-wrap:break-word;margin-top:0px;margin=
-bottom:0px;line-height:19px;background-color:rgb(255,255,255)"><span style=
=3D"font-family:arial;font-size:small;line-height:normal"> But no succes.</=
span></pre>
<pre style=3D"font-family:courier,&#39;courier new&#39;,monospace;font-size=
:14px;white-space:pre-wrap;word-wrap:break-word;margin-top:0px;margin-botto=
m:0px;line-height:19px;background-color:rgb(255,255,255)"><span style=3D"fo=
nt-family:arial;font-size:small;line-height:normal">Please can someone show=
 me te correct path to do this?</span></pre>
</div>

--047d7b07233003c2be04d8bb1a88--
