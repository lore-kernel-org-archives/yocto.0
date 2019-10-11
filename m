Return-Path: <Diego.SantaCruz@spinetix.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8E96DE00B9E; Fri, 11 Oct 2019 10:09:30 -0700 (PDT)
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
	*      [40.107.2.82 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid *  1.0 FORGED_SPF_HELO FORGED_SPF_HELO
Received: from EUR02-VE1-obe.outbound.protection.outlook.com
	(mail-eopbgr20082.outbound.protection.outlook.com [40.107.2.82])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0362FE009E7
	for <yocto@yoctoproject.org>; Fri, 11 Oct 2019 10:09:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
	b=KPHGPx0Bcpod7EYcbsP+eCqO5HeHaXMIfZFP6/sQPj8GdwMIz873C6TJfMvd93HouKdj7raz08lglmZg+P0lcDOW7xjWOS2uScmFkcEn1e7spAZMQwLfA1vXtWSqHkEUFjUDxc4Cj1qEwKklbwggCGx5xihpJd1Ve5CotUinTA+i/BiHvfX1uymWbb4q87QD6/umW3bppYL9vfPTmxb/F2JYNMKLRxGbPsGm1wRrHodu40f/ndSwepHhhfTiacd7ASZu7wXYHq9KLMCjSJ4jr1hhQtLXed0lNImR3gU5GfQz0MPGqVo/UEMPRBURbfMc4JPYqtpefPXTyCxboyu4Cw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
	s=arcselector9901;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=N6lZ/WNekdUpw7SSdRo93IIuNK1aKB6cuJqv0zvjUgY=;
	b=R2IjHuv2Ow9s0qncFgdUGw+W5oxIv0WOTusA5dV6lxfyNB5O2JDRKaX+2DMO5U2hLZDXL8aWRkLyeroqBjJIdrW3gVdDRDyi9Xxc1d/OZN/xvnjjT/CwQJcgQqixkBRFDlOTadeKPAyphBPl9IHG05Rn1fl4Jz8murZHtNr6BLfcvvwvfUM6pXYbALfoTMCm5u4/EQtuOJ89rlnxOI3t229KBdE3IBwg9TSvliqYaYKXUu5ViElprblNuRYvbdATvlMKsre8kyOZ0GmbLlbv4SLKZ0BPK1Q16JHLXhY9EUrUWeMxMvl0xMZeZ+XcgPU8/ydADTZP+D34WO9FKB9HfQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
	smtp.mailfrom=spinetix.com;
	dmarc=pass action=none header.from=spinetix.com; 
	dkim=pass header.d=spinetix.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=spinetix.com;
	s=selector2;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=N6lZ/WNekdUpw7SSdRo93IIuNK1aKB6cuJqv0zvjUgY=;
	b=hKWKAbtgrfEhHq2D2PERo4DdXTwReF3RZJzT7Qf1J9B417S0+BgATHPTyX/iPQcVYhs5N65kZ1tRSX9i5/rxuzj/7CrmgVbJbZQp4T3TtuGXFJVR1MWefhMYD2fhegjqFpDXkS/WOpAZNdfGBSL8r/ZRVSJN2tCqDpz78co6s44=
Received: from VI1PR01MB5167.eurprd01.prod.exchangelabs.com (20.178.120.225)
	by VI1PR01MB6270.eurprd01.prod.exchangelabs.com (10.186.179.15) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2347.19;
	Fri, 11 Oct 2019 17:09:25 +0000
Received: from VI1PR01MB5167.eurprd01.prod.exchangelabs.com
	([fe80::417e:99a9:a8ed:cc52]) by
	VI1PR01MB5167.eurprd01.prod.exchangelabs.com
	([fe80::417e:99a9:a8ed:cc52%7]) with mapi id 15.20.2347.016;
	Fri, 11 Oct 2019 17:09:25 +0000
From: Diego Santa Cruz <Diego.SantaCruz@spinetix.com>
To: Diego Santa Cruz <Diego.SantaCruz@spinetix.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] Kernel patches pulled from BSP definition file are not
	applied
