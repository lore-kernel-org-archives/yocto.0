Return-Path: <jairo.mejiaaponte@belden.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E9C27D3C932
	for <webhook@archiver.kernel.org>; Tue, 22 Oct 2024 11:46:34 +0000 (UTC)
Received: from mx0a-00015a02.pphosted.com (mx0a-00015a02.pphosted.com [205.220.166.249])
 by mx.groups.io with SMTP id smtpd.web10.16406.1729597593253772088
 for <yocto@lists.yoctoproject.org>;
 Tue, 22 Oct 2024 04:46:33 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@belden.com header.s=podpps1 header.b=LpbWz3Ma;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: belden.com, ip: 205.220.166.249, mailfrom: prvs=8025cc4350=jairo.mejiaaponte@belden.com)
Received: from pps.filterd (m0382794.ppops.net [127.0.0.1])
	by mx0a-00015a02.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 49M715I0006007;
	Tue, 22 Oct 2024 07:46:31 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=belden.com; h=
	content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=podpps1; bh=vTr/c1smv3ldcDat/FGox/aGEB
	lHOnYGrQBZmE2hHBE=; b=LpbWz3Ma8DYWfhr8/9K4zM8zcBwPl9SLQvPcfbNLEh
	NnmfVA6xuz86hsPjz0xY3OGpJSRjylY2XlhCr+uS82S0fpghEml93MDznEKnd7J8
	nN/Y1WBZboO1Y1tSZBffxTW56gz3/zgx2OZibv8hUiCFi2ck143xi5+cooMLWFQx
	HxLxanJBkUkRA8INZvvfyhXyweg8hq1HwkdttLYRclJZr3ob9Bn2vAU+ci0onFX+
	BIxa0rpjzrlJL3Fc2jl3baYZyJ/Hhm/ug+grCuuIPTn1AC6W4Spc3h740Xn8vKf1
	nNTq3yVcBsfzIG/OiuLK8IqAeaMc2LnU5wLyyLWHvupg==
Received: from nam10-dm6-obe.outbound.protection.outlook.com (mail-dm6nam10lp2046.outbound.protection.outlook.com [104.47.58.46])
	by mx0a-00015a02.pphosted.com (PPS) with ESMTPS id 42cw7u40f5-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 22 Oct 2024 07:46:30 -0400 (EDT)
