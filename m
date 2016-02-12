Return-Path: <sridhar.pitchai@outlook.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C7D00E00C59; Thu, 11 Feb 2016 22:12:55 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.6 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	HTML_FONT_FACE_BAD, HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (sridhar.pitchai[at]outlook.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [65.55.116.77 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  1.0 HTML_FONT_FACE_BAD BODY: HTML font face is not a word
Received: from BLU004-OMC3S2.hotmail.com (blu004-omc3s2.hotmail.com
	[65.55.116.77])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 24795E00C4F
	for <yocto@yoctoproject.org>; Thu, 11 Feb 2016 22:12:53 -0800 (PST)
Received: from BLU168-W51 ([65.55.116.72]) by BLU004-OMC3S2.hotmail.com over
	TLS secured channel with Microsoft SMTPSVC(7.5.7601.23008); 
	Thu, 11 Feb 2016 22:12:53 -0800
X-TMN: [C3TluVgn4Ngndw5AXcVe6tE4yakdoKlx]
X-Originating-Email: [sridhar.pitchai@outlook.com]
Message-ID: <BLU168-W5150A740F9D7B8C5B7CD86EBA90@phx.gbl>
From: Sridhar Pitchai <sridhar.pitchai@outlook.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Thu, 11 Feb 2016 22:12:53 -0800
Importance: Normal
In-Reply-To: <BLU168-W106A58D34CE0CD2EFBF941EBA90@phx.gbl>
References: <BLU168-W106A58D34CE0CD2EFBF941EBA90@phx.gbl>
MIME-Version: 1.0
X-OriginalArrivalTime: 12 Feb 2016 06:12:53.0365 (UTC)
	FILETIME=[686A5250:01D1655C]
Subject: Re: native tool is not installed before it is used
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
X-List-Received-Date: Fri, 12 Feb 2016 06:12:55 -0000
Content-Type: multipart/alternative;
	boundary="_6a9fad56-df52-457e-9972-b04b8f3082e9_"

--_6a9fad56-df52-457e-9972-b04b8f3082e9_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Missed to mention=2C I have already tried do_install_prepend. same issue=2C=
 didn't work.
Thanks=2CSridhar Pitchai
From: sridhar.pitchai@outlook.com
To: yocto@yoctoproject.org
Subject: native tool is not installed before it is used
Date: Thu=2C 11 Feb 2016 22:10:56 -0800

=0A=
=0A=
=0A=
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

thanks=2CSridhar Pitchai 		 	   		   		 	   		  =

--_6a9fad56-df52-457e-9972-b04b8f3082e9_
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
<body class=3D'hmmessage'><div dir=3D'ltr'><div>Missed to mention=2C&nbsp=
=3B<span style=3D"font-size: 12pt=3B">I have already tried&nbsp=3B</span></=
div><div>do_install_prepend. same issue=2C didn't work.</div><div><br></div=
><div>Thanks=2C</div><div>Sridhar Pitchai</div><div><br><div><hr id=3D"stop=
Spelling">From: sridhar.pitchai@outlook.com<br>To: yocto@yoctoproject.org<b=
r>Subject: native tool is not installed before it is used<br>Date: Thu=2C 1=
1 Feb 2016 22:10:56 -0800<br><br>=0A=
=0A=
<style><!--=0A=
.ExternalClass .ecxhmmessage P {=0A=
padding:0px=3B=0A=
}=0A=
=0A=
.ExternalClass body.ecxhmmessage {=0A=
font-size:12pt=3B=0A=
font-family:Calibri=3B=0A=
}=0A=
=0A=
--></style>=0A=
<div dir=3D"ltr">Hi=2C<div>I have a recipe=2C where It need protobuf-c-comp=
iler (natvily) to auto generate files before it can be compiled. i have add=
ed protobuf-c-native in the DEPENDS list. but the compilation is failling a=
t do_autogen=2C compiling the proto-c is not installed in staging_bindir_na=
tive.</div><div>But if &nbsp=3Bbitbake protobuf-c-native manually and then =
bitbake the recipe it is working fine.&nbsp=3B</div><div><br></div><div>how=
 to enforce protobuf-c-native is installed in the this recipe ?&nbsp=3B</di=
v><div><font size=3D"2"><br></font></div><div><div><font face=3D"Segoe UI=
=2C Segoe UI Web Regular=2C Segoe UI Symbol=2C Helvetica Neue=2C BBAlpha Sa=
ns=2C S60 Sans=2C Arial=2C sans-serif" size=3D"2"><span style=3D"line-heigh=
t:17.1945px=3Bbackground-color:rgb(255=2C 255=2C 255)=3B">SECTION =3D "SWOS=
"</span></font></div><div><font face=3D"Segoe UI=2C Segoe UI Web Regular=2C=
 Segoe UI Symbol=2C Helvetica Neue=2C BBAlpha Sans=2C S60 Sans=2C Arial=2C =
sans-serif" size=3D"2"><span style=3D"line-height:17.1945px=3Bbackground-co=
lor:rgb(255=2C 255=2C 255)=3B">PRIORITY =3D "optional"</span></font></div><=
div><font face=3D"Segoe UI=2C Segoe UI Web Regular=2C Segoe UI Symbol=2C He=
lvetica Neue=2C BBAlpha Sans=2C S60 Sans=2C Arial=2C sans-serif" size=3D"2"=
><span style=3D"line-height:17.1945px=3Bbackground-color:rgb(255=2C 255=2C =
255)=3B">LICENSE =3D "CLOSED"</span></font></div><div><font face=3D"Segoe U=
I=2C Segoe UI Web Regular=2C Segoe UI Symbol=2C Helvetica Neue=2C BBAlpha S=
ans=2C S60 Sans=2C Arial=2C sans-serif" size=3D"2"><span style=3D"line-heig=
ht:17.1945px=3Bbackground-color:rgb(255=2C 255=2C 255)=3B"><br></span></fon=
t></div><div><font face=3D"Segoe UI=2C Segoe UI Web Regular=2C Segoe UI Sym=
bol=2C Helvetica Neue=2C BBAlpha Sans=2C S60 Sans=2C Arial=2C sans-serif" s=
ize=3D"2"><span style=3D"line-height:17.1945px=3Bbackground-color:rgb(255=
=2C 255=2C 255)=3B">PROVIDES =3D "swos-app"</span></font></div><div><font f=
ace=3D"Segoe UI=2C Segoe UI Web Regular=2C Segoe UI Symbol=2C Helvetica Neu=
e=2C BBAlpha Sans=2C S60 Sans=2C Arial=2C sans-serif" size=3D"2"><span styl=
e=3D"line-height:17.1945px=3Bbackground-color:rgb(255=2C 255=2C 255)=3B"><b=
r></span></font></div><div><font face=3D"Segoe UI=2C Segoe UI Web Regular=
=2C Segoe UI Symbol=2C Helvetica Neue=2C BBAlpha Sans=2C S60 Sans=2C Arial=
=2C sans-serif" size=3D"2"><span style=3D"line-height:17.1945px=3Bbackgroun=
d-color:rgb(255=2C 255=2C 255)=3B">PR =3D "r0"</span></font></div><div><fon=
t face=3D"Segoe UI=2C Segoe UI Web Regular=2C Segoe UI Symbol=2C Helvetica =
Neue=2C BBAlpha Sans=2C S60 Sans=2C Arial=2C sans-serif" size=3D"2"><span s=
tyle=3D"line-height:17.1945px=3Bbackground-color:rgb(255=2C 255=2C 255)=3B"=
>DEPENDS =3D " protobuf-c-native libev protobuf-c protobuf zeromq "</span><=
/font></div><div><font face=3D"Segoe UI=2C Segoe UI Web Regular=2C Segoe UI=
 Symbol=2C Helvetica Neue=2C BBAlpha Sans=2C S60 Sans=2C Arial=2C sans-seri=
