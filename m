Return-Path: <jairo.mejiaaponte@belden.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 29747CE8E64
	for <webhook@archiver.kernel.org>; Thu, 24 Oct 2024 11:28:17 +0000 (UTC)
Received: from mx0b-00015a02.pphosted.com (mx0b-00015a02.pphosted.com [205.220.178.250])
 by mx.groups.io with SMTP id smtpd.web11.12375.1729769289887692841
 for <yocto@lists.yoctoproject.org>;
 Thu, 24 Oct 2024 04:28:10 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@belden.com header.s=podpps1 header.b=Kw166rGR;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: belden.com, ip: 205.220.178.250, mailfrom: prvs=0027135c49=jairo.mejiaaponte@belden.com)
Received: from pps.filterd (m0382793.ppops.net [127.0.0.1])
	by mx0b-00015a02.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 49O70lZG010446;
	Thu, 24 Oct 2024 07:28:08 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=belden.com; h=
	content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=podpps1; bh=9RwAPMrLLNm9IHC6X9e51O01A6
	0N1pLBPmr5EQEl6SU=; b=Kw166rGRzTWbcW5al4d94oY7PMhuSMuDuEh7qlVAxL
	nk2rjRvCswRHh5kGrws6y44jLlj/hq5o7HihciZKIfMY9X67PAq6ymFfMfQWjtCj
	MEVe/bt/EdrXVwVsxE3YQPRgCs854myfhZMi2zD2oqZNdBes4Q08mrloIL2lWxSK
	sLDEmIcmL+xZc8ztEm/t0Py89ZpcS3ZEO36CPzXbvTq+Byy1OQTYR2IOFCV4LNEq
	HvSgGriLwuW9YsLhbDT/kVVqnZtFiKqubfLM2hfL6OxGKhQFXEXxaAh0sIZtyzmN
	O+S+jYs4p2Yk8vJGTC08pG1KRglVNQNarvbpRawpH2mg==
Received: from nam10-mw2-obe.outbound.protection.outlook.com (mail-mw2nam10lp2041.outbound.protection.outlook.com [104.47.55.41])
	by mx0b-00015a02.pphosted.com (PPS) with ESMTPS id 42em4fbjc7-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 24 Oct 2024 07:28:08 -0400 (EDT)
