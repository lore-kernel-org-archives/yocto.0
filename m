Return-Path: <vidal.develone@gmail.com>
Received: from mail-qe0-f54.google.com (mail-qe0-f54.google.com
	[209.85.128.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BC581E00569
	for <yocto@yoctoproject.org>; Wed, 20 Nov 2013 08:53:20 -0800 (PST)
Received: by mail-qe0-f54.google.com with SMTP id 1so6312883qec.41
	for <yocto@yoctoproject.org>; Wed, 20 Nov 2013 08:53:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=DVAkDiBFwfU51zd2ayVTnNAdC2+4Z0nSxVsVb4KuM9s=;
	b=SqUxXG4Ujlx7ia49q2FGJo8Lp5qU8gNjuE2piz81xqi1KYdh9f6PQPJ4exhrimIJg1
	14xebbZSTQBLqBZLwHSwg/zg5TQFsSIp3ZcpgnnLIEj41a7fB2NsWZEWeYRJ/hfMu3YR
	W0q6r+QYQ7aD7O759IQ4ce6GP6h2t9xrbinpISqll3Vma8hmd9dLx7aGjZ6ea9ODn/eC
	CpRmjWrrW5uRefFqk4jCrH2BBGHIdmdhqAwfztE36Zr8ZAl+yUqn89juiIJMGvAhIGhp
	lW6AcwOOoLIHMZ2zInpFScJYuYHbF75IorNoJe48o5dDSlbFRZVsBkfretYJODUCWYU/
	da0g==
MIME-Version: 1.0
X-Received: by 10.224.98.200 with SMTP id r8mr3338464qan.26.1384966399292;
	Wed, 20 Nov 2013 08:53:19 -0800 (PST)
Received: by 10.140.37.81 with HTTP; Wed, 20 Nov 2013 08:53:19 -0800 (PST)
Date: Wed, 20 Nov 2013 09:53:19 -0700
Message-ID: <CANwz6nw8j8Qv7oGha2TT-YsSv36xFWM+hZoDmybLJWK_QDvwyA@mail.gmail.com>
From: Edward Vidal <vidal.develone@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: dbus-glib gdk-pixbuf and python-pygobject errors
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
X-List-Received-Date: Wed, 20 Nov 2013 16:53:22 -0000
Content-Type: multipart/alternative; boundary=089e01536b7c417b4b04eb9e9ec7

--089e01536b7c417b4b04eb9e9ec7
Content-Type: text/plain; charset=ISO-8859-1

Hello all,
My question is if the errors are in meta what does the priority of
meta-xilinx play in the build?
Also who should determine the priority of layers? The error would not
manifest until the custom-image was used.  The custum-image extended
core-image-sato-sdk with v4l-utils boost qt-mobility-x11 gsl gnuplot
gnuradio jasper lua5.1 fluidsynth liba52 x264 libmad vlc.

After using the dylan branch and adding meta-oe/meta-oe,
meta-oe/meta-multimedia, meta-xilinx, meta-xilinx/meta-kc705,
meta-xilinx/meta-zc702, and meta-xilinx/meta-zedboard I was getting the
following errors. After serveral attempts I lowered the priorty of
meta-xilinx from 8 to 4.  This appears to be the fix to my problem.

Summary: 3 tasks failed:
  virtual:native:/home/vidal/POKY/dylan_build/poky/meta/recipes-core/dbus/
dbus-glib_0.100.2.bb, do_compile

virtual:native:/home/vidal/POKY/dylan_build/poky/meta/recipes-gnome/gdk-pixbuf/
gdk-pixbuf_2.26.5.bb, do_compile

virtual:native:/home/vidal/POKY/dylan_build/poky/meta/recipes-devtools/python/
python-pygobject_2.27.91.bb, do_compile
Summary: There were 3 ERROR messages shown, returning a non-zero exit code.

layer                 path                                      priority
==========================================================================
meta                  /home/vidal/POKY/dylan_build/poky/meta    5
meta-yocto            /home/vidal/POKY/dylan_build/poky/meta-yocto  5
meta-oe               /home/vidal/POKY/dylan_build/poky/meta-oe/meta-oe  6
meta-multimedia
/home/vidal/POKY/dylan_build/poky/meta-oe/meta-multimedia  6
meta-xilinx
/home/vidal/POKY/dylan_build/poky/git@github.com:gnuradio/gnuradio.git
8
meta-kc705
/home/vidal/POKY/dylan_build/poky/meta-xilinx/meta-kc705  8
meta-zc702
/home/vidal/POKY/dylan_build/poky/meta-xilinx/meta-zc702  8
meta-zedboard
/home/vidal/POKY/dylan_build/poky/meta-xilinx/meta-zedboard  8
meta-yocto-bsp        /home/vidal/POKY/dylan_build/poky/meta-yocto-bsp  5
lowered the priorty of meta-xilinx from 8 to 4
layer                 path                                      priority
==========================================================================
meta                  /home/vidal/POKY/dylan_build/poky/meta    5
meta-yocto            /home/vidal/POKY/dylan_build/poky/meta-yocto  5
meta-oe               /home/vidal/POKY/dylan_build/poky/meta-oe/meta-oe  6
meta-multimedia
/home/vidal/POKY/dylan_build/poky/meta-oe/meta-multimedia  6
meta-xilinx           /home/vidal/POKY/dylan_build/poky/meta-xilinx  4
meta-kc705
/home/vidal/POKY/dylan_build/poky/meta-xilinx/meta-kc705  4
meta-zc702
/home/vidal/POKY/dylan_build/poky/meta-xilinx/meta-zc702  4
meta-zedboard
/home/vidal/POKY/dylan_build/poky/meta-xilinx/meta-zedboard  4
meta-yocto-bsp        /home/vidal/POKY/dylan_build/poky/meta-yocto-bsp  5

Any and all help is appreciated.

--089e01536b7c417b4b04eb9e9ec7
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello all,<br>My question is if the errors are in met=
a what does the priority of meta-xilinx play in the build?=A0 <br>Also who =
should determine the priority of layers? The error would not manifest until=
 the custom-image was used.=A0 The custum-image extended core-image-sato-sd=
k with v4l-utils boost qt-mobility-x11 gsl gnuplot gnuradio jasper lua5.1 f=
luidsynth liba52 x264 libmad vlc.<br>
<br>After using the dylan branch and adding meta-oe/meta-oe, meta-oe/meta-m=
ultimedia, meta-xilinx, meta-xilinx/meta-kc705, meta-xilinx/meta-zc702, and=
 meta-xilinx/meta-zedboard I was getting the following errors. After server=
al attempts I lowered the priorty of meta-xilinx from 8 to 4.=A0 This appea=
rs to be the fix to my problem.=A0 <br>
<br>Summary: 3 tasks failed:<br>=A0 virtual:native:/home/vidal/POKY/dylan_b=
uild/poky/meta/recipes-core/dbus/<a href=3D"http://dbus-glib_0.100.2.bb">db=
us-glib_0.100.2.bb</a>, do_compile<br>=A0 virtual:native:/home/vidal/POKY/d=
ylan_build/poky/meta/recipes-gnome/gdk-pixbuf/<a href=3D"http://gdk-pixbuf_=
2.26.5.bb">gdk-pixbuf_2.26.5.bb</a>, do_compile<br>
=A0 virtual:native:/home/vidal/POKY/dylan_build/poky/meta/recipes-devtools/=
python/<a href=3D"http://python-pygobject_2.27.91.bb">python-pygobject_2.27=
.91.bb</a>, do_compile<br>Summary: There were 3 ERROR messages shown, retur=
ning a non-zero exit code.<br>
<br>layer=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 path=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0 priority<br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>meta=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0 /home/vidal/POKY/dylan_build/poky/meta=A0=A0=A0 5<br>
meta-yocto=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 /home/vidal/POKY/dylan_build/po=
ky/meta-yocto=A0 5<br>meta-oe=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 /ho=
me/vidal/POKY/dylan_build/poky/meta-oe/meta-oe=A0 6<br>meta-multimedia=A0=
=A0=A0=A0=A0=A0 /home/vidal/POKY/dylan_build/poky/meta-oe/meta-multimedia=
=A0 6<br>
meta-xilinx=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 /home/vidal/POKY/dylan_build/poky=
/git@github.com:gnuradio/gnuradio.git=A0 8<br>meta-kc705=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0 /home/vidal/POKY/dylan_build/poky/meta-xilinx/meta-kc705=A0=
 8<br>meta-zc702=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 /home/vidal/POKY/dylan_bu=
ild/poky/meta-xilinx/meta-zc702=A0 8<br>
meta-zedboard=A0=A0=A0=A0=A0=A0=A0=A0 /home/vidal/POKY/dylan_build/poky/met=
a-xilinx/meta-zedboard=A0 8<br>meta-yocto-bsp=A0=A0=A0=A0=A0=A0=A0 /home/vi=
dal/POKY/dylan_build/poky/meta-yocto-bsp=A0 5<br>lowered the priorty of met=
a-xilinx from 8 to 4 <br>layer=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0 path=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 priority<br>
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br=
>meta=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 /home/vidal/POKY/d=
ylan_build/poky/meta=A0=A0=A0 5<br>meta-yocto=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0 /home/vidal/POKY/dylan_build/poky/meta-yocto=A0 5<br>meta-oe=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 /home/vidal/POKY/dylan_build/poky/meta-oe=
/meta-oe=A0 6<br>
meta-multimedia=A0=A0=A0=A0=A0=A0 /home/vidal/POKY/dylan_build/poky/meta-oe=
/meta-multimedia=A0 6<br>meta-xilinx=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 /home/vi=
dal/POKY/dylan_build/poky/meta-xilinx=A0 4<br>meta-kc705=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0 /home/vidal/POKY/dylan_build/poky/meta-xilinx/meta-kc705=A0=
 4<br>
meta-zc702=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 /home/vidal/POKY/dylan_build/po=
ky/meta-xilinx/meta-zc702=A0 4<br>meta-zedboard=A0=A0=A0=A0=A0=A0=A0=A0 /ho=
me/vidal/POKY/dylan_build/poky/meta-xilinx/meta-zedboard=A0 4<br>meta-yocto=
-bsp=A0=A0=A0=A0=A0=A0=A0 /home/vidal/POKY/dylan_build/poky/meta-yocto-bsp=
=A0 5<br>
</div><br>Any and all help is appreciated.<br><br></div>

--089e01536b7c417b4b04eb9e9ec7--