Received: from MW3PR18MB3513.namprd18.prod.outlook.com (2603:10b6:303:53::8)
 by PH7PR18MB5593.namprd18.prod.outlook.com (2603:10b6:510:2ee::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.16; Tue, 22 Oct
 2024 11:46:23 +0000
Received: from MW3PR18MB3513.namprd18.prod.outlook.com
 ([fe80::4746:3d94:564:8d62]) by MW3PR18MB3513.namprd18.prod.outlook.com
 ([fe80::4746:3d94:564:8d62%6]) with mapi id 15.20.8069.027; Tue, 22 Oct 2024
 11:46:23 +0000
From: Jairo Mejia Aponte <Jairo.MejiaAponte@belden.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>,
        "umeshyv@gmail.com" <umeshyv@gmail.com>
Thread-Topic: [EXTERNAL] [yocto] reading tgz file and uncompress in rootfs
Thread-Index: AQHbI9aS0HkP9GKl9USxYKIwvKA2sbKSpETn
Date: Tue, 22 Oct 2024 11:46:23 +0000
Message-ID: 
 <MW3PR18MB35132635A32673EF95ACA82B8B4C2@MW3PR18MB3513.namprd18.prod.outlook.com>
References: <19kG.1729526063081260825.oijY@lists.yoctoproject.org>
In-Reply-To: <19kG.1729526063081260825.oijY@lists.yoctoproject.org>
Accept-Language: en-GB, en-US
Content-Language: en-GB
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW3PR18MB3513:EE_|PH7PR18MB5593:EE_
x-ms-office365-filtering-correlation-id: 4a809c21-b3cf-4165-a03f-08dcf28f2753
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: 
 BCL:0;ARA:13230040|376014|1800799024|366016|8096899003|38070700018;
x-microsoft-antispam-message-info: 
 =?us-ascii?Q?g2lolWxRds42CwcOvwIqb4V5oVsmAYcYlDb7v+qQPMkA1hi9nTGqtQCKig25?=
 =?us-ascii?Q?ccf64v5u5FfPCe8jY8IxttKxxsFqQYAteHu6cYzeywSdSoWdBN/lH5rJoYWJ?=
 =?us-ascii?Q?FfRRQWo7/EK4JpnSRdDSxs6fQpq8Aqwsxh40Zff8VlD2krvMSQf3VCpRH4ti?=
 =?us-ascii?Q?qE9uj2jbXS+WPMIVlMVyM6gcSbgjOtL6tL/nx6kBpp1gBe+kStuM0ETRTsze?=
 =?us-ascii?Q?8vgY+Z8Pu+xYjU8zUk90+cr7XyZ0Mx7Z9Tq10oWho96rCKIZJOQdlUjpbEIK?=
 =?us-ascii?Q?zu7/E73MrCDOe5RuCH5Qxszuka5Ab7dC3yjoLlAvD1zZex9kK32U1qxRUdf8?=
 =?us-ascii?Q?2V/Hr60j0g2HsOGhSM83GcMEJmF1HZ0DXqTLiNGmcTuhGjWYsIafJb8tQSrw?=
 =?us-ascii?Q?PgirL6U31EnG6NyTtLOuShG12SycigTq92Chb7MxGU6FZkL8cY3Kx03ELFn8?=
 =?us-ascii?Q?oR18HbjGCvJSFuCNgPIkokoMpdYTW24rX6qH06OqiYvdS+8Zor+/bDm+j/Qc?=
 =?us-ascii?Q?xN8DBi5wIfxOugb8RfHnkczZY2L2VjP+m9Mj12ms2r+y5/yrrF1x6muCddYg?=
 =?us-ascii?Q?R5HgrVV9i+Dzyl2AmeYh7y00i8NSj5vWkSe80MSSG0u550uIXKNNxatlTuPn?=
 =?us-ascii?Q?r3bK/MDmwmj9z37xSfxqLF306q+sq0XjheX/CPqIgugOlkNKllxyvoo0WyjR?=
 =?us-ascii?Q?sFZeKDIiHXcYpTTJaeV7rNJBOurbNglIBIGgPmDDxgw61KJn+7iIums9Ylfn?=
 =?us-ascii?Q?Py1OU4L/uk3MrEMZZLRUZuhRO3wN/VNxzOEdpxLtjXR6FTIQLeFniZNHGmBq?=
 =?us-ascii?Q?8pYXhjR1uiLc1SeR28uoKza5CH802KhkypM+kuTbbuZRCMWI4RDf3s19SzVI?=
 =?us-ascii?Q?QfYElTTwWJe1HsZpsKIhBrVIq3FXoDSbqGDdy1HwyrgWMzwP1KzCiPOCC89t?=
 =?us-ascii?Q?hgn2VPd+69plw51cRfylMlSRMEsEdqwOYXX9MfCOs5XFwP9rk5U+TujkXAPv?=
 =?us-ascii?Q?zpa5UM9Z934LTyYlp2ov3G/GyskNt5Q/3X5+hrXAysa0S5DnvClVerfRbNth?=
 =?us-ascii?Q?pyJmfw6ByPLosr8HYsRXtvibtY1PGLpiEBfWr/unIzy5KS7C0YGn+Nqink9/?=
 =?us-ascii?Q?jmnyYvkBMw3bDYWBhTImi8slAP6ngMim9QNIBUvFc49tv1dZEO+nl/8vaAG4?=
 =?us-ascii?Q?s4lZEDBHRtwCecKrbs9C4wNOLwyli0pG9QpVFH1Kznl2IeKIFvzHnW+zo0J/?=
 =?us-ascii?Q?Y1gQ4loT7F9HM7zkhds4RcsOqYjjPe3Pkvs1BRCBHeRLXMZ7J0QTKZCd1Bc/?=
 =?us-ascii?Q?cAxTXxCftQ6+uZ+BXkWKgPXu?=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MW3PR18MB3513.namprd18.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016)(8096899003)(38070700018);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?rswuYOhvq3Z285+bA91AMRZzRxJ9Sl6ZCcGbecU9jqrm5FocYAe1FozuVuwM?=
 =?us-ascii?Q?acxHrbifm3CmctlOdWUhDWX1Xj3mG7vJplRReHhf0Z0YN9uA1f3Lb/+2VmCr?=
 =?us-ascii?Q?kmOsCa/QJI52vLdH2KUwYYFUcU8fGFmuPl9mVThHAAhyyY4GXRGRE7unZSjz?=
 =?us-ascii?Q?ziTo+w8KTEEAtxXDuUZd29Zthef/Z5AqKxrssAo9JxyWU/ZkWWRDquYQmk3x?=
 =?us-ascii?Q?3BVdHYnlwujdjL8+y5H9xIjgYKXHZiAEdE/o+6nT2mZE9iptjmD9U4W3qgt/?=
 =?us-ascii?Q?DsQEZdTKlJ8O2vlg6tj5cfaA66xix5eDV98UBN/qVximhSoCihBD3vciDDxu?=
 =?us-ascii?Q?tqKBtGhmURFeIn5gcA4eZqzZoDVzSuW1rZN3oh4wxzvT8i7PMPeHEihy1wey?=
 =?us-ascii?Q?tH+4ikmifjfdzZpqS3RIB6qxH5rUIb+Mqi/MiHdmbTKLKEMVotJOwx4PXNvN?=
 =?us-ascii?Q?lWr3MEgVhPhAu/OgEaoGjXhkUNGD+730VlgI7NbuzwnUH8g4IvtSYY5G2MMi?=
 =?us-ascii?Q?7G+u/UNz3g7WXP45HotZrJNfGrtcpVqzn8IEEMdFloXFjnsJIj+dGHi8GUpe?=
 =?us-ascii?Q?j4WSpLqAP64j0jBldW0MKbLBIkN78AgbS2eEum4LsgCRxD4+UqtEF1wj0ZFD?=
 =?us-ascii?Q?2S+kbomgzHmhS5qo4RuWnMBiYlbnKVU9StP0Vbcfe8LGqdxQ+AmT7ube+n8U?=
 =?us-ascii?Q?pUYldFJVcbKzNDnOqmna/KVhOPqYZ/29+5xy0VWoY0LCJcYz0q7oRx/V2uVi?=
 =?us-ascii?Q?ruC+UeUHpuNFYQ+0+qaN3iRb/O4lUODk/0+MnTdCfXCt7V+xyGVMhFn9lGIy?=
 =?us-ascii?Q?CAIVzzZSwoShKt4F0hufoLibU9Xci1zBOXdx+Uwc5GPQwSTCAve+fewvpPDu?=
 =?us-ascii?Q?G1h87PoXJl34pP0m8RTQlNuCr0H8EMEPmJ1r4wYoayedCVwFlal4q8CgidR+?=
 =?us-ascii?Q?KNa/lC4OlH+N8DZbQdEd1/Y96tqSr+9emoXDOynXMe/EmwloTAuH795L32fG?=
 =?us-ascii?Q?TeH9UFGCVgJKcoubAN0G6z9KFrQFReYSTKUzt+T1dunaFbYiil9x3+bPlht9?=
 =?us-ascii?Q?Lp25n4X9aZ2v+wo9xWNnBIHLRArENOfDBFHtacqwasM65DhUXnuaQW3b/BY+?=
 =?us-ascii?Q?aL3DfuEpS+TbKDUJ0XdBOm4yBw8LgAf1b2BLoSygqiPbgs10qFIHojLoKzt9?=
 =?us-ascii?Q?/GJljRe1v1MThTlIRP++Uhm523EYOYupLJVGlyz4f+X9Wbm3M6FJBXksMP3K?=
 =?us-ascii?Q?9LDizqv+sbqguCjxw/xxMnCcoB1fxKzTBnxd26YnyZ+PDO2mxLqP62QDGucc?=
 =?us-ascii?Q?bBtzM2r4QvulpyRY3cShHE7g7GhEDk8L8y4cWgb6dPtpDBSLNEjjVUWpiU/v?=
 =?us-ascii?Q?tiHM2SCPaVgHfMSjd8nj/p4bHW+FCbDu0VqmSfVcdPBxp5VV2Fm3Ik4gH1Lx?=
 =?us-ascii?Q?4eukSGPDbB9774cb4+2LzXNxyQzmDH/uvZEIqd00CkX72KsoKWnn14UmFrmB?=
 =?us-ascii?Q?43rfa/XXIreIRuft7uUUJ/rxERt5BL6VlF0yZXtuo2lMhWpzE95pEnrZM2b3?=
 =?us-ascii?Q?aSRYPJvcP3Z5AHWfAVQl5wFq1sGeWn5zMgHcW7POIqNXs3iOl2F9H8DW34fG?=
 =?us-ascii?Q?6Q=3D=3D?=
