Return-Path: <Gary.Pollington@tvone.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 48128E00985; Wed,  4 Feb 2015 04:36:35 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [157.56.112.63 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 2158 seconds by postgrey-1.32 at yocto-www;
	Wed, 04 Feb 2015 04:36:28 PST
Received: from emea01-am1-obe.outbound.protection.outlook.com
	(mail-am1on0063.outbound.protection.outlook.com [157.56.112.63])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9E795E00984
	for <yocto@yoctoproject.org>; Wed,  4 Feb 2015 04:36:28 -0800 (PST)
Received: from DB3PR07MB0684.eurprd07.prod.outlook.com (25.160.51.148) by
	DB3PR07MB107.eurprd07.prod.outlook.com (10.242.147.146) with Microsoft
	SMTP Server (TLS) id 15.1.75.20; Wed, 4 Feb 2015 11:59:01 +0000
Received: from DB3PR07MB0681.eurprd07.prod.outlook.com (25.160.51.145) by
	DB3PR07MB0684.eurprd07.prod.outlook.com (25.160.51.148) with Microsoft
	SMTP Server (TLS) id 15.1.75.20; Wed, 4 Feb 2015 11:58:59 +0000
Received: from DB3PR07MB0681.eurprd07.prod.outlook.com ([25.160.51.145]) by
	DB3PR07MB0681.eurprd07.prod.outlook.com ([25.160.51.145]) with mapi id
	15.01.0075.002; Wed, 4 Feb 2015 11:59:00 +0000
From: Gary Pollington <Gary.Pollington@tvone.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Re: [yocto] [meta-raspberrypi] Nothing RPROVIDES 'liborc-0.4'
Thread-Index: AdBAcUge5qjNFYmwRsKmf60WloVpHw==
Date: Wed, 4 Feb 2015 11:58:59 +0000
Message-ID: <DB3PR07MB0681D85C8ACA0DB7A86BE092FA3A0@DB3PR07MB0681.eurprd07.prod.outlook.com>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [5.148.140.100]
authentication-results: yoctoproject.org; dkim=none (message not signed)
	header.d=none;
x-microsoft-antispam: BCL:0;PCL:0;RULEID:;SRVR:DB3PR07MB0684;UriScan:;
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0;PCL:0;RULEID:;SRVR:DB3PR07MB0684;
x-forefront-prvs: 04772EA191
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(6009001)(164054003)(46102003)(50986999)(19300405004)(54356999)(2656002)(110136001)(2351001)(107886001)(76576001)(74316001)(450100001)(77156002)(62966003)(71446004)(122556002)(40100003)(2501002)(33656002)(19625215002)(19580395003)(87936001)(92566002)(15975445007)(102836002)(2900100001)(66066001)(86362001)(16236675004);
	DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR07MB0684;
	H:DB3PR07MB0681.eurprd07.prod.outlook.com; FPR:; SPF:None;
	MLV:sfv; LANG:en; 
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Feb 2015 11:58:59.7429 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: de000c38-193a-4a3b-89ac-e65dfa775454
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR07MB0684
X-Microsoft-Antispam: BCL:0;PCL:0;RULEID:;SRVR:DB3PR07MB107;
X-OriginatorOrg: tvone.com
Subject: Re: [meta-raspberrypi] Nothing RPROVIDES 'liborc-0.4'
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
X-List-Received-Date: Wed, 04 Feb 2015 12:36:35 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_DB3PR07MB0681D85C8ACA0DB7A86BE092FA3A0DB3PR07MB0681eurp_"

--_000_DB3PR07MB0681D85C8ACA0DB7A86BE092FA3A0DB3PR07MB0681eurp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

>>Thank you! Replacing liborc-0.4 and liborc-test-0.4 with "orc" fixed
>>the problem and it's now built and running nicely :)

Hi,

First time here..

I have the same problem with liborc whilst trying to pull in gstreamer_vaap=
i into yocto.  Please can you expand on where to change liborc to orc. ?

Thanks,
Gary



--_000_DB3PR07MB0681D85C8ACA0DB7A86BE092FA3A0DB3PR07MB0681eurp_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 72.0pt 72.0pt 72.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-GB" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black;mso-fareast-language:EN-GB">&gt;&gt;Thank you! =
Replacing liborc-0.4 and liborc-test-0.4 with &quot;orc&quot; fixed<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black;mso-fareast-language:EN-GB">&gt;&gt;the problem=
 and it's now built and running nicely :)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black;mso-fareast-language:EN-GB"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black;mso-fareast-language:EN-GB">Hi,
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black;mso-fareast-language:EN-GB"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black;mso-fareast-language:EN-GB">First time here..<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black;mso-fareast-language:EN-GB"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black;mso-fareast-language:EN-GB">I have the same pro=
blem with liborc whilst trying to pull in gstreamer_vaapi into yocto.&nbsp;=
 Please can you expand on where to change liborc to
 orc. ?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black;mso-fareast-language:EN-GB"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;color:black;mso-fareast-language:EN-GB">Thanks,
<o:p></o:p></span></p>
<p class=3D"MsoNormal">Gary<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_DB3PR07MB0681D85C8ACA0DB7A86BE092FA3A0DB3PR07MB0681eurp_--
