Return-Path: <fede.vitali@gmail.com>
Received: from mail-ob0-f180.google.com (mail-ob0-f180.google.com
	[209.85.214.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 029F2E00C02
	for <yocto@yoctoproject.org>; Mon, 21 Apr 2014 23:58:56 -0700 (PDT)
Received: by mail-ob0-f180.google.com with SMTP id wm4so5192122obc.25
	for <yocto@yoctoproject.org>; Mon, 21 Apr 2014 23:58:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=yjtr7vCri2S/GYXRoviC8kV/5xDnR4YOisFlF1cngtM=;
	b=u9SzpxYLKQXbmD/b/dGROKWoaM7NeKlGzVC90418WKesX4AHzI9/ESvcw3WG+eHQXx
	yUCA7uYZfotDGxH5cvaatmXLmJ7lgDJ2VsKy8Hkg6bp8G88vlRzMLYwEpCFAiCkM/QZF
	yjf6A45ab4FPmaOKW3qwuoQUV6Huq4i2JHLqVSkboUBAS+TaFk/1kuf6O+pR+tquUp4B
	NQeB0/SSQF7w6Kq5xdvCyEFh4s42eJnPr0c0+Cch32focrErLelOLg6M4wxMzIKLNhYB
	3GIJGKVzNaWKJAeW6spJcApDmluCxTTgcUSNWMHMk98eAjdEENyFD1f9BfA6S3aDtzXO
	WU4g==
MIME-Version: 1.0
X-Received: by 10.60.95.230 with SMTP id dn6mr35755470oeb.25.1398149935685;
	Mon, 21 Apr 2014 23:58:55 -0700 (PDT)
Received: by 10.76.101.112 with HTTP; Mon, 21 Apr 2014 23:58:55 -0700 (PDT)
Date: Tue, 22 Apr 2014 08:58:55 +0200
Message-ID: <CAD78y+7i0thQCtYHg8O+aCaxt0CwoAE=f8DJq3qO48j60HB6YA@mail.gmail.com>
From: Federico Vitali <fede.vitali@gmail.com>
To: Yocto list discussion <yocto@yoctoproject.org>
Subject: problems with bitbake -c populate_sdk
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
X-List-Received-Date: Tue, 22 Apr 2014 06:58:57 -0000
Content-Type: multipart/alternative; boundary=089e011828e44265ba04f79c26df

--089e011828e44265ba04f79c26df
Content-Type: text/plain; charset=UTF-8

Hi everyone,

I have the following problem: I've made a very simple custom image:


IMAGE_INSTALL += "\
${CORE_IMAGE_BASE_INSTALL} \
packagegroup-my-packages \
"

LICENSE = "MIT"

inherit core-image

Where packagegroup-my-packages is as follows:


inherit packagegroup
RDEPENDS_${PN} =  " libxml2 pixman libsqlite3 sqlite3 libpng liboil
libvorbis libogg "

So, it's basically a core image with a set of libraries that I need for an
application
that I'm developing. I bitbaked the image and it's all ok, it works and
with buildhistory
I can see the installed package list, it's all ok. I can compare installed
packages of my
image with installed packages of core-image-base and I see all my added
libraries.

But, if I try to populate and SDK to work with that image, i.e.

bitbake my-image -c populate_sdk

Something strange happens: my sdk rootfs
(/opt/poky/1.5.1/sysroots/armv6-vfp-poky-linux-gnueabi)
has lacking libraries and features, I can't even find /usr/lib/pkgconfig
directory!
I'm comparing as usual with bitbake core-image-base -c populate_sdk

What am I doing wrong?
If anyone can help me I can give every details with buildhistory.

Thank you!

Federico

--089e011828e44265ba04f79c26df
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi everyone,<div><br></div><div>I have the following probl=
em: I&#39;ve made a very simple custom image:</div><div><br></div><div><br>=
</div><div><div>IMAGE_INSTALL +=3D &quot;\</div><div><span class=3D"" style=
=3D"white-space:pre">	</span>${CORE_IMAGE_BASE_INSTALL} \</div>
<div><span class=3D"" style=3D"white-space:pre">	</span>packagegroup-my-pac=
kages \</div><div>&quot;</div><div><br></div><div>LICENSE =3D &quot;MIT&quo=
t;</div><div><br></div><div>inherit core-image</div></div><div><br></div><d=
iv>
Where=C2=A0packagegroup-my-packages is as follows:</div><div><br></div><div=
><div><br></div><div>inherit packagegroup</div><div>RDEPENDS_${PN} =3D =C2=
=A0&quot; libxml2 pixman libsqlite3 sqlite3 libpng liboil libvorbis libogg =
&quot;<br>
</div></div><div><br></div><div>So, it&#39;s basically a core image with a =
set of libraries that I need for an application</div><div>that I&#39;m deve=
loping. I bitbaked the image and it&#39;s all ok, it works and with buildhi=
story</div>
<div>I can see the installed package list, it&#39;s all ok. I can compare i=
nstalled packages of my</div><div>image with installed packages of core-ima=
ge-base and I see all my added libraries.</div><div><br></div><div>But, if =
I try to populate and SDK to work with that image, i.e.</div>
<div><br></div><div>bitbake my-image -c populate_sdk</div><div><br></div><d=
iv>Something strange happens: my sdk rootfs (/opt/poky/1.5.1/sysroots/armv6=
-vfp-poky-linux-gnueabi)</div><div>has lacking libraries and features, I ca=
n&#39;t even find /usr/lib/pkgconfig directory!=C2=A0</div>
<div>I&#39;m comparing as usual with bitbake core-image-base -c populate_sd=
k</div><div><br></div><div>What am I doing wrong?</div><div>If anyone can h=
elp me I can give every details with buildhistory.<br></div><div><br></div>
<div>Thank you!</div><div><br></div><div>Federico</div><div><br></div></div=
>

--089e011828e44265ba04f79c26df--
