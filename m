Return-Path: <tstellanova@gmail.com>
Received: from mail-wi0-f169.google.com (mail-wi0-f169.google.com
	[209.85.212.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9F413E00476
	for <yocto@yoctoproject.org>; Sat, 23 Nov 2013 10:22:19 -0800 (PST)
Received: by mail-wi0-f169.google.com with SMTP id hm6so2817236wib.4
	for <yocto@yoctoproject.org>; Sat, 23 Nov 2013 10:22:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=O2DUyDtQ8i7o0LPDRZ/tgbHY2v1Z6yMEV7DwTwAVpGE=;
	b=Ua+dZOaYjtvqAjOT+am86Z77E/7dwso3vZUVkSq991JUoFdtr2DCmYsA02krgdD2YQ
	7/itPEAipK0ugEutKplrDbzOEuvfI2I+/0/d707oiZROx5DtNUjXYp9l1nfAhbTONyO2
	Su0E1t1aaBmJ5EgjtvnPK2DPCdP+GYYfHp81ODQr/UHYU9+6HOZ8w7nZq5aAZ0W2KNaV
	pkFd8GCucA62nskKrui29cYUCkmLZVw5Uc3pMt3rDZnqsncte8GE23zu0Ud1hRXrN8f+
	MMCEuf9wRIRdZM3Znpm2E4xn2TKQJTe+cCkyMjrzNqgi38fuH/PKRwjQJ0TNB1kKLiO+
	Mswg==
MIME-Version: 1.0
X-Received: by 10.194.104.42 with SMTP id gb10mr15599158wjb.16.1385230938288; 
	Sat, 23 Nov 2013 10:22:18 -0800 (PST)
Received: by 10.216.202.4 with HTTP; Sat, 23 Nov 2013 10:22:18 -0800 (PST)
Date: Sat, 23 Nov 2013 10:22:18 -0800
Message-ID: <CACRzEudEBj6ZfdTyzCtBWCorDdPgPHHpWovbR5VJB5GuRVu8dA@mail.gmail.com>
From: Todd Stellanova <tstellanova@gmail.com>
To: yocto@yoctoproject.org
X-Mailman-Approved-At: Sun, 24 Nov 2013 20:24:16 -0800
Subject: unbootable image produced with PACKAGE_CLASSES ?= "package_ipk", /etc missing
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
X-List-Received-Date: Sat, 23 Nov 2013 18:22:21 -0000
Content-Type: multipart/alternative; boundary=047d7bf1985202372a04ebdc36d9

--047d7bf1985202372a04ebdc36d9
Content-Type: text/plain; charset=ISO-8859-1

Hello,

I'm following these directions for building with yocto for the wandboard:
http://wiki.wandboard.org/index.php/Getting_started_with_Yocto_on_Wandboard

I'm building a bb recipe based on core-image-minimal-dev, to which I've
added:
IMAGE_FEATURES += "package-management"

In my conf/local.conf I originally had:
PACKAGE_CLASSES ?= "package_rpm"

This built fine and I was able to boot with the resulting sdcard image fine
on the wandboard. However, I'd like to use opkg on the wandboard for
package management, so I modified local.conf to:
PACKAGE_CLASSES ?= "package_ipk"

and bitbaked my image again.  The resulting sdcard image doesn't boot on
the wandboard, and if I look at the sdcard image I can see that, for
example, /etc is completely missing from the rootfs.

Do I need to do anything else to switch the build to properly using ipks
with opkg?

Thanks for any help!

--047d7bf1985202372a04ebdc36d9
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><span style=3D"font-family:arial,sans-serif;font-size:13px=
">Hello,</span><div style=3D"font-family:arial,sans-serif;font-size:13px"><=
br></div><div style=3D"font-family:arial,sans-serif;font-size:13px">I&#39;m=
 following these directions for building with yocto for the wandboard:</div=
>
<div style=3D"font-family:arial,sans-serif;font-size:13px"><a href=3D"http:=
//wiki.wandboard.org/index.php/Getting_started_with_Yocto_on_Wandboard" tar=
get=3D"_blank">http://wiki.wandboard.org/index.php/Getting_started_with_Yoc=
to_on_Wandboard</a><br>
</div><div style=3D"font-family:arial,sans-serif;font-size:13px"><br></div>=
<div style=3D"font-family:arial,sans-serif;font-size:13px">I&#39;m building=
 a bb recipe based on core-image-minimal-dev, to which I&#39;ve added:</div=
>
<div style=3D"font-family:arial,sans-serif;font-size:13px">IMAGE_FEATURES +=
=3D &quot;package-management&quot;</div><div style=3D"font-family:arial,san=
s-serif;font-size:13px"><br></div><div style=3D"font-family:arial,sans-seri=
f;font-size:13px">
In my conf/local.conf I originally had:</div><div style=3D"font-family:aria=
l,sans-serif;font-size:13px">PACKAGE_CLASSES ?=3D &quot;package_rpm&quot;</=
div><div style=3D"font-family:arial,sans-serif;font-size:13px"><br></div><d=
iv style=3D"font-family:arial,sans-serif;font-size:13px">
This built fine and I was able to boot with the resulting sdcard image fine=
 on the wandboard. However, I&#39;d like to use opkg on the wandboard for p=
ackage management, so I modified local.conf to:</div><div style=3D"font-fam=
ily:arial,sans-serif;font-size:13px">
PACKAGE_CLASSES ?=3D &quot;package_ipk&quot;</div><div style=3D"font-family=
:arial,sans-serif;font-size:13px"><br></div><div style=3D"font-family:arial=
,sans-serif;font-size:13px">and bitbaked my image again. =A0The resulting s=
dcard image doesn&#39;t boot on the wandboard, and if I look at the sdcard =
image I can see that, for example, /etc is completely missing from the root=
fs.=A0</div>
<div style=3D"font-family:arial,sans-serif;font-size:13px"><br></div><div s=
tyle=3D"font-family:arial,sans-serif;font-size:13px">Do I need to do anythi=
ng else to switch the build to properly using ipks with opkg?</div><div sty=
le=3D"font-family:arial,sans-serif;font-size:13px">
<br></div><div style=3D"font-family:arial,sans-serif;font-size:13px">Thanks=
 for any help!</div></div>

--047d7bf1985202372a04ebdc36d9--
