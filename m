Return-Path: <fede.vitali@gmail.com>
Received: from mail-oa0-f47.google.com (mail-oa0-f47.google.com
	[209.85.219.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E48FAE00A57
	for <yocto@yoctoproject.org>; Thu, 13 Mar 2014 02:10:19 -0700 (PDT)
Received: by mail-oa0-f47.google.com with SMTP id i11so736682oag.34
	for <yocto@yoctoproject.org>; Thu, 13 Mar 2014 02:10:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=CMQ2hbT7sHHajye4084usj1iqIm4xAiX630XyY8fMXw=;
	b=jZKPVudczqG8jzn22lVfdYeF+imKLzo0QSzoCIckAKoDcd6b7atGrkndPh/S0AlvYC
	zuVPisXksR0HWUVU4Ua/6jk48unaUHQeRoRtmQWuaONSsrX9wjmkN+YSnppn03Fnz6ZC
	aFN/wND7HSmMKsrm1in8BvxUV3Pmr/BI8k/vHIEzJV9ipDE7YQziVlRZ87P31oBuc1ot
	TPqRnYxwouS52140IyGWjwylkU5S943hBSp1DZRt656ECNieFSVAZIkJGewHiVotBY0K
	lt6IAv5DYP4t/C3Z6uJepxufnUPDSUj3KWJDqfnfamFABa2u7RBStCr31BKSM65oKGrw
	rUKg==
MIME-Version: 1.0
X-Received: by 10.182.43.161 with SMTP id x1mr617997obl.5.1394701818294; Thu,
	13 Mar 2014 02:10:18 -0700 (PDT)
Received: by 10.76.101.11 with HTTP; Thu, 13 Mar 2014 02:10:18 -0700 (PDT)
Date: Thu, 13 Mar 2014 10:10:18 +0100
Message-ID: <CAD78y+4vpyQ5=rxV3148o3ZqvKiySaY=yXj=xkS2CEpR3D5O8g@mail.gmail.com>
From: Federico Vitali <fede.vitali@gmail.com>
To: yocto@yoctoproject.org
Subject: libtool problem while crosscompiling
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
X-List-Received-Date: Thu, 13 Mar 2014 09:10:20 -0000
Content-Type: multipart/alternative; boundary=001a11c30ce272789004f47952af

--001a11c30ce272789004f47952af
Content-Type: text/plain; charset=ISO-8859-1

Hi,

I'm working with a imx6qsabrelite board and a sato SDK filesystem.
I've built a complete SDK with bitbake -c populate_sdk and installed it.
I have to modify the gstreamer gst-plugins-base libraries. I've sourced
the environment, untarred the original gst-plugins-base-0.10.36.tar.gz,
applied yocto / fsl patches and configured the package using the same
configuration options used by yocto / bitbake build system. I have the
following problem:

# make all

[...]

make[4]: Entering directory
`/home/vitalife/git/gst-plugins-base_yam/gst-plugins-base/gst-libs/gst/interfaces'
  GEN      interfaces-marshal.c
  GEN      interfaces-enumtypes.c
  GEN      interfaces-marshal.h
  GEN      interfaces-enumtypes.h
make  all-am
make[5]: Entering directory
`/home/vitalife/git/gst-plugins-base_yam/gst-plugins-base/gst-libs/gst/interfaces'
  CC       libgstinterfaces_0.10_la-colorbalance.lo
  CC       libgstinterfaces_0.10_la-colorbalancechannel.lo
  CC       libgstinterfaces_0.10_la-mixer.lo
  CC       libgstinterfaces_0.10_la-mixeroptions.lo
  CC       libgstinterfaces_0.10_la-mixertrack.lo
  CC       libgstinterfaces_0.10_la-navigation.lo
  CC       libgstinterfaces_0.10_la-propertyprobe.lo
  CC       libgstinterfaces_0.10_la-streamvolume.lo
  CC       libgstinterfaces_0.10_la-tuner.lo
  CC       libgstinterfaces_0.10_la-tunernorm.lo
  CC       libgstinterfaces_0.10_la-tunerchannel.lo
  CC       libgstinterfaces_0.10_la-videoorientation.lo
  CC       libgstinterfaces_0.10_la-xoverlay.lo
  CC       libgstinterfaces_0.10_la-interfaces-marshal.lo
  CC       libgstinterfaces_0.10_la-interfaces-enumtypes.lo
  CCLD     libgstinterfaces-0.10.la
libtool: link: warning: library
`/opt/poky/1.5.1/sysroots/cortexa9hf-vfp-neon-poky-linux-gnueabi/usr/lib/
libgstreamer-0.10.la' was moved.
libtool: link: warning: library
`/opt/poky/1.5.1/sysroots/cortexa9hf-vfp-neon-poky-linux-gnueabi/usr/lib/
libgobject-2.0.la' was moved.
libtool: link: warning: library
`/opt/poky/1.5.1/sysroots/cortexa9hf-vfp-neon-poky-linux-gnueabi/usr/lib/
libgmodule-2.0.la' was moved.
libtool: link: warning: library
`/opt/poky/1.5.1/sysroots/cortexa9hf-vfp-neon-poky-linux-gnueabi/usr/lib/
libgthread-2.0.la' was moved.
libtool: link: warning: library
`/opt/poky/1.5.1/sysroots/cortexa9hf-vfp-neon-poky-linux-gnueabi/usr/lib/
libglib-2.0.la' was moved.
libtool: link: warning: library
`/opt/poky/1.5.1/sysroots/cortexa9hf-vfp-neon-poky-linux-gnueabi/usr/lib/
libxml2.la' was moved.
sed: can't read /usr/lib/libgobject-2.0.la: No such file or directory
libtool: link: `=/usr/lib/libgobject-2.0.la' is not a valid libtool archive
make[5]: *** [libgstinterfaces-0.10.la] Error 1
make[5]: Leaving directory
`/home/vitalife/git/gst-plugins-base_yam/gst-plugins-base/gst-libs/gst/interfaces'
make[4]: *** [all] Error 2
make[4]: Leaving directory
`/home/vitalife/git/gst-plugins-base_yam/gst-plugins-base/gst-libs/gst/interfaces'
make[3]: *** [interfaces] Error 2
make[3]: Leaving directory
`/home/vitalife/git/gst-plugins-base_yam/gst-plugins-base/gst-libs/gst'
make[2]: *** [all-recursive] Error 1
make[2]: Leaving directory
`/home/vitalife/git/gst-plugins-base_yam/gst-plugins-base/gst-libs'
make[1]: *** [all-recursive] Error 1
make[1]: Leaving directory
`/home/vitalife/git/gst-plugins-base_yam/gst-plugins-base'
make: *** [all] Error 2

I seems that while crosscompiling the build system is accessing the
building machine filesystem /usr/lib instead of
the cross SDK filesystem.

Can anyone help me?

Thank you in advance

Federico

--001a11c30ce272789004f47952af
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>I&#39;m working with a=A0imx6qsabre=
lite board and a sato SDK filesystem.</div><div>I&#39;ve built a complete S=
DK with bitbake -c populate_sdk and installed it.</div><div>I have to modif=
y the gstreamer gst-plugins-base libraries. I&#39;ve sourced</div>
<div>the environment, untarred the original=A0gst-plugins-base-0.10.36.tar.=
gz,</div><div>applied yocto / fsl patches and configured the package using =
the same</div><div>configuration options used by yocto / bitbake build syst=
em. I have the</div>
<div>following problem:</div><div><br></div><div># make all</div><div><br><=
/div><div>[...]</div><div><br></div><div><div>make[4]: Entering directory `=
/home/vitalife/git/gst-plugins-base_yam/gst-plugins-base/gst-libs/gst/inter=
faces&#39;</div>
<div>=A0 GEN =A0 =A0 =A0interfaces-marshal.c</div><div>=A0 GEN =A0 =A0 =A0i=
nterfaces-enumtypes.c</div><div>=A0 GEN =A0 =A0 =A0interfaces-marshal.h</di=
v><div>=A0 GEN =A0 =A0 =A0interfaces-enumtypes.h</div><div>make =A0all-am</=
div><div>make[5]: Entering directory `/home/vitalife/git/gst-plugins-base_y=
am/gst-plugins-base/gst-libs/gst/interfaces&#39;</div>
<div>=A0 CC =A0 =A0 =A0 libgstinterfaces_0.10_la-colorbalance.lo</div><div>=
=A0 CC =A0 =A0 =A0 libgstinterfaces_0.10_la-colorbalancechannel.lo</div><di=
v>=A0 CC =A0 =A0 =A0 libgstinterfaces_0.10_la-mixer.lo</div><div>=A0 CC =A0=
 =A0 =A0 libgstinterfaces_0.10_la-mixeroptions.lo</div>
<div>=A0 CC =A0 =A0 =A0 libgstinterfaces_0.10_la-mixertrack.lo</div><div>=
=A0 CC =A0 =A0 =A0 libgstinterfaces_0.10_la-navigation.lo</div><div>=A0 CC =
=A0 =A0 =A0 libgstinterfaces_0.10_la-propertyprobe.lo</div><div>=A0 CC =A0 =
=A0 =A0 libgstinterfaces_0.10_la-streamvolume.lo</div>
<div>=A0 CC =A0 =A0 =A0 libgstinterfaces_0.10_la-tuner.lo</div><div>=A0 CC =
=A0 =A0 =A0 libgstinterfaces_0.10_la-tunernorm.lo</div><div>=A0 CC =A0 =A0 =
=A0 libgstinterfaces_0.10_la-tunerchannel.lo</div><div>=A0 CC =A0 =A0 =A0 l=
ibgstinterfaces_0.10_la-videoorientation.lo</div>
<div>=A0 CC =A0 =A0 =A0 libgstinterfaces_0.10_la-xoverlay.lo</div><div>=A0 =
CC =A0 =A0 =A0 libgstinterfaces_0.10_la-interfaces-marshal.lo</div><div>=A0=
 CC =A0 =A0 =A0 libgstinterfaces_0.10_la-interfaces-enumtypes.lo</div><div>=
=A0 CCLD =A0 =A0 <a href=3D"http://libgstinterfaces-0.10.la">libgstinterfac=
es-0.10.la</a></div>
<div>libtool: link: warning: library `/opt/poky/1.5.1/sysroots/cortexa9hf-v=
fp-neon-poky-linux-gnueabi/usr/lib/<a href=3D"http://libgstreamer-0.10.la">=
libgstreamer-0.10.la</a>&#39; was moved.</div><div>libtool: link: warning: =
library `/opt/poky/1.5.1/sysroots/cortexa9hf-vfp-neon-poky-linux-gnueabi/us=
r/lib/<a href=3D"http://libgobject-2.0.la">libgobject-2.0.la</a>&#39; was m=
oved.</div>
<div>libtool: link: warning: library `/opt/poky/1.5.1/sysroots/cortexa9hf-v=
fp-neon-poky-linux-gnueabi/usr/lib/<a href=3D"http://libgmodule-2.0.la">lib=
gmodule-2.0.la</a>&#39; was moved.</div><div>libtool: link: warning: librar=
y `/opt/poky/1.5.1/sysroots/cortexa9hf-vfp-neon-poky-linux-gnueabi/usr/lib/=
<a href=3D"http://libgthread-2.0.la">libgthread-2.0.la</a>&#39; was moved.<=
/div>
<div>libtool: link: warning: library `/opt/poky/1.5.1/sysroots/cortexa9hf-v=
fp-neon-poky-linux-gnueabi/usr/lib/<a href=3D"http://libglib-2.0.la">libgli=
b-2.0.la</a>&#39; was moved.</div><div>libtool: link: warning: library `/op=
t/poky/1.5.1/sysroots/cortexa9hf-vfp-neon-poky-linux-gnueabi/usr/lib/<a hre=
f=3D"http://libxml2.la">libxml2.la</a>&#39; was moved.</div>
<div>sed: can&#39;t read /usr/lib/<a href=3D"http://libgobject-2.0.la">libg=
object-2.0.la</a>: No such file or directory</div><div>libtool: link: `=3D/=
usr/lib/<a href=3D"http://libgobject-2.0.la">libgobject-2.0.la</a>&#39; is =
not a valid libtool archive</div>
<div>make[5]: *** [<a href=3D"http://libgstinterfaces-0.10.la">libgstinterf=
aces-0.10.la</a>] Error 1</div><div>make[5]: Leaving directory `/home/vital=
ife/git/gst-plugins-base_yam/gst-plugins-base/gst-libs/gst/interfaces&#39;<=
/div>
<div>make[4]: *** [all] Error 2</div><div>make[4]: Leaving directory `/home=
/vitalife/git/gst-plugins-base_yam/gst-plugins-base/gst-libs/gst/interfaces=
&#39;</div><div>make[3]: *** [interfaces] Error 2</div><div>make[3]: Leavin=
g directory `/home/vitalife/git/gst-plugins-base_yam/gst-plugins-base/gst-l=
ibs/gst&#39;</div>
<div>make[2]: *** [all-recursive] Error 1</div><div>make[2]: Leaving direct=
ory `/home/vitalife/git/gst-plugins-base_yam/gst-plugins-base/gst-libs&#39;=
</div><div>make[1]: *** [all-recursive] Error 1</div><div>make[1]: Leaving =
directory `/home/vitalife/git/gst-plugins-base_yam/gst-plugins-base&#39;</d=
iv>
<div>make: *** [all] Error 2</div></div><div><br></div><div>I seems that wh=
ile crosscompiling the build system is accessing the building machine files=
ystem /usr/lib instead of</div><div>the cross SDK filesystem.=A0</div><div>
<br></div><div>Can anyone help me?</div><div><br></div><div>Thank you in ad=
vance</div><div><br></div><div>Federico</div></div>

--001a11c30ce272789004f47952af--
