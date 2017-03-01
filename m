Return-Path: <Michael.Schwarcz@arm.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A25BEE008D0; Wed,  1 Mar 2017 03:34:26 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.2.57 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 10777 seconds by postgrey-1.32 at yocto-www;
	Wed, 01 Mar 2017 03:34:23 PST
Received: from EUR01-DB5-obe.outbound.protection.outlook.com
	(mail-db5eur01on0057.outbound.protection.outlook.com [104.47.2.57])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7AD9CE00826
	for <yocto@yoctoproject.org>; Wed,  1 Mar 2017 03:34:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
	s=selector1-arm-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=/Tg92Vhz2qlJ+yJsEiM9KcC4kUZEmfMuYfVILjXXelk=;
	b=aXe5olt32uqWICQBexgerPTxw2kxy/vGQXXI/8EvrZZcmXaRTtEs7bOyYCzfrDNcuke4Xaetuv22p+o01WhDDxg8kpByTvAoBX0LXyTo7r2mtyhCJ4cJghgraucTywDrkuqlMsnjyj1ggbYeZvNrdUpg7zOCHN2nx+rk6DjM7WY=
Received: from VI1PR0801MB1757.eurprd08.prod.outlook.com (10.168.67.23) by
	VI1PR0801MB1760.eurprd08.prod.outlook.com (10.168.67.137) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id
	15.1.933.12; Wed, 1 Mar 2017 06:04:08 +0000
Received: from VI1PR0801MB1757.eurprd08.prod.outlook.com ([10.168.67.23]) by
	VI1PR0801MB1757.eurprd08.prod.outlook.com ([10.168.67.23]) with mapi id
	15.01.0933.020; Wed, 1 Mar 2017 06:04:09 +0000
From: Michael Schwarcz <Michael.Schwarcz@arm.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Using armcc in Yocto
Thread-Index: AdKSUQ9duI3PZG5XSmiYUnuKmkrEfw==
Date: Wed, 1 Mar 2017 06:04:08 +0000
Message-ID: <VI1PR0801MB17572237802599D5ACB40C6F87290@VI1PR0801MB1757.eurprd08.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: yoctoproject.org; dkim=none (message not signed)
	header.d=none; yoctoproject.org;
	dmarc=none action=none header.from=arm.com; 
x-originating-ip: [217.140.96.140]
x-ms-office365-filtering-correlation-id: 1bf86d59-76e1-4d2b-acc5-08d46068c68d
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: UriScan:; BCL:0; PCL:0; RULEID:(22001)(48565401081);
	SRVR:VI1PR0801MB1760; 
x-microsoft-exchange-diagnostics: 1; VI1PR0801MB1760;
	7:GCqy5G566/GEA1yuiGS48ZRqqqHiGdrBjoj+R/KtbqnQrWW4ZATz3aXKumPN2vltwZwcxt0ZUnrNbO1+rqzgH4wnR6KzSRXl7GlQB2do3fJC1d/0iIlM0f47RhS09jC4UfW+VYO5dkjvrCVrvR6eUIrs2wUhuTx1DUCucbx6/Bl2qzriVo2OrhIaRUq35w1nV5MceSv9IxQyUTXOypCYB0HaqMLUcOMKjmQGfwJkQO7cJ5uZb1uHZNxEmoQqIpIp7II4yYiRY4lnr1cUlc/PLgLZrCEpRNW8CNBQ6emXZq8pFjx+z7Rdajh5SktodKidXkAXe8QlKbw1Db3YxDqfOw==
x-microsoft-antispam-prvs: <VI1PR0801MB17603B7BFD536E92A5018E0E87290@VI1PR0801MB1760.eurprd08.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(21748063052155);
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040375)(601004)(2401047)(8121501046)(5005006)(10201501046)(3002001)(6055026)(6041248)(20161123564025)(20161123560025)(20161123562025)(20161123558025)(20161123555025)(6072148);
	SRVR:VI1PR0801MB1760; BCL:0; PCL:0; RULEID:;
	SRVR:VI1PR0801MB1760; 
x-forefront-prvs: 0233768B38
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(6009001)(7916002)(39860400002)(39840400002)(39450400003)(39850400002)(39410400002)(40434004)(2351001)(122556002)(110136004)(81166006)(1730700003)(7736002)(189998001)(66066001)(3846002)(7696004)(6116002)(790700001)(102836003)(74316002)(2906002)(5660300001)(86362001)(3280700002)(38730400002)(2501003)(9326002)(54356999)(53936002)(92566002)(8676002)(6506006)(6916009)(99286003)(55016002)(54896002)(5640700003)(6436002)(5630700001)(25786008)(8936002)(33656002)(2900100001)(5890100001)(50986999)(6306002)(450100001)(3480700004)(77096006)(3660700001)(9686003);
	DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0801MB1760;
	H:VI1PR0801MB1757.eurprd08.prod.outlook.com; FPR:; SPF:None;
	MLV:ovrnspm; PTR:InfoNoRecords; LANG:en; 
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Mar 2017 06:04:08.5217 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0801MB1760
Subject: Using armcc in Yocto
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
X-List-Received-Date: Wed, 01 Mar 2017 11:34:26 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_VI1PR0801MB17572237802599D5ACB40C6F87290VI1PR0801MB1757_"

--_000_VI1PR0801MB17572237802599D5ACB40C6F87290VI1PR0801MB1757_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,

I have an application which I am building for Yocto using the POKY toolchai=
n (arm-poky-linux-gnueabi) and running on a BeagleBoneBlack device.

Is it possible to compile using the ARM compiler (armcc, armlink) and still=
 target the linux-yocto OS?
Is it something that was done before?

Thanks,
Michael Schwarcz
IMPORTANT NOTICE: The contents of this email and any attachments are confid=
ential and may also be privileged. If you are not the intended recipient, p=
lease notify the sender immediately and do not disclose the contents to any=
 other person, use it for any purpose, or store or copy the information in =
any medium. Thank you.

--_000_VI1PR0801MB17572237802599D5ACB40C6F87290VI1PR0801MB1757_
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
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
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
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
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
<p class=3D"MsoNormal">Hello,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I have an application which I am building for Yocto =
using the POKY toolchain (arm-poky-linux-gnueabi) and running on a BeagleBo=
neBlack device.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Is it possible to compile using the ARM compiler (ar=
mcc, armlink) and still target the linux-yocto OS?<o:p></o:p></p>
<p class=3D"MsoNormal">Is it something that was done before?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal">Michael Schwarcz<o:p></o:p></p>
</div>
IMPORTANT NOTICE: The contents of this email and any attachments are confid=
ential and may also be privileged. If you are not the intended recipient, p=
lease notify the sender immediately and do not disclose the contents to any=
 other person, use it for any purpose,
 or store or copy the information in any medium. Thank you.
</body>
</html>

--_000_VI1PR0801MB17572237802599D5ACB40C6F87290VI1PR0801MB1757_--
