Return-Path: <zhenhua.luo@freescale.com>
Received: from na01-by2-obe.outbound.protection.outlook.com
	(mail-by2lp0235.outbound.protection.outlook.com [207.46.163.235])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D79B9E007D9
	for <yocto@yoctoproject.org>; Thu, 12 Dec 2013 21:32:32 -0800 (PST)
Received: from BY2PR03MB394.namprd03.prod.outlook.com (10.141.141.13) by
	BY2PR03MB394.namprd03.prod.outlook.com (10.141.141.13) with Microsoft
	SMTP Server (TLS) id 15.0.837.10; Fri, 13 Dec 2013 05:32:30 +0000
Received: from BY2PR03MB394.namprd03.prod.outlook.com ([10.141.141.13]) by
	BY2PR03MB394.namprd03.prod.outlook.com ([10.141.141.13]) with mapi id
	15.00.0837.004; Fri, 13 Dec 2013 05:32:30 +0000
From: "zhenhua.luo@freescale.com" <zhenhua.luo@freescale.com>
To: Edward Vidal <vidal.develone@gmail.com>
Thread-Topic: [yocto] Fedora19
Thread-Index: AQHO97tSFPtovJExSkWVuwQNYFj48ppRmJyg
Date: Fri, 13 Dec 2013 05:32:28 +0000
Message-ID: <1daa3ce5af134581a6b193e8047c2851@BY2PR03MB394.namprd03.prod.outlook.com>
References: <CANwz6nyayXbB3400p5nxWifsH1C7u5QUSJtLa0ZhmOqPWa2+RA@mail.gmail.com>
In-Reply-To: <CANwz6nyayXbB3400p5nxWifsH1C7u5QUSJtLa0ZhmOqPWa2+RA@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [192.88.158.216]
x-forefront-prvs: 00594E8DBA
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009001)(189002)(377454003)(199002)(56776001)(76786001)(79102001)(56816005)(85852003)(83072002)(19580405001)(76576001)(16236675002)(83322001)(19580395003)(53806001)(54356001)(51856001)(76482001)(54316002)(63696002)(76796001)(46102001)(90146001)(81542001)(33646001)(15975445006)(19609705001)(74662001)(31966008)(65816001)(74876001)(50986001)(69226001)(87266001)(47446002)(80976001)(4396001)(81686001)(59766001)(74316001)(18717965001)(19300405004)(74366001)(74706001)(2656002)(80022001)(47976001)(49866001)(47736001)(77982001)(15202345003)(85306002)(81342001)(87936001)(81816001)(66066001)(74502001)(24736002);
	DIR:OUT; SFP:1101; SCL:1; SRVR:BY2PR03MB394;
	H:BY2PR03MB394.namprd03.prod.outlook.com; CLIP:192.88.158.216;
	FPR:; RD:InfoNoRecords; MX:1; A:1; LANG:en; 
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Fedora19
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
X-List-Received-Date: Fri, 13 Dec 2013 05:32:36 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_1daa3ce5af134581a6b193e8047c2851BY2PR03MB394namprd03pro_"

--_000_1daa3ce5af134581a6b193e8047c2851BY2PR03MB394namprd03pro_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

"gcc-c++" should be installed on the host.


Best Regards,

Zhenhua

From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Edward Vidal
Sent: Friday, December 13, 2013 12:24 PM
To: yocto@yoctoproject.org
Subject: [yocto] Fedora19

Hello,
I added            Fedora-19 \n \  to poky/meta-yocto/conf/distro/poky.conf=
.
MACHINE=3Dzedboard bitbake custom-image
Pseudo is not present but is required, building this first before the main =
build
ERROR:  OE-core's config sanity checker detected a potential misconfigurati=
on.
    Either fix the cause of this error or at your own risk disable the chec=
ker (see sanity.conf).
    Following is the list of potential problems / advisories:

    Please install the following missing utilities: C++ Compiler (g++)

ERROR: Execution of event handler 'check_sanity_eventhandler' failed

What else is needed?
Any and all help will  be appreciated.

Thanks

--_000_1daa3ce5af134581a6b193e8047c2851BY2PR03MB394namprd03pro_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 12 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:SimSun;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
@font-face
	{font-family:SimSun;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-reply;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
.MsoChpDefault
	{mso-style-type:export-only;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.25in 1.0in 1.25in;}
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
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">&#8220;gcc-c&#43;&#43;&#8=
221; should be installed on the host.
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Best Regards,<o:p></o:p><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Zhenhua<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<div style=3D"border:none;border-left:solid blue 1.5pt;padding:0in 0in 0in =
4.0pt">
<div>
<div style=3D"border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Tahoma&quot;,&quot;sans-serif&quot;">From:</span></b><span style=3D"font-s=
ize:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;"> yocto-bo=
unces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org]
<b>On Behalf Of </b>Edward Vidal<br>
<b>Sent:</b> Friday, December 13, 2013 12:24 PM<br>
<b>To:</b> yocto@yoctoproject.org<br>
<b>Subject:</b> [yocto] Fedora19<o:p></o:p></span></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<div>
<div>
<div>
<p class=3D"MsoNormal">Hello,<o:p></o:p></p>
</div>
<p class=3D"MsoNormal">I added&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp; Fedora-19 \n \&nbsp; to poky/meta-yocto/conf/distro/p=
oky.conf.<o:p></o:p></p>
</div>
<p class=3D"MsoNormal">MACHINE=3Dzedboard bitbake custom-image<br>
Pseudo is not present but is required, building this first before the main =
build<br>
ERROR:&nbsp; OE-core's config sanity checker detected a potential misconfig=
uration.<br>
&nbsp;&nbsp;&nbsp; Either fix the cause of this error or at your own risk d=
isable the checker (see sanity.conf).<br>
&nbsp;&nbsp;&nbsp; Following is the list of potential problems / advisories=
:<br>
<br>
&nbsp;&nbsp;&nbsp; Please install the following missing utilities: C&#43;&#=
43; Compiler (g&#43;&#43;)<br>
<br>
ERROR: Execution of event handler 'check_sanity_eventhandler' failed<br>
<br>
What else is needed? <o:p></o:p></p>
</div>
<p class=3D"MsoNormal">Any and all help will&nbsp; be appreciated.<br>
<br>
Thanks <o:p></o:p></p>
</div>
</div>
</div>
</body>
</html>

--_000_1daa3ce5af134581a6b193e8047c2851BY2PR03MB394namprd03pro_--
