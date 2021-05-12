Received: from mx0a-00154904.pphosted.com (mx0a-00154904.pphosted.com [148.163.133.20])
 by mx.groups.io with SMTP id smtpd.web10.2181.1620845325010501113
 for <yocto@lists.yoctoproject.org>;
 Wed, 12 May 2021 11:48:45 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@dell.com header.s=smtpout1 header.b=ao1yaiCo;
 spf=pass (domain: dell.com, ip: 148.163.133.20, mailfrom: george.kraft@dell.com)
Received: from pps.filterd (m0170390.ppops.net [127.0.0.1])
	by mx0a-00154904.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id 14CIkwaA014446
	for <yocto@lists.yoctoproject.org>; Wed, 12 May 2021 14:48:44 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dell.com; h=from : to : subject :
 date : message-id : references : in-reply-to : content-type :
 mime-version; s=smtpout1; bh=Qbb6uvIU0/Bt93s93gc4KiVloSaQHdNb+NuV9/MtT58=;
 b=ao1yaiCo+OexBqz5O6p3kRVH4hfGrPWaX5M09qHcVd8Ix0orCi7kGj51CRSc5H2Rpcco
 hGSIivoYweNBfao4NKgqkTjPFHMy9YHXbUuH0+sq9JcfNQ1BBmAB4e8hwErk2bxe3VWf
 Fe1hzH6IR94XaSM856Dis99OG+olCyhCVoewpxkcLo1dawGK1zRAixphoBqSxTT+YJw9
 J7CaQ0RfPGGmE4WEtyFahEDlZKr9+UzW7CDLShalXVlAp6+J94rrFcBTppDFbjRSqIb3
 F3vP3QDz01fhpYQaQL976dWs9zMrIm0YgZMWvQjj6FVarKCeZawD7bnDg0zmWHU5iCjV UA== 
Received: from mx0a-00154901.pphosted.com (mx0b-00154901.pphosted.com [67.231.157.37])
	by mx0a-00154904.pphosted.com with ESMTP id 38gat7tb9p-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <yocto@lists.yoctoproject.org>; Wed, 12 May 2021 14:48:44 -0400
Received: from pps.filterd (m0089484.ppops.net [127.0.0.1])
	by mx0b-00154901.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id 14CIjqgj122033
	for <yocto@lists.yoctoproject.org>; Wed, 12 May 2021 14:48:43 -0400
Received: from nam11-bn8-obe.outbound.protection.outlook.com (mail-bn8nam11lp2170.outbound.protection.outlook.com [104.47.58.170])
	by mx0b-00154901.pphosted.com with ESMTP id 38ga00a1yf-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK)
	for <yocto@lists.yoctoproject.org>; Wed, 12 May 2021 14:48:43 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IlK8o7jTHMb14PdPQStTTJQtR7PicJzJyKKiNn+rzQuwvUwqoB2NPtYYo0+Y5Ci9GT+4jWHu5pC47T1Co92VPbj8x2jptqo6DYO0i+nysUcuLY3qMgbzkeBytYATBUjqvYhob5tdp2bPuFV5gBLPNRnGXfPLLjmDtGMwMrWCTn/gsWEu3bxYzmrdSabryuRvyc7Rl7BPhtV0tE8kQdYRaQn6o6KtrLLW3qD7EONyZ2P7jsHEs0PE9IESd7TwuOLIES5X6z++5A2ITREfB0f/evioNeKTj+xyvT4NJ62D0CAem0PvXh53C3HUHWhT4REJknVbRoYv53fPRDGeXA/ZaQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Qbb6uvIU0/Bt93s93gc4KiVloSaQHdNb+NuV9/MtT58=;
 b=cix5xDi6aovT6OdFQms0mndAMVJlR3deSTsgcy5m/G99nl0O8gXM3Ofb3It0MFY6icZfK4NncnauwSn9d1JdWpun5A4cnMbenghljUeFUe45h9/6PqqAg6BNIRGD7OhMC5K/HIgMTaTUu3IIRi26i4l1Hf1SXrGKr2vCXlJtRBknV94OzVwyWolLzxIiBFcTAY6GHzCVPjfJr9wXcVLyrS3D6bwCdFSWxRVIQiQyp1J7KkYsyflv1UyaRRUgB1o99qmIK5TWo5HXZEo0P8pMh2jroNDD3FD/Ca7PnU6iQL/Wx6s+LYZG+AH1tQEUbGLoYETOmFaKyoe2E0+iYGNp4g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dell.com; dmarc=pass action=none header.from=dell.com;
 dkim=pass header.d=dell.com; arc=none
