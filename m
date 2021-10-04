Return-Path: <jpdoyon@newtrax.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D75E9C433F5
	for <webhook@archiver.kernel.org>; Mon,  4 Oct 2021 18:41:17 +0000 (UTC)
Received: from CAN01-QB1-obe.outbound.protection.outlook.com
 (CAN01-QB1-obe.outbound.protection.outlook.com [40.107.66.109])
 by mx.groups.io with SMTP id smtpd.web12.14171.1633372876271560069
 for <yocto@lists.yoctoproject.org>;
 Mon, 04 Oct 2021 11:41:16 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@newtrax.com header.s=selector2 header.b=RbsIkZ7S;
 spf=pass (domain: newtrax.com, ip: 40.107.66.109,
 mailfrom: jpdoyon@newtrax.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EVTcjip/Ah5jURov+HTnKXMCnANOscvZfDmRACYcBFmCO31sRUfqIAfZUMxzV+LJF5L15FgJV2WQlVfWyksN/Sjlf7ozrXolmVKNbh2DPMA3dQC5NDB3q1BFSV0zrSWeECK/9XcrqSh97+v0zGAMHSFAauRpalUCtIhVSh1IrlFsKyYpTVW0ozCDftbf/fL4Dyfk7VfODhfOjksZdyUIgz+ir9sjbkKjck4LuZfRY+nqCM1rVed12d+MBTn1RDw8QlObG3TLxa6PMKGj9sQzI6X3KocArPNQhhM6P2fnHUadS6Gjs86Sm4MJxVpqmRoJ1pbLcGLzdLE1DToDocDLig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hYyAchA5+aUfRD5qNxsoWxO/bwtA/HadaUd1bn1nj5k=;
 b=AcUtO12PoguVsq00Y3+ytHlPLuyKOw9GHrSl9XJJ42iT9R66Z1LiuoYGQaZYZcN35O2SK5qz0hp7K2gWjRpB4UIjtEnBq9xmhahAGrSFCNEzWwkNK4wpT1wwLmYvQz2n6e4uIkpPUNlqWiCQLDoMe0bAq1LTYOAM92lqWbjmX8wZd2Bnnx1IhfhHBYZySC3JC1MpZGz4PF8eqgy+rH+dVfoXdkkwGitrXKID2ULGhfIiSAgWUUCv+5DaAvTykeqH6Wf6o60wL3+a+B3YEL/0HSU+eWWduCFEqjPLb6vCh+ZnR5jSu19RVgBOWtk9VllbkunLVtXs4VN+2hVMD1SQbQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=fail (sender ip is
 52.242.32.10) smtp.rcpttodomain=lists.yoctoproject.org
 smtp.mailfrom=newtrax.com; dmarc=none action=none header.from=newtrax.com;
 dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=newtrax.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hYyAchA5+aUfRD5qNxsoWxO/bwtA/HadaUd1bn1nj5k=;
 b=RbsIkZ7SOyzixqSfIi/VssCl7oMhBEU8p4HdN02QEnio/R/R5rKp8qO9wtisIUYjmPubDqdhF/m9Qv2b0fCmvtvPamlgp4DncQEk02sMzwGnh+55CUpsmA/RzYr/wLe3xTn69697LkOihGCp1fWUKYIJkGnxfmvcrihepNSaSUQ=
Received: from YQBPR0101CA0081.CANPRD01.PROD.OUTLOOK.COM (2603:10b6:c01:4::14)
 by QB1PR01MB3219.CANPRD01.PROD.OUTLOOK.COM (2603:10b6:c00:30::33) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4566.15; Mon, 4 Oct
 2021 18:41:13 +0000
Received: from QB1CAN01FT009.eop-CAN01.prod.protection.outlook.com
 (2603:10b6:c01:4:cafe::ba) by YQBPR0101CA0081.outlook.office365.com
 (2603:10b6:c01:4::14) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4566.17 via Frontend
 Transport; Mon, 4 Oct 2021 18:41:13 +0000
X-MS-Exchange-Authentication-Results: spf=fail (sender IP is 52.242.32.10)
 smtp.mailfrom=newtrax.com; lists.yoctoproject.org; dkim=none (message not
 signed) header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=newtrax.com;
Received-SPF: Fail (protection.outlook.com: domain of newtrax.com does not
 designate 52.242.32.10 as permitted sender) receiver=protection.outlook.com;
 client-ip=52.242.32.10; helo=ca2.smtp.exclaimer.net;
Received: from ca2.smtp.exclaimer.net (52.242.32.10) by
 QB1CAN01FT009.mail.protection.outlook.com (10.152.120.113) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.4566.14 via Frontend Transport; Mon, 4 Oct 2021 18:41:11 +0000
Received: from CAN01-QB1-obe.outbound.protection.outlook.com (104.47.60.54)
	 by ca2.smtp.exclaimer.net (52.242.32.10) with Exclaimer Signature Manager
	 ESMTP Proxy ca2.smtp.exclaimer.net (tlsversion=TLS12,
	 tlscipher=TLS_ECDHE_WITH_AES256_SHA384); Mon, 4 Oct 2021 18:41:12 +0000
X-ExclaimerHostedSignatures-MessageProcessed: true
X-ExclaimerProxyLatency: 17391495
X-ExclaimerImprintLatency: 3846636
X-ExclaimerImprintAction: d65c83c19e514a83a5d71298eeafb24f
Content-Type: multipart/related;
	boundary="----_=_NextPart_77f63ec8-4a76-41ad-805a-5046fd7e3566"
Received: from YQBPR0101MB4633.CANPRD01.PROD.OUTLOOK.COM
 (2603:10b6:c01:14::18) by YQXPR01MB3512.CANPRD01.PROD.OUTLOOK.COM
 (2603:10b6:c00:51::18) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4566.17; Mon, 4 Oct
 2021 18:41:10 +0000
Received: from YQBPR0101MB4633.CANPRD01.PROD.OUTLOOK.COM
 ([fe80::802d:2a0b:cdd9:d653]) by YQBPR0101MB4633.CANPRD01.PROD.OUTLOOK.COM
 ([fe80::802d:2a0b:cdd9:d653%4]) with mapi id 15.20.4544.026; Mon, 4 Oct 2021
 18:41:09 +0000
From: Jean-Pierre Doyon <jpdoyon@newtrax.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Building a native package that includes tools + u-boot binaries
Thread-Topic: Building a native package that includes tools + u-boot binaries
Thread-Index: Ade5TUFD04WD1hXGR/ScfE0aYluaYQ==
Date: Mon, 4 Oct 2021 18:41:09 +0000
Message-ID: 
 <YQBPR0101MB4633B8539174AA7533ABB500BFAE9@YQBPR0101MB4633.CANPRD01.PROD.OUTLOOK.COM>
Accept-Language: fr-CA, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
Authentication-Results-Original: lists.yoctoproject.org; dkim=none (message
 not signed) header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=newtrax.com;
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-Correlation-Id: 95314b69-66c0-409e-00a2-08d987668a65
x-ms-traffictypediagnostic: YQXPR01MB3512:|QB1PR01MB3219:
X-Microsoft-Antispam-PRVS: 
	<QB1PR01MB32198A4DE6334AF5643680F8BFAE9@QB1PR01MB3219.CANPRD01.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:9508;OLM:9508;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 wp56X6W9kVWhMA6tCJVb8Dlsp/ScWD5o13IxXpekkmDJsY+oWXe5vR0NgASaVADgW8oTLVfANzM4FLz+362WfM88LHux7ikxHCbtmNJ3QorNGM4LmqED5fYYn17ozXE2qdm08XpIEk0hnw9W2LUvUiFK0LvMhLauu+CkWdsECqdnI6JeIJnO9cfbRQswsk+9HF8O2jN3BzlndsiYP/anW3wiKTbpUA571erAG1cbrJoPdM2dx4Tb+/xBCuIwkbrFnTzm2qN5aYUkA5CA2bQchJLiOQIs6waiGwH1OjP6eKQzP7s0o8qCnNUF1qYgBQscSfqQhwcc4d+ZV2tc2Wt0a9Kf4IDza5WEOc+s4UI1HrxqCvAyEcyx5UJkXGTg8XZBF1MNzpWqTyrMEqQIBDxT1nb/OywrDM5NBy+kNNmgKtOWK5W6QA5htvdXZHu7N1t6FjpoaQhNBUmQlMg1Cw2BEjtuzKviN3NDPWv0agMcMqRyYo5vJR/a+SiUCwf+b8L1uTZpltzW+pmS8uLcNtrel9/LcqUO3bT+xDer7UH5dY0s8rINmmmsC+FiCUqw+RnjZLr3z5qJ7vTkuoT05RLYo5W1/qwGKKpeW/ZtShsiNeQG1/bJeO/SqbIVE8sV9q6LGSKdJIAbWPU6bc2uFDQkNxB/xL/a6uPTSRqyVpDYLf085i680m7Hnb1L7dgJXm7a0nZCXOIBgt/vJfJRZwl1pA==
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:YQBPR0101MB4633.CANPRD01.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(4636009)(366004)(6916009)(33656002)(8936002)(86362001)(186003)(9686003)(6506007)(83380400001)(52536014)(2906002)(5660300002)(7696005)(26005)(38070700005)(55016002)(76116006)(71200400001)(508600001)(66946007)(8676002)(66476007)(66556008)(64756008)(122000001)(316002)(66446008)(38100700002);DIR:OUT;SFP:1102;
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: YQXPR01MB3512
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 QB1CAN01FT009.eop-CAN01.prod.protection.outlook.com
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	6c34d690-485f-4bc3-16be-08d9876688be
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	ERGQXBB2hpHVft7vXHxpA09YCG1+F+7y3GOMWARMdg5QlYCzRiaGS+mTN0StLK2+/wEEu6lceZX1ujwzkZypHv3SzPGpgZTyNvzWR7KTaPBEof9km5AgBthraRRx7jIMA2+NKZubAj4U3VwSkCyYMrKon9QfrGtARzhVHJcOjcMU+jj3/55iIwqztsN9i0o3yYS/TjATOj008d73pbMPfLdW0gw2ZYQ2vK5mpxq8bC8q+jsyu3HTJetkLxiH/hOylcCMcR6qPmjIwbc3hV19o9B4LpQGTlFOXclUUBWZsFcZ55M0007TGVT23UYY03eZUd8pO6/59XOoFHvCVfl+ivuoOXjXr5EPPuFhd40VvoQ8KQXwDZ2mC/84FEt+RHXtjYdt3typsOd7ZN4Q0hOzY2xitscJYHjHLq2Un4vzZ5P3fYCqJcKO34FvzuBEN/Eze11TKJXfGe0yj39pv2rrXOx84Z1f6372JoWY5OFK8wRdJx3YzGmnRakA9B661NX7xbMVVayqszGQ9Upoy/eEsmrPddE62WhdFNT+jDYqej+e9a5tsRPki8VJ5sYmfmn3QMEPRw/Ml/pL1tJjK17r/b+VFhIMuPvxBtc4e81xu5Rr45Ms+dR/cMhoOIh+3pRqXXlpSyi6CJB3R8492ObyPO06DPh6Be3mERA9u9sVZ4JnNQ6hQStuhxU+DcbpYav2zhV8XBsdVMCS/8euUydP/hcna4WmO4FLwK3lD40Z5Flx6DanEhGObiLFoKvS1DOFe6QPczk0kox5y48Ipk+XRVR1j9dWdSejBiGfzX01o/L4j2IdDO6aBZk25FsKV40JWAQo2jCu8MTjwujsoDhCiQ==
X-Forefront-Antispam-Report: 
	CIP:52.242.32.10;CTRY:CA;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:ca2.smtp.exclaimer.net;PTR:ca2.smtp.exclaimer.net;CAT:NONE;SFS:(4636009)(46966006)(36840700001)(55016002)(36860700001)(15974865002)(186003)(47076005)(26005)(86362001)(40140700001)(83380400001)(336012)(316002)(508600001)(52536014)(9686003)(6916009)(7696005)(70206006)(8936002)(7636003)(7596003)(166002)(82310400003)(33964004)(2906002)(6506007)(356005)(5660300002)(8676002)(70586007)(33656002);DIR:OUT;SFP:1102;
X-OriginatorOrg: newtrax.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Oct 2021 18:41:11.7649
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 95314b69-66c0-409e-00a2-08d987668a65
X-MS-Exchange-CrossTenant-Id: bf37a72e-c274-4583-84c2-a52a9a06f66a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: 
 TenantId=bf37a72e-c274-4583-84c2-a52a9a06f66a;Ip=[52.242.32.10];Helo=[ca2.smtp.exclaimer.net]
X-MS-Exchange-CrossTenant-AuthSource: 
	QB1CAN01FT009.eop-CAN01.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: QB1PR01MB3219
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 04 Oct 2021 18:41:17 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/54942

This is a multi-part message in MIME format.

------_=_NextPart_77f63ec8-4a76-41ad-805a-5046fd7e3566
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_YQBPR0101MB4633B8539174AA7533ABB500BFAE9YQBPR0101MB4633_"

--_000_YQBPR0101MB4633B8539174AA7533ABB500BFAE9YQBPR0101MB4633_
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

I am trying to create a first install package for our device, which would c=
ontain an install tool binary, and the required files to install.  In our c=
ase, that would be

From imx-usb_loader recipe:
imx_usb
imx_usb.conf
mx6_usb_rom.conf
mx6_usb_sdp_spl.conf

From u-boot recipe:
u-boot.img
SPL
uEnv.txt

The idea would be for the recipe to generate a tarball with all of that  an=
d a script, that would automate the USB download project (the script: "inst=
all.sh" is already done, and is obviously out of scope for this question)

So I created a new recipe (box1-usb-loader.bb) which depends on both u-boot=
 and imx-usb-loader.  But I can't seem to get the u-boot target files liste=
d above to appear in my recipe-sysroot directory.

I've been scouring the web for a day now, and I've found plenty of people a=
sking about seemingly related issues, but nothing that actually gets me nea=
rer.  From what I could find, I'm missing something in my u-boot.bbappend t=
o stage the three files I need, but everything I've tried has failed.  The =
most promising post got me to add this:


SYSROOT_DIRS +=3D "${D}/boot"

do_stage () {
                install -d ${D}/boot
    install -m 0644 ${WORKDIR}/package/boot/u-boot.img ${D}/boot
    install -m 0644 ${WORKDIR}/package/boot/SPL ${D}/boot
    install -m 0644 ${WORKDIR}/package/boot/uEnv.txt ${D}/boot
}

sysroot_stage_all_append () {
    sysroot_stage_dir ${D}/boot ${SYSROOT_DESTDIR}/boot
}


But it didn't succeed.

Thanks for any help you may provide.

Sincerely,

Jean-Pierre Doyon

______
Jean-Pierre Doyon
Embedded Linux Designer / Developer
T  +1 (514) 288-6398 Ext. 230
www.newtrax.com
360 St-Jacques, 8th Floor, Montreal, QC - Canada 
H2Y 1P5

--_000_YQBPR0101MB4633B8539174AA7533ABB500BFAE9YQBPR0101MB4633_
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dutf-8">
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
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
=2EMsoChpDefault
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
<body lang=3D"EN-CA" link=3D"#0563C1" vlink=3D"#954F72" style=3D"word-wrap:=
break-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">I am trying to create a first install package for ou=
r device, which would contain an install tool binary, and the required file=
s to install.&nbsp; In our case, that would be
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">From imx-usb_loader recipe:<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:36.0pt">imx_usb<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:36.0pt">imx_usb.conf<o:p></o:p>=
</p>
<p class=3D"MsoNormal" style=3D"margin-left:36.0pt">mx6_usb_rom.conf<o:p></=
o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:36.0pt">mx6_usb_sdp_spl.conf<o:=
p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">From u-boot recipe:<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:36.0pt">u-boot.img<o:p></o:p></=
p>
<p class=3D"MsoNormal" style=3D"margin-left:36.0pt">SPL<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:36.0pt">uEnv.txt<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">The idea would be for the recipe to generate a tarba=
ll with all of that&nbsp; and a script, that would automate the USB downloa=
d project (the script: &#8220;install.sh&#8221; is already done, and is obv=
iously out of scope for this question)<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">So I created a new recipe (box1-usb-loader.bb) which=
 depends on both u-boot and imx-usb-loader.&nbsp; But I can&#8217;t seem to=
 get the u-boot target files listed above to appear in my recipe-sysroot di=
rectory.&nbsp;
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I&#8217;ve been scouring the web for a day now, and =
I&#8217;ve found plenty of people asking about seemingly related issues, bu=
t nothing that actually gets me nearer.&nbsp; From what I could find, I&#82=
17;m missing something in my u-boot.bbappend to stage the
 three files I need, but everything I&#8217;ve tried has failed.&nbsp; The =
most promising post got me to add this:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">SYSROOT_DIRS +=3D &quot;${D}/boot&quot;<o:p></o:p></=
p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">do_stage () {<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; install -d ${D}/boot<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; install -m 0644 ${WORKDIR}/packag=
e/boot/u-boot.img ${D}/boot<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; install -m 0644 ${WORKDIR}/packag=
e/boot/SPL ${D}/boot<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; install -m 0644 ${WORKDIR}/packag=
e/boot/uEnv.txt ${D}/boot<o:p></o:p></p>
<p class=3D"MsoNormal">}<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">sysroot_stage_all_append () {&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;sysroot_stage_dir ${D}/boot =
${SYSROOT_DESTDIR}/boot<o:p></o:p></p>
<p class=3D"MsoNormal">}<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">But it didn&#8217;t succeed. <o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks for any help you may provide.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Sincerely,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Jean-Pierre Doyon<o:p></o:p></p>
</div>
<div dir=3D"ltr" style=3D"mso-line-height-rule:exactly;-webkit-text-size-ad=
just:100%;direction:ltr;"><table cellpadding=3D"0" cellspacing=3D"0" border=
=3D"0" style=3D"width:100%;"><tr style=3D"font-size:0;"><td align=3D"left" =
style=3D"vertical-align:top;"><table cellpadding=3D"0" cellspacing=3D"0" bo=
rder=3D"0" style=3D"font-size:0;"><tr style=3D"font-size:0;"><td align=3D"l=
eft" style=3D"padding:10px 0 0;vertical-align:top;"><table cellpadding=3D"0=
" cellspacing=3D"0" border=3D"0" style=3D"font-size:0;"><tr style=3D"font-s=
ize:0;"><td align=3D"left" style=3D"vertical-align:middle;"><table cellpadd=
ing=3D"0" cellspacing=3D"0" border=3D"0" style=3D"font-size:0;line-height:n=
ormal;"><tr style=3D"font-size:0;"><td align=3D"center" style=3D"vertical-a=
lign:top;"><table cellpadding=3D"0" cellspacing=3D"0" border=3D"0" style=
=3D"white-space:nowrap;color:#FFFFFF;font-size:14.67px;font-family:Arial;fo=
nt-weight:400;font-style:normal;text-align:left;"><tr style=3D"font-size:1p=
x;"><td style=3D"font-family:Arial;">______<span style=3D"font-family:remia=
lcxesans;line-height:1px;">&#8203;</span><br /></td></tr></table></td></tr>=
<tr style=3D"font-size:0;"><td align=3D"left" style=3D"vertical-align:middl=
e;"><img src=3D"cid:image026210.png@C581A8F1.57FF30FE" width=3D"85" height=
=3D"85" border=3D"0" alt=3D"" style=3D"width:85px;min-width:85px;max-width:=
85px;height:85px;min-height:85px;max-height:85px;font-size:0;" /></td></tr>=
</table></td><td align=3D"left" style=3D"vertical-align:top;"><table cellpa=
dding=3D"0" cellspacing=3D"0" border=3D"0" style=3D"font-size:0;line-height=
:normal;"><tr style=3D"font-size:0;"><td align=3D"left" style=3D"padding:0 =
25px;vertical-align:top;"><img src=3D"cid:image952867.png@06DB9044.9EDF57C1=
" width=3D"1" height=3D"185" border=3D"0" alt=3D"" style=3D"width:1px;min-w=
idth:1px;max-width:1px;height:185px;min-height:185px;max-height:185px;font-=
size:0;" /></td></tr></table></td><td align=3D"left" style=3D"vertical-alig=
n:top;"><table cellpadding=3D"0" cellspacing=3D"0" border=3D"0" style=3D"wi=
dth:100%;font-size:0;"><tr style=3D"font-size:0;"><td align=3D"left" style=
=3D"padding:5px 0 0;vertical-align:top;"><table cellpadding=3D"0" cellspaci=
ng=3D"0" border=3D"0" style=3D"width:100%;font-size:0;"><tr style=3D"font-s=
ize:0;"><td align=3D"left" style=3D"vertical-align:middle;"><table cellpadd=
ing=3D"0" cellspacing=3D"0" border=3D"0" style=3D"font-size:0;line-height:n=
ormal;"><tr style=3D"font-size:0;"><td align=3D"left" style=3D"padding:10px=
 0 0;vertical-align:middle;"><a href=3D"https://newtrax.com/" target=3D"_bl=
