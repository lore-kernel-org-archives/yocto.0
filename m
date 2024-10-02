Return-Path: <Darko.Trogrlic@Belden.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C995ACF31B7
	for <webhook@archiver.kernel.org>; Wed,  2 Oct 2024 11:30:53 +0000 (UTC)
Received: from mx0b-00015a02.pphosted.com (mx0b-00015a02.pphosted.com [205.220.178.250])
 by mx.groups.io with SMTP id smtpd.web10.5068.1727868647526282395
 for <yocto@lists.yoctoproject.org>;
 Wed, 02 Oct 2024 04:30:47 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@belden.com header.s=podpps1 header.b=xmugmYlE;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: belden.com, ip: 205.220.178.250, mailfrom: prvs=9005936121=darko.trogrlic@belden.com)
Received: from pps.filterd (m0264210.ppops.net [127.0.0.1])
	by mx0a-00015a02.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 492BEZER013184
	for <yocto@lists.yoctoproject.org>; Wed, 2 Oct 2024 06:30:46 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=belden.com; h=
	content-type:date:from:message-id:mime-version:subject:to; s=
	podpps1; bh=sy+miJ2pZIDmtjv7g1iyiZmV92rlRkmeC2uE9OG0KDw=; b=xmug
	mYlE/ivS1UZMKO2BgrVcW6ZkVZPFw8WgKvy2CKV+YOvG6XzHYXmPUZMxSF6xdBhs
	ow28V7N4jmZVSTvSpMo9f8e4G81eS834IWsEJGj5cGvLeLfzdvdMZ5KdNiOj536x
	DgBY8gtLzXeM7HoyKnIrVnlYdIKa6OwBLbcsaw0tbW3wPdxAq7Kezpfc+nvlYxSU
	c1sMk85HrxjpmUY/tRiEC9syV4vmfsyEp2zlpk2dtt57iycxDPkak3mj+YLUqtGP
	y4bf0EuDVCDVnVkYADl0exdTAB9+v2B8jiyQRw4hf74nTAmXSTchSppJCIzvf6oH
	+E2P9S71Hc9mG84ZYQ==
Received: from nam10-mw2-obe.outbound.protection.outlook.com (mail-mw2nam10lp2049.outbound.protection.outlook.com [104.47.55.49])
	by mx0a-00015a02.pphosted.com (PPS) with ESMTPS id 4214xh011b-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK)
	for <yocto@lists.yoctoproject.org>; Wed, 02 Oct 2024 06:30:46 -0500 (CDT)
