Received: from mx0b-003cac01.pphosted.com (mx0b-003cac01.pphosted.com [205.220.173.93])
 by mx.groups.io with SMTP id smtpd.web08.1352.1621643537191824916
 for <yocto@lists.yoctoproject.org>;
 Fri, 21 May 2021 17:32:17 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@keysight.com header.s=selector1 header.b=uaWj6y1t;
 spf=pass (domain: keysight.com, ip: 205.220.173.93, mailfrom: richard_allen@keysight.com)
Received: from pps.filterd (m0187216.ppops.net [127.0.0.1])
	by mx0b-003cac01.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id 14M0SvPe018940
	for <yocto@lists.yoctoproject.org>; Fri, 21 May 2021 17:32:16 -0700
Received: from nam04-dm6-obe.outbound.protection.outlook.com (mail-dm6nam08lp2043.outbound.protection.outlook.com [104.47.73.43])
	by mx0b-003cac01.pphosted.com with ESMTP id 38npfc331p-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <yocto@lists.yoctoproject.org>; Fri, 21 May 2021 17:32:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HxzeOs0ig3KZcoju6h+5M83U6AHwRPsUICM7fMuB2/OJWyVvo84ZSfaO9O8cqgiIfLbtaja9FPeg71cjMDc1E0twIcN2zihS6FCONOgnvvaI+0rFGwydN5JGx6vespIhL9mKZd4vHaNH3qNXtzGFu61sd1OT5rTW3xolR8JjkdhlkK1o7O9V3pouvRPCue0hoWBs1PyFPEw5TRzOPI3eCKOMUL0Pwi6CgfgLcQZkF9PmnhzOUTFV0McfKl/DpBYvVJ/L+ZnzCRUlHlZAy5aSVVy45PYxKWPfpwKBiDYrmySRdI+hGwBXj/XouXp0gWN1c8kszBwnSj8fj6bmGzykqg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jW/iyydcafOhp8dP/IdjI07+BC7dKJcNcAtXEkpLyLM=;
 b=lvKzgros7mSUV6qFfL6/O3fR0cNNs1/tg+LeBhFNiYIVuDPXR6dUVhjlClOc56hPv9dlP05cx60edzHjLnqZBoXb0KOY7ooBPZfh8G30evHlJCrYUxAe60ppcRJhNarpQQgG7YV6VE29uVf//rE6iEOfvf2lnNa48jxqgLs3OdX4HsLGtxE6CPH2WPhlxy3q60R00C78o6gwznwBXdmZAv5y/qxw4XJ5dvkiLDLvC1UumCi1KZxfL4fOXCAbu3KUssCBp/KKEFVR2tAv0ML8gwvJfCQEJrVp3ZSw3CZWSlSAULtZx4fb6ZX3hXI+HoojDCdNtbZ8uYdgODfpDWVuDQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=keysight.com; dmarc=pass action=none header.from=keysight.com;
 dkim=pass header.d=keysight.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=keysight.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jW/iyydcafOhp8dP/IdjI07+BC7dKJcNcAtXEkpLyLM=;
 b=uaWj6y1tWu1iDnt1TzqVjzUBOdr1veRzsZhFsaOYQWmIed/RUY0H7/5WzTCBH0pbqId/5aBNBv5zwbTjiEdTkFQxhxNhCnPArEsJXCQba+qEW+tkk2n/qQ/FH4hREC3HaouImSkED/Z4SFJhesMgn43WAq0eChGpRT6aCAokMDI=