Received: from MW3PR18MB3513.namprd18.prod.outlook.com (2603:10b6:303:53::8)
 by BY3PR18MB4755.namprd18.prod.outlook.com (2603:10b6:a03:3ca::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.20; Thu, 24 Oct
 2024 11:28:05 +0000
Received: from MW3PR18MB3513.namprd18.prod.outlook.com
 ([fe80::4746:3d94:564:8d62]) by MW3PR18MB3513.namprd18.prod.outlook.com
 ([fe80::4746:3d94:564:8d62%6]) with mapi id 15.20.8093.018; Thu, 24 Oct 2024
 11:28:05 +0000
From: Jairo Mejia Aponte <Jairo.MejiaAponte@belden.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>,
        "jmeyron@gmail.com" <jmeyron@gmail.com>
Thread-Topic: [EXTERNAL] Re: [yocto] bitbake: enforce variables to be defined?
Thread-Index: AQHbJfEnmSTSyrgVQECacTo3tXNjQ7KVqQEAgAAN9F0=
Date: Thu, 24 Oct 2024 11:28:05 +0000
Message-ID: 
 <MW3PR18MB3513BD0421254E2F216DEDB38B4E2@MW3PR18MB3513.namprd18.prod.outlook.com>
References: <567180e3-3c9c-4422-9e93-b8b206ade10c@cherry.de>
 <16955.1729763552548028616@lists.yoctoproject.org>
In-Reply-To: <16955.1729763552548028616@lists.yoctoproject.org>
Accept-Language: en-GB, en-US
Content-Language: en-GB
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW3PR18MB3513:EE_|BY3PR18MB4755:EE_
x-ms-office365-filtering-correlation-id: d66a949b-9f06-4a87-7056-08dcf41eede2
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: 
 BCL:0;ARA:13230040|366016|1800799024|376014|38070700018|8096899003;
x-microsoft-antispam-message-info: 
 =?us-ascii?Q?K5x41Jm5K4VgNYCjZvY2C3UD94zcc5xnKgWHHlVneoj9c2+A708FUKI00p+D?=
 =?us-ascii?Q?cAyKKBupkBEKUKnQfWtjDgH/14UVCS9rD9g0pB4pgCXQ/HPbKN5TlGy/qvzd?=
 =?us-ascii?Q?6ixGO6TxXvof444XnXJn3FzUHFZZPU3ss/vdIagtTZaYngT7705lBXK4gKCt?=
 =?us-ascii?Q?X/oJNZBG8lHFSSjB63oQwCzvmi/71l5AwL+2KvzB09aNDcaJ+6hUT22Cs9FD?=
 =?us-ascii?Q?9bIjYur/L02ITICm0NWsjPb9N80dhW0y106vQgz6fZBqLFDEL+HikhTaMgnn?=
 =?us-ascii?Q?STaJaWYohC+2LasaeofcmvOAgTspvRnljSkuvyvfQs/rWnbyGeBU3YmrSaWU?=
 =?us-ascii?Q?ejrp9e2bWHMcUrBQM7CMyaYojbMDH/cxn9xOJvdJIlE8TlcB4zS4C3Vq0MQO?=
 =?us-ascii?Q?n7aDGLn45TNk04cBu5rWmKjL6sZnLIlD8Lyn9kliQecazsFmPRAvC9+BTwAv?=
 =?us-ascii?Q?ov+oefZ9e2pTTMJuAWURg2NXxlojmDNe/Ci1lf2c2EnDLdtPui16ijMzDUOc?=
 =?us-ascii?Q?7sr9A1kuhZd5wdoJyvhpmrb3+iiUX2Q1AJW7We1uMAY//RK/V3NBSJ6/274d?=
 =?us-ascii?Q?Ixcht+V+evjhd2i4SdIq+dxvVwCxU1sfEAOwQJWIk3sCBoTsjLIyMLqYrO0o?=
 =?us-ascii?Q?AJ6hcpT7TWwiAsSJt8Jvlnd+mFAC4Zk5lUbH8RivsX0rQVlLUAJFdd8kzTXL?=
 =?us-ascii?Q?YN7+RF+2XdMh1cXXrzUm4Oq+Um3FQTwNEB7PAM6/416OkN0KAu0HUYmdG+9t?=
 =?us-ascii?Q?LWbSQ2RErbA62fI1/bpvlX0ZkjAiYP5/qD/JsDESaYWEqoCqq2YVTloGzmWx?=
 =?us-ascii?Q?+wg76hwXk490Z1k9ap9ZEVa4B4ILMIrOtvuccBoEqr6F4O2q2EnI8O505cTe?=
 =?us-ascii?Q?NFCUoSnSeGyc0IfdUtigOxIScQ94EnE1qbsrZKW2ZKGu2wfH5ERs5OPDCNjV?=
 =?us-ascii?Q?+4MwHKantyjNnXVMHOBvXYv/TQ2EHovFK2+DaRHekNhZwOgoES5+e2SBEJZv?=
 =?us-ascii?Q?OklnoGfG5PXKk3kHF177vk8VOXf+TCYg9zxx5BoTtSxc49EGYoyNdVQ1Scbt?=
 =?us-ascii?Q?PUv6s6cfv/xy91eQDfJdD8vvGWpBXql5zRz97V4+xEJvNQ+XhLTdSZRyrxjU?=
 =?us-ascii?Q?mk1z20scE8YFcgnRwhRf0dxvAMRp4jERbckGIkL0SrloDf5DwKaF4hEMyX+R?=
 =?us-ascii?Q?xHY5278xhut7rZl2XDxMlnj6k+hZHOE592EMsXa6RIxyGBcmRYSzUJnrO2Qe?=
 =?us-ascii?Q?XO6mu5bU+Zf+oP7WD14EkBOKybPp3uly5HGwVqaec+QjCWs+L2FmngeryKEN?=
 =?us-ascii?Q?k0QovY5LEGeuIjcYyO5ZNmH99jycWBscuWkI66rRDZV/mV9rqq2NbqOaeANR?=
 =?us-ascii?Q?iH2tYmY=3D?=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MW3PR18MB3513.namprd18.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(376014)(38070700018)(8096899003);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?ngogI4sVQRo/uMgVr4j+vFUsDm0CRGUlgJGTOyuUpgvBafatnDX7qfTs3IAg?=
 =?us-ascii?Q?P+wbNdz8Wy4pB0QsOadTP8eO5oJ7f+3RPrFSUtSjOrVECIS20+61Ap+L4avd?=
 =?us-ascii?Q?B1AMFSQOHNmJRa3OLdfXZXWAKmOWp0Jo+WGm+YzChjxdsYiy5iyPK5/lGXZq?=
 =?us-ascii?Q?nwnthBslbJr2Iomz4YvjAaGsyu5ZRriYFntutjKkBuHYDJ9ZP6veUwXfqytP?=
 =?us-ascii?Q?glHXmnePsCAwk8CixMcK8+bY+IYsS+UcgBkFaPmKnhQShqrjOssDRgeB2ze+?=
 =?us-ascii?Q?+KNe6kcHkm40BMCwcUGEUbFX9mFToIRxtmdbiz0RlT90/esFMJrnKDHo/qgi?=
 =?us-ascii?Q?EyIPVZddw7HLjBeJJ/QCo9ft5XnEQSombiA1oh39nBfe2R5BQmdVhun0drGn?=
 =?us-ascii?Q?5bZHWlp4MLSmoG2sBwdEGf3fUkP/Mcdx6aSD2rLy5B0cm+W7JGiZDNG9OT3D?=
 =?us-ascii?Q?CeegAfxt4xpYrYGejrNRF+jIS8/mncAXJLKE0zb4sEJbPkgf+trMzc6XKV+n?=
 =?us-ascii?Q?eEByCPhfhB5zlqRLivAUnjHiHKZJklbYslL1vELK6ePkFOMnsJmmE9l1DkX/?=
 =?us-ascii?Q?xwxG93jrknqCjZjtdPol28Ugr/XJ1xK2K7jHpRWd6mLLRLy2NnT88nGpl4Lb?=
 =?us-ascii?Q?oghup0slDBrmcYOn0ZcyP0M0PpLDqlvUV4UYZCMjOiyRRR2Na8XarM+gXDq3?=
 =?us-ascii?Q?HMpqf42sPTRXYT2GG84PcDLbWqBfjLw3EXTjujDyt4ho0xmQ82oykveqMdoz?=
 =?us-ascii?Q?wC1xOd3lyD3U2HXUWiCyg0tQsmQGsEfCU4SKBtJ1GShaCxP1HuCam8J+MgfN?=
 =?us-ascii?Q?W1yaDS+c1xh8YDpYbtSF8H5/nbD+ZlxESadZULujSGyC9qCxyhpaAn0HQ5vt?=
 =?us-ascii?Q?4IrWcxges8TF2rqLl/K91f2wvViy2hd0o/AD48YPvS9QEdacLxHKrbrDimvD?=
 =?us-ascii?Q?CkH6M35aX/cZKORmGdYomt91ohXax8f98+TvTyTUe26kT4U+wBqIBaYClI6W?=
 =?us-ascii?Q?MlVpyEltLdFbzKTtPYnivNjKWyfKweqW8fB2wvhLB5IZCQ3sVy3ctbf/MUlI?=
 =?us-ascii?Q?zJjUl1HdNaq3mZP51IUKUI4t6kqy9h0WHRw3yILxGCfRSnw3jG0A8GuxEs9q?=
 =?us-ascii?Q?4+Vt6mAHt/kSpF8kz0OFUjswICjA2zJ8WYwhfww4DXiZcABOwgy0cX+90R94?=
 =?us-ascii?Q?PZzAQkAKuP1GybLE+w2PeZhpKKvBOduuUj5NTi+d9fX0VUql3KFL51ape2e9?=
 =?us-ascii?Q?ptXMTqddKlsxod0hY19vB+0Fh4I9Ozoh1WYVo8/qwzPfamRnNv2xcK/Al0fa?=
 =?us-ascii?Q?AG5FfDhDZwGwDgwPEsArYgbd703EKfeRk0w/8XAGUCvgxXSEIiT1XJpXo/AI?=
 =?us-ascii?Q?Pgwrd+S1t5TkmCUJmEQtnlHF9CU7wsaal6CT5QWw6Ddk1srCuDzYRXqvzvIq?=
 =?us-ascii?Q?dXeL/e64B/ARE62EPEhUi+oj7QgU75wQ2BuPQxP8c+NXyY+ZAdkcvx0rAThv?=
 =?us-ascii?Q?b+B+MRJTh+Q+uIicIMJteTNEjBDNifksIIv79LCJLOoTtjBpPIKmq62FS/yE?=
 =?us-ascii?Q?zsaZ00JBau/Fzm90CgJDZoNnk1m5TTDG7Dy5f8Z7SIPO1nMjG2ZzCpLNuXai?=
 =?us-ascii?Q?2A=3D=3D?=
Content-Type: multipart/alternative;
	boundary="_000_MW3PR18MB3513BD0421254E2F216DEDB38B4E2MW3PR18MB3513namp_"
MIME-Version: 1.0
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: 
	oV8tJ1jAhO+07cpUaexe3dRUobCxMuycRscUztDBR+ZSmYQUx6rU6kp6Ll1BIVNuoichuijlCfNZmZDPIvVPTdf7k3qQB8ubK/BlL5boPvwDKfZ85FT45OAOqLcTSMzkY5GgN2TFVYRaKGRR0MBrg3hodjEaQh1e7wiwmvtmwohDPJOYzyZZCB1w87PakiktQpEz0rjabc1+Q7k2fZwG484irNImFoDQelvZom24397Zh/E7pqQiWybI66BOjEfFRKe//UHpaN5DuPxNhUEu1e7I2zZkbLWJvxwcI37cyCocMQWqcMZBmo/BvXMggygO7mw0J1BLf+0T4blTE+V8jgJLt5QxK7l4X2yLYGni7HTHWSzEzJZR6Db/Q5NH3+gghtB/L2S5h/4kM/8fGsYRp+pVryhLGJVhpixQILZUeABh4DR8TYhwLabojU9ib5iPqU4GuBd373z/lwvPbHuZtFuAkQonorlCw9m+oTj6NpU7TQiP5hgct1YLKUZENrnOd5R9+sRuE6Lx94E6g24BUYaJ8fNeX7HkEp7GjK3KR3jPQb2ULIKwzpAlyAd/tZ5meFJw5q9+++aVBKrI4k5vUQjw9uf6OEIAUbrI6kN71smfQlrZJfjtU5jB0G0X0dGZ7C7h3tDXnCpscm+tDE+cBg==
X-OriginatorOrg: belden.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW3PR18MB3513.namprd18.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d66a949b-9f06-4a87-7056-08dcf41eede2
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Oct 2024 11:28:05.6747
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 0f7367b1-44f7-45a7-bb10-563965c5f2e5
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: a0zSc0Hee9CK/VpkCEYabtCnLDQ4qdqZ1XIVJZroBWceHHumdfT+WTZVqMhImfw0vN9zfwGo2TAE7bJSmHIX81PuUhcX3Pn3biqvon6FSqo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY3PR18MB4755
X-Proofpoint-GUID: _PG3erKvM9Uh3izNnPBPz6n-2z0CH9VP
X-Proofpoint-ORIG-GUID: _PG3erKvM9Uh3izNnPBPz6n-2z0CH9VP
Subject: Re:  Re: [yocto] bitbake: enforce variables to be defined?
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 impostorscore=0
 suspectscore=0 spamscore=0 phishscore=0 clxscore=1011 lowpriorityscore=0
 mlxlogscore=512 malwarescore=0 bulkscore=0 adultscore=0 priorityscore=1501
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2409260000
 definitions=main-2410240093
X-Proofpoint-TriggeredRule: module.spam.rule.outbound_notspam
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 24 Oct 2024 11:28:17 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64109

--_000_MW3PR18MB3513BD0421254E2F216DEDB38B4E2MW3PR18MB3513namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

If you need to add something to several recipes, you can create a bbclass a=
nd make the recipes inherit it.

Ex:

SUMMARY =3D "Enables/disables compile flags for builds"

TARGET_CFLAGS:append =3D "${@ ' -DTEST_ENV' if not d.getVar('RELEASE') else=
 ''}"

