Return-Path: <vincent.daanen@orthotaxy.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5A75FE00B28; Fri,  6 Apr 2018 07:42:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.2.99 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from EUR01-DB5-obe.outbound.protection.outlook.com
	(mail-db5eur01on0099.outbound.protection.outlook.com [104.47.2.99])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A8798E00956
	for <yocto@yoctoproject.org>; Fri,  6 Apr 2018 07:42:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=orthotaxy.com;
	s=selector1; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
	bh=3AS/iXMP+nnBfdquX5/arKJBQ7bx89HwdviH7oeMWNw=;
	b=ni7wv1eKDIvG1FOEGZfTDrTWL6EuU3jeK19x71gd5dodxMHBfeymmcAzxZxthiSt/I6OaJ4Jv0/laThC+8OnTvtQEpeyUYucStp6FhAYFHrghS/tnd8LWEdHVSx3DkDfLtiGaqi9iu1jQE4UQnkTrnOdnNDHCVo7/zSgFsmYUjw=
Received: from VI1P192MB0143.EURP192.PROD.OUTLOOK.COM (10.175.180.135) by
	VI1P192MB0381.EURP192.PROD.OUTLOOK.COM (52.134.24.20) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id
	15.20.653.12; Fri, 6 Apr 2018 14:42:09 +0000
Received: from VI1P192MB0143.EURP192.PROD.OUTLOOK.COM
	([fe80::d9f:f0dc:1854:63eb]) by VI1P192MB0143.EURP192.PROD.OUTLOOK.COM
	([fe80::d9f:f0dc:1854:63eb%17]) with mapi id 15.20.0653.014;
	Fri, 6 Apr 2018 14:42:09 +0000
From: Vincent Daanen <vincent.daanen@orthotaxy.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Adding support for GPIO chipset,  Am I doing it right ?
Thread-Index: AdPNtLfCQJZpJD4IS06SmQzCjjutWA==
Date: Fri, 6 Apr 2018 14:42:09 +0000
Message-ID: <VI1P192MB01438A69AA6F7DE603C088498DBA0@VI1P192MB0143.EURP192.PROD.OUTLOOK.COM>
Accept-Language: fr-FR, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=vincent.daanen@orthotaxy.com; 
x-originating-ip: [152.77.102.34]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; VI1P192MB0381;
	7:nv434etxr9cDYYHII9hJt9aLLfy/b4Wdtl6+4o0/58krfx3oIi1pMAz8idHPkKMdV1s9aq9ahJOvd7aXbY2T/FBjCBXCSO0D4fnk1Ikh/aIZVygRaH+u12DITgvv+f8frmwhkByqiNcbPFoHzQ0Z4uQI/MtIslzukkY/s64CXPNAl/7lVx5yMBVhSQl4Jic1/kpu6NyyPAYcbtzgGwH6gMYTKmTaPtHuUqTcdIw60OrTq3ICgnZUR96O3e3JfFjx
x-ms-exchange-antispam-srfa-diagnostics: SOS;
x-ms-office365-filtering-correlation-id: 94c07469-69ee-4db3-a658-08d59bcc937c
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(7020095)(4652020)(7021125)(5600026)(4604075)(3008032)(4534165)(7022125)(4603075)(4627221)(201702281549075)(7048125)(7024125)(7027125)(7028125)(7023125)(2017052603328)(7153060)(7193020);
	SRVR:VI1P192MB0381; 
x-ms-traffictypediagnostic: VI1P192MB0381:
x-microsoft-antispam-prvs: <VI1P192MB0381B65D70F32179630946A98DBA0@VI1P192MB0381.EURP192.PROD.OUTLOOK.COM>
x-exchange-antispam-report-test: UriScan:(28532068793085)(21748063052155);
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040522)(2401047)(8121501046)(5005006)(10201501046)(3231221)(944501327)(52105095)(3002001)(93006095)(93001095)(6041310)(20161123560045)(2016111802025)(20161123564045)(20161123558120)(20161123562045)(6072148)(6043046)(201708071742011);
	SRVR:VI1P192MB0381; BCL:0; PCL:0; RULEID:; SRVR:VI1P192MB0381; 