Received: from DM5PR19MB0971.namprd19.prod.outlook.com (2603:10b6:3:28::8) by
 DS7PR19MB4423.namprd19.prod.outlook.com (2603:10b6:5:2c3::20) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4108.25; Wed, 12 May 2021 18:48:41 +0000
Received: from DM5PR19MB0971.namprd19.prod.outlook.com
 ([fe80::9478:418c:ef4:202f]) by DM5PR19MB0971.namprd19.prod.outlook.com
 ([fe80::9478:418c:ef4:202f%7]) with mapi id 15.20.4129.025; Wed, 12 May 2021
 18:48:41 +0000
From: "Kraft, George" <George.Kraft@Dell.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: FW: Yocto Distro Testing Plan
Thread-Topic: Yocto Distro Testing Plan
Thread-Index: AddHMvc6doGqUF1YQeqqZLnu9jcAawAK/Oyw
Date: Wed, 12 May 2021 18:48:41 +0000
Message-ID: 
 <DM5PR19MB097158BF13A3CC6221C6F0C59C529@DM5PR19MB0971.namprd19.prod.outlook.com>
References: 
 <DM5PR19MB09712B955360C0F22468EE999C529@DM5PR19MB0971.namprd19.prod.outlook.com>
In-Reply-To: 
 <DM5PR19MB09712B955360C0F22468EE999C529@DM5PR19MB0971.namprd19.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_Enabled=True;
 MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_SiteId=945c199a-83a2-4e80-9f8c-5a91be5752dd;
 MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_Owner=George_Kraft@Dell.com;
 MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_SetDate=2021-05-12T13:33:14.1277245Z;
 MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_Name=External Public;
 MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_Application=Microsoft Azure
 Information Protection;
 MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_ActionId=b8dfbdb3-f4c0-4b8f-bdb4-b4a447c3558e;
 MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_Extended_MSFT_Method=Manual
authentication-results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=Dell.com;
x-originating-ip: [172.108.175.201]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 76c745f0-eb6f-4ec0-cf5a-08d915769032
x-ms-traffictypediagnostic: DS7PR19MB4423:
x-microsoft-antispam-prvs: 
 <DS7PR19MB4423C5CF9EDD98A0DFF13A989C529@DS7PR19MB4423.namprd19.prod.outlook.com>