The else is empty, maybe it is not entirely clear in the example. This kind=
 of approach can be made  for any you want. You can make an append of a tas=
k and things like that.

Then the recipes would only need to have the line:

inherit <bbclass_name>

Sincerely,


Jairo R. Mejia Aponte

________________________________
From: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> on behalf=
 of Jocelyn Meyron <jmeyron@gmail.com>
Sent: 24 October 2024 11:52 AM
To: Quentin Schulz <quentin.schulz@cherry.de>; yocto@lists.yoctoproject.org=
 <yocto@lists.yoctoproject.org>
Subject: [EXTERNAL] Re: [yocto] bitbake: enforce variables to be defined?


External Message:Use caution before opening links or attachments

Thanks Quentin for your answer.

I know that I can do that but my question was more to know if there were sy=
stematic way to tell BitBake to insert "set -u" in all do_* tasks in my lay=
er.

**********************************************************************
DISCLAIMER:
Privileged and/or Confidential information may be contained in this message=
. If you are not the addressee of this message, you may not copy, use or de=
liver this message to anyone. In such event, you should destroy the message=
 and kindly notify the sender by reply e-mail. It is understood that opinio=
ns or conclusions that do not relate to the official business of the compan=
y are neither given nor endorsed by the company. Thank You.

--_000_MW3PR18MB3513BD0421254E2F216DEDB38B4E2MW3PR18MB3513namp_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; c=
olor: rgb(0, 0, 0);">
Hi,&nbsp;</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; c=
olor: rgb(0, 0, 0);">
If you need to add something to several recipes, you can create a bbclass a=
nd make the recipes
<b>inherit</b>&nbsp;it.&nbsp;<br>
<br>
Ex:<br>
<br>
SUMMARY =3D &quot;Enables/disables compile flags for builds&quot;</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; c=
olor: rgb(0, 0, 0);">
TARGET_CFLAGS:append =3D &quot;${@ ' -DTEST_ENV' if not d.getVar('RELEASE')=
 else ''}&quot;</div>
