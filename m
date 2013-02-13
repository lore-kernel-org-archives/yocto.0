Return-Path: <scancool@yahoo.com>
Received: from nm17.bullet.mail.bf1.yahoo.com (nm17.bullet.mail.bf1.yahoo.com
	[98.139.212.176])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 9E968E01305
	for <yocto@yoctoproject.org>; Wed, 13 Feb 2013 15:06:11 -0800 (PST)
Received: from [98.139.215.143] by nm17.bullet.mail.bf1.yahoo.com with NNFMP;
	13 Feb 2013 23:06:10 -0000
Received: from [98.139.212.242] by tm14.bullet.mail.bf1.yahoo.com with NNFMP;
	13 Feb 2013 23:06:10 -0000
Received: from [127.0.0.1] by omp1051.mail.bf1.yahoo.com with NNFMP;
	13 Feb 2013 23:06:10 -0000
X-Yahoo-Newman-Property: ymail-3
X-Yahoo-Newman-Id: 495578.89590.bm@omp1051.mail.bf1.yahoo.com
Received: (qmail 79020 invoked by uid 60001); 13 Feb 2013 23:06:10 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s1024;
	t=1360796770; bh=4A58MfeEGa7E8hSQfsHiqplhLbECvQ1qulttQSyOl+Q=;
	h=X-YMail-OSG:Received:X-Rocket-MIMEInfo:X-Mailer:Message-ID:Date:From:Subject:To:In-Reply-To:MIME-Version:Content-Type;
	b=lP0wQ/lIZzBoFeKR3WDj4D+FC0GDwUBW+vflpFn+8iEqrMCCGK883QNBLFonQaTGCo61EWwBmyXtkd0W1AT4MqCf+05vyRMXNx0X8pUlURxKwzrRXWu1LZi2jSrPSnaDkW9IUqJRX+5NkAStJKm3ZLMPC7ymd3o7zNbXL8l15yo=
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=s1024; d=yahoo.com;
	h=X-YMail-OSG:Received:X-Rocket-MIMEInfo:X-Mailer:Message-ID:Date:From:Subject:To:In-Reply-To:MIME-Version:Content-Type;
	b=18xKnNQoLQsHLLY4slGqDWfUvoYh8zSyAzjBCDnJqKxLLh2PkTcgSBicszAwm2yyqzeOUx1+yCVy9FAiIbAaHisKQ8Z9uJAGG/tOiX3Pr3ITMIbh58wa3udOW0u5CrrNDwcsUOj2Jd7S9MYuQpUlYM609m4ubBk+mQJUH1ImDTM=;
X-YMail-OSG: NUJPUksVM1lKhBmukFQ2E3gcyd755HeIVQ9yPZWbw7t9iJv
	f4PBudC0KRCVseeNQaPj8Pdj6fJCW6YBIZX161RWrBkw.ACyX_eWaQIbYqek
	QLZ3wJVgYNPTlFoiVzCCeRusfhf9bsBaX0UXRwJXAxdn.j860m_h7TdHPBVB
	388NgOHJ02rbdeuZHheiVV_vIDaaSYsbjDq5smbCAswnVCVBU6u_UEuGiShK
	5u1xndiF5fF.Vjn4.1C28W7ga9hYOrd9NDIAA5CCrUhn4lhY1zSyCbHsNYE.
	hn7..MyJCEVr5J6_yBrND5EccEkMH1EDgM3JtMfCq_T8LKW1saxFJKDFCH8Z
	obbANBmT6eqaVVbcTkqhF88C.hFlMHkKcjO4o5I1hyopqYn5VCYgZ3CubNFW
	phjJV6XQntaFTpkYnr1hypQxzS.CH.frVfX30MFDO44LlLwKb3zHdrsMBH8f
	7aYXX1R.c1vhUUgBp5wA6dv54ADsSKJ8brWUDHVWu9MjUWk5rUuo.BCXoPDi
	_36IUVlx9cuRVc1gpcu9Z.cpdY0fdH7hS8vpUk3bPTAuFchoVzUuXWXsnnsd
	4DF8O.xOa9FYWraFpdtS0VwhO1RyN5J9S.QpY_MwZ0hF4M6g1hnuUXcCDWSR
	3JbTDxTcgvkgWtM4KfoZyNG.ujNr8JCc_XfYxUl5D7a2aNtWRpQeTg5K4zo7
	RAxFSIOO2Dk4iMbjgNTiF3lHDYtY8EyMXi5aBDeDziCB1_Zp_vSna6DDCg4p
	B50WWRGGYmsK53OitTVS9C7CEejCmTCXhN0i_
