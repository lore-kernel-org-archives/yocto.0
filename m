Return-Path: <johann.obermayr@sigmatek.at>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C722EE00DDC; Thu, 17 Oct 2019 05:07:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FORGED_SPF_HELO, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, SPF_HELO_PASS autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [40.107.13.111 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid *  1.0 FORGED_SPF_HELO FORGED_SPF_HELO
Received: from EUR01-HE1-obe.outbound.protection.outlook.com
	(mail-eopbgr130111.outbound.protection.outlook.com [40.107.13.111])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CC522E00DAF
	for <yocto@yoctoproject.org>; Thu, 17 Oct 2019 05:07:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
	b=YDfoanDcVluSURnRjJYRYJijznUXx65nne3+4CWHnTLP3Rl1P8O1velYEJMQgmfZBV3FAwYZxd+/RRot22PUQZEDPVm6UUNuS4ayG3KwWAbjBQstI8GteGlII5+rSEfcVkSHuq1ifKg8/9X62+X3kmpMc3gYxf7gmTNJarOd8cCIFgXHY0Ds22rDosQ9kEcViM0SbMqYqFa40rZvCaFnMIK4BgroTSpxBLk3TNPkF0Xoikjfb7pXPynCJaQ8WLHvrRLriOL4nqcpmppsAx+7+eXUxE9oTyqmeYP3QAaC13ahvTFCNX4Lk0JMDoYMF5kipWmfeg+CEIt89m85xCb6Wg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
	s=arcselector9901;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=ZeArlul1eYSjCOtV72jagTqvMO8YMMRPySgJPJdfp3s=;
	b=fUfEoPQ0WYadcUQe/rSOjbWYKYcncngnSk8or/bKz0Pcy2GjiD+cA0uHZVxzcm395JFeOW2yTWlo/rgeUpvsmq8s7qJaNVkE6eWnkCRez8ryg3zJCmOb1Ny84uEeaDLRc4q9j+nH2SKQB6aDTSL6MtcTpcdyqy4Sth9wfjEGji3+0QAnZC7wOEhKZOZV1kC/+ajrNwjblAT4zue0ZbS0GBUQduxKBh5Kdz41zJJTOQnrutggkhTXi8nHuSCxn5omsJ+F9cabqHigEoKsCP8b4qxGBqi6WA/et3c8EZvQDCMONN2E+qWRakYlAdc4zDw4Oe3D4ycJjACdOTXJKSFdog==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
	smtp.mailfrom=sigmatek.at;
	dmarc=pass action=none header.from=sigmatek.at; 
	dkim=pass header.d=sigmatek.at; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sigmatek.at;
	s=selector2;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=ZeArlul1eYSjCOtV72jagTqvMO8YMMRPySgJPJdfp3s=;
	b=ZTsFq0uQp4jpQ2CEkkMBvDHvwX3lxzcCgWWRvlmh9Fz/KIMBc+BhwxgCoo5iGbGFEN7kExrDY8UWvqyTukc/tDDdcWuorCth/E1QbwR/xkVCu7pb3IieNnPFHy8VrE7PLAzRBIJQypJTx6Rvfcdey9m3gMMIW/D/2Yki93wPYXU=
Received: from VI1PR08MB3375.eurprd08.prod.outlook.com (20.177.58.217) by
	VI1PR08MB4142.eurprd08.prod.outlook.com (20.178.204.76) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.2347.16; Thu, 17 Oct 2019 12:07:28 +0000
Received: from VI1PR08MB3375.eurprd08.prod.outlook.com
	([fe80::e9b2:80bb:cf72:4834]) by
	VI1PR08MB3375.eurprd08.prod.outlook.com
	([fe80::e9b2:80bb:cf72:4834%7]) with mapi id 15.20.2347.023;
	Thu, 17 Oct 2019 12:07:28 +0000
From: Johann Obermayr <johann.obermayr@sigmatek.at>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Help needed add own variable to toolchain environment
Thread-Index: AdWE4tE+M+VtEt81TOCCWtgmMMWtUg==
Date: Thu, 17 Oct 2019 12:07:28 +0000
Message-ID: <VI1PR08MB3375388B54100FE97499F3C5F56D0@VI1PR08MB3375.eurprd08.prod.outlook.com>
Accept-Language: de-AT, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=johann.obermayr@sigmatek.at; 
x-originating-ip: [83.215.235.253]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: cc3e0022-b0b9-48d2-d606-08d752fa94be
x-ms-traffictypediagnostic: VI1PR08MB4142:
x-microsoft-antispam-prvs: <VI1PR08MB4142B965A18E5AE0F54893DEF56D0@VI1PR08MB4142.eurprd08.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-forefront-prvs: 01930B2BA8
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(4636009)(376002)(366004)(39840400004)(136003)(396003)(346002)(199004)(189003)(3846002)(86362001)(1730700003)(790700001)(6116002)(14454004)(8936002)(25786009)(6436002)(52536014)(2351001)(256004)(2906002)(81156014)(81166006)(316002)(6916009)(54896002)(9686003)(64756008)(33656002)(66946007)(478600001)(26005)(66446008)(66556008)(19627235002)(66476007)(99286004)(4744005)(486006)(8676002)(7696005)(7736002)(102836004)(186003)(6306002)(55016002)(66066001)(74316002)(6506007)(44832011)(5640700003)(2501003)(71200400001)(476003)(71190400001)(76116006)(5660300002);
	DIR:OUT; SFP:1102; SCL:1; SRVR:VI1PR08MB4142;
	H:VI1PR08MB3375.eurprd08.prod.outlook.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: sigmatek.at does not designate
	permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: FzYzx36VB9H2Vn4yJ+2X+DcLtSexaykDuz0K4RwJRyDpiLi6NH41jeiv8i/3R2A8NRwI3B5YABOELEUeIazhTAl6ksgZArcBLUae5gQkrfYPDNDamc29Ja9X1Gvz5X6N7+U/qCwKlQLFHHugRc6N+ZjG/zEg9V5XY0GXISkHdWZcmgp+NJafRP3kQfaTJvpItnARuPMpTs9XhBcE6rJKBwF0byi9XJ5E33ccsXdau0Bi3jve8I+OQqi05iVcjJ5Yyj3cnFqHy464CS0zk9JDdugimudluVSA2o56jw0i4h27qW3JzMeMf7ZSjEJ4OOz+u+4pQiinTESbCAuy9o0AYvWN9qdz7W7TpreNv0GNJubq/ZOIpg3yrGxgEu8ks6KDN4VJjgLTyF7iOrYyXi/cGlCxm203hcZuDGMrC+nBa20=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: sigmatek.at
X-MS-Exchange-CrossTenant-Network-Message-Id: cc3e0022-b0b9-48d2-d606-08d752fa94be
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Oct 2019 12:07:28.5451 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: bcb1d87a-d2bc-486e-a62b-9ac9c746bc1b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kdNCi2IoH0KNruhWjwMxhX8MRfQsPw85yCandhJqjXZF+xvclqELuf7o1XGczlD+qXnqG+3IgUWVOq9Cc5uvhO/qRSTrf7DDi2S4hLibGPQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR08MB4142
Subject: Help needed add own variable to toolchain environment
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
X-List-Received-Date: Thu, 17 Oct 2019 12:07:33 -0000
Content-Language: de-DE
Content-Type: multipart/alternative;
	boundary="_000_VI1PR08MB3375388B54100FE97499F3C5F56D0VI1PR08MB3375eurp_"

--_000_VI1PR08MB3375388B54100FE97499F3C5F56D0VI1PR08MB3375eurp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,

i have trouble to add a own variable to the toolchain environment
I see that environment-setup-i586-poky-linx script calls all files in sysro=
ot/<dir>/environment-setup.d/*

But what is the simples and correct way to add follow line (export KSRC...)

do_something() {

    mkdir -p ${D}${SDKPATHNATIVE}/environment-setup.d/
    script=3D${D}${SDKPATHNATIVE}/environment-setup.d/sigmatek.sh

    echo '# own environment settings' > $script
    echo 'export KSRC=3D"${OECORE_NATIVE_SYSROOT}/lib/modules/${KERNEL_VERS=
ION}/build"' >> $script
}
Is the best way for create a new bb file.

Thanks
  Johann

--_000_VI1PR08MB3375388B54100FE97499F3C5F56D0VI1PR08MB3375eurp_
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
	margin:70.85pt 70.85pt 2.0cm 70.85pt;}
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
<p class=3D"MsoNormal">Hello,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">i have trouble to add a own var=
iable to the toolchain environment<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I see that environment-setup-i5=
86-poky-linx script calls all files in sysroot/&lt;dir&gt;/environment-setu=
p.d/*<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">But what is the simples and cor=
rect way to add follow line (export KSRC&#8230;)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:D=
E">do_something() {<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:D=
E"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:D=
E">&nbsp;&nbsp;&nbsp; mkdir -p ${D}${SDKPATHNATIVE}/environment-setup.d/<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:D=
E">&nbsp;&nbsp;&nbsp; script=3D${D}${SDKPATHNATIVE}/environment-setup.d/sig=
matek.sh<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:D=
E"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:D=
E">&nbsp;&nbsp;&nbsp; echo '# own environment settings' &gt; $script<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:D=
E">&nbsp;&nbsp;&nbsp; echo 'export KSRC=3D&quot;${OECORE_NATIVE_SYSROOT}/li=
b/modules/${KERNEL_VERSION}/build&quot;' &gt;&gt; $script<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:D=
E">}<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:D=
E">Is the best way for create a new bb file.
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Thanks<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp; Johann<o:p></o:p></span>=
</p>
</div>
</body>
</html>

--_000_VI1PR08MB3375388B54100FE97499F3C5F56D0VI1PR08MB3375eurp_--
