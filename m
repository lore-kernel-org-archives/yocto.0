Return-Path: <stephen.lawrence@renesas.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 10E46E0097C; Fri,  1 Mar 2019 00:39:24 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [40.107.141.137 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from JPN01-OS2-obe.outbound.protection.outlook.com
	(mail-eopbgr1410137.outbound.protection.outlook.com [40.107.141.137])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 03F10E0084E
	for <yocto@yoctoproject.org>; Fri,  1 Mar 2019 00:39:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=renesasgroup.onmicrosoft.com; s=selector1-renesas-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=6KRggvahmqfm7WTxcmNGQ6wfMq7GXWWw4dS9S3WIaXE=;
	b=M1CUt3+DwKDbKqQxnhhd/886jude2GqABAtkMf/uTsv0QLmQ3hbKzadnYiqRXjlW+vjnfIK8p0lEzcaGrDy8q5Juf27xxxDmvWWxCn12iW1q4L3fNjSe/0YRxD4kk+i0sRcq8W/F51jw7r4+T00FsbhJqB2lnrcXLaBNfPeVC34=
Received: from TYAPR01MB2031.jpnprd01.prod.outlook.com (52.133.179.12) by
	TYAPR01MB4814.jpnprd01.prod.outlook.com (20.179.175.146) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.1643.14; Thu, 28 Feb 2019 17:44:43 +0000
Received: from TYAPR01MB2031.jpnprd01.prod.outlook.com
	([fe80::59a6:f906:ad87:bcb7]) by
	TYAPR01MB2031.jpnprd01.prod.outlook.com
	([fe80::59a6:f906:ad87:bcb7%2]) with mapi id 15.20.1643.022;
	Thu, 28 Feb 2019 17:44:43 +0000
From: Stephen Lawrence <stephen.lawrence@renesas.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] ROS support on yocto project
Thread-Index: AQHUyb3x+/MIsWfwPUW2Gq12b65fwqX1gfQAgAAA25CAAAIysA==
Date: Thu, 28 Feb 2019 17:44:43 +0000
Message-ID: <TYAPR01MB2031148AADCA55326FC4E76C92750@TYAPR01MB2031.jpnprd01.prod.outlook.com>
References: <SN2PR05MB27829108D4A8ED36D600A930C17E0@SN2PR05MB2782.namprd05.prod.outlook.com>
	<10f67545-7dac-9318-638f-78a164dcc5e5@googlemail.com>
	<TYAPR01MB203184D9085D75EBF343115A92750@TYAPR01MB2031.jpnprd01.prod.outlook.com>
In-Reply-To: <TYAPR01MB203184D9085D75EBF343115A92750@TYAPR01MB2031.jpnprd01.prod.outlook.com>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=stephen.lawrence@renesas.com; 
x-originating-ip: [193.141.220.21]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ce7e357f-b4ba-4d0b-5c52-08d69da46c1a
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
	RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600127)(711020)(4605104)(4618075)(2017052603328)(7153060)(7193020);
	SRVR:TYAPR01MB4814; 
X-MS-TrafficTypeDiagnostic: TYAPR01MB4814:|TYAPR01MB4814:|TYAPR01MB4814:|TYAPR01MB4814:|TYAPR01MB4814:
x-ms-exchange-purlcount: 2
x-microsoft-exchange-diagnostics: 1; TYAPR01MB4814;
	20:LRI+cu7jn9zgQ0gqxUhtrNF2zxCMXifxaoVtFaaDCR3Vgb04Zx3Dnfp2ajrmiQULMRkIjc4BAggaWiGNdtbxepnuwN3SqCc4cbSSfoK/bicbOoNQqFtmqsHcbb0bhtVw2ARnetyKzww5Z7gSuIl/6KHtderIx+sMXBfvPhcakUQ=;
	23:CACEvgLXAzn5WK4lVk2BAhysQWeEGDbWZ5J3eXwQJAAYUcTIhQPJ9tjW68E6+Ovm8/PWrG6xGtD5jmDYLguo9D2pThJjzS3xmraUbyp13HuxzaIWWnCSXdqJz3FEyXpICLD1ACW47NdiIJwzXERUgg==