Content-Type: multipart/alternative;
	boundary="_000_MW3PR18MB35132635A32673EF95ACA82B8B4C2MW3PR18MB3513namp_"
MIME-Version: 1.0
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: 
	NWil+liDJxUvaKPn7ZgY25Bs8TJEBk6ZEaTAIIzwsytMKiYJ/o0vmkrW/b9lHa+1Qdq6PnXBxKW2v3urELHM45s8ol1T3oBvVJonywpFygT99NsGOTY0rNyIOdkXMjhExkjGB2WM2xJDRUmEHnJ1LwMdZH92FyYf9rGCDAJrj2262w+D4HiL1HNOty7ixluJqH5VSspzNqIzWSMxpm1WGEkT5pHmbDd16Cdmu2vf5mfvPQUW4oS1X4I4Kjbamu0GlEbe9kuMSV6QEsT1tUpVwoXf7E+SX+r0uzDy36De3F2siL28lQm3qqfjo9Xo6EB97kdntZ/L0MApOBNEmSvvJGMm+3KFC3UpX4g4AjdqqRK88aJKqyXS9f8inNY5ptBcQC10Z2gJAJlTRLIUcU4SMaJv4cGMFBUJBEgT6NZ34nytJebGkklT+nga+zC8lo6xDlxPjH6TRK0Epje5VNYa4azgbs1wcSMhcuzyIxleFCGijKK5V7nye7Nuk0yDz184cEBCtUyeA0n09cW7M1oPWKikm1bkmqsJ/aouzX4/0mxIxxCi/PjXay9PJirR1D2i/RRJ8r5P7Tnpd3SL3k9HNh9rm+aCri22TBW8W+kaLNOlq/Qcoz5/vmNUA17VHSvvSeFlSMG072marsG+vXnBxQ==