ank" id=3D"LPlnk689713" style=3D"text-decoration:none;"><img src=3D"cid:ima=
ge520767.png@E577A26F.A0326C7C" width=3D"90" border=3D"0" alt=3D"" style=
=3D"width:90px;min-width:90px;max-width:90px;font-size:0;" /></a></td></tr>=
</table></td></tr><tr style=3D"font-size:0;"><td align=3D"left" style=3D"ve=
rtical-align:top;"><table cellpadding=3D"0" cellspacing=3D"0" border=3D"0" =
style=3D"font-size:0;"><tr style=3D"font-size:0;"><td align=3D"left" style=
=3D"padding:10px 0 0;vertical-align:top;"><table cellpadding=3D"0" cellspac=
ing=3D"0" border=3D"0" style=3D"font-size:0;"><tr style=3D"font-size:0;line=
-height:normal;"><td align=3D"left" style=3D"vertical-align:top;"><img src=
=3D"cid:image582159.png@760A5456.9394758B" width=3D"124" height=3D"15" bord=
er=3D"0" alt=3D"" style=3D"width:124px;min-width:124px;max-width:124px;heig=
ht:15px;min-height:15px;max-height:15px;font-size:0;" /></td></tr><tr style=
=3D"font-size:0;"><td align=3D"left" style=3D"vertical-align:top;"><table c=
ellpadding=3D"0" cellspacing=3D"0" border=3D"0" style=3D"font-size:0;line-h=
eight:normal;"><tr style=3D"font-size:0;"><td align=3D"left" style=3D"paddi=
ng:0 0 2px;vertical-align:top;"><img src=3D"cid:image789170.png@42664253.4A=
F41481" width=3D"195" height=3D"11" border=3D"0" alt=3D"" style=3D"width:19=
5px;min-width:195px;max-width:195px;height:11px;min-height:11px;max-height:=
11px;font-size:0;" /></td></tr></table></td></tr><tr style=3D"font-size:0;"=
><td align=3D"left" style=3D"vertical-align:top;"><table cellpadding=3D"0" =
cellspacing=3D"0" border=3D"0" style=3D"white-space:nowrap;color:#404040;fo=
nt-size:14.67px;font-family:Arial;font-weight:700;font-style:normal;text-al=
ign:left;width:142px;height:14px;"><tr style=3D"font-size:10px;"><td style=
=3D"font-family:Arial;">T&nbsp;&nbsp;<a href=3D"tel:+1%20(514)%20288-6398%2=
0Ext.%20230" target=3D"_blank" id=3D"LPlnk689713" style=3D"text-decoration:=
none;color:#404040;"><strong style=3D"font-weight:700;">+1&nbsp;(514)&nbsp;=
288-6398&nbsp;Ext.&nbsp;230</strong></a></td></tr></table></td></tr></table=
></td></tr></table></td></tr><tr style=3D"font-size:0;"><td align=3D"left" =
style=3D"vertical-align:top;"><table cellpadding=3D"0" cellspacing=3D"0" bo=
rder=3D"0" style=3D"font-size:0;line-height:normal;"><tr style=3D"font-size=
:0;"><td align=3D"left" style=3D"padding:10px 0 2px;vertical-align:top;"><i=
mg src=3D"cid:image026548.png@5556EB9F.8D6D06F0" width=3D"104" height=3D"12=
" border=3D"0" alt=3D"" style=3D"width:104px;min-width:104px;max-width:104p=
x;height:12px;min-height:12px;max-height:12px;font-size:0;" /></td></tr></t=
able></td></tr><tr style=3D"font-size:0;"><td align=3D"left" style=3D"verti=
cal-align:top;"><table cellpadding=3D"0" cellspacing=3D"0" border=3D"0" sty=
le=3D"width:354px;height:14px;font-size:0;"><tr style=3D"font-size:0;"><td =
align=3D"left"><table cellpadding=3D"0" cellspacing=3D"0" border=3D"0" styl=
e=3D"height:14px;font-size:0;line-height:normal;"><tr style=3D"font-size:0;=
"><td align=3D"left" style=3D"vertical-align:top;"><img src=3D"cid:image126=
988.png@FB1FADC7.0B48FC03" width=3D"143" height=3D"12" border=3D"0" alt=3D"=
" style=3D"width:143px;min-width:143px;max-width:143px;height:12px;min-heig=
ht:12px;max-height:12px;font-size:0;" /></td><td align=3D"left" style=3D"ve=
rtical-align:top;"><img src=3D"cid:image625498.png@13CB35F1.6A5B5DF2" width=
=3D"6" height=3D"12" border=3D"0" alt=3D"" style=3D"width:6px;min-width:6px=
;max-width:6px;height:12px;min-height:12px;max-height:12px;font-size:0;" />=
</td><td align=3D"left" style=3D"vertical-align:top;"><img src=3D"cid:image=
763539.png@E0C8834F.1C744E04" width=3D"49" height=3D"12" border=3D"0" alt=
=3D"" style=3D"width:49px;min-width:49px;max-width:49px;height:12px;min-hei=
ght:12px;max-height:12px;font-size:0;" /></td><td align=3D"left" style=3D"v=
ertical-align:top;"><img src=3D"cid:image277642.png@36BD8D7B.3F6CFD6C" widt=
h=3D"6" height=3D"12" border=3D"0" alt=3D"" style=3D"width:6px;min-width:6p=
x;max-width:6px;height:12px;min-height:12px;max-height:12px;font-size:0;" /=
></td><td align=3D"left" style=3D"vertical-align:top;"><img src=3D"cid:imag=
e582860.png@8CDBA0C9.22BDDF40" width=3D"27" height=3D"12" border=3D"0" alt=
=3D"" style=3D"width:27px;min-width:27px;max-width:27px;height:12px;min-hei=
ght:12px;max-height:12px;font-size:0;" /></td><td align=3D"left" style=3D"v=
ertical-align:top;"><img src=3D"cid:image802897.png@B54EBE86.3D2AE00A" widt=
h=3D"42" height=3D"12" border=3D"0" alt=3D"" style=3D"width:42px;min-width:=
42px;max-width:42px;height:12px;min-height:12px;max-height:12px;font-size:0=
;" /></td><td align=3D"left" style=3D"vertical-align:top;"><img src=3D"cid:=
image964007.png@CB7E8124.D46A164A" width=3D"3" height=3D"25" border=3D"0" a=
lt=3D"" style=3D"width:3px;min-width:3px;max-width:3px;height:25px;min-heig=
ht:25px;max-height:25px;font-size:0;" /></td><td align=3D"left" style=3D"ve=
rtical-align:top;"><img src=3D"cid:image973303.png@70A052E2.C9614D1E" width=
=3D"45" height=3D"12" border=3D"0" alt=3D"" style=3D"width:45px;min-width:4=
5px;max-width:45px;height:12px;min-height:12px;max-height:12px;font-size:0;=
" /></td></tr></table></td></tr></table></td></tr><tr style=3D"font-size:0;=
"><td align=3D"left" style=3D"vertical-align:middle;"><table cellpadding=
=3D"0" cellspacing=3D"0" border=3D"0" style=3D"font-size:0;"><tr style=3D"f=
ont-size:0;"><td align=3D"left" style=3D"vertical-align:middle;"><table cel=
lpadding=3D"0" cellspacing=3D"0" border=3D"0" style=3D"font-size:0;"><tr st=
yle=3D"font-size:0;"><td align=3D"left" style=3D"vertical-align:middle;"><t=
able cellpadding=3D"0" cellspacing=3D"0" border=3D"0" style=3D"font-size:0;=
"><tr style=3D"font-size:0;"><td align=3D"left" style=3D"vertical-align:top=
;"><table cellpadding=3D"0" cellspacing=3D"0" border=3D"0" style=3D"font-si=
ze:0;line-height:normal;"><tr style=3D"font-size:0;"><td align=3D"left" sty=
le=3D"padding:0 2px;vertical-align:top;"><a href=3D"https://www.linkedin.co=
m/company/newtrax-technologies-inc--canada-/" target=3D"_blank" id=3D"LPlnk=
689713" style=3D"text-decoration:none;"><img src=3D"cid:image900721.png@9E7=
AAA43.1086A45C" width=3D"20" height=3D"20" border=3D"0" title=3D"https://ww=
w.linkedin.com/company/newtrax-technologies-inc--canada-/" alt=3D"https://w=
ww.linkedin.com/company/newtrax-technologies-inc--canada-/" style=3D"width:=
20px;min-width:20px;max-width:20px;height:20px;min-height:20px;max-height:2=
0px;font-size:12px;" /></a></td></tr></table></td><td align=3D"left" style=
=3D"vertical-align:top;"><table cellpadding=3D"0" cellspacing=3D"0" border=
=3D"0" style=3D"font-size:0;line-height:normal;"><tr style=3D"font-size:0;"=
><td align=3D"left" style=3D"padding:0 5px;vertical-align:top;"><a href=3D"=
https://www.instagram.com/newtrax_technologies/" target=3D"_blank" id=3D"LP=
lnk689713" style=3D"text-decoration:none;"><img src=3D"cid:image966442.png@=
D0050063.8BCC26CF" width=3D"22" height=3D"22" border=3D"0" title=3D"https:/=
/www.instagram.com/newtrax_technologies/" alt=3D"https://www.instagram.com/=
newtrax_technologies/" style=3D"width:22px;min-width:22px;max-width:22px;he=
ight:22px;min-height:22px;max-height:22px;font-size:12px;" /></a></td></tr>=
</table></td><td align=3D"left" style=3D"vertical-align:top;"><table cellpa=
dding=3D"0" cellspacing=3D"0" border=3D"0" style=3D"font-size:0;line-height=
:normal;"><tr style=3D"font-size:0;"><td align=3D"left" style=3D"padding:0 =
2px;vertical-align:top;"><a href=3D"https://vimeo.com/newtrax" target=3D"_b=
lank" id=3D"LPlnk689713" style=3D"text-decoration:none;"><img src=3D"cid:im=
age453136.png@515D09C5.DB538B83" width=3D"20" height=3D"20" border=3D"0" ti=
tle=3D"https://vimeo.com/newtrax" alt=3D"https://vimeo.com/newtrax" style=
=3D"width:20px;min-width:20px;max-width:20px;height:20px;min-height:20px;ma=
x-height:20px;font-size:12px;" /></a></td></tr></table></td></tr></table></=
td></tr></table></td></tr></table></td></tr></table></td></tr></table></td>=
</tr></table></td></tr></table></td></tr></table></div></body>
</html>

