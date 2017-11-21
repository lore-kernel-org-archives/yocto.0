Return-Path: <tykwon@m2i.co.kr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7F333E00BEA; Mon, 20 Nov 2017 21:08:12 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [121.254.168.204 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 399 seconds by postgrey-1.32 at yocto-www;
	Mon, 20 Nov 2017 21:08:09 PST
Received: from smtp1.hiworks.co.kr (smtp1.hiworks.co.kr [121.254.168.204])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EA297E00B1A
	for <yocto@yoctoproject.org>; Mon, 20 Nov 2017 21:08:09 -0800 (PST)
Received: (qmail 10732 invoked from network); 21 Nov 2017 14:01:27 +0900
Received: from unknown (HELO hiworks.co.kr) (192.168.10.224)
	by 0 (qmail 1.03 + ejcp v14) with SMTP; 21 Nov 2017 14:01:27 +0900
Received: (qmail 4953 invoked by uid 504); 21 Nov 2017 14:01:27 +0900
Received: from unknown (HELO DESKTOP3HTLQGF) (tykwon@m2i.co.kr@112.216.145.10)
	by 0 (qmail 1.03 + ejcp v14) with SMTP; 21 Nov 2017 14:01:27 +0900
X-Authinfo: HIWORKS SMTP authenticated <tykwon@m2i.co.kr>
From: "tykwon" <tykwon@m2i.co.kr>
To: <yocto@yoctoproject.org>
Date: Tue, 21 Nov 2017 14:01:29 +0900
Message-ID: <029401d36285$cb0cc320$61264960$@co.kr>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 12.0
Thread-Index: AdNihcpc2W1QNS3oTOKbNdCYv+/D3Q==
x-cr-hashedpuzzle: ATaB Aic4 BK2/ BT9e BpSi CVv/ CuCA CuYF DMnW DWyq D46+ F/HP
	Gma8 HJI2 HvsS I07J; 1;
	eQBvAGMAdABvAEAAeQBvAGMAdABvAHAAcgBvAGoAZQBjAHQALgBvAHIAZwA=;
	Sosha1_v1; 7; {CB0AAB55-0AD0-4B05-AD50-30A205F11C32};
	dAB5AGsAdwBvAG4AQABtADIAaQAuAGMAbwAuAGsAcgA=;
	Tue, 21 Nov 2017 05:01:28 GMT;
	SQBzACAAdABoAGUAcgBlACAAYQAgAHYAYQByAGkAYQBiAGwAZQAgAHIAZQBsAGEAdABlAGQAIAB0AG8AIAB0AGgAZQAgAGIAdQBpAGwAZAAgAHIAZQBsAGUAYQBzAGUAIAB2AGUAcgBzAGkAbwBuACAAbwBmACAAcgBvAG8AdABmAHMAPwA=
x-cr-puzzleid: {CB0AAB55-0AD0-4B05-AD50-30A205F11C32}
Subject: Is there a variable related to the build release version of rootfs?
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
X-List-Received-Date: Tue, 21 Nov 2017 05:08:12 -0000
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_0295_01D362D1.3AF46B20"
Content-Language: ko

------=_NextPart_000_0295_01D362D1.3AF46B20
Content-Type: text/plain;
	charset="ks_c_5601-1987"
Content-Transfer-Encoding: quoted-printable

Hello.

=20

I am yocto newbie.

=20

Is there a variable associated with the release version available in
build/conf/local.conf(bitbake)?

I searched the yocto manual.

So I looked at "NATIVELSBSTRING" and it seems that the variable is not
appropriate in this case.

I'm wondering if there is a variable in the rootfs I build that can set
version numbers such as "1.0", "2.0".

example)

           1. 2017-01-01 build =A1=E6 rootfs_1.0.tar.gz=20

           2. 2017-11-21 build =A1=E6 rootfs_2.0.tar.gz

=20

I'm sorry I do not have enough English. :)

=20

Best regards.

kwon

-------------

NATIVELSBSTRING : https://www.yoctoproject.org/docs/1.8/ref-manual/ref-
manual.html#var-NATIVELSBSTRING

=20

=20


------=_NextPart_000_0295_01D362D1.3AF46B20
Content-Type: text/html;
	charset="ks_c_5601-1987"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" =
xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:x=3D"urn:schemas-microsoft-com:office:excel" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" =
xmlns=3D"http://www.w3.org/TR/REC-html40">

<head>
<meta http-equiv=3DContent-Type content=3D"text/html; =
charset=3Dks_c_5601-1987">
<meta name=3DGenerator content=3D"Microsoft Word 12 (filtered medium)">
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
 <o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
 <o:shapelayout v:ext=3D"edit">
  <o:idmap v:ext=3D"edit" data=3D"1" />
 </o:shapelayout></xml><![endif]-->
</head>

<body lang=3DKO link=3Dblue vlink=3Dpurple>

<div class=3DSection1>

<p class=3DMsoNormal><span lang=3DEN-US>Hello.<o:p></o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US>I am yocto =
newbie.<o:p></o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US>Is there a variable associated =
with the
release version available in =
build/conf/local.conf(bitbake)?<o:p></o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US>I searched the yocto =
manual.<o:p></o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US>So I looked at =
&quot;NATIVELSBSTRING&quot;
and it seems that the variable is not appropriate in this =
case.<o:p></o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US>I'm wondering if there is a =
variable in the
rootfs I build that can set version numbers such as &quot;1.0&quot;,
&quot;2.0&quot;.<o:p></o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US>example)<o:p></o:p></span></p>

<p class=3DMsoNormal><span =
lang=3DEN-US>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
 1.
2017-01-01 build =A1=E6 rootfs_1.0.tar.gz <o:p></o:p></span></p>

<p class=3DMsoNormal><span =
lang=3DEN-US>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
 2.
2017-11-21 build =A1=E6 rootfs_2.0.tar.gz<o:p></o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US>I'm sorry I do not have enough =
English. :)<o:p></o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US>Best =
regards.<o:p></o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US>kwon<o:p></o:p></span></p>

<p class=3DMsoNormal><span =
lang=3DEN-US>-------------<o:p></o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US>NATIVELSBSTRING :
https://www.yoctoproject.org/docs/1.8/ref-manual/ref-manual.html#var-NATI=
VELSBSTRING<o:p></o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p>

</div>

</body>

</html>

------=_NextPart_000_0295_01D362D1.3AF46B20--
