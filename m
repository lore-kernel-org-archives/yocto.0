Return-Path: <vaduvajanalexandru@yahoo.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 77F14E00874; Wed, 10 Dec 2014 23:21:57 -0800 (PST)
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
	*      [98.138.91.167 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from nm7-vm4.bullet.mail.ne1.yahoo.com
	(nm7-vm4.bullet.mail.ne1.yahoo.com [98.138.91.167])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6E7C2E0080C
	for <yocto@yoctoproject.org>; Wed, 10 Dec 2014 23:21:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
	t=1418282512; bh=MTfhHlU2RIOiEh2Q1Tc3EemKwk0/PHTRLRSt0X+eps0=;
	h=Date:From:Reply-To:To:Cc:In-Reply-To:References:Subject:From:Subject;
	b=RJjMUvsXGsy2Xz3/AaeiL+lCgKncB/SlBeFxEkZY7zVlmu1hGo2CnuOTn7OxPfUwTVDwfiIh07Q7+kYhnh5qlZx7wlM0tPbIdH0gk0Bhkyu2qLZzHlaQFCpDwHPDCjKm79UJa2+G5koNA1hp9HAIeJpqRpjbTq6Byu3IcXk6dYCKOACWoVzylGpIOgX6R7Fg/LFrSDExw1P03+HQ5x4gDQC/ojdqUB4oyKAZLkcRgHyFw/7mqBBYXLXogmUZCjkZ+kveGLT5gsOn2Ua2lwU7Kip/odsFtGZFwIDFJ9ngP25ProjL64kFXcKxePZxtLslo2zafxjNnkXDfzwmtY/tsw==
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=s2048; d=yahoo.com;
	b=cy1+VgjIwWEH/03JKJe9ylJRJ6m3V0QCo23kOUtuKVJ1vPz8LqxXd1xuzNB27Lq20Ia0IbgBjqxKukB8GinUW8gPF9kbiqf42HG5Shb9y8RwNEx59f5GXC36OH0hhos3om1kkcscy7CLxT92Q33arpDTRdYb0C5ANiV0evqeDqXxSXGHVo5tIwHbQjfvWBvN1QVyn+eretRFESGC6eP+mCrHe0VK6SbgG4WGHLDMLeTzce/uEEwlvQtWxcRL5CRZbvB9seKFWJMgQes4Oi+NtuLIVXvIExnh2DI41ucCNaKFqgR/VcNxwn0dtlpzpP4XAaaPQ1aPebgJCNEuIJ20nQ==;
Received: from [98.138.100.114] by nm7.bullet.mail.ne1.yahoo.com with NNFMP;
	11 Dec 2014 07:21:52 -0000
Received: from [98.138.89.162] by tm105.bullet.mail.ne1.yahoo.com with NNFMP;
	11 Dec 2014 07:21:52 -0000
Received: from [127.0.0.1] by omp1018.mail.ne1.yahoo.com with NNFMP;
	11 Dec 2014 07:21:52 -0000
X-Yahoo-Newman-Property: ymail-3
X-Yahoo-Newman-Id: 259917.45478.bm@omp1018.mail.ne1.yahoo.com
X-YMail-OSG: sG6iWI4VM1k_ogj3weCMqHG7hkxgfVXUYdhWA4vt6.yIR2OZSVG5G743UODC.gx
	hcNLSBnnMzBS1OhEnpsXd74H9v69PM05DOYNYVrDlWTevbQKCC0OIMJkc51Z5M.1ZNVWE070yig7
	CKX1Fpw9GYoW1HDlv.7bPU6vWzK6_bntcfRG7jNLoJPggJU9zGE2HenZ7xGUNhaGWjNOIeoJ_QNF
	gQfjOORwKhtciWRgdoanRQRbLysF0TYuLASWrtmpWq4oUy_ntEqUtyqpomn1Vo4i2RzsfFLPZweI
	uRErZItJYCnCXFryBrvwBMXFdA9jGnESs7M76QQwBS1vVzxestuptCWkI8yXUl_X8wm6GPU4V5L9
	8PTmF5sr3ExDnRnJqXQtfSuz4BQVjECdhEr093cjm3Zlk5hO5qj.efs4XqG9ihOCd9n.NaD7IpTn
	MjrBq5Rs.tQBU0tVMzTdzhwVaEF6E4IYNC29uO4H2nuct9dd1umNVyKuhmdIIxmdihF7WeU2c52c
	Hd9Hbu1JoYyiWQ_9ha6UJdDFU7A7CAKM5_StROTNGaN3jCjmaRXV22HHpYjTglgGfxWVNr0WQHGd
	sphaHwCuOobTxsD2Gb1Fa.0_8ldjtwXOfE5fosRhIzfrhqMICOBW61UBPMiJBE9HyH5vFXOlFt_LK
Received: by 98.138.101.171; Thu, 11 Dec 2014 07:21:51 +0000 
Date: Thu, 11 Dec 2014 07:21:51 +0000 (UTC)
From: Alexandru Vaduva <vaduvajanalexandru@yahoo.com>
To: Joe MacDonald <Joe_MacDonald@mentor.com>, 
	Li xin <lixin.fnst@cn.fujitsu.com>
Message-ID: <1077253035.5058800.1418282511482.JavaMail.yahoo@jws10079.mail.ne1.yahoo.com>
In-Reply-To: <20141211004713.GC4102@mentor.com>
References: <20141211004713.GC4102@mentor.com>
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-cgl][PATCH] samhain: add new recipe
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
X-List-Received-Date: Thu, 11 Dec 2014 07:21:57 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_5058799_1791037713.1418282511473"