x-exotenant: 2khUwGVqB6N9v58KS13ncyUmMJd8q4
x-ms-oob-tlc-oobclassifiers: OLM:5236;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 3bKGKx3tQ4eZP2r9Ns1vEGHmrvVtFZOfmSw4qqRcOV9D6p3ZDGLu2u/DicXXQYG2l46z+FoLvZnx4eCEKDd/1nd3EPs7RfPPIV0Cx0JV6Leu2dg1OiXixAlISQlDlxaJa0NYJE0jADBDGvtWnsSmO1cc9eKm7TQaDRzSXQ+M0hQ7Soe4YsGhH27eJf8uJ3w4SZG8PIMqmQS5Vbh66yRc7lVLigIhwPOFexUAMoySIffVcPkUmroQlC9RBsEb9TCs06EMvVmoZRit+McVCDAKUdeGgXM4qKFH1OE88ubsICFAhB8mr5t5Jg7mBLQv8ICaTbTAo0nQpJi9JV8tgogC5Iif00sR2yxpFU4e6P/Ew2UjND06h+GQnv5tRftjHkEpiZqh8Y4hZRwO+Mb0rQbgjw+cHP9i1ukD8hNQd08vqQU61VLGcqlpQI7694BqL5h4nUWTqUc5kAVwhHqSAekgf26sqKG0EZC5Qux+fTg0C+tWzxEf69q3lz4V5HcCs/zih942IQRFsdSSFW2H/THnmHWZxgntJRdAUoF0ur2aiA5KvmPEO1xYievS1p0RIng4BPAhIpdwTJlfbBMUPYpeBVjLn58QyR8XnHVCfVy0I9buMaY7YA2DtoPXTtJpN6zWWXz6rHcvWxfX/5qqMtopLmM40RcM694maTSl/EATPF6kqEj9ChP+HgbIB9lmneoD
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM5PR19MB0971.namprd19.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(346002)(39860400002)(396003)(376002)(136003)(366004)(316002)(786003)(9686003)(8676002)(5660300002)(186003)(2940100002)(66946007)(53546011)(7696005)(33656002)(71200400001)(38100700002)(26005)(122000001)(4744005)(76116006)(6506007)(478600001)(21615005)(6916009)(86362001)(2906002)(166002)(66446008)(66476007)(52536014)(8936002)(66556008)(64756008)(55016002);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata: 
 =?us-ascii?Q?E/JHXZC1MIBTlefL4ZbRsm0s4JSNr8YXdCp+KA3HoCZywZBQt3KPAOg2Ozty?=
 =?us-ascii?Q?W96ItFCWyRNW9BoUIr2CWFn2SPgDVPBvjnosFsOu9ry0vF9kSZkkyEpk2FNC?=
 =?us-ascii?Q?XFpe/mU1e4YyFx8hOhhoOZHz9zbHpifeRzbLYTyKUzw/imEuoo8skMhGtCL4?=
 =?us-ascii?Q?g4PVNjPymsLmjDLYq/DWzGEmdEEMTVmDFCdSemB17RFZnoF59y/5W9VSLEBj?=
 =?us-ascii?Q?igLWsy2sb6hUSGH47cA/Jg4TayOQc3fFdQw7JC5UScZXDyaxsuTZ/thjr/MT?=
 =?us-ascii?Q?DdXG/YHVa9SVHlFh0329WsnvuSda8Vsn5ihM7YRLki/3v6ZfvdxRDykggoK6?=
 =?us-ascii?Q?Oevbwv77ouMRAe4Ow8FxSQihNWk5P/uo6YiPGq25V3oHkYWvOAKktm/L3oQM?=
 =?us-ascii?Q?A2KwhR/68XYCCe1LZW/wAPb8+alQNt7F/PpiDetouc+nImnFiQwZSs3/AlwZ?=
 =?us-ascii?Q?jp47V1s7OCfz/hHe3CDHEdfVR6eu9FjmPzeAy3fI+O+dVKfq2I+yzQ1+oFpV?=
 =?us-ascii?Q?11BW2vw97zkG9Fras+oEvjaZGS4cn4fKtM+ZiYUmUEu4zyJOKsl3Lvj3B0TX?=
 =?us-ascii?Q?KCMez2h0vbbanPV7fUMbg81aDVdLahZ3o6T6qVt2PlaFo9CaR01u0qqPJxFR?=
 =?us-ascii?Q?w/U7rLv6ilJltNVXFR8CIZOXXfgGq3dAPB4ExExD6IuuAIlXJg92KQ70ZeLR?=
 =?us-ascii?Q?j7M/iOSsDFJZgB0nVZIjAREQRKSx5T2g1hxgAISHkdSDyGjBPvuD8eZbvpBL?=
 =?us-ascii?Q?RiPKhB2YA6erK20xGECgjHf7a9NexzEkSkaYFA2Hm6UQAfV2IUHjN6N7jeNl?=
 =?us-ascii?Q?Q50ZbOnsJ6YuozJc4uxVBvv38FuQpnw1QRKjkgtK1SRRpCilUdHmCym0weVm?=
 =?us-ascii?Q?uy/h/06xFqoJ49fA4nKQwoKZScKkwgRmGYJgxmJp34Ty1Nek0sCygJQEHWka?=
 =?us-ascii?Q?+6jH5Te+qrrctH6o4kxlLbEOUSMB1YtuVUarZ5wQ2RwWJPadXc+uMx/1M32m?=
 =?us-ascii?Q?n4GzRHmcncd6p82xpk14mprC8taRaMaFvqIRAlfcMpYtEQ8+VTXHsukS/Phu?=
 =?us-ascii?Q?quPk5YzVikNODTtBaVNb6+MVjbWuo2qLVuXvii1w8JHMtwLnfEzEaAiBdbqC?=
 =?us-ascii?Q?KNBin9U9MtdglS6q56kEECNXobkQLzKQqiQiOjtwbk1PVnww6UtA6n5ahVrO?=
 =?us-ascii?Q?bIKL/o3uWHoqV2lIWEw/ZxBJuNzP0L8SOMDOYt7jWLmK2Civ1eeXgrrpEpVG?=
 =?us-ascii?Q?YQ31V7TO3TcxvvufIshtsDqoXTH5vIc1mo0HWFTofKF4edWXPp3cBMbjDm7u?=
 =?us-ascii?Q?ODPJ6zYH4joDLeTYJVbcn8C1?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: Dell.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM5PR19MB0971.namprd19.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 76c745f0-eb6f-4ec0-cf5a-08d915769032
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 May 2021 18:48:41.8349
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 945c199a-83a2-4e80-9f8c-5a91be5752dd
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 190pJcoet9JP9EE+WyYO8a9fCqlryw4eujn55AbtT7gkJNeATSO3tlTXELBT4TUtcz+JdfarhAdgqVhgK0iMOQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR19MB4423
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.391,18.0.761
 definitions=2021-05-12_09:2021-05-12,2021-05-12 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 clxscore=1011 malwarescore=0 mlxscore=0 adultscore=0 mlxlogscore=999
 suspectscore=0 impostorscore=0 spamscore=0 phishscore=0 bulkscore=0
 priorityscore=1501 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2104190000 definitions=main-2105120121