--_000_YQBPR0101MB4633B8539174AA7533ABB500BFAE9YQBPR0101MB4633_--

------_=_NextPart_77f63ec8-4a76-41ad-805a-5046fd7e3566
Content-Type: image/png;
	name="image026210.png"
Content-Transfer-Encoding: base64
Content-ID: <image026210.png@C581A8F1.57FF30FE>
Content-Description: image026210.png
Content-Disposition: inline;
	creation-date="Mon, 04 Oct 2021 18:41:12 +0000";
	filename=image026210.png;
	modification-date="Mon, 04 Oct 2021 18:41:12 +0000";
	size=16987

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
gg==

------_=_NextPart_77f63ec8-4a76-41ad-805a-5046fd7e3566
Content-Type: image/png;
	name="image952867.png"
Content-Transfer-Encoding: base64
Content-ID: <image952867.png@06DB9044.9EDF57C1>
Content-Description: image952867.png
Content-Disposition: inline;
	creation-date="Mon, 04 Oct 2021 18:41:12 +0000";
	filename=image952867.png;
	modification-date="Mon, 04 Oct 2021 18:41:12 +0000";
	size=177

iVBORw0KGgoAAAANSUhEUgAAAAIAAADrCAIAAADMn9A5AAAAAXNSR0IArs4c6QAAAARnQU1BAACx
jwv8YQUAAAAJcEhZcwAAEnQAABJ0Ad5mH3gAAAASdEVYdFNvZnR3YXJlAEdyZWVuc2hvdF5VCAUA
AAAoSURBVDhPY3j15SUQMaSsjZh4tGOUGqVGqVFqlBqlqEo9+nD/0Yf7ACrjBr0ezzBJAAAAAElF
TkSuQmCC

