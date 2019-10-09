Return-Path: <Diego.SantaCruz@spinetix.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F1944E00D8F; Wed,  9 Oct 2019 14:57:43 -0700 (PDT)
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
	*      [40.107.1.64 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid *  1.0 FORGED_SPF_HELO FORGED_SPF_HELO
Received: from EUR02-HE1-obe.outbound.protection.outlook.com
	(mail-eopbgr10064.outbound.protection.outlook.com [40.107.1.64])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2B56DE00C25
	for <yocto@yoctoproject.org>; Wed,  9 Oct 2019 14:57:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
	b=lQ1ZOg9/koEay7wGwK/fmra0WAC3rvVeHjVZDZRqQgcoEVAljW5cuiFWOSoADVWUTkMXQG7f0kxA5GxCbFqH1b1jQE8HUZL5IM9YjEqDKgX/KE6ETBcemL0un3o1qyeAaY0prDODz7MsHTk5/zh+ac5vCtL+af8+8clhbK0YvIelTnuWX7XXqGGLhZXDCfztVPgryIBixGSVfJGBMHk691phRJGhP6GbTRgQnIjpUsxigbKvmeCKJuoHCcA9wegf9zuE32XO76Kam3dnf01zy6OehHf1eSG7Mq2nMwKCsCx/jHDjSkq73J1CwjKMKW0cQ8wpsPSeMXQhQSRzsG/kUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
	s=arcselector9901;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=XsZe7zmgpASQEclsZsQxzNPDFeXVxqr8ZHFh6oAkFLc=;
	b=SlG1BEDP2AHAeUQttbZFkycBO2YNGRHSJAvF1KeyoXdneUaY3l3OoBI62TsuFQqGVHSDcwd2Tu6CDuTk1EHT2LqUVwUTc4a4Z4rdIIb5XemmmTEWA/jWDGJDq/MlaCF/9HZroFNV+9RtTZxFM1ZV4ZhSLs/8LOOPgrjPpl9SywrUkA34vS3VVdPFiWTFcObWqdjfDQ4DDUUIw2ep4FouU+rFGEABoQgtbZfEVi2lNdjea1t0PvHdv3FtfHPyu/N4ECZx0MYrEwSp+cUMpYQ8SW1PMhiaSubr1nm+AyO64YTrPc/Fzb84YueFDMNAzthZ+a0ACiI45xDvk4z1kHj3zg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
	smtp.mailfrom=spinetix.com;
	dmarc=pass action=none header.from=spinetix.com; 
	dkim=pass header.d=spinetix.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=spinetix.com;
	s=selector2;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=XsZe7zmgpASQEclsZsQxzNPDFeXVxqr8ZHFh6oAkFLc=;
	b=ry+DXg1+dfpFbYe73z9pSA2KhJrOWQ42U/AaENkGAeQv4eKr0Vy/t+7IhUZk6IEmHGO3tBSpvHyWqpuUMXcOqy0MMwzoAme8sF8yySVwY+ANVKzYkt5dJuqr8C8HiCMIN5sgwszHiL72gUQh9nqq5BJbtCPsq1gC3B98BZv15og=
Received: from VI1PR01MB5167.eurprd01.prod.exchangelabs.com (20.178.120.225)
	by VI1PR01MB5295.eurprd01.prod.exchangelabs.com (20.178.122.13) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2347.16;
	Wed, 9 Oct 2019 21:57:38 +0000
Received: from VI1PR01MB5167.eurprd01.prod.exchangelabs.com
	([fe80::417e:99a9:a8ed:cc52]) by
	VI1PR01MB5167.eurprd01.prod.exchangelabs.com
	([fe80::417e:99a9:a8ed:cc52%7]) with mapi id 15.20.2327.026;
	Wed, 9 Oct 2019 21:57:37 +0000
From: Diego Santa Cruz <Diego.SantaCruz@spinetix.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Kernel patches pulled from BSP definition file are not applied
Thread-Index: AdV+7EUz0GlmfSZCR32xesCEZrReqw==
Date: Wed, 9 Oct 2019 21:57:37 +0000
Message-ID: <VI1PR01MB51679F138D5E050A2965463688950@VI1PR01MB5167.eurprd01.prod.exchangelabs.com>
Accept-Language: en-GB, fr-CH, fr-FR, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=Diego.SantaCruz@spinetix.com; 
x-originating-ip: [85.7.242.7]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 403a76ce-2cd5-4603-4016-08d74d03b302
x-ms-traffictypediagnostic: VI1PR01MB5295:
x-microsoft-antispam-prvs: <VI1PR01MB5295ABCC3B9E841A5A8F26B188950@VI1PR01MB5295.eurprd01.prod.exchangelabs.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 018577E36E
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(376002)(346002)(396003)(136003)(366004)(39830400003)(199004)(189003)(52536014)(25786009)(5640700003)(99286004)(33656002)(81156014)(81166006)(8676002)(1730700003)(316002)(486006)(14454004)(476003)(508600001)(2906002)(86362001)(2501003)(6116002)(790700001)(3846002)(6306002)(9686003)(55016002)(54896002)(66946007)(76116006)(66066001)(5660300002)(66446008)(6506007)(26005)(7736002)(64756008)(66556008)(66476007)(102836004)(74316002)(71190400001)(71200400001)(2351001)(6436002)(256004)(6916009)(8936002)(186003)(7696005);
	DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR01MB5295;
	H:VI1PR01MB5167.eurprd01.prod.exchangelabs.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: spinetix.com does not designate
	permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: XN2FtrcGmXU7OniX24hJythiZ8zh9lQ7vWl27205yYRlBdyahQRUYHXlToxczJQCkHFAbiQJikSpp+ND1c5NUTiK7mAnNPrTm8mm/9T7kF2PMykWtJoF9w6HotEdrrGeAyUsFFBIc2CjDZPoxW8WojTV8EhwAB4qtj/hefun5mpkk0G+WrbqTIGA33E9pRSWHAwBwRoAxuuiA068uPjcPV1OP0qr9DOCZSv7hzBd+e2CWfyiYGS+TtZ3ia8drVkrlog+wwia6GwTf6hP3GSzDK5An1So3Igil4TkplFNTFCKdrO7U746mvq+tmA3GlAySo5t+Rh1J/b9GIc65UsUbhJIH9g46F0pyzLQdiReSN/smPvbyjU3PHC6DZUcwrsa+oswzg/49Jhwu0RmNyFfUCjrTC+/4tzOP636zOG6m1E=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: spinetix.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 403a76ce-2cd5-4603-4016-08d74d03b302
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Oct 2019 21:57:37.8015 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 5f4034fa-ed2d-4840-a93f-acb1e9633b93
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hJrgXMyVu02U6KFMrgWEfogZnRk/pwYWisQniXUqYwFaWECcj+cGWOD1mqVMRgd9RhkfcQHGYJRPMSvNGUE4Vx8mx32KOZXI1nSHtgdIgCc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR01MB5295
Subject: Kernel patches pulled from BSP definition file are not applied
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
X-List-Received-Date: Wed, 09 Oct 2019 21:57:44 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_VI1PR01MB51679F138D5E050A2965463688950VI1PR01MB5167eurp_"

--_000_VI1PR01MB51679F138D5E050A2965463688950VI1PR01MB5167eurp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello there,

I am trying to add a few BSP specific kernel patches for my BSP and I wante=
d to pull them from the BSP definition scc file. However, I cannot get thos=
e patches applied (I am using thud). After looking around the kernel-yocto.=
bbclass it seems that patches which get pulled from the BSP definition file=
 are ignored. What is the rationale behind that behavior? How should I go a=
bout it?

To be more specific I have the following structure within my (recipe-space)=
 kernel metadata.

bsp
`-- mybsp
    |-- mypatch.patch
    |-- mybsp.cfg
    |-- msbsp.scc
    `-- mybsp-standard.scc

The mybsp-standard.scc is the BSP definition file, which includes mybsp.scc=
 (among other things). The mybsp.scc file looks as follows

kconf hardware mybsp.cfg
patch mypatch.patch

The mypatch.patch file does not get applied when building the kernel, I che=
cked and it is not added to the patch.queue file. But if I add the followin=
g to the recipe

KERNEL_FEATURES +=3D " bsp/mybsp/mybsp.scc"

Then the patch is added to patch.queue and is applied.

Looking into do_kernel_metadata in kernel-yocto.bbclass it parses the scc f=
iles in two steps, run1 and run2.

The run1 step uses elements=3D"`echo -n ${bsp_definition} ${sccs} ${patches=
} ${KERNEL_FEATURES}`" and generates cfg, merge and meta, so that picks up =
the mybsp.scc file contents, but this step does not generate the patch queu=
e.

The run2 step uses elements=3D"`echo -n ${sccs} ${patches} ${KERNEL_FEATURE=
S}`" and generates the patch queue, but this only includes the scc files in=
 SRC_URI and KERNEL_FEATURES, but specifically leaves out the BSP definitio=
n file.

Adding the mybsp.scc file to KERNEL_FEATURES to get this to work seems a bi=
t odd. What is the recommended way of applying BSP specific kernel patches?

Thanks,

Diego
--
Diego Santa Cruz, PhD
Technology Architect
spinetix.com


--_000_VI1PR01MB51679F138D5E050A2965463688950VI1PR01MB5167eurp_
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
	font-family:"Calibri",sans-serif;}
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
	font-family:"Calibri",sans-serif;}
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
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hello there,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I am trying to add a few BSP specific kernel patches=
 for my BSP and I wanted to pull them from the BSP definition scc file. How=
ever, I cannot get those patches applied (I am using thud). After looking a=
round the kernel-yocto.bbclass it
 seems that patches which get pulled from the BSP definition file are ignor=
ed. What is the rationale behind that behavior? How should I go about it?<o=
:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">To be more specific I have the following structure w=
ithin my (recipe-space) kernel metadata.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">bsp<o:p></o:p></p>
<p class=3D"MsoNormal">`-- mybsp<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; |-- mypatch.patch<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; |-- mybsp.cfg<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; |-- msbsp.scc<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; `-- mybsp-standard.scc<o:p></o:p>=
</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">The mybsp-standard.scc is the BSP definition file, w=
hich includes mybsp.scc (among other things). The mybsp.scc file looks as f=
ollows<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">kconf hardware mybsp.cfg<o:p></o:p></p>
<p class=3D"MsoNormal">patch mypatch.patch <o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">The mypatch.patch file does not get applied when bui=
lding the kernel, I checked and it is not added to the patch.queue file. Bu=
t if I add the following to the recipe<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">KERNEL_FEATURES &#43;=3D &quot; bsp/mybsp/mybsp.scc&=
quot;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Then the patch is added to patch.queue and is applie=
d.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Looking into do_kernel_metadata in kernel-yocto.bbcl=
ass it parses the scc files in two steps, run1 and run2.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">The run1 step uses elements=3D&quot;`echo -n ${bsp_d=
efinition} ${sccs} ${patches} ${KERNEL_FEATURES}`&quot; and generates cfg, =
merge and meta, so that picks up the mybsp.scc file contents, but this step=
 does not generate the patch queue.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">The run2 step uses elements=3D&quot;`echo -n ${sccs}=
 ${patches} ${KERNEL_FEATURES}`&quot; and generates the patch queue, but th=
is only includes the scc files in SRC_URI and KERNEL_FEATURES, but specific=
ally leaves out the BSP definition file.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Adding the mybsp.scc file to KERNEL_FEATURES to get =
this to work seems a bit odd. What is the recommended way of applying BSP s=
pecific kernel patches?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Diego<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:9.0pt;font-family:&quot;Arial&quot;,sans-=
serif">--
<br>
<b>Diego Santa Cruz, PhD<br>
</b><span style=3D"color:gray">Technology Architect<br>
spinetix.com</span></span><span style=3D"font-size:12.0pt;font-family:&quot=
;Times New Roman&quot;,serif;color:gray"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_VI1PR01MB51679F138D5E050A2965463688950VI1PR01MB5167eurp_--