Thread-Index: AQHVgFaikkb2lyz4iE+Kki8uG6riNg==
Date: Fri, 11 Oct 2019 17:09:25 +0000
Message-ID: <VI1PR01MB51672CA4E502C3442E23AFD888970@VI1PR01MB5167.eurprd01.prod.exchangelabs.com>
References: <VI1PR01MB51679F138D5E050A2965463688950@VI1PR01MB5167.eurprd01.prod.exchangelabs.com>
In-Reply-To: <VI1PR01MB51679F138D5E050A2965463688950@VI1PR01MB5167.eurprd01.prod.exchangelabs.com>
Accept-Language: en-GB, fr-CH, fr-FR, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=Diego.SantaCruz@spinetix.com; 
x-originating-ip: [178.197.227.145]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 44fc441a-3be9-4176-2cb2-08d74e6dc4b5
x-ms-traffictypediagnostic: VI1PR01MB6270:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR01MB6270360C2ED6AFFC0F502FA288970@VI1PR01MB6270.eurprd01.prod.exchangelabs.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0187F3EA14
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(376002)(39840400004)(136003)(396003)(366004)(346002)(189003)(199004)(6306002)(9686003)(110136005)(6436002)(54896002)(6246003)(486006)(74316002)(316002)(2906002)(11346002)(446003)(476003)(55016002)(7736002)(33656002)(99286004)(14454004)(52536014)(5660300002)(66066001)(86362001)(81156014)(81166006)(25786009)(26005)(76176011)(102836004)(790700001)(3846002)(6116002)(9326002)(8936002)(186003)(229853002)(478600001)(6506007)(53546011)(64756008)(2501003)(7696005)(66556008)(66476007)(66446008)(66946007)(76116006)(71190400001)(256004)(71200400001)(554374003);
	DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR01MB6270;
	H:VI1PR01MB5167.eurprd01.prod.exchangelabs.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: spinetix.com does not designate
	permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: WDopL1pbZ3d4lDcow/YXEEgAcRpowXv4FdDm6vsLYUP77YGcEREU/weoaVGUbQ7iQnnrL1+WkuRJMDab5bB2zZtD/KrHWi7IXJ2dE95fmOFEelSVNQqe4EiD7+j2XpqudTnANlm7HXchC8PGjaAy+qHhcXc9a9fWRvhbMZEWp71Um6w5ufTSyvkkYmn12YsyOp12rFIinKsRWgGJzmQPJMXC5aHSWfT8gMTtsGUE8Ccl/WGEPLxuDnIh+yqQuW4h9xTHZCAkNzHMkodJ9qRZo81uJ9DlgCbq0tS9R7f/rSM1qWL1dleFg+7hraym+ilQGB+G9P6WS8Cfjmhf5H3oymzlGbpmUaoPRdVsn1ImnqIAA/hNuDOSpxU9aQLcPNvIGHI+9krAMs5r7JaoYeJ68nuU2F056CaRerPzGxMU7mI=
MIME-Version: 1.0
X-OriginatorOrg: spinetix.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 44fc441a-3be9-4176-2cb2-08d74e6dc4b5
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Oct 2019 17:09:25.3614 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 5f4034fa-ed2d-4840-a93f-acb1e9633b93
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 2U/kmO8pAN8nViGSw6Aw0DxLFy77Vh9EdL1j7hxjkyk6sMXxiwRpboxndPC2A1vAvOMaMOUlLir2ZDU7e6V/nhqFOXWj7JW1h2PRTh6qyLg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR01MB6270
Subject: Re: Kernel patches pulled from BSP definition file are not	applied
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
X-List-Received-Date: Fri, 11 Oct 2019 17:09:30 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_VI1PR01MB51672CA4E502C3442E23AFD888970VI1PR01MB5167eurp_"

--_000_VI1PR01MB51672CA4E502C3442E23AFD888970VI1PR01MB5167eurp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

I have not received any feedback on the below email and I am not sure I am =
doing the right thing.

Can anyone provide some advice as to what would be the recommended way to a=
pply kernel patches listed in a mybsp-patches.scc file for a BSP?

Adding the "mybsp-patches.scc" file to KERNEL_FEATURES works for me, but se=
ems a bit awkward given that there is a BSP definition scc file. It feels m=
ore natural to include the mybsp-patches.scc from the BSP definition scc fi=
le, but  that does not work for me, the patches are ignored.

Thanks,

Diego
--
Diego Santa Cruz, PhD
Technology Architect
T +41 21 341 15 50
diego.santacruz@spinetix.com
spinetix.com

From: yocto-bounces@yoctoproject.org <yocto-bounces@yoctoproject.org> On Be=
half Of Diego Santa Cruz
Sent: 09 October 2019 23:58
To: yocto@yoctoproject.org
Subject: [yocto] Kernel patches pulled from BSP definition file are not app=
lied

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


--_000_VI1PR01MB51672CA4E502C3442E23AFD888970VI1PR01MB5167eurp_
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
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hi,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I have not received any feedback on the below email =
and I am not sure I am doing the right thing.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Can anyone provide some advice as to what would be t=
he recommended way to apply kernel patches listed in a mybsp-patches.scc fi=
le for a BSP?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Adding the &#8220;mybsp-patches.scc&#8221; file to K=
ERNEL_FEATURES works for me, but seems a bit awkward given that there is a =
BSP definition scc file. It feels more natural to include the mybsp-patches=
.scc from the BSP definition scc file, but &nbsp;that
 does not work for me, the patches are ignored.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Diego<o:p></o:p></p>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:9.0pt;font-family:&quot;Arial&quot;,sans-=
serif">--<br>
<b>Diego Santa Cruz, PhD</b><br>
Technology Architect<br>
<span style=3D"color:gray">T &#43;41 21 341 15 50<br>
diego.santacruz@spinetix.com</span></span><span style=3D"font-size:9.0pt;fo=
nt-family:&quot;Times New Roman&quot;,serif;color:gray"><br>
</span><span style=3D"font-size:9.0pt;font-family:&quot;Arial&quot;,sans-se=
rif">spinetix.com</span><span style=3D"font-size:12.0pt;font-family:&quot;T=
imes New Roman&quot;,serif"><o:p></o:p></span></p>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0cm =
0cm 0cm">
<p class=3D"MsoNormal"><b>From:</b> yocto-bounces@yoctoproject.org &lt;yoct=
o-bounces@yoctoproject.org&gt;
<b>On Behalf Of </b>Diego Santa Cruz<br>
<b>Sent:</b> 09 October 2019 23:58<br>
<b>To:</b> yocto@yoctoproject.org<br>
<b>Subject:</b> [yocto] Kernel patches pulled from BSP definition file are =
not applied<o:p></o:p></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
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

--_000_VI1PR01MB51672CA4E502C3442E23AFD888970VI1PR01MB5167eurp_--