Received: from SA1PR17MB4835.namprd17.prod.outlook.com (2603:10b6:806:19e::7)
 by SN6PR17MB2671.namprd17.prod.outlook.com (2603:10b6:805:d2::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4129.26; Sat, 22 May
 2021 00:32:13 +0000
Received: from SA1PR17MB4835.namprd17.prod.outlook.com
 ([fe80::e487:60d:dc7:c9f8]) by SA1PR17MB4835.namprd17.prod.outlook.com
 ([fe80::e487:60d:dc7:c9f8%6]) with mapi id 15.20.4150.025; Sat, 22 May 2021
 00:32:13 +0000
From: "richard allen" <richard_allen@keysight.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: freescale imx-boot, fails to generate is imx-boot container for signed uboot ( wrong u-boot.bin used by imx-boot compile?)
Thread-Topic: freescale imx-boot, fails to generate is imx-boot container for
 signed uboot ( wrong u-boot.bin used  by imx-boot compile?)
Thread-Index: AddOoeKtTeEOxwjOTF2bzwdHsH277w==
Date: Sat, 22 May 2021 00:32:13 +0000
Message-ID: 
 <SA1PR17MB48351E3A2924D1CF65C43EA1F1289@SA1PR17MB4835.namprd17.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=keysight.com;
x-originating-ip: [4.16.62.188]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0d53eb54-69c7-44f8-471c-08d91cb90b55
x-ms-traffictypediagnostic: SN6PR17MB2671:
x-microsoft-antispam-prvs: 
 <SN6PR17MB2671A1BE5F277DB427CACC55F1289@SN6PR17MB2671.namprd17.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 lGAdQhGn+syCQtW3e02miGe2U2nGRglWXVEtPEcy1RhGP+iLvVXY7JRUFeIhG8rNtG/Kr+wvnyqH4PcS2OVEkOFYdATVccWvAOpuMF1147LRithVgbmjKvUywHp+bC1fqqiD0TuccLdvWQTSXkl4IUDij+HJLWr9fMIfTy8YeMwbVjunkhttDAFVw/IDZZpy41cR6TfoYLSUyJwhJ0h5SulinCkPkDiwg2/sHelwClJ7g0WEIOPZU3LlP6NHZmGctsOnookBPkqpRMCpwe70jukMJ9/6pva+BDvfqfBQm0lKu28JKhM1D/dAlAF/H+h6XVAr+TL00oRzCAWkQqNvHQbaC08plHPra53gjpEiuWJMf95cgpK4uyZMJI9wBOSYnB2fKpmH4nxpAMv8r+oLzzSa5hwUg8lhzCeVF1FY9KwskWotgU5+e2RIxOxsdvZozw7prmNKIjCEP7Wh9IZ9CRRUQxAlQ0bbZWQccTDGlONssKYHk4T6w3681QqXjfUaeybJ/+15IyFRXPpFZqsTSDvCfc89FBX2acHbD0dsdU23hjQlRAvqbdp5j4rV+vEiYQw0i9AxkmckjKEFEshc//p/yGwFdwk8mIvcjlSs+aM=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SA1PR17MB4835.namprd17.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(346002)(376002)(136003)(366004)(396003)(39860400002)(478600001)(66446008)(33656002)(64756008)(7696005)(2906002)(8936002)(66476007)(76116006)(66556008)(316002)(5660300002)(186003)(66946007)(86362001)(26005)(71200400001)(6506007)(122000001)(52536014)(6916009)(55016002)(8676002)(38100700002)(83380400001)(4744005)(9686003);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata: 
 =?us-ascii?Q?UasGWLxIvB4QZk07/d2w1Bq8KL+2cGVAfa/Rt5nMZXKdHxlvq82OeH6GcEDf?=
 =?us-ascii?Q?XotF/Zq9bqTL11dFap5yMAomLWQMcjmu/Hq8EJkuUWVkXbGWUYygaVMue6kL?=
 =?us-ascii?Q?RUEhQVar2pa8noX5+uDeX/nzj/1Z5Nbfqn+oB//UaaeBXVFE39MzzsNIcRf5?=
 =?us-ascii?Q?gjNGEjpPcxHsEUah4CVu52fLQCjJ5k54oGj3ONd1ohKqe3F0SktP06Xwm5xQ?=
 =?us-ascii?Q?TsKEI7f+qgmRQuHqddnbjYOSbinvD+0FGPknYSL5lkBhjqcXc9hxh2h4H4fQ?=
 =?us-ascii?Q?Dh9EDnr8g0FrT7tWsZ5n306ZiqG1DUTaMpb3+7TUUbBHppkTC8RWYIpUYjcF?=
 =?us-ascii?Q?2+f9q0RV3roWGbcQYlZnFCc+PwR1los/pXikihMFcHbT9SvthvLlP0rtGcQ4?=
 =?us-ascii?Q?41AaPZ8191hld+sdn/bJPO1533TG5fA6gurXGz1w+fo14iknkdwpzHwt2B1i?=
 =?us-ascii?Q?/8Sosg1MX+Fcdi/DSWyU8KfBSY1wpKG/FbVdy7EIy8y7EUMpHC5Hw9Aixu6w?=
 =?us-ascii?Q?i8BHZZB2s+PsvygStKl9bFrkPSLPy/Cww8vrCs0rvgzdkPLp90HxR/Hk/4O2?=
 =?us-ascii?Q?0mZALdIZnVB5JT0EE6vrQXsMpPWrUlfBnzZ8kRefKaT92O1hfSD4XGRR+sfz?=
 =?us-ascii?Q?rhddpwAMs1uJKhhaqY5n18fjL5kRmPmLKxiWf2oOa7+KzJ6XGJCzHdLpZcdA?=
 =?us-ascii?Q?gIvMSJKsd+9AWGCS1F3LXn8noMlniigHsQGeKfioda/fGSjvnIFTNvRYKHKs?=
 =?us-ascii?Q?RujHG5LZ1YHr0zdfd/tuEL0iYaL+WMtvHzdxhg2Vz7y8tM5vQduskIRv86z1?=
 =?us-ascii?Q?8D6xl259izo85+4j4or5TmDYTaR4Tw6hTrimvjVtVuODSl6zPer6p9xlsZ7+?=
 =?us-ascii?Q?C996UujRrL1V/N5tT5xk8MMgJv8gzfQ56dJ6px+SlO2V1lpGF5GOPfHfymiZ?=
 =?us-ascii?Q?8ur++fi/GxtWqP5p1htQOTSA8ld4yyiC/v8zSWyaq/yVqFiADFq68FBDlpa8?=
 =?us-ascii?Q?Jn3WLkU9cmbmevM+5HcfgD3/leWhBHculjGuJKRXsivFvl31bgKh5e85Q8aP?=
 =?us-ascii?Q?FOwlRxOUTD55SW0kvkS7SuLmV46ksnxhgFH8EiXSWV6P5OHyw1k69Xc0lS4U?=
 =?us-ascii?Q?BjZ+h7RLnTbmvfMbAQ4U5Br3+QI8Z91sWurcbtOOMV4hZSh/xNO0l31GG2Fj?=
 =?us-ascii?Q?HepRHKOzt+YmgjkQgGaeV+Kl/xov8BGshnbjTWDKjIxVw310kiYCtMeOggGj?=
 =?us-ascii?Q?3AAkROD39CaYOCoCk6N5AfY+OSYboZaSsWHTHf9xNO+Ul/44nBMw0xI+uxss?=
 =?us-ascii?Q?L6k=3D?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: keysight.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SA1PR17MB4835.namprd17.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0d53eb54-69c7-44f8-471c-08d91cb90b55
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 May 2021 00:32:13.2489
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 63545f27-3232-4d74-a44d-cdd457063402
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: mQidbGW6CHXhwYKSFacQ0ng0mrvI9IFMOgYChWqjRVJurZnZBKIqP7UAFSAzxB+iOAGOLGXJYwXVFftFZEmGcMw8NWiom0GO/op7/4VYg0s=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR17MB2671
X-Proofpoint-GUID: 4Do1gNMlDEJ4PjJzWJw5S4onR9x99K_b
X-Proofpoint-ORIG-GUID: 4Do1gNMlDEJ4PjJzWJw5S4onR9x99K_b
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.391,18.0.761
 definitions=2021-05-21_11:2021-05-20,2021-05-21 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0 adultscore=0
 mlxlogscore=499 clxscore=1011 malwarescore=0 priorityscore=1501
 spamscore=0 lowpriorityscore=0 mlxscore=0 impostorscore=0 bulkscore=0
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2104190000 definitions=main-2105220000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_SA1PR17MB48351E3A2924D1CF65C43EA1F1289SA1PR17MB4835namp_"

--_000_SA1PR17MB48351E3A2924D1CF65C43EA1F1289SA1PR17MB4835namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

In Hardknott, trying to enabled signed uboot containers for signed fitimage
The interaction between the uboot-sign.bbclass and the imx-boot.bb is not w=
orking

MACHINE=3Dimx8qxq-mek
UBOOT_SIGN_ENABLE=3D "1"
FIT_SIGN_INDIVIDUAL=3D"1"

(no SPL_SIGN_ENABLE)

I see the updated u-boot.bin in the uboot ${B}{config} sub-directory but ot=
her copies are still the original u-boot.bin

  *   The updated u-boot.bin =3D u-boot-nodtb.bin + u-boot-pubkey.dtb ,
When imx-boot creates the flash.bin, it is using original u-boot.bin , not =
the updated one.

Have confirmed if I put the updated u-boot.bin where imx-boot will use when=
 creating the flash.bin , then the resulting uboot will only boot signed fi=
tImages .

Any known work-arounds ? or this a known bug?
Thanks
Richard Allen








--_000_SA1PR17MB48351E3A2924D1CF65C43EA1F1289SA1PR17MB4835namp_
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
	{font-family:Wingdings;
	panose-1:5 0 0 0 0 0 0 0 0 0;}
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	font-size:11.0pt;
	font-family:"Times New Roman",serif;}
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	margin-top:0in;
	margin-right:0in;
	margin-bottom:0in;
	margin-left:.5in;
	font-size:11.0pt;
	font-family:"Times New Roman",serif;}
