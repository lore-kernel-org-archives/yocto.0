Received: from mx0a-003cac01.pphosted.com (mx0a-003cac01.pphosted.com [205.220.161.93])
 by mx.groups.io with SMTP id smtpd.web08.1679.1622159117236627502
 for <yocto@lists.yoctoproject.org>;
 Thu, 27 May 2021 16:45:17 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@keysight.com header.s=selector1 header.b=IeJVKmkN;
 spf=pass (domain: keysight.com, ip: 205.220.161.93, mailfrom: richard_allen@keysight.com)
Received: from pps.filterd (m0187213.ppops.net [127.0.0.1])
	by mx0b-003cac01.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id 14RNjGA7024232
	for <yocto@lists.yoctoproject.org>; Thu, 27 May 2021 16:45:16 -0700
Received: from nam11-dm6-obe.outbound.protection.outlook.com (mail-dm6nam11lp2173.outbound.protection.outlook.com [104.47.57.173])
	by mx0b-003cac01.pphosted.com with ESMTP id 38s5g4m7nh-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <yocto@lists.yoctoproject.org>; Thu, 27 May 2021 16:45:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JFwWvxTbja02NVjQD09g59Cxw9UTJRYykqeBOnOxVUeEoNQxYQI8wObLBo7Jh5qG0Lfl8dcM9myICm1w3sgKbqHnRXU6cSCF6xLUI1G/0kvEN1qSmNkc3BC5UmT6O7vzDWVE2YgVu1DOfoLcAwDGNKQ/hEE8Tr8YSeABMkcwqHlUE2CR/G/Qw2vWcSCVv8qBymFMWGGagHK/uDiqrmrB1WxXoCGBW6EV67Sdnf+UmsMaX1wU2f+yaF00JwqQlnIzs0SduS6fYrUHGeEKmskcUcCD1kt6iAGEkjhp7nc7jnMbzFtQepBek0984m4UGSzlns5jf2+F8YVVGGXuQ94C7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8jGjx0g6+e2ShkBeSpqr/5MYid3rv4545dvCgc6wgIg=;
 b=NJ41cLX+bLvPmma3hmh/K/lyCqEESko0gBzCsH6z1jZL+BQ0gEMf2hQCSxNN+/Ptb5pg9R/eUphEp7zeoQzLhfbsR068Qw3cPm9HgsR1Ka4ITCqTjOh0ki/a3g69ZiEFOOgmgr8EFq2y7MU8TwnRmIoA5HxpKfnm57FCZuUoRtNY04F8tcmYyDXTIMbFSkKaXhQztLdO9IW6nOQyEEq/2XDPYYVSdgLznTPtcOLSOki803sebr7KSaCsktC2DwWoNcUef1uSS9XEzfCC20HKOwvrgCwWzVMP5ncgkP8t7yglPXOfuIv6jqTW8qxiDVGM9pi6DQJlp/HaJ4T53YRw3w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=keysight.com; dmarc=pass action=none header.from=keysight.com;
 dkim=pass header.d=keysight.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=keysight.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8jGjx0g6+e2ShkBeSpqr/5MYid3rv4545dvCgc6wgIg=;
 b=IeJVKmkNtNew0UNPhEWoU09EIpmPi0PdBOGgVTymp+rfYHGxhwqH4MIPjkFnYYNoTymR10QTWyHquZb1KslXwK4h85pQPa0Vb1LdU7c8MwG9wJBMWyrpJuDUjdng/lrlmyGDb1tHL/vJREjmjDDmV1fUmA3fd1nMU6S+GHFWU1Y=