Received: from MN6PR18MB5495.namprd18.prod.outlook.com (2603:10b6:208:471::12)
 by SA1PR18MB6036.namprd18.prod.outlook.com (2603:10b6:806:3de::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8026.16; Wed, 2 Oct
 2024 11:30:43 +0000
Received: from MN6PR18MB5495.namprd18.prod.outlook.com
 ([fe80::6d1d:bb76:81b0:8703]) by MN6PR18MB5495.namprd18.prod.outlook.com
 ([fe80::6d1d:bb76:81b0:8703%4]) with mapi id 15.20.8026.016; Wed, 2 Oct 2024
 11:30:42 +0000
From: Darko Trogrlic <Darko.Trogrlic@belden.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: [Bug] meta-spdxscanner reports no scancode found
Thread-Topic: [Bug] meta-spdxscanner reports no scancode found
Thread-Index: AdsUvoAbFhDzKhNrT826DkzGJHuiiw==
Date: Wed, 2 Oct 2024 11:30:42 +0000
Message-ID: 
 <MN6PR18MB5495C3CDE619A48943F05834F6702@MN6PR18MB5495.namprd18.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MN6PR18MB5495:EE_|SA1PR18MB6036:EE_
x-ms-office365-filtering-correlation-id: 6de3bdaf-1dc2-4ac2-27e6-08dce2d5a685
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|376014|366016|1800799024|38070700018;
x-microsoft-antispam-message-info: 
 =?us-ascii?Q?CJZlhY5ILhkda8xMnaLhKzJLeuzinhB70XjaiekGdJ2irPdjLoere0sSkT/l?=
 =?us-ascii?Q?JP/cNlpD2chNAGynVpRHo2zj7G1Nl0IF86Q9hmTIS7FGqvRNUW9Z4XYMBkxM?=
 =?us-ascii?Q?+gyq6Znc2n9yYbzSwQTlp8R5f0TmVOlibAWfP702SqpHg4t9TfgFTP+vJ5ps?=
 =?us-ascii?Q?DM+Y9v/odvIiPtgwd5wKe+WeVL+O3sLD7KnmunZtYnyJY/ObCoTCX4ZhmQzk?=
 =?us-ascii?Q?Oih6qmmRw09U97IBJFzUP3Jo62QjtLjWgSM/eNM3L5hwimS0z/Wdon/mjoLV?=
 =?us-ascii?Q?zRZkWxB6xHxpearJ6slbp914NRicWUV7APCr1EokREg7AySMO1t5ngLRLuj/?=
 =?us-ascii?Q?t+QLk/U8QvIH0FLD324FExs5iQw/gu17LVL/BARX/63SRBMn02ibyMkloUsA?=
 =?us-ascii?Q?+Okg4VwDYOTHrTRpzFJ3Q4neq/eGh6DdWoApapt/dvjdggdmxu5mI7z3PiNB?=
 =?us-ascii?Q?7QnVsuHd3n1wWszyXCHNv7DF5e14Frm+jDSyMsh6CT+t/kykJWt9DnPUIqb6?=
 =?us-ascii?Q?z4e5SxdML13jLV/fXNDRGU6Go8bhhu6wJ/xKBVf0qg8nGvc74ApbEHB2niMU?=
 =?us-ascii?Q?QQjox0rdoLsDweClzoMtYhEUuf0+qMZxl3P0wPy0uMCSP0UwXi2S2dYWY9A/?=
 =?us-ascii?Q?tVBzCb0ZK4qehHUDiCJl5R/8yPqLjAiu+PO5a3MtgkT9zs1h0mTt1b1vb7h6?=
 =?us-ascii?Q?8fSskeyGF3qWdliD5GmxjJEXvVJ9UTjjas2qwQYbvTRAKvd2FYkI7iRCkKCZ?=
 =?us-ascii?Q?2IdZoOg+lhGttSrG5z8UWnxBwBW1t3AX9phjJLLZqM1vOeVYNUuGjOME29iT?=
 =?us-ascii?Q?kbhcHY3wQkXNxOwUyfDuTymVx28loe+GYoFbPfPQ2r/GQ1l2WovgtxHcFYgM?=
 =?us-ascii?Q?30aWNh+QM6hNLgd/5A0Ei84+wb5zBcIk3M8cAqemhZ0mRPjUR9rSVoKyaCV2?=
 =?us-ascii?Q?Kt9jvzNTeh6babUvSRU9Q5KY9QPYCF1TX1j1nRRzpfAcyB6CuC4xeHzGfU6y?=
 =?us-ascii?Q?ifqyWI9iU5YpvoKr1LA+bskGmYtAvj8WUnRPI0B8LMukl25nF3NzlbyaFJAf?=
 =?us-ascii?Q?MEb9ZAtxr+b4VgWGUFewHRA/py0B2MvmEUkFlHmQve0sE1JGbrzRVrXJX1mp?=
 =?us-ascii?Q?qEBOrmTRKH5eNJeJja2J5RE9GF/FVhNI7cT3W2MdcjWdGM2d9AaxtDXbYoAZ?=
 =?us-ascii?Q?H4sq32h7JvkSIGNqdvWjhcPOvGBdk5yXL20amKMnw3+4qYFGfThnEYaNTiWV?=
 =?us-ascii?Q?rWUDvE86GcLsSlVXc0sft0W0SlUSCP1y2njFFBdLAF5Sb7jUgW7mbXHB/qGq?=
 =?us-ascii?Q?2Hw=3D?=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MN6PR18MB5495.namprd18.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024)(38070700018);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?O8VPJmRAxh3MBkWOyb3w+S5LuFpJxbeCrzWJyEsAr7Gq+WsGc6sxApEbCKgi?=
 =?us-ascii?Q?KTV3RkyP9PqCrgH64QYAnEPBhYaygtmta1jGAtuo+3haWHeACCs0aPXi+kl6?=
 =?us-ascii?Q?E8wTOeD1VBlLYGxIekG+752lnmB1CJQgdbpoDGbmm08uThEF+Nc7E7bML8fX?=
 =?us-ascii?Q?/SZix0dx8U87ZNjFsAGwWzaDcJbRyPebQmEpUghtmhrAZ36PnbDhmtSJ6FCO?=
 =?us-ascii?Q?grC0BKHORj5Jp44oAOR0xKK/Dve8mhaVZpSMgggGyf5eB4d3T6XPBuc6S6MH?=
 =?us-ascii?Q?PJdxw79H+ODh3YJiXMCwjPFCAh2vTQqNzNb2cFrzZqttYdBz3gEo2UKBHU5F?=
 =?us-ascii?Q?v2pfiO74yUWYN62+uR1/iA4O2KP9r9laYoeneji8c9Ud4l6BQ/Uf0NFeazuy?=
 =?us-ascii?Q?dQl6m5vym75o3NxbEQ01GZC/aMW7NIs6XDK4vPZUsSlIsQeFFWlpnxUUIzo2?=
 =?us-ascii?Q?HxAkBT4U5duZ1pduEm8ERDdBMNMxH1bFq2GGGO+j8aEu4QtuZOpeXOKeFoTX?=
 =?us-ascii?Q?FgEMP42ffekZ+ISisvKkNCe4/WEkjcn/pCE28xVXdjBu0gd3KMTdxocRUE2A?=
 =?us-ascii?Q?NWlBY4yR5D/zHoEbyMccVUi0iDK4HeT1HCrtW05DAMVQbYfL1bz3axzJnRQ+?=
 =?us-ascii?Q?r+rN6UAEUcHEreKf7Mu6k+BYyI6tHXpQ/T+27dk/LOlTwJnEgGoefzS0EgBb?=
 =?us-ascii?Q?x2dOyvDBdz3m1Bd/vlcNTw1zhZrFNDc+bHVQrTK+LEObZFaB9JbK39XNqZi2?=
 =?us-ascii?Q?4PKK/T+Nxaa0q1kFm6DOcZE+z02wUdDftHovC5ABJ1m5R8kyu2hnArAM2Klt?=
 =?us-ascii?Q?7RVJFEND2xsK6WSCF9ipdZxDMauuPfqHqsAvmQxRAMR8jZVpWq3ZkuCo0G81?=
 =?us-ascii?Q?Q3dvYeVA0yjHFFGinP3RUqCDyMf1FPLazVIgyC9ovI5bXhWjJMoOcyYya1Op?=
 =?us-ascii?Q?uurT6+o+p2JGj8chx8c6s3kiYRokVTff5z0P+iwBBRzldSxdu3KEEDst+pmP?=
 =?us-ascii?Q?Tk+OD04WGdraIVAzT9zjIVJ08TpDklKP0MvJvta8su6l1hEC959tZVEGXpxS?=
 =?us-ascii?Q?comZzOB2mP7T7IfzCOX2mOgrCFjdkuSsdr2XveEfTvWmoF+WNfRVwuaaVstT?=
 =?us-ascii?Q?afrLn8jmVHE4/thfzgbWTrSwbsN0oZ0/cLpakjv1Rf4gKmi2F5rEYjt9zCSp?=
 =?us-ascii?Q?srNaFR56Zf+08/YgP38HrewGYqaIyQ49QvvHvt3KWVAfFV3+/Q7kyxHnFeHH?=
 =?us-ascii?Q?LjKpAIUUo6fC5cR1HcGlPmOb7TmtqsZlJ0nLzC3qU6WC/xIs9lErUaAE/StD?=
 =?us-ascii?Q?tBUQBJy3JwxFLCoCkQZX234uqEaJv05zDPPk/J1APO3OceRmIS9Y4vEzDm5z?=
 =?us-ascii?Q?WiX22AmLmQoSs1JyFr1eKvH25fJaGyD/B+2yrtR+trIz9N5AdnhkadLvgzOg?=
 =?us-ascii?Q?rjl04+DcVfip96Hge64P02Q3lq2NtohRVxsItU616/RPn/vYko1exdw5LEEA?=
 =?us-ascii?Q?KFtuQYeYNTCDXvnqUw/+L2hwaLkAeijC41p57KxziekQ2h1l+7+xcPjvnarD?=
 =?us-ascii?Q?85W0MLO6Qxgghu5jE0mP62r7Dery4yIm5Dn4XPXu?=