<div id=3D"Signature" class=3D"elementToProof" style=3D"color: inherit;">
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);">
The else is empty, maybe it is not entirely clear in the example. This kind=
 of approach can be made&nbsp; for any you want. You can make an append of =
a task and things like that.&nbsp;</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);">
<br>
Then the recipes would only need to have the line:<br>
<br>
</div>
<div style=3D"line-height: 19px; white-space: pre; font-family: Aptos, Apto=
s_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-s=
ize: 11pt; color: rgb(0, 0, 0);">
inherit &lt;bbclass_name&gt;<br>
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);">
Sincerely,</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);">
<br>
</div>
<p style=3D"text-align: left; text-indent: 0px; background-color: white; ma=
rgin: 0px;">
<span style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService,=
 Calibri, Helvetica, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);"><b>=
Jairo R. Mejia Aponte</b></span></p>
</div>
<div id=3D"appendonsend"></div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> yocto@lists.yoctoproj=
ect.org &lt;yocto@lists.yoctoproject.org&gt; on behalf of Jocelyn Meyron &l=
t;jmeyron@gmail.com&gt;<br>
<b>Sent:</b> 24 October 2024 11:52 AM<br>
<b>To:</b> Quentin Schulz &lt;quentin.schulz@cherry.de&gt;; yocto@lists.yoc=
toproject.org &lt;yocto@lists.yoctoproject.org&gt;<br>
<b>Subject:</b> [EXTERNAL] Re: [yocto] bitbake: enforce variables to be def=
ined?</font>
<div>&nbsp;</div>
</div>
<div>
<div><font face=3D"calibri light" size=3D"3" color=3D"red">
<p><b>External Message:</font><font face=3D"calibri light" size=3D"3" color=
=3D"red">Use caution before opening links or attachments</font></b></p>
<p></p>
</div>
<div>Thanks Quentin for your answer.</div>
<div>&nbsp;</div>
<div>I know that I can do that but my question was more to know if there we=
re systematic way to tell BitBake to insert &quot;set -u&quot; in all do_* =
tasks in my layer.</div>
</div>

<HR>DISCLAIMER:<BR>
Privileged and/or Confidential information may be contained in this message=
. If you are not the addressee of this message, you may not copy, use or de=
liver this message to anyone. In such event, you should destroy the message=
 and kindly notify the sender by reply e-mail. It is understood that opinio=
ns or conclusions that do not relate to the official business of the compan=
y are neither given nor endorsed by the company. Thank You.<BR>
</body>
</html>

--_000_MW3PR18MB3513BD0421254E2F216DEDB38B4E2MW3PR18MB3513namp_--