Received: from SA1PR17MB4835.namprd17.prod.outlook.com (2603:10b6:806:19e::7)
 by SA0PR17MB4393.namprd17.prod.outlook.com (2603:10b6:806:e8::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4173.22; Thu, 27 May
 2021 23:45:14 +0000
Received: from SA1PR17MB4835.namprd17.prod.outlook.com
 ([fe80::e487:60d:dc7:c9f8]) by SA1PR17MB4835.namprd17.prod.outlook.com
 ([fe80::e487:60d:dc7:c9f8%6]) with mapi id 15.20.4173.022; Thu, 27 May 2021
 23:45:14 +0000
From: "richard allen" <richard_allen@keysight.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: hardknott: open-embedded: kernel-fitimage.bblass, fiitmage_emit_section_boot_script bad
Thread-Topic: hardknott: open-embedded: kernel-fitimage.bblass,
 fiitmage_emit_section_boot_script bad
Thread-Index: AddTUgMvfahKbnodQuK07W8dUzv6gQ==
Date: Thu, 27 May 2021 23:45:14 +0000
Message-ID: 
 <SA1PR17MB4835CF9D756FD8CCF5CF674AF1239@SA1PR17MB4835.namprd17.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=keysight.com;
x-originating-ip: [4.16.62.188]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0b6ef415-2d45-405f-fd37-08d92169799a
x-ms-traffictypediagnostic: SA0PR17MB4393:
x-microsoft-antispam-prvs: 
 <SA0PR17MB43937F981F21B64736DE544EF1239@SA0PR17MB4393.namprd17.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 jIOgJb30EP2wonxKnWpMtiwcmldm9UuTZddVgaT/m/VFYy6e3xyfPXRZayOeMgFm3iDdpTRH8xervZV7mFhlW59sDGOfsLQdye3uMNz8bCcURdfauSnG4B/Fqv3K4pNqJE+cv0HU+5IxKhm2RgHqew9u5AbIpIvCjRBbG+zueY2eQ1mcBS7OAG1fIwRLpetP3ZNkxa+95epT8k0WwXp6VO0MwsPEyXO9UnnkSrv3jBBWb1GxuHMhkanYTUTUkA5TnebDe6/NV3sx2eUjdgkf5bMs3wtYG3gkqo/+GVDas42u+MeMJbgO/CuSZ0H0S2hZ5Bd82aynu18aYusqcdL7Fw/LvsRxleKAj8NBKPQgkNYwiM3QaIFSwNPTOQfXWyiVUSZBFk5BpyOKR7J9NPaAsoAYzBnHHBEtYKpjSRUngaaMhrfVb5C7SA3MK5zZIczV87151oGDcJsoUY4pUNFwJo11c2np4xlHaiDVuK444yFwNqUATT5UWWD3t0VMNkR+7QDrJzXHstrvrMbEcYm+or+UpOuMJapq2KE9uCN5MwvR+sKIHUVf9GYH7qljfx6/afhamqW1iYqCTj2S7mgHCNT2+g3hlzRGzDBB69JRyFQ=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SA1PR17MB4835.namprd17.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(376002)(346002)(366004)(39850400004)(396003)(136003)(186003)(86362001)(478600001)(55016002)(83380400001)(66446008)(66556008)(6916009)(66946007)(66476007)(64756008)(76116006)(52536014)(8676002)(6506007)(38100700002)(122000001)(33656002)(71200400001)(8936002)(9686003)(2906002)(316002)(7696005)(558084003)(5660300002)(26005);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata: 
 =?us-ascii?Q?mY7pcWd54iq0EkFeA8g1fQRFGRQNBPyn/Ei+Tz/amMVMWEWDrhEaqefExnF1?=
 =?us-ascii?Q?8elMOerIkIC5VCs0UxAcPE2OJWaJa9Sy8f2CoL9p+ylIG0mv92xdR2fKbIrX?=
 =?us-ascii?Q?pYLkipPXBeRfjf4WEmOUkBIICGGyRGYfsse6IbUr9TC4OhB12mZGY7zA8n3u?=
 =?us-ascii?Q?GiJn2pbNMpOxofpZhp0Be9sdJVUTZsz+WBDEOOtHZ2cqEUyFkCZ7R4mYZZyC?=
 =?us-ascii?Q?sXdSNZ/DCskJqQ16TjSBGCn48+UadnsB6mP3Vwzg5hxBO+LhZYHleVW/22lC?=
 =?us-ascii?Q?QJK1XJPFTDs7JCPOHcWSPULpnCR2mmRM6Ku0tfaDQ1lhKy3h3sQrtUUPG2Ss?=
 =?us-ascii?Q?VCUzz9enVQ2iJU9ooFOBDkff6m/JDA1J59LTLFbSHokQuZJJTvbI12neXxRD?=
 =?us-ascii?Q?aElA/ZHykPavhxx53w5V9W+vf91m+PZVQDLLQIPddt9JN2ieRAFwY98dYo21?=
 =?us-ascii?Q?ToK9dX4BjZSkbi8+avn/kgG9FSklPoD4ynkjooxro3/LsyFo4k4+2Ze1yXlC?=
 =?us-ascii?Q?C8cQ/FK1sze3uuNhZ3GqtVstbL9MZ8/Rv89Txfru7YxEjUwCeeP0j4AwXakx?=
 =?us-ascii?Q?reArWs8ehIV1KWQELJfgihnqHhDzPNrX/FobzOB69ePkKpJ8jF+j5cg0etoj?=
 =?us-ascii?Q?fv0e9G28bH3L83PJrYMA8yk87cVNMl1OjQ6/gF4qvhqMPQEI/wBWAJaEkLnc?=
 =?us-ascii?Q?X1p7BzK7kFuk3cJK8LWeTjayyGa6mXMFYQ+FzLWqohC0aE5bFn4B7IP7OAy/?=
 =?us-ascii?Q?Q20v9FzyYL4bls3IeJV8jM+TcCsz28HRwmkfVRE0Cp7DnqWC9sH9wPgINVpj?=
 =?us-ascii?Q?lXvcD8Dfvh8UPFVv8DFu9wQVxODotgz/RXu8CEqSeeuwotV/txdkKPSIP07L?=
 =?us-ascii?Q?FJ9wUy5WFP0vQ7r6LV0tBZriVj4o7Gi6j5XGuc5U1TkRm7SovCrSi+IruR+u?=
 =?us-ascii?Q?HKbW2zT4yZNidyU1QDTjO/vbgtA36xReuG/bn3h6wIE2IG7IUmgi6sKC5sVM?=
 =?us-ascii?Q?xLLIWdlVgdxpGRmW7RvndSgy6rJWWnCAY4/YPhNMKrnLSxik8X2RMRnuNd1L?=
 =?us-ascii?Q?SXAkY6xFqX+TIBnnYeioIuqo4MZND8rPO+4r9kQVL4FXpEHkScMOpVZ9E6eL?=
 =?us-ascii?Q?8u2DU0Pu7xCFv1fY4XWQA1LZQuzYljynMiK1Ggni7ghfQAWMEoyHaRP3BH/o?=
 =?us-ascii?Q?AeRWtoHTUGZw6Z1ivPDyKOtczb25dE2tD/J2DeA97PkvxLcgLyNUkcbSJJz4?=
 =?us-ascii?Q?ErUOSc1WptRiByJRo6pMgPOvx5HDokRuOMoXV44/Vvzn7n9ihK/Y3pY7S9G7?=
 =?us-ascii?Q?Nqk=3D?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: keysight.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SA1PR17MB4835.namprd17.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0b6ef415-2d45-405f-fd37-08d92169799a
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 May 2021 23:45:14.3346
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 63545f27-3232-4d74-a44d-cdd457063402
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: oMJsI7x7e+YclXV+WIZZWPAffu/KnNiPIq+SvoSzBoSoEEfdr0lIVBJnj2LR8C8U4nz8X1hAZYuWtxczwWKd4bEH01MH3aJenxBvvSKaE1E=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR17MB4393
X-Proofpoint-GUID: UEgIICY1uP0tQJMYC5PPMH8x6ayXlS3x
X-Proofpoint-ORIG-GUID: UEgIICY1uP0tQJMYC5PPMH8x6ayXlS3x
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.391,18.0.761
 definitions=2021-05-27_13:2021-05-27,2021-05-27 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0 mlxscore=0
 lowpriorityscore=0 clxscore=1015 malwarescore=0 suspectscore=0
 adultscore=0 impostorscore=0 spamscore=0 bulkscore=0 priorityscore=1501
 mlxlogscore=744 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2104190000 definitions=main-2105270153
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_SA1PR17MB4835CF9D756FD8CCF5CF674AF1239SA1PR17MB4835namp_"

--_000_SA1PR17MB4835CF9D756FD8CCF5CF674AF1239SA1PR17MB4835namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Been trying added a uboot script to my fitImage ( in hardknott)
Looks like the routine fiitmage_emit_section_boot_scrip Has not updated it =
syntax for node name or hash node
Still using'@' instead of '-'
Is this being looked at?
Thanks
Richard Allen




--_000_SA1PR17MB4835CF9D756FD8CCF5CF674AF1239SA1PR17MB4835namp_
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
	{margin:0in;
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
<p class=3D"MsoNormal">Been trying added a uboot script to my fitImage ( in=
 hardknott)<o:p></o:p></p>
<p class=3D"MsoNormal">Looks like the routine fiitmage_emit_section_boot_sc=
rip Has not updated it syntax for node name or hash node<o:p></o:p></p>
<p class=3D"MsoNormal">Still using&#8217;@&#8217; instead of &#8216;-&#8216=
;&nbsp; <o:p></o:p></p>
<p class=3D"MsoNormal">Is this being looked at?<o:p></o:p></p>
<p class=3D"MsoNormal">Thanks<o:p></o:p></p>
<p class=3D"MsoNormal">Richard Allen<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_SA1PR17MB4835CF9D756FD8CCF5CF674AF1239SA1PR17MB4835namp_--