span.EmailStyle21
	{mso-style-type:personal-compose;
	font-family:"Times New Roman",serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
/* List Definitions */
@list l0
	{mso-list-id:1364208251;
	mso-list-type:hybrid;
	mso-list-template-ids:1904254208 -935429568 67698691 67698693 67698689 676=
98691 67698693 67698689 67698691 67698693;}
@list l0:level1
	{mso-level-start-at:0;
	mso-level-number-format:bullet;
	mso-level-text:-;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Times New Roman",serif;
	mso-fareast-font-family:Calibri;}
@list l0:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l0:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l0:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Symbol;}
@list l0:level5
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l0:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l0:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Symbol;}
@list l0:level8
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l0:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Wingdings;}
ol
	{margin-bottom:0in;}
ul
	{margin-bottom:0in;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72" style=3D"word-wrap:=
break-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">In Hardknott, trying to enabled signed uboot contain=
ers for signed fitimage<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p></o:p></p>
<p class=3D"MsoNormal">The interaction between the uboot-sign.bbclass and t=
he imx-boot.bb is not working<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">MACHINE=3Dimx8qxq-mek<o:p></o:p></p>
<p class=3D"MsoNormal">UBOOT_SIGN_ENABLE=3D &#8220;1&#8221;<o:p></o:p></p>
<p class=3D"MsoNormal">FIT_SIGN_INDIVIDUAL=3D&#8221;1&#8221;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">(no SPL_<i>SIGN</i>_ENABLE)<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I see the updated u-boot.bin in the uboot ${B}{confi=
g} sub-directory but other copies are still the original u-boot.bin<o:p></o=
:p></p>
<ul style=3D"margin-top:0in" type=3D"disc">
<li class=3D"MsoListParagraph" style=3D"margin-left:0in;mso-list:l0 level1 =
lfo1">The updated u-boot.bin =3D u-boot-nodtb.bin + u-boot-pubkey.dtb ,
<o:p></o:p></li></ul>
<p class=3D"MsoNormal">When imx-boot creates the flash.bin, it is using ori=
ginal u-boot.bin , not the updated one.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Have confirmed if I put the updated u-boot.bin where=
 imx-boot will use when creating the flash.bin , then the resulting uboot w=
ill only boot signed fitImages .<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Any known work-arounds ? or this a known bug?<o:p></=
o:p></p>
<p class=3D"MsoNormal">Thanks<o:p></o:p></p>
<p class=3D"MsoNormal">Richard Allen<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_SA1PR17MB48351E3A2924D1CF65C43EA1F1289SA1PR17MB4835namp_--