X-OriginatorOrg: belden.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW3PR18MB3513.namprd18.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4a809c21-b3cf-4165-a03f-08dcf28f2753
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Oct 2024 11:46:23.3428
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 0f7367b1-44f7-45a7-bb10-563965c5f2e5
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: y+mftSOcnSd5n8qfCGDQDSqU9oqZff2+MK1PMAbAn8cOHmgOPYPoZHGZxDi0UCvGCDdxVknMlWSTypHYXc3r+TnU+tWHqSPIUegV1a0VYbA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR18MB5593
X-Proofpoint-GUID: 6YsZZqb91wqXe5_B_hsnEZSCEZhaYgoR
X-Proofpoint-ORIG-GUID: 6YsZZqb91wqXe5_B_hsnEZSCEZhaYgoR
Subject: Re:  [yocto] reading tgz file and uncompress in rootfs
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1011 impostorscore=0
 bulkscore=0 mlxlogscore=999 lowpriorityscore=0 suspectscore=0 mlxscore=0
 phishscore=0 malwarescore=0 spamscore=0 adultscore=0 priorityscore=1501
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2409260000
 definitions=main-2410220075
X-Proofpoint-TriggeredRule: module.spam.rule.outbound_notspam
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 22 Oct 2024 11:46:34 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64083

--_000_MW3PR18MB35132635A32673EF95ACA82B8B4C2MW3PR18MB3513namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

By default, Yocto uncompress files with an extension use for compression (i=
nclude it tgz), so any file that you add to the SRC_URI, Yocto will do the =
uncompress in the do_unpack task. Because do_install depends on do_unpack, =
when you want to use that task, you will already have the uncompress data a=
vailable, and you only need to copy into the right folder.

You can see the whole list of tasks that your recipe has with the command:

bitbake <name_recipe> -c do_listtasks

After that you can use the do_install task to send the files that you need =
to the destination rootfs using the ${WORKDIR}, ${S} and ${D} variables of =
bitbake. You can see the openemebedded-core layer for some inspiration. If =
you want to see what exactly is in the WORKDIR directory, you will get the =
whole path with the following command:

bitbake -e <name_recipe> | grep ^WORKDIR=3D | sed -n -e 's/^.*WORKDIR=3D"//=
p' | sed -n -e 's/".*$//p'

PS: Please take into consideration that you should never use absolute paths=
 in Yocto and use the predetermine variables for that (${WORKDIR}, ${S}, ${=
D}, etc)

Sincerely,


Jairo R. Mejia Aponte | Embedded Software Linux Junior Engineer

Netmodule | Hirschmann Automation & Control GmbH

Location Eschborn | Frankfurter Str. 10-14 | 65760 Eschborn | Germany

jairo.mejiaaponte@belden.com<mailto:jairo.mejiaaponte@belden.com> | www.net=
module.com<http://www.netmodule.com/> | www.belden.com<http://www.belden.co=
m/>

________________________________
From: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> on behalf=
 of umeshyv@gmail.com <umeshyv@gmail.com>
Sent: 21 October 2024 5:54 PM
To: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org>
Subject: [EXTERNAL] [yocto] reading tgz file and uncompress in rootfs


External Message:Use caution before opening links or attachments

Hi, I have requirement where recipe file reads set of .tgz files and it sho=
uld store in a location in rootfs and untar them(on freescale board). Can y=
ou please show some pointers.

SUMMARY =3D " Tools"
LICENSE =3D "CLOSED"

FILESEXTRAPATHS_prepend :=3D "${THISDIR}/files:"

SRCREV =3D "${AUTOREV}"

SRC_URI =3D "file://tool1.tgz
file://tool2.tgz<file://tool2.tgz/>
file://tool3.tgz<file://tool3.tgz/>
file://tool4.tgz<file://tool4.tgz/>"

