Return-Path: <vidal.develone@gmail.com>
Received: from mail-ea0-f181.google.com (mail-ea0-f181.google.com
	[209.85.215.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C2B7DE0140D
	for <yocto@yoctoproject.org>; Fri,  7 Jun 2013 07:30:14 -0700 (PDT)
Received: by mail-ea0-f181.google.com with SMTP id a15so1179729eae.12
	for <yocto@yoctoproject.org>; Fri, 07 Jun 2013 07:30:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=QtZSvjP84xy951FJ5cNmuFvzF+o3st5pNJX2MaMMpgI=;
	b=rb9OZT+RxTK43HgjRVW6GeAmzzALdrGOpckEyBd3P4YmIbvnMR9wB/a55LxLeJtWHZ
	V58dkhspsAOLbQC0LF8BcF8NDnm8WeymH74eEh8CY2kvQVah6O4KaPsSSyXpoZ1plapY
	bWHHGCXrxM87ZOGmgqdR4Nn/rPtlD+ITK8t4KwLgLW28/5D+kyvjJfPKgsgtOvy4baEr
	3jfVJIh8yQ6WKgyeMZZed8Um22twZZ5N/j/X9xNyz8gDBOYaX7qWQn1h0a5+nRklIuo5
	v9s+/YvN7NbHziSDf7BwetRkA9PIIx0+/QFUF8kySwcwgUgVa4AKZ/2XxGXSLomuFFI0
	GqpQ==
MIME-Version: 1.0
X-Received: by 10.14.99.198 with SMTP id x46mr38377427eef.38.1370615413704;
	Fri, 07 Jun 2013 07:30:13 -0700 (PDT)
Received: by 10.223.165.200 with HTTP; Fri, 7 Jun 2013 07:30:13 -0700 (PDT)
Date: Fri, 7 Jun 2013 08:30:13 -0600
Message-ID: <CANwz6nzLWHK7G0nOFaeg2EOMOYvDpssFxXwLWJbfGJ-RHNv-Jg@mail.gmail.com>
From: Edward Vidal <vidal.develone@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: gnuradio on beagleboard beagleone & pandaboard
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
X-List-Received-Date: Fri, 07 Jun 2013 14:30:15 -0000
Content-Type: multipart/alternative; boundary=001a11c392c6dbb1ef04de914452

--001a11c392c6dbb1ef04de914452
Content-Type: text/plain; charset=ISO-8859-1

Hello all,
I built a core-image-sato with boost-1.53.0, qt-mobility-x11-1.2.0,
gsl-1.15, gnuplot-4.6.3, and gnuradio-3.6.4.1. This had the
EXTRA_IMAGE_FEATURES = "debug-tweaks tools-sdk dev-pkgs dbg-pkgs" set
for tools-sdk dev-pkgs dbg-pkgs in the local.conf.
This required adding meta-oe for the beagleboard and meta-oe & meta-ti
for the beaglebone & pandaboard.
The disk space increased from 10% to 64% which I believe is due to
adding dbg-pkgs. On these systems and I noticed that the when logging
in they all came up in / not at /home/root.  I checked /etc/passwd
root:x:0:0:root:/home/root:/bin/sh.  This just occurred after a new
git clone of all meta-data.  Where do you find what caused these
difference in builds?
The build information for the beagleboard is below:
MACHINE=beagleboard bitbake core-image-sato-sdk-ex
boost qt-mobility-x11 gsl gnuplot gnuradio
378 additional pkgs for dbg-pkgs & gnuradio
beagleboard_pkglist060613 1964  RPMs beagleboard_pkglist060613 2342 RPMs
Filesystem     1K-blocks    Used Available Use% Mounted on
/dev/root        7467728 4496112   2592276  64% /
devtmpfs          245656       4    245652   1% /dev
tmpfs                 40       0        40   0% /mnt/.psplash
tmpfs             245844     212    245632   1% /var/volatile
tmpfs             245844       0    245844   0% /media/ram
/dev/mmcblk0p1     51082    4524     46558   9% /media/mmcblk0p1
Linux beagleboard 3.4.36-yocto-standard #1 Thu Jun 6 06:21:51 MDT 2013
armv7l GNU/Linux
Build Configuration:
BB_VERSION        = "1.18.0"
BUILD_SYS         = "x86_64-linux"
NATIVELSBSTRING   = "Fedora-18"
TARGET_SYS        = "arm-poky-linux-gnueabi"
MACHINE           = "beagleboard"
DISTRO            = "poky"
DISTRO_VERSION    = "1.4.1"
TUNE_FEATURES     = "armv7a vfp neon"
TARGET_FPU        = "vfp-neon"
meta
meta-yocto        = "dylan:b0a5694e3ef1980004a46522780d129bad110eac"
meta-oe           = "master:17ace92714bccf64d0d9fcefaabe3067f59fdf0a"
meta-yocto-bsp    = "dylan:b0a5694e3ef1980004a46522780d129bad110eac"
When I execute "gnuradio-companion" I get the following:
** (process:898): WARNING **: Trying to register gtype
'GMountMountFlags' as enum when in fact it is of type 'GFlags'

** (process:898): WARNING **: Trying to register gtype
'GDriveStartFlags' as enum when in fact it is of type 'GFlags'

** (process:898): WARNING **: Trying to register gtype
'GSocketMsgFlags' as enum when in fact it is of type 'GFlags'
Traceback (most recent call last):
  File "/usr/bin/gnuradio-companion", line 67, in <module>
    from gnuradio.grc.python.Platform import Platform
  File "/usr/lib/python2.7/site-packages/gnuradio/grc/python/Platform.py",
line 22, in <module>
    from .. base.Platform import Platform as _Platform
  File "/usr/lib/python2.7/site-packages/gnuradio/grc/base/Platform.py",
line 26, in <module>
    from Block import Block as _Block
  File "/usr/lib/python2.7/site-packages/gnuradio/grc/base/Block.py",
line 23, in <module>
    from Cheetah.Template import Template
  File "/usr/lib/python2.7/site-packages/Cheetah/Template.py", line
21, in <module>

All help will be appreciated.

Thanks Ed Vidal If I provide please let me know.

--001a11c392c6dbb1ef04de914452
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><pre>Hello all, <br>I built a core-image-sato with boost-1=
.53.0, qt-mobility-x11-1.2.0, gsl-1.15, gnuplot-4.6.3, and gnuradio-3.6.4.1=
. This had the EXTRA_IMAGE_FEATURES =3D &quot;debug-tweaks tools-sdk dev-pk=
gs dbg-pkgs&quot; set for tools-sdk dev-pkgs dbg-pkgs in the local.conf.<br=
>
This required adding meta-oe for the beagleboard and meta-oe &amp; meta-ti =
for the beaglebone &amp; pandaboard.<br>The disk space increased from 10% t=
o 64% which I believe is due to adding dbg-pkgs. On these systems and I not=
iced that the when logging<br>
in they all came up in / not at /home/root.  I checked /etc/passwd<br>root:=
x:0:0:root:/home/root:/bin/sh.  This just occurred after a new git clone of=
 all meta-data.  Where do you find what caused these difference in builds?<=
br>
The build information for the beagleboard is below:<br>MACHINE=3Dbeagleboar=
d bitbake core-image-sato-sdk-ex<br>boost qt-mobility-x11 gsl gnuplot gnura=
dio<br>378 additional pkgs for dbg-pkgs &amp; gnuradio<br>beagleboard_pkgli=
st060613 1964  RPMs beagleboard_pkglist060613 2342 RPMs<br>
Filesystem     1K-blocks    Used Available Use% Mounted on<br>/dev/root    =
    7467728 4496112   2592276  64% /<br>devtmpfs          245656       4   =
 245652   1% /dev<br>tmpfs                 40       0        40   0% /mnt/.=
psplash<br>
tmpfs             245844     212    245632   1% /var/volatile<br>tmpfs     =
        245844       0    245844   0% /media/ram<br>/dev/mmcblk0p1     5108=
2    4524     46558   9% /media/mmcblk0p1<br>Linux beagleboard 3.4.36-yocto=
-standard #1 Thu Jun 6 06:21:51 MDT 2013 armv7l GNU/Linux<br>
Build Configuration:<br>BB_VERSION        =3D &quot;1.18.0&quot;<br>BUILD_S=
YS         =3D &quot;x86_64-linux&quot;<br>NATIVELSBSTRING   =3D &quot;Fedo=
ra-18&quot;<br>TARGET_SYS        =3D &quot;arm-poky-linux-gnueabi&quot;<br>=
MACHINE           =3D &quot;beagleboard&quot;<br>
DISTRO            =3D &quot;poky&quot;<br>DISTRO_VERSION    =3D &quot;1.4.1=
&quot;<br>TUNE_FEATURES     =3D &quot;armv7a vfp neon&quot;<br>TARGET_FPU  =
      =3D &quot;vfp-neon&quot;<br>meta              <br>meta-yocto        =
=3D &quot;dylan:b0a5694e3ef1980004a46522780d129bad110eac&quot;<br>
meta-oe           =3D &quot;master:17ace92714bccf64d0d9fcefaabe3067f59fdf0a=
&quot;<br>meta-yocto-bsp    =3D &quot;dylan:b0a5694e3ef1980004a46522780d129=
bad110eac&quot;<br>When I execute &quot;gnuradio-companion&quot; I get the =
following:<br>
** (process:898): WARNING **: Trying to register gtype &#39;GMountMountFlag=
s&#39; as enum when in fact it is of type &#39;GFlags&#39;<br><br>** (proce=
ss:898): WARNING **: Trying to register gtype &#39;GDriveStartFlags&#39; as=
 enum when in fact it is of type &#39;GFlags&#39;<br>
<br>** (process:898): WARNING **: Trying to register gtype &#39;GSocketMsgF=
lags&#39; as enum when in fact it is of type &#39;GFlags&#39;<br>Traceback =
(most recent call last):<br>  File &quot;/usr/bin/gnuradio-companion&quot;,=
 line 67, in &lt;module&gt;<br>
    from gnuradio.grc.python.Platform import Platform<br>  File &quot;/usr/=
lib/python2.7/site-packages/gnuradio/grc/python/Platform.py&quot;, line 22,=
 in &lt;module&gt;<br>    from .. base.Platform import Platform as _Platfor=
m<br>
  File &quot;/usr/lib/python2.7/site-packages/gnuradio/grc/base/Platform.py=
&quot;, line 26, in &lt;module&gt;<br>    from Block import Block as _Block=
<br>  File &quot;/usr/lib/python2.7/site-packages/gnuradio/grc/base/Block.p=
y&quot;, line 23, in &lt;module&gt;<br>
    from Cheetah.Template import Template<br>  File &quot;/usr/lib/python2.=
7/site-packages/Cheetah/Template.py&quot;, line 21, in &lt;module&gt;<br></=
pre><pre>All help will be appreciated.<br></pre><pre>Thanks Ed Vidal If I p=
rovide please let me know.<br>
</pre></div>

--001a11c392c6dbb1ef04de914452--
