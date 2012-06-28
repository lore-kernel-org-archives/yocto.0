Return-Path: <kilou_zellabia@yahoo.fr>
Received: from nm22-vm5.bullet.mail.ird.yahoo.com
	(nm22-vm5.bullet.mail.ird.yahoo.com [212.82.109.224])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 0F301E01426
	for <yocto@yoctoproject.org>; Thu, 28 Jun 2012 07:08:44 -0700 (PDT)
Received: from [77.238.189.233] by nm22.bullet.mail.ird.yahoo.com with NNFMP;
	28 Jun 2012 14:08:43 -0000
Received: from [212.82.108.118] by tm14.bullet.mail.ird.yahoo.com with NNFMP;
	28 Jun 2012 14:08:43 -0000
Received: from [127.0.0.1] by omp1027.mail.ird.yahoo.com with NNFMP;
	28 Jun 2012 14:08:43 -0000
X-Yahoo-Newman-Property: ymail-3
X-Yahoo-Newman-Id: 917191.43909.bm@omp1027.mail.ird.yahoo.com
Received: (qmail 42274 invoked by uid 60001); 28 Jun 2012 14:08:43 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.fr; s=s1024;
	t=1340892523; bh=VjLV5c1oICbM35fng8J1qBRYasz0NUFXy1WB18GulNc=;
	h=X-YMail-OSG:Received:X-Mailer:Message-ID:Date:From:Reply-To:Subject:To:MIME-Version:Content-Type;
	b=layJF8kYxLSv2CYfjTLA2lbb3JulOYYYpAyPBWHsp62hW7Gl2SfmrWntldZIgmwSGDfdzmd4sGMhWxb749ii8g1QADNnqPkg58wSMmLb+1lwlGCXAf52rG3gEcWEd4D0jeNLazsA0ueU4r36PuMy9azsdlcwtGm9o6NpET2iVNM=
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=s1024; d=yahoo.fr;
	h=X-YMail-OSG:Received:X-Mailer:Message-ID:Date:From:Reply-To:Subject:To:MIME-Version:Content-Type;
	b=zaIU+RH7GPO2wocYU16VMDPv5d3UKq8+8vx2bv/UrIdn7Mbbnlr0APXQgNon33vj3Kh+kWxqPoFNJuO6MRv++R5+nmUIl7AbNX4xN8JH+fioYfbJb+DJ5y2gA8p7OhupdlsrDJPqIYrPPw3v+sF2vZpMuoZl72mcJwK1LR42jiY=;
X-YMail-OSG: ZAlrYg8VM1nwKQVP2Akw2morHOYD60Ky2kNcCBLx3WN_I5q
	bdZt0ueh3Qe6nUpM.afJ9PB8iol.BiNkipUpjMGCe6_FJnR6g7QNsQwOQl.X
	JphUcOs_.bMBo9wTLQwVskhVHizq3gRwx7RLjvBiutCm8MKWrZEg5uNHIXeA
	gqSibZ6dEe9mwwCKpXn58euBz9kNWz9o8_6tWFq.BFrqPcGCojhjRYB6c.IT
	lO5ZRpTTNbsxK9wKesA.1RMM4zbG3F13BIEYB_UhmS0cUhUJavhGsVIGGfJI
	wbn9qdzjDHWNl6iE5XKmyyq2r48pu6En6lzy2jje0Sk4zJky62_CCGd05RI2
	o4eqkG7JwBKVi9tPi0xkoyBW_Q_DK5cNqR46r4cyPkVUPzT9hDsPiMHNYsF_
	tF9bb9dph.ibi7SQBK.0LnLUlNjVYrRktST.dNJUUrO.WZqmsbh8jEJQMdKw
	dZ9tJCh9z00vb55BYCdczizvUQBpOYBE3xf1u8memoyOLA2FYJNOdID8K1KG
	Ztv8JtvWOIe5BTz8OPBrWG0WCqxMP12ZTCIdBEWac9vMZ3pxiMJHKEohbHnt
	s7ZGynGvmaaATnqhLy2_otxdasd6m_zuvwou5WJQiY2cDvw2Uf30mgbHYez.
	SbRuLlcAUpdbX2CylNuxt9wHbY3fDvzh8oegvzLLhmwqkJhd2KfgR72PkYXe
	P.FAuibmxJXOhyxF99yQbt8UThxZkGDH8od519El6Lf1rKmj42yOri3pnM0d
	p6kSnBa1BfAcnuK5UbsKbayAMwNN10dRLAE1GCNFlfG.qBvVZT48WQ7R_ZOu
	xhQV8l43cWXplGimxBYI_U8DJnt8.Lbg6.44Z5iaYIOJFeO_ftI5av2itN9M
	8uACPZizdx_QwLcfBpZvREzPR5XffA5lulCd7URk9_LF92wP_Qriwj9sOeve
	OeXYbMm7x3.KUsEevpUm3vwo-
