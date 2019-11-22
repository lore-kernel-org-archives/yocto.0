Received: from APC01-HK2-obe.outbound.protection.outlook.com (APC01-HK2-obe.outbound.protection.outlook.com [40.107.130.100])
 by mx.groups.io with SMTP id smtpd.web11.5868.1574426400344640291
 for <Yocto@lists.yoctoproject.org>;
 Fri, 22 Nov 2019 04:40:02 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@hcl.com header.s=selector2 header.b=TMcvfOwk;
 spf=pass (domain: hcl.com, ip: 40.107.130.100, mailfrom: agnes.amree@hcl.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=HCL.COM; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IH1K5vENwJt9oMEbh2KGdWA8YghZywt7eecOhV0FBG8=;
 b=TMcvfOwkWNbo5LTFajnwYZauMHRFNMebsZWIQvu+qKSWNiJxIAfdDd1d2tqW12iZQk89FC54L59bumLfvcx2tq8/5QqovMU23w2PN7083G7osojR6jLlPsC8syfpIb5s/T0j555/XPOjrs7mFXP6f5Z5X9hTSLHbKP/CNns0XUM=
Received: from TY2PR04CA0013.apcprd04.prod.outlook.com (2603:1096:404:f6::25)
 by PS1PR0401MB1996.apcprd04.prod.outlook.com (2603:1096:803:a::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2474.18; Fri, 22 Nov
 2019 12:39:56 +0000
Received: from HK2APC01FT115.eop-APC01.prod.protection.outlook.com
 (2a01:111:f400:7ebc::204) by TY2PR04CA0013.outlook.office365.com
 (2603:1096:404:f6::25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2474.17 via Frontend
 Transport; Fri, 22 Nov 2019 12:39:55 +0000
Authentication-Results: spf=fail (sender IP is 192.8.245.51)
 smtp.mailfrom=hcl.com; lists.yoctoproject.org; dkim=pass (signature was
 verified) header.d=HCL.COM;lists.yoctoproject.org; dmarc=pass action=none
 header.from=hcl.com;
Received-SPF: Fail (protection.outlook.com: domain of hcl.com does not
 designate 192.8.245.51 as permitted sender) receiver=protection.outlook.com;
 client-ip=192.8.245.51; helo=APC01-PU1-obe.outbound.protection.outlook.com;
Received: from APC01-PU1-obe.outbound.protection.outlook.com (192.8.245.51) by
 HK2APC01FT115.mail.protection.outlook.com (10.152.248.194) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2474.17 via Frontend Transport; Fri, 22 Nov 2019 12:39:53 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KetsrgCO4/steCMfz3OpnEJgw1NbU4VPkR4gOY2jGMQgMk5xMsIZYQ16yBWT8osj5HEYL/ddJbfblbA3J00oR770nTSu8SDEyaKSlcH8L+u2zDJFBlcNrQmNum9oJ1DpNybf9WJZPTwr1K7G7FCypvEwjRH6FGl9nafdWsXCFPp0sE1zbsWruM66GxYUfUPjyZY8caBucog3TLyZIJ0oR5sszo0gHI8/AB8c852XBpyftPQHkR5U5YwIWdd6WNCm0hXjRom6nWMwgS/PKO1XZMvHwDMvu1SoPsne0qoOMjpEu4cWr0Tt64g9Z17Bqh7AUOUURN9y+Rkfg0swrpBhyA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IH1K5vENwJt9oMEbh2KGdWA8YghZywt7eecOhV0FBG8=;
 b=IIPBoS06Jo+NxaoED/1yuAMr8hxxSmxrwv78EEuhVJDBfIotuXnQlx/DyrAWsHumfJTofeMziC3sEHKK1NL9uZVazwDbr59ormzZ3uEq4Gdq6JJJ2JCgZd9b2Wthjh+cdCMauZCAz/QsrX80tbPbfPpKMOFf+PfSnhWWF55xMGOQC/LiqrhDO9PH/6a5YnEVVkrkd9XqnyTbBQOuHnyoI6Kkmg/vZkUED9/HtLGt0vUj5gN9Ezc06oqdM8EAR6TNiqGvB808MjLx8BSsQAESaC3hlq22wEXx8ecIJmHhfExBr2ApPEeQaK7LsngInyaCnAGDdU92B8rykGJuhIbJWg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=hcl.com; dmarc=pass action=none header.from=hcl.com; dkim=pass
 header.d=hcl.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=HCL.COM; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IH1K5vENwJt9oMEbh2KGdWA8YghZywt7eecOhV0FBG8=;
 b=TMcvfOwkWNbo5LTFajnwYZauMHRFNMebsZWIQvu+qKSWNiJxIAfdDd1d2tqW12iZQk89FC54L59bumLfvcx2tq8/5QqovMU23w2PN7083G7osojR6jLlPsC8syfpIb5s/T0j555/XPOjrs7mFXP6f5Z5X9hTSLHbKP/CNns0XUM=
Received: from SG2PR04MB2876.apcprd04.prod.outlook.com (20.177.17.148) by
 SG2PR04MB3221.apcprd04.prod.outlook.com (20.177.90.144) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2451.30; Fri, 22 Nov 2019 12:39:50 +0000
Received: from SG2PR04MB2876.apcprd04.prod.outlook.com
 ([fe80::79e1:f838:1b7e:793a]) by SG2PR04MB2876.apcprd04.prod.outlook.com
 ([fe80::79e1:f838:1b7e:793a%7]) with mapi id 15.20.2451.032; Fri, 22 Nov 2019
 12:39:50 +0000
From: agnes.amree@hcl.com
To: "Yocto@lists.yoctoproject.org" <Yocto@lists.yoctoproject.org>
Subject: Coreutils missing in Yocto 2.6.3 sdk
Thread-Topic: Coreutils missing in Yocto 2.6.3 sdk
Thread-Index: AdWhMIN9Uu7mL5sIRb2NDE9RcYkXkQ==
Date: Fri, 22 Nov 2019 12:39:50 +0000
Message-ID: 
 <SG2PR04MB2876A7AD2E90AAFB6DE9074EFC490@SG2PR04MB2876.apcprd04.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: 
 eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL2hjbCIsImlkIjoiOTc5MjgzMTQtMjU3ZS00M2VmLTg3YjAtOWM3NjkzMjY3ZGY1IiwicHJvcHMiOlt7Im4iOiJIQ0xDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoibnVsbCJ9XX1dfSwiU3ViamVjdExhYmVscyI6W10sIlRNQ1ZlcnNpb24iOiIxOC40LjE4NDMuMTIzIiwiVHJ1c3RlZExhYmVsSGFzaCI6ImlEZlwvTE1kd0JLaFh3SWhvTzZvdXJnVSswY2FvRmtEb1dGZzBYNlRTRW8rR0RjdUtOazJqWWFyOVo0SEZEV2pwIn0=
x-hclclassification: null
Authentication-Results-Original: spf=none (sender IP is )
 smtp.mailfrom=agnes.amree@hcl.com; 
x-originating-ip: [203.105.191.68]
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-Correlation-Id: 1c2afd6c-dba6-412e-dabf-08d76f49138b
X-MS-TrafficTypeDiagnostic: SG2PR04MB3221:|PS1PR0401MB1996:
X-Microsoft-Antispam-PRVS: 
	<PS1PR0401MB1996198D426E88734853272EFC490@PS1PR0401MB1996.apcprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;OLM:7691;
x-forefront-prvs: 02296943FF
X-Forefront-Antispam-Report-Untrusted: 
 SFV:NSPM;SFS:(10019020)(4636009)(396003)(136003)(346002)(376002)(39860400002)(366004)(38564003)(199004)(189003)(74316002)(7736002)(186003)(5660300002)(86362001)(5640700003)(7696005)(3846002)(81166006)(81156014)(54896002)(8676002)(26005)(55016002)(6306002)(9686003)(8936002)(99286004)(71200400001)(71190400001)(102836004)(9326002)(14454004)(6506007)(2351001)(2906002)(14444005)(316002)(256004)(5024004)(52536014)(790700001)(25786009)(478600001)(33656002)(66446008)(76116006)(6436002)(66556008)(66946007)(66476007)(64756008)(6916009)(6116002)(2501003)(66066001);DIR:OUT;SFP:1102;SCL:1;SRVR:SG2PR04MB3221;H:SG2PR04MB2876.apcprd04.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;A:1;MX:1;
received-spf: None (protection.outlook.com: hcl.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 ciMRxJCl9XZxCt7b0+WegF4Wr2Jgx1UtC9/aJZPQNT93RXfYtq0sEUVGtQ8cjr6s4szm8M0dj5pNtQIcLK+MO/bpFMK9RgQ79Fq8mZFzio8JF/X7/MQhvcBQWsS6Ne6PKIOzNVOeQJYZ/7kH955Qc7/+Fy/RIt4jcFLSg7xG3Z+dbFNPsAdA/cgMkyuoJ1KenmmTsR/3u5w3sV7WJemGfetqyaydHA0GM4uV131Vh8CsA2dwzh9sbCODhWhZaz+rnmn9U/wMmt1LdW+VwiUowGgVWzvq6ssD07Mvuw9P7WJ3KvUcS7pL/HPhhi1fQDvZ/oboD+yWuqBU4+C7DkkNrJugmr3EluWm1yVomWTC2ndaFAIFLm5cD/nw6LDNeg2W5j+lf+piICzglRHSaTMLfKgdTcMxPvwt9tKe3K8ZPFbQCPiEaQk/b5Hc/T2fwlW0
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SG2PR04MB3221
X-DLP: MSGProcess
Return-Path: agnes.amree@hcl.com
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 HK2APC01FT115.eop-APC01.prod.protection.outlook.com
X-Forefront-Antispam-Report: 
	CIP:192.8.245.51;IPV:CAL;CTRY:IN;EFV:NLI;SFV:NSPM;SFS:(10019020)(4636009)(376002)(346002)(39860400002)(136003)(396003)(1110001)(339900001)(38564003)(199004)(189003)(8676002)(81156014)(7736002)(2351001)(33656002)(8936002)(9686003)(356004)(81166006)(71190400001)(2501003)(336012)(9326002)(7696005)(74316002)(186003)(6306002)(26826003)(55016002)(478600001)(54896002)(16586007)(86362001)(36906005)(790700001)(316002)(6506007)(76130400001)(6436002)(5640700003)(52536014)(5660300002)(26005)(70206006)(25786009)(2906002)(5024004)(14444005)(14454004)(105606002)(3846002)(6916009)(70586007)(6116002)(102836004)(66066001)(99286004);DIR:OUT;SFP:1102;SCL:1;SRVR:PS1PR0401MB1996;H:APC01-PU1-obe.outbound.protection.outlook.com;FPR:;SPF:Fail;LANG:en;PTR:InfoDomainNonexistent;A:1;MX:1;
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	d97f1f5c-24cb-4126-eefe-08d76f491136
X-Forefront-PRVS: 02296943FF
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	+vqIBdpV8q7981kJDe1/Ss2IJP4g9oDwbW4sQ5ZY/52WztzMLD/+Ywk5tEHGF1xZ/icMrwg0Et/0wzs2imwZDcO4ZgO+wxHC80iF3+wmY8FaaSwsfaUg9bqFTOxCha0HxMSRldgHDiGwsNKltJQN8w/WZDsCygNUr9KhXAG12EDc52xbaJUXV1Nlt3bwD2fb5IFJl+9Mil/gbAQ+enUjoKEGXozjkAZOrYTfoJqtXHhWcYmmBwWRhcx4Z0Chhq4piG/Fq2fSzCMHRE0F58/cQodUZz+CLxtOLUbdzuQ0NU41XH2Eg2FnPz+D2NzcTD9xfjcR6fpJhtPoikn5s86z8cPahXipEWn+sfTOQMbFvqOHB+UBNYF6XUGGJ4nBlGKe9dYuEGDRtiI2wBzsJEsRZlBvueBBVsNtd4BCJz56wknbVUXXsNOAHIxH8CUL6QDF
X-OriginatorOrg: HCL.COM
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Nov 2019 12:39:53.8976
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 1c2afd6c-dba6-412e-dabf-08d76f49138b
X-MS-Exchange-CrossTenant-Id: 189de737-c93a-4f5a-8b68-6f4ca9941912
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=189de737-c93a-4f5a-8b68-6f4ca9941912;Ip=[192.8.245.51];Helo=[APC01-PU1-obe.outbound.protection.outlook.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PS1PR0401MB1996
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_SG2PR04MB2876A7AD2E90AAFB6DE9074EFC490SG2PR04MB2876apcp_"

--_000_SG2PR04MB2876A7AD2E90AAFB6DE9074EFC490SG2PR04MB2876apcp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

We are working on Yocto 2.6.3. We are generating the sdk using "bitbake cor=
e-image-sato-sdk -c populate_sdk".
After installation of sdk, we observed, usr/bin/*.coreutils are not availab=
le.
However, in the build directory, rpm's are generated in deploy-rpms. And co=
reutils are present there, but they are not shipped into the sdk.

Could you guide us in this ASAP. This will help us in proceeding.

Thanks & Regards,
J. Agnes Amreetha

::DISCLAIMER::
________________________________
The contents of this e-mail and any attachment(s) are confidential and inte=
nded for the named recipient(s) only. E-mail transmission is not guaranteed=
 to be secure or error-free as information could be intercepted, corrupted,=
 lost, destroyed, arrive late or incomplete, or may contain viruses in tran=
smission. The e mail and its contents (with or without referred errors) sha=
ll therefore not attach any liability on the originator or HCL or its affil=
iates. Views or opinions, if any, presented in this email are solely those =
of the author and may not necessarily reflect the views or opinions of HCL =
or its affiliates. Any form of reproduction, dissemination, copying, disclo=
sure, modification, distribution and / or publication of this message witho=
ut the prior written consent of authorized representative of HCL is strictl=
y prohibited. If you have received this email in error please delete it and=
 notify the sender immediately. Before opening any email and/or attachments=
, please check them for viruses and other defects.
________________________________

--_000_SG2PR04MB2876A7AD2E90AAFB6DE9074EFC490SG2PR04MB2876apcp_
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
	{margin:0in;
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
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hi,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">We are working on Yocto 2.6.3. We are generating the=
 sdk using
<b>&#8220;bitbake core-image-sato-sdk -c populate_sdk&#8221;.<o:p></o:p></b=
></p>
<p class=3D"MsoNormal">After installation of sdk, we observed, <b>usr/bin/*=
.coreutils</b> are not available.<o:p></o:p></p>
<p class=3D"MsoNormal">However, in the build directory, rpm&#8217;s are gen=
erated in deploy-rpms. And coreutils are present there, but they are not sh=
ipped into the sdk.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Could you guide us in this ASAP. This will help us i=
n proceeding.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks &amp; Regards,<o:p></o:p></p>
<p class=3D"MsoNormal">J. Agnes Amreetha<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<font face=3D"Arial" color=3D"Gray" size=3D"1">::DISCLAIMER::<br>
<hr>
The contents of this e-mail and any attachment(s) are confidential and inte=
nded for the named recipient(s) only. E-mail transmission is not guaranteed=
 to be secure or error-free as information could be intercepted, corrupted,=
 lost, destroyed, arrive late or
 incomplete, or may contain viruses in transmission. The e mail and its con=
tents (with or without referred errors) shall therefore not attach any liab=
ility on the originator or HCL or its affiliates. Views or opinions, if any=
, presented in this email are solely
 those of the author and may not necessarily reflect the views or opinions =
of HCL or its affiliates. Any form of reproduction, dissemination, copying,=
 disclosure, modification, distribution and / or publication of this messag=
e without the prior written consent
 of authorized representative of HCL is strictly prohibited. If you have re=
ceived this email in error please delete it and notify the sender immediate=
ly. Before opening any email and/or attachments, please check them for viru=
ses and other defects.<br>
<hr>
</font>
</body>
</html>

--_000_SG2PR04MB2876A7AD2E90AAFB6DE9074EFC490SG2PR04MB2876apcp_--