------_=_NextPart_77f63ec8-4a76-41ad-805a-5046fd7e3566
Content-Type: image/png;
	name="image520767.png"
Content-Transfer-Encoding: base64
Content-ID: <image520767.png@E577A26F.A0326C7C>
Content-Description: image520767.png
Content-Disposition: inline;
	creation-date="Mon, 04 Oct 2021 18:41:12 +0000";
	filename=image520767.png;
	modification-date="Mon, 04 Oct 2021 18:41:12 +0000";
	size=3153

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
788l2P0KAAAAAElFTkSuQmCC

------_=_NextPart_77f63ec8-4a76-41ad-805a-5046fd7e3566
Content-Type: image/png;
	name="image582159.png"
Content-Transfer-Encoding: base64
Content-ID: <image582159.png@760A5456.9394758B>
Content-Description: image582159.png
Content-Disposition: inline;
	creation-date="Mon, 04 Oct 2021 18:41:12 +0000";
	filename=image582159.png;
	modification-date="Mon, 04 Oct 2021 18:41:12 +0000";
	size=1370

iVBORw0KGgoAAAANSUhEUgAAAHwAAAAPCAYAAAAmqKvRAAAAAXNSR0IArs4c6QAAAARnQU1BAACx
jwv8YQUAAAAJcEhZcwAADsMAAA7DAcdvqGQAAATvSURBVFhH7Zh5yGdTGMd/loREk2iyM5ZMdiYz
RGRGkpTlDxqJfyiSJUsig2RfZ6QZlGSXbGPsSZbsW9GERgwGyb5v8fnce5+38x7nvvc3423eX3q/
9Xnfc88999xzzvOc5zz3t0Lv33oU7oe51dXYajZsWRcrvQdvwB3wK6wJ78IS2BnGUhPAcYVeB8c6
HxzrwOpvGARjKxftN/iy4XtwfN/ADrAq3A7XwFhrfXBsjtGx/tRcO9bpMLBqM/imsF5dLMr7MpK8
v3Zd7Esa/LW6OKRd4Qd4urpq14YNo6HNYN262Kow+KzqqpZO+Ql8C5tYkWg12Ap02mWR45lUF1tl
m841yA2+F3wF1ssXTV0ov285vf8hLASfizYacRXoUsngymPH9yjb3FkXK20Ln0G862s4EEJ3w8/w
Dhg9prbUqYNBY0VfzkUjllQyuJoB1l9VXdWaB77H+j/hNlgZou2JkMr5epzZZh14C2wnRpSjIORc
3BAvQbTR6drGXTUIg9u5E34BpoAeadk676m4Hzv8FfgcQi6SfV4BPn9+c30ldKlkcCf9NiyuroYb
3DPdybkgu8NkWAAugGXlgvj+5+BMsL9Sne197hHYEbYD+/0I1oJcbQZfAz6Fl6urXu9s+B0uBtfj
JPgDroeYm+MIuUN1xkvB+y+CDn0IxPzsL46NmEuM23bOI+1zmGwcBr8EHEwYV1m2zoG7S4+DbSB0
H9hHSIPrBKk+hqfqYu9y0INT9gClMX3+1IRnwP5jx6QGPxlMkHaprmqZTBkNor0LopOmRivV3Qg+
l9ZpdOd+dHU1XG0GV47xTTB8fwAPQqqbId5/OqRzOA9+BI+EPeEvOBJCq4NO+HB1VZ7LvVBFxBX9
M4Lc1YaeWyCMYdk6B6BnXQebg506sL0hlx6WykH3q43hsoSd4Fo4DXJNa/5fADHeyJw3av4r3/9d
XRxSXud7/Iq5C6Ivo5QG7zo7c60E9m/+YhTMo5bGcvO4pjeACd9McEe7Q90cOv4+4Nq/CiF3v/2l
+VU+F4+NSl0GV7/AkxnngqHEQfpZ5A7Tu48Ad/7SyF27X8azEHJ3uPCBIfIEGJpEJg2Sj/ciuAeW
Vp6PaT+PwTmQjq9LGllnM4cZSTqFiZxZ/UNwKJgLbQ03QZd8ti+ZKJhEhNKQ7k7KQ7o6oPl/LNg+
TdJOAetCemaE71CpriSNXUraUqUhXWfLQ7rav/mvDHmR8IVKdX7u5SHd8FmKYKotpF8I7rjjIc7z
Ukg3CtqHiqNjEXj8udOV625fpZAeXy2d8zN5cqCeHZ7HlmOXbgC+2KTMkCGGSNs4ccOO5bNAbQ8O
0rrQ8jT4RHBi1pkQ+VkyB1ykw0H1a3CdxrkvAPsxFFs24jnPXGFw2xi1zgATLOvMYcJoV4NHofmG
62m00ti3QqrnwWdN1kJGVL94dJrdwONOx7S/g0B1zi/Csp2LZetC+4KN47476BgIPQ5xzwV6oCmH
lqfBlYZKP8s0UDik6tfg6jAwAYq+DPGG2pLC4Cn+AOOOD2Mr19bE1rWyjc74BKRtlIaOZC2VmXls
KnF+btZQ3/OLz6o2uWMkdYaQnuo9Q9agyB9LHNOy/rARMs+xny0gN8p/kUeF/ZZ+0PE9+edZLj/X
RmN+4xoAlT6/xvU/lklcmqyNmvwUGNdgSZv4Y5FJ3PtWjJ56vX8AIqSUFeol1MsAAAAASUVORK5C
YII=