Content-Type: multipart/alternative;
	boundary="_000_MN6PR18MB5495C3CDE619A48943F05834F6702MN6PR18MB5495namp_"
MIME-Version: 1.0
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: 
	9qcs6/5cZHcxztdm1112oCeH2Pch0N0afPeRyFoQyRnFecCOUxkrOEdilcuGO0LJj9+JnIpP1UDwIvxrR1IVK1zvFuqzCSisUQsBm5uzeMygLFhbQ1ROB6/T3z7aGUPigU47AxYDXZ2ZAG4LUZGNYfRl30e2DTUbSTdaz9vnpLPe1jBmB/+9yOrk7dLpYYAz7UgWLXmY3TuMenLjPtM8fCQlXK2KufmnVhozBsCJ4ylGhdU2S7jWYvJsuDgtGNIUH/OqMP9suHpAwFfa7WbgquhQMpHVJAVUJP2GkZtMTbCj8QfJg0BrFqGbDz+m82NRkxnGt+UJxHVbWW5YZ16Kqew+WU2HRwoEfbINlrG45etUkd0KWS+hh366OacM17q1PTBdPLFh0T1ek0DLymj8+IiU/ZKEz4WZPEXo+k6Sdxsb0nVAQXFlEzLsWJ5/XYqCbD/qSQzO4W6Z28XK7Z6/shwg0p4osJ+72KTJJJBZG80G4MwceTYYROlQdJwhhTu4qOi4XQEyNqR2oRMQCildaQI+9RiAr5QvMt9CC5TPI5Ebeu+d/eetP/CjlSFLhS272TEAZKGKGQ/MmNREldx1jP+bjWL+d1WsfrJGDzODFtYnaP1yQ8n2116tk48k7Qtg/guuxMVwTYBDM88YHDiWxA==
