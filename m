Return-Path: <vidal.develone@gmail.com>
Received: from mail-qe0-f51.google.com (mail-qe0-f51.google.com
	[209.85.128.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B4399E007A8
	for <yocto@yoctoproject.org>; Sun,  8 Dec 2013 10:52:19 -0800 (PST)
Received: by mail-qe0-f51.google.com with SMTP id 1so2120336qee.24
	for <yocto@yoctoproject.org>; Sun, 08 Dec 2013 10:52:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=SGpmjhw1qToRjmFQxhEuFef5ZMU4Pih2ZAEFCUIFmAc=;
	b=Y1omOxDw+EAwtzcyDRDVeP7DChxLaRmIlABk1r9tdPOD2KNOLbJKOZDf6p/p/FQqFJ
	h7DpL2mbnYDbC9zCdKciEZi/2nREcU9WMSa6GoAA6yxH9Ho+8Gaa00RKyDNykz6cOUS2
	XR+GzQ0p5ivobrYwysntH8DKJTjnRTa5m0J2tRjQwLALDF4eOfNkZeZ909tl0semdXVu
	9s2Nno8WzD8Vu7k7S/mw5SGMZSC02HJnVSEG+r6uFl33gdGZvZgjhXL5vV0Zm5l57lsa
	lr0lYDKhX5hBSDnf7Vq3VnhncL4IkFrZy2yuU4sA5tE6e9uW7ZBwMKgiqKo8HgGpl9g4
	ZO7g==
MIME-Version: 1.0
X-Received: by 10.49.116.5 with SMTP id js5mr27370074qeb.36.1386528738772;
	Sun, 08 Dec 2013 10:52:18 -0800 (PST)
Received: by 10.140.37.49 with HTTP; Sun, 8 Dec 2013 10:52:18 -0800 (PST)
Date: Sun, 8 Dec 2013 11:52:18 -0700
Message-ID: <CANwz6nwekJf0b7Z1D7imWof5+wL9baKR8K=Fk+6F-JDCUO857A@mail.gmail.com>
From: Edward Vidal <vidal.develone@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: firefox
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
X-List-Received-Date: Sun, 08 Dec 2013 18:52:21 -0000
Content-Type: multipart/alternative; boundary=047d7b677d60f20b0204ed0a605a

--047d7b677d60f20b0204ed0a605a
Content-Type: text/plain; charset=ISO-8859-1

Hello,
I am trying to add firefox to my build
cd meta-browser
git checkout -b dylan origin/dylan
Below is my bblayers.conf where I added meta-browser

# LAYER_CONF_VERSION is increased each time build/conf/bblayers.conf
# changes incompatibly
LCONF_VERSION = "6"

BBPATH = "${TOPDIR}"
BBFILES ?= ""

BBLAYERS ?= " \
  /home/vidal/POKY/dylan_build/poky/meta \
  /home/vidal/POKY/dylan_build/poky/meta-yocto \
  /home/vidal/POKY/dylan_build/poky/meta-browser \
  /home/vidal/POKY/dylan_build/poky/meta-oe/meta-oe \
  /home/vidal/POKY/dylan_build/poky/meta-oe/meta-multimedia \
  /home/vidal/POKY/dylan_build/poky/meta-xilinx \
  /home/vidal/POKY/dylan_build/poky/meta-xilinx/meta-kc705 \
  /home/vidal/POKY/dylan_build/poky/meta-xilinx/meta-zc702 \
  /home/vidal/POKY/dylan_build/poky/meta-xilinx/meta-zedboard \
  /home/vidal/POKY/dylan_build/poky/meta-yocto-bsp \
  "
BBLAYERS_NON_REMOVABLE ?= " \
  /home/vidal/POKY/dylan_build/poky/meta \
  /home/vidal/POKY/dylan_build/poky/meta-yocto \
  "

 MACHINE=zedboard bitbake firefox
Loading cache: 100% |###########################################| ETA:
00:00:00
Loaded 1717 entries from dependency cache.
Parsing recipes: 100% |#########################################| Time:
00:00:01
Parsing of 1348 .bb files complete (1253 cached, 95 parsed). 1716 targets,
50 skipped, 0 masked, 0 errors.
ERROR: No recipes available for:

/home/vidal/POKY/dylan_build/poky/meta-browser/recipes-gnome/gnome-settings-daemon/gnome-settings-daemon_2.32.1.bbappend
ERROR: Command execution failed: Exited with 1

Summary: There were 2 ERROR messages shown, returning a non-zero exit code.
[vidal@ws009 build]$ less
../meta-browser/recipes-gnome/gnome-settings-daemon/gnome-settings-daemon_2.32.1.bbappend

[vidal@ws009 build]$ cat
../meta-browser/recipes-gnome/gnome-settings-daemon/gnome-settings-daemon_2.32.1.bbappend

DEPENDS += "nss"

CFLAGS += "-I${STAGING_INCDIR}/mozilla/nss"

I have a gnome-settings-daemon_2.32.1.bbappend file what would be causing
the error.
Any and all help will be appreciated.
Thanks

--047d7b677d60f20b0204ed0a605a
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div>Hello,<br></div>I am trying to add firefox =
to my build<br>cd meta-browser<br>git checkout -b dylan origin/dylan<br>Bel=
ow is my bblayers.conf where I added meta-browser<br><br># LAYER_CONF_VERSI=
ON is increased each time build/conf/bblayers.conf<br>
# changes incompatibly<br>LCONF_VERSION =3D &quot;6&quot;<br><br>BBPATH =3D=
 &quot;${TOPDIR}&quot;<br>BBFILES ?=3D &quot;&quot;<br><br>BBLAYERS ?=3D &q=
uot; \<br>=A0 /home/vidal/POKY/dylan_build/poky/meta \<br>=A0 /home/vidal/P=
OKY/dylan_build/poky/meta-yocto \<br>
=A0 /home/vidal/POKY/dylan_build/poky/meta-browser \<br>=A0 /home/vidal/POK=
Y/dylan_build/poky/meta-oe/meta-oe \<br>=A0 /home/vidal/POKY/dylan_build/po=
ky/meta-oe/meta-multimedia \<br>=A0 /home/vidal/POKY/dylan_build/poky/meta-=
xilinx \<br>
=A0 /home/vidal/POKY/dylan_build/poky/meta-xilinx/meta-kc705 \<br>=A0 /home=
/vidal/POKY/dylan_build/poky/meta-xilinx/meta-zc702 \<br>=A0 /home/vidal/PO=
KY/dylan_build/poky/meta-xilinx/meta-zedboard \<br>=A0 /home/vidal/POKY/dyl=
an_build/poky/meta-yocto-bsp \<br>
=A0 &quot;<br>BBLAYERS_NON_REMOVABLE ?=3D &quot; \<br>=A0 /home/vidal/POKY/=
dylan_build/poky/meta \<br>=A0 /home/vidal/POKY/dylan_build/poky/meta-yocto=
 \<br>=A0 &quot;<br><br>=A0MACHINE=3Dzedboard bitbake firefox<br>Loading ca=
che: 100% |###########################################| ETA:=A0 00:00:00<br=
>
Loaded 1717 entries from dependency cache.<br>Parsing recipes: 100% |######=
###################################| Time: 00:00:01<br>Parsing of 1348 .bb =
files complete (1253 cached, 95 parsed). 1716 targets, 50 skipped, 0 masked=
, 0 errors.<br>
ERROR: No recipes available for:<br>=A0 /home/vidal/POKY/dylan_build/poky/m=
eta-browser/recipes-gnome/gnome-settings-daemon/gnome-settings-daemon_2.32.=
1.bbappend<br>ERROR: Command execution failed: Exited with 1<br><br>Summary=
: There were 2 ERROR messages shown, returning a non-zero exit code.<br>
[vidal@ws009 build]$ less ../meta-browser/recipes-gnome/gnome-settings-daem=
on/gnome-settings-daemon_2.32.1.bbappend <br>[vidal@ws009 build]$ cat ../me=
ta-browser/recipes-gnome/gnome-settings-daemon/gnome-settings-daemon_2.32.1=
.bbappend <br>
DEPENDS +=3D &quot;nss&quot;<br><br>CFLAGS +=3D &quot;-I${STAGING_INCDIR}/m=
ozilla/nss&quot;<br><br></div>I have a gnome-settings-daemon_2.32.1.bbappen=
d file what would be causing the error.<br></div>Any and all help will be a=
ppreciated. <br>
Thanks <br><div><div><br></div></div></div>

--047d7b677d60f20b0204ed0a605a--
