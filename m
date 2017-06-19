Return-Path: <Thomas.Thorne@net2edge.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E8A31E00BC4; Tue, 20 Jun 2017 00:58:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.2.104 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from EUR01-DB5-obe.outbound.protection.outlook.com
	(mail-db5eur01on0104.outbound.protection.outlook.com [104.47.2.104])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A67E5E009A0
	for <yocto@yoctoproject.org>; Tue, 20 Jun 2017 00:58:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=transitionnetworks.onmicrosoft.com; s=selector1-net2edge-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=YXNv9aa/1cGvaB3g4R38OWF2GmNS5SvzeXqCtHTzSfU=;
	b=qcL4/tB0vB47hmRtAGmX//98tKLpqPnmPUczLPOmP9o58zZP9/TOyecemS2P6DpYblX2LGPTkQpWuUSdUdYNi9bo7FSOwKEtQGS9iLBjDj/IyJf7BOlrDEfesqoadqwSUpb+8qTcc3yVDcFuctZ6YdFB3Jfeepib5v7kGLTIL90=
Received: from DB6PR0701MB1879.eurprd07.prod.outlook.com (10.168.10.151) by
	DB6PR0701MB2309.eurprd07.prod.outlook.com (10.168.74.144) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
	15.1.1199.6; Mon, 19 Jun 2017 16:45:06 +0000
Received: from DB6PR0701MB1879.eurprd07.prod.outlook.com
	([fe80::b0ad:4d46:ac20:61bd]) by
	DB6PR0701MB1879.eurprd07.prod.outlook.com
	([fe80::b0ad:4d46:ac20:61bd%13]) with mapi id 15.01.1199.007;
	Mon, 19 Jun 2017 16:45:05 +0000
From: Thomas Thorne <Thomas.Thorne@net2edge.com>
To: Thomas Thorne <Thomas.Thorne@net2edge.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] [meta-raspberrypi] Configure eth0 to come up with
	Link-Local IPv6 address only
Thread-Index: AdLo6u1VdjTmtTz1QAC1ROIaMLkKqAAMBrHw
Date: Mon, 19 Jun 2017 16:45:05 +0000
Message-ID: <DB6PR0701MB18796F9758A78C397F837F82D3C40@DB6PR0701MB1879.eurprd07.prod.outlook.com>
References: <DB6PR0701MB1879D229F084DD8D85A55A22D3C40@DB6PR0701MB1879.eurprd07.prod.outlook.com>
In-Reply-To: <DB6PR0701MB1879D229F084DD8D85A55A22D3C40@DB6PR0701MB1879.eurprd07.prod.outlook.com>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: net2edge.com; dkim=none (message not signed)
	header.d=none; net2edge.com;
	dmarc=none action=none header.from=net2edge.com; 
x-originating-ip: [81.128.174.58]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; DB6PR0701MB2309;
	7:iM2FlyTaivDulXh60h3m5NurHoKRzV3jyHWJvTgXOc3E9fdS9Y1pqS13+KXerjPLC9qTvnOV1lJ6Luqz/oqSrZw8pmn2cX6vBOOe/1WcOAm/BvGJTG0KFeJmAZ90qVHg7pqohooQDSdAQdzY3rfgyiWn0AAwsu6i9gb16HtFxwKDKNqwUfF0qbOBbYEeuGqSU2JIFlrSgReuQpdFuovmI0UYzxAF1yjNgHJiX6iNX77AsYQhNkxb0FoQRVPz5twmKr6PQUGUxjvDI8DOcthoKrS1qDhmWNMB4pyvt+WybrNC2TX7XbgUch00UNrGrHu65jUAS7uHFOBYrw2muCfTmq/IQ8S+sb5yYdl9U9wu5bFp18K2TQ0SaNmbUKfPKYYC6DtA14sDnGV6c39nlxDhAIyHVYSN4vJfwEn8B9hDhbSxpI47ZPREwOscTgsWlVONXfzKwwquxegMd/UetxCbu69ZqBPxHD/Nz2OS9MnDzjckzwKUfitAFHvva8L687UkblfU7p7Xi/sYmWM15sNuXcW0IHopQvbAAFLK1wH7DbvWtxh+cpfOMyz/qk+Gsu4UYF0xS7zpBVXNcVTv1vVRTOFouX11Bos0Eg1teUsboL9wea62JYU8Yj4OUQ/AZNUe1xkbP87sG4qAtDYslINrEHyrZAhDKp5TbHNs79/Zq60ziSisuz8ZkftiMw5DhIVGqRxCLl/Ad8BFK2CXRjdJIU6Pom8iNqABLWqTj90YV8URFETMpdmynO1Szr4oEJZnnpkXZFMVKrZMvDFpPZi83INyozd9TKYTgideCVhuLxk=
