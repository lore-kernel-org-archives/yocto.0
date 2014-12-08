Return-Path: <vaduvajanalexandru@yahoo.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 31D5AE00832; Mon,  8 Dec 2014 08:30:47 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (vaduvajanalexandru[at]yahoo.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [98.138.90.81 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from nm18.bullet.mail.ne1.yahoo.com (nm18.bullet.mail.ne1.yahoo.com
	[98.138.90.81])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C914FE006EF
	for <yocto@yoctoproject.org>; Mon,  8 Dec 2014 08:30:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
	t=1418056241; bh=oJjADIwOYkqQc8YPybmmP1T69UEKka7Nk5IYgs2eTKo=;
	h=Date:From:Reply-To:To:In-Reply-To:References:Subject:From:Subject;
	b=KC+JXWKpg3+8BFXq9NsBXabIYG4G7e17f1rJVHdlLPKRPuXijL33ZQNXeLRdGbhlkgvlaj8UtqK6FAP1cyd8DAL/NdxpMiVx8wSZO3qiruEHkeVzEM5vExb2dmHuiW/0apr5leMx8SekKgrLhyo3L8HCRiyZCh3LIwaoxP6+hZ/8E1PfbnSktCR3exgesfljDLeF4jMWDB6EPrDq5NOOnlDANC97sl4Qxes/dKE6RcwQl2FVUjWOfCt6en9jftpz+sAulcF8b5fKt4PRUOiZWQI92SicHRehtF0ds0PpOLhL6AiMKtdjjDAtGsPji19X+Rkw0qY3BaH0cx3B/1HV6g==
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=s2048; d=yahoo.com;
	b=ZQIk6cVzPJT0ThIHU0dtRt3WpBtllGSzcGJjm6lBjtjOxBTX2uH2wXpJ+A2tuCbIW1B4fBVkXeCBFY8pEXlH8oCVahHN0xjN0UpIJf44tM4qOvH7DX4igsboRIG4VuKOquYxF191hgyE7Wo2x4OmKe60efs8jyz0CD6lNzqUWhoVJPELPlZmQfnP2FsDwvPLANHO9qxfFmp6JzcWkFjd03670pNuFLLJGQS5sa6sxHlfhM4Lb/XsjnWxiYVEwvYc8tUiQKzDUE3kyvZNyExoRDDb//2q5jKvrTsXnTEhXC4NDiBLLgVciSIMGatzZ0xTG33/xTJWKTFaXNBjdENVeA==;
Received: from [98.138.226.180] by nm18.bullet.mail.ne1.yahoo.com with NNFMP;
	08 Dec 2014 16:30:41 -0000
Received: from [98.138.89.169] by tm15.bullet.mail.ne1.yahoo.com with NNFMP;
	08 Dec 2014 16:30:41 -0000
Received: from [127.0.0.1] by omp1025.mail.ne1.yahoo.com with NNFMP;
	08 Dec 2014 16:30:41 -0000
X-Yahoo-Newman-Property: ymail-3
X-Yahoo-Newman-Id: 239154.69727.bm@omp1025.mail.ne1.yahoo.com
X-YMail-OSG: Agcogb8VM1kNZ8vFAlIXzC9SRP0KX3z90fEC7fj7Ne18XAD1pyxq29cv7s8Xq7K
	GSsXuzpOqDLZSzkNOfj46YwzhaLvuy9l4vlxQ7LKsfz6fACrLHGVWi7UqZzJLCQ2fKdspWPEHfcg
	Ah159T_naMsIJIUKoNIZF4m4xh_RHuQ8.qkzRdkPM.6sqvDGfezeFCaqoNUmqTEs72mUnfA2qpfG
	1aHkddG2w3q0ym2GWbRThGSYr7xgZy0fFHVMSly3kLyxHLXOTcX3PEIHcaNvaMM7GbwbtniIFMVN
	ergLvXzLiS7ToOIm0hqXoyRQnzY.RA2jGwc3RmALV8dum.9w0HZyx5HPV5oLgHq6bCBWnDY1W7R_
	M94BkiiqmDJRsYISMONRMy9wfSPNKBEhFQwiBm.CWb1AiEfXb0zi2dQJSkgnqdYuSPdKpXbwhUl6
	WtT3wW20jv5FkA.suvJyrXg_QItG_I2IV0Jv0VpITW2j6rZXgU2bXqwNEjsev_3vOcLQ8PoRtCQa
	q0n9sXnrrDhggbEmICoQcsCyAxkMR5D0TjN0_SgUDeTcla_McPZujmg0eWaHhb9MbAo3TsJCKnOb
	0rTRkBlBz.G267jZQPJ2wbNtcEsrKRDdbgEdaxzzt3FkyXocqn6d4gcCETkBZnoi.h3uGQ6ktMd6
	9KM1PI840eVoVA0JHePuyrmRR6h0O.V_4S2LCByPhi808fZe09.y6wlzWCoJQmDcbraHOJgXsyO9
	j7Kee7hbW
Received: by 98.138.101.178; Mon, 08 Dec 2014 16:30:40 +0000 
Date: Mon, 8 Dec 2014 16:30:39 +0000 (UTC)
From: Alexandru Vaduva <vaduvajanalexandru@yahoo.com>
To: Li xin <lixin.fnst@cn.fujitsu.com>, 
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Message-ID: <758343160.4123317.1418056239652.JavaMail.yahoo@jws100204.mail.ne1.yahoo.com>
In-Reply-To: <1418034837-1966-1-git-send-email-lixin.fnst@cn.fujitsu.com>
References: <1418034837-1966-1-git-send-email-lixin.fnst@cn.fujitsu.com>
MIME-Version: 1.0
Subject: Re: [meta-cgl][PATCH] openais: upgrade to 1.1.4
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: Alexandru Vaduva <vaduvajanalexandru@yahoo.com>
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 08 Dec 2014 16:30:47 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_4123316_924813481.1418056239647"

------=_Part_4123316_924813481.1418056239647
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Thank you for the help.I will try to test and apply it as soon as possible.=
=C2=A0

Alex Vaduva
=20

     On Monday, December 8, 2014 12:35 PM, Li xin <lixin.fnst@cn.fujitsu.co=
m> wrote:
  =20

 Signed-off-by: Li Xin <lixin.fnst@cn.fujitsu.com>
---
 meta-cgl-common/recipes-cgl/openais/openais_1.1.3.bb | 18 ----------------=
--
 meta-cgl-common/recipes-cgl/openais/openais_1.1.4.bb | 16 ++++++++++++++++
 2 files changed, 16 insertions(+), 18 deletions(-)
 delete mode 100644 meta-cgl-common/recipes-cgl/openais/openais_1.1.3.bb
 create mode 100644 meta-cgl-common/recipes-cgl/openais/openais_1.1.4.bb

diff --git a/meta-cgl-common/recipes-cgl/openais/openais_1.1.3.bb b/meta-cg=
l-common/recipes-cgl/openais/openais_1.1.3.bb
deleted file mode 100644
index 2a03b9a..0000000
--- a/meta-cgl-common/recipes-cgl/openais/openais_1.1.3.bb
+++ /dev/null
@@ -1,18 +0,0 @@
-DESCRIPTION =3D "Implementation of the Service Availability Forum Applicat=
ion Interface Specification (AIS)"
-LICENSE =3D "BSD"
-LIC_FILES_CHKSUM =3D "file://LICENSE;md5=3D4cb00dd52a063edbece6ae248a2ba66=
3"
-DEPENDS =3D "cluster-glue corosync"
-
-#=C2=A0=C2=A0=C2=A0 ftp://ftp@openais.org/downloads/openais-${PV}/openais-=
${PV}.tar.gz
-
-SRC_URI =3D " \
-=C2=A0=C2=A0=C2=A0 ftp://ftp@tux.rainside.sk/gentoo/distfiles/openais-${PV=
}.tar.gz \
-=C2=A0=C2=A0=C2=A0 file://fix-lcrso-linkage.patch \
-=C2=A0 =C2=A0 file://build-cleanup-configure-ac.patch \
-=C2=A0=C2=A0=C2=A0 "
-SRC_URI[md5sum] =3D "13d8d590f806fb396d750b086c6c0b78"
-SRC_URI[sha256sum] =3D "eeef58dd2df3eb16ba68b3fbdc6f0d4dfb537443f1c091ec6f=
0431594f2f00b6"
-
-inherit autotools pkgconfig
-
-FILES_${PN}-dbg +=3D "${libexecdir}/lcrso/.debug"
diff --git a/meta-cgl-common/recipes-cgl/openais/openais_1.1.4.bb b/meta-cg=
l-common/recipes-cgl/openais/openais_1.1.4.bb
new file mode 100644
index 0000000..23d704d
--- /dev/null
+++ b/meta-cgl-common/recipes-cgl/openais/openais_1.1.4.bb
@@ -0,0 +1,16 @@
+DESCRIPTION =3D "Implementation of the Service Availability Forum Applicat=
ion Interface Specification (AIS)"
+LICENSE =3D "BSD"
+LIC_FILES_CHKSUM =3D "file://LICENSE;md5=3D4cb00dd52a063edbece6ae248a2ba66=
3"
+DEPENDS =3D "cluster-glue corosync"
+
+SRC_URI =3D "ftp://ftp@tux.rainside.sk/gentoo/distfiles/${BP}.tar.gz \
+=C2=A0 =C2=A0 file://fix-lcrso-linkage.patch \
+=C2=A0 =C2=A0 file://build-cleanup-configure-ac.patch \
+=C2=A0=C2=A0=C2=A0 "
+SRC_URI[md5sum] =3D "e500ad3c49fdc45d8653f864e80ed82c"
+SRC_URI[sha256sum] =3D "974b4959f3c401c16156dab31e65a6d45bbf84dd85a88c2a36=
2712e738c06934"
+
+inherit autotools pkgconfig
+
+EXTRA_OECONF =3D '--with-initddir=3D/etc/init.d'
+FILES_${PN}-dbg +=3D "${libexecdir}/lcrso/.debug"
--=20
1.8.4.2

--=20
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto


   

------=_Part_4123316_924813481.1418056239647
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><body><div style=3D"color:#000; background-color:#fff; font-family:He=
lveticaNeue, Helvetica Neue, Helvetica, Arial, Lucida Grande, sans-serif;fo=
nt-size:12px"><div id=3D"yui_3_16_0_1_1418055273867_21637">Thank you for th=
e help.</div><div id=3D"yui_3_16_0_1_1418055273867_21636" dir=3D"ltr">I wil=
l try to test and apply it as soon as possible.&nbsp;</div><div id=3D"yui_3=
_16_0_1_1418055273867_21645" dir=3D"ltr"><br></div><div id=3D"yui_3_16_0_1_=
1418055273867_21646" dir=3D"ltr"><br></div><div id=3D"yui_3_16_0_1_14180552=
73867_21647" dir=3D"ltr">Alex Vaduva<br></div><div id=3D"yui_3_16_0_1_14180=
55273867_21635"><span></span></div> <div class=3D"qtdSeparateBR"><br><br></=
div><div style=3D"display: block;" class=3D"yahoo_quoted"> <div style=3D"fo=
nt-family: HelveticaNeue, Helvetica Neue, Helvetica, Arial, Lucida Grande, =
sans-serif; font-size: 12px;"> <div style=3D"font-family: HelveticaNeue, He=
lvetica Neue, Helvetica, Arial, Lucida Grande, sans-serif; font-size: 16px;=
"> <div dir=3D"ltr"> <font face=3D"Arial" size=3D"2"> On Monday, December 8=
, 2014 12:35 PM, Li xin &lt;lixin.fnst@cn.fujitsu.com&gt; wrote:<br> </font=
> </div>  <br><br> <div class=3D"y_msg_container">Signed-off-by: Li Xin &lt=
;<a ymailto=3D"mailto:lixin.fnst@cn.fujitsu.com" href=3D"mailto:lixin.fnst@=
cn.fujitsu.com">lixin.fnst@cn.fujitsu.com</a>&gt;<br>---<br> meta-cgl-commo=
n/recipes-cgl/openais/openais_1.1.3.bb | 18 ------------------<br> meta-cgl=
-common/recipes-cgl/openais/openais_1.1.4.bb | 16 ++++++++++++++++<br> 2 fi=
les changed, 16 insertions(+), 18 deletions(-)<br> delete mode 100644 meta-=
cgl-common/recipes-cgl/openais/openais_1.1.3.bb<br> create mode 100644 meta=
-cgl-common/recipes-cgl/openais/openais_1.1.4.bb<br><br>diff --git a/meta-c=
gl-common/recipes-cgl/openais/openais_1.1.3.bb b/meta-cgl-common/recipes-cg=
l/openais/openais_1.1.3.bb<br>deleted file mode 100644<br>index 2a03b9a..00=
00000<br>--- a/meta-cgl-common/recipes-cgl/openais/openais_1.1.3.bb<br>+++ =
/dev/null<br>@@ -1,18 +0,0 @@<br>-DESCRIPTION =3D "Implementation of the Se=
rvice Availability Forum Application Interface Specification (AIS)"<br>-LIC=
ENSE =3D "BSD"<br>-LIC_FILES_CHKSUM =3D "file://LICENSE;md5=3D4cb00dd52a063=
edbece6ae248a2ba663"<br>-DEPENDS =3D "cluster-glue corosync"<br>-<br>-#&nbs=
p;&nbsp;&nbsp; <a href=3D"ftp://ftp@openais.org/downloads/openais-$" target=
=3D"_blank">ftp://ftp@openais.org/downloads/openais-$</a>{PV}/openais-${PV}=
.tar.gz<br>-<br>-SRC_URI =3D " \<br>-&nbsp;&nbsp;&nbsp; <a href=3D"ftp://ft=
p@tux.rainside.sk/gentoo/distfiles/openais-$" target=3D"_blank">ftp://ftp@t=
ux.rainside.sk/gentoo/distfiles/openais-$</a>{PV}.tar.gz \<br>-&nbsp;&nbsp;=
&nbsp; file://fix-lcrso-linkage.patch \<br>-&nbsp; &nbsp; file://build-clea=
nup-configure-ac.patch \<br>-&nbsp;&nbsp;&nbsp; "<br>-SRC_URI[md5sum] =3D "=
13d8d590f806fb396d750b086c6c0b78"<br>-SRC_URI[sha256sum] =3D "eeef58dd2df3e=
b16ba68b3fbdc6f0d4dfb537443f1c091ec6f0431594f2f00b6"<br>-<br>-inherit autot=
ools pkgconfig<br>-<br>-FILES_${PN}-dbg +=3D "${libexecdir}/lcrso/.debug"<b=
r>diff --git a/meta-cgl-common/recipes-cgl/openais/openais_1.1.4.bb b/meta-=
cgl-common/recipes-cgl/openais/openais_1.1.4.bb<br>new file mode 100644<br>=
index 0000000..23d704d<br>--- /dev/null<br>+++ b/meta-cgl-common/recipes-cg=
l/openais/openais_1.1.4.bb<br>@@ -0,0 +1,16 @@<br>+DESCRIPTION =3D "Impleme=
ntation of the Service Availability Forum Application Interface Specificati=
on (AIS)"<br>+LICENSE =3D "BSD"<br>+LIC_FILES_CHKSUM =3D "file://LICENSE;md=
5=3D4cb00dd52a063edbece6ae248a2ba663"<br>+DEPENDS =3D "cluster-glue corosyn=
c"<br>+<br>+SRC_URI =3D "<a href=3D"ftp://ftp@tux.rainside.sk/gentoo/distfi=
les/$" target=3D"_blank">ftp://ftp@tux.rainside.sk/gentoo/distfiles/$</a>{B=
P}.tar.gz \<br>+&nbsp; &nbsp; file://fix-lcrso-linkage.patch \<br>+&nbsp; &=
nbsp; file://build-cleanup-configure-ac.patch \<br>+&nbsp;&nbsp;&nbsp; "<br=
>+SRC_URI[md5sum] =3D "e500ad3c49fdc45d8653f864e80ed82c"<br>+SRC_URI[sha256=
sum] =3D "974b4959f3c401c16156dab31e65a6d45bbf84dd85a88c2a362712e738c06934"=
<br>+<br>+inherit autotools pkgconfig<br>+<br>+EXTRA_OECONF =3D '--with-ini=
tddir=3D/etc/init.d'<br>+FILES_${PN}-dbg +=3D "${libexecdir}/lcrso/.debug"<=
br>-- <br>1.8.4.2<br><br>-- <br>___________________________________________=
____<br>yocto mailing list<br><a ymailto=3D"mailto:yocto@yoctoproject.org" =
href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br><a hre=
f=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank">https=
://lists.yoctoproject.org/listinfo/yocto</a><br><br><br></div>  </div> </di=
v>  </div> </div></body></html>

------=_Part_4123316_924813481.1418056239647--