do_install () {
install -d ${IMAGE_ROOTFS}/usr/share/sigma-tools

for file in ${WORKDIR}/.tgz;do

tar -xvzf $file -C ${IMAGE_ROOTFS}/usr/share/<folder>

done

Alternatively instead of for loop tried below

tar -xvzf file://tool1.tgz -C ${IMAGE_ROOTFS}/usr/share/<folder>
tar -xvzf file://tool2.tgz -C ${IMAGE_ROOTFS}/usr/share/<folder>
tar -xvzf file://tool3.tgz -C ${IMAGE_ROOTFS}/usr/share/<folder>
tar -xvzf file://tool4.tgz -C ${IMAGE_ROOTFS}/usr/share/<folder>

But when I build following is the error

DEBUG: Python function extend_recipe_sysroot finished

DEBUG: Executing shell function do_install
tar (child): Cannot connect to file: resolve failed
gzip: stdin: unexpected end of file
tar: Child returned status 128
tar: Error is not recoverable: exiting now

Can you please suggest to resolve errors and provide solutions

Thanks

**********************************************************************
DISCLAIMER:
Privileged and/or Confidential information may be contained in this message=
. If you are not the addressee of this message, you may not copy, use or de=
liver this message to anyone. In such event, you should destroy the message=
 and kindly notify the sender by reply e-mail. It is understood that opinio=
ns or conclusions that do not relate to the official business of the compan=
y are neither given nor endorsed by the company. Thank You.

--_000_MW3PR18MB35132635A32673EF95ACA82B8B4C2MW3PR18MB3513namp_
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
By default, Yocto uncompress files with an extension use for compression (i=
nclude it tgz), so any file that you add to the SRC_URI, Yocto will do the =
uncompress in the do_unpack task. Because
<b>do_install </b>depends on <b>do_unpack</b>, when you want to use that ta=
sk, you will already have the uncompress data available, and you only need =
to copy into the right folder.</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; c=
olor: rgb(0, 0, 0);">
You can see the whole list of tasks that your recipe has with the command:&=
nbsp;<br>
<br>
</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; white-space: pre;=
 font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helv=
etica, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);">
bitbake &lt;name_recipe&gt; -c do_listtasks</div>
<div id=3D"Signature" class=3D"elementToProof" style=3D"color: inherit;">
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);">
After that you can use the <b>do_install</b>&nbsp;task to send the files th=
at you need to the destination rootfs using the
<b>${WORKDIR}</b>, <b>${S}</b>&nbsp;and <b>${D}</b>&nbsp;variables of bitba=
ke. You can see the openemebedded-core layer for some inspiration. If you w=
ant to see what exactly is in the WORKDIR directory, you will get the whole=
 path with the following command:&nbsp;<br>
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);">
bitbake -e &lt;name_recipe&gt; | grep ^WORKDIR=3D | sed -n -e 's/^.*WORKDIR=
=3D&quot;//p' | sed -n -e 's/&quot;.*$//p'</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);">
PS: Please take into consideration that you should <b>never </b>use absolut=
e paths in Yocto and use the predetermine variables for that (<b>${WORKDIR}=
</b>,
<b>${S}</b>, <b>${D}</b>, etc)</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);">
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
Jairo R. Mejia Aponte</b>&nbsp;| Embedded Software Linux Junior Engineer&nb=
sp;</span></p>
<p style=3D"text-align: left; text-indent: 0px; background-color: white; ma=
rgin: 0px;">
<span style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService,=
 Calibri, Helvetica, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);">Net=
module | Hirschmann Automation &amp; Control GmbH</span></p>
<p style=3D"text-align: left; text-indent: 0px; background-color: white; ma=
rgin: 0px;">
<span style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService,=
 Calibri, Helvetica, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);">Loc=
ation Eschborn | Frankfurter Str. 10-14 | 65760 Eschborn | Germany</span></=
p>
<p style=3D"text-align: left; text-indent: 0px; background-color: white; ma=
rgin: 0px;">
<span style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService,=
 Calibri, Helvetica, sans-serif; font-size: 11pt; color: rgb(23, 78, 134);"=
><a href=3D"mailto:jairo.mejiaaponte@belden.com" id=3D"OWA9fc0b973-da2f-053=
1-69f5-7cdfd8dc4d18" class=3D"OWAAutoLink" title=3D"mailto:jairo.mejiaapont=
e@belden.com" style=3D"color: rgb(23, 78, 134); margin-top: 0px; margin-bot=
tom: 0px;">jairo.mejiaaponte@belden.com</a>&nbsp;|
<a href=3D"http://www.netmodule.com/" target=3D"_blank" id=3D"OWA0f077db0-f=
78b-9e01-864f-201cf9b5cbd1" class=3D"OWAAutoLink" rel=3D"noopener noreferre=
r" data-ogsc=3D"rgb(12, 100, 192)" data-linkindex=3D"1" data-auth=3D"NotApp=
licable" style=3D"color: rgb(23, 78, 134); margin: 0px;">
www.netmodule.com</a>&nbsp;| <a href=3D"http://www.belden.com/" target=3D"_=
blank" id=3D"OWAd7747337-b288-36ea-a262-3211ced46b6a" class=3D"OWAAutoLink"=
 rel=3D"noopener noreferrer" data-ogsc=3D"rgb(12, 100, 192)" data-linkindex=
=3D"2" data-auth=3D"NotApplicable" style=3D"color: rgb(23, 78, 134); margin=
: 0px;">
www.belden.com</a></span></p>
</div>
<div id=3D"appendonsend"></div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> yocto@lists.yoctoproj=
ect.org &lt;yocto@lists.yoctoproject.org&gt; on behalf of umeshyv@gmail.com=
 &lt;umeshyv@gmail.com&gt;<br>
<b>Sent:</b> 21 October 2024 5:54 PM<br>
<b>To:</b> yocto@lists.yoctoproject.org &lt;yocto@lists.yoctoproject.org&gt=
;<br>
<b>Subject:</b> [EXTERNAL] [yocto] reading tgz file and uncompress in rootf=
s</font>
<div>&nbsp;</div>
</div>
<div>
<div><font face=3D"calibri light" size=3D"3" color=3D"red">
<p><b>External Message:</font><font face=3D"calibri light" size=3D"3" color=
=3D"red">Use caution before opening links or attachments</font></b></p>
<p></p>
</div>
<div>
<p style=3D"outline:none!important; margin:10px 0px 0px; padding:0px; color=
:#111111; font-family:-apple-system,BlinkMacSystemFont,'Segoe UI',Roboto,Ox=
ygen,Ubuntu,'Fira Sans','Droid Sans','Helvetica Neue',sans-serif; font-size=
:14px; font-style:normal; font-variant-ligatures:normal; font-variant-caps:=
normal; font-weight:400; letter-spacing:normal; orphans:2; text-align:left;=
 text-indent:0px; text-transform:none; widows:2; word-spacing:0px; white-sp=