x-microsoft-antispam-prvs: <TYAPR01MB481409132EC0A6CE2ADDE20192750@TYAPR01MB4814.jpnprd01.prod.outlook.com>
x-forefront-prvs: 0962D394D2
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(366004)(396003)(39860400002)(346002)(376002)(136003)(199004)(189003)(74316002)(68736007)(86362001)(97736004)(7696005)(76176011)(33656002)(2351001)(186003)(106356001)(256004)(99286004)(93156006)(8676002)(6246003)(8936002)(81166006)(1730700003)(81156014)(6436002)(26005)(2501003)(53936002)(9686003)(7736002)(6306002)(11346002)(54896002)(236005)(446003)(44832011)(476003)(486006)(5640700003)(55016002)(6916009)(6116002)(790700001)(14454004)(66066001)(105586002)(102836004)(3846002)(2906002)(229853002)(71200400001)(5660300002)(71190400001)(606006)(53546011)(316002)(966005)(478600001)(25786009)(52536013)(2940100002)(6506007);
	DIR:OUT; SFP:1102; SCL:1; SRVR:TYAPR01MB4814;
	H:TYAPR01MB2031.jpnprd01.prod.outlook.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: renesas.com does not designate
	permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: JGCHoC8mYaSxhzjqkknX/97cWcjUwnivZv5OieyaDZhrtylo4XHRGeWT5Zwq8m+VfOW3zbtgg8mMaU0RYrtFZLh0H89HDBliZYavZO9INEIsqjLpzFVy62b5UlSPJ3iJAlnekm6tnq+ZwPD/OTwedGFnoAfz/PQGjVLpdQPa30f2UwsuI0jYS8O9jRuXtFjTbvwGjIldGziw1hZI+K2M/fo9bW799Ld2CVDW0s1Zrjpnxxg2hmPwNE5fVUQw3cFp1ABRDQf7YnTV29mxpvvKT2qCDu7ecgw00+cUe/bybH2hhxuqSxLSvlsgcznnNYEIINIuotgxrueHrQxgTTbzC6dDinehVVKkZqCg4j087MrNGpaKXCZaZlNWZfAGHzVpz2VpcoGp5hFyIUHBsH19tNYW7M8TisXRo806iQmVU8I=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: ce7e357f-b4ba-4d0b-5c52-08d69da46c1a
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Feb 2019 17:44:43.1336 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 53d82571-da19-47e4-9cb4-625a166a4a2a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYAPR01MB4814
X-OriginatorOrg: renesas.com
Subject: Re: ROS support on yocto project
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
X-List-Received-Date: Fri, 01 Mar 2019 08:39:24 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_TYAPR01MB2031148AADCA55326FC4E76C92750TYAPR01MB2031jpnp_"

--_000_TYAPR01MB2031148AADCA55326FC4E76C92750TYAPR01MB2031jpnp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Don't know where I got Oscar from. I should have said Carlos.
Sorry Carlos.

Steve

From: Stephen Lawrence
Sent: 28 February 2019 17:31
To: 'Matthias Schoepfer' <matthias.schoepfer@googlemail.com>
Cc: yocto@yoctoproject.org
Subject: RE: [yocto] ROS support on yocto project

Hi,


>It does work. BTW, afaik there is no yocto 3.9.0, 2.6.1 is last stable if =
I am not mistaken.



I think Oscar is referring to the BSP version. 3.9.0 was a recent release.



Regards



Steve

From: yocto-bounces@yoctoproject.org<mailto:yocto-bounces@yoctoproject.org>=
 <yocto-bounces@yoctoproject.org<mailto:yocto-bounces@yoctoproject.org>> On=
 Behalf Of Matthias Schoepfer
Sent: 28 February 2019 17:26
To: yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>
Subject: Re: [yocto] ROS support on yocto project


Hi!



Yes, there is, there is a meta-ros.



For your convenience:



https://discourse.ros.org/t/new-version-of-meta-ros-for-kinetic-distributio=
n/2833

https://github.com/bmwcarit/meta-ros



It does work. BTW, afaik there is no yocto 3.9.0, 2.6.1 is last stable if I=
 am not mistaken.



Regards,



   Matthias


On 2/21/19 9:26 AM, Carlos Pozos Ochoa wrote:

I recently acquire a Renesas R Car M3 board which runs on an embedded linux=
 image build by means of the Yocto project. We are currently using YOCTO 3.=
9.0. We are looking forward to implement ROS kinetic libraries on this embe=
dded linux. Does the yocto project supports this libraries? In the case it =
does, is there any special process to install and run them? Or is it work a=
s a normal linux distribution?