Received: from [64.62.111.10] by web140004.mail.bf1.yahoo.com via HTTP;
	Wed, 13 Feb 2013 15:06:10 PST
X-Rocket-MIMEInfo: 001.001,
	SGkgaXQgd2FzIG15IHR5cGUsIEkgY291bGRudCBjb3B5IGFuZCBwYXN0ZSBzbyBJIHR5cGUgaXQgbXlzZWxmIG9uIA0KLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tbGF5ZXIuY29uZjotLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0NCiMgV2UgaGF2ZSBhIGNvbmYgYW5kIGNsYXNzZXMgZGlyZWN0b3J5LCBhZGQgdG8gQkJQQVRIDQpCQlBBVEggOj0gIiR7QkJQQVRIfToke0xBWUVSRElSfSINCg0KIyBXZSBoYXZlIGEgcGFja2FnZXMgZGlyZWN0b3J5LCBhZGQgdG8gQkJGSUxFUw0KQkJGSUxFUyABMAEBAQE-
X-Mailer: YahooMailClassic/15.1.2 YahooMailWebService/0.8.133.508
Message-ID: <1360796770.77290.YahooMailClassic@web140004.mail.bf1.yahoo.com>
Date: Wed, 13 Feb 2013 15:06:10 -0800 (PST)
From: Andre Bella <scancool@yahoo.com>
To: yocto@yoctoproject.org
In-Reply-To: <CA+gsK-rXpPD5YEPer-eObj7Kr4wuwP79mthG8hSHi2+=1X_G_w@mail.gmail.com>
MIME-Version: 1.0
Subject: Re: hob error
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 13 Feb 2013 23:06:12 -0000
Content-Type: multipart/alternative;
	boundary="-1563750066-1939549013-1360796770=:77290"

---1563750066-1939549013-1360796770=:77290
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable

Hi it was my type, I couldnt copy and paste so I type it myself on=20
------------------------------layer.conf:------------------------------
# We have a conf and classes directory, add to BBPATH
BBPATH :=3D "${BBPATH}:${LAYERDIR}"

# We have a packages directory, add to BBFILES
BBFILES :=3D "${BBFILES} ${LAYERDIR}/recipes-*/*/*.bb \
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 ${LAYERDIR}/recipes-*/*/*.bbappend"

BBFILE_COLLECTIONS +=3D "fsl-arm-extra"
BBFILE_PATTERN_fsl-arm-extra :=3D "^${LAYERDIR}/"
BBFILE_PRIORITY_fsl-arm-extra =3D "4"
---------------------------------------------------------------------------=
--

---------------------------bblayers.conf------------------------------
LCONF_VERSION =3D "4"

BSPDIR :=3D "${@os.path.abspath(os.path.dirname(d.getVar('FILE', True)) +=
=0A '/../..')}"

BBFILES ?=3D ""
BBLAYERS =3D " \
=A0 ${BSPDIR}/sources/poky/meta \
=A0 ${BSPDIR}/sources/poky/meta-yocto \
=A0 \
=A0 ${BSPDIR}/sources/meta-openembedded/meta-oe \
=A0 \
=A0 ${BSPDIR}/sources/meta-fsl-arm \
=A0 ${BSPDIR}/sources/meta-fsl-arm-extra \
=A0 ${BSPDIR}/sources/meta-fsl-demos \
"
---------------------------------------------------------------------------=
--------

--- On Wed, 2/13/13, Rudolf Streif <rstreif@linuxfoundation.org> wrote:

From: Rudolf Streif <rstreif@linuxfoundation.org>
Subject: Re: [yocto] hob error
To: "Andre Bella" <scancool@yahoo.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Wednesday, February 13, 2013, 2:21 PM

Hi Andre,
You may want to send the content for layer.conf and bblayers.conf.
However, you may have a typo if you copied and pasted the error message:=0A
${BBPATH}:/home/andre/fsl-community-bsp/soucers/meta-fsl-arm which triggere=
d exception Exception: variable BBPATH reference itself!
=0A
It says "soucers" where it should be "sources", I suppose.=0A
Rudi

=0AOn Wed, Feb 13, 2013 at 10:55 AM, Andre Bella <scancool@yahoo.com> wrote=
:
=0AHello,
I'm getting this error when I run hob,=20

Error
Unable to parse /home/andre/fsl-community-bsd/sources/meta-fsl-arm-extra/co=
nf/layer.conf:Failture expanding variable BBPATH, expression was ${BBPATH}:=
/home/andre/fsl-community-bsp/soucers/meta-fsl-arm which triggered exceptio=
n Exception: variable BBPATH reference itself!
=0A
what I'm trying to do is is add nano, vlc and gstreamer to the rootfs.