Received: from [92.103.7.242] by web171301.mail.ir2.yahoo.com via HTTP;
	Thu, 28 Jun 2012 15:08:43 BST
X-Mailer: YahooMailWebService/0.8.118.349524
Message-ID: <1340892523.40570.YahooMailNeo@web171301.mail.ir2.yahoo.com>
Date: Thu, 28 Jun 2012 15:08:43 +0100 (BST)
From: Kilou Zelabia <kilou_zellabia@yahoo.fr>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
MIME-Version: 1.0
Subject: Problem building custom tool-chain/SDK
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: Kilou Zelabia <kilou_zellabia@yahoo.fr>
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 28 Jun 2012 14:08:45 -0000
Content-Type: multipart/alternative;
	boundary="862858767-1205698484-1340892523=:40570"

--862858767-1205698484-1340892523=:40570
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable

Dear all, =0A=0A=0AI'm trying to integrate a custom tool-chain/SDK in yocto=
, following steps found in=A0 http://docs.openembedded.org/usermanual/html/=
commonuse_qte_sdk.html=0A=0ASo I've written three recipes =0A=0A=0Ameta-too=
lchain-MINE.bb=0Atask-MINE-toolchain-host.bb=0Atask-MINE-toolchain-target.b=
b=0A=0A=0AWhen building with command "bitbake meta-toolchain-MINE" I'm havi=
ng the following error =0A=0A=0AERROR: Nothing PROVIDES 'virtual/i686-MINE-=
linux-gcc'=0A=0A=A0How can i solve this error ? I was not able to track the=
 dependency chain =0A=0A=0A=0AThanks in advance.=0A=0A=0A---[meta-toolchain=
-MINE.bb]------------------------------------------------------------------=
--------------------------------------------------------------------------=
=0Arequire ../meta/recipes-core/meta/meta-toolchain.bb=0ADESCRIPTION =3D "M=
eta package for building a MINE toolchain"=0ALICENSE =3D "MIT"=0APR =3D "r7=
"=0ALIC_FILES_CHKSUM =3D "file://${COREBASE}/LICENSE;md5=3D3f40d79943971092=
85ec7b81fdeb3b58 \=0A=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0 file://${COREBASE}/meta/COPYING.MIT;md5=3D3da9cfbcb788c80a0384361b4de20=
420"=0ATOOLCHAIN_TARGET_TASK =3D "task-MINE-toolchain-target"=0ATOOLCHAIN_H=
OST_TASK =3D "task-MINE-toolchain-host"=0ATOOLCHAIN_OUTPUTNAME =3D "${SDK_N=
AME}-toolchain-MINE-${DISTRO_VERSION}"=0APROVIDES =3D "meta-toolchain-MINE"=
=0ATOOLCHAIN_NEED_CONFIGSITE_CACHE +=3D "zlib"=0ASDK_SUFFIX =3D "toolchain-=
MINE"=0A=0A----------------------------------------------------------------=
---------------------------------------------------------------------------=
--------------------------------------------=0A=0A---[task-MINE-toolchain-h=
ost.bb]--------------------------------------------------------------------=
-------------------------------------------------------------------------=
=0Arequire ../meta/recipes-core/tasks/task-sdk-host-nativesdk.bb=0ADESCRIPT=
ION =3D "Host packages for MINE SDK"=0ALICENSE =3D "MIT"=0ALIC_FILES_CHKSUM=
 =3D "file://${COREBASE}/LICENSE;md5=3D3f40d7994397109285ec7b81fdeb3b58 \=