------_=_NextPart_77f63ec8-4a76-41ad-805a-5046fd7e3566
Content-Type: image/png;
	name="image789170.png"
Content-Transfer-Encoding: base64
Content-ID: <image789170.png@42664253.4AF41481>
Content-Description: image789170.png
Content-Disposition: inline;
	creation-date="Mon, 04 Oct 2021 18:41:12 +0000";
	filename=image789170.png;
	modification-date="Mon, 04 Oct 2021 18:41:12 +0000";
	size=2078

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
/mPO5/sHmmrW6+aTtvkAAAAASUVORK5CYII=

------_=_NextPart_77f63ec8-4a76-41ad-805a-5046fd7e3566
Content-Type: image/png;
	name="image026548.png"
Content-Transfer-Encoding: base64
Content-ID: <image026548.png@5556EB9F.8D6D06F0>
Content-Description: image026548.png
Content-Disposition: inline;
	creation-date="Mon, 04 Oct 2021 18:41:12 +0000";
	filename=image026548.png;
	modification-date="Mon, 04 Oct 2021 18:41:12 +0000";
	size=1021

iVBORw0KGgoAAAANSUhEUgAAAGgAAAAMCAYAAACOefjtAAAAAXNSR0IArs4c6QAAAARnQU1BAACx
jwv8YQUAAAAJcEhZcwAADsMAAA7DAcdvqGQAAAOSSURBVFhH7ZbZ601RFMdvphcKCZGShIRkLGNS
8mBOHgyhKBIv8qDwB/DCgwfKAx548iCUJCIZMmWeZUoKGZJkiM9nn7tu53e7P7/zS79Q91uf7tln
77322muvvc4t1VXX39RYeJI9/p9qDRNhONz1BVoGX+E1dIVVcBbWwQP4DINgJlwFNQe6QW8oYisv
x7SDTTAd7sA7CM2GbdADLsEPaGz9p6mV+foBFsMI+AltwH773MMiCF983gL5NZyrzcegpsB4uJZa
DdUBNsIa+AgPITQB9H80uJ7xUPrcEWLfx2A+6MdbqNhYAY+yxxREN7M/tRr2+Wtb2e84x6voK2or
LzP8ExyF2/Aewu4O0Nnoc76HORK+QcgEuJg9Vvr6wXUI2ytB6ZM2r6RWFpiX4Fr3y201A5zbq4w2
J0G19Ee/9M91vsB2UKvBdvjvurG3ExB9z8B9+xs21kOSG9FpF9oMh0HH1C44mD2mX9vKfsc53nnO
105RW3l5QGafcp7jPcywNRhCr8BNK8cZsIXg4XhIzlkLN0E5trrEadPghwxmrOGtyR+8yeWBnYbY
e7XcZ1QMtRQiEfXRdsgbbyIoDyhsRjLrv/K9/aVWYNl6A1NhFuwEy4wbHwqnQBkE2y5ov+OmgfNe
gHaK2qqW2aO8/s5vC5PhO5wEgy+dIIKpXUvOAvDgj8NyGAXn4Xcyk0NmqgfpLdoKlsLQEhgGfcDy
XEv2n8kek3ZDX/Amty+3Qxegf/aY5P6Ue1PGT8X7dEDqBrhRA3AI3LDtgWD2KE/U9jw4AI7rDo4z
WKEitorIgOmohxB4yBtAXYYxMA5MhH1gUgyBKHdFZHL5LTCg+Zul3KvJ0hlMulrysD2IkOXQb1p8
D6OkKQ+/EvzmyGvq1d6bWplR62CUp5Bt38eijnee80NN2fJPiR/qsGEJirKlom2582ZZspQbt0Yb
SOWtdJ1zqZXJEui7KBUG3La3SnvKUuK/O6Ut29pWrmVbxfqWW99rO2zovx95ZUVxb94aZXmKkufv
nuwxraG9+LaY8FHuVKyrfJ9KXMiNOCCfJW68OuPNzHxAHO+8/MezKVsubn8EqbEDUnPBwzVLDbQ3
N+QBa6fyMUUmxfPsMcmA3oL8evlnZSBcw39998B+dQTyQdL/+MPjmHyffvlOG9qKePir7x5gtf/N
OqB/XQOgS/bYIuoJfmf+RPqnn7XU0v7XVVddNVQq/QLDVx8bUFI9twAAAABJRU5ErkJggg==