X-OriginatorOrg: belden.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN6PR18MB5495.namprd18.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6de3bdaf-1dc2-4ac2-27e6-08dce2d5a685
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Oct 2024 11:30:42.9025
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 0f7367b1-44f7-45a7-bb10-563965c5f2e5
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vJasDGwoj5St/hNBnQedbglMaOOIQEM1UFU/xosOWe+fsYK9s/HHvj2OrOIZuUMUyDZtPoMzip9a2cqLOce+o1JVYjMlWr0dSh8mlMj4E4w=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR18MB6036
X-Proofpoint-ORIG-GUID: ZlGW6R2aElzjXNM-Ykfttp2LbXCmTR-P
X-Proofpoint-GUID: ZlGW6R2aElzjXNM-Ykfttp2LbXCmTR-P
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 suspectscore=0 impostorscore=0 clxscore=1015 mlxscore=0 priorityscore=1501
 spamscore=0 malwarescore=0 adultscore=0 mlxlogscore=999 phishscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2408220000 definitions=main-2410020084
X-Proofpoint-TriggeredRule: module.spam.rule.outbound_notspam
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 02 Oct 2024 11:30:53 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63928

--_000_MN6PR18MB5495C3CDE619A48943F05834F6702MN6PR18MB5495namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

When using meta-spdxscanner layer on Scarthgap branch there is an error:

The error reported is this:
ERROR: fuse3-3.16.2-r0 do_get_report: Could not invoke scancode Command 'sc=
ancode -lpci --max-in-memory 0 --processes 24 --spdx-tv /home/darko/Project=
/tmp/os/build/tmp/work/thunderx-belden-linux/fuse3/3.16.2/spdx_sstate_dir/a=
arch64-belden-linux/fuse3-3.16.2-r0/fuse3-3.16.2.spdx /home/darko/Project/t=
mp/os/build/tmp/work/thunderx-belden-linux/fuse3/3.16.2/spdx_temp/' returne=
d 1:
b'Traceback (most recent call last):\n  File "/home/darko/Project/tmp/os/bu=
ild/tmp/hosttools/scancode", line 5, in <module>\n    from scancode.cli imp=
ort scancode\nModuleNotFoundError: No module named \'scancode\'\n'

It is important to point out that previously, when using all layers on kirk=
stone branch I didn't see this problem.

The command I use:
bitbake fuse3 -f -c spdx

Changes to local.conf/bblayers.conf:
I have added this to local.conf
INHERIT +=3D "scancode-tk"
Also added meta-spdxscanner to bblayers.conf


When I run locally "scancode -help" it doesn't show any errors.

