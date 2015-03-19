Return-Path: <eien.ni.sakebe@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 224AFE008CE; Thu, 19 Mar 2015 04:36:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (eien.ni.sakebe[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.182 listed in list.dnswl.org]
Received: from mail-vc0-f182.google.com (mail-vc0-f182.google.com
	[209.85.220.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B2C4DE00832;
	Thu, 19 Mar 2015 04:36:48 -0700 (PDT)
Received: by mail-vc0-f182.google.com with SMTP id kv19so6740628vcb.13;
	Thu, 19 Mar 2015 04:36:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:date:message-id:subject:from:to:content-type;
	bh=ME+suCLrQE/5VD/7lAcvptc3NXMNy3o77m3uTtA17LU=;
	b=uDdaB9VBHkYxGdXRv01UtCk983X9CNaSOaqKDgRho2eurkvvjJI6t9aw8IEtwy/bXr
	q02HS5doI8ybJS+D3F2YGHzZmHSKwbvRX2+byJVilUPM3I7qqZ+UC7r+ZlN52OX1hzDU
	s7xn2edFtSWWFsmt4W4GwEo2n/cZn2SC54u7Z0FJdTkzRgJs+XPr2hEnvBu5w580q7Fi
	hsPDqsDzLnGPH1x64Rh8A4JTqiqCCMmluM27SUuMu0vNF2ml2g6HI237qTIAESkxH5Ou
	BkQKgXF2AEZzdp+o/vwi+4R2QYZ0cjDPpcwyTi5JcxKpZONET7Bv9LtLt7xnv0eaXyRz
	ZXCw==
MIME-Version: 1.0
X-Received: by 10.52.69.205 with SMTP id g13mr77551074vdu.83.1426765007760;
	Thu, 19 Mar 2015 04:36:47 -0700 (PDT)
Sender: tarek.allaoua@gmail.com
X-Google-Sender-Delegation: tarek.allaoua@gmail.com
Received: by 10.52.100.130 with HTTP; Thu, 19 Mar 2015 04:36:47 -0700 (PDT)
Date: Thu, 19 Mar 2015 12:36:47 +0100
X-Google-Sender-Auth: uPx4kRD2NXj1PmK4WnsRMKhbOlg
Message-ID: <CALbSrkr_YHU6JWzPz1dY2gPOqYrj4w+PbkvooeSjp=3NUmeKBg@mail.gmail.com>
From: eien sakebe <eien.ni.sakebe@gmail.com>
To: meta-freescale@yoctoproject.org, yocto-builds@yoctoproject.org, 
	yocto@yoctoproject.org
X-Mailman-Approved-At: Thu, 19 Mar 2015 08:20:50 -0700
Subject: [meta-freescale][meta-ivi][meta-fsl_ivi] build instruction update
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
X-List-Received-Date: Thu, 19 Mar 2015 11:36:50 -0000
Content-Type: multipart/alternative; boundary=20cf307d02ce77343e0511a29d31

--20cf307d02ce77343e0511a29d31
Content-Type: text/plain; charset=UTF-8

Hello everybody,
im trying to build foton-image following instructions from
https://github.com/Freescale/meta-fsl-ivi. My aim is to test IVI Layer
manager with MXGAL graphics backend (really not interested to test
X11/Wayland features).
Im quite new to Yocto and getting more and more confused how to build this
image.

My instructions:

mkdir fsl-community-bsp

cd fsl-community-bsp
repo init -u https://github.com/Freescale/fsl-community-bsp-platform -b
master
(I dont really know what branch to consider)

repo sync
export MACHINE=imx6dlsabresd

source ./sources/poky/oe-init-build-env

cd /home/ui/fsl-community-bsp/sources
git clone https://git.yoctoproject.org/git/meta-ivi
git branch 4.0
(instead of git://git.openembedded.org/meta-ivi wich does not exist, it
also requires branch 4.0 and a given commit)

git clone https://github.com/Freescale/meta-fsl-ivi.git

cd /home/ui/fsl-community-bsp/build
vim conf/bblayers.conf

ive added the following to BBLAYERS :


/home/ui/fsl-community-bsp/sources/meta-fsl-arm \
/home/ui/fsl-community-bsp/sources/meta-ivi/meta-ivi \
/home/ui/fsl-community-bsp/sources/meta-fsl-ivi \

Added the following to my local.conf
MACHINE ?= "imx6dlsabresd"
INCOMPATIBLE_LICENSE = "GPLv3"
DISTRO ?= "fsl-ivi-vfb"
UBOOT_SUFFIX = "bin"
UBOOT_PADDING = "2"
PREFERRED_PROVIDER_u-boot = "u-boot-imx"
ACCEPT_FSL_EULA = "1"


bitbake foton-image


ERROR: No recipes available for:

/home/ui/fsl-community-bsp/sources/meta-ivi/meta-ivi/recipes-connectivity/neard/neard_0.14.bbappend

/home/ui/fsl-community-bsp/sources/meta-ivi/meta-ivi/recipes-graphics/wayland/weston_1.5.0.bbappend

/home/ui/fsl-community-bsp/sources/meta-fsl-ivi/recipes-graphics/layer-management/layer-management_1.0.1.bbappend

/home/ui/fsl-community-bsp/sources/meta-ivi/meta-ivi/recipes-multimedia/pulseaudio/pulseaudio_5.0.bbappend

/home/ui/fsl-community-bsp/sources/meta-ivi/meta-ivi/recipes-connectivity/libpcap/libpcap_1.6.1.bbappend

/home/ui/fsl-community-bsp/sources/meta-ivi/meta-ivi/recipes-core-ivi/busybox/busybox_1.22.1.bbappend

1st error
=========
removing these files get me to the next error

ERROR: Nothing PROVIDES 'foton-image'. Close matches:
  python-image
  python3-image

There are few topics arround, but theres no evident solution.
Please help :(

--20cf307d02ce77343e0511a29d31
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello everybody,<br>im trying to build foton-image followi=
ng instructions from <a href=3D"https://github.com/Freescale/meta-fsl-ivi">=
https://github.com/Freescale/meta-fsl-ivi</a>. My aim is to test IVI Layer =
manager with MXGAL graphics backend (really not interested to test X11/Wayl=
and features).<br>Im quite new to Yocto and getting more and more confused =
how to build this image.<br><br>My instructions:<br><br>mkdir fsl-community=
-bsp<br><br>cd fsl-community-bsp<br>repo init -u <a href=3D"https://github.=
com/Freescale/fsl-community-bsp-platform">https://github.com/Freescale/fsl-=
community-bsp-platform</a> -b master<br>(I dont really know what branch to =
consider)<br><br>repo sync<br>export MACHINE=3Dimx6dlsabresd<br><br>source =
./sources/poky/oe-init-build-env<br><br>cd /home/ui/fsl-community-bsp/sourc=
es<br>git clone <a href=3D"https://git.yoctoproject.org/git/meta-ivi">https=
://git.yoctoproject.org/git/meta-ivi</a> <br>git branch 4.0<br>(instead of =
git://<a href=3D"http://git.openembedded.org/meta-ivi">git.openembedded.org=
/meta-ivi</a> wich does not exist, it also requires branch 4.0 and a given =
commit)<br><br>git clone <a href=3D"https://github.com/Freescale/meta-fsl-i=
vi.git">https://github.com/Freescale/meta-fsl-ivi.git</a><br><br>cd /home/u=
i/fsl-community-bsp/build<br>vim conf/bblayers.conf<br><br>ive added the fo=
llowing to BBLAYERS :<br><br><br>/home/ui/fsl-community-bsp/sources/meta-fs=
l-arm \<br>/home/ui/fsl-community-bsp/sources/meta-ivi/meta-ivi \<br>/home/=
ui/fsl-community-bsp/sources/meta-fsl-ivi \<br><br>Added the following to m=
y local.conf<br>MACHINE ?=3D &quot;imx6dlsabresd&quot;<br>INCOMPATIBLE_LICE=
NSE =3D &quot;GPLv3&quot;<br>DISTRO ?=3D &quot;fsl-ivi-vfb&quot;<br>UBOOT_S=
UFFIX =3D &quot;bin&quot;<br>UBOOT_PADDING =3D &quot;2&quot;<br>PREFERRED_P=
ROVIDER_u-boot =3D &quot;u-boot-imx&quot;<br>ACCEPT_FSL_EULA =3D &quot;1&qu=
ot;<br><br><br>bitbake foton-image<br><br><br>ERROR: No recipes available f=
or:<br>=C2=A0 /home/ui/fsl-community-bsp/sources/meta-ivi/meta-ivi/recipes-=
connectivity/neard/neard_0.14.bbappend<br>=C2=A0 /home/ui/fsl-community-bsp=
/sources/meta-ivi/meta-ivi/recipes-graphics/wayland/weston_1.5.0.bbappend<b=
r>=C2=A0 /home/ui/fsl-community-bsp/sources/meta-fsl-ivi/recipes-graphics/l=
ayer-management/layer-management_1.0.1.bbappend<br>=C2=A0 /home/ui/fsl-comm=
unity-bsp/sources/meta-ivi/meta-ivi/recipes-multimedia/pulseaudio/pulseaudi=
o_5.0.bbappend<br>=C2=A0 /home/ui/fsl-community-bsp/sources/meta-ivi/meta-i=
vi/recipes-connectivity/libpcap/libpcap_1.6.1.bbappend<br>=C2=A0 /home/ui/f=
sl-community-bsp/sources/meta-ivi/meta-ivi/recipes-core-ivi/busybox/busybox=
_1.22.1.bbappend<br><br>1st error<br>=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>removin=
g these files get me to the next error <br><br>ERROR: Nothing PROVIDES &#39=
;foton-image&#39;. Close matches:<br>=C2=A0 python-image<br>=C2=A0 python3-=
image<br><br>There are few topics arround, but theres no evident solution.<=
br>Please help :(<br></div>

--20cf307d02ce77343e0511a29d31--
