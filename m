Return-Path: <dhkoo@m2i.co.kr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 546F3E00E21; Tue, 23 Jan 2018 23:08:00 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [121.254.168.204 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 399 seconds by postgrey-1.32 at yocto-www;
	Tue, 23 Jan 2018 23:07:58 PST
Received: from smtp1.hiworks.co.kr (smtp1.hiworks.co.kr [121.254.168.204])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A0FDBE006D3
	for <yocto@yoctoproject.org>; Tue, 23 Jan 2018 23:07:58 -0800 (PST)
Received: (qmail 103049 invoked from network); 24 Jan 2018 16:01:17 +0900
Received: from unknown (HELO hiworks.co.kr) (192.168.10.218)
	by 0 (qmail 1.03 + ejcp v14) with SMTP; 24 Jan 2018 16:01:17 +0900
Received: (qmail 32170 invoked by uid 504); 24 Jan 2018 16:01:17 +0900
Received: from unknown (HELO dhkooPC) (dhkoo@m2i.co.kr@112.216.145.10)
	by 0 (qmail 1.03 + ejcp v14) with SMTP; 24 Jan 2018 16:01:17 +0900
X-Authinfo: HIWORKS SMTP authenticated <dhkoo@m2i.co.kr>
From: =?ks_c_5601-1987?B?sbi1v8f2?= <dhkoo@m2i.co.kr>
To: <yocto@yoctoproject.org>
Date: Wed, 24 Jan 2018 16:01:21 +0900
Message-ID: <008f01d394e1$23ddfea0$6b99fbe0$@co.kr>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 12.0
Thread-Index: AdOU4SMD8bh2V6VxRFajAi6xJhpwdA==
x-cr-hashedpuzzle: ACwm AMZA APd0 A9dH Beyj EImi Eou+ E2GJ F8wc Gkuz G9RY H0bL
	IWde IdRJ KX4m KaCh; 1;
	eQBvAGMAdABvAEAAeQBvAGMAdABvAHAAcgBvAGoAZQBjAHQALgBvAHIAZwA=;
	Sosha1_v1; 7; {34B57AB9-4604-4318-818E-28CE3B97EA85};
	ZABoAGsAbwBvAEAAbQAyAGkALgBjAG8ALgBrAHIA;
	Wed, 24 Jan 2018 07:01:20 GMT;
	bABpAGIAUQB0ADUAQwBvAHIAZQAuAHMAbwAuADUAIABuAG8AdAAgAGYAbwB1AG4AZAA=
x-cr-puzzleid: {34B57AB9-4604-4318-818E-28CE3B97EA85}
Subject: libQt5Core.so.5 not found
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
X-List-Received-Date: Wed, 24 Jan 2018 07:08:00 -0000
X-Groupsio-MsgNum: 39652
Content-Type: multipart/related;
	boundary="----=_NextPart_000_0090_01D3952C.93C5A6A0"
Content-Language: ko

------=_NextPart_000_0090_01D3952C.93C5A6A0
Content-Type: multipart/alternative;
	boundary="----=_NextPart_001_0091_01D3952C.93C5A6A0"

------=_NextPart_001_0091_01D3952C.93C5A6A0
Content-Type: text/plain;
	charset="ks_c_5601-1987"
Content-Transfer-Encoding: quoted-printable

Hi.

=20

Since last year, I worked with Qt5 with Yocto, exactly 5.9.2.

And few days ago, I lost whole working environment. So I should =
re-download
openembedded layers, include meta-qt5.

After that, when I going to use Qt5 applications, Kernel prints error =
likes
below

=20

# error while loading shared libraries: libQt5Core.so.5: cannot open =
shared
object file: No such file or directory

=20

And here is ldd message of Qt5.

libQt5Widgets.so.5 =3D> /usr/lib/libQt5Widgets.so.5 (0xb6ab8000)

libQt5Gui.so.5 =3D> /usr/lib/libQt5Gui.so.5 (0xb665c000)

libQt5Core.so.5 =3D> not found

=20

As you see, every Qt5 library linked successfully except =
libQt5Core.so.5.

I checked meta-qt5 repository, and found It upgraded to 5.10.0 at 17. =
Dec.
2017.

=20

If I downgrade Qt5 to 5.9.2, this error not occurs. I can solve my =
problem
by using Qt 5.9.2, but you know, some latest skills like Qt MQTT can =
only
be used after Qt 5.10.

=20

Is there any ideas?

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

=B1=B8=B5=BF=C7=F6(=C7=D1=B1=DB)

(=C1=D6)=BF=A5=C5=F5=BE=C6=C0=CC=C4=DA=C6=DB=B7=B9=C0=CC=BC=C7 /  =
<http://www.m2i.co.kr> http://www.m2i.co.kr

=BD=C5) (14086) =B0=E6=B1=E2 =BE=C8=BE=E7=BD=C3 =B8=B8=BE=C8=B1=B8 =
=C0=FC=C6=C4=B7=CE24=B9=F8=B1=E6 35-11(=BE=C8=BE=E7=B5=BF) =
=BF=A5=C5=F5=BE=C6=C0=CC=BA=F4=B5=F9=20