------_=_NextPart_77f63ec8-4a76-41ad-805a-5046fd7e3566
Content-Type: image/png;
	name="image126988.png"
Content-Transfer-Encoding: base64
Content-ID: <image126988.png@FB1FADC7.0B48FC03>
Content-Description: image126988.png
Content-Disposition: inline;
	creation-date="Mon, 04 Oct 2021 18:41:12 +0000";
	filename=image126988.png;
	modification-date="Mon, 04 Oct 2021 18:41:12 +0000";
	size=1503

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
C+oshp9/INttAAAAAElFTkSuQmCC

------_=_NextPart_77f63ec8-4a76-41ad-805a-5046fd7e3566
Content-Type: image/png;
	name="image625498.png"
Content-Transfer-Encoding: base64
Content-ID: <image625498.png@13CB35F1.6A5B5DF2>
Content-Description: image625498.png
Content-Disposition: inline;
	creation-date="Mon, 04 Oct 2021 18:41:12 +0000";
	filename=image625498.png;
	modification-date="Mon, 04 Oct 2021 18:41:12 +0000";
	size=155

iVBORw0KGgoAAAANSUhEUgAAAAYAAAAMCAYAAABBV8wuAAAAAXNSR0IArs4c6QAAAARnQU1BAACx
jwv8YQUAAAAJcEhZcwAADsMAAA7DAcdvqGQAAAAwSURBVChTYxhagBlKlwCxOBDfAPOQwH8g3gdh
QgBMhxIQ3wfinWAeEoiB0oQAAwMAtSwFPYHR51sAAAAASUVORK5CYII=

------_=_NextPart_77f63ec8-4a76-41ad-805a-5046fd7e3566
Content-Type: image/png;
	name="image763539.png"
Content-Transfer-Encoding: base64
Content-ID: <image763539.png@E0C8834F.1C744E04>
Content-Description: image763539.png
Content-Disposition: inline;
	creation-date="Mon, 04 Oct 2021 18:41:12 +0000";
	filename=image763539.png;
	modification-date="Mon, 04 Oct 2021 18:41:12 +0000";
	size=648

iVBORw0KGgoAAAANSUhEUgAAADEAAAAMCAYAAADLeFVvAAAAAXNSR0IArs4c6QAAAARnQU1BAACx
jwv8YQUAAAAJcEhZcwAADsMAAA7DAcdvqGQAAAIdSURBVEhL7ZU7aFYxGECv70EnRUSoSFuooE5a
fKGTYB0cLBQ6VFBwUEQ6aEcXQVREO4hDtxYE3cRFWpHq4GIddLCIDuIDBcEHVhREK3pOctM/vW0R
9B86eOCQL7n5k3xJ7v3nFZEeXIFPQq3GOtyPY/jOhlnGNdwYw6L4hV9wYajVuIE+Oxpqf4+/vx3D
uuKYfXNjHFiEx2IYWI67YjiJHegOXMAlNpQcxM3YV9qM4mn6m5XoiVvXduwsS3EDj+AQ7rMhw7Ec
8zI6x7S42+56fp160Uzzk7D8hk70GD+gycoL9DTTs0/os934DN+iz6w7jn29pudQnOsV2scyndw2
/IGDaBLOb5uEk4hhbaFO1GYDpDhPwokPxDDwENMgJnEihmFX7Xso1GKftChxvPwd68L8Opu8C3ex
WzAl6vNHeCnUyiTy6yRXsBtdqDt5ExOtuBgHQi0ygi0xDPgb+Y7vcUGoTc/XspStOB/foMl5krIB
7+EdvI8fcRXad4JqEmdwJx7HfLHysizT9REHG4/hP+Gpv8btmevRNZzCfjyNS/EBTqKahLswjI3o
O5Hjs6d4PtSKogE7ML8mM+EC1+KaUJvKdVyNvvzOYXkL/QvYhHfRPtJUlhNUk5CL6NfHK1HlMO5B
7+9zNOGz+Cfc0TlY/R9KjOJJdOFuluVV9MX3BPaiH5HP+BPrgju6LIZ1xRfXsfNPt8zU/p9ZRFH8
Bn6jenUWs5BgAAAAAElFTkSuQmCC