------=_Part_5058799_1791037713.1418282511473
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Thanks Joe,
I added Armin for to this discussion as a head-up regarding those updates, =
since it was the one working on samhain recipe on meta-security.

Alex Vaduva=20

     On Thursday, December 11, 2014 2:48 AM, Joe MacDonald <Joe_MacDonald@m=
entor.com> wrote:
  =20

 [[yocto] [meta-cgl][PATCH] samhain: add new recipe] On 14.12.10 (Wed 16:33=
) Li xin wrote:

> Samhain is an open source file integrity and intrusion detection
> system for Unix that uses cryptographic checksums of files to
> detect modifications, and allows you to trace: what changes have
> occured in your system, when these changes have occured, and who
> was logged into the system at the respective time.

Samhain is already in meta-security at the same version (though without
the patch you've included here.)

Since meta-cgl depends on meta-security today, I think you probably
should submit whatever updates are appropriate to the samhain recipe
to meta-security, so as to avoid duplicating / diverging recipes.

-J.

>=20
> Signed-off-by: Li Xin <lixin.fnst@cn.fujitsu.com>
> ---
>=C2=A0 .../samhain/0001-Makefile.in-error-fix.patch=C2=A0 =C2=A0 =C2=A0 | =
31 ++++++++++++
>=C2=A0 .../samhain/samhain/config-site.samhain-3.1.3=C2=A0 =C2=A0 =C2=A0 |=
=C2=A0 2 +
>=C2=A0 .../recipes-cgl/samhain/samhain_3.1.3.bb=C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 | 58 ++++++++++++++++++++++
>=C2=A0 3 files changed, 91 insertions(+)
>=C2=A0 create mode 100644 meta-cgl-common/recipes-cgl/samhain/samhain/0001=
-Makefile.in-error-fix.patch
>=C2=A0 create mode 100644 meta-cgl-common/recipes-cgl/samhain/samhain/conf=
ig-site.samhain-3.1.3
>=C2=A0 create mode 100644 meta-cgl-common/recipes-cgl/samhain/samhain_3.1.=
3.bb
>=20
> diff --git a/meta-cgl-common/recipes-cgl/samhain/samhain/0001-Makefile.in=
-error-fix.patch b/meta-cgl-common/recipes-cgl/samhain/samhain/0001-Makefil=
e.in-error-fix.patch
> new file mode 100644
> index 0000000..cd646f6
> --- /dev/null
> +++ b/meta-cgl-common/recipes-cgl/samhain/samhain/0001-Makefile.in-error-=
fix.patch
> @@ -0,0 +1,31 @@
> +From a9ce38c56bf7072f292d685a48b912e6e59260a6 Mon Sep 17 00:00:00 2001
> +From: Li xin <lixin.fnst@cn.fujitsu.com>
> +Date: Wed, 10 Dec 2014 14:45:28 +0900
> +Subject: [PATCH] Makefile.in: error fix
> +
> +error:File '/usr/sbin/samhain' from samhain was already stripped,
> +this will prevent future debugging!
> +
> +Upstream-Status: pending
> +
> +Signed-off-by: Li Xin <lixin.fnst@cn.fujitsu.com>
> +---
> + Makefile.in | 2 +-
> + 1 file changed, 1 insertion(+), 1 deletion(-)
> +
> +diff --git a/Makefile.in b/Makefile.in
> +index b1904d9..000de49 100644
> +--- a/Makefile.in
> ++++ b/Makefile.in
> +@@ -54,7 +54,7 @@ selectconfig =3D @selectconfig@
> + top_builddir =3D .
> +=20
> + INSTALL =3D @INSTALL@
> +-INSTALL_PROGRAM =3D @INSTALL@ -s -m 700
> ++INSTALL_PROGRAM =3D @INSTALL@ -m 700
> + INSTALL_SHELL =3D @INSTALL@ -m 700
> + INSTALL_DATA =3D @INSTALL@ -m 600
> + INSTALL_MAN =3D @INSTALL@ -m 644
> +--=20
> +1.8.4.2
> +
> diff --git a/meta-cgl-common/recipes-cgl/samhain/samhain/config-site.samh=
ain-3.1.3 b/meta-cgl-common/recipes-cgl/samhain/samhain/config-site.samhain=
-3.1.3
> new file mode 100644
> index 0000000..2ce3769
> --- /dev/null
> +++ b/meta-cgl-common/recipes-cgl/samhain/samhain/config-site.samhain-3.1=
.3
> @@ -0,0 +1,2 @@
> +ssp_cv_lib=3Dno
> +sh_cv_va_copy=3Dyes
> diff --git a/meta-cgl-common/recipes-cgl/samhain/samhain_3.1.3.bb b/meta-=
cgl-common/recipes-cgl/samhain/samhain_3.1.3.bb
> new file mode 100644
> index 0000000..22c8577
> --- /dev/null
> +++ b/meta-cgl-common/recipes-cgl/samhain/samhain_3.1.3.bb
> @@ -0,0 +1,58 @@
> +SUMMARY =3D "File Integrity and Intrusion Detection System"
> +DESCRIPTION =3D "Samhain is an open source file integrity and intrusion =
detection \
> +system for Unix that uses cryptographic checksums of files to \
> +detect modifications, and allows you to trace: what changes have \
> +occured in your system, when these changes have occured, and who \
> +was logged into the system at the respective time."
> +
> +HOMEPAGE =3D "http://la-samhna.de/samhain/"
> +SECTION =3D "Filesystem"
> +
> +SRC_URI =3D "http://la-samhna.de/samhain/samhain-current.tar.gz;extract=
=3Dsamhain-3.1.3.tar.gz \
> +=C2=A0 file://0001-Makefile.in-error-fix.patch"
> +SRC_URI[md5sum] =3D "64572a4dbfdc8065d6e9f7ca0eab0a34"
> +SRC_URI[sha256sum] =3D "c234afaf9ba3c6b7d240858b74423f935185de66e996405b=
3016ec4a288a7e1e"
> +LICENSE =3D "GPLv2"
> +LIC_FILES_CHKSUM =3D "file://LICENSE;md5=3D8ca43cbc842c2336e835926c2166c=
28b"
> +
> +DEPENDS =3D "libpthread-stubs acl zlib attr"
> +inherit autotools-brokensep pkgconfig
> +
> +do_unpack2() {
> +=C2=A0 =C2=A0 cd ${WORKDIR}
> +=C2=A0 =C2=A0 tar zxvf ${PN}-${PV}.tar.gz
> +}
> +
> +S =3D "${WORKDIR}/${BP}"
> +
> +addtask unpack2 after do_unpack before do_patch
> +do_configure() {
> +=C2=A0 =C2=A0 export CONFIG_SITE=3D./config-site.${BP}
> +=C2=A0 =C2=A0 ./configure \
> +=C2=A0 =C2=A0 =C2=A0 =C2=A0 --host=3D${HOST_SYS} \
> +=C2=A0 =C2=A0 =C2=A0 =C2=A0 --build=3D${BUILD_SYS} \
> +=C2=A0 =C2=A0 =C2=A0 =C2=A0 --prefix=3D${prefix} \
> +=C2=A0 =C2=A0 =C2=A0 =C2=A0 --sbindir=3D${sbindir} \
> +=C2=A0 =C2=A0 =C2=A0 =C2=A0 --mandir=3D${mandir} \
> +=C2=A0 =C2=A0 =C2=A0 =C2=A0 --sysconfdir=3D${sysconfdir} \
> +=C2=A0 =C2=A0 =C2=A0 =C2=A0 --localstatedir=3D${localstatedir} \
> +=C2=A0 =C2=A0 =C2=A0 =C2=A0 --with-config-file=3D/etc/samhain/samhainrc =
\
> +=C2=A0 =C2=A0 =C2=A0 =C2=A0 --with-state-dir=3D/var/samhain \
> +=C2=A0 =C2=A0 =C2=A0 =C2=A0 --with-html-file=3D/var/samhain/samhain.html=
 \
> +=C2=A0 =C2=A0 =C2=A0 =C2=A0 --with-data-file=3D/var/samhain/samhain.data=
 \
> +=C2=A0 =C2=A0 =C2=A0 =C2=A0 --with-pid-file=3D/var/samhain/samhain.pid \
> +=C2=A0 =C2=A0 =C2=A0 =C2=A0 --with-log-file=3D/var/samhain/samhain.log \
> +=C2=A0 =C2=A0 =C2=A0 =C2=A0 --enable-login-watch \
> +=C2=A0 =C2=A0 =C2=A0 =C2=A0 --disable-khide \
> +=C2=A0 =C2=A0 =C2=A0 =C2=A0 --enable-suidcheck \
> +=C2=A0 =C2=A0 =C2=A0 =C2=A0 --with-trusted=3D0
> +}
> +
> +do_install() {
> +=C2=A0 =C2=A0 install -d -m 755 ${D}/var/samhain
> +=C2=A0 =C2=A0 install -d=C2=A0 ${D}/${mandir}
> +=C2=A0 =C2=A0 oe_runmake DESTDIR=3D${D} install-program install-man inst=
all-data
> +=C2=A0 =C2=A0 chmod -R a+r ${D}/${mandir}
> +=C2=A0 =C2=A0 install -d ${D}/etc/samhain
> +=C2=A0 =C2=A0 install -c -m 644=C2=A0 samhainrc.linux ${D}/etc/samhain/s=
amhainrc
> +}
> --=20
> 1.8.4.2
>=20
--=20
-Joe MacDonald.
:wq
--=20
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto


   

------=_Part_5058799_1791037713.1418282511473
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><body><div style=3D"color:#000; background-color:#fff; font-family:He=
lveticaNeue, Helvetica Neue, Helvetica, Arial, Lucida Grande, sans-serif;fo=
nt-size:12px"><div dir=3D"ltr" id=3D"yui_3_16_0_1_1418112645012_288665"><sp=
an id=3D"yui_3_16_0_1_1418112645012_288684">Thanks Joe,</span></div><br><di=
v id=3D"yui_3_16_0_1_1418112645012_288690" dir=3D"ltr"><span id=3D"yui_3_16=
_0_1_1418112645012_288678">I added Armin for to this discussion as a head-u=
p regarding those updates, since it was the one working on samhain recipe o=
n meta-security.</span></div><div id=3D"yui_3_16_0_1_1418112645012_288681" =
dir=3D"ltr"><br><span id=3D"yui_3_16_0_1_1418112645012_288678"></span></div=
><div id=3D"yui_3_16_0_1_1418112645012_288682" dir=3D"ltr"><br><span id=3D"=
yui_3_16_0_1_1418112645012_288678"></span></div><div id=3D"yui_3_16_0_1_141=
8112645012_288683" dir=3D"ltr"><span id=3D"yui_3_16_0_1_1418112645012_28867=
8">Alex Vaduva</span></div> <div class=3D"qtdSeparateBR"><br><br></div><div=
 style=3D"display: block;" class=3D"yahoo_quoted"> <div style=3D"font-famil=
y: HelveticaNeue, Helvetica Neue, Helvetica, Arial, Lucida Grande, sans-ser=
if; font-size: 12px;"> <div style=3D"font-family: HelveticaNeue, Helvetica =
Neue, Helvetica, Arial, Lucida Grande, sans-serif; font-size: 16px;"> <div =
dir=3D"ltr"> <font size=3D"2" face=3D"Arial"> On Thursday, December 11, 201=
4 2:48 AM, Joe MacDonald &lt;Joe_MacDonald@mentor.com&gt; wrote:<br> </font=
> </div>  <br><br> <div class=3D"y_msg_container">[[yocto] [meta-cgl][PATCH=
] samhain: add new recipe] On 14.12.10 (Wed 16:33) Li xin wrote:<br clear=
=3D"none"><br clear=3D"none">&gt; Samhain is an open source file integrity =
and intrusion detection<br clear=3D"none">&gt; system for Unix that uses cr=
yptographic checksums of files to<br clear=3D"none">&gt; detect modificatio=
ns, and allows you to trace: what changes have<br clear=3D"none">&gt; occur=
ed in your system, when these changes have occured, and who<br clear=3D"non=
e">&gt; was logged into the system at the respective time.<br clear=3D"none=
"><br clear=3D"none">Samhain is already in meta-security at the same versio=
n (though without<br clear=3D"none">the patch you've included here.)<br cle=
ar=3D"none"><br clear=3D"none">Since meta-cgl depends on meta-security toda=
y, I think you probably<br clear=3D"none">should submit whatever updates ar=
e appropriate to the samhain recipe<br clear=3D"none">to meta-security, so =
as to avoid duplicating / diverging recipes.<br clear=3D"none"><br clear=3D=
"none">-J.<div class=3D"yqt9947270380" id=3D"yqtfd57476"><br clear=3D"none"=
><br clear=3D"none">&gt; <br clear=3D"none">&gt; Signed-off-by: Li Xin &lt;=
<a shape=3D"rect" ymailto=3D"mailto:lixin.fnst@cn.fujitsu.com" href=3D"mail=
to:lixin.fnst@cn.fujitsu.com">lixin.fnst@cn.fujitsu.com</a>&gt;<br clear=3D=
"none">&gt; ---<br clear=3D"none">&gt;&nbsp; .../samhain/0001-Makefile.in-e=
rror-fix.patch&nbsp; &nbsp; &nbsp;  | 31 ++++++++++++<br clear=3D"none">&gt=
;&nbsp; .../samhain/samhain/config-site.samhain-3.1.3&nbsp; &nbsp; &nbsp; |=
&nbsp; 2 +<br clear=3D"none">&gt;&nbsp; .../recipes-cgl/samhain/samhain_3.1=
.3.bb&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  | 58 ++++++++++++++++++++++<br cle=
ar=3D"none">&gt;&nbsp; 3 files changed, 91 insertions(+)<br clear=3D"none">=
&gt;&nbsp; create mode 100644 meta-cgl-common/recipes-cgl/samhain/samhain/0=
001-Makefile.in-error-fix.patch<br clear=3D"none">&gt;&nbsp; create mode 10=
0644 meta-cgl-common/recipes-cgl/samhain/samhain/config-site.samhain-3.1.3<=
br clear=3D"none">&gt;&nbsp; create mode 100644 meta-cgl-common/recipes-cgl=
/samhain/samhain_3.1.3.bb<br clear=3D"none">&gt; <br clear=3D"none">&gt; di=
ff --git a/meta-cgl-common/recipes-cgl/samhain/samhain/0001-Makefile.in-err=
or-fix.patch b/meta-cgl-common/recipes-cgl/samhain/samhain/0001-Makefile.in=
-error-fix.patch<br clear=3D"none">&gt; new file mode 100644<br clear=3D"no=
ne">&gt; index 0000000..cd646f6<br clear=3D"none">&gt; --- /dev/null<br cle=
ar=3D"none">&gt; +++ b/meta-cgl-common/recipes-cgl/samhain/samhain/0001-Mak=
efile.in-error-fix.patch<br clear=3D"none">&gt; @@ -0,0 +1,31 @@<br clear=
=3D"none">&gt; +From a9ce38c56bf7072f292d685a48b912e6e59260a6 Mon Sep 17 00=
:00:00 2001<br clear=3D"none">&gt; +From: Li xin &lt;<a shape=3D"rect" ymai=
lto=3D"mailto:lixin.fnst@cn.fujitsu.com" href=3D"mailto:lixin.fnst@cn.fujit=
su.com">lixin.fnst@cn.fujitsu.com</a>&gt;<br clear=3D"none">&gt; +Date: Wed=
, 10 Dec 2014 14:45:28 +0900<br clear=3D"none">&gt; +Subject: [PATCH] Makef=
ile.in: error fix<br clear=3D"none">&gt; +<br clear=3D"none">&gt; +error:Fi=
le '/usr/sbin/samhain' from samhain was already stripped,<br clear=3D"none"=
>&gt; +this will prevent future debugging!<br clear=3D"none">&gt; +<br clea=
r=3D"none">&gt; +Upstream-Status: pending<br clear=3D"none">&gt; +<br clear=
=3D"none">&gt; +Signed-off-by: Li Xin &lt;<a shape=3D"rect" ymailto=3D"mail=
to:lixin.fnst@cn.fujitsu.com" href=3D"mailto:lixin.fnst@cn.fujitsu.com">lix=
in.fnst@cn.fujitsu.com</a>&gt;<br clear=3D"none">&gt; +---<br clear=3D"none=
">&gt; + Makefile.in | 2 +-<br clear=3D"none">&gt; + 1 file changed, 1 inse=
rtion(+), 1 deletion(-)<br clear=3D"none">&gt; +<br clear=3D"none">&gt; +di=
ff --git a/Makefile.in b/Makefile.in<br clear=3D"none">&gt; +index b1904d9.=
.000de49 100644<br clear=3D"none">&gt; +--- a/Makefile.in<br clear=3D"none"=
>&gt; ++++ b/Makefile.in<br clear=3D"none">&gt; +@@ -54,7 +54,7 @@ selectco=
nfig =3D @selectconfig@<br clear=3D"none">&gt; + top_builddir =3D .<br clea=
r=3D"none">&gt; + <br clear=3D"none">&gt; + INSTALL =3D @INSTALL@<br clear=
=3D"none">&gt; +-INSTALL_PROGRAM =3D @INSTALL@ -s -m 700<br clear=3D"none">=
&gt; ++INSTALL_PROGRAM =3D @INSTALL@ -m 700<br clear=3D"none">&gt; + INSTAL=
L_SHELL =3D @INSTALL@ -m 700<br clear=3D"none">&gt; + INSTALL_DATA =3D @INS=
TALL@ -m 600<br clear=3D"none">&gt; + INSTALL_MAN =3D @INSTALL@ -m 644<br c=
lear=3D"none">&gt; +-- <br clear=3D"none">&gt; +1.8.4.2<br clear=3D"none">&=
gt; +<br clear=3D"none">&gt; diff --git a/meta-cgl-common/recipes-cgl/samha=
in/samhain/config-site.samhain-3.1.3 b/meta-cgl-common/recipes-cgl/samhain/=
samhain/config-site.samhain-3.1.3<br clear=3D"none">&gt; new file mode 1006=
44<br clear=3D"none">&gt; index 0000000..2ce3769<br clear=3D"none">&gt; ---=
 /dev/null<br clear=3D"none">&gt; +++ b/meta-cgl-common/recipes-cgl/samhain=
/samhain/config-site.samhain-3.1.3<br clear=3D"none">&gt; @@ -0,0 +1,2 @@<b=
r clear=3D"none">&gt; +ssp_cv_lib=3Dno<br clear=3D"none">&gt; +sh_cv_va_cop=
y=3Dyes<br clear=3D"none">&gt; diff --git a/meta-cgl-common/recipes-cgl/sam=
hain/samhain_3.1.3.bb b/meta-cgl-common/recipes-cgl/samhain/samhain_3.1.3.b=
b<br clear=3D"none">&gt; new file mode 100644<br clear=3D"none">&gt; index =
0000000..22c8577<br clear=3D"none">&gt; --- /dev/null<br clear=3D"none">&gt=
; +++ b/meta-cgl-common/recipes-cgl/samhain/samhain_3.1.3.bb<br clear=3D"no=
ne">&gt; @@ -0,0 +1,58 @@<br clear=3D"none">&gt; +SUMMARY =3D "File Integri=
ty and Intrusion Detection System"<br clear=3D"none">&gt; +DESCRIPTION =3D =
"Samhain is an open source file integrity and intrusion detection \<br clea=
r=3D"none">&gt; +system for Unix that uses cryptographic checksums of files=
 to \<br clear=3D"none">&gt; +detect modifications, and allows you to trace=
: what changes have \<br clear=3D"none">&gt; +occured in your system, when =
these changes have occured, and who \<br clear=3D"none">&gt; +was logged in=
to the system at the respective time."<br clear=3D"none">&gt; +<br clear=3D=
"none">&gt; +HOMEPAGE =3D "<a shape=3D"rect" href=3D"http://la-samhna.de/sa=
mhain/" target=3D"_blank">http://la-samhna.de/samhain/</a>"<br clear=3D"non=
e">&gt; +SECTION =3D "Filesystem"<br clear=3D"none">&gt; +<br clear=3D"none=
">&gt; +SRC_URI =3D "<a shape=3D"rect" href=3D"http://la-samhna.de/samhain/=
samhain-current.tar.gz;extract=3Dsamhain-3.1.3.tar.gz" target=3D"_blank">ht=
tp://la-samhna.de/samhain/samhain-current.tar.gz;extract=3Dsamhain-3.1.3.ta=
r.gz </a>\<br clear=3D"none">&gt; +&nbsp;  file://0001-Makefile.in-error-fi=
x.patch"<br clear=3D"none">&gt; +SRC_URI[md5sum] =3D "64572a4dbfdc8065d6e9f=
7ca0eab0a34"<br clear=3D"none">&gt; +SRC_URI[sha256sum] =3D "c234afaf9ba3c6=
b7d240858b74423f935185de66e996405b3016ec4a288a7e1e"<br clear=3D"none">&gt; =
+LICENSE =3D "GPLv2"<br clear=3D"none">&gt; +LIC_FILES_CHKSUM =3D "file://L=
ICENSE;md5=3D8ca43cbc842c2336e835926c2166c28b"<br clear=3D"none">&gt; +<br =
clear=3D"none">&gt; +DEPENDS =3D "libpthread-stubs acl zlib attr"<br clear=
=3D"none">&gt; +inherit autotools-brokensep pkgconfig<br clear=3D"none">&gt=
; +<br clear=3D"none">&gt; +do_unpack2() {<br clear=3D"none">&gt; +&nbsp; &=
nbsp; cd ${WORKDIR}<br clear=3D"none">&gt; +&nbsp; &nbsp; tar zxvf ${PN}-${=
PV}.tar.gz<br clear=3D"none">&gt; +}<br clear=3D"none">&gt; +<br clear=3D"n=
one">&gt; +S =3D "${WORKDIR}/${BP}"<br clear=3D"none">&gt; +<br clear=3D"no=
ne">&gt; +addtask unpack2 after do_unpack before do_patch<br clear=3D"none"=
>&gt; +do_configure() {<br clear=3D"none">&gt; +&nbsp; &nbsp; export CONFIG=
_SITE=3D./config-site.${BP}<br clear=3D"none">&gt; +&nbsp; &nbsp; ./configu=
re \<br clear=3D"none">&gt; +&nbsp; &nbsp; &nbsp; &nbsp; --host=3D${HOST_SY=
S} \<br clear=3D"none">&gt; +&nbsp; &nbsp; &nbsp; &nbsp; --build=3D${BUILD_=
SYS} \<br clear=3D"none">&gt; +&nbsp; &nbsp; &nbsp; &nbsp; --prefix=3D${pre=
fix} \<br clear=3D"none">&gt; +&nbsp; &nbsp; &nbsp; &nbsp; --sbindir=3D${sb=
indir} \<br clear=3D"none">&gt; +&nbsp; &nbsp; &nbsp; &nbsp; --mandir=3D${m=
andir} \<br clear=3D"none">&gt; +&nbsp; &nbsp; &nbsp; &nbsp; --sysconfdir=
=3D${sysconfdir} \<br clear=3D"none">&gt; +&nbsp; &nbsp; &nbsp; &nbsp; --lo=
calstatedir=3D${localstatedir} \<br clear=3D"none">&gt; +&nbsp; &nbsp; &nbs=
p; &nbsp; --with-config-file=3D/etc/samhain/samhainrc \<br clear=3D"none">&=
gt; +&nbsp; &nbsp; &nbsp; &nbsp; --with-state-dir=3D/var/samhain \<br clear=
=3D"none">&gt; +&nbsp; &nbsp; &nbsp; &nbsp; --with-html-file=3D/var/samhain=
/samhain.html \<br clear=3D"none">&gt; +&nbsp; &nbsp; &nbsp; &nbsp; --with-=
data-file=3D/var/samhain/samhain.data \<br clear=3D"none">&gt; +&nbsp; &nbs=
p; &nbsp; &nbsp; --with-pid-file=3D/var/samhain/samhain.pid \<br clear=3D"n=
one">&gt; +&nbsp; &nbsp; &nbsp; &nbsp; --with-log-file=3D/var/samhain/samha=
in.log \<br clear=3D"none">&gt; +&nbsp; &nbsp; &nbsp; &nbsp; --enable-login=
-watch \<br clear=3D"none">&gt; +&nbsp; &nbsp; &nbsp; &nbsp; --disable-khid=
e \<br clear=3D"none">&gt; +&nbsp; &nbsp; &nbsp; &nbsp; --enable-suidcheck =
\<br clear=3D"none">&gt; +&nbsp; &nbsp; &nbsp; &nbsp; --with-trusted=3D0<br=
 clear=3D"none">&gt; +}<br clear=3D"none">&gt; +<br clear=3D"none">&gt; +do=
_install() {<br clear=3D"none">&gt; +&nbsp; &nbsp; install -d -m 755 ${D}/v=
ar/samhain<br clear=3D"none">&gt; +&nbsp; &nbsp; install -d&nbsp; ${D}/${ma=
ndir}<br clear=3D"none">&gt; +&nbsp; &nbsp; oe_runmake DESTDIR=3D${D} insta=
ll-program install-man install-data<br clear=3D"none">&gt; +&nbsp; &nbsp; c=
hmod -R a+r ${D}/${mandir}<br clear=3D"none">&gt; +&nbsp; &nbsp; install -d=
 ${D}/etc/samhain<br clear=3D"none">&gt; +&nbsp; &nbsp; install -c -m 644&n=
bsp; samhainrc.linux ${D}/etc/samhain/samhainrc<br clear=3D"none">&gt; +}<b=
r clear=3D"none">&gt; -- <br clear=3D"none">&gt; 1.8.4.2</div><br clear=3D"=
none">&gt; <br clear=3D"none">-- <br clear=3D"none">-Joe MacDonald.<br clea=
r=3D"none">:wq<br><div class=3D"yqt9947270380" id=3D"yqtfd27031">-- <br cle=
ar=3D"none">_______________________________________________<br clear=3D"non=
e">yocto mailing list<br clear=3D"none"><a shape=3D"rect" ymailto=3D"mailto=
:yocto@yoctoproject.org" href=3D"mailto:yocto@yoctoproject.org">yocto@yocto=
project.org</a><br clear=3D"none"><a shape=3D"rect" href=3D"https://lists.y=
octoproject.org/listinfo/yocto" target=3D"_blank">https://lists.yoctoprojec=
t.org/listinfo/yocto</a><br clear=3D"none"></div><br><br></div>  </div> </d=
iv>  </div> </div></body></html>

------=_Part_5058799_1791037713.1418282511473--
