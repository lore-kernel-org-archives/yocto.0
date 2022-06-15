Return-Path: <fanzhe.lyu@microsoft.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D2577C43334
	for <webhook@archiver.kernel.org>; Wed, 15 Jun 2022 17:05:37 +0000 (UTC)
Received: from na01-obe.outbound.protection.outlook.com
 (na01-obe.outbound.protection.outlook.com [52.101.64.20])
 by mx.groups.io with SMTP id smtpd.web08.7490.1655312715786663124
 for <yocto@lists.yoctoproject.org>;
 Wed, 15 Jun 2022 10:05:16 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@microsoft.com header.s=selector2 header.b=HZdUdh+V;
 spf=pass (domain: microsoft.com, ip: 52.101.64.20,
 mailfrom: fanzhe.lyu@microsoft.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LgqzuJyqRC5qeZYdHWwqtMPMjDxVsc1Y5nv3uV+IQjSrhF1jEgfhSIerhRwz1ZwBbzdLOFEVL1RYsyNGOoGa4/MZSDCZ+Dwoswob0pAlACLbLrc4lsu8EoE9EVujfocrY9BvivEmIfwoOmFrz8+AywSHtbM/xz8I+RZnM15ZLERI5nc4zrckhabL1r2ixgw02SGpCjSTXqzE6J1rjeZHoZ6hq3IEv1d3NyrlEbQVHVHMMAtzxhUQ6X5bNg8rGJe3aKtB9jBpEMNxzNOzygYBTYs7sZMVRvVyqJXfLT3JBGT0cT6PS3mx2Q9++TufNYeShYxgfai2NRSkk51oRX2yDQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qOo3jmg7INKv83DOajMGgbIYJAV2j5muERVzgB012D0=;
 b=gSZS/IZknPHeqbIxBovMXzEnlAAB0tpoVYQMz+0Tnhkk79tzUR+mi4MfMgzwYPlQkjZ2RDNoX9DB1cP46vn+OSaGtVTSc7W5hu+RA36HYKlySadlOEdKAR0k3bwvuIx5kZeb9/PmK39vjMx8YghQV7OuCd+X56/6elZ/T8ycXqqORWOTSmpUaDex8nbsuLlUvz0Sh7vktAWYEc47Gy5CRsa5zVjK/HSQTAVL9ukTRGyMu7q1QgKiKntdU7VDHp4ap9/P/NRYMCEMB7fqXv4ljn5pxA62Vzs231Byct6+bzSrZssJq2rxJjB+gf/h90Gglc1VTkqZOH1iJos+jWtbiA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microsoft.com; dmarc=pass action=none
 header.from=microsoft.com; dkim=pass header.d=microsoft.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qOo3jmg7INKv83DOajMGgbIYJAV2j5muERVzgB012D0=;
 b=HZdUdh+V2iw94xnEdTOkMYjRqKcIvJ74SG1/5esUVXYd+ltAw/iwTRHiJbHg/cPirbkw8UHDAk48EVLZYhFeEDqPm3nOPbHDkNlS6aOFPzlobrVfxVMqgSI9lVRp1+cjmrwXXlrCRWfyyWP2ROEE1/VwIerrvnQfZlo7kuV0Yfw=
Received: from DM4PR21MB3515.namprd21.prod.outlook.com (2603:10b6:8:a1::20) by
 MN0PR21MB3144.namprd21.prod.outlook.com (2603:10b6:208:378::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5373.8; Wed, 15 Jun
 2022 17:05:12 +0000
Received: from DM4PR21MB3515.namprd21.prod.outlook.com
 ([fe80::409a:4750:8e69:96f1]) by DM4PR21MB3515.namprd21.prod.outlook.com
 ([fe80::409a:4750:8e69:96f1%5]) with mapi id 15.20.5373.008; Wed, 15 Jun 2022
 17:05:12 +0000
From: Fanzhe Lyu <Fanzhe.Lyu@microsoft.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
CC: "bruce.ashfield@gmail.com" <bruce.ashfield@gmail.com>,
	"alhe@linux.microsoft.com" <alhe@linux.microsoft.com>
Subject: Building out-of-tree kernel module with yocto SDK
Thread-Topic: Building out-of-tree kernel module with yocto SDK
Thread-Index: AQHYgEiFe4CN20GJrEqB8+1bS1SGbA==
Date: Wed, 15 Jun 2022 17:05:12 +0000
Message-ID: 
 <DM4PR21MB351589CEACD6597F2BB77B1091AD9@DM4PR21MB3515.namprd21.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Enabled=True;MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_SiteId=72f988bf-86f1-41af-91ab-2d7cd011db47;MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_SetDate=2022-06-14T23:51:21.302Z;MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Name=General;MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_ContentBits=0;MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Method=Standard;
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=microsoft.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b0c5ce5a-15e1-4a1d-d553-08da4ef135c6
x-ms-traffictypediagnostic: MN0PR21MB3144:EE_
x-microsoft-antispam-prvs: 
 <MN0PR21MB3144AE64F0FE1916AE0FB9E391AD9@MN0PR21MB3144.namprd21.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 6urA15wTW1LqmyMtRhjw+uS1v5dgsKNPdJFa6qv686KeK5icCgIYSIwFPdV4YSqOWi/ONQ9CbQddbqPHgvL51LRpb6Y1NR6ZrFl2Pwtll4n84wOKkPoM/TFAEcHAKDeiX8W3WR4ul2NXOTLhOUSWm0L7OKpfFag9hh+cxlH1htwlVzWl7pOw+tVv3RFQk8OmlcColZKLnOxktgO+DkMy//zjdXsDpS25FqNmwVJQsghrdqcXukb0RqUCpHHun0KpFcMRSR+gXB3gF5WpPyyawOmQkUoZyuhPbBf9aSkwZEs1A73ax7P1xW+8ldEte5umln+0MH659kzpfmlATry6oMTQgreUvXJDVZw2nW3Pq2TxT9K1t4lLom0pqIWCnaa43nF8zzRNuLLtwlZNPjvxOCOJ1QGy0cq04AsCjbdQ7EDEYzDIw/QUfWclazZ6Fg7F6ZWDgYj1Jrx6tN+Hf8BvPNQR2K+HPvHot/Ui5OdMNXeUxDvIypksOpzoRpKWuhzcQ89az/ZvlFVzgv7N3ypRtzJvnrUKXVQ0AgSUtqSerjVaLOEgA3cp7EIqgQLrZsO1T1qN74z9PMIedLhxM9bJBoC0yPOYi7LV1AEpbFjk15hW51UgmRw2J56otS0F++dIKLPQEnPcddiQpOx8OrXbx8VoUzd7Nwli5xVDcVjgK/5rhfUfxtIxEDWBQCq5X6Vci1ozjqk6tKZqP8rLGAwi1V9TITC1Z0Z2nNgq9zPNmKRDNhU582A8zYCH8Bd/NJY4
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM4PR21MB3515.namprd21.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(366004)(451199009)(82960400001)(71200400001)(2906002)(86362001)(76116006)(10290500003)(508600001)(107886003)(316002)(82950400001)(66476007)(6916009)(64756008)(6506007)(66946007)(66556008)(66446008)(38070700005)(122000001)(5660300002)(8676002)(4326008)(54906003)(7696005)(186003)(52536014)(55016003)(38100700002)(8936002)(9326002)(33656002)(9686003)(8990500004)(4744005);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?x6Yla/TekFzZiLAZJOdfABcSIJmhIXRbvpP0QDQXZqNQiJjLtDGa0E90PB3d?=
 =?us-ascii?Q?BV0IvTPo4EUah95QsahuE38xs5FZIRzeJSKVwXg1RWp50xqqTzkAaErlrTBk?=
 =?us-ascii?Q?qETV7Y2ciVLknu4DZ+uxYu3pz17Lm2fJTAwgP3HwfQNFur5NhC8YnnPhSR0X?=
 =?us-ascii?Q?8NC7pt7vwmmo3RQmAScwZtN0ZdpyQlYxeBtR77SuNnSyMxpj4WDs0gXDtt+Y?=
 =?us-ascii?Q?BFGPGnzuit2KLNTnoprzS1IBPlVw+B9UlS3M9f41eP5x4Z2YCxZiA69F2kpE?=
 =?us-ascii?Q?uSPcyJg8T7hm9+A1dqYz5KTCFjofLHXgTv6vCiwY0uc2fBMpb1EEgRrivYXT?=
 =?us-ascii?Q?ENN/l/0hmEz/Tyzbkw3XLFy8JHXGYW+sUGapJ0/O695P6qpo32Gm+5mT6qCL?=
 =?us-ascii?Q?m3KOjeY+hHOPtQhZ9qigtTkeGlaJpbS7vpt2XPnx5mzk0rsr17yFaiI/uvqO?=
 =?us-ascii?Q?P3bxVriGbc1ppjMZjnumjBt9WCOEtXAzJD+QMNp6RNk1co92KmtYbkqapNg0?=
 =?us-ascii?Q?zvpuSWvn77W/QS0EAG0/BJRSUMORUdzd6IIQbfj70ok53kTdUS6qkFUkbURh?=
 =?us-ascii?Q?2Ak5tWTI1TjFlmhjiVPGxCrTFcXK51jhWLoqWMUkvw2I2JIdBZdG+1Eqv8Bq?=
 =?us-ascii?Q?MiRYkwbY6ak21ato4rsO3uof2N3J6WBOHtKRTri8+3NdbHQwLhvguDYmEJnc?=
 =?us-ascii?Q?xv2GMK1FxCSQ50FkFaz7EV0WSoJBiLErvIRAPXtHPNkLGmv+9G0seyYvOXFC?=
 =?us-ascii?Q?nx1BwCBFLEHp0sD8rsjxGIkocE8v6ECzbusAgTN+zbefH4KbwvbPFL1jChaC?=
 =?us-ascii?Q?EiyveHZyxBl85dwgG2c1bfv5Ik43qmj26kBwZCQhk5ubbe+1qGaKcdQL/lSx?=
 =?us-ascii?Q?pdCw4PBsfJx7pzo051hKTdtfLyFAU/HsOTb+20WedOXcJivjKz3AsLvKqhKf?=
 =?us-ascii?Q?1knycotoWxmvw1DY0KlTLl6UWzAxbQxBjJ2poJzpidnUehitEm7czQXE8PlG?=
 =?us-ascii?Q?m7gDR8qTxyZkkhedxp0uCWDkH5S990P7t10O0S4rV/3YfIeh3alw10KQNNwa?=
 =?us-ascii?Q?XuncqeZh43cGztk6kRtREeey3HagW+dKkddwyij4ClUpHUDm/x1KLBhsypf+?=
 =?us-ascii?Q?jkQMPyrXqqjyzrLKzk5VUzsgxG3Km8k8ZDzII+WfIl3om8uAFJr3130JpBLN?=
 =?us-ascii?Q?b4RWufWgyxm64234Vzc6TT8tDOKzcrkuJYsGwfkn1sJEUH/s5K7Ow60ADIJU?=
 =?us-ascii?Q?e7ufNpYGxyiH6QoWMrdSGOtkmSSHGqTYSGtpQ0EcVPE4MRIY6tWXdtjq7RRs?=
 =?us-ascii?Q?I7rYT0n/u7zp5xgSO8tSftX5VDYoOPYG4h/WnSZiBarP8A6lRegQP6vfdlMh?=
 =?us-ascii?Q?/Y/aA/c+jyy40SAoiiLn/DJiV1xm6nEGSsvzd2YiZCv7z5JSZQAtsw7WFp//?=
 =?us-ascii?Q?Ja7g7uwhKDDgH9fvIcpIY/d7DdQX9ZxH9sACflt4zV7AnkDDPhEi4/kA/nIu?=
 =?us-ascii?Q?Iaq+y8yRUje+s56vAghwqoVtOz1IT/PMWS/SML86K/KcnUxUEED3J5sm231S?=
 =?us-ascii?Q?bZcWZ31k1gQYul/lRhJzDdyglSbfhwbgXJwbDb9nkvi6OvCHJtYgNlk8Lz/q?=
 =?us-ascii?Q?lPS3fajjKft58TEVR/i4linJuDio0hCp5VN6gp28POGjuW9kxynBm+oGTXVD?=
 =?us-ascii?Q?8/FjExCvVcvZ/YZlv+oT0AVoYsXZ+ZtRizpERxtQd0MmIaos5yp4ljCNM+cL?=
 =?us-ascii?Q?LeE+rPU2Rw=3D=3D?=
Content-Type: multipart/alternative;
	boundary="_000_DM4PR21MB351589CEACD6597F2BB77B1091AD9DM4PR21MB3515namp_"
MIME-Version: 1.0
X-OriginatorOrg: microsoft.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR21MB3515.namprd21.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 b0c5ce5a-15e1-4a1d-d553-08da4ef135c6
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Jun 2022 17:05:12.2029
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 72f988bf-86f1-41af-91ab-2d7cd011db47
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 
 xgUqGq9lNJryxwWuSW+f9M/d3/rrb8uQM5mbdSaT1cRMcV42flSvNDVSgC9vSvCz2jQpDd+g/l+iOH0L8CN1XA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR21MB3144
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 15 Jun 2022 17:05:37 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57337

--_000_DM4PR21MB351589CEACD6597F2BB77B1091AD9DM4PR21MB3515namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

What is best way to cross compile an out-of-tree kernel module with a yocto=
 SDK?

The kernel headers get included in the SDK after the following line is incl=
uded in the image definition
`TOOLCHAIN_TARGET_TASK:append =3D " kernel-devsrc" `
but I don't see how scripts such as fixdep or modpost (should be built for =
host arch) get included in the SDK

Is rebuilding the fixdep and modpost on the host machine after installing t=
he yocto SDK, and then building the out-of-tree kernel module a correct app=
roach?

Thanks,
Fanzhe

--_000_DM4PR21MB351589CEACD6597F2BB77B1091AD9DM4PR21MB3515namp_
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
span.EmailStyle19
	{mso-style-type:personal-compose;
	font-family:"Times New Roman",serif;
	color:black;}
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
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">Hi,&nbs=
p;<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black"><o:p>&n=
bsp;</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">What is=
 best way to cross compile an out-of-tree kernel module with a yocto SDK?<o=
:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black"><o:p>&n=
bsp;</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">The ker=
nel headers get included in the SDK after the following line is included in=
 the image definition<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">`TOOLCH=
AIN_TARGET_TASK:append =3D &quot; kernel-devsrc&quot; `<o:p></o:p></span></=
p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">but I d=
on't see how scripts such as fixdep or modpost (should be built for host ar=
ch) get included in the SDK<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black"><o:p>&n=
bsp;</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">Is rebu=
ilding the fixdep and modpost on the host machine after installing the yoct=
o SDK, and then building the out-of-tree kernel module a correct approach?<=
o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black"><o:p>&n=
bsp;</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">Thanks,=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">Fanzhe<=
o:p></o:p></span></p>
</div>
</div>
</body>
</html>

--_000_DM4PR21MB351589CEACD6597F2BB77B1091AD9DM4PR21MB3515namp_--