ace:normal; background-color:#ffffff; text-decoration-style:initial; text-d=
ecoration-color:initial">
Hi, I have requirement where recipe file reads set of .tgz files and it sho=
uld store in a location in rootfs and untar them(on freescale board). Can y=
ou please show some pointers.</p>
<p style=3D"outline:none!important; margin:10px 0px 0px; padding:0px; color=
:#111111; font-family:-apple-system,BlinkMacSystemFont,'Segoe UI',Roboto,Ox=
ygen,Ubuntu,'Fira Sans','Droid Sans','Helvetica Neue',sans-serif; font-size=
:14px; font-style:normal; font-variant-ligatures:normal; font-variant-caps:=
normal; font-weight:400; letter-spacing:normal; orphans:2; text-align:left;=
 text-indent:0px; text-transform:none; widows:2; word-spacing:0px; white-sp=
ace:normal; background-color:#ffffff; text-decoration-style:initial; text-d=
ecoration-color:initial">
SUMMARY =3D &quot; Tools&quot;<br style=3D"outline:none!important">
LICENSE =3D &quot;CLOSED&quot;</p>
<p style=3D"outline:none!important; margin:10px 0px 0px; padding:0px; color=
:#111111; font-family:-apple-system,BlinkMacSystemFont,'Segoe UI',Roboto,Ox=
ygen,Ubuntu,'Fira Sans','Droid Sans','Helvetica Neue',sans-serif; font-size=
:14px; font-style:normal; font-variant-ligatures:normal; font-variant-caps:=
normal; font-weight:400; letter-spacing:normal; orphans:2; text-align:left;=
 text-indent:0px; text-transform:none; widows:2; word-spacing:0px; white-sp=
ace:normal; background-color:#ffffff; text-decoration-style:initial; text-d=
ecoration-color:initial">
FILESEXTRAPATHS_prepend :=3D &quot;${THISDIR}/files:&quot;</p>
<p style=3D"outline:none!important; margin:10px 0px 0px; padding:0px; color=
:#111111; font-family:-apple-system,BlinkMacSystemFont,'Segoe UI',Roboto,Ox=
ygen,Ubuntu,'Fira Sans','Droid Sans','Helvetica Neue',sans-serif; font-size=
:14px; font-style:normal; font-variant-ligatures:normal; font-variant-caps:=
normal; font-weight:400; letter-spacing:normal; orphans:2; text-align:left;=
 text-indent:0px; text-transform:none; widows:2; word-spacing:0px; white-sp=
ace:normal; background-color:#ffffff; text-decoration-style:initial; text-d=
ecoration-color:initial">
SRCREV =3D &quot;${AUTOREV}&quot;</p>
<p style=3D"outline:none!important; margin:10px 0px 0px; padding:0px; color=
:#111111; font-family:-apple-system,BlinkMacSystemFont,'Segoe UI',Roboto,Ox=
ygen,Ubuntu,'Fira Sans','Droid Sans','Helvetica Neue',sans-serif; font-size=
:14px; font-style:normal; font-variant-ligatures:normal; font-variant-caps:=
normal; font-weight:400; letter-spacing:normal; orphans:2; text-align:left;=
 text-indent:0px; text-transform:none; widows:2; word-spacing:0px; white-sp=
ace:normal; background-color:#ffffff; text-decoration-style:initial; text-d=
ecoration-color:initial">
SRC_URI =3D &quot;file://tool1.tgz<br class=3D"x_atl-forced-newline" style=
=3D"outline:none!important">
<a class=3D"x_external-link" href=3D"file://tool2.tgz/" target=3D"_blank" r=
el=3D"nofollow noopener" style=3D"outline:none!important; color:#0052cc">fi=
le://tool2.tgz</a><br class=3D"x_atl-forced-newline" style=3D"outline:none!=
important">
<a class=3D"x_external-link" href=3D"file://tool3.tgz/" target=3D"_blank" r=
el=3D"nofollow noopener" style=3D"outline:none!important; color:#0052cc">fi=
le://tool3.tgz</a><br class=3D"x_atl-forced-newline" style=3D"outline:none!=
important">
<a class=3D"x_external-link" href=3D"file://tool4.tgz/" target=3D"_blank" r=
el=3D"nofollow noopener" style=3D"outline:none!important; color:#0052cc">fi=
le://tool4.tgz</a>&quot;</p>
<p style=3D"outline:none!important; margin:10px 0px 0px; padding:0px; color=
:#111111; font-family:-apple-system,BlinkMacSystemFont,'Segoe UI',Roboto,Ox=
ygen,Ubuntu,'Fira Sans','Droid Sans','Helvetica Neue',sans-serif; font-size=
:14px; font-style:normal; font-variant-ligatures:normal; font-variant-caps:=
normal; font-weight:400; letter-spacing:normal; orphans:2; text-align:left;=
 text-indent:0px; text-transform:none; widows:2; word-spacing:0px; white-sp=