X-Proofpoint-ORIG-GUID: ubDRMlP6QIBhEW9I7yZZnJElemFWULtU
X-Proofpoint-GUID: ubDRMlP6QIBhEW9I7yZZnJElemFWULtU
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999 spamscore=0
 malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 adultscore=0
 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2104190000 definitions=main-2105120121
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_DM5PR19MB097158BF13A3CC6221C6F0C59C529DM5PR19MB0971namp_"

--_000_DM5PR19MB097158BF13A3CC6221C6F0C59C529DM5PR19MB0971namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Could someone point me to a wiki on how yocto testing/QA/conformance is don=
e?   The Distro Testing Plan<https://wiki.yoctoproject.org/wiki/Distro_Test=
ing_Plan#QA_Responsible> wiki seems outdated, and my inquiry to Jose bounce=
d.

Thanks,

George (gk4)

From: Kraft, George
Sent: Wednesday, May 12, 2021 8:34 AM
To: jose.XXXX
Subject: Yocto Distro Testing Plan

Jose,

I've been reading the Distro Testing Plan<https://wiki.yoctoproject.org/wik=
i/Distro_Testing_Plan#QA_Responsible>, and I tried following the instructio=
ns to git clone git.yoctoproject.org/git/yocto-autobuilder, but that repo i=
s empty with just a README.   Per the README, when I tried to git clone yoc=
to-autobuilder2 or yocto-autobuilder-helper then the connections timed out =
for each.

Can you tell me what the state of testing is for Yocto?

Thanks,

George Kraft<mailto:George_Kraft@dell.com>, P.E.<https://pels.texas.gov/sof=
tware.html>
Distinguished Member Technical Staff<https://inside.dell.com/videos/41413>
Dell EMC, ISG Embedded Systems Engineering


--_000_DM5PR19MB097158BF13A3CC6221C6F0C59C529DM5PR19MB0971namp_
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
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
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
<p class=3D"MsoNormal">Could someone point me to a wiki on how yocto testin=
g/QA/conformance is done?&nbsp;&nbsp; The
<a href=3D"https://wiki.yoctoproject.org/wiki/Distro_Testing_Plan#QA_Respon=
sible">Distro Testing Plan</a> wiki seems outdated, and my inquiry to Jose =
bounced.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<p class=3D"MsoNormal">George (gk4)<o:p></o:p></p>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b>From:</b> Kraft, George <br>
<b>Sent:</b> Wednesday, May 12, 2021 8:34 AM<br>
<b>To:</b> jose.XXXX<br>
<b>Subject:</b> Yocto Distro Testing Plan<o:p></o:p></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Jose,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I&#8217;ve been reading the <a href=3D"https://wiki.=
yoctoproject.org/wiki/Distro_Testing_Plan#QA_Responsible">
Distro Testing Plan</a>, and I tried following the instructions to git clon=
e git.yoctoproject.org/git/yocto-autobuilder, but that repo is empty with j=
ust a README.&nbsp;&nbsp; Per the README, when I tried to git clone yocto-a=
utobuilder2 or yocto-autobuilder-helper then
 the connections timed out for each.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Can you tell me what the state of testing is for Yoc=
to?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><b><a href=3D"mailto:George_Kraft@dell.com"><span st=
yle=3D"text-decoration:none">George Kraft</span></a>,
<a href=3D"https://pels.texas.gov/software.html"><span style=3D"text-decora=
tion:none">P.E.</span></a><o:p></o:p></b></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:8.0pt;font-family:&quot;=
Arial&quot;,sans-serif;color:#538135"><a href=3D"https://inside.dell.com/vi=
deos/41413"><span style=3D"color:#538135;text-decoration:none">Distinguishe=
d Member Technical Staff</span></a></span><span style=3D"color:#538135"><o:=
p></o:p></span></b></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:8.0pt;font-family:&quot;=
Arial&quot;,sans-serif;color:#007CB9">Dell
</span></b><b><span style=3D"font-size:8.0pt;font-family:&quot;Arial&quot;,=
sans-serif;color:gray">EMC</span></b><span style=3D"font-size:8.0pt;font-fa=
mily:&quot;Arial&quot;,sans-serif;color:black">,</span><span style=3D"font-=
size:8.0pt;font-family:&quot;Arial&quot;,sans-serif;color:#1F497D">
</span><b><span style=3D"font-size:8.0pt;font-family:&quot;Arial&quot;,sans=
-serif">ISG Embedded Systems Engineering</span></b><span style=3D"font-size=
:8.0pt;font-family:&quot;Arial&quot;,sans-serif"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_DM5PR19MB097158BF13A3CC6221C6F0C59C529DM5PR19MB0971namp_--