------_=_NextPart_77f63ec8-4a76-41ad-805a-5046fd7e3566
Content-Type: image/png;
	name="image277642.png"
Content-Transfer-Encoding: base64
Content-ID: <image277642.png@36BD8D7B.3F6CFD6C>
Content-Description: image277642.png
Content-Disposition: inline;
	creation-date="Mon, 04 Oct 2021 18:41:12 +0000";
	filename=image277642.png;
	modification-date="Mon, 04 Oct 2021 18:41:12 +0000";
	size=155

iVBORw0KGgoAAAANSUhEUgAAAAYAAAAMCAYAAABBV8wuAAAAAXNSR0IArs4c6QAAAARnQU1BAACx
jwv8YQUAAAAJcEhZcwAADsMAAA7DAcdvqGQAAAAwSURBVChTYxhagBlKlwCxOBDfAPOQwH8g3gdh
QgBMhxIQ3wfinWAeEoiB0oQAAwMAtSwFPYHR51sAAAAASUVORK5CYII=

------_=_NextPart_77f63ec8-4a76-41ad-805a-5046fd7e3566
Content-Type: image/png;
	name="image582860.png"
Content-Transfer-Encoding: base64
Content-ID: <image582860.png@8CDBA0C9.22BDDF40>
Content-Description: image582860.png
Content-Disposition: inline;
	creation-date="Mon, 04 Oct 2021 18:41:12 +0000";
	filename=image582860.png;
	modification-date="Mon, 04 Oct 2021 18:41:12 +0000";
	size=393

iVBORw0KGgoAAAANSUhEUgAAABsAAAAMCAYAAACTB8Z2AAAAAXNSR0IArs4c6QAAAARnQU1BAACx
jwv8YQUAAAAJcEhZcwAADsMAAA7DAcdvqGQAAAEeSURBVDhP3ZO7LkVBFECHoEGlE51C4wt8wE10
PkFHoZX4BQWViEajV9xCIiIKUREqGpVIlDqFULDWzN0n4xSSc3VWsjJ7z0zmcfacVDGPB3iKy3a0
mMBNdHwHp3AoNvATr9HF3vEMgzl8xWd03Nbc/k544jfczVnBW7r5as5SOsF7dK7YPuFRzjqwhi4c
CwUX2C9hHvf2NevY7vuVURzHF/ywo+IRp0uYxvCuhA3Wd6+EDSPoZw4PscHNZHLQrmDUyg1qZgZt
YN7+Gl94XnmFP1hCJy3mrGymN+jpxfrUNRU/82UJu2HxNZ6zr7I+wDb6iHo5K6113MpZR3zCD+gG
6sK3uI+BL88NYs4x/olZXChhpl0Tb+740D/0fySlb8PUPRNh00gFAAAAAElFTkSuQmCC

------_=_NextPart_77f63ec8-4a76-41ad-805a-5046fd7e3566
Content-Type: image/png;
	name="image802897.png"
Content-Transfer-Encoding: base64
Content-ID: <image802897.png@B54EBE86.3D2AE00A>
Content-Description: image802897.png
Content-Disposition: inline;
	creation-date="Mon, 04 Oct 2021 18:41:12 +0000";
	filename=image802897.png;
	modification-date="Mon, 04 Oct 2021 18:41:12 +0000";
	size=606

iVBORw0KGgoAAAANSUhEUgAAACoAAAAMCAYAAAAUNi9wAAAAAXNSR0IArs4c6QAAAARnQU1BAACx
jwv8YQUAAAAJcEhZcwAADsMAAA7DAcdvqGQAAAHzSURBVEhL7ZQ/SJZRFIdfKloKgiyIaLE/COXg
EEQRKS3SEkQ41aBTEE5B0KZDYzVV1KCLiyCIIGEENRQ4GIQNQaViZUQhgZJD1FDP89574K3vU75F
J3/wfPfcc+6f89177ltUdAgewGO4rGMDtQjHk7m2euE3TIGJ/oQnsFH6A6eSubq2wwrcKXtJHeDk
zrJXFDvhNozCOR1ZZ+ACXIX/Y8q+fue6Rsg9r4OxE1BNNGI1N3sFPE0HVHUPnLwXluAVWBrazlH2
4yaeZztid8GxjnHuHISm4ROYzDeoJuq49+C8L+A6pbz2D8msq8PwMJmlxiHKwsVeJrPUI4jYDTif
zOIomIx1eAm8wTiYAxCJ7oIhiNgtKP/gFn/QjtxWtT+3szAIE+AGLrgNQj9yqxYgYpaSiXk6L3Qg
EzgJnvAvHehzbtUy9MNAtntgK5SJOmkPtOrIcsGPcA264Cl4kvtgBBqR5XAanN+kI+sr7E5mjY7A
W5iHg9AHpUx0Et7AMETB38+t19AOM6DPE/UaG9ExsM5fg48zNAbGwncxt+osWNc34Tu0wT+yTkzW
WhE/T92gjDnZq9D/Dp6BskbDVtW+to/LDcVvZTwYH4j7uGY15k1akx6IuFfd92NdtiSzRvqrV9iI
HL/aemvFmiHeyKbWQUXxF0rtd3uMxsXWAAAAAElFTkSuQmCC

------_=_NextPart_77f63ec8-4a76-41ad-805a-5046fd7e3566
Content-Type: image/png;
	name="image964007.png"
Content-Transfer-Encoding: base64
Content-ID: <image964007.png@CB7E8124.D46A164A>
Content-Description: image964007.png
Content-Disposition: inline;
	creation-date="Mon, 04 Oct 2021 18:41:12 +0000";
	filename=image964007.png;
	modification-date="Mon, 04 Oct 2021 18:41:12 +0000";
	size=121

iVBORw0KGgoAAAANSUhEUgAAAAMAAAAZCAYAAAD0ZZRCAAAAAXNSR0IArs4c6QAAAARnQU1BAACx
jwv8YQUAAAAJcEhZcwAADsMAAA7DAcdvqGQAAAAOSURBVChTYxgFlAIGBgABRQABsbq0EgAAAABJ
RU5ErkJggg==

------_=_NextPart_77f63ec8-4a76-41ad-805a-5046fd7e3566
Content-Type: image/png;
	name="image973303.png"
Content-Transfer-Encoding: base64
Content-ID: <image973303.png@70A052E2.C9614D1E>
Content-Description: image973303.png
Content-Disposition: inline;
	creation-date="Mon, 04 Oct 2021 18:41:12 +0000";
	filename=image973303.png;
	modification-date="Mon, 04 Oct 2021 18:41:12 +0000";
	size=570

iVBORw0KGgoAAAANSUhEUgAAAC0AAAAMCAYAAAD26jQJAAAAAXNSR0IArs4c6QAAAARnQU1BAACx
jwv8YQUAAAAJcEhZcwAADsMAAA7DAcdvqGQAAAHPSURBVEhL7dSxS1ZRHIfxQ0EQReKQU0uoBDpY
azRIUZPiIIIQmKhbUVghSBC0BDU31H/g2pSTOlUgDkaDJUqEgxBBRUTZUM9z7j2+5728vryLQtAX
PrznnPvee3733HPv4VDkLr7iU+yF0ItreBl7IRzBbdzHOTi+gzF0YBMpl3EBq7FXy3HcxDp+OECc
93zGej7COOc08uN5jeEPbhTNGNuOpWzAi83jfdlPN7Jdts1JfMfV2KtlGD/hNZ08xX4qRL/xAqYf
9tMxTWA3zYoehCdbkLFAL5AKe4tHRTM8xXLRrIuFjOIDqkXn8zqXY91wQRpdKxwqf5tlERdhocbt
cBTfYi+EWVzHWUziFqoZwlzRbJrX5a8L1IMtuBA+4SnUpfqYbKeVzuNqfcZC7NVi/wuex97eabTS
D3AGl/AKXsfYdi6Py/En2E1+smznRXdiBe7LGQcqcf/5/7SF9kqjovPFWoJzGbfhqaIZMw7fl7rt
4UnvSrZTPNmCfQFP4DGq8Uti8vNazT14s/LmfcmN28FtmOINH7PRyp4eQRse4jTS0/ATtp+5g2dw
0eTnNn5GWym6vfx9g7WMj2s/cwV9+FXqwgD+ifh09T8HnBD+AsRbdW59X4dOAAAAAElFTkSuQmCC

