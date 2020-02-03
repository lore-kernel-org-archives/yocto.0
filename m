Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.23.1580745831481544926
 for <yocto@lists.yoctoproject.org>;
 Mon, 03 Feb 2020 08:03:51 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sbcglobal.net header.s=s2048 header.b=DQbgxqeq;
 spf=none, err=permanent DNS error (domain: sbcglobal.net, ip: 140.211.169.56, mailfrom: develone@sbcglobal.net)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 10BCAE016A1; Mon,  3 Feb 2020 08:03:51 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,HTML_MESSAGE,RCVD_IN_DNSWL_NONE autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [74.6.131.193 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from sonic311-19.consmr.mail.bf2.yahoo.com (sonic311-19.consmr.mail.bf2.yahoo.com [74.6.131.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 95A6DE00736
	for <yocto@yoctoproject.org>; Mon,  3 Feb 2020 08:03:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sbcglobal.net; s=s2048; t=1580745828; bh=uXiRxj18ZeCj7aICtzGQmUI5dChXU1GOnbyc+wq3q24=; h=Date:From:To:Subject:References:From:Subject; b=DQbgxqeqTbP4VhUhE4aw+BimRHebrXQp9h7jHYw9VQ3OvP+3+c9pb0s70HoOKyDN12CAFhx97q8lGiFp3ImDhXrTLGNoZ+UcWNSuATPhD8vzKXsj1gyzHn59vqKAZYuoHMFSJY2qNfBBdb/1+JWs77IVR5NjGZ8mvWuEwCYbuyTe6zBa3uBYY/Etv2shCIFYplBo0dJbIjwtOZ1wb9+GKODkrECs7bH1xiChqAqA0c+aQ+Caam0b+t1NBrpWqoTkxBsJEybIAfwJW6/JjTMP/IQZ0CVInLDpKWKTscHxgpd1JoBN+7Tnqj11pGLJPAbmpjkweOgKSZlM948Oeb4Fow==
X-YMail-OSG: AGn4vyEVM1kwrpUQeZDb1pkGoOrdtQiXyMQL2v6rcGJigCdL.9vtWxeYO5Caj38
 bJyjEXTvIM.T40e5ExTtC9nrF5I2EktuHy7rLzK8sxhTKJUQD87GynAG2xxXzj5gsUVatp..h9..
 mzqCRW79AzznRlRIqn2QMe4f53zzjgfMSUGpXE0alDavfxVWCBwIFFjlK1vA5PmAk1Wlpu7cU_xl
 nu7RzwtqzNRy553ZvQQOxEMU2eUc8y1yhuqkR.EItbYya1mnfSb7GWfKdbz1rlNpZRDxi_5d2FkM
 piXCQmqxlC4Sqom2Q_opgA0xiPnpSSSvh2e1cZtgXZM6tYbVThUnImVDBgWA0X4VEwmnTHb0onZt
 3dIKQ5wXv5XaT.b8aSjizTRBcjTxAZCAEW8ToY6ZxWy6i1DFPmCI229C2A7FLlbcUswK5XbAoJJ8
 odxNpflL7tj3zTqeZIkCmkfjqRnJDHK6ALDXiw.WY2WYoM0dCnhdVhk1V6QUWbbphPasMqpGVHg6
 WLqrri_Vn48fETM6UzQbmYJxvdxcQMSxghC3HbPEa7o3taxwI66Ae1QBf2J4aOz0ykfCLb8PrLt.
 CdV1hj8JVxt7QZkCcw__WrKDAKJOvtT59rRafAzvHnZ9o43Fo1Qap6b53cJDkav4nDuRmiOPS4qm
 g2o.WWgeQeW4q_TzBucCI2aZHteO2b3sWhM.mdVDJm4BoERxKMNAquHwe.fkMp1Pg6YBJqDS_Thd
 7cmj2igr0PN5lOpUMD0JDuDfWAx0.kPc5DB.aZXa1EpgDlhCldhuTsyQufIxbrnphGn0n3IkX6AV
 HfCAbtvKN.xk8p.kMKdKPwX6SnO3MstR4H_3lJroyGsZNzcy_n0HzA1nLtsmGRdl56Apk_MoLQlJ
 dxlyPeqROqvxkvZw4XcLohN_7ADnpI0XWGAOBtIL7B1OSKyDNFFSRhlOCyRD5F2hnIOnisGpjoky
 ud2QupnvhrPXoKmPACbT1lBE9d2ebJjetdg0cAYL3dZz9F_VVn5VRGevWeQFPdeurW70V0W9iul1
 dggGA7_lbvHDXEY3mqq6eCoNBfMpXTvXlh_mJ5tSt0st.pTbSi9KWZaitIXSvm269nrm6Gp5RU8I
 MdfVjd7ANKxrNhn0aYJy2GbwDDJIJvsVLlKx_F.4rkxE6G6QkC3o6Y62_xw6wzF6psbV8HTd2q4t
 h6_Gkj.0dCtZkPUGoZo31fr1eC_gEroSACPx4xZrAyGGuioYrIeaRbpZfkgMxo7lmdQvPdcc.d1I
 md7NRMGnLaIvgZuQmOxvhBuUagBckA23pPoTkgaE6epXomvePzx6H_X3E9KEElnsYoD9vKYIIm7H
 X99tJ9zNcSvMy5QHO8lJIzBwP
Received: from sonic.gate.mail.ne1.yahoo.com by sonic311.consmr.mail.bf2.yahoo.com with HTTP; Mon, 3 Feb 2020 16:03:48 +0000
Date: Mon, 3 Feb 2020 16:01:39 +0000 (UTC)
From: "Ed Vidal" <develone@sbcglobal.net>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Message-ID: <347196555.692864.1580745699461@mail.yahoo.com>
Subject: raspberrypi missing libtclstub8.6.a on target system
MIME-Version: 1.0
References: <347196555.692864.1580745699461.ref@mail.yahoo.com>
X-Mailer: WebService/1.1.15149 YMailNorrin Mozilla/5.0 (X11; Linux armv7l) AppleWebKit/537.36 (KHTML, like Gecko) Raspbian Chromium/74.0.3729.157 Chrome/74.0.3729.157 Safari/537.36
Content-Type: multipart/alternative; 
	boundary="----=_Part_692863_52981023.1580745699459"

------=_Part_692863_52981023.1580745699459
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello all,
Is it normal to not include the=C2=A0 static librarieson the filesystem roo=
t?
I created a raspberrypi4 image.=C2=A0 This image was created with docker us=
ing crops.
bitbake core-image-sato was 7078 tasks
Build Configuration:BB_VERSION=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D =
"1.44.0"BUILD_SYS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D "x86_64-linu=
x"NATIVELSBSTRING=C2=A0 =C2=A0 =C2=A0 =3D "universal"TARGET_SYS=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D "arm-poky-linux-gnueabi"MACHINE=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D "raspberrypi4"DISTRO=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D "poky"DISTRO_VERSION=C2=
=A0 =C2=A0 =C2=A0 =C2=A0=3D "3.0.1"TUNE_FEATURES=C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =3D "arm vfp cortexa7 neon vfpv4 thumb callconvention-hard"TARGET_FPU=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D "hard"meta=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0meta-poky=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0=C2=A0meta-yocto-bsp=C2=A0 =C2=A0 =C2=A0 =C2=A0=3D "zeus:d=
a81542171f0cab0ea1a9bf45ac3c256e6f343f9"meta-oe=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0=C2=A0meta-python=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=
=A0meta-multimedia=C2=A0 =C2=A0 =C2=A0 =3D "zeus:aad5b3d070cd8c58828b0975cf=
861d8ebc90f460"meta-raspberrypi=C2=A0 =C2=A0 =C2=A0=3D "master:3ae288aa38e3=
a1609c6e861918a874416d3f0f13"
This was part of local.conf
IMAGE_INSTALL_append =3D " xterm git \gperf tree tcl tk rsync tar pv \geany=
 cmake man iproute2 squashfs-tools \minicom linux-firmware iputils yasm \te=
xinfo python-imaging libmtp python-pip openjpeg \v4l-utils gsl opencv libft=
di=C2=A0 \chkconfig openjpeg lame liba52 gtkmm \gnuplot ghostscript boost p=
ython3 python3-ujson \hexedit graphviz \"On the yocto host system I see sev=
eral version of the libtclstub8.6.a
find . -name libtclstub8.6.a./work/cortexa7t2hf-neon-vfpv4-poky-linux-gnuea=
bi/tcl/8.6.9-r0/build/libtclstub8.6.a./work/cortexa7t2hf-neon-vfpv4-poky-li=
nux-gnueabi/tcl/8.6.9-r0/image/usr/lib/libtclstub8.6.a./work/cortexa7t2hf-n=
eon-vfpv4-poky-linux-gnueabi/tcl/8.6.9-r0/package/usr/lib/libtclstub8.6.a./=
work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/tcl/8.6.9-r0/recipe-sysroot=
-native/usr/lib/libtclstub8.6.a./work/cortexa7t2hf-neon-vfpv4-poky-linux-gn=
ueabi/tcl/8.6.9-r0/sysroot-destdir/usr/lib/libtclstub8.6.a./work/cortexa7t2=
hf-neon-vfpv4-poky-linux-gnueabi/tcl/8.6.9-r0/packages-split/tcl-staticdev/=
usr/lib/libtclstub8.6.a./work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/gt=
kwave/3.3.98-r0/recipe-sysroot/usr/lib/libtclstub8.6.a./work/cortexa7t2hf-n=
eon-vfpv4-poky-linux-gnueabi/tk/8.6.9-r0/recipe-sysroot/usr/lib/libtclstub8=
.6.a./work/x86_64-linux/tcl-native/8.6.9-r0/build/libtclstub8.6.a./work/x86=
_64-linux/tcl-native/8.6.9-r0/image/work-cuteradio/build/tmp/work/x86_64-li=
nux/tcl-native/8.6.9-r0/recipe-sysroot-native/usr/lib/libtclstub8.6.a./work=
/x86_64-linux/tcl-native/8.6.9-r0/sysroot-destdir/work-cuteradio/build/tmp/=
work/x86_64-linux/tcl-native/8.6.9-r0/recipe-sysroot-native/usr/lib/libtcls=
tub8.6.a./sysroots-components/x86_64/tcl-native/usr/lib/libtclstub8.6.a./sy=
sroots-components/cortexa7t2hf-neon-vfpv4/tcl/usr/lib/libtclstub8.6.a
EXTRA_IMAGE_FEATURES ?=3D "debug-tweaks dev-pkgs tools-sdk doc-pkgs"



Edward Vidal Jr. e-mail develone@sbcglobal.net 915-595-1613

------=_Part_692863_52981023.1580745699459
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div class=3D"ydpbd4d4102yahoo-style-wrap" style=
=3D"font-family: Helvetica Neue, Helvetica, Arial, sans-serif; font-size: 1=
3px;"><div dir=3D"ltr" data-setdir=3D"false">Hello all,</div><div dir=3D"lt=
r" data-setdir=3D"false"><br></div><div dir=3D"ltr" data-setdir=3D"false">I=
s it normal to not include the&nbsp; static librarieson the filesystem root=
?</div><div dir=3D"ltr" data-setdir=3D"false"><br></div><div dir=3D"ltr" da=
ta-setdir=3D"false">I created a raspberrypi4 image.&nbsp; This image was cr=
eated with docker using crops.</div><div dir=3D"ltr" data-setdir=3D"false">=
<br></div><div dir=3D"ltr" data-setdir=3D"false">bitbake core-image-sato wa=
s 7078 tasks</div><div dir=3D"ltr" data-setdir=3D"false"><br></div><div dir=
=3D"ltr" data-setdir=3D"false"><div><div>Build Configuration:</div><div>BB_=
VERSION&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=3D "1.44.0"</div><div>BUIL=
D_SYS&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =3D "x86_64-linux"</div><div=
>NATIVELSBSTRING&nbsp; &nbsp; &nbsp; =3D "universal"</div><div>TARGET_SYS&n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=3D "arm-poky-linux-gnueabi"</div><d=
iv>MACHINE&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =3D "raspberrypi=
4"</div><div>DISTRO&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
=3D "poky"</div><div>DISTRO_VERSION&nbsp; &nbsp; &nbsp; &nbsp;=3D "3.0.1"</=
div><div>TUNE_FEATURES&nbsp; &nbsp; &nbsp; &nbsp; =3D "arm vfp cortexa7 neo=
n vfpv4 thumb callconvention-hard"</div><div>TARGET_FPU&nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp;=3D "hard"</div><div>meta&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</div><div>meta-poky&nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&nbsp;</div><div>meta-yocto-bsp&nbsp; &nbsp; &nbsp; &nbs=
p;=3D "zeus:da81542171f0cab0ea1a9bf45ac3c256e6f343f9"</div><div>meta-oe&nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</div><div>meta-python&nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</div><div>meta-multimedia&nbsp; &nbsp=
; &nbsp; =3D "zeus:aad5b3d070cd8c58828b0975cf861d8ebc90f460"</div><div>meta=
-raspberrypi&nbsp; &nbsp; &nbsp;=3D "master:3ae288aa38e3a1609c6e861918a8744=
16d3f0f13"</div></div><br></div><div dir=3D"ltr" data-setdir=3D"false">This=
 was part of local.conf</div><div dir=3D"ltr" data-setdir=3D"false"><br></d=
iv><div dir=3D"ltr" data-setdir=3D"false"><div><div>IMAGE_INSTALL_append =
=3D " xterm git \</div><div>gperf tree tcl tk rsync tar pv \</div><div>gean=
y cmake man iproute2 squashfs-tools \</div><div>minicom linux-firmware iput=
ils yasm \</div><div>texinfo python-imaging libmtp python-pip openjpeg \</d=
iv><div>v4l-utils gsl opencv libftdi&nbsp; \</div><div>chkconfig openjpeg l=
ame liba52 gtkmm \</div><div>gnuplot ghostscript boost python3 python3-ujso=
n \</div><div>hexedit graphviz \</div><div>"</div></div>On the yocto host s=
ystem I see several version of the libtclstub8.6.a</div><div dir=3D"ltr" da=
ta-setdir=3D"false"><br></div><div dir=3D"ltr" data-setdir=3D"false"><div><=
div>find . -name libtclstub8.6.a</div><div>./work/cortexa7t2hf-neon-vfpv4-p=
oky-linux-gnueabi/tcl/8.6.9-r0/build/libtclstub8.6.a</div><div>./work/corte=
xa7t2hf-neon-vfpv4-poky-linux-gnueabi/tcl/8.6.9-r0/image/usr/lib/libtclstub=
8.6.a</div><div>./work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/tcl/8.6.9=
-r0/package/usr/lib/libtclstub8.6.a</div><div>./work/cortexa7t2hf-neon-vfpv=
4-poky-linux-gnueabi/tcl/8.6.9-r0/recipe-sysroot-native/usr/lib/libtclstub8=
.6.a</div><div>./work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/tcl/8.6.9-=
r0/sysroot-destdir/usr/lib/libtclstub8.6.a</div><div>./work/cortexa7t2hf-ne=
on-vfpv4-poky-linux-gnueabi/tcl/8.6.9-r0/packages-split/tcl-staticdev/usr/l=
ib/libtclstub8.6.a</div><div>./work/cortexa7t2hf-neon-vfpv4-poky-linux-gnue=
abi/gtkwave/3.3.98-r0/recipe-sysroot/usr/lib/libtclstub8.6.a</div><div>./wo=
rk/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/tk/8.6.9-r0/recipe-sysroot/us=
r/lib/libtclstub8.6.a</div><div>./work/x86_64-linux/tcl-native/8.6.9-r0/bui=
ld/libtclstub8.6.a</div><div>./work/x86_64-linux/tcl-native/8.6.9-r0/image/=
work-cuteradio/build/tmp/work/x86_64-linux/tcl-native/8.6.9-r0/recipe-sysro=
ot-native/usr/lib/libtclstub8.6.a</div><div>./work/x86_64-linux/tcl-native/=
8.6.9-r0/sysroot-destdir/work-cuteradio/build/tmp/work/x86_64-linux/tcl-nat=
ive/8.6.9-r0/recipe-sysroot-native/usr/lib/libtclstub8.6.a</div><div>./sysr=
oots-components/x86_64/tcl-native/usr/lib/libtclstub8.6.a</div><div>./sysro=
ots-components/cortexa7t2hf-neon-vfpv4/tcl/usr/lib/libtclstub8.6.a</div></d=
iv><br></div><div dir=3D"ltr" data-setdir=3D"false"><span>EXTRA_IMAGE_FEATU=
RES ?=3D "debug-tweaks dev-pkgs tools-sdk doc-pkgs"</span><br></div><div di=
r=3D"ltr" data-setdir=3D"false"><br></div><div dir=3D"ltr" data-setdir=3D"f=
alse"><br></div><div dir=3D"ltr" data-setdir=3D"false"><br></div><div dir=
=3D"ltr" data-setdir=3D"false">Edward Vidal Jr. e-mail develone@sbcglobal.n=
et 915-595-1613<br></div></div></body></html>

------=_Part_692863_52981023.1580745699459--
