Return-Path: <Amol.Lad@4rf.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 08D49E006F3; Mon, 13 Aug 2018 08:23:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.116.100 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from AUS01-ME1-obe.outbound.protection.outlook.com
	(mail-me1aus01on0100.outbound.protection.outlook.com
	[104.47.116.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D130BE006B3
	for <yocto@yoctoproject.org>; Mon, 13 Aug 2018 08:23:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=4rf.onmicrosoft.com;
	s=selector1-4rf-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=DpIoqEn/EDP4n/sV/nWv6LnNqR+hcURoKKBxWdICt9A=;
	b=J7XjkDvetvipKEu9RpChcu7qvXhcOWn8olgMcVDn29AbbebrmwJp124lD/9EoQgJaRvZ+DtOxmsbD37u2NKN7C5/VmJZundtbEELomVI/bOcvuJxpR/qtp9WUvD+R+ROD7E6rFLGMIEsDsEFK/3mfZDwNhw+bQoCJJeXXKFYi9w=
Received: from SYXPR01CA0114.ausprd01.prod.outlook.com (2603:10c6:0:2d::23) by
	MEAPR01MB3846.ausprd01.prod.outlook.com (2603:10c6:201:3d::15) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.1038.20; Mon, 13 Aug 2018 15:23:12 +0000
Received: from SG2APC01FT061.eop-APC01.prod.protection.outlook.com
	(2a01:111:f400:7ebe::204) by SYXPR01CA0114.outlook.office365.com
	(2603:10c6:0:2d::23) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.1038.21 via
	Frontend Transport; Mon, 13 Aug 2018 15:23:11 +0000
Authentication-Results: spf=pass (sender IP is 114.110.34.227)
	smtp.mailfrom=4rf.com; yoctoproject.org; dkim=none (message not signed)
	header.d=none;yoctoproject.org; dmarc=bestguesspass action=none
	header.from=4rf.com;
Received-SPF: Pass (protection.outlook.com: domain of 4rf.com designates
	114.110.34.227 as permitted sender) receiver=protection.outlook.com;
	client-ip=114.110.34.227; helo=mail.4rf.com;
Received: from mail.4rf.com (114.110.34.227) by
	SG2APC01FT061.mail.protection.outlook.com (10.152.251.65) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id
	15.20.1038.3 via Frontend Transport; Mon, 13 Aug 2018 15:23:11 +0000
Received: from 4rf-nz-exchange.local.4rf.com
	(fd00:192:168:0:bd7a:f2d0:7a81:173f) by 4rf-nz-exchange.local.4rf.com
	(fd00:192:168:0:bd7a:f2d0:7a81:173f) with Microsoft SMTP Server (TLS)
	id 15.0.1365.1; Tue, 14 Aug 2018 03:23:09 +1200
Received: from 4rf-nz-exchange.local.4rf.com ([fe80::bd7a:f2d0:7a81:173f]) by
	4rf-nz-exchange.local.4rf.com ([fe80::bd7a:f2d0:7a81:173f%14]) with
	mapi id 15.00.1365.000; Tue, 14 Aug 2018 03:23:09 +1200
From: Amol Lad <Amol.Lad@4rf.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Creating multiple filesystem images
Thread-Index: AdQzGRVu8W/YW0b4Qm+LnMSYrineaA==
Date: Mon, 13 Aug 2018 15:23:09 +0000
Message-ID: <df04ced4f6dc42808b725892b0a59aff@4rf-nz-exchange.local.4rf.com>
Accept-Language: en-US, en-NZ
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [106.51.30.102]
x-c2processedorg: b87d8f4e-38aa-47ad-a534-2cc14c7a88c7
MIME-Version: 1.0
X-EOPAttributedMessage: 0
X-Forefront-Antispam-Report: CIP:114.110.34.227; IPV:CAL; CTRY:NZ; EFV:NLI;
	SFV:NSPM;
	SFS:(10019020)(136003)(39840400004)(346002)(376002)(396003)(2990300002)(438002)(51874003)(199004)(189003)(6116002)(54896002)(86362001)(55016002)(6306002)(356003)(6916009)(5640700003)(5250100002)(7736002)(2501003)(336012)(14454004)(53936002)(72206003)(790700001)(8936002)(478600001)(26826003)(3846002)(126002)(108616005)(2900100001)(24736004)(316002)(486006)(476003)(426003)(97736004)(7696005)(2906002)(16586007)(26005)(81156014)(2351001)(8676002)(81166006)(102836004)(66066001)(1730700003)(106466001)(98436002)(68736007)(9456002)(5024004)(84326002)(3480700004)(260700001)(106002)(9326002)(14444005)(186003)(5660300001);
	DIR:OUT; SFP:1102; SCL:1; SRVR:MEAPR01MB3846; H:mail.4rf.com;
	FPR:; SPF:Pass; LANG:en; PTR:InfoDomainNonexistent; A:1; MX:1; 
X-Microsoft-Exchange-Diagnostics: 1; SG2APC01FT061;
	1:rUV8hF36GdpwTKs20xIZ9PFz1+EECsBNhhpH1npAVypamdWRfxAzefuux/VDoRduqsShi9AWiNHrTifi16fdqxkxtIGu+rMczUxUlKAIn/k7maj0FK+f4yXdZyqGVh+w
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: b09518e2-7505-4da3-3217-08d60130ae4c
X-Microsoft-Antispam: BCL:0; PCL:0;
	RULEID:(7020095)(4652040)(8989117)(4534165)(4627221)(201703031133081)(201702281549075)(8990107)(5600074)(711020)(4608076)(2017052603328)(7153060)(7193020);
	SRVR:MEAPR01MB3846; 
X-Microsoft-Exchange-Diagnostics: 1; MEAPR01MB3846;
	3:nU0Si318njzUwG2ieUGJE5yR2kflhmN9fC+dUYILQ6OchMblbNV8v8f5Cl6HCa46UNUrFEDcC7MiI2OjLIa4PLAfvpLDz3LaPN2Lupk9TmUPyHAgh+54wUiw7AeBE15a1Kb6E2cYtaadW1zw4R3wWJQ6sa55vAnr1koYQVdbPTXHGYxCLnpPHC9Rg2xA+BuVw7nRNg52waalHwaOXevWbnlRRtuN9ivM1EmfRM+VlK3hlKdGyl/50eRVglXM9U8yW0P/ivMliRmmEdewvVstRRsD4vDr/WVh2ItZx2+HmUd270vEmIWC0A2GI0tdqsyramQi1s2TZedjazHl0z8nVl/3SVOQh+ednHZvEVVYqoU=;
	25:ITH5j0nXosblZ7tN6N/FYjSUYhHr/g0/KeFTaNI5WLf1iZCl/0h9L0Y69yAcCJ2uZviXaxfPItSJQAcR3j/LllXDo8cY6Sp/8PzJvsHyK0CuTS4B8zDFnk8d4hb6cn5Vseok3h/c15sEA80PJh3xyu71pwtkrjTKoIMFMnjvAgR3mvW3wHXWcThYMDUKj9eLTQ1qiLGNPAr3mLxH/arLOqL8y9wj3DTJ1A615oKw0dLyPgEJPKotHmFQpP4zE5IC1kSCe8skkE90ZUAdfPdL11keaNNx0WvbttwmiKGCzuMoN9OzCg7Y0HM12p2aXaP8n0K17Gu0a8F1mimdeCTUEQ==
X-MS-TrafficTypeDiagnostic: MEAPR01MB3846:
X-Microsoft-Exchange-Diagnostics: 1; MEAPR01MB3846;
	31:LsjG9EHXpzbExJGUMneH/goe1THb96Ha44tcl7s9ZpEenj0M2d5RN68Eg925v7rsXnzQCjZstBA6TeY3+bxe7O/J5YBRXcibzUApKvaib6uPvcoiEswT9xCCtXvYlIZDb6NH2zVqUYZCrOIWFBji9cEA/sqYmKmBTWAJYFBSO/m3XgPUyezEmcgWtb5su/mngRwDhbSR9Z4WJGDVUivadoXyjuY1SxA1lDiH31HLY40=;
	4:mc36KacvLjOqhnoGQbPfES1EP0EddbRgg21uWgos4ytGV2tz25pPZ4TvLZOdDINGh7AcNuG0dFW72r1qN8wtaptKVjDs6KJV2swoVdN8esXcjMuD4xClbXVq9N9lXH9LIzvoxtoY6d9jSLYYzc/Alp+eVl6nrba/M+VMzuenIZO3mVL8VA4NzVX6FhK16NHZoARh7R8SMVR+XLovKvu9P1vQ3vL8AZAV2T8fXBzyDt9xneJkkzBqeAyNYCKuWkOsI/4iknFEbm3UPsxnXYKxcgPOllMd2X+8MR4bTlyClk7sob0hV8vkwh193ri6SmnXJCiqN4r+KH7odyRe69CPtdMDor2I3tJCmYahb+j7ITY04XR5TA9/aGdRxEskrG7z
X-Microsoft-Antispam-PRVS: <MEAPR01MB3846545C9F9926CA7337488EDD390@MEAPR01MB3846.ausprd01.prod.outlook.com>
X-Exchange-Antispam-Report-Test: UriScan:(28532068793085)(223705240517415)(21748063052155); 
X-MS-Exchange-SenderADCheck: 1
X-Exchange-Antispam-Report-CFA-Test: BCL:0; PCL:0;
	RULEID:(6040522)(2401047)(8121501046)(5005006)(93006095)(93004095)(3231311)(944501410)(52105095)(3002001)(10201501046)(149027)(150027)(6041310)(201703131423095)(201702281528075)(20161123555045)(201703061421075)(201703061406153)(20161123562045)(20161123560045)(20161123564045)(20161123558120)(6072148)(201708071742011)(7699016);
	SRVR:MEAPR01MB3846; BCL:0; PCL:0; RULEID:; SRVR:MEAPR01MB3846; 
X-Forefront-PRVS: 07630F72AD
X-Microsoft-Exchange-Diagnostics: =?us-ascii?Q?1; MEAPR01MB3846;
	23:8qoO0B8K0N2OIlxmiixsbRodBmUMF5W8lywaVJc6+?=
	=?us-ascii?Q?xZK2qBm0DQK6j14PUY5Hdfitv71rGziqF3quYEywYxSxeqQfimadMODwQldJ?=
	=?us-ascii?Q?bwo3rLh7uv13wc4J+ov5uujdqSrJ2dl03ZhbXDTb2ENhHiakwI/ja/IkeDul?=
	=?us-ascii?Q?pJ+aJOyCnrt9Of2RNxezCoKzkUjD7NV0HeFbmc8lyYxlVqmALQoC7WtDq3wy?=
	=?us-ascii?Q?A8ZUh9YnaJGBlQ4kgYKAgYerxY1Sk48VU/CawjuJ2c6lYwme+aXFiLUYoddm?=
	=?us-ascii?Q?FHVleCCRPIE8kyyjp5EZ3100OSacpPhQWZphazkCn0osY4QchPy4WEPd1pwF?=
	=?us-ascii?Q?gG+ZWNWq4RMMkzDWJYNBHXMu/FTu5WgrYI8HUxx+kDDnd9ltoBP0FEwiTXD2?=
	=?us-ascii?Q?Xu+pJAuJAbrFJLHqvx6uX+Ku38iO11VoabvTOsJb9Q517/lOPMnSuSpCvv1Z?=
	=?us-ascii?Q?mS9orECTFE2MiW657uMX7lonjbFupjyDcAQQj4vXMtL793UIM5XDAL+fWsms?=
	=?us-ascii?Q?TqQ70Gra3Rt2c3G/7b+hx3zr9S2jl9q5newWHLdJSlrvISUv9TQVjXas3fCL?=
	=?us-ascii?Q?mU7fDTGXap+GPw5rygfKP76XRxSWW80vnCmZ8MOzjWGymfFobBJSIvnIYJ0j?=
	=?us-ascii?Q?JFuj183BilRUC0/rnayrX0vFOi4HgYb4vj/3gpJyXMKHzdwCtcOLPF+MxXb+?=
	=?us-ascii?Q?cHryVygNneKlbJTBrE1Kw6Dcb2pxX03HI6MCn34G1LxnAbwlhWtDTREi2Aj6?=
	=?us-ascii?Q?KiuMPSbUhbJAL1z4SdfCupYQqeqU0tFdyvSmwY6IGnQh9xOalKXSRqaEkYOe?=
	=?us-ascii?Q?KNRBbMseE4m0xYaP+5ifS3y4G2V3K5bAWT09+BUO7fg2yq+3CrsHWkjD8rFW?=
	=?us-ascii?Q?sBti1VMcgQ6UiMN6+75hosxZpSed/GJJKnY9UcV5ge3ySos8n1GQrf6Iz4g6?=
	=?us-ascii?Q?kzt1b0mOoMi7wdJrteas+1Gi2yD/+vS8S6kcKPIpqj5xhWjJ7RYMLk61FRT1?=
	=?us-ascii?Q?su/dfWs55KKo0VU3CcoZKOgweLaLhbRVRcKJVXOTnhplLaDCi4s1IT+me5H6?=
	=?us-ascii?Q?O6px6/h+4c7wSUAdat+pNa7yIc3mIYmynNfnp4g0EMYDYMGe1j4+Id0UYHPg?=
	=?us-ascii?Q?i5b7lgrigquX/W0EuGloK8DQgdcdKud/6phMGoYkRUrEAhj0T7KNVX8g09Gd?=
	=?us-ascii?Q?6g3Ubg+C7XVido/SIQUF0KOi7CXLR2zq+E9rle2hRpEU3907jbsvorxmlLEd?=
	=?us-ascii?Q?4gqmVjuTmmWlohfeDb8JIQXMTGAmVunruO0gzy+RvTDNfbkCbbJJJyYQrUHk?=
	=?us-ascii?Q?D5Q7k7QEKUP/vlpw82gaxDR+FyhJm9/qEjjp5JdRmbuEU5oOyYDjGlKnKnGz?=
	=?us-ascii?Q?YtB+7if165a11TmOtxQ55+ptFlkrubFCG6cNbdomDutnUTP?=
X-Microsoft-Antispam-Message-Info: 4BI5M+5yTe/YDf+/5/WJR4m9nLmajYrfPdGw9w/Lol1xMvhY29amuVI74B6X1u/z7FoGtCgqGjcoeLRmCCtmmzRVgmBcv1BppLXktVLsjMxMEXABsBUqQycsVBBgXiFtM97cLasN1LKq5lDCP7OtAwcsx1uzc4UXdpYQ+kl/sVL5S8Tbo8qDhK8JnGRPevaQD9VS8h2KNt8wmIrTO2YzsdyoSfhwHDGbcCHDsP5CnSH05ev1gMrQrI2/ehItQ2OATGgoudPOhXAOg1VZlnF1txSbQsMAWjQwaR3ZPRkabYPViuXfeDQWEoZ5ynxgERv0qO7qxj0g9cJnEsQF3Eq03dAY4hJgeiEQbkZfV3Cmwq4=
X-Microsoft-Exchange-Diagnostics: 1; MEAPR01MB3846;
	6:WFqjl2ODogHJmZ6FhVDFstLheSZY/YvO4IOLtlIlzVJIxSZLA6MV492YMSA4KMxjqn1umSxwerhBtbj8CXTdLPDdpr/A/d/e+KQHKSboLrbx//0FSByQk3etPXlVS0b+URRKgGq8zqQBi2smtIFIUvuNh0KPDzQd4e35pJsOPjKySk5dc+GQ1BUJHq2HcuM/4PKC3ajskeXPR71jrjsSJtb0xTk9nBYEaul52oWvzThTx3h4D4Vqf1VVoMFWqyZx7wwhQb6T6NyBaBAX4ufrIh+phNK3vkHxvV2trZLalW9XvARLgLoAiDHIzddqLxK1WHXhWD15CWmRilqkyGMBhnkvwaSWvQ6tFVttHZIwDgVEaKgpwMzTlm5A51jQm6nIdGFJaD4SWnnqJXanI4OrJvxCRqkwbDMzgaV8LVQgf90UUqCAdjy3i9fZTBNcI2DKab91hYl2xmm/uo11tT7QaA==;
	5:5mtCPAtDj2oozwmTko9L37ZPrpznhuSB2DjceYsP84wDfaW83zrZMdjKp8SyJUXfQjts8LUzwk79IUc9eIlyMWPa7AzgBqiRWSejsXwOTIjOT2p5HMV9Z8lKEk4XN30nOeyMgEQD9fsjgf25ecKqzLwyXALicEDOIOQwJyElKjw=;
	7:YQ05g14Y+ybnbxRP6kAP2V+Wr7hUcTscNqacAhfvQxR9If9E4875MSl4f63mJw9YW4Rw+Kr0rmleRMqMAM1paDA6owcywenfPnyOwpnpfnyxY1/Vg/xnvH0B8mmuUk+UsCvsVV77PqZ7x3Lwhg9N2WIg6x/i2NLopOewu3ce03lEc6WschzPcNr7/ZIq1vVIkenQqri+nx2f6dCnWmxtdhgcYOtRNG8zMcep4CtXowf80cB/L9jlbizRTkRlO1Pl
SpamDiagnosticOutput: 1:99
SpamDiagnosticMetadata: NSPM
X-OriginatorOrg: 4rf.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Aug 2018 15:23:11.0506 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: b09518e2-7505-4da3-3217-08d60130ae4c
X-MS-Exchange-CrossTenant-Id: 9ffb526e-7b63-4774-8f76-2167f5ab5208
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=9ffb526e-7b63-4774-8f76-2167f5ab5208;
	Ip=[114.110.34.227]; Helo=[mail.4rf.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MEAPR01MB3846
Subject: Creating multiple filesystem images
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
X-List-Received-Date: Mon, 13 Aug 2018 15:23:17 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_df04ced4f6dc42808b725892b0a59aff4rfnzexchangelocal4rfco_"

--_000_df04ced4f6dc42808b725892b0a59aff4rfnzexchangelocal4rfco_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

Currently when we build say core-image-minimal, we get a root file system i=
mage (say ext4) after the build. However, I also need to create an ext4 ima=
ge for /boot partition (which contains zImage and dtb). I do not want wic i=
mage. How I can do this? i.e. I want two ext4 images after build: one root =
file system and another with content of /boot folder. Please advise

Thanks in advance
Amol
________________________________
The information in this email communication (inclusive of attachments) is c=
onfidential to 4RF Limited and the intended recipient(s). If you are not th=
e intended recipient(s), please note that any use, disclosure, distribution=
 or copying of this information or any part thereof is strictly prohibited =
and that the author accepts no liability for the consequences of any action=
 taken on the basis of the information provided. If you have received this =
email in error, please notify the sender immediately by return email and th=
en delete all instances of this email from your system. 4RF Limited will no=
t accept responsibility for any consequences associated with the use of thi=
s email (including, but not limited to, damages sustained as a result of an=
y viruses and/or any action or lack of action taken in reliance on it).

--_000_df04ced4f6dc42808b725892b0a59aff4rfnzexchangelocal4rfco_
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
<body lang=3D"EN-NZ" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hi,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Currently when we build say core-image-minimal, we g=
et a root file system image (say ext4) after the build. However, I also nee=
d to create an ext4 image for /boot partition (which contains zImage and dt=
b). I do not want wic image. How I
 can do this? i.e. I want two ext4 images after build: one root file system=
 and another with content of /boot folder. Please advise<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks in advance<o:p></o:p></p>
<p class=3D"MsoNormal">Amol<o:p></o:p></p>
</div>
<font color=3D"#9a9a9a"><font style=3D"FONT-SIZE: 8pt" face=3D"Arial">
<hr style=3D"FONT-SIZE: 8pt; FONT-FAMILY: Arial">
The information in this email communication (inclusive of attachments) is c=
onfidential to 4RF Limited and the intended recipient(s). If you are not th=
e intended recipient(s), please note that any use, disclosure, distribution=
 or copying of this information
 or any part thereof is strictly prohibited and that the author accepts no =
liability for the consequences of any action taken on the basis of the info=
rmation provided. If you have received this email in error, please notify t=
he sender immediately by return
 email and then delete all instances of this email from your system. 4RF Li=
mited will not accept responsibility for any consequences associated with t=
he use of this email (including, but not limited to, damages sustained as a=
 result of any viruses and/or any
 action or lack of action taken in reliance on it).</font> </font>
</body>
</html>

--_000_df04ced4f6dc42808b725892b0a59aff4rfnzexchangelocal4rfco_--
