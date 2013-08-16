Return-Path: <siva.alagarsamy@thermofisher.com>
Received: from usmx01.thermofisher.com (usmx01.thermofisher.com
	[12.199.218.160])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AC829E002F9
	for <yocto@yoctoproject.org>; Fri, 16 Aug 2013 09:14:30 -0700 (PDT)
X-ASG-Debug-ID: 1376669668-04220e0e53d25760001-yzSStA
Received: from mxvolt02.thermofisher.com ([12.199.217.100]) by
	usmx01.thermofisher.com with ESMTP id uTH3fmL9tLzzXCKp
	(version=TLSv1 cipher=AES256-SHA bits=256 verify=NO) for
	<yocto@yoctoproject.org>; Fri, 16 Aug 2013 09:14:28 -0700 (MST)
X-Barracuda-Envelope-From: siva.alagarsamy@thermofisher.com
X-Barracuda-Apparent-Source-IP: 12.199.217.100
Received: from uspho-mxet02.amer.thermo.com (uspho-mxet02.amer.thermo.com
	[10.161.198.45])
	by mxvolt02.thermofisher.com (8.14.4/8.14.4) with ESMTP id
	r7GGESaQ013702
	for <yocto@yoctoproject.org>; Fri, 16 Aug 2013 09:14:28 -0700
Received: from uspho-mxht02.amer.thermo.com (10.161.196.46) by
	uspho-mxet02.amer.thermo.com (10.161.198.45) with Microsoft SMTP Server
	(TLS) id 8.3.298.1; Fri, 16 Aug 2013 09:14:36 -0700
Received: from uspho-mxvs07.amer.thermo.com ([fe80::7078:51f0:98a7:3694]) by
	uspho-mxht02.amer.thermo.com ([::1]) with mapi;
	Fri, 16 Aug 2013 09:14:28 -0700
From: "Alagarsamy, Siva" <siva.alagarsamy@thermofisher.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Fri, 16 Aug 2013 09:14:27 -0700
Thread-Topic: Using boost in the cross compiler environment
X-ASG-Orig-Subj: Using boost in the cross compiler environment
Thread-Index: Ac6am65HiDZ0ae5gQKyP2OIKswC8Yg==
Message-ID: <11F9467C4C2E4E4DBB8A7F440A5415718BCCC2DF27@USPHO-MXVS07.amer.thermo.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
X-Barracuda-Connect: UNKNOWN[12.199.217.100]
X-Barracuda-Start-Time: 1376669668
X-Barracuda-Encrypted: AES256-SHA
X-Barracuda-URL: http://usmx01.thermofisher.com:8000/cgi-mod/mark.cgi
X-Virus-Scanned: by bsmtpd at thermofisher.com
X-Barracuda-BRTS-Status: 1
X-Barracuda-Spam-Score: 0.00
X-Barracuda-Spam-Status: No, SCORE=0.00 using global scores of TAG_LEVEL=1000.0
	QUARANTINE_LEVEL=1000.0 KILL_LEVEL=9.0 tests=HTML_MESSAGE
X-Barracuda-Spam-Report: Code version 3.2, rules version 3.2.2.138568
	Rule breakdown below
	pts rule name              description
	---- ----------------------
	--------------------------------------------------
	0.00 HTML_MESSAGE           BODY: HTML included in message
X-Mailman-Approved-At: Fri, 16 Aug 2013 09:19:19 -0700
Subject: Using boost in the cross compiler environment
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
X-List-Received-Date: Fri, 16 Aug 2013 16:14:32 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_11F9467C4C2E4E4DBB8A7F440A5415718BCCC2DF27USPHOMXVS07am_"

--_000_11F9467C4C2E4E4DBB8A7F440A5415718BCCC2DF27USPHOMXVS07am_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I am new to the Yocot.  I have was able succesffuly build a poky image for =
a development board.  I was able to generate a adt-installer using "bitbake=
 adt-installer" command.  I am able to compile a simple hello world program=
 and run it on the development board. I need to use "Boost" library in my u=
ser application. What is the proper procedure to install the boost in my cr=
oss compiler environment?

Thanks,
Siva

--_000_11F9467C4C2E4E4DBB8A7F440A5415718BCCC2DF27USPHOMXVS07am_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40"><head><META HTTP-EQUIV=3D"Content-Type" CONTENT=
=3D"text/html; charset=3Dus-ascii"><meta name=3DGenerator content=3D"Micros=
oft Word 12 (filtered medium)"><style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
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
	font-family:"Calibri","sans-serif";
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;}
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
</o:shapelayout></xml><![endif]--></head><body lang=3DEN-US link=3Dblue vli=
nk=3Dpurple><div class=3DWordSection1><p class=3DMsoNormal>I am new to the =
Yocot.&nbsp; I have was able succesffuly build a poky image for a developme=
nt board.&nbsp; I was able to generate a adt-installer using &#8220;bitbake=
 adt-installer&#8221; command. &nbsp;I am able to compile a simple hello wo=
rld program and run it on the development board. I need to use &#8220;Boost=
&#8221; library in my user application. What is the proper procedure to ins=
tall the boost in my cross compiler environment? <o:p></o:p></p><p class=3D=
MsoNormal><br>Thanks,<br>Siva<o:p></o:p></p></div></body></html>=

--_000_11F9467C4C2E4E4DBB8A7F440A5415718BCCC2DF27USPHOMXVS07am_--