------_=_NextPart_77f63ec8-4a76-41ad-805a-5046fd7e3566
Content-Type: image/png;
	name="image900721.png"
Content-Transfer-Encoding: base64
Content-ID: <image900721.png@9E7AAA43.1086A45C>
Content-Description: image900721.png
Content-Disposition: inline;
	creation-date="Mon, 04 Oct 2021 18:41:12 +0000";
	filename=image900721.png;
	modification-date="Mon, 04 Oct 2021 18:41:12 +0000";
	size=4876

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

------_=_NextPart_77f63ec8-4a76-41ad-805a-5046fd7e3566
Content-Type: image/png;
	name="image966442.png"
Content-Transfer-Encoding: base64
Content-ID: <image966442.png@D0050063.8BCC26CF>
Content-Description: image966442.png
Content-Disposition: inline;
	creation-date="Mon, 04 Oct 2021 18:41:12 +0000";
	filename=image966442.png;
	modification-date="Mon, 04 Oct 2021 18:41:12 +0000";
	size=828

iVBORw0KGgoAAAANSUhEUgAAABQAAAAUCAYAAACNiR0NAAAAAXNSR0IArs4c6QAAAvZJREFUOBGt
VU9IlEEUf29m9l9G6boZpEKBEaKl4SVPlacIgiDyoK6Qxw4dQm91iPDUrTobqWtgeI26WLe8CBXJ
HvIQGEWybBZt635+M6/3Pr9vXaU6aA8+Zue93/vNzJvfm0XYYYcnT9VZhBZCe0ADxIm0AkUYwBwS
onUWwEPSPzTBp6/D70q1FJtA9jTM9hxUfmVMIQ4Q0TE0CkCiVUSYRjzyR77jEH50QDlnEve+9S9+
F0QAr3/UXW8Sdg5Tqo9K9i3v55VysEqA66jIggvJeA1yqBEoyVs9xNlncZ86TWU371f0lbVrb9aM
QHXMH8WU7nMlO95QXL+7fGO5ElL8feDVMhMn9hPEx5j0tnb+KINvYVAz5fI8KRbi7T3Q/5RL9G9r
fNzVjMa94KOvFNLly5licoEzGrVT7UYuABS0gsO5nWTpic5WnYIsEZyRJRBhwZZhiqwFNJwnJfuZ
4L3SPAdvWoIWI7epjAbnuVVJiiyT6zgPGqcgrpqhbIuBP6kvKXTXYYOGfM/vNgYr0J/3aLqzoGIK
nGMukYZcDQuiWjfZGSg1zSQp+uUGvRgdl09+iw8M5oSskM1/kYWCXOYQLhPoTAiBbzM0HYdhSKgj
VPIHCtmlJ5Gfx5nMVAdhnZkBq0d4Pi6xQAlcD+HaEq1EQmOZ9RIf0yaSzyJfNIpPYoKJfFuyImRl
/V/jSqJof5txBV6zLtO6sn5xW4An4pOYYKqxaFvMZaQ3+ewsKeSabpr1YFJpvs2YepiZPole3D2X
SNxTF8DAA6q4z44xIXyze3hbwqWk0YPeREpEgOLI+xXWwBDPy9wFufgGfpBPfotPYgEmTCDJZULh
MvJqhI3eFBHKWBhcesny6dVksyyBQNhQsQuOhV0cWVqpxfIj0RRwMNeuWq+WDGav6oyXX2RfWlpP
yXvGu53EOt3V6OXvtN1vqx59W+IfJoKVHMkVDuHiywLYzfPlFDSxPs4FZDXPV0AopNUHFnCQgI7u
6YEVwsj2+hfwG7uNjrYf6a6nAAAAAElFTkSuQmCC

------_=_NextPart_77f63ec8-4a76-41ad-805a-5046fd7e3566
Content-Type: image/png;
	name="image453136.png"
Content-Transfer-Encoding: base64
Content-ID: <image453136.png@515D09C5.DB538B83>
Content-Description: image453136.png
Content-Disposition: inline;
	creation-date="Mon, 04 Oct 2021 18:41:12 +0000";
	filename=image453136.png;
	modification-date="Mon, 04 Oct 2021 18:41:12 +0000";
	size=5612

iVBORw0KGgoAAAANSUhEUgAAABQAAAAUCAYAAACNiR0NAAATDnpUWHRSYXcgcHJvZmlsZSB0eXBl
IGV4aWYAAHja3ZpXcuS6GYXfsQovATksB7HKO/Dy/R2Q0miCp+zxfbpqSd1iswngDyeAMvtf/zzm
H3wlZ6uJqdTccrZ8xRab77yo9vl6np2N9/fzR3zfc98fN59veA4FnsPzZ97v+Z3j6dsHynu+G98f
N2W+16nvhd43Pi4YNLLnxXtefS8U/HP8YyKmvZ/r8cty3p8z/X07jeetH/+OhWCsxPWCN34HFyy/
q0YJz0/np/HbB8dJ7h6J93cI8dexM58vfwje56sfYmf7ezx8Hwpj83tC/iFG73GXfh27G6HvsvZt
5O/eWMt5+/Xra+zOqufsZ3U9ZiKVzbuoj6XcV5xIOGO4H8s8Cj+J1+U+Go/KEicZW2Rz8JjGNeeJ
5nHRLdfdcfs+TzeZYvTbF569n8Rdx2oovvkZlIKohzu+kJhlQiU3k6yRj+A/5+LuuO2ON11l5OU4
0zsu5vjETw/zq4N/8vi80DkqXUf7fcaKeXkFnGkoc/rNWSTEnTem6cb3PsyXurFfEhvIYLphriyw
2/FcYiT3rbbCzXPgvGSjsU9ruLLeCxAixk5MxgUyYLMLyWVni/fFOeJYyU9n5j5EP8iAS8kvZw65
CSGTnOo1Np8p7p7rk38OAy0kIoUcCqmhdUhWjIn6KbFSQz2FFE1KKaeSamqp55BjTjnnkoVRvYQS
Syq5lFJLK72GGmuquZZaa6u9+RaAsNRyK6bV1lrvDNq5dOfTnTN6H36EEUcaeZRRRxt9Uj4zzjTz
LLPONvvyKyzaf+VVzKqrrb7dppR23GnnXXbdbfdDrZ1w4kknn3Lqaad/Zu3N6vdZcz9k7vdZc2/W
lLF4zyvfssbhUj4u4QQnSTkjYz46Ml6UAQraK2e2uhi9Mqec2eZpiuTJmktKznLKGBmM2/l03Gfu
vmXut3kzKf5PefP/KXNGqfsrMmeUujdzP+ftF1lb/TJKuAlSFyqmNhyAjZO6r3yDx3/+bP7fC/zN
LiQctjkuT77HHjG2U4xd0VFUqwXXINjS8lmUxiRL4OBYpzvVQVnbndhz8qP5HSfsUXuaNcTZU9oj
IWvq/sMVBV/OSPzaexZzGkDs+lwr05YUZ8+r+ciIxYpZaKxako+Z9jw57AUc0nmVktqRPipn0YlH
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
xP6/AfsTzWhS6gNIqSEAAAAASUVORK5CYII=

------_=_NextPart_77f63ec8-4a76-41ad-805a-5046fd7e3566--