In order too further debug I tried this command:
bitbake fuse3 -c devshell
and in the shell it opens, when running scancode command, the same error is=
 reported.

I am running ubuntu 24.04, however the same issue has been reported on earl=
ier LTS version of ubuntu (22.04).

I have this version of scancode installed:
scancode --version
ScanCode version: 32.2.1
ScanCode Output Format version: 3.2.0
SPDX License list version: 3.24

Has anybody seen this error, any idea how to fix it?

**********************************************************************
DISCLAIMER:
Privileged and/or Confidential information may be contained in this message=
. If you are not the addressee of this message, you may not copy, use or de=
liver this message to anyone. In such event, you should destroy the message=
 and kindly notify the sender by reply e-mail. It is understood that opinio=
ns or conclusions that do not relate to the official business of the compan=
y are neither given nor endorsed by the company. Thank You.

--_000_MN6PR18MB5495C3CDE619A48943F05834F6702MN6PR18MB5495namp_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii">
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
	mso-ligatures:standardcontextual;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
span.ui-provider
	{mso-style-name:ui-provider;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 70.85pt 2.0cm 70.85pt;}
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
<p class=3D"MsoNormal">When using meta-spdxscanner layer on Scarthgap branc=
h there is an error:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">The error reported is this:<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: fuse3-3.16.2-r0 do_get_report: Could not invo=
ke scancode Command 'scancode -lpci --max-in-memory 0 --processes 24 --spdx=
-tv /home/darko/Project/tmp/os/build/tmp/work/thunderx-belden-linux/fuse3/3=
.16.2/spdx_sstate_dir/aarch64-belden-linux/fuse3-3.16.2-r0/fuse3-3.16.2.spdx
 /home/darko/Project/tmp/os/build/tmp/work/thunderx-belden-linux/fuse3/3.16=
.2/spdx_temp/' returned 1:<o:p></o:p></p>
<p class=3D"MsoNormal">b'Traceback (most recent call last):\n&nbsp; File &q=
uot;/home/darko/Project/tmp/os/build/tmp/hosttools/scancode&quot;, line 5, =
in &lt;module&gt;\n&nbsp;&nbsp;&nbsp; from scancode.cli import scancode\nMo=
duleNotFoundError: No module named \'scancode\'\n'<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">It is important to point out that previously, when u=
sing all layers on kirkstone branch I didn&#8217;t see this problem.<o:p></=
o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">The command I use: <o:p></o:p></p>
<p class=3D"MsoNormal">bitbake fuse3 -f -c spdx<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Changes to local.conf/bblayers.conf:<o:p></o:p></p>
<p class=3D"MsoNormal">I have added this to local.conf<o:p></o:p></p>
<p class=3D"MsoNormal">INHERIT +=3D &quot;scancode-tk&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">Also added meta-spdxscanner to bblayers.conf<o:p></o=
:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">When I run locally &#8220;scancode &#8211;help&#8221=
; it doesn&#8217;t show any errors.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">In order too further debug I tried this command:<o:p=
></o:p></p>
<p class=3D"MsoNormal">bitbake fuse3<span class=3D"ui-provider"> -c devshel=
l<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span class=3D"ui-provider">and in the shell it open=
s, when running scancode command, the same error is reported.<o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal"><span class=3D"ui-provider"><o:p>&nbsp;</o:p></span>=
</p>
<p class=3D"MsoNormal"><span class=3D"ui-provider">I am running ubuntu 24.0=
4, however the same issue has been reported on earlier LTS version of ubunt=
u (22.04).<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span class=3D"ui-provider"><o:p>&nbsp;</o:p></span>=
</p>
<p class=3D"MsoNormal"><span class=3D"ui-provider">I have this version of s=
cancode installed:<o:p></o:p></span></p>
<p class=3D"MsoNormal">scancode --version<o:p></o:p></p>
<p class=3D"MsoNormal">ScanCode version: 32.2.1<o:p></o:p></p>
<p class=3D"MsoNormal">ScanCode Output Format version: 3.2.0<o:p></o:p></p>
<p class=3D"MsoNormal">SPDX License list version: 3.24<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Has anybody seen this error, any idea how to fix it?=
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
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

--_000_MN6PR18MB5495C3CDE619A48943F05834F6702MN6PR18MB5495namp_--