x-forefront-prvs: 0634F37BFF
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(376002)(39380400002)(346002)(396003)(39830400003)(366004)(199004)(189003)(5660300001)(74316002)(105586002)(6436002)(9686003)(236005)(55016002)(6306002)(5640700003)(7696005)(54896002)(99286004)(33656002)(6506007)(97736004)(2351001)(2900100001)(68736007)(66066001)(606006)(5630700001)(14454004)(106356001)(7736002)(26005)(478600001)(102836004)(186003)(53936002)(6916009)(966005)(316002)(8676002)(476003)(2906002)(2501003)(25786009)(6116002)(790700001)(3846002)(3280700002)(3660700001)(1730700003)(81166006)(81156014)(9326002)(8936002)(86362001)(5250100002)(486006);
	DIR:OUT; SFP:1102; SCL:1; SRVR:VI1P192MB0381;
	H:VI1P192MB0143.EURP192.PROD.OUTLOOK.COM; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: orthotaxy.com does not designate
	permitted sender hosts)
x-microsoft-antispam-message-info: L3GQm2AsgfoX+Mc/Z72xm+nHnA94qAeEOoFMNLdnv4E+OJROC+5pqUILJwST0ySA/BOBqH+dYV+ry/WI8pzRsTbh2vUcyNeWYd/VzzxWSEuORYrtvCvLS3LtQ5Lhlw1sBM/KN+5tm1nXeRFG2AS0NftKtNb/IoyeQ5uXLfDpF+LT0ixUjvsDGSVXv6QdEj4c2I1tMJMAR6H+ZNI8FyyLLvs/Q1X4kaUlAc5TIG6Uwm+5MoYcXDh8R2seBclHbvZS1jLLPlG+qS+IJkUPMVHILkCAVtvjD0nuLqf3DeoM8Wvm9Cr4hoyto0eVHyjeGQEt63qZK4f7cxwoAlS+UgtbXKB6KZ1nmxxPYdsGPvSCWW963u9zJYaXDD/0GXPtO0S2GCeLsUh1D0g8y9YnjboT4crNm644826L30rn25ken/o=
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: orthotaxy.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 94c07469-69ee-4db3-a658-08d59bcc937c
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Apr 2018 14:42:09.1596 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 0c838133-9c42-4d53-8cbc-7a36ef5279a7
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1P192MB0381
Subject: Adding support for GPIO chipset, Am I doing it right ?
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
X-List-Received-Date: Fri, 06 Apr 2018 14:42:15 -0000
Content-Language: fr-FR
Content-Type: multipart/alternative;
	boundary="_000_VI1P192MB01438A69AA6F7DE603C088498DBA0VI1P192MB0143EURP_"

--_000_VI1P192MB01438A69AA6F7DE603C088498DBA0VI1P192MB0143EURP_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

I'm using poky Rocko.
I'm building a linux-rt based system (I'm using bitbake image-core-rt).

The GPIO chip (Fintek F81866d) is not supported by the kernel we selected (=
4.4). I downloaded the patch which adds support of Fintek F81866d to kernel=
 (from https://patchwork.ozlabs.org/patch/566380/) and add the patch to my =
kernel linux recipes (via SRC_URI +=3D)
When building the image, the kernel is being recompiled but the patch is no=
t applied (I still get an error message saying that the chip is not support=
ed when I try to modprobe the module).

Is this way of adding support of the Fintek F81866d to the kernel is the ri=
ght way ?
How can I check that the patch is applied ?

Thanks
Vincent


--_000_VI1P192MB01438A69AA6F7DE603C088498DBA0VI1P192MB0143EURP_
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
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 70.85pt 70.85pt 70.85pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-GB" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hi,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I&#8217;m using poky Rocko.<o:p></o:p></p>
<p class=3D"MsoNormal">I&#8217;m building a linux-rt based system (I&#8217;=
m using bitbake image-core-rt).<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">The GPIO chip (Fintek F81866d) is not supported by t=
he kernel we selected (4.4). I downloaded the patch which adds support of F=
intek F81866d to kernel (from
<a href=3D"https://patchwork.ozlabs.org/patch/566380/">https://patchwork.oz=
labs.org/patch/566380/</a>) and add the patch to my kernel linux recipes (v=
ia SRC_URI &#43;=3D)<o:p></o:p></p>
<p class=3D"MsoNormal">When building the image, the kernel is being recompi=
led but the patch is not applied (I still get an error message saying that =
the chip is not supported when I try to modprobe the module).<o:p></o:p></p=
>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Is this way of adding support of the Fintek F81866d =
to the kernel is the right way ?<o:p></o:p></p>
<p class=3D"MsoNormal">How can I check that the patch is applied ?<o:p></o:=
p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks<o:p></o:p></p>
<p class=3D"MsoNormal">Vincent<span lang=3D"FR" style=3D"mso-fareast-langua=
ge:EN-GB"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_VI1P192MB01438A69AA6F7DE603C088498DBA0VI1P192MB0143EURP_--
