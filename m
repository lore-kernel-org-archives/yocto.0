Return-Path: <vidal.develone@gmail.com>
Received: from mail-ee0-f42.google.com (mail-ee0-f42.google.com [74.125.83.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A04CFE01663
	for <yocto@yoctoproject.org>; Wed, 16 Oct 2013 14:57:59 -0700 (PDT)
Received: by mail-ee0-f42.google.com with SMTP id b45so671025eek.29
	for <yocto@yoctoproject.org>; Wed, 16 Oct 2013 14:57:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=qO/qdvTGith/hdcSgE3hZN3AmurDOl1eCczWS+0Nt+E=;
	b=ZPpaPKW9Ccx0M5/kYY77yOC8L87zjBED7hAcuTiaA7lzGDXlPrT0B9yf+E/0BBYS50
	QOou8W6HZvK8m1DpLZZiOyBkeM/2dw10XokuND3WvY7qSqqRfy/1WxBgIR07zpF78SwO
	KgN1yB3rc0jrw2MwxgKen7cOZUf5uziQI72Tt6JYlqYfnTMRmIZeG5d0R74x14ccDJg8
	W4NzV3dJBDwlqwK6tjPxs+SXoFnRz0s98Qj57hAv3t7BUwUmBnT9pIuZYD4HT9JD/sSn
	ti1IutINBdIfFuYkMQihJywMDmqCo9T4qfyFNnTYeuJA51d88NqF2dSkCyCQg+Tn00WX
	4y9g==
MIME-Version: 1.0
X-Received: by 10.14.89.7 with SMTP id b7mr8043581eef.10.1381960678671; Wed,
	16 Oct 2013 14:57:58 -0700 (PDT)
Received: by 10.223.97.70 with HTTP; Wed, 16 Oct 2013 14:57:58 -0700 (PDT)
Date: Wed, 16 Oct 2013 15:57:58 -0600
Message-ID: <CANwz6nz_dzPR9L2i39BXCSTHgWK+kLGs6ie-y806rBi-VMTcSw@mail.gmail.com>
From: Edward Vidal <vidal.develone@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: meta-xilinx
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
X-List-Received-Date: Wed, 16 Oct 2013 21:58:04 -0000
Content-Type: multipart/alternative; boundary=001a11c28634588a4904e8e2cb79

--001a11c28634588a4904e8e2cb79
Content-Type: text/plain; charset=ISO-8859-1

Hello,
I built a zedboard core-image-sato on 09/21/13 with meta-xilinx at that
time I had the following folders.

meta-kc705
meta-zc702
meta-zedboard

Build Configuration:
BB_VERSION        = "1.19.1"
BUILD_SYS         = "x86_64-linux"
NATIVELSBSTRING   = "Fedora-18"
TARGET_SYS        = "arm-poky-linux-gnueabi"
MACHINE           = "zedboard"
DISTRO            = "poky"
DISTRO_VERSION    = "1.4+snapshot-20130921"
TUNE_FEATURES     = " armv7a vfp neon zynq"
TARGET_FPU        = "vfp-neon"
meta
meta-yocto        = "(nobranch):3dee534f1e25109e0bdb681de0746c336f4b8840"
meta-xilinx
meta-kc705
meta-zc702
meta-zedboard     = "master:46f4c79d6d55b556a90bb0fd89c2c09acf2aebff"
meta-yocto-bsp    = "(nobranch):3dee534f1e25109e0bdb681de0746c336f4b8840"

With the dora release I did a new clone of git://
git.yoctoproject.org/meta-xilinx
now I do not see
meta-kc705
meta-zc702
meta-zedboard

When I execute MACHINE=zedboard bitbake core-image-sato
ERROR:  OE-core's config sanity checker detected a potential
misconfiguration.
    Either fix the cause of this error or at your own risk disable the
checker (see sanity.conf).
    Following is the list of potential problems / advisories:

    Please set a valid MACHINE in your local.conf or environment

ERROR: Execution of event handler 'check_sanity_eventhandler' failed
In my local.conf I have the following.

MACHINE ?= "zedboard"

bblayers.conf
# LAYER_CONF_VERSION is increased each time build/conf/bblayers.conf
# changes incompatibly
LCONF_VERSION = "6"

BBPATH = "${TOPDIR}"
BBFILES ?= ""

BBLAYERS ?= " \
  /home/vidal/POKY/build101613_zedboard/poky/meta \
  /home/vidal/POKY/build101613_zedboard/poky/meta-yocto \
  /home/vidal/POKY/build101613_zedboard/poky/meta-xilinx \
  /home/vidal/POKY/build101613_zedboard/poky/meta-yocto-bsp \
  "
BBLAYERS_NON_REMOVABLE ?= " \
  /home/vidal/POKY/build101613_zedboard/poky/meta \
  /home/vidal/POKY/build101613_zedboard/poky/meta-yocto \
  "
Any help will be appreciated.
Regards

--001a11c28634588a4904e8e2cb79
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div><div><div>Hello,<br></div>I built a ze=
dboard core-image-sato on 09/21/13 with meta-xilinx at that time I had the =
following folders.<br><br>meta-kc705<br>meta-zc702<br>meta-zedboard<br><br>
Build Configuration:<br>BB_VERSION=A0=A0=A0=A0=A0=A0=A0 =3D &quot;1.19.1&qu=
ot;<br>BUILD_SYS=A0=A0=A0=A0=A0=A0=A0=A0 =3D &quot;x86_64-linux&quot;<br>NA=
TIVELSBSTRING=A0=A0 =3D &quot;Fedora-18&quot;<br>TARGET_SYS=A0=A0=A0=A0=A0=
=A0=A0 =3D &quot;arm-poky-linux-gnueabi&quot;<br>MACHINE=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0 =3D &quot;zedboard&quot;<br>
DISTRO=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 =3D &quot;poky&quot;<br>DISTRO_VERS=
ION=A0=A0=A0 =3D &quot;1.4+snapshot-20130921&quot;<br>TUNE_FEATURES=A0=A0=
=A0=A0 =3D &quot; armv7a vfp neon zynq&quot;<br>TARGET_FPU=A0=A0=A0=A0=A0=
=A0=A0 =3D &quot;vfp-neon&quot;<br>meta=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0 <br>meta-yocto=A0=A0=A0=A0=A0=A0=A0 =3D &quot;(nobranch):3dee534f1e2510=
9e0bdb681de0746c336f4b8840&quot;<br>
meta-xilinx=A0=A0=A0=A0=A0=A0 <br>meta-kc705=A0=A0=A0=A0=A0=A0=A0 <br>meta-=
zc702=A0=A0=A0=A0=A0=A0=A0 <br>meta-zedboard=A0=A0=A0=A0 =3D &quot;master:4=
6f4c79d6d55b556a90bb0fd89c2c09acf2aebff&quot;<br>meta-yocto-bsp=A0=A0=A0 =
=3D &quot;(nobranch):3dee534f1e25109e0bdb681de0746c336f4b8840&quot;<br>
<br></div>With the dora release I did a new clone of git://<a href=3D"http:=
//git.yoctoproject.org/meta-xilinx">git.yoctoproject.org/meta-xilinx</a><br=
></div>now I do not see <br>meta-kc705<br>meta-zc702<br>meta-zedboard<br>
<br>When I execute MACHINE=3Dzedboard bitbake core-image-sato<br>ERROR:=A0 =
OE-core&#39;s config sanity checker detected a potential misconfiguration.<=
br>=A0=A0=A0 Either fix the cause of this error or at your own risk disable=
 the checker (see sanity.conf).<br>
=A0=A0=A0 Following is the list of potential problems / advisories:<br><br>=
=A0=A0=A0 Please set a valid MACHINE in your local.conf or environment<br><=
br>ERROR: Execution of event handler &#39;check_sanity_eventhandler&#39; fa=
iled<br>
In my local.conf I have the following.<br><br>MACHINE ?=3D &quot;zedboard&q=
uot;<br><br></div>bblayers.conf<br># LAYER_CONF_VERSION is increased each t=
ime build/conf/bblayers.conf<br># changes incompatibly<br>LCONF_VERSION =3D=
 &quot;6&quot;<br>
<br>BBPATH =3D &quot;${TOPDIR}&quot;<br>BBFILES ?=3D &quot;&quot;<br><br>BB=
LAYERS ?=3D &quot; \<br>=A0 /home/vidal/POKY/build101613_zedboard/poky/meta=
 \<br>=A0 /home/vidal/POKY/build101613_zedboard/poky/meta-yocto \<br>=A0 /h=
ome/vidal/POKY/build101613_zedboard/poky/meta-xilinx \<br>
=A0 /home/vidal/POKY/build101613_zedboard/poky/meta-yocto-bsp \<br>=A0 &quo=
t;<br>BBLAYERS_NON_REMOVABLE ?=3D &quot; \<br>=A0 /home/vidal/POKY/build101=
613_zedboard/poky/meta \<br>=A0 /home/vidal/POKY/build101613_zedboard/poky/=
meta-yocto \<br>
=A0 &quot;<br></div>Any help will be appreciated.<br></div>Regards<br><br><=
/div>

--001a11c28634588a4904e8e2cb79--
