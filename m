Return-Path: <mouhoune_samir@yahoo.fr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 492FDE00AD1; Thu,  9 Aug 2018 06:48:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mouhoune_samir[at]yahoo.fr)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [77.238.178.146 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from sonic308-18.consmr.mail.ir2.yahoo.com
	(sonic308-18.consmr.mail.ir2.yahoo.com [77.238.178.146])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D27B2E00875
	for <yocto@yoctoproject.org>; Thu,  9 Aug 2018 06:48:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.fr; s=s2048;
	t=1533822517; bh=NLsFhu6QNTGy5ek66VN3nA0zgK18PKMQnDUVjkOYk7A=;
	h=Date:From:To:Subject:References:From:Subject;
	b=OcfyKN1PYTGxm40xam8Imd86mnxGJ3xTzOKOTY3Ri4pdrgi1IGPzrfv1D9ZBMzpTajemjVK/y94Ue8tBYZ6lO5W7E2jHBi6Zor9Qbut/9dRu4Aq6xg2oIB+aUZe9+SC/oVPT/ZxSufel88k+GdfHGdJgOZzycErIyowKMBkzj/PGhg3UOt22S6inVvVdG3IS21V8tHUji3uNJgx9xYc3JyWuRyi23uP/mY3jmWbk5gsYTUEY5oGrJbpM++9YDTB3/x/YsZkrAbEeG6Kva+xB2b8D4W4WywQeCm8gbIIYnjE+H49vDIpkIXVTxVj+Mm3Gj+uNJN+tAh8hXqLvrcMO7g==
X-YMail-OSG: 31ZZemkVM1mFRH4FlDyhb3VdHHfDQwvAi1RbBH_vlZFuUBLuP4FXf.e4WJu6NIg
	LA_Fp6q628zVnFGrBEd6BEdGjDf5SzIv25YVUUMNOgpq8sL9NMbYqQMLjAp73GnpdPMk5XovfTnl
	TKBNeFW8awrNuKFHoyX5mdOIxKZ1VpMR72fguZl.ujIA6RzVMMN4FHXyJi_7BVTqLQTvTx094urE
	IsTbfcQ47m.h32JrsZ9f4ssJ22WGP1664jzQfcvfNJJ1ls5MmoKL_a_x8nSzeaH5GnqZMC7WvCYZ
	orNFeG2KSPxv5q4J_Rqw9grdDzJ0aY2AvdDBBX6VKj4_8dbXcXma8WDVhqt1CyjK2KkDh_AGA6tC
	yjihm1raFqqUyyxzLVUs8ALGIe19NJcL2dETGGt2nGOLQepgEUZZ_.pBaLP28JgrSxyfCOqXs0xs
	G0fHgSkPYXD5kCE.WzvuzidfvpH0FdurDK7FVFncZHXLWDXOjXLbcEKM4XD.VP511dd7tcjun2oo
	c0CwveKEMbiIpyW4s7l1ktiyABMjFtVWCOR.JOMt17_COmHK2Xvba1pEI.b7xG47PjTFLLt7EzPP
	B1yphWFDQ5.Gftd2J5I0XE4O8JRubaaWvrUkDEt2.RIIMiACdbnwYca6YctGS1z7T3dm7iD_oYxC
	_m9wHINhf3cYdbr70AvDTQcXE6GnLLqAPvZKVj_G627PIGQKUlSkmgB2s.eXMqyVr4f4FvrVquAR
	KJ9HJ25xynoXkuVO4KgiOabqusVV9USK.Ls2_DdqKY_vn_0mLn2_n9_x5UTyiu2gpjdxCeiaOrkH
	UsO23vJisLvAsNMlsHeJs05__D_dFKXnfNBEPUdazXTwzjWH334sR4kMiP.8PA__E9C5lInkiW9P
	EfraPCWah.1qGu1X_g8NmQ4PU2dkbXWttwOnn06VVCjWZNn56JgykBa7UomOvAQviyaGeOLW6wWo
	C_kCzJgBcfxLVTkMmg1oe
Received: from sonic.gate.mail.ne1.yahoo.com by
	sonic308.consmr.mail.ir2.yahoo.com with HTTP;
	Thu, 9 Aug 2018 13:48:37 +0000
Date: Thu, 9 Aug 2018 13:48:33 +0000 (UTC)
From: samir mouhoune <mouhoune_samir@yahoo.fr>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Message-ID: <2027135703.568646.1533822513889@mail.yahoo.com>
MIME-Version: 1.0
References: <2027135703.568646.1533822513889.ref@mail.yahoo.com>
X-Mailer: WebService/1.1.12206 YMailNorrin Mozilla/5.0 (X11;
	Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko)
	Chrome/65.0.3325.162 Safari/537.36
Subject: Device Tree Source is not correctly specified in fitImage signing process
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
X-List-Received-Date: Thu, 09 Aug 2018 13:48:40 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_568645_1987946805.1533822513886"

------=_Part_568645_1987946805.1533822513886
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi All,
I am trying to generate a signed fitImage for IMX6 (nitrogen6x) som=C2=A0 u=
sing PYRO 2.3 branch.=C2=A0
I my setup I had the following configs:=C2=A0
KERNEL_DEVICETREE =3D "imx6q-sabrelite.dtb \=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 imx6q-nitrogen6x.dtb i=
mx6dl-nitrogen6x.dtb \"=C2=A0 =C2=A0=C2=A0KERNEL_IMAGETYPE =3D "fitImage"KE=
RNEL_CLASSES +=3D "kernel-fitimage"
PREFERRED_PROVIDER_u-boot =3D "u-boot-boundary"PREFERRED_PROVIDER_virtual/b=
ootloader ?=3D "u-boot-boundary"PREFERRED_PROVIDER_virtual/kernel ??=3D "li=
nux-boundary"
UBOOT_SIGN_ENABLE =3D "1"UBOOT_SIGN_KEYDIR =3D "/data_local/imx6/keys"UBOOT=
_SIGN_KEYNAME =3D "ubootkey.key"UBOOT_MKIMAGE_DTCOPTS =3D "-I dts -O dtb -p=
 2000"
MACHINE_ESSENTIAL_EXTRA_RDEPENDS +=3D " \=C2=A0 =C2=A0 kernel-image \=C2=A0=
 =C2=A0 kernel-devicetree \"...

In uboot:=C2=A0 in include/configs/nitrogen6x.h=C2=A0 I added=C2=A0#define =
CONFIG_OF_CONTROL#define CONFIG_OF_SEPARATE

At the compilation I am getting The following error:=C2=A0=C2=A0 =C2=A0Devi=
ce Tree Source is not correctly specified.
=C2=A0 =C2=A0Please define 'CONFIG_DEFAULT_DEVICE_TREE'=C2=A0 =C2=A0or buil=
d with 'DEVICE_TREE=3D<device_tree>' argument

Any idea about the root cause?.=C2=A0 Idon't understand why I am getting th=
is error.=C2=A0 In my config=C2=A0 =C2=A0I already set
KERNEL_DEVICETREE =3D "imx6q-sabrelite.dtb \=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 imx6q-nitrogen6x.dtb i=
mx6dl-nitrogen6x.dtb \"
Thank you in advance for your support


Cordialement, Best Regards,Samir MOUHOUNE

------=_Part_568645_1987946805.1533822513886
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div style=3D"font-family:Helvetica Neue, Helvetic=
a, Arial, sans-serif;font-size:13px;"><div style=3D"font-family:Helvetica N=
eue, Helvetica, Arial, sans-serif;font-size:13px;"><div style=3D"font-famil=
y:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:13px;"><div style=
=3D"font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:13px=
;"><div>Hi All,</div><div><br></div><div>I am trying to generate a signed f=
itImage for IMX6 (nitrogen6x) som&nbsp; using PYRO 2.3 branch.&nbsp;</div><=
div><br></div><div>I my setup I had the following configs:&nbsp;</div><div>=
<br></div><div><span><div>KERNEL_DEVICETREE =3D "imx6q-sabrelite.dtb \</div=
><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; imx6q-nitrogen6x.dtb imx6dl-nitrogen6x.dtb \</div><div>"</di=
v></span></div><div>&nbsp; &nbsp;&nbsp;</div><div><span><div>KERNEL_IMAGETY=
PE =3D "fitImage"</div><div>KERNEL_CLASSES +=3D "kernel-fitimage"</div><div=
><br></div><div>PREFERRED_PROVIDER_u-boot =3D "u-boot-boundary"</div><div>P=
REFERRED_PROVIDER_virtual/bootloader ?=3D "u-boot-boundary"</div><div>PREFE=
RRED_PROVIDER_virtual/kernel ??=3D "linux-boundary"</div><div><br></div><di=
v>UBOOT_SIGN_ENABLE =3D "1"</div><div>UBOOT_SIGN_KEYDIR =3D "/data_local/im=
x6/keys"</div><div>UBOOT_SIGN_KEYNAME =3D "ubootkey.key"</div><div>UBOOT_MK=
IMAGE_DTCOPTS =3D "-I dts -O dtb -p 2000"</div><div><br></div><div><span><d=
iv>MACHINE_ESSENTIAL_EXTRA_RDEPENDS +=3D " \</div><div>&nbsp; &nbsp; kernel=
-image \</div><div>&nbsp; &nbsp; kernel-devicetree \</div><div>"</div><div>=
.</div><div>.</div><div>.</div></span><br></div><div><br></div><div>In uboo=
t:&nbsp; in include/configs/nitrogen6x.h&nbsp; I added&nbsp;</div><div><spa=
n><div>#define CONFIG_OF_CONTROL</div><div>#define CONFIG_OF_SEPARATE</div>=
<div><br></div><div><br></div><div>At the compilation I am getting The foll=
owing error:&nbsp;</div><div>&nbsp; &nbsp;Device Tree Source is not correct=
ly specified.<br></div><div><span><div>&nbsp; &nbsp;Please define 'CONFIG_D=
EFAULT_DEVICE_TREE'</div><div>&nbsp; &nbsp;or build with 'DEVICE_TREE=3D&lt=
;device_tree&gt;' argument</div></span><br></div><div><br></div><div>Any id=
ea about the root cause?.&nbsp; Idon't understand why I am getting this err=
or.&nbsp; In my config&nbsp; &nbsp;I already set</div><div><br></div><div><=
span><div style=3D"color: rgb(0, 0, 0); font-family: &quot;Helvetica Neue&q=
uot;, Helvetica, Arial, sans-serif;">KERNEL_DEVICETREE =3D "imx6q-sabrelite=
.dtb \</div><div style=3D"color: rgb(0, 0, 0); font-family: &quot;Helvetica=
 Neue&quot;, Helvetica, Arial, sans-serif;">&nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; imx6q-nitrogen6x.dtb i=
mx6dl-nitrogen6x.dtb \</div><div style=3D"color: rgb(0, 0, 0); font-family:=
 &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;">"</div></span><=
br></div><div>Thank you in advance for your support</div></span><br></div><=
/span><br></div><div><br></div><div class=3D"ydpc71b5cd7signature"><div><fo=
nt style=3D"background-color:rgb(255, 255, 255);" color=3D"#0000ff">Cordial=
ement, Best Regards,</font></div><div><font style=3D"background-color:rgb(2=
55, 255, 255);" color=3D"#0000ff">Samir MOUHOUNE<br><var id=3D"ydpc71b5cd7y=
ui-ie-cursor"></var></font></div></div></div></div></div></div></body></htm=
l>

------=_Part_568645_1987946805.1533822513886--
