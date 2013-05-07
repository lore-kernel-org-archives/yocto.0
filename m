Return-Path: <Brian.Wenholz@med.ge.com>
Received: from exprod5og117.obsmtp.com (exprod5og117.obsmtp.com [64.18.0.149])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 40193E01439
	for <yocto@yoctoproject.org>; Tue,  7 May 2013 11:12:18 -0700 (PDT)
Received: from cinmlip11.e2k.ad.ge.com ([12.71.149.1]) (using TLSv1) by
	exprod5ob117.postini.com ([64.18.4.12]) with SMTP
	ID DSNKUYlEAR+uzzZZjr452HBu4JhKW4h12Rfe@postini.com;
	Tue, 07 May 2013 11:12:22 PDT
Received: from unknown (HELO alpmlef01.e2k.ad.ge.com) ([3.159.18.10])
	by cinmlip11.e2k.ad.ge.com with ESMTP; 07 May 2013 14:12:15 -0400
Received: from cinmlef16.e2k.ad.ge.com ([3.159.213.85]) by
	alpmlef01.e2k.ad.ge.com with Microsoft SMTPSVC(6.0.3790.4675); 
	Tue, 7 May 2013 14:12:14 -0400
Received: from cinmlch01.e2k.ad.ge.com ([3.159.212.50]) by
	cinmlef16.e2k.ad.ge.com with Microsoft SMTPSVC(6.0.3790.4675); 
	Tue, 7 May 2013 14:12:00 -0400
Received: from ALPURAPA18.e2k.ad.ge.com (3.159.19.137) by
	cinmlch01.e2k.ad.ge.com (3.159.212.50) with Microsoft SMTP Server (TLS)
	id 14.2.318.4; Tue, 7 May 2013 14:11:57 -0400
Received: from ALPURAPA22.e2k.ad.ge.com ([169.254.4.124]) by
	ALPURAPA18.e2k.ad.ge.com ([169.254.6.101]) with mapi id 14.02.0309.002;
	Tue, 7 May 2013 14:11:57 -0400
From: "Wenholz, Brian (GE Healthcare)" <Brian.Wenholz@med.ge.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] Does anyone have a recipe for efibootmgr?
Thread-Index: Ac5LTi/Pt5bcvgEiTDyXmo6VLcrpVQ==
Date: Tue, 7 May 2013 18:11:57 +0000
Message-ID: <4F1B91CF7B31604FABE8442530201B780195B3@ALPURAPA22.e2k.ad.ge.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [3.159.19.187]
MIME-Version: 1.0
X-OriginalArrivalTime: 07 May 2013 18:12:00.0707 (UTC)
	FILETIME=[5E9AF930:01CE4B4E]
Subject: Does anyone have a recipe for efibootmgr?
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
X-List-Received-Date: Tue, 07 May 2013 18:12:23 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_4F1B91CF7B31604FABE8442530201B780195B3ALPURAPA22e2kadge_"

--_000_4F1B91CF7B31604FABE8442530201B780195B3ALPURAPA22e2kadge_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

All,

I have been unsuccessful in finding one yet, and would prefer not to re-inv=
ent the wheel.

Brian Wenholz

--_000_4F1B91CF7B31604FABE8442530201B780195B3ALPURAPA22e2kadge_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 14 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Arial","sans-serif";
	color:black;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri","sans-serif";}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">All,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">I have been unsuccessful in f=
inding one yet, and would prefer not to re-invent the wheel.<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">Brian Wenholz<o:p></o:p></spa=
n></p>
</div>
</body>
</html>

--_000_4F1B91CF7B31604FABE8442530201B780195B3ALPURAPA22e2kadge_--