f" size=3D"2"><span style=3D"line-height:17.1945px=3Bbackground-color:rgb(2=
55=2C 255=2C 255)=3B"><br></span></font></div><div><font face=3D"Segoe UI=
=2C Segoe UI Web Regular=2C Segoe UI Symbol=2C Helvetica Neue=2C BBAlpha Sa=
ns=2C S60 Sans=2C Arial=2C sans-serif" size=3D"2"><span style=3D"line-heigh=
t:17.1945px=3Bbackground-color:rgb(255=2C 255=2C 255)=3B">FILESEXTRAPATHS_p=
repend =3D "${THISDIR}:"</span></font></div><div><font face=3D"Segoe UI=2C =
Segoe UI Web Regular=2C Segoe UI Symbol=2C Helvetica Neue=2C BBAlpha Sans=
=2C S60 Sans=2C Arial=2C sans-serif" size=3D"2"><span style=3D"line-height:=
17.1945px=3Bbackground-color:rgb(255=2C 255=2C 255)=3B">SRC_URI =3D "file:/=
/${PV}/swos.tar.gz"</span></font></div><div><font face=3D"Segoe UI=2C Segoe=
 UI Web Regular=2C Segoe UI Symbol=2C Helvetica Neue=2C BBAlpha Sans=2C S60=
 Sans=2C Arial=2C sans-serif" size=3D"2"><span style=3D"line-height:17.1945=