--_000_TYAPR01MB2031148AADCA55326FC4E76C92750TYAPR01MB2031jpnp_
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
@font-face
	{font-family:"Segoe UI";
	panose-1:2 11 5 2 4 2 4 2 2 3;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	color:black;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
p.msonormal0, li.msonormal0, div.msonormal0
	{mso-style-name:msonormal;
	margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	color:black;}
span.EmailStyle18
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
span.EmailStyle21
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
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
<body bgcolor=3D"white" lang=3D"EN-GB" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"color:windowtext;mso-fareast-language=
:EN-US">Don&#8217;t know where I got Oscar from. I should have said Carlos.=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:windowtext;mso-fareast-language=
:EN-US">Sorry Carlos.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:windowtext;mso-fareast-language=
:EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:windowtext;mso-fareast-language=
:EN-US">Steve<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:windowtext;mso-fareast-language=
:EN-US"><o:p>&nbsp;</o:p></span></p>
<div style=3D"border:none;border-left:solid blue 1.5pt;padding:0cm 0cm 0cm =
4.0pt">
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0cm =
0cm 0cm">
<p class=3D"MsoNormal"><b><span lang=3D"EN-US" style=3D"color:windowtext">F=
rom:</span></b><span lang=3D"EN-US" style=3D"color:windowtext"> Stephen Law=
rence
<br>
<b>Sent:</b> 28 February 2019 17:31<br>
<b>To:</b> 'Matthias Schoepfer' &lt;matthias.schoepfer@googlemail.com&gt;<b=
r>
<b>Cc:</b> yocto@yoctoproject.org<br>
<b>Subject:</b> RE: [yocto] ROS support on yocto project<o:p></o:p></span><=
/p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span style=3D"color:windowtext;mso-fareast-language=
:EN-US">Hi,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:windowtext;mso-fareast-language=
:EN-US"><o:p>&nbsp;</o:p></span></p>
<p>&gt;It does work. BTW, afaik there is no yocto 3.9.0, 2.6.1 is last stab=
le if I am not mistaken.<o:p></o:p></p>
<p><o:p>&nbsp;</o:p></p>
<p>I think Oscar is referring to the BSP version. 3.9.0 was a recent releas=
e.<o:p></o:p></p>
<p><o:p>&nbsp;</o:p></p>
<p>Regards<o:p></o:p></p>
<p><o:p>&nbsp;</o:p></p>
<p>Steve<o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"color:windowtext;mso-fareast-language=
:EN-US"><o:p>&nbsp;</o:p></span></p>
<div style=3D"border:none;border-left:solid blue 1.5pt;padding:0cm 0cm 0cm =
4.0pt">
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0cm =
0cm 0cm">
<p class=3D"MsoNormal"><b><span lang=3D"EN-US" style=3D"color:windowtext">F=
rom:</span></b><span lang=3D"EN-US" style=3D"color:windowtext">
<a href=3D"mailto:yocto-bounces@yoctoproject.org">yocto-bounces@yoctoprojec=
t.org</a> &lt;<a href=3D"mailto:yocto-bounces@yoctoproject.org">yocto-bounc=
es@yoctoproject.org</a>&gt;
<b>On Behalf Of </b>Matthias Schoepfer<br>
<b>Sent:</b> 28 February 2019 17:26<br>
<b>To:</b> <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org=
</a><br>
<b>Subject:</b> Re: [yocto] ROS support on yocto project<o:p></o:p></span><=
/p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p>Hi!<o:p></o:p></p>
<p><o:p>&nbsp;</o:p></p>
<p>Yes, there is, there is a meta-ros. <o:p></o:p></p>
<p><o:p>&nbsp;</o:p></p>
<p>For your convenience:<o:p></o:p></p>
<p><o:p>&nbsp;</o:p></p>
<p><a href=3D"https://discourse.ros.org/t/new-version-of-meta-ros-for-kinet=
ic-distribution/2833">https://discourse.ros.org/t/new-version-of-meta-ros-f=
or-kinetic-distribution/2833</a><o:p></o:p></p>
<p><a href=3D"https://github.com/bmwcarit/meta-ros">https://github.com/bmwc=
arit/meta-ros</a><o:p></o:p></p>
<p><o:p>&nbsp;</o:p></p>
<p>It does work. BTW, afaik there is no yocto 3.9.0, 2.6.1 is last stable i=
f I am not mistaken.<o:p></o:p></p>
<p><o:p>&nbsp;</o:p></p>
<p>Regards,<o:p></o:p></p>
<p>&nbsp; <o:p></o:p></p>
<p>&nbsp;&nbsp; Matthias<o:p></o:p></p>
<p><o:p>&nbsp;</o:p></p>
<div>
<p class=3D"MsoNormal">On 2/21/19 9:26 AM, Carlos Pozos Ochoa wrote:<o:p></=
o:p></p>
</div>
<blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
<div id=3D"divtagdefaultwrapper">
<div>
<p><span lang=3D"EN-US" style=3D"font-size:11.5pt;font-family:&quot;Segoe U=
I&quot;,sans-serif;color:#212121">I recently acquire a Renesas R Car M3 boa=
rd which runs on an embedded linux image build by means of the Yocto projec=
t. We are currently using YOCTO 3.9.0. We are
 looking forward to implement ROS kinetic libraries on this embedded linux.=
 Does the yocto project supports this libraries? In the case it does, is th=
ere any special process to install and run them? Or is it work as a normal =
linux distribution?</span><span style=3D"font-size:12.0pt"><o:p></o:p></spa=
n></p>
</div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt"><o:p>&nbsp;</o:p></=
span></p>
</div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><o:p>&nbsp;</o:p></p>
</blockquote>
</div>
</div>
</div>
</body>
</html>

--_000_TYAPR01MB2031148AADCA55326FC4E76C92750TYAPR01MB2031jpnp_--
