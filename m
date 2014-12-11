Return-Path: <vaduvajanalexandru@yahoo.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 66C85E0082F; Wed, 10 Dec 2014 23:51:43 -0800 (PST)
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
	*      [98.138.91.44 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from nm4-vm1.bullet.mail.ne1.yahoo.com
	(nm4-vm1.bullet.mail.ne1.yahoo.com [98.138.91.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 283BAE00344
	for <yocto@yoctoproject.org>; Wed, 10 Dec 2014 23:51:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
	t=1418284291; bh=hIyHm8myj8L6RXhPKw14exzkgkFCwTb1CWDhxR25EJk=;
	h=Date:From:Reply-To:To:Cc:In-Reply-To:References:Subject:From:Subject;
	b=eQDlVm5yjfCxVmiOnrqmybklrP3YNPVr/lgNZwwrcM+dtfZa4ds4+JkdqL4KaqYWovZIJw7GrsD1x8NHtq/ZKTey4uvcDZtVAI79Gj+xAXJeYnTpgZULneyGLpRklLxIhgVcX9+cPrbI32ncU4Pb78dijYK9ln1Kr7mjCxWn4Fry3GxfbUMG2DQXDNCBkbzplrCvAnt0ovsdmnYEpQERMuXNAXDRMhGEjA9Lq28dHax4T5rw/bz7MJlpl6KoirimwtbQ01qq6NQtyp5ULsQZHEw1AeVbwM9k+EVrOkXj1sxM9RDaEhNJo9yb7Se0+H5cGF79KfHjmI+fyoPEBpzC8w==
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=s2048; d=yahoo.com;
	b=IbfumLVWS1LWCz5LHrLyqiuBqeM1XISvNQqVdBlKCHYpx3tLMGON6yQu65qmACCYFLH0zt5YShxU80VVJgTsi7qLUqd4jbV/LXkS3B4OhW4WEVN5rKxRbXRPCX+cJXv5pHSZGU1xT6blQjMsojC+o86+zH8wuPoQUiabw+LF7+7gfIwSYualoippKSKGhRmuUOFJP0JGj3i+gggc6xEqPUI3C4c+nc++xXmqQaL9SJFgU7l2Noy8XfndsOvJnkXm/NrkuAOF+Ie3b5x3lgbQHbnajtIdm9naF1UY2yNm9FZJUPi5UZ8QHOMvwaPBIT5nhaCdmeBYjK5XIayX87lpXg==;
Received: from [98.138.100.116] by nm4.bullet.mail.ne1.yahoo.com with NNFMP;
	11 Dec 2014 07:51:31 -0000
Received: from [98.138.89.195] by tm107.bullet.mail.ne1.yahoo.com with NNFMP;
	11 Dec 2014 07:51:31 -0000
Received: from [127.0.0.1] by omp1053.mail.ne1.yahoo.com with NNFMP;
	11 Dec 2014 07:51:31 -0000
X-Yahoo-Newman-Property: ymail-3
X-Yahoo-Newman-Id: 327207.39093.bm@omp1053.mail.ne1.yahoo.com
X-YMail-OSG: oo8IhBMVM1m50xcTodJU2cgmb_2bH46R1n2GQwebL76HNA.bEuwWwh4AyAdwYb2
	BHxjGKkxdpp9nUPmeNNT23KK0ynfSQtBhVjPhCE5uTX4Y91kUNTphPML8Te2.apVFWSCLlzId1U5
	TSParqbzCPA92m.hg.1_TnBuxfDVg7xy4VeqlYhrMsdx9Xd12StIVxjj5cZEiReqqJhrG.E5FLJF
	ySQ1L3gFlZSxd_DhbNyNIZTS.sLxaR.mU0uass0KLQ74sZLg5xXQYtfWCHb938XH3I0w7MObEJcn
	RBXB49Dd70j2pK8eOHuULBsTmMUgcNdEMa7QGRwdPoS_LCDWAyWehK.uiw_Vx0vArysw2rYzUASh
	COs2lrT6GWwcObVDjHOpNk.OjaOOg7EDcaNh7PotJD4tzFfu7PO1EFeZ4kUyoohxPnMdqzhbxQ.T
	7riuKEIGNaP07LUZHMNNeleQpLzXbb3O_2W_RwWb0u.ksbXFOFrT5d5cA2UnWVpvzgqz99Juk6WF
	hAoOs8xMmCAD3K35gzS16Dti3NQvDV_StUo2kfLxTU_.brLGk_eM0OGjYfwcBDcT1xbPSd2zU5lj
	EwN39aGskLvgGuD_mjuJQzWZyEKVg9ImvqpM9fWeK.5fkuECdUhU91mT3HotNCFeaQVg13f3GPjJF
Received: by 98.138.105.218; Thu, 11 Dec 2014 07:51:30 +0000 
Date: Thu, 11 Dec 2014 07:51:30 +0000 (UTC)
From: Alexandru Vaduva <vaduvajanalexandru@yahoo.com>
To: Joe MacDonald <Joe_MacDonald@mentor.com>, 
	Li xin <lixin.fnst@cn.fujitsu.com>
Message-ID: <745801400.5088417.1418284290520.JavaMail.yahoo@jws100150.mail.ne1.yahoo.com>
In-Reply-To: <1077253035.5058800.1418282511482.JavaMail.yahoo@jws10079.mail.ne1.yahoo.com>
References: <20141211004713.GC4102@mentor.com>
	<1077253035.5058800.1418282511482.JavaMail.yahoo@jws10079.mail.ne1.yahoo.com>
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
X-List-Received-Date: Thu, 11 Dec 2014 07:51:43 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_5088416_1523336569.1418284290512"

------=_Part_5088416_1523336569.1418284290512
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Now I did. :D=20

     On Thursday, December 11, 2014 9:21 AM, Alexandru Vaduva <vaduvajanale=
xandru@yahoo.com> wrote:
  =20

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


   =20

   

------=_Part_5088416_1523336569.1418284290512
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><body><div style=3D"color:#000; background-color:#fff; font-family:He=
lveticaNeue, Helvetica Neue, Helvetica, Arial, Lucida Grande, sans-serif;fo=
nt-size:12px"><div dir=3D"ltr" id=3D"yui_3_16_0_1_1418140559116_257323"><sp=
an>Now I did. :D</span></div> <div class=3D"qtdSeparateBR"><br><br></div><d=
iv style=3D"display: block;" class=3D"yahoo_quoted"> <div style=3D"font-fam=
ily: HelveticaNeue, Helvetica Neue, Helvetica, Arial, Lucida Grande, sans-s=
erif; font-size: 12px;"> <div style=3D"font-family: HelveticaNeue, Helvetic=
a Neue, Helvetica, Arial, Lucida Grande, sans-serif; font-size: 16px;"> <di=
v dir=3D"ltr"> <font face=3D"Arial" size=3D"2"> On Thursday, December 11, 2=
014 9:21 AM, Alexandru Vaduva &lt;vaduvajanalexandru@yahoo.com&gt; wrote:<b=
r> </font> </div>  <br><br> <div class=3D"y_msg_container"><div id=3D"yiv98=
08690034"><div><div style=3D"color:#000;background-color:#fff;font-family:H=
elveticaNeue, Helvetica Neue, Helvetica, Arial, Lucida Grande, sans-serif;f=
ont-size:12px;"><div dir=3D"ltr" id=3D"yiv9808690034yui_3_16_0_1_1418112645=
012_288665"><span id=3D"yiv9808690034yui_3_16_0_1_1418112645012_288684">Tha=
nks Joe,</span></div><br clear=3D"none"><div dir=3D"ltr" id=3D"yiv980869003=
4yui_3_16_0_1_1418112645012_288690"><span id=3D"yiv9808690034yui_3_16_0_1_1=
418112645012_288678">I added Armin for to this discussion as a head-up rega=
rding those updates, since it was the one working on samhain recipe on meta=
-security.</span></div><div dir=3D"ltr" id=3D"yiv9808690034yui_3_16_0_1_141=
8112645012_288681"><br clear=3D"none"><span id=3D"yiv9808690034yui_3_16_0_1=
_1418112645012_288678"></span></div><div dir=3D"ltr" id=3D"yiv9808690034yui=
_3_16_0_1_1418112645012_288682"><br clear=3D"none"><span id=3D"yiv980869003=
4yui_3_16_0_1_1418112645012_288678"></span></div><div dir=3D"ltr" id=3D"yiv=
9808690034yui_3_16_0_1_1418112645012_288683"><span id=3D"yiv9808690034yui_3=
_16_0_1_1418112645012_288678">Alex Vaduva</span></div> <div class=3D"yiv980=
8690034qtdSeparateBR"><br clear=3D"none"><br clear=3D"none"></div><div clas=
s=3D"yiv9808690034yahoo_quoted" style=3D"display:block;"> <div style=3D"fon=
t-family:HelveticaNeue, Helvetica Neue, Helvetica, Arial, Lucida Grande, sa=
ns-serif;font-size:12px;"> <div style=3D"font-family:HelveticaNeue, Helveti=
ca Neue, Helvetica, Arial, Lucida Grande, sans-serif;font-size:16px;"> <div=
 class=3D"yiv9808690034yqt0483378113" id=3D"yiv9808690034yqtfd49968"><div d=
ir=3D"ltr"> <font face=3D"Arial" size=3D"2"> On Thursday, December 11, 2014=
 2:48 AM, Joe MacDonald &lt;Joe_MacDonald@mentor.com&gt; wrote:<br clear=3D=
"none"> </font> </div>  <br clear=3D"none"><br clear=3D"none"> <div class=
=3D"yiv9808690034y_msg_container">[[yocto] [meta-cgl][PATCH] samhain: add n=
ew recipe] On 14.12.10 (Wed 16:33) Li xin wrote:<br clear=3D"none"><br clea=
r=3D"none">&gt; Samhain is an open source file integrity and intrusion dete=
ction<br clear=3D"none">&gt; system for Unix that uses cryptographic checks=
ums of files to<br clear=3D"none">&gt; detect modifications, and allows you=
 to trace: what changes have<br clear=3D"none">&gt; occured in your system,=
 when these changes have occured, and who<br clear=3D"none">&gt; was logged=
 into the system at the respective time.<br clear=3D"none"><br clear=3D"non=
e">Samhain is already in meta-security at the same version (though without<=
br clear=3D"none">the patch you've included here.)<br clear=3D"none"><br cl=
ear=3D"none">Since meta-cgl depends on meta-security today, I think you pro=
bably<br clear=3D"none">should submit whatever updates are appropriate to t=
he samhain recipe<br clear=3D"none">to meta-security, so as to avoid duplic=
ating / diverging recipes.<br clear=3D"none"><br clear=3D"none">-J.<div cla=
ss=3D"yiv9808690034yqt9947270380" id=3D"yiv9808690034yqtfd57476"><br clear=
=3D"none"><br clear=3D"none">&gt; <br clear=3D"none">&gt; Signed-off-by: Li=
 Xin &lt;<a rel=3D"nofollow" shape=3D"rect" ymailto=3D"mailto:lixin.fnst@cn=
.fujitsu.com" target=3D"_blank" href=3D"mailto:lixin.fnst@cn.fujitsu.com">l=
ixin.fnst@cn.fujitsu.com</a>&gt;<br clear=3D"none">&gt; ---<br clear=3D"non=
e">&gt;&nbsp; .../samhain/0001-Makefile.in-error-fix.patch&nbsp; &nbsp; &nb=
sp;  | 31 ++++++++++++<br clear=3D"none">&gt;&nbsp; .../samhain/samhain/con=
fig-site.samhain-3.1.3&nbsp; &nbsp; &nbsp; |&nbsp; 2 +<br clear=3D"none">&g=
t;&nbsp; .../recipes-cgl/samhain/samhain_3.1.3.bb&nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp;  | 58 ++++++++++++++++++++++<br clear=3D"none">&gt;&nbsp; 3 files =
changed, 91 insertions(+)<br clear=3D"none">&gt;&nbsp; create mode 100644 m=
eta-cgl-common/recipes-cgl/samhain/samhain/0001-Makefile.in-error-fix.patch=
<br clear=3D"none">&gt;&nbsp; create mode 100644 meta-cgl-common/recipes-cg=
l/samhain/samhain/config-site.samhain-3.1.3<br clear=3D"none">&gt;&nbsp; cr=
eate mode 100644 meta-cgl-common/recipes-cgl/samhain/samhain_3.1.3.bb<br cl=
ear=3D"none">&gt; <br clear=3D"none">&gt; diff --git a/meta-cgl-common/reci=
pes-cgl/samhain/samhain/0001-Makefile.in-error-fix.patch b/meta-cgl-common/=
recipes-cgl/samhain/samhain/0001-Makefile.in-error-fix.patch<br clear=3D"no=
ne">&gt; new file mode 100644<br clear=3D"none">&gt; index 0000000..cd646f6=
<br clear=3D"none">&gt; --- /dev/null<br clear=3D"none">&gt; +++ b/meta-cgl=
-common/recipes-cgl/samhain/samhain/0001-Makefile.in-error-fix.patch<br cle=
ar=3D"none">&gt; @@ -0,0 +1,31 @@<br clear=3D"none">&gt; +From a9ce38c56bf7=
072f292d685a48b912e6e59260a6 Mon Sep 17 00:00:00 2001<br clear=3D"none">&gt=
; +From: Li xin &lt;<a rel=3D"nofollow" shape=3D"rect" ymailto=3D"mailto:li=
xin.fnst@cn.fujitsu.com" target=3D"_blank" href=3D"mailto:lixin.fnst@cn.fuj=
itsu.com">lixin.fnst@cn.fujitsu.com</a>&gt;<br clear=3D"none">&gt; +Date: W=
ed, 10 Dec 2014 14:45:28 +0900<br clear=3D"none">&gt; +Subject: [PATCH] Mak=
efile.in: error fix<br clear=3D"none">&gt; +<br clear=3D"none">&gt; +error:=
File '/usr/sbin/samhain' from samhain was already stripped,<br clear=3D"non=
e">&gt; +this will prevent future debugging!<br clear=3D"none">&gt; +<br cl=
ear=3D"none">&gt; +Upstream-Status: pending<br clear=3D"none">&gt; +<br cle=
ar=3D"none">&gt; +Signed-off-by: Li Xin &lt;<a rel=3D"nofollow" shape=3D"re=
ct" ymailto=3D"mailto:lixin.fnst@cn.fujitsu.com" target=3D"_blank" href=3D"=
mailto:lixin.fnst@cn.fujitsu.com">lixin.fnst@cn.fujitsu.com</a>&gt;<br clea=
r=3D"none">&gt; +---<br clear=3D"none">&gt; + Makefile.in | 2 +-<br clear=
=3D"none">&gt; + 1 file changed, 1 insertion(+), 1 deletion(-)<br clear=3D"=
none">&gt; +<br clear=3D"none">&gt; +diff --git a/Makefile.in b/Makefile.in=
<br clear=3D"none">&gt; +index b1904d9..000de49 100644<br clear=3D"none">&g=
t; +--- a/Makefile.in<br clear=3D"none">&gt; ++++ b/Makefile.in<br clear=3D=
"none">&gt; +@@ -54,7 +54,7 @@ selectconfig =3D @selectconfig@<br clear=3D"=
none">&gt; + top_builddir =3D .<br clear=3D"none">&gt; + <br clear=3D"none"=
>&gt; + INSTALL =3D @INSTALL@<br clear=3D"none">&gt; +-INSTALL_PROGRAM =3D =
@INSTALL@ -s -m 700<br clear=3D"none">&gt; ++INSTALL_PROGRAM =3D @INSTALL@ =
-m 700<br clear=3D"none">&gt; + INSTALL_SHELL =3D @INSTALL@ -m 700<br clear=
=3D"none">&gt; + INSTALL_DATA =3D @INSTALL@ -m 600<br clear=3D"none">&gt; +=
 INSTALL_MAN =3D @INSTALL@ -m 644<br clear=3D"none">&gt; +-- <br clear=3D"n=
one">&gt; +1.8.4.2<br clear=3D"none">&gt; +<br clear=3D"none">&gt; diff --g=
it a/meta-cgl-common/recipes-cgl/samhain/samhain/config-site.samhain-3.1.3 =
b/meta-cgl-common/recipes-cgl/samhain/samhain/config-site.samhain-3.1.3<br =
clear=3D"none">&gt; new file mode 100644<br clear=3D"none">&gt; index 00000=
00..2ce3769<br clear=3D"none">&gt; --- /dev/null<br clear=3D"none">&gt; +++=
 b/meta-cgl-common/recipes-cgl/samhain/samhain/config-site.samhain-3.1.3<br=
 clear=3D"none">&gt; @@ -0,0 +1,2 @@<br clear=3D"none">&gt; +ssp_cv_lib=3Dn=
o<br clear=3D"none">&gt; +sh_cv_va_copy=3Dyes<br clear=3D"none">&gt; diff -=
-git a/meta-cgl-common/recipes-cgl/samhain/samhain_3.1.3.bb b/meta-cgl-comm=
on/recipes-cgl/samhain/samhain_3.1.3.bb<br clear=3D"none">&gt; new file mod=
e 100644<br clear=3D"none">&gt; index 0000000..22c8577<br clear=3D"none">&g=
t; --- /dev/null<br clear=3D"none">&gt; +++ b/meta-cgl-common/recipes-cgl/s=
amhain/samhain_3.1.3.bb<br clear=3D"none">&gt; @@ -0,0 +1,58 @@<br clear=3D=
"none">&gt; +SUMMARY =3D "File Integrity and Intrusion Detection System"<br=
 clear=3D"none">&gt; +DESCRIPTION =3D "Samhain is an open source file integ=
rity and intrusion detection \<br clear=3D"none">&gt; +system for Unix that=
 uses cryptographic checksums of files to \<br clear=3D"none">&gt; +detect =
modifications, and allows you to trace: what changes have \<br clear=3D"non=
e">&gt; +occured in your system, when these changes have occured, and who \=
<br clear=3D"none">&gt; +was logged into the system at the respective time.=
"<br clear=3D"none">&gt; +<br clear=3D"none">&gt; +HOMEPAGE =3D "<a rel=3D"=
nofollow" shape=3D"rect" target=3D"_blank" href=3D"http://la-samhna.de/samh=
ain/">http://la-samhna.de/samhain/</a>"<br clear=3D"none">&gt; +SECTION =3D=
 "Filesystem"<br clear=3D"none">&gt; +<br clear=3D"none">&gt; +SRC_URI =3D =
"<a rel=3D"nofollow" shape=3D"rect" target=3D"_blank" href=3D"http://la-sam=
hna.de/samhain/samhain-current.tar.gz;extract=3Dsamhain-3.1.3.tar.gz">http:=
//la-samhna.de/samhain/samhain-current.tar.gz;extract=3Dsamhain-3.1.3.tar.g=
z </a>\<br clear=3D"none">&gt; +&nbsp;  file://0001-Makefile.in-error-fix.p=
atch"<br clear=3D"none">&gt; +SRC_URI[md5sum] =3D "64572a4dbfdc8065d6e9f7ca=
0eab0a34"<br clear=3D"none">&gt; +SRC_URI[sha256sum] =3D "c234afaf9ba3c6b7d=
240858b74423f935185de66e996405b3016ec4a288a7e1e"<br clear=3D"none">&gt; +LI=
CENSE =3D "GPLv2"<br clear=3D"none">&gt; +LIC_FILES_CHKSUM =3D "file://LICE=
NSE;md5=3D8ca43cbc842c2336e835926c2166c28b"<br clear=3D"none">&gt; +<br cle=
ar=3D"none">&gt; +DEPENDS =3D "libpthread-stubs acl zlib attr"<br clear=3D"=
none">&gt; +inherit autotools-brokensep pkgconfig<br clear=3D"none">&gt; +<=
br clear=3D"none">&gt; +do_unpack2() {<br clear=3D"none">&gt; +&nbsp; &nbsp=
; cd ${WORKDIR}<br clear=3D"none">&gt; +&nbsp; &nbsp; tar zxvf ${PN}-${PV}.=
tar.gz<br clear=3D"none">&gt; +}<br clear=3D"none">&gt; +<br clear=3D"none"=
>&gt; +S =3D "${WORKDIR}/${BP}"<br clear=3D"none">&gt; +<br clear=3D"none">=
&gt; +addtask unpack2 after do_unpack before do_patch<br clear=3D"none">&gt=
; +do_configure() {<br clear=3D"none">&gt; +&nbsp; &nbsp; export CONFIG_SIT=
E=3D./config-site.${BP}<br clear=3D"none">&gt; +&nbsp; &nbsp; ./configure \=
<br clear=3D"none">&gt; +&nbsp; &nbsp; &nbsp; &nbsp; --host=3D${HOST_SYS} \=
<br clear=3D"none">&gt; +&nbsp; &nbsp; &nbsp; &nbsp; --build=3D${BUILD_SYS}=
 \<br clear=3D"none">&gt; +&nbsp; &nbsp; &nbsp; &nbsp; --prefix=3D${prefix}=
 \<br clear=3D"none">&gt; +&nbsp; &nbsp; &nbsp; &nbsp; --sbindir=3D${sbindi=
r} \<br clear=3D"none">&gt; +&nbsp; &nbsp; &nbsp; &nbsp; --mandir=3D${mandi=
r} \<br clear=3D"none">&gt; +&nbsp; &nbsp; &nbsp; &nbsp; --sysconfdir=3D${s=
ysconfdir} \<br clear=3D"none">&gt; +&nbsp; &nbsp; &nbsp; &nbsp; --localsta=
tedir=3D${localstatedir} \<br clear=3D"none">&gt; +&nbsp; &nbsp; &nbsp; &nb=
sp; --with-config-file=3D/etc/samhain/samhainrc \<br clear=3D"none">&gt; +&=
nbsp; &nbsp; &nbsp; &nbsp; --with-state-dir=3D/var/samhain \<br clear=3D"no=
ne">&gt; +&nbsp; &nbsp; &nbsp; &nbsp; --with-html-file=3D/var/samhain/samha=
in.html \<br clear=3D"none">&gt; +&nbsp; &nbsp; &nbsp; &nbsp; --with-data-f=
ile=3D/var/samhain/samhain.data \<br clear=3D"none">&gt; +&nbsp; &nbsp; &nb=
sp; &nbsp; --with-pid-file=3D/var/samhain/samhain.pid \<br clear=3D"none">&=
gt; +&nbsp; &nbsp; &nbsp; &nbsp; --with-log-file=3D/var/samhain/samhain.log=
 \<br clear=3D"none">&gt; +&nbsp; &nbsp; &nbsp; &nbsp; --enable-login-watch=
 \<br clear=3D"none">&gt; +&nbsp; &nbsp; &nbsp; &nbsp; --disable-khide \<br=
 clear=3D"none">&gt; +&nbsp; &nbsp; &nbsp; &nbsp; --enable-suidcheck \<br c=
lear=3D"none">&gt; +&nbsp; &nbsp; &nbsp; &nbsp; --with-trusted=3D0<br clear=
=3D"none">&gt; +}<br clear=3D"none">&gt; +<br clear=3D"none">&gt; +do_insta=
ll() {<br clear=3D"none">&gt; +&nbsp; &nbsp; install -d -m 755 ${D}/var/sam=
hain<br clear=3D"none">&gt; +&nbsp; &nbsp; install -d&nbsp; ${D}/${mandir}<=
br clear=3D"none">&gt; +&nbsp; &nbsp; oe_runmake DESTDIR=3D${D} install-pro=
gram install-man install-data<br clear=3D"none">&gt; +&nbsp; &nbsp; chmod -=
R a+r ${D}/${mandir}<br clear=3D"none">&gt; +&nbsp; &nbsp; install -d ${D}/=
etc/samhain<br clear=3D"none">&gt; +&nbsp; &nbsp; install -c -m 644&nbsp; s=
amhainrc.linux ${D}/etc/samhain/samhainrc<br clear=3D"none">&gt; +}<br clea=
r=3D"none">&gt; -- <br clear=3D"none">&gt; 1.8.4.2</div><br clear=3D"none">=
&gt; <br clear=3D"none">-- <br clear=3D"none">-Joe MacDonald.<br clear=3D"n=
one">:wq<br clear=3D"none"><div class=3D"yiv9808690034yqt9947270380" id=3D"=
yiv9808690034yqtfd27031">-- <br clear=3D"none">____________________________=
___________________<br clear=3D"none">yocto mailing list<br clear=3D"none">=
<a rel=3D"nofollow" shape=3D"rect" ymailto=3D"mailto:yocto@yoctoproject.org=
" target=3D"_blank" href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproje=
ct.org</a><br clear=3D"none"><a rel=3D"nofollow" shape=3D"rect" target=3D"_=
blank" href=3D"https://lists.yoctoproject.org/listinfo/yocto">https://lists=
.yoctoproject.org/listinfo/yocto</a><br clear=3D"none"></div><br clear=3D"n=
one"><br clear=3D"none"></div>  </div></div><div class=3D"yiv9808690034yqt0=
483378113" id=3D"yiv9808690034yqtfd11705"> </div></div><div class=3D"yiv980=
8690034yqt0483378113" id=3D"yiv9808690034yqtfd92010">  </div></div><div cla=
ss=3D"yiv9808690034yqt0483378113" id=3D"yiv9808690034yqtfd51373"> </div></d=
iv></div></div><br><br></div>  </div> </div>  </div> </div></body></html>

------=_Part_5088416_1523336569.1418284290512--