px=3Bbackground-color:rgb(255=2C 255=2C 255)=3B"><br></span></font></div><d=
iv><font face=3D"Segoe UI=2C Segoe UI Web Regular=2C Segoe UI Symbol=2C Hel=
vetica Neue=2C BBAlpha Sans=2C S60 Sans=2C Arial=2C sans-serif" size=3D"2">=
<span style=3D"line-height:17.1945px=3Bbackground-color:rgb(255=2C 255=2C 2=
55)=3B">inherit cmake pkgconfig</span></font></div><div><font face=3D"Segoe=
 UI=2C Segoe UI Web Regular=2C Segoe UI Symbol=2C Helvetica Neue=2C BBAlpha=
 Sans=2C S60 Sans=2C Arial=2C sans-serif" size=3D"2"><span style=3D"line-he=
ight:17.1945px=3Bbackground-color:rgb(255=2C 255=2C 255)=3B">S =3D "${WORKD=
IR}/swos"</span></font></div><div><font face=3D"Segoe UI=2C Segoe UI Web Re=
gular=2C Segoe UI Symbol=2C Helvetica Neue=2C BBAlpha Sans=2C S60 Sans=2C A=
rial=2C sans-serif" size=3D"2"><span style=3D"line-height:17.1945px=3Bbackg=
round-color:rgb(255=2C 255=2C 255)=3B"><br></span></font></div><div><font f=
ace=3D"Segoe UI=2C Segoe UI Web Regular=2C Segoe UI Symbol=2C Helvetica Neu=
e=2C BBAlpha Sans=2C S60 Sans=2C Arial=2C sans-serif" size=3D"2"><span styl=
e=3D"line-height:17.1945px=3Bbackground-color:rgb(255=2C 255=2C 255)=3B">FI=
LES_${PN} =3D "${libdir}/*.so"</span></font></div><div><font face=3D"Segoe =
UI=2C Segoe UI Web Regular=2C Segoe UI Symbol=2C Helvetica Neue=2C BBAlpha =
Sans=2C S60 Sans=2C Arial=2C sans-serif" size=3D"2"><span style=3D"line-hei=
ght:17.1945px=3Bbackground-color:rgb(255=2C 255=2C 255)=3B">FILES_${PN} +=
=3D "${bindir}/*"</span></font></div><div><font face=3D"Segoe UI=2C Segoe U=
I Web Regular=2C Segoe UI Symbol=2C Helvetica Neue=2C BBAlpha Sans=2C S60 S=
ans=2C Arial=2C sans-serif" size=3D"2"><span style=3D"line-height:17.1945px=
=3Bbackground-color:rgb(255=2C 255=2C 255)=3B"><br></span></font></div><div=
><font face=3D"Segoe UI=2C Segoe UI Web Regular=2C Segoe UI Symbol=2C Helve=
tica Neue=2C BBAlpha Sans=2C S60 Sans=2C Arial=2C sans-serif" size=3D"2"><s=
pan style=3D"line-height:17.1945px=3Bbackground-color:rgb(255=2C 255=2C 255=
)=3B">do_autogen () {</span></font></div><div><font face=3D"Segoe UI=2C Seg=
oe UI Web Regular=2C Segoe UI Symbol=2C Helvetica Neue=2C BBAlpha Sans=2C S=
60 Sans=2C Arial=2C sans-serif" size=3D"2"><span style=3D"line-height:17.19=
45px=3Bbackground-color:rgb(255=2C 255=2C 255)=3B">&nbsp=3B &nbsp=3B ${STAG=
ING_BINDIR_NATIVE}/protoc-c --proto_path=3D${S}/common/pbuf --c_out=3D${S}/=
common/pbuf/autogen-c ${S}/common/pbuf/*.proto</span></font></div><div><fon=
t face=3D"Segoe UI=2C Segoe UI Web Regular=2C Segoe UI Symbol=2C Helvetica =
Neue=2C BBAlpha Sans=2C S60 Sans=2C Arial=2C sans-serif" size=3D"2"><span s=
tyle=3D"line-height:17.1945px=3Bbackground-color:rgb(255=2C 255=2C 255)=3B"=
>}</span></font></div><div><font face=3D"Segoe UI=2C Segoe UI Web Regular=
=2C Segoe UI Symbol=2C Helvetica Neue=2C BBAlpha Sans=2C S60 Sans=2C Arial=
=2C sans-serif" size=3D"2"><span style=3D"line-height:17.1945px=3Bbackgroun=
d-color:rgb(255=2C 255=2C 255)=3B"><br></span></font></div><div><font face=
=3D"Segoe UI=2C Segoe UI Web Regular=2C Segoe UI Symbol=2C Helvetica Neue=
=2C BBAlpha Sans=2C S60 Sans=2C Arial=2C sans-serif" size=3D"2"><span style=
=3D"line-height:17.1945px=3Bbackground-color:rgb(255=2C 255=2C 255)=3B">add=
task do_autogen after do_configure before do_compile</span></font></div></d=
iv><div><font face=3D"Segoe UI=2C Segoe UI Web Regular=2C Segoe UI Symbol=
=2C Helvetica Neue=2C BBAlpha Sans=2C S60 Sans=2C Arial=2C sans-serif"><spa=
n style=3D"font-size:12.1088px=3Bline-height:17.1945px=3Bbackground-color:r=
gb(255=2C 255=2C 255)=3B"><br></span></font></div><div><font face=3D"Segoe =
UI=2C Segoe UI Web Regular=2C Segoe UI Symbol=2C Helvetica Neue=2C BBAlpha =
Sans=2C S60 Sans=2C Arial=2C sans-serif"><span style=3D"font-size:12.1088px=
=3Bline-height:17.1945px=3Bbackground-color:rgb(255=2C 255=2C 255)=3B"><br>=
</span></font></div><div><font face=3D"Segoe UI=2C Segoe UI Web Regular=2C =
Segoe UI Symbol=2C Helvetica Neue=2C BBAlpha Sans=2C S60 Sans=2C Arial=2C s=
ans-serif"><span style=3D"font-size:12.1088px=3Bline-height:17.1945px=3Bbac=
kground-color:rgb(255=2C 255=2C 255)=3B">thanks=2C</span></font></div><div>=
<font face=3D"Segoe UI=2C Segoe UI Web Regular=2C Segoe UI Symbol=2C Helvet=
ica Neue=2C BBAlpha Sans=2C S60 Sans=2C Arial=2C sans-serif"><span style=3D=
"font-size:12.1088px=3Bline-height:17.1945px=3Bbackground-color:rgb(255=2C =
255=2C 255)=3B">Sridhar Pitchai</span></font></div> 		 	   		  </div></div>=
</div> 		 	   		  </div></body>
</html>=

--_6a9fad56-df52-457e-9972-b04b8f3082e9_--