ace:normal; background-color:#ffffff; text-decoration-style:initial; text-d=
ecoration-color:initial">
do_install () {<br style=3D"outline:none!important">
<tt style=3D"outline:none!important">install -d ${IMAGE_ROOTFS}/usr/share/s=
igma-tools</tt></p>
<p style=3D"outline:none!important; margin:10px 0px 0px; padding:0px; color=
:#111111; font-family:-apple-system,BlinkMacSystemFont,'Segoe UI',Roboto,Ox=
ygen,Ubuntu,'Fira Sans','Droid Sans','Helvetica Neue',sans-serif; font-size=
:14px; font-style:normal; font-variant-ligatures:normal; font-variant-caps:=
normal; font-weight:400; letter-spacing:normal; orphans:2; text-align:left;=
 text-indent:0px; text-transform:none; widows:2; word-spacing:0px; white-sp=
ace:normal; background-color:#ffffff; text-decoration-style:initial; text-d=
ecoration-color:initial">
for file in ${WORKDIR}/.tgz;do</p>
<p style=3D"outline:none!important; margin:10px 0px 0px; padding:0px; color=
:#111111; font-family:-apple-system,BlinkMacSystemFont,'Segoe UI',Roboto,Ox=
ygen,Ubuntu,'Fira Sans','Droid Sans','Helvetica Neue',sans-serif; font-size=
:14px; font-style:normal; font-variant-ligatures:normal; font-variant-caps:=
normal; font-weight:400; letter-spacing:normal; orphans:2; text-align:left;=
 text-indent:0px; text-transform:none; widows:2; word-spacing:0px; white-sp=
ace:normal; background-color:#ffffff; text-decoration-style:initial; text-d=
ecoration-color:initial">
tar -xvzf $file -C ${IMAGE_ROOTFS}/usr/share/&lt;folder&gt;</p>
<p style=3D"outline:none!important; margin:10px 0px 0px; padding:0px; color=
:#111111; font-family:-apple-system,BlinkMacSystemFont,'Segoe UI',Roboto,Ox=
ygen,Ubuntu,'Fira Sans','Droid Sans','Helvetica Neue',sans-serif; font-size=
:14px; font-style:normal; font-variant-ligatures:normal; font-variant-caps:=
normal; font-weight:400; letter-spacing:normal; orphans:2; text-align:left;=
 text-indent:0px; text-transform:none; widows:2; word-spacing:0px; white-sp=
ace:normal; background-color:#ffffff; text-decoration-style:initial; text-d=
ecoration-color:initial">
done</p>
<p style=3D"outline:none!important; margin:10px 0px 0px; padding:0px; color=
:#111111; font-family:-apple-system,BlinkMacSystemFont,'Segoe UI',Roboto,Ox=
ygen,Ubuntu,'Fira Sans','Droid Sans','Helvetica Neue',sans-serif; font-size=
:14px; font-style:normal; font-variant-ligatures:normal; font-variant-caps:=
normal; font-weight:400; letter-spacing:normal; orphans:2; text-align:left;=
 text-indent:0px; text-transform:none; widows:2; word-spacing:0px; white-sp=
ace:normal; background-color:#ffffff; text-decoration-style:initial; text-d=
ecoration-color:initial">
Alternatively instead of for loop tried below</p>
<div class=3D"x_code x_panel" style=3D"outline:none!important; margin:9px 0=
px; padding:0px; border:1px solid #c1c7d0; background:#f4f5f7; font-size:12=
px; line-height:1.33333; font-family:monospace; border-radius:3px; color:#1=
11111; font-style:normal; font-variant-ligatures:normal; font-variant-caps:=
normal; font-weight:400; letter-spacing:normal; orphans:2; text-align:left;=
 text-indent:0px; text-transform:none; widows:2; word-spacing:0px; white-sp=
ace:normal; text-decoration-style:initial; text-decoration-color:initial">
<div class=3D"x_codeContent x_panelContent" style=3D"outline:none!important=
; margin:0px; padding:9px 12px">
<pre class=3D"x_code-none" style=3D"outline:none!important; margin:0px; pad=
ding:0px; counter-reset:lines 0; max-height:30em; overflow:auto; white-spac=
e:pre-wrap">tar -xvzf file://tool1.tgz -C ${IMAGE_ROOTFS}/usr/share/&lt;fol=
der&gt;
tar -xvzf file://tool2.tgz -C ${IMAGE_ROOTFS}/usr/share/&lt;folder&gt;
tar -xvzf file://tool3.tgz -C ${IMAGE_ROOTFS}/usr/share/&lt;folder&gt;
tar -xvzf file://tool4.tgz -C ${IMAGE_ROOTFS}/usr/share/&lt;folder&gt;</pre>
</div>
</div>
<p style=3D"outline:none!important; margin:10px 0px 0px; padding:0px; color=
:#111111; font-family:-apple-system,BlinkMacSystemFont,'Segoe UI',Roboto,Ox=
ygen,Ubuntu,'Fira Sans','Droid Sans','Helvetica Neue',sans-serif; font-size=
:14px; font-style:normal; font-variant-ligatures:normal; font-variant-caps:=
normal; font-weight:400; letter-spacing:normal; orphans:2; text-align:left;=
 text-indent:0px; text-transform:none; widows:2; word-spacing:0px; white-sp=
ace:normal; background-color:#ffffff; text-decoration-style:initial; text-d=
ecoration-color:initial">
But when I build following is the error</p>
<p style=3D"outline:none!important; margin:10px 0px 0px; padding:0px; color=
:#111111; font-family:-apple-system,BlinkMacSystemFont,'Segoe UI',Roboto,Ox=
ygen,Ubuntu,'Fira Sans','Droid Sans','Helvetica Neue',sans-serif; font-size=
:14px; font-style:normal; font-variant-ligatures:normal; font-variant-caps:=
normal; font-weight:400; letter-spacing:normal; orphans:2; text-align:left;=
 text-indent:0px; text-transform:none; widows:2; word-spacing:0px; white-sp=
ace:normal; background-color:#ffffff; text-decoration-style:initial; text-d=
ecoration-color:initial">
DEBUG: Python function extend_recipe_sysroot finished</p>
<div class=3D"x_table-wrap" style=3D"outline:none!important; margin:0px; pa=
dding:0px; color:#111111; font-family:-apple-system,BlinkMacSystemFont,'Seg=
oe UI',Roboto,Oxygen,Ubuntu,'Fira Sans','Droid Sans','Helvetica Neue',sans-=
serif; font-size:14px; font-style:normal; font-variant-ligatures:normal; fo=
nt-variant-caps:normal; font-weight:400; letter-spacing:normal; orphans:2; =
text-align:left; text-indent:0px; text-transform:none; widows:2; word-spaci=
ng:0px; white-space:normal; background-color:#ffffff; text-decoration-style=
:initial; text-decoration-color:initial">
<table class=3D"x_confluenceTable" style=3D"outline:none!important; border-=
collapse:collapse; margin:5px 0px 5px 2px; width:auto; word-break:break-all=
">
<tbody style=3D"outline:none!important">
<tr style=3D"outline:none!important">
<td class=3D"x_confluenceTd" style=3D"outline:none!important; border:1px so=
lid #c1c7d0; padding:3px 4px">
DEBUG: Executing shell function do_install</td>
</tr>
<tr style=3D"outline:none!important">
<td class=3D"x_confluenceTd" style=3D"outline:none!important; border:1px so=
lid #c1c7d0; padding:3px 4px">
tar (child): Cannot connect to file: resolve failed</td>
</tr>
<tr style=3D"outline:none!important">
</tr>
<tr style=3D"outline:none!important">
<td class=3D"x_confluenceTd" style=3D"outline:none!important; border:1px so=
lid #c1c7d0; padding:3px 4px">
gzip: stdin: unexpected end of file</td>
</tr>
<tr style=3D"outline:none!important">
<td class=3D"x_confluenceTd" style=3D"outline:none!important; border:1px so=
lid #c1c7d0; padding:3px 4px">
tar: Child returned status 128</td>
</tr>
<tr style=3D"outline:none!important">
<td class=3D"x_confluenceTd" style=3D"outline:none!important; border:1px so=
lid #c1c7d0; padding:3px 4px">
tar: Error is not recoverable: exiting now</td>
</tr>
</tbody>
</table>
</div>
<p style=3D"outline:none!important; margin:10px 0px 0px; padding:0px; color=
:#111111; font-family:-apple-system,BlinkMacSystemFont,'Segoe UI',Roboto,Ox=
ygen,Ubuntu,'Fira Sans','Droid Sans','Helvetica Neue',sans-serif; font-size=
:14px; font-style:normal; font-variant-ligatures:normal; font-variant-caps:=
normal; font-weight:400; letter-spacing:normal; orphans:2; text-align:left;=
 text-indent:0px; text-transform:none; widows:2; word-spacing:0px; white-sp=
ace:normal; background-color:#ffffff; text-decoration-style:initial; text-d=
ecoration-color:initial">
Can you please suggest to resolve errors and provide solutions</p>
<p style=3D"outline:none!important; margin:10px 0px 0px; padding:0px; color=
:#111111; font-family:-apple-system,BlinkMacSystemFont,'Segoe UI',Roboto,Ox=
ygen,Ubuntu,'Fira Sans','Droid Sans','Helvetica Neue',sans-serif; font-size=
:14px; font-style:normal; font-variant-ligatures:normal; font-variant-caps:=
normal; font-weight:400; letter-spacing:normal; orphans:2; text-align:left;=
 text-indent:0px; text-transform:none; widows:2; word-spacing:0px; white-sp=
ace:normal; background-color:#ffffff; text-decoration-style:initial; text-d=
ecoration-color:initial">
Thanks</p>
</div>
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

--_000_MW3PR18MB35132635A32673EF95ACA82B8B4C2MW3PR18MB3513namp_--