_______________________________________________
=0Ayocto mailing list
=0Ayocto@yoctoproject.org
=0Ahttps://lists.yoctoproject.org/listinfo/yocto
=0A



--=20
--=A0
Rudolf J. StreifDirector of Embedded Solutions=0AThe Linux Foundation
rudolf.streif@linux.com=0APhone: +1.619.631.5383Skype: rudolfstreifPGP: RSA=
 2048/2048 D6E7D28B=0A
Linux Foundation Events Schedule: =A0events.linuxfoundation.org
=0ALinux Foundation Training Schedule:=A0training.linuxfoundation.org

=0A=0A=0A

---1563750066-1939549013-1360796770=:77290
Content-Type: text/html; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable

<table cellspacing=3D"0" cellpadding=3D"0" border=3D"0" ><tr><td valign=3D"=
top" style=3D"font: inherit;">Hi it was my type, I couldnt copy and paste s=
o I type it myself on <br>------------------------------layer.conf:--------=
----------------------<br># We have a conf and classes directory, add to BB=
PATH<br>BBPATH :=3D "${BBPATH}:${LAYERDIR}"<br><br># We have a packages dir=
ectory, add to BBFILES<br>BBFILES :=3D "${BBFILES} ${LAYERDIR}/recipes-*/*/=
*.bb \<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
; ${LAYERDIR}/recipes-*/*/*.bbappend"<br><br>BBFILE_COLLECTIONS +=3D "fsl-a=
rm-extra"<br>BBFILE_PATTERN_fsl-arm-extra :=3D "^${LAYERDIR}/"<br>BBFILE_PR=
IORITY_fsl-arm-extra =3D "4"<br>-------------------------------------------=
----------------------------------<br><br>---------------------------bblaye=
rs.conf------------------------------<br>LCONF_VERSION =3D "4"<br><br>BSPDI=
R :=3D "${@os.path.abspath(os.path.dirname(d.getVar('FILE', True)) +=0A '/.=
./..')}"<br><br>BBFILES ?=3D ""<br>BBLAYERS =3D " \<br>&nbsp; ${BSPDIR}/sou=
rces/poky/meta \<br>&nbsp; ${BSPDIR}/sources/poky/meta-yocto \<br>&nbsp; \<=
br>&nbsp; ${BSPDIR}/sources/meta-openembedded/meta-oe \<br>&nbsp; \<br>&nbs=
p; ${BSPDIR}/sources/meta-fsl-arm \<br>&nbsp; ${BSPDIR}/sources/meta-fsl-ar=
m-extra \<br>&nbsp; ${BSPDIR}/sources/meta-fsl-demos \<br>"<br>------------=
-----------------------------------------------------------------------<br>=
<br>--- On <b>Wed, 2/13/13, Rudolf Streif <i>&lt;rstreif@linuxfoundation.or=
g&gt;</i></b> wrote:<br><blockquote style=3D"border-left: 2px solid rgb(16,=
 16, 255); margin-left: 5px; padding-left: 5px;"><br>From: Rudolf Streif &l=
t;rstreif@linuxfoundation.org&gt;<br>Subject: Re: [yocto] hob error<br>To: =
"Andre Bella" &lt;scancool@yahoo.com&gt;<br>Cc: "yocto@yoctoproject.org" &l=
t;yocto@yoctoproject.org&gt;<br>Date: Wednesday, February 13, 2013, 2:21 PM=
<br><br><div id=3D"yiv257398171"><div dir=3D"ltr">Hi
 Andre,<div><br></div><div style=3D"">You may want to send the content for =
layer.conf and bblayers.conf.</div><div style=3D""><br></div><div style=3D"=
">However, you may have a typo if you copied and pasted the error message:<=
/div>=0A<div style=3D""><br></div><div style=3D""><span style=3D"font-famil=
y:arial, sans-serif;font-size:13px;">${BBPATH}:/home/andre/fsl-</span><span=
 style=3D"font-family:arial, sans-serif;font-size:13px;">community-bsp/souc=
ers/meta-</span><span style=3D"font-family:arial, sans-serif;font-size:13px=
;">fsl-arm which triggered exception Exception: variable BBPATH reference i=
tself!</span><br>=0A</div><div style=3D""><span style=3D"font-family:arial,=
 sans-serif;font-size:13px;"><br></span></div><div style=3D""><span style=
=3D"font-family:arial, sans-serif;font-size:13px;">It says "soucers" where =
it should be "sources", I suppose.</span></div>=0A<div style=3D""><span sty=
le=3D"font-family:arial, sans-serif;font-size:13px;"><br></span></div><div =
style=3D""><span style=3D"font-family:arial, sans-serif;font-size:13px;">Ru=
di</span></div></div><div class=3D"yiv257398171gmail_extra"><br><br><div cl=
ass=3D"yiv257398171gmail_quote">=0AOn Wed, Feb 13, 2013 at 10:55 AM, Andre =
Bella <span dir=3D"ltr">&lt;<a rel=3D"nofollow" ymailto=3D"mailto:scancool@=
yahoo.com" target=3D"_blank" href=3D"/mc/compose?to=3Dscancool@yahoo.com">s=
cancool@yahoo.com</a>&gt;</span> wrote:<br><blockquote class=3D"yiv25739817=
1gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding=
-left:1ex;">=0A<table border=3D"0" cellpadding=3D"0" cellspacing=3D"0"><tbo=
dy><tr><td style=3D"font:inherit;" valign=3D"top">Hello,<br>I'm getting thi=
s error when I run hob, <br><br>Error<br>Unable to parse /home/andre/fsl-co=
mmunity-bsd/sources/meta-fsl-arm-extra/conf/layer.conf:Failture expanding v=
ariable BBPATH, expression was ${BBPATH}:/home/andre/fsl-community-bsp/souc=
ers/meta-fsl-arm which triggered exception Exception: variable BBPATH refer=
ence itself!<br>=0A<br>what I'm trying to do is is add nano, vlc and gstrea=
mer to the rootfs.<br><br></td></tr></tbody></table><br>___________________=
____________________________<br>=0Ayocto mailing list<br>=0A<a rel=3D"nofol=
low" ymailto=3D"mailto:yocto@yoctoproject.org" target=3D"_blank" href=3D"/m=
c/compose?to=3Dyocto@yoctoproject.org">yocto@yoctoproject.org</a><br>=0A<a =
rel=3D"nofollow" target=3D"_blank" href=3D"https://lists.yoctoproject.org/l=
istinfo/yocto">https://lists.yoctoproject.org/listinfo/yocto</a><br>=0A<br>=
</blockquote></div><br><br clear=3D"all"><div><br></div>-- <br>--&nbsp;<br>=
<font face=3D"arial, helvetica, sans-serif"><b>Rudolf J. Streif</b></font><=
div><font face=3D"arial, helvetica, sans-serif">Director of Embedded Soluti=
ons</font></div>=0A<div><font face=3D"arial, helvetica, sans-serif">The Lin=
ux Foundation</font></div><div><font face=3D"arial, helvetica, sans-serif">=
<br></font></div><div><a rel=3D"nofollow" ymailto=3D"mailto:rudolf.streif@l=
inux.com" target=3D"_blank" href=3D"/mc/compose?to=3Drudolf.streif@linux.co=
m"><font face=3D"arial, helvetica, sans-serif">rudolf.streif@linux.com</fon=
t></a></div>=0A<div><font face=3D"arial, helvetica, sans-serif">Phone: +1.6=
19.631.5383</font></div><div><font face=3D"arial, helvetica, sans-serif">Sk=
ype: rudolfstreif</font></div><div><font face=3D"arial, helvetica, sans-ser=
if">PGP: RSA 2048/2048 D6E7D28B</font></div>=0A<div><font face=3D"garamond,=
 serif"><br></font></div><div><font face=3D"garamond, serif"><span style=3D=
"border-collapse:collapse;color:rgb(102,102,102);font-family:arial, sans-se=
rif;font-size:13px;"><span style=3D"border-collapse:collapse;">Linux Founda=
tion Events Schedule: &nbsp;<a rel=3D"nofollow" target=3D"_blank" href=3D"h=
ttp://events.linuxfoundation.org/" style=3D"color:rgb(64,100,128);">events.=
linuxfoundation.org</a><br>=0ALinux Foundation Training Schedule:&nbsp;<a r=
el=3D"nofollow" target=3D"_blank" href=3D"http://training.linuxfoundation.o=
rg/" style=3D"color:rgb(64,100,128);">training.linuxfoundation.org</a></spa=
n><br></span></font></div><div><font face=3D"garamond, serif"><span style=
=3D"border-collapse:collapse;color:rgb(102,102,102);font-family:arial, sans=
-serif;font-size:13px;"><br>=0A</span></font></div>=0A</div>=0A</div></bloc=
kquote></td></tr></table>

---1563750066-1939549013-1360796770=:77290--
