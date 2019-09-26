Return-Path: <Oliver.Westermann@cognex.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0179AE00CBC; Thu, 26 Sep 2019 06:59:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, FORGED_SPF_HELO, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [40.107.74.103 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid *  1.0 FORGED_SPF_HELO FORGED_SPF_HELO
Received: from NAM01-BN3-obe.outbound.protection.outlook.com
	(mail-eopbgr740103.outbound.protection.outlook.com [40.107.74.103])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4D8DCE0098A
	for <yocto@yoctoproject.org>; Thu, 26 Sep 2019 06:59:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
	b=fFrdYmIqgmdhNRSNyrGqcZK2s25o8njeZd8jQbUIWdn/6TW7o2WSpGiu5EttA0Kjq2OOs+1QdVLeZ2iU6dn06hQTjMqKSml7po0tbRwj426FCtNdbtPOS12DbFFyFep7yxmBB/+90hUIyhjyuWEWROGNpcMgAxNfciVKPxmKSNP13vTCP+V8MWyq428wb5pzgQg4UXLJT5GBkB3fiDe6tNvseIhZ0umwo4Enll8MJabwRHgv5JIbB9Kzr0irm7G3kzZHqgnL9TvqETDxG/mVq+XgWXrEnvZMm8JFoWbyD8Ns43nCGzmvL9Q9eBPz8+4IHZEX0OjHhZzYCST74V80+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
	s=arcselector9901;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=60X2URU/zxat5Y8ovPdDhWlyBX2PAqX5hgX7JngLdc4=;
	b=PPj0vubBcbxmVcvyKqPhMNYb74G3uEqOLivAnBxE6eXJPLi6OAmMfi22moSKZ7ObHo2t49UONb2HxUvLqikgf1Bft1Oqvec6MoNghF7CzEEe2Vgkh0dIFLdWGnOrLPdurzh/cZ8xXoQ1ipf2NzeX1LLlCgrMc/6iOk2K6pp7Hkx9LK8h2ObnEOHOPj7b8SxVBIL9HYolRTyYXsBOU+TR+l/KAAqd+HEogbsbgtanDF2shgxeLqiKn0r8Yl8pkZxtMYBoNfP1tFO4+Ig11vKg4YvsM2uoqJWkApb1Lcmqi9bl5K9CuVCaR1L9HG1PDj2RTG2Q/zBjeeyp0rebClOtvA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
	smtp.mailfrom=cognex.com; dmarc=pass action=none header.from=cognex.com;
	dkim=pass header.d=cognex.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=cognexcorporation.onmicrosoft.com;
	s=selector2-cognexcorporation-onmicrosoft-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=60X2URU/zxat5Y8ovPdDhWlyBX2PAqX5hgX7JngLdc4=;
	b=DcbW1/RRafZ0HBR41kLCTI+Y9ckfXNOOvDpt7MYEm3qgaEDFBytUHxwFluzFsKzvETFJ+emF4QjkQzOnvYGfnJ4+/ssDyPsgHUOFyXtk5NlfpS3ryRuN65hJ/u31OCGRphj9M7n1DpD+iIru6RhmXCz2YB4bsS/cZb6dqqXgtWY=
Received: from BN6PR06MB3138.namprd06.prod.outlook.com (10.174.95.141) by
	BN6PR06MB2642.namprd06.prod.outlook.com (10.173.143.146) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.2284.25; Thu, 26 Sep 2019 13:59:05 +0000
Received: from BN6PR06MB3138.namprd06.prod.outlook.com
	([fe80::71a7:c2b1:bead:84a]) by BN6PR06MB3138.namprd06.prod.outlook.com
	([fe80::71a7:c2b1:bead:84a%7]) with mapi id 15.20.2284.028;
	Thu, 26 Sep 2019 13:59:05 +0000
From: "Westermann, Oliver" <Oliver.Westermann@cognex.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Transfer meta-data between recipes
Thread-Index: AdV0cXdCxiSZ5ZYFQbaP96LVBU/E6Q==
Date: Thu, 26 Sep 2019 13:59:05 +0000
Message-ID: <BN6PR06MB31385BF1EE592AF8730582AA86860@BN6PR06MB3138.namprd06.prod.outlook.com>
Accept-Language: de-DE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=Oliver.Westermann@cognex.com; 
x-originating-ip: [212.117.79.11]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7850b722-a745-49cb-e72f-08d74289b1b2
x-microsoft-antispam: BCL:0; PCL:0;
	RULEID:(2390118)(7020095)(4652040)(8989299)(5600167)(711020)(4605104)(1401327)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
	SRVR:BN6PR06MB2642; 
x-ms-traffictypediagnostic: BN6PR06MB2642:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <BN6PR06MB26429C6654F76AC247CCD42E86860@BN6PR06MB2642.namprd06.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3383;
x-forefront-prvs: 0172F0EF77
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(4636009)(346002)(39850400004)(396003)(136003)(366004)(376002)(199004)(189003)(4744005)(966005)(2906002)(81156014)(64756008)(1730700003)(71200400001)(186003)(606006)(7696005)(71190400001)(7736002)(86362001)(66476007)(476003)(66066001)(26005)(256004)(6506007)(102836004)(81166006)(486006)(6916009)(52536014)(8676002)(76116006)(6436002)(478600001)(19627235002)(66556008)(66946007)(9686003)(66446008)(2351001)(3480700005)(236005)(6116002)(790700001)(5660300002)(54896002)(6306002)(316002)(99286004)(8936002)(74316002)(25786009)(2501003)(3846002)(33656002)(55016002)(14454004)(5640700003);
	DIR:OUT; SFP:1102; SCL:1; SRVR:BN6PR06MB2642;
	H:BN6PR06MB3138.namprd06.prod.outlook.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: cognex.com does not designate
	permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: LE+M4nt9hbuMQssMlmL45uCbCwBvQLuNgxbCv8sZOwE83m9he804jmGXzdb+J6ln4ENKSDFlshk9c+juETwpT0HfPmyle35DbbuerxneMpV/LaoSNndplZ+WR6ACkHQCX0NZysR25i6Olk50mFSypwcQAtSMdVtq8ixkciJdoMIerq+aDdx1QhdjtuPmxMY7RWi4YOQrNFHbrfACXfGqzvXxeCVtJlOtpipjcN8OWdLb9xOH2x5SUVmx+Er7DgSWyVnoeZwdOSSsSDh10GAzrc1fFq5L+ab5jdckAd6Zq1iD2K54XkAg4lwhwAX6rJIYCThnN6DW1yp3sEvwnns/+vx45vFh7M4whcSyoOdl5wZiK59E9CDjUUWdJKx9cYWKOp37H5iPCOvLarvTGn60QwTV7qqv5W/VkUjE21qwoPr3MzTDEvtSOuG5i4WveB7oioZX8K6ieQavEP1jlDmbNQ==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: cognex.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7850b722-a745-49cb-e72f-08d74289b1b2
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Sep 2019 13:59:05.4059 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c12007a4-882b-4381-b05a-b783431570c7
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: EQVPxAPTgR7JJUxJnC4MLPMdmYAipSPpVZPDYj614VZp/UtS6fndy55mGtEhEC5Zt4Rw7TcdxTRbr6U568sz+dymnagKq6e3OVfQGCZ8Dvw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR06MB2642
Subject: Transfer meta-data between recipes
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
X-List-Received-Date: Thu, 26 Sep 2019 13:59:09 -0000
Content-Language: de-DE
Content-Type: multipart/alternative;
	boundary="_000_BN6PR06MB31385BF1EE592AF8730582AA86860BN6PR06MB3138namp_"

--_000_BN6PR06MB31385BF1EE592AF8730582AA86860BN6PR06MB3138namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hey,

I'm trying to implement a bootloader-signing mechanism within yocto for ext=
ended secure-boot support. The bootloader and it's recipes are provided by =
NXP (in this case it's the imx-boot_*.bb recipe from meta-freescale) and I =
want to use a secondary recipe which I am creating to sign the resulting bo=
ot binary. My issue is that the NXP code signing tool needs some info about=
 the binary to sign. These details are send to stdout by imx-mkimage tool, =
which is called by the imx boot makefile (used here: https://github.com/Fre=
escale/meta-freescale/blob/master/recipes-bsp/imx-mkimage/imx-boot_0.2.bb#L=
104).

I can override the compile step of imx-boot to save stdout into a file, dep=
loy this file and later parse it to extract the offset dump, but that feels=
 "ugly" and the file is by no means a output of the imx-boot recipe for the=
 target system, but for another step. Is there any recommended way to parse=
 such variable metadata between recipes?

Olli


--_000_BN6PR06MB31385BF1EE592AF8730582AA86860BN6PR06MB3138namp_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:dt=3D"uuid:C2F41010-65B3-11d1-A29F-00AA00C14882" xmlns:m=3D"http://sc=
hemas.microsoft.com/office/2004/12/omml" xmlns=3D"http://www.w3.org/TR/REC-=
html40">
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
span.E-MailFormatvorlage17
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
<body lang=3D"DE" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span lang=3D"EN-US">Hey,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I&#8217;m trying to implement a=
 bootloader-signing mechanism within yocto for extended secure-boot support=
. The bootloader and it&#8217;s recipes are provided by NXP (in this case i=
t&#8217;s the imx-boot_*.bb recipe from meta-freescale)
 and I want to use a secondary recipe which I am creating to sign the resul=
ting boot binary. My issue is that the NXP code signing tool needs some inf=
o about the binary to sign. These details are send to stdout by imx-mkimage=
 tool, which is called by the imx
 boot makefile (used here: </span><a href=3D"https://github.com/Freescale/m=
eta-freescale/blob/master/recipes-bsp/imx-mkimage/imx-boot_0.2.bb#L104"><sp=
an lang=3D"EN-US">https://github.com/Freescale/meta-freescale/blob/master/r=
ecipes-bsp/imx-mkimage/imx-boot_0.2.bb#L104</span></a><span lang=3D"EN-US">=
).<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I can override the compile step=
 of imx-boot to save stdout into a file, deploy this file and later parse i=
t to extract the offset dump, but that feels &#8220;ugly&#8221; and the fil=
e is by no means a output of the imx-boot recipe
 for the target system, but for another step. Is there any recommended way =
to parse such variable metadata between recipes?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Olli<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
</div>
</body>
</html>

--_000_BN6PR06MB31385BF1EE592AF8730582AA86860BN6PR06MB3138namp_--