=0A=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 file://${COREB=
ASE}/meta/COPYING.MIT;md5=3D3da9cfbcb788c80a0384361b4de20420"=0AALLOW_EMPTY=
 =3D "1"=0ARDEPENDS_${PN} +=3D " "=0A=0A-----------------------------------=
---------------------------------------------------------------------------=
----------------------------------------------------------------------[task=
-MINE-toolchain-target.bb]-------------------------------------------------=
---------------------------------------------------------------------------=
-----------------=0ADESCRIPTION =3D "Target package for MINE SDK"=0ALICENSE=
 =3D "MIT"=0ALIC_FILES_CHKSUM =3D "file://${COREBASE}/LICENSE;md5=3D3f40d79=
94397109285ec7b81fdeb3b58 \=0A=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0 file://${COREBASE}/meta/COPYING.MIT;md5=3D3da9cfbcb788c80a0384=
361b4de20420"=0AALLOW_EMPTY =3D "1"=0APR =3D "r0"=0ARDEPENDS_${PN} +=3D "\=
=0A=A0=A0=A0 dbus-dev \=0A=A0=A0=A0 dbus-glib-dev \=0A=A0=A0=A0 gstreamer-d=
ev \=0A=A0=A0=A0 bluez4-dev \=0A=A0=A0=A0 gconf-dev \=0A=A0=A0=A0 avahi-dev=
 \=0A=A0=A0=A0 telepathy-glib-dev \=0A=A0=A0=A0 eds-dbus-dev \=0A=A0=A0=A0 =
libecal-dev \=0A=A0=A0=A0 libebook-dev \=0A=A0=A0=A0 libxi-dev \=0A=A0=A0=
=A0 libsqlite3-dev \=0A=A0=A0=A0 gssdp \=0A=A0=A0=A0 gupnp \=0A=A0=A0=A0 gu=
pnp-av \=0A=A0=A0=A0 gupnp-tools \=0A=A0=A0=A0 gypsy \=0A=A0=A0=A0 libart-l=
gpl \=0A=A0=A0=A0 libgalago \=0A=A0=A0=A0 libtelepathy \=0A=A0=A0=A0 pulsea=
udio \=0A=A0=A0=A0 qt4-x11-free-dev \=0A=A0=A0=A0 "=0A---------------------=
---------------------------------------------------------------------------=
---------------------------------------------------------------------------=
------------=0A------------------------------------------------------------=
---------------------------------------------------------------------------=
------------------------------------------------

--862858767-1205698484-1340892523=:40570
Content-Type: text/html; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable

<html><body><div style=3D"color:#000; background-color:#fff; font-family:ti=
mes new roman, new york, times, serif;font-size:12pt"><div>Dear all, <br></=
div><div><br></div><div>I'm trying to integrate a custom tool-chain/SDK in =
yocto, following steps found in&nbsp; http://docs.openembedded.org/usermanu=
al/html/commonuse_qte_sdk.html</div><div><br></div><div>So I've written thr=
ee recipes <br></div><div><br></div><div>meta-toolchain-MINE.bb</div><div>t=
ask-MINE-toolchain-host.bb</div><div>task-MINE-toolchain-target.bb</div><di=
v><br></div><div><br></div><div>When building with command "bitbake meta-to=
olchain-MINE" I'm having the following error <br></div><div><br></div><div>=
ERROR: Nothing PROVIDES 'virtual/i686-MINE-linux-gcc'</div><div><br></div><=
div>&nbsp;How can i solve this error ? I was not able to track the dependen=
cy chain <br></div><div><br></div><div><br></div><div>Thanks in
 advance.<br></div><div><br></div><div>---[meta-toolchain-MINE.bb]---------=
---------------------------------------------------------------------------=
--------------------------------------------------------</div><div>require =
../meta/recipes-core/meta/meta-toolchain.bb<br>DESCRIPTION =3D "Meta packag=
e for building a MINE toolchain"<br>LICENSE =3D "MIT"<br>PR =3D "r7"<br>LIC=
_FILES_CHKSUM =3D "file://${COREBASE}/LICENSE;md5=3D3f40d7994397109285ec7b8=
1fdeb3b58 \<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; file://${COREBASE}/m=
eta/COPYING.MIT;md5=3D3da9cfbcb788c80a0384361b4de20420"<br>TOOLCHAIN_TARGET=
_TASK =3D "task-MINE-toolchain-target"<br>TOOLCHAIN_HOST_TASK =3D "task-MIN=
E-toolchain-host"<br>TOOLCHAIN_OUTPUTNAME =3D "${SDK_NAME}-toolchain-MINE-$=
{DISTRO_VERSION}"<br>PROVIDES =3D "meta-toolchain-MINE"<br>TOOLCHAIN_NEED_C=
ONFIGSITE_CACHE +=3D "zlib"<br>SDK_SUFFIX =3D
 "toolchain-MINE"<br></div><div>-------------------------------------------=
