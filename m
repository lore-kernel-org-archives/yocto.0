Received: from NAM02-BL2-obe.outbound.protection.outlook.com (NAM02-BL2-obe.outbound.protection.outlook.com [40.107.75.41])
 by mx.groups.io with SMTP id smtpd.web09.1522.1576574826598972408
 for <yocto@lists.yoctoproject.org>;
 Tue, 17 Dec 2019 01:27:07 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=KGVRB9gu;
 spf=pass (domain: windriver.com, ip: 40.107.75.41, mailfrom: andreea.volosincu@windriver.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=F3iOo+Sj+3xkSY0o9j9lRIuRHPAtSfWRXoISFkPpsViatE/xQd5NTrs+M3roUmB7hI2zeKrhTlPowHpL3i9ajcwbfQ7RfBXZ7DBc3NPb0FQ2YOblbTWvgD1ynx3DHRQigDEHWKBdNwhYVC0Zk09+DDazNJm12UMze67uD5K6WeaopZU8UysLMYxa/oOrFSb2WTEMwcadJ4e4wcm9mJM9e9ecSbyPo8lpcbfEQl/Q52txsUMfAEIXZQlBEXlA+/uSj0b/xOvJmu2zWvA9FLc+suCtCZOo1nIBsq+295XtgtYgMsmV1fCPP8eGxgvHNsb8QAqTkaDSBwHQ6TtrhDbHww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GNNhdgaqZPAUV4c9znLwn14nY7hKYtmTSfTuL6VVsho=;
 b=lrwo/yphqv5c8I4bmTmDrDA8nhahdq+OYlQcm7qJTDugySOcE2XCUKMv7rq8JuB7t/MYLqGf7X+gGRAJpR92SG+IPbpsFkTYJemU1Mp1OZMRUBWLDxzzk7OVePlu4WQJUOkZkHJKnpmPS92nJk1ybwLvhwoPiHAm0lY5DZyA/iVFeD8b/zNUAAJBFDe+nnGskM2IC3mib9x193pWmbYAAa7GeYIIZQ0AnuwarGTE/HzCPN5ldC62+pFICBD4T/EBImQalE92zso28mWtlaF6Lxlc9iZc1dOkobcvcq38MBVLvoLy0KU98C3Z7ijMlEhTtaGhsBHHS/zqGGc974tNkg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GNNhdgaqZPAUV4c9znLwn14nY7hKYtmTSfTuL6VVsho=;
 b=KGVRB9gutHpkTmrIa9gmrmqA4tyTqqijSWl+zaOfnfW3Op8RiErmvPpydVU/uJ74hmSAHfzKdrtXg/IgXW/cJoRcvkeNFwFG+Ue2mo3+I957cxuBfp9l2vPVAGwTPf3tE+EEq7+Yh15mTm4VwR2F4azBdVvWn2lh4Wes2f5tAHE=
Received: from BN6PR11MB1617.namprd11.prod.outlook.com (10.172.23.142) by
 BN6PR11MB1746.namprd11.prod.outlook.com (10.175.95.148) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2559.13; Tue, 17 Dec 2019 09:27:04 +0000
Received: from BN6PR11MB1617.namprd11.prod.outlook.com
 ([fe80::e888:7f10:d52b:ee7c]) by BN6PR11MB1617.namprd11.prod.outlook.com
 ([fe80::e888:7f10:d52b:ee7c%12]) with mapi id 15.20.2538.019; Tue, 17 Dec
 2019 09:27:04 +0000
From: "Volosincu, Andreea S" <Andreea.volosincu@windriver.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Last Live Coding with Yocto Project session in 2019
Thread-Topic: Last Live Coding with Yocto Project session in 2019
Thread-Index: AdW0vAfhrrnVSktbQzCl35Yyd7Lv0A==
Date: Tue, 17 Dec 2019 09:27:03 +0000
Message-ID: 
 <BN6PR11MB161705E4BBDA58FCB6F85EA9F5500@BN6PR11MB1617.namprd11.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=andreea.volosincu@windriver.com; 
x-originating-ip: [99.88.44.18]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c321d477-6cfc-467c-ac5a-08d782d34734
x-ms-traffictypediagnostic: BN6PR11MB1746:
x-microsoft-antispam-prvs: 
 <BN6PR11MB174639BEA87544FE0A047A3FF5500@BN6PR11MB1746.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3173;
x-forefront-prvs: 02543CD7CD
x-forefront-antispam-report: 
 SFV:NSPM;SFS:(10009020)(366004)(39850400004)(396003)(376002)(136003)(346002)(199004)(189003)(6506007)(7696005)(26005)(186003)(66476007)(64756008)(66946007)(66446008)(33656002)(71200400001)(66556008)(76116006)(6916009)(4744005)(52536014)(5660300002)(86362001)(966005)(8936002)(8676002)(55016002)(81166006)(81156014)(9686003)(478600001)(2906002)(316002);DIR:OUT;SFP:1101;SCL:1;SRVR:BN6PR11MB1746;H:BN6PR11MB1617.namprd11.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;A:1;MX:1;
received-spf: None (protection.outlook.com: windriver.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 CiyAg+s49fKIhI5xPzcmq19+XYXjzMkUCMLUP+2F33fWRgb22fyX31bJUIS25ABqW7j7w0RuHAXCjctVH1StuT5eeRG+pVCecCVkDrdWnFeS6vIuJVjz01QXKS6mqEjKy/eZwIa188H4sIcAhK+dYX4ZKtPppwS015aVdmJAMgCn3IFTkIKLAtKVLTXtv16f+sCjFux8EJFQmCK/e3C6VJdnEWZGL0XC/R2/rrD4qTuWB/OLsXr+wvAkrb2SkNWM8WJHqiTdKgCLeoZg5tUDiVxqz4ITSin5YBJjZmvr+oWreZ23YgJBJuYoA6guyM/ZajBAljWaAK62InH9dPO3Q7K4Yp4+0DJ+xQrZ+Q7koyI2BjrPit880Xu0hAI1IZCqBB+HDI7//Zj4MjUFF8/gKEkaZDkWW1v75X9E/5LzoTN1wugXIWRWDzvNbvfBc157u1Wgjkx3xc9lTjO23ZlQwnteUW+MeYHNhgAt/XahF5k=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c321d477-6cfc-467c-ac5a-08d782d34734
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Dec 2019 09:27:03.9569
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vNA2ukT1Ht/fUNP2VRu+t1h3G5MO0QBBYNS0wXQHsbF03CKX6TfkJOIkSbWP9+Kf+TME9gMUC23uYUfdNtIEVhUq/ip46wdHKGjuQdGJpmY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB1746
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BN6PR11MB161705E4BBDA58FCB6F85EA9F5500BN6PR11MB1617namp_"

--_000_BN6PR11MB161705E4BBDA58FCB6F85EA9F5500BN6PR11MB1617namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Today, wrapping up the year with another live coding session.

When: Dec 17, 2019, 4:00 PM CET/Berlin
Where: Yocto Project Twitch channel - https://www.twitch.tv/yocto_project
What: Yocto Project developer, Josef Holzmayr, will talk about build inspec=
tion, diagnosing recipe builds, dependencies, and package sizes

Best,
Yocto Project Advocacy Team


--_000_BN6PR11MB161705E4BBDA58FCB6F85EA9F5500BN6PR11MB1617namp_
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
	{font-family:"Malgun Gothic";
	panose-1:2 11 5 3 2 0 0 2 0 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:"\@Malgun Gothic";
	panose-1:2 11 5 3 2 0 0 2 0 4;}
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
	{mso-style-type:export-only;}
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
<p class=3D"MsoNormal">Today, wrapping up the year with another live coding=
 session.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">When: Dec 17, 2019, 4:00 PM CET/Berlin<o:p></o:p></p=
>
<p class=3D"MsoNormal">Where: Yocto Project Twitch channel - https://www.tw=
itch.tv/yocto_project<o:p></o:p></p>
<p class=3D"MsoNormal">What: Yocto Project developer, Josef Holzmayr, will =
talk about build inspection, diagnosing recipe builds, dependencies, and pa=
ckage sizes<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Best,<o:p></o:p></p>
<p class=3D"MsoNormal">Yocto Project Advocacy Team<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_BN6PR11MB161705E4BBDA58FCB6F85EA9F5500BN6PR11MB1617namp_--