=B1=B8) (14086) =B0=E6=B1=E2 =BE=C8=BE=E7=BD=C3 =B8=B8=BE=C8=B1=B8 =
=BE=C8=BE=E77=B5=BF 196-38 =BF=A5=C5=F5=BE=C6=C0=CC=BA=F4=B5=F9

=C1=F7=C5=EB. 070-4844-3624  Fax. 031-465-3355  E-mail: dhkoo@m2i.co.kr

=20


------=_NextPart_001_0091_01D3952C.93C5A6A0
Content-Type: text/html;
	charset="ks_c_5601-1987"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" =
xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" =
xmlns=3D"http://www.w3.org/TR/REC-html40">

<head>
<meta http-equiv=3DContent-Type content=3D"text/html; =
charset=3Dks_c_5601-1987">
<meta name=3DGenerator content=3D"Microsoft Word 12 (filtered medium)">
<!--[if !mso]>
<style>
v\:* {behavior:url(#default#VML);}
o\:* {behavior:url(#default#VML);}
w\:* {behavior:url(#default#VML);}
.shape {behavior:url(#default#VML);}
</style>
<![endif]-->
<style>
<!--
 /* Font Definitions */
 @font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:"=B8=BC=C0=BA =B0=ED=B5=F1";
	panose-1:2 11 5 3 2 0 0 2 0 4;}
@font-face
	{font-family:"\@=B8=BC=C0=BA =B0=ED=B5=F1";
	panose-1:2 11 5 3 2 0 0 2 0 4;}
 /* Style Definitions */
 p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	text-align:justify;
	text-justify:inter-ideograph;
	text-autospace:none;
	word-break:break-hangul;
	font-size:10.0pt;
	font-family:"=B8=BC=C0=BA =B0=ED=B5=F1";}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
p.MsoAcetate, li.MsoAcetate, div.MsoAcetate
	{mso-style-priority:99;
	mso-style-link:"=C7=B3=BC=B1 =B5=B5=BF=F2=B8=BB =C5=D8=BD=BA=C6=AE =
Char";
	margin:0cm;
	margin-bottom:.0001pt;
	text-align:justify;
	text-justify:inter-ideograph;
	text-autospace:none;
	word-break:break-hangul;
	font-size:9.0pt;
	font-family:"=B8=BC=C0=BA =B0=ED=B5=F1";}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"=B8=BC=C0=BA =B0=ED=B5=F1";
	color:windowtext;}
span.Char
	{mso-style-name:"=C7=B3=BC=B1 =B5=B5=BF=F2=B8=BB =C5=D8=BD=BA=C6=AE =
Char";
	mso-style-priority:99;
	mso-style-link:"=C7=B3=BC=B1 =B5=B5=BF=F2=B8=BB =C5=D8=BD=BA=C6=AE";
	font-family:"=B8=BC=C0=BA =B0=ED=B5=F1";}
.MsoChpDefault
	{mso-style-type:export-only;}
 /* Page Definitions */
 @page Section1
	{size:612.0pt 792.0pt;
	margin:3.0cm 72.0pt 72.0pt 72.0pt;}
div.Section1
	{page:Section1;}
-->
</style>
<!--[if gte mso 9]><xml>
 <o:shapedefaults v:ext=3D"edit" spidmax=3D"2050" />
</xml><![endif]--><!--[if gte mso 9]><xml>
 <o:shapelayout v:ext=3D"edit">
  <o:idmap v:ext=3D"edit" data=3D"1" />
 </o:shapelayout></xml><![endif]-->
</head>

<body lang=3DKO link=3Dblue vlink=3Dpurple>

<div class=3DSection1>

<p class=3DMsoNormal><span lang=3DEN-US>Hi.<o:p></o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US>Since last year, I worked with =
Qt5 with
Yocto, exactly 5.9.2.<o:p></o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US>And few days ago, I lost whole =
working
environment. So I should re-download openembedded layers, include =
meta-qt5.<o:p></o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US>After that, when I going to use =
Qt5
applications, Kernel prints error likes below<o:p></o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p>

<p class=3DMsoNormal><b><span lang=3DEN-US># error while loading shared =
libraries:
libQt5Core.so.5: cannot open shared object file: No such file or =
directory<o:p></o:p></span></b></p>

<p class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US>And here is ldd message of =
Qt5.<o:p></o:p></span></p>

<p class=3DMsoNormal><b><span lang=3DEN-US>libQt5Widgets.so.5 =3D&gt;
/usr/lib/libQt5Widgets.so.5 (0xb6ab8000)<o:p></o:p></span></b></p>

<p class=3DMsoNormal><b><span lang=3DEN-US>libQt5Gui.so.5 =3D&gt;
/usr/lib/libQt5Gui.so.5 (0xb665c000)<o:p></o:p></span></b></p>

<p class=3DMsoNormal><b><span lang=3DEN-US>libQt5Core.so.5 =3D&gt; not =
found<o:p></o:p></span></b></p>

<p class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US>As you see, every Qt5 library =
linked
successfully except libQt5Core.so.5.<o:p></o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US>I checked meta-qt5 repository, =
and found It
upgraded to 5.10.0 at 17. Dec. 2017.<o:p></o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US>If I downgrade Qt5 to 5.9.2, =
this error not
occurs. I can solve my problem by using Qt 5.9.2, but you know, some =
latest
skills like Qt MQTT can only be used after Qt =
5.10.<o:p></o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US>Is there any =
ideas?<o:p></o:p></span></p>

<p class=3DMsoNormal><span =
lang=3DEN-US>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<o:p=
></o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US><img width=3D311 height=3D76 =
id=3D"=B1=D7=B8=B2_x0020_1"
src=3D"cid:image001.jpg@01D3952C.92EA61D0" =
alt=3D"=B1=B8=B5=BF=C7=F6(=C7=D1=B1=DB)"><o:p></o:p></span></p>

<p class=3DMsoNormal align=3Dleft style=3D'text-align:left'><b><span =
lang=3DEN-US
style=3D'font-size:10.5pt;color:black'>(</span></b><b><span =
style=3D'font-size:
10.5pt;color:black'>=C1=D6<span =
lang=3DEN-US>)</span>=BF=A5=C5=F5=BE=C6=C0=CC=C4=DA=C6=DB=B7=B9=C0=CC=BC=C7=
<span lang=3DEN-US> / </span></span></b><b><span
lang=3DEN-US style=3D'font-size:9.0pt;color:black'><a =
href=3D"http://www.m2i.co.kr"><span
style=3D'color:blue'>http://www.m2i.co.kr</span></a></span></b><b><span
lang=3DEN-US =
style=3D'font-size:10.5pt;color:black'><o:p></o:p></span></b></p>

<p class=3DMsoNormal><b><span =
style=3D'font-size:9.0pt;color:black'>=BD=C5<span
lang=3DEN-US>) (14086) </span>=B0=E6=B1=E2 =BE=C8=BE=E7=BD=C3 =
=B8=B8=BE=C8=B1=B8 =C0=FC=C6=C4=B7=CE<span =
lang=3DEN-US>24</span>=B9=F8=B1=E6<span
lang=3DEN-US> 35-11(</span>=BE=C8=BE=E7=B5=BF<span lang=3DEN-US>) =
</span>=BF=A5=C5=F5=BE=C6=C0=CC=BA=F4=B5=F9 <span =
lang=3DEN-US><o:p></o:p></span></span></b></p>

<p class=3DMsoNormal><b><span =
style=3D'font-size:9.0pt;color:black'>=B1=B8<span
lang=3DEN-US>) (14086) </span>=B0=E6=B1=E2 =BE=C8=BE=E7=BD=C3 =
=B8=B8=BE=C8=B1=B8 =BE=C8=BE=E7<span lang=3DEN-US>7</span>=B5=BF<span
lang=3DEN-US> 196-38 </span>=BF=A5=C5=F5=BE=C6=C0=CC=BA=F4=B5=F9<span =
lang=3DEN-US><o:p></o:p></span></span></b></p>

<p class=3DMsoNormal><b><span style=3D'color:black'>=C1=F7=C5=EB<span =
lang=3DEN-US>.
070-4844-3624&nbsp; Fax. 031-465-3355&nbsp; E-mail: <a =
href=3D"syjang@m2i.co.kr"><span
style=3D'color:blue'>dhkoo@m2i.co.kr</span></a></span></span></b><b><span=

lang=3DEN-US style=3D'color:black'><o:p></o:p></span></b></p>

<p class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p>

</div>

</body>

</html>

------=_NextPart_001_0091_01D3952C.93C5A6A0--

------=_NextPart_000_0090_01D3952C.93C5A6A0
Content-Type: image/jpeg;
	name="image001.jpg"
Content-Transfer-Encoding: base64
Content-ID: <image001.jpg@01D3952C.92EA61D0>

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

------=_NextPart_000_0090_01D3952C.93C5A6A0--