---------------------------------------------------------------------------=
-----------------------------------------------------------------<br></div>=
<div>---[task-MINE-toolchain-host.bb]--------------------------------------=
---------------------------------------------------------------------------=
----------------------------</div><div>require ../meta/recipes-core/tasks/t=
ask-sdk-host-nativesdk.bb<br>DESCRIPTION =3D "Host packages for MINE SDK"<b=
r>LICENSE =3D "MIT"<br>LIC_FILES_CHKSUM =3D "file://${COREBASE}/LICENSE;md5=
=3D3f40d7994397109285ec7b81fdeb3b58 \<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp; file://${COREBASE}/meta/COPYING.MIT;md5=3D3da9cfbcb788c80a0384361b4de=
20420"<br>ALLOW_EMPTY =3D "1"<br>RDEPENDS_${PN} +=3D "
 "<br></div><div>----------------------------------------------------------=
---------------------------------------------------------------------------=
--------------------------------------------</div>=0A---[task-MINE-toolchai=
n-target.bb]---------------------------------------------------------------=
---------------------------------------------------------------------------=
---<br>DESCRIPTION =3D "Target package for MINE SDK"<br>LICENSE =3D "MIT"<b=
r>LIC_FILES_CHKSUM =3D "file://${COREBASE}/LICENSE;md5=3D3f40d7994397109285=
ec7b81fdeb3b58 \<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; file://${COREBA=
SE}/meta/COPYING.MIT;md5=3D3da9cfbcb788c80a0384361b4de20420"<br>ALLOW_EMPTY=
 =3D "1"<br>PR =3D "r0"<br>RDEPENDS_${PN} +=3D "\<br>&nbsp;&nbsp;&nbsp; dbu=
s-dev \<br>&nbsp;&nbsp;&nbsp; dbus-glib-dev \<br>&nbsp;&nbsp;&nbsp; gstream=
er-dev \<br>&nbsp;&nbsp;&nbsp; bluez4-dev \<br>&nbsp;&nbsp;&nbsp; gconf-dev=
 \<br>&nbsp;&nbsp;&nbsp; avahi-dev \<br>&nbsp;&nbsp;&nbsp; telepathy-glib-d=
ev \<br>&nbsp;&nbsp;&nbsp; eds-dbus-dev \<br>&nbsp;&nbsp;&nbsp; libecal-dev=
 \<br>&nbsp;&nbsp;&nbsp; libebook-dev \<br>&nbsp;&nbsp;&nbsp;
 libxi-dev \<br>&nbsp;&nbsp;&nbsp; libsqlite3-dev \<br>&nbsp;&nbsp;&nbsp; g=
ssdp \<br>&nbsp;&nbsp;&nbsp; gupnp \<br>&nbsp;&nbsp;&nbsp; gupnp-av \<br>&n=
bsp;&nbsp;&nbsp; gupnp-tools \<br>&nbsp;&nbsp;&nbsp; gypsy \<br>&nbsp;&nbsp=
;&nbsp; libart-lgpl \<br>&nbsp;&nbsp;&nbsp; libgalago \<br>&nbsp;&nbsp;&nbs=
p; libtelepathy \<br>&nbsp;&nbsp;&nbsp; pulseaudio \<br>&nbsp;&nbsp;&nbsp; =
qt4-x11-free-dev \<br>&nbsp;&nbsp;&nbsp; "<br>-----------------------------=
---------------------------------------------------------------------------=
---------------------------------------------------------------------------=
----<br>-------------------------------------------------------------------=
---------------------------------------------------------------------------=
-----------------------------------------<br><div><br></div><div><br></div>=
<div><br></div><div><br></div></div></body></html>

--862858767-1205698484-1340892523=:40570--
