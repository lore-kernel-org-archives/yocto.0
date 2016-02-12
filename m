Return-Path: <sridhar.pitchai@outlook.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 62BA8E00C58; Thu, 11 Feb 2016 22:10:59 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.6 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	HTML_FONT_FACE_BAD, HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (sridhar.pitchai[at]outlook.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  1.0 HTML_FONT_FACE_BAD BODY: HTML font face is not a word
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [65.55.116.80 listed in list.dnswl.org]
Received: from BLU004-OMC3S5.hotmail.com (blu004-omc3s5.hotmail.com
	[65.55.116.80])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2A0A2E00C4F
	for <yocto@yoctoproject.org>; Thu, 11 Feb 2016 22:10:57 -0800 (PST)
Received: from BLU168-W10 ([65.55.116.74]) by BLU004-OMC3S5.hotmail.com over
	TLS secured channel with Microsoft SMTPSVC(7.5.7601.23008); 
	Thu, 11 Feb 2016 22:10:57 -0800
X-TMN: [siiwYm2AbVcv77qgqFi3zY5EJJ/xDmNv]
X-Originating-Email: [sridhar.pitchai@outlook.com]
Message-ID: <BLU168-W106A58D34CE0CD2EFBF941EBA90@phx.gbl>
From: Sridhar Pitchai <sridhar.pitchai@outlook.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Thu, 11 Feb 2016 22:10:56 -0800
Importance: Normal
MIME-Version: 1.0
X-OriginalArrivalTime: 12 Feb 2016 06:10:57.0051 (UTC)
	FILETIME=[231636B0:01D1655C]
Subject: native tool is not installed before it is used
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
X-List-Received-Date: Fri, 12 Feb 2016 06:10:59 -0000
Content-Type: multipart/alternative;
	boundary="_e9c15aed-bbb7-4c39-b322-549a6bf24a00_"

--_e9c15aed-bbb7-4c39-b322-549a6bf24a00_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi=2CI have a recipe=2C where It need protobuf-c-compiler (natvily) to auto=
 generate files before it can be compiled. i have added protobuf-c-native i=
n the DEPENDS list. but the compilation is failling at do_autogen=2C compil=
ing the proto-c is not installed in staging_bindir_native.But if  bitbake p=
rotobuf-c-native manually and then bitbake the recipe it is working fine.=20
how to enforce protobuf-c-native is installed in the this recipe ?=20
SECTION =3D "SWOS"PRIORITY =3D "optional"LICENSE =3D "CLOSED"
PROVIDES =3D "swos-app"
PR =3D "r0"DEPENDS =3D " protobuf-c-native libev protobuf-c protobuf zeromq=
 "
FILESEXTRAPATHS_prepend =3D "${THISDIR}:"SRC_URI =3D "file://${PV}/swos.tar=
.gz"
inherit cmake pkgconfigS =3D "${WORKDIR}/swos"
FILES_${PN} =3D "${libdir}/*.so"FILES_${PN} +=3D "${bindir}/*"
do_autogen () {    ${STAGING_BINDIR_NATIVE}/protoc-c --proto_path=3D${S}/co=
mmon/pbuf --c_out=3D${S}/common/pbuf/autogen-c ${S}/common/pbuf/*.proto}
addtask do_autogen after do_configure before do_compile

thanks=2CSridhar Pitchai 		 	   		  =

--_e9c15aed-bbb7-4c39-b322-549a6bf24a00_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<style><!--
.hmmessage P
{
margin:0px=3B
padding:0px
}
body.hmmessage
{
font-size: 12pt=3B
font-family:Calibri
}
--></style></head>
<body class=3D'hmmessage'><div dir=3D'ltr'>Hi=2C<div>I have a recipe=2C whe=
re It need protobuf-c-compiler (natvily) to auto generate files before it c=
an be compiled. i have added protobuf-c-native in the DEPENDS list. but the=
 compilation is failling at do_autogen=2C compiling the proto-c is not inst=
alled in staging_bindir_native.</div><div>But if &nbsp=3Bbitbake protobuf-c=
-native manually and then bitbake the recipe it is working fine.&nbsp=3B</d=
iv><div><br></div><div>how to enforce protobuf-c-native is installed in the=
 this recipe ?&nbsp=3B</div><div><font size=3D"2"><br></font></div><div><di=
v><font face=3D"Segoe UI=2C Segoe UI Web Regular=2C Segoe UI Symbol=2C Helv=
etica Neue=2C BBAlpha Sans=2C S60 Sans=2C Arial=2C sans-serif" size=3D"2"><=
span style=3D"line-height: 17.1945px=3B background-color: rgb(255=2C 255=2C=
 255)=3B">SECTION =3D "SWOS"</span></font></div><div><font face=3D"Segoe UI=
=2C Segoe UI Web Regular=2C Segoe UI Symbol=2C Helvetica Neue=2C BBAlpha Sa=
ns=2C S60 Sans=2C Arial=2C sans-serif" size=3D"2"><span style=3D"line-heigh=
t: 17.1945px=3B background-color: rgb(255=2C 255=2C 255)=3B">PRIORITY =3D "=
optional"</span></font></div><div><font face=3D"Segoe UI=2C Segoe UI Web Re=
gular=2C Segoe UI Symbol=2C Helvetica Neue=2C BBAlpha Sans=2C S60 Sans=2C A=
rial=2C sans-serif" size=3D"2"><span style=3D"line-height: 17.1945px=3B bac=
kground-color: rgb(255=2C 255=2C 255)=3B">LICENSE =3D "CLOSED"</span></font=
></div><div><font face=3D"Segoe UI=2C Segoe UI Web Regular=2C Segoe UI Symb=
ol=2C Helvetica Neue=2C BBAlpha Sans=2C S60 Sans=2C Arial=2C sans-serif" si=
ze=3D"2"><span style=3D"line-height: 17.1945px=3B background-color: rgb(255=
=2C 255=2C 255)=3B"><br></span></font></div><div><font face=3D"Segoe UI=2C =
Segoe UI Web Regular=2C Segoe UI Symbol=2C Helvetica Neue=2C BBAlpha Sans=
=2C S60 Sans=2C Arial=2C sans-serif" size=3D"2"><span style=3D"line-height:=
 17.1945px=3B background-color: rgb(255=2C 255=2C 255)=3B">PROVIDES =3D "sw=
os-app"</span></font></div><div><font face=3D"Segoe UI=2C Segoe UI Web Regu=
lar=2C Segoe UI Symbol=2C Helvetica Neue=2C BBAlpha Sans=2C S60 Sans=2C Ari=
al=2C sans-serif" size=3D"2"><span style=3D"line-height: 17.1945px=3B backg=
round-color: rgb(255=2C 255=2C 255)=3B"><br></span></font></div><div><font =
face=3D"Segoe UI=2C Segoe UI Web Regular=2C Segoe UI Symbol=2C Helvetica Ne=
ue=2C BBAlpha Sans=2C S60 Sans=2C Arial=2C sans-serif" size=3D"2"><span sty=
le=3D"line-height: 17.1945px=3B background-color: rgb(255=2C 255=2C 255)=3B=
">PR =3D "r0"</span></font></div><div><font face=3D"Segoe UI=2C Segoe UI We=
b Regular=2C Segoe UI Symbol=2C Helvetica Neue=2C BBAlpha Sans=2C S60 Sans=
=2C Arial=2C sans-serif" size=3D"2"><span style=3D"line-height: 17.1945px=
=3B background-color: rgb(255=2C 255=2C 255)=3B">DEPENDS =3D " protobuf-c-n=
ative libev protobuf-c protobuf zeromq "</span></font></div><div><font face=
=3D"Segoe UI=2C Segoe UI Web Regular=2C Segoe UI Symbol=2C Helvetica Neue=
=2C BBAlpha Sans=2C S60 Sans=2C Arial=2C sans-serif" size=3D"2"><span style=
=3D"line-height: 17.1945px=3B background-color: rgb(255=2C 255=2C 255)=3B">=
<br></span></font></div><div><font face=3D"Segoe UI=2C Segoe UI Web Regular=
=2C Segoe UI Symbol=2C Helvetica Neue=2C BBAlpha Sans=2C S60 Sans=2C Arial=
=2C sans-serif" size=3D"2"><span style=3D"line-height: 17.1945px=3B backgro=
und-color: rgb(255=2C 255=2C 255)=3B">FILESEXTRAPATHS_prepend =3D "${THISDI=
R}:"</span></font></div><div><font face=3D"Segoe UI=2C Segoe UI Web Regular=
=2C Segoe UI Symbol=2C Helvetica Neue=2C BBAlpha Sans=2C S60 Sans=2C Arial=
=2C sans-serif" size=3D"2"><span style=3D"line-height: 17.1945px=3B backgro=
und-color: rgb(255=2C 255=2C 255)=3B">SRC_URI =3D "file://${PV}/swos.tar.gz=
"</span></font></div><div><font face=3D"Segoe UI=2C Segoe UI Web Regular=2C=
 Segoe UI Symbol=2C Helvetica Neue=2C BBAlpha Sans=2C S60 Sans=2C Arial=2C =
sans-serif" size=3D"2"><span style=3D"line-height: 17.1945px=3B background-=
color: rgb(255=2C 255=2C 255)=3B"><br></span></font></div><div><font face=
=3D"Segoe UI=2C Segoe UI Web Regular=2C Segoe UI Symbol=2C Helvetica Neue=
=2C BBAlpha Sans=2C S60 Sans=2C Arial=2C sans-serif" size=3D"2"><span style=
=3D"line-height: 17.1945px=3B background-color: rgb(255=2C 255=2C 255)=3B">=
inherit cmake pkgconfig</span></font></div><div><font face=3D"Segoe UI=2C S=
egoe UI Web Regular=2C Segoe UI Symbol=2C Helvetica Neue=2C BBAlpha Sans=2C=
 S60 Sans=2C Arial=2C sans-serif" size=3D"2"><span style=3D"line-height: 17=
.1945px=3B background-color: rgb(255=2C 255=2C 255)=3B">S =3D "${WORKDIR}/s=
wos"</span></font></div><div><font face=3D"Segoe UI=2C Segoe UI Web Regular=
=2C Segoe UI Symbol=2C Helvetica Neue=2C BBAlpha Sans=2C S60 Sans=2C Arial=
=2C sans-serif" size=3D"2"><span style=3D"line-height: 17.1945px=3B backgro=
und-color: rgb(255=2C 255=2C 255)=3B"><br></span></font></div><div><font fa=
ce=3D"Segoe UI=2C Segoe UI Web Regular=2C Segoe UI Symbol=2C Helvetica Neue=
=2C BBAlpha Sans=2C S60 Sans=2C Arial=2C sans-serif" size=3D"2"><span style=
=3D"line-height: 17.1945px=3B background-color: rgb(255=2C 255=2C 255)=3B">=
FILES_${PN} =3D "${libdir}/*.so"</span></font></div><div><font face=3D"Sego=
e UI=2C Segoe UI Web Regular=2C Segoe UI Symbol=2C Helvetica Neue=2C BBAlph=
a Sans=2C S60 Sans=2C Arial=2C sans-serif" size=3D"2"><span style=3D"line-h=
eight: 17.1945px=3B background-color: rgb(255=2C 255=2C 255)=3B">FILES_${PN=
} +=3D "${bindir}/*"</span></font></div><div><font face=3D"Segoe UI=2C Sego=
e UI Web Regular=2C Segoe UI Symbol=2C Helvetica Neue=2C BBAlpha Sans=2C S6=
0 Sans=2C Arial=2C sans-serif" size=3D"2"><span style=3D"line-height: 17.19=
45px=3B background-color: rgb(255=2C 255=2C 255)=3B"><br></span></font></di=
v><div><font face=3D"Segoe UI=2C Segoe UI Web Regular=2C Segoe UI Symbol=2C=
 Helvetica Neue=2C BBAlpha Sans=2C S60 Sans=2C Arial=2C sans-serif" size=3D=
"2"><span style=3D"line-height: 17.1945px=3B background-color: rgb(255=2C 2=
55=2C 255)=3B">do_autogen () {</span></font></div><div><font face=3D"Segoe =
UI=2C Segoe UI Web Regular=2C Segoe UI Symbol=2C Helvetica Neue=2C BBAlpha =
Sans=2C S60 Sans=2C Arial=2C sans-serif" size=3D"2"><span style=3D"line-hei=
ght: 17.1945px=3B background-color: rgb(255=2C 255=2C 255)=3B">&nbsp=3B &nb=
sp=3B ${STAGING_BINDIR_NATIVE}/protoc-c --proto_path=3D${S}/common/pbuf --c=
_out=3D${S}/common/pbuf/autogen-c ${S}/common/pbuf/*.proto</span></font></d=
iv><div><font face=3D"Segoe UI=2C Segoe UI Web Regular=2C Segoe UI Symbol=
=2C Helvetica Neue=2C BBAlpha Sans=2C S60 Sans=2C Arial=2C sans-serif" size=
=3D"2"><span style=3D"line-height: 17.1945px=3B background-color: rgb(255=
=2C 255=2C 255)=3B">}</span></font></div><div><font face=3D"Segoe UI=2C Seg=
oe UI Web Regular=2C Segoe UI Symbol=2C Helvetica Neue=2C BBAlpha Sans=2C S=
60 Sans=2C Arial=2C sans-serif" size=3D"2"><span style=3D"line-height: 17.1=
945px=3B background-color: rgb(255=2C 255=2C 255)=3B"><br></span></font></d=
iv><div><font face=3D"Segoe UI=2C Segoe UI Web Regular=2C Segoe UI Symbol=
=2C Helvetica Neue=2C BBAlpha Sans=2C S60 Sans=2C Arial=2C sans-serif" size=
=3D"2"><span style=3D"line-height: 17.1945px=3B background-color: rgb(255=
=2C 255=2C 255)=3B">addtask do_autogen after do_configure before do_compile=
</span></font></div></div><div><font face=3D"Segoe UI=2C Segoe UI Web Regul=
ar=2C Segoe UI Symbol=2C Helvetica Neue=2C BBAlpha Sans=2C S60 Sans=2C Aria=
l=2C sans-serif"><span style=3D"font-size: 12.1088px=3B line-height: 17.194=
5px=3B background-color: rgb(255=2C 255=2C 255)=3B"><br></span></font></div=
><div><font face=3D"Segoe UI=2C Segoe UI Web Regular=2C Segoe UI Symbol=2C =
Helvetica Neue=2C BBAlpha Sans=2C S60 Sans=2C Arial=2C sans-serif"><span st=
yle=3D"font-size: 12.1088px=3B line-height: 17.1945px=3B background-color: =
rgb(255=2C 255=2C 255)=3B"><br></span></font></div><div><font face=3D"Segoe=
 UI=2C Segoe UI Web Regular=2C Segoe UI Symbol=2C Helvetica Neue=2C BBAlpha=
 Sans=2C S60 Sans=2C Arial=2C sans-serif"><span style=3D"font-size: 12.1088=
px=3B line-height: 17.1945px=3B background-color: rgb(255=2C 255=2C 255)=3B=
">thanks=2C</span></font></div><div><font face=3D"Segoe UI=2C Segoe UI Web =
Regular=2C Segoe UI Symbol=2C Helvetica Neue=2C BBAlpha Sans=2C S60 Sans=2C=
 Arial=2C sans-serif"><span style=3D"font-size: 12.1088px=3B line-height: 1=
7.1945px=3B background-color: rgb(255=2C 255=2C 255)=3B">Sridhar Pitchai</s=
pan></font></div> 		 	   		  </div></body>
</html>=

--_e9c15aed-bbb7-4c39-b322-549a6bf24a00_--