x-forefront-antispam-report: SFV:SKI; SCL:-1SFV:NSPM;
	SFS:(10019020)(6009001)(39830400002)(39400400002)(39450400003)(39410400002)(86362001)(6436002)(14454004)(33656002)(6506006)(2900100001)(2950100002)(66066001)(5250100002)(189998001)(5660300001)(229853002)(8936002)(55016002)(54896002)(7736002)(3280700002)(9686003)(790700001)(3846002)(6116002)(102836003)(7696004)(74316002)(50986999)(25786009)(478600001)(53936002)(38730400002)(81166006)(6306002)(99286003)(8676002)(3660700001)(76176999)(54356999)(6246003)(2906002)(72206003);
	DIR:OUT; SFP:1102; SCL:1; SRVR:DB6PR0701MB2309;
	H:DB6PR0701MB1879.eurprd07.prod.outlook.com; FPR:; SPF:None;
	MLV:sfv; LANG:en; 
x-ms-office365-filtering-correlation-id: fbefab69-0add-406b-ddbb-08d4b73289d6
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(22001)(2017030254075)(201703131423075)(201702281549075);
	SRVR:DB6PR0701MB2309; 
X-MS-TrafficTypeDiagnostic: DB6PR0701MB2309:|DB6PR0701MB2309:
x-microsoft-antispam-prvs: <DB6PR0701MB23097637739FC7DCB0329AA1D3C40@DB6PR0701MB2309.eurprd07.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(21748063052155);
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(100000700101)(100105000095)(100000701101)(100105300095)(100000702101)(100105100095)(6040450)(601004)(2401047)(8121501046)(5005006)(93006095)(93001095)(3002001)(10201501046)(100000703101)(100105400095)(6041248)(20161123555025)(20161123560025)(20161123558100)(2016111802025)(20161123564025)(20161123562025)(201703131423075)(201702281528075)(201703061421075)(201703061406153)(6072148)(6043046)(100000704101)(100105200095)(100000705101)(100105500095);
	SRVR:DB6PR0701MB2309; BCL:0; PCL:0;
	RULEID:(100000800101)(100110000095)(100000801101)(100110300095)(100000802101)(100110100095)(100000803101)(100110400095)(100000804101)(100110200095)(100000805101)(100110500095);
	SRVR:DB6PR0701MB2309; 
x-forefront-prvs: 0343AC1D30
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Jun 2017 16:45:05.3952 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 851184e8-8658-4a6a-973d-aa012bcc8794
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0701MB2309
X-Microsoft-Exchange-Diagnostics: 1; DB6PR0701MB2309;
	23:ElKl7edP015yTf25PvDgRGwzaLCfEUWuicFglQ9Tva9ppAc/Oyo/e7mg2vp+YQdTDGmgY9JTvpQY9iLD7kFdh0+FGXwJd48UzXLD92Fztg5sLbl68qu7Z0HiAClHwf9Nkc04XjJoFJ91Iz6um2XNFA==
X-OriginatorOrg: net2edge.com
Subject: Re: [meta-raspberrypi] Configure eth0 to come up with Link-Local IPv6 address only
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
X-List-Received-Date: Tue, 20 Jun 2017 07:58:18 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_DB6PR0701MB18796F9758A78C397F837F82D3C40DB6PR0701MB1879_"

--_000_DB6PR0701MB18796F9758A78C397F837F82D3C40DB6PR0701MB1879_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I was unable to get the Raspberry Pi 3 I am targeting to start with eth0 up=
 and only an IPv6 link local address present on eth0, using only a /etc/net=
work/interfaces file.  In the end I added shell script under /etc/rc5.d whi=
ch called out to `ifconfig eth0 up`.  This brought eth0 up with only a IPv6=
 link local address.

If someone has a solution using just /etc/network/interface based settings =
I would be interested to hear it.

Regards, Thomas Thorne


--_000_DB6PR0701MB18796F9758A78C397F837F82D3C40DB6PR0701MB1879_
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
p.msonormal0, li.msonormal0, div.msonormal0
	{mso-style-name:msonormal;
	mso-margin-top-alt:auto;
	margin-right:0cm;
	mso-margin-bottom-alt:auto;
	margin-left:0cm;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
span.EmailStyle18
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
span.EmailStyle19
	{mso-style-type:personal-reply;
	font-family:"Arial",sans-serif;
	color:#006600;
	font-weight:normal;
	font-style:normal;
	text-decoration:none none;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
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
<p class=3D"MsoNormal"><span style=3D"color:#006600">I was unable to get th=
e Raspberry Pi 3 I am targeting to start with eth0 up and only an IPv6 link=
 local address present on eth0, using only a /etc/network/interfaces file.&=
nbsp; In the end I added shell script under
 /etc/rc5.d which called out to `ifconfig eth0 up`.&nbsp; This brought eth0=
 up with only a IPv6 link local address.&nbsp;
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Arial&quot;,sans-se=
rif;color:#006600"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Arial&quot;,sans-se=
rif;color:#006600">If someone has a solution using just /etc/network/interf=
ace based settings I would be interested to hear it.&nbsp;
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Arial&quot;,sans-se=
rif;color:#006600"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Arial&quot;,sans-se=
rif;color:#006600">Regards, Thomas Thorne
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Arial&quot;,sans-se=
rif;color:#006600"><o:p>&nbsp;</o:p></span></p>
</div>
</body>
</html>

--_000_DB6PR0701MB18796F9758A78C397F837F82D3C40DB6PR0701MB1879_--
