Return-Path: <see_tian_wen@hotmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BDE58E00E54; Mon, 19 Feb 2018 10:37:49 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FORGED_HOTMAIL_RCVD2, FREEMAIL_FROM,
	HTML_MESSAGE, 
	RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (see_tian_wen[at]hotmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust *      [40.92.8.61 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.9 FORGED_HOTMAIL_RCVD2 hotmail.com 'From' address,
	but no 'Received:'
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 41929 seconds by postgrey-1.32 at yocto-www;
	Mon, 19 Feb 2018 10:37:48 PST
Received: from NAM03-DM3-obe.outbound.protection.outlook.com
	(mail-oln040092008061.outbound.protection.outlook.com [40.92.8.61])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7463DE00D91
	for <yocto@yoctoproject.org>; Mon, 19 Feb 2018 10:37:48 -0800 (PST)
Received: from BY2NAM03HT221.eop-NAM03.prod.protection.outlook.com
	(2a01:111:e400:7e4a::347) by
	DM3NAM03HT218.eop-NAM03.prod.protection.outlook.com
	(2a01:111:e400:7e49::155) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.20.506.19;
	Mon, 19 Feb 2018 07:01:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
	s=selector1; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
	bh=dkMrBPSVZk/IsOS1YF1KLQoms8ydJKJvXPmaDx3fJD4=;
	b=AqoqtsB4s1xHwpTyFHufF/dYtYT8yhzHqxKCoSzHwFWCXDSGRhwPAh41u6i4x2gKaIpPQWWTyRpMy8WL4ROuFdUJwMOIgKb9m0klyrmTUAHivINqfsT4CNdt1WDNylM/mqdgQvpp+/RKT988iq8cipjyvt+RbfyfNHEminxh/gxJvMjp/4f5xkAb2dy8KdcOU7wLDlV8G/Vql02M9NOeaVLhkoZPz6rZPXJ07FTDaGnVCXl2sdScdOi0TZA5bFrMTZb3aUa0iRzRTkSLboJR6F9XCyBQe5KKbHqQu7xEcWwpyTGYk4NlmyYEkVJST91uz+KQkBNhBkObhwuhLXEWoQ==
Received: from BY2NAM03FT045.eop-NAM03.prod.protection.outlook.com
	(10.152.84.53) by BY2NAM03HT221.eop-NAM03.prod.protection.outlook.com
	(10.152.85.91) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id 15.20.506.19;
	Mon, 19 Feb 2018 06:58:58 +0000
Received: from MWHPR06MB2832.namprd06.prod.outlook.com (10.152.84.53) by
	BY2NAM03FT045.mail.protection.outlook.com (10.152.85.113) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id
	15.20.506.19 via Frontend Transport; Mon, 19 Feb 2018 06:58:58 +0000
Received: from MWHPR06MB2832.namprd06.prod.outlook.com
	([fe80::45b7:734:60f9:2ebe]) by MWHPR06MB2832.namprd06.prod.outlook.com
	([fe80::45b7:734:60f9:2ebe%18]) with mapi id 15.20.0506.023;
	Mon, 19 Feb 2018 06:58:58 +0000
From: Tian Wen See <see_tian_wen@hotmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] Splashscreen using psplash
Thread-Index: AQHTqU7wgIdXxrxAFUugoSioWd9kFA==
Date: Mon, 19 Feb 2018 06:58:58 +0000
Message-ID: <MWHPR06MB2832589AA13FD8E2C9DFE792D2C80@MWHPR06MB2832.namprd06.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:89CDE71B399C7A638B3659A4D61B5FEFE82717F60109911AA211D2BDEB2E6344;
	UpperCasedChecksum:62D7588DCE8CD8C459D54076DE6FC6D917206208B86C422A5D1A7F1BE9BAFB92;
	SizeAsReceived:6815; Count:43
x-tmn: [83ebKQa2ojnTQIAWk9CUnHmTUhHwfkQ2]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; BY2NAM03HT221;
	6:xAVB4Sufvm22giB+db+W5+J5VhrM0wjZyyo8UAcls6lNmp1yRtSaYDfDg7W0XWR995kuulWBeZbllrqA24qlfxgXhWh2TQzyE/efN1frymJFuY3stNjgX2lU9DAhaGwMjVzrtazeonSAWoHMeu9LMSXWejm1Tov5kDFGVCl8AOXRCz6RIWJU9mJSV9rBI9wQxACPxdjm8U57bT8Y4F6HWG5ol66Qmi2GOR4t/IGISF4FZm4npork1CCl/b24Xr4rd+jEEHs+WPmyyXPYBkYdaakwXO06uz1TNnRieH98rydeZk1+pg2GMuklKEzUw5ce1AGhngCjeRMaOqGmcbvLRXtOzy5J4pQ/e7Qp5rZiV4E=;
	5:ghGPNbkRM6Fs2oBRf6LBnWlMp4cWF112RtUhfFbPGbMm/6Jps4MvURncemFus0KEBFVuz+FyxXOUt2bPHYjxW41M7gIqcHGFCPf0fgSeYt1txql2Oza4ii48HTgvFImWlwwzsBV9A6+bjawzK6fvTRnlhYoulp57zuH6Dg+zZJ4=;
	24:9Wk9vFm6ouQkwZC6L5kbU3ZDo/jeClezEoQJpVgtPgo36+DtM+m5xmlp+3fr9zeZ2kDih1GCnsYh5Sa0sEX/PGM0Qgo2qpRF5W56OhXQngQ=;
	7:g/Vd/Z4lMJz+Ct9JldsNbbNAxPDjsL8Mpjk0L1u6XOnSlm8MlPGbL9MV5AIxNVWsE8Kji8SWpLluUT0NZWbNIvlkZ1mnAOTjjFxCSr5RFfi+vhspqZ+QDexSg4YgMDx1I/f42F9iXCugqCM7C/4eHt1tNLdK61HgHdWzmzrDOayRY1aP1xQLxKPsnwUHcfNEm1nCFwd7PdTjnGb+7yBAvoDCZZ9j3bycVZYoPEg2STp9UUxOOQfIVvEszaIYlL+A
x-incomingheadercount: 43
x-eopattributedmessage: 0
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(7020095)(201702061078)(5061506573)(5061507331)(1603103135)(2017031320274)(2017031324274)(2017031323274)(2017031322404)(1603101448)(1601125374)(1701031045);
	SRVR:BY2NAM03HT221; 
X-MS-TrafficTypeDiagnostic: BY2NAM03HT221:|BY2NAM03HT221:|DM3NAM03HT218:
x-ms-office365-filtering-correlation-id: 4f410004-adea-4298-efae-08d577663faf
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0; RULEID:(444000031);
	SRVR:BY2NAM03HT221; BCL:0; PCL:0; RULEID:; SRVR:BY2NAM03HT221; 
x-forefront-prvs: 0588B2BD96
x-forefront-antispam-report: SFV:NSPM; SFS:(7070007)(98901004); DIR:OUT;
	SFP:1901; SCL:1; SRVR:BY2NAM03HT221;
	H:MWHPR06MB2832.namprd06.prod.outlook.com; FPR:; SPF:None; LANG:;
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 4f410004-adea-4298-efae-08d577663faf
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Feb 2018 06:58:58.0720 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY2NAM03HT221
X-Microsoft-Exchange-Diagnostics: 1; DM3NAM03HT218;
	23:9PP3avNXg3ll3ku7wjLekb8A7/Yeij3aXOj2V7gdfo9egEZQKIeaa2ETK1+jhsTp24I0EnhxlhBU7tJhru2HkljbVK19WLRaLxurdGbC2ASwH18Hej4jA8wVapftGr8G/mH8EdSZNsyCXV0bLO2E5g==
X-OriginatorOrg: hotmail.com
X-Mailman-Approved-At: Tue, 20 Feb 2018 08:19:05 -0800
Subject: Re: Splashscreen using psplash
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
X-List-Received-Date: Mon, 19 Feb 2018 18:37:49 -0000
Content-Language: en-SG
Content-Type: multipart/alternative;
	boundary="_000_MWHPR06MB2832589AA13FD8E2C9DFE792D2C80MWHPR06MB2832namp_"

--_000_MWHPR06MB2832589AA13FD8E2C9DFE792D2C80MWHPR06MB2832namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,

How do i modify the original psplash in Yocto, and how do i recompile it an=
d reintegrate the newly compiled one into Yocto ?
Any help will be greatly appreciated.

Best Regards,
Mike See

Sent from Mail<https://go.microsoft.com/fwlink/?LinkId=3D550986> for Window=
s 10


--_000_MWHPR06MB2832589AA13FD8E2C9DFE792D2C80MWHPR06MB2832namp_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:o=3D"urn:schemas-microsoft-com:office:office" xmlns:w=3D"urn:sc=
hemas-microsoft-com:office:word" xmlns:m=3D"http://schemas.microsoft.com/of=
fice/2004/12/omml" xmlns=3D"http://www.w3.org/TR/REC-html40">
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
	{font-family:DengXian;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:"\@DengXian";
	panose-1:2 1 6 0 3 1 1 1 1 1;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
.MsoChpDefault
	{mso-style-type:export-only;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 72.0pt 72.0pt 72.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style>
</head>
<body lang=3D"EN-SG" link=3D"blue" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hello, </p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">How do i modify the original psplash in Yocto, and h=
ow do i recompile it and reintegrate the newly compiled one into Yocto ?</p=
>
<p class=3D"MsoNormal">Any help will be greatly appreciated.</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Best Regards,<br>
Mike See</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Sent from <a href=3D"https://go.microsoft.com/fwlink=
/?LinkId=3D550986">
Mail</a> for Windows 10</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_MWHPR06MB2832589AA13FD8E2C9DFE792D2C80MWHPR06MB2832namp_--
