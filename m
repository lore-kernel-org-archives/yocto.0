Return-Path: <Qi.Chen@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7A84CC54EBD
	for <webhook@archiver.kernel.org>; Thu, 12 Jan 2023 08:16:46 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web11.49990.1673511396863697482
 for <yocto@lists.yoctoproject.org>;
 Thu, 12 Jan 2023 00:16:37 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=TklAf28D;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.178.238, mailfrom: prvs=037676116e=qi.chen@windriver.com)
Received: from pps.filterd (m0250811.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 30C7cF51020672
	for <yocto@lists.yoctoproject.org>; Thu, 12 Jan 2023 08:16:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com; h=from : to :
 subject : date : message-id : references : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=PPS06212021;
 bh=AyIPSnCRUYimjmiMGs5DMeCUItjGsO/tlkrcVVVBITo=;
 b=TklAf28DxjD47m2OuxLJc0ape6L4qH5riuUj1FJwBZ3gZ1H7hci7b3CXylfYviGCCNq6
 U4Z8awVJuNqye/xQngNcI6lhmYAizV48J0vPma//SS++LP2bWbfXBom5vAgvoxh353++
 cXRD+vJicpC8a1QLNYarcQNMr/ine/YovOQ89jsGHR4/Ew8FeVh5hLVlBkGbYVrh7fCp
 LOGdPVu/AMqsZUXQmb9aijzKbPBQMXSLqHBYSP/5T+9SXDJJmVYtU5Av3ZEInvY4Zwxt
 FOcIVp81oyDPJyXxLcA37VpziXxA+gLQfdT4QktXfYWyRg6/aKjjW4q9XtXjlWmWcxPZ WA== 
Received: from nam11-bn8-obe.outbound.protection.outlook.com (mail-bn8nam11lp2169.outbound.protection.outlook.com [104.47.58.169])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3n1k61h4x6-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <yocto@lists.yoctoproject.org>; Thu, 12 Jan 2023 08:16:35 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cpK/bDgEC1tiE5J2zYu/0nEJifwn9seW21j5apKKZ0kVIl1xIEx2AK50Mb9gQUL8mKS8LOwGSV7+Ph8s6lfcGOnTUAQboWk5fry8ptcTLWlMSWJrxMQdzjnEBP2eR2XrirKzfFZSilBwbDGPZq3dG/PFsqTjsKb6mnfFY4Cdsy3J4+/VgZ+tD5JIiOA4O0gLIiuShi+o7RNhCq8OSoGIZmsRfbvARgzQ82Kq/AsnbrVV0/crrlQCQ1Bui4mm/d8piP+FiRToQDR7kPgOLKH334oFvb19LjsZiMQwGrd/gqT5KnrN0JEa4wpoxD2qJ448G54nmkxOl7iO9j+opLSe2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AyIPSnCRUYimjmiMGs5DMeCUItjGsO/tlkrcVVVBITo=;
 b=h8dEPcVav/GygyvNwkkof+pvzy5oWH1i3vYQYnInQqqXVdL8i9UEl9KA3BgQWErWosvIwd8pBIVUs2L1RtFvndnXoWfClt2SXEcf7W02YFN91T1S0jpBS1xqIA0MOkDWPkll2pTuJ30GXSw+GeU22uF5zFls3qR+JTXNKppruAimV5PyoWP1kvmgp1PcAISBWcv/IPRu0YP/LhhEPcfi5eACgZk7Hk7JiRJwRrb/i2I1zmNoiyewfOf+WFEBR17XA9GCcwqZcp1EIZ5F2G8caWH1eEDfkxBzR0PO8Sr5Ks/qRZ0Fg2+6E3cpxC1EJa7YH1SAoQeX4EDwEeFkEDSA8Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from CO6PR11MB5602.namprd11.prod.outlook.com (2603:10b6:303:13a::5)
 by SA1PR11MB7062.namprd11.prod.outlook.com (2603:10b6:806:2b3::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5986.18; Thu, 12 Jan
 2023 08:16:32 +0000
Received: from CO6PR11MB5602.namprd11.prod.outlook.com
 ([fe80::3b28:4c3d:1225:fff7]) by CO6PR11MB5602.namprd11.prod.outlook.com
 ([fe80::3b28:4c3d:1225:fff7%9]) with mapi id 15.20.6002.013; Thu, 12 Jan 2023
 08:16:32 +0000
From: "Chen, Qi" <Qi.Chen@windriver.com>
To: "Chen, Qi" <Qi.Chen@windriver.com>,
        "yocto@lists.yoctoproject.org"
	<yocto@lists.yoctoproject.org>
Subject: RE: [yocto] [meta-security][PATCH] openscap: add libpcre DEPEDNS to
 fix do_configure failure
Thread-Topic: [yocto] [meta-security][PATCH] openscap: add libpcre DEPEDNS to
 fix do_configure failure
Thread-Index: AQHY/7hLy7zO7tqRw0Opf7q0BISo066avOlQ
Date: Thu, 12 Jan 2023 08:16:32 +0000
Message-ID: 
 <CO6PR11MB5602D9E4AD419E17346CD764EDFD9@CO6PR11MB5602.namprd11.prod.outlook.com>
References: <20221124035311.87684-1-Qi.Chen@windriver.com>
In-Reply-To: <20221124035311.87684-1-Qi.Chen@windriver.com>
Accept-Language: en-US, zh-CN
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CO6PR11MB5602:EE_|SA1PR11MB7062:EE_
x-ms-office365-filtering-correlation-id: f557b7af-a979-4eb8-888b-08daf475506e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 HgqtHFMNUmXPE7GiNxJkeH6QqllBHsd8ZSYja7mVYz/y1PxDOBxdGmoEZaWcW1YQ32F9i/ZQ4K9PptwOYqUFDnWwuHeXfOjCLZVl+2f8/Yxed3ZxAaQrZoxYyhg166X6DFzf93AijQ7WOtRSOZg0lgElZWkyQcaxIfpH2pDi5op2zG9hWFduW/HTAt4v/uGxZdZG8V2Wk4zAJgFZ0HA3Bi352blPKJOnqO+hBw2NH6js8p+URcqcm5nZ0N8U4fiTym3EXpChJe3Rvbi/fHwxV/Xwbz3wixiiKSkIK1rQkl23ojApbPhhOFdj9iZLBGZvEtNdKvCDE3ThbuqX3YBb78LC4oDr7qllVYyKaS6tZ0wdPWKe5z3/N64/cFDaiefqkgvZ8hOKo0IZgubeLcGlplAbbf8THIRzifSiiRpSZ3AZxNtSpFrG3MQL7RRAAYv2uQVQSO73NGPnUktH+tZe1EHpk5mI3wLkDsvI8c7jM20z2GoT0aQ5tDB0OM/8SH5mmMK2axHgnCnvqnaIu93ESGLj+hFQrIo0AnHcKlqSQ30K/n6CEBlTUbbXVhjh2jxPAIdTWP9w7bnZcHwycGXFWMKVRRSbPCmVLhgUSO3x3L99mQ/2pmgMD9Y4ujsXzUPPe25Tmt+I8k9xZxvll8+FMqevisholsd2g/WemV+BnCMJTC43h2584Mk38hCNLteOLuIMrBnYpMWnk1Fhi0vftG7pv3wjqFcNGVn60gKiDCg=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO6PR11MB5602.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(376002)(136003)(346002)(39850400004)(366004)(396003)(451199015)(83380400001)(53546011)(6506007)(122000001)(5660300002)(52536014)(8936002)(41300700001)(38070700005)(55016003)(33656002)(66556008)(478600001)(110136005)(76116006)(8676002)(2906002)(86362001)(64756008)(66446008)(7696005)(71200400001)(66476007)(38100700002)(66946007)(15650500001)(9686003)(186003)(26005)(316002);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?PTf2UB+9wL4Nh0IthAizJOEeOHHLgY+pBWNXyT29sZXmpk8eV/5LeJ/bEaAy?=
 =?us-ascii?Q?7DTe7uFGyLu2Brb+JWlwGxqmEz3iWvvFx6CXg1qdSTLd3Zg3JSW/l4axjacX?=
 =?us-ascii?Q?8tTXLWleDygOaa4YEUDIMXiAnks/2KqNN69JvYkODDYhC8aHAyoGrfuTFi3A?=
 =?us-ascii?Q?V6k8F+oMq2UChXxdatw/Hj8C8EiMmiymyf9lXVt+0MGViIXrZ2QC9UvwvvMg?=
 =?us-ascii?Q?ndSjKzG3gOKqjaF3XLCY0rktkUjWYNKPKHwIS5HBY/N08btNM+b6I+4qWTgM?=
 =?us-ascii?Q?EpNLzgvkxdfv5y8n6mWZ64KX5Rocp4Z7fVQtbLoUlRrZab9OADXXW/aQjEog?=
 =?us-ascii?Q?/mXSmfcM7nU2Otp331UHAvZldN6FfLcnxEbYn63vpU5VmL6xbdpDY/+YB7em?=
 =?us-ascii?Q?yqVfACyp7JI4dyfW6QRraX4sbEs0ljzoI1WbRKP31bAYArrH3BZNY3H5h1tM?=
 =?us-ascii?Q?SrDpUl4sSTaGegmxJ35oXa2Qx94a0DuSuqKzboeB37ZGXGtXax0oyvNCuOt/?=
 =?us-ascii?Q?nZDBpQukmdQ+Iz7H6IpBq5ON2wKcVt4AETJWSDrj8Rd1JZU+D1zrh2bYSLQT?=
 =?us-ascii?Q?MtJNEqmVQH+ljHy3O79E6DTdPsbs2sIAoNdPRfTNMgjaF5ScGDg4Mgn6lrF2?=
 =?us-ascii?Q?NTk6CcjlfdH3HeYO+r89XUYa7J9OfYZjRMccdvp2h5nnTxkP6k7fqregMNig?=
 =?us-ascii?Q?wR307eMJlDNMUpe1qDjpM9Ynff+iFEfsKgAuPxzo5nOPbVwLncv78NK3RCYy?=
 =?us-ascii?Q?QxKUvrwL4USMjGlKnOh7apPckX1cRBqX02qX6SK+5le6Lj2MjbDkwkhgKj8s?=
 =?us-ascii?Q?PEZKaAyUhKT5OdBCHPuhcWuuWWovICRw7Z9GEe0GVRM/ZBekZWaGfQ7FG0pR?=
 =?us-ascii?Q?e92q9Ak6PjnsDdwwiV6OiZFbbK3QeCY4AX03vgwPUVVuNYFM3taBR4n+/tJH?=
 =?us-ascii?Q?XI2ni2ohp7c2eeVSuZj8Mi3p6QiAQpNdo9m5g0aE/WtUY1D5J7apsTjolTjJ?=
 =?us-ascii?Q?WJQfjImtDzGheC0DRsnNqX9jLx5ul+K26Rs5N/LO/NrlG2EOGwp3Y8kzEWTR?=
 =?us-ascii?Q?Y9A26CUFOIR69SuMFjMKgewcb2rZGd0r6Y3IYKPqPbjC7SBS8yn15BNXTr/B?=
 =?us-ascii?Q?LnOODPgOxXEbcfoGTORlkFZpY2JcrYStKcIrowGdWHM5btuU4mEGTGBdjVn0?=
 =?us-ascii?Q?qahAKjHoDTWo/eUSCJ/sDwx9/h+HEuBBY4K373SuhkG/AQYxSF9AYU0ufihu?=
 =?us-ascii?Q?9b0JN1M/P6q1TTDhfsC9Z/FSUHAFsHHroiUciPIVPBcyBDUTQyHs0h5Z0gYm?=
 =?us-ascii?Q?8HfU8pVqRsZ5up/QgoM2Zp7xYNAX7s5W+LMVyV4VrljfqzkxeobycTMAGO2/?=
 =?us-ascii?Q?S+zxpvLh5o1Stb2krc2UBPapZb8tQUhSE6WlubauCcQCK86wMyzhZt0XfkGI?=
 =?us-ascii?Q?woWIDZlB6q8p8JNqmU/ywiF4i6Jl3LgIqikuNPx6YV881rD6iEqBc2DThJCB?=
 =?us-ascii?Q?eJnJifPIWQ+3a+oc9F1PF7pNBzMqsNqRlpZuRGU4U6tMOOnNTXsN1eWdd0Jq?=
 =?us-ascii?Q?Rw3j9gIJ9w2ms9aFJn2SQINbg282f8XPO/84koe5?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO6PR11MB5602.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f557b7af-a979-4eb8-888b-08daf475506e
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Jan 2023 08:16:32.3649
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vMjXL+Y4UJvf62Q/ILEF1fI1NSgUG39rxZsMKfRPf0aJWi9wD0emx5C1PQ7trrE3bG3loNAaedrUKcAUTHxOBQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB7062
X-Proofpoint-GUID: uTtJz_WNW_JCVmrO5JYO6vOeBA7fm6B8
X-Proofpoint-ORIG-GUID: uTtJz_WNW_JCVmrO5JYO6vOeBA7fm6B8
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.219,Aquarius:18.0.923,Hydra:6.0.545,FMLib:17.11.122.1
 definitions=2023-01-12_04,2023-01-11_03,2022-06-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0 malwarescore=0
 suspectscore=0 bulkscore=0 mlxlogscore=950 clxscore=1011
 priorityscore=1501 phishscore=0 lowpriorityscore=0 impostorscore=0
 spamscore=0 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2212070000 definitions=main-2301120057
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 12 Jan 2023 08:16:46 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58969

ping

-----Original Message-----
From: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> On Behalf=
 Of Chen Qi
Sent: Thursday, November 24, 2022 11:53 AM
To: yocto@lists.yoctoproject.org
Subject: [yocto] [meta-security][PATCH] openscap: add libpcre DEPEDNS to fi=
x do_configure failure

swig has switched to use libpcre2, we need to add libpcre to DEPENDS to avo=
id do_configure failure.

Signed-off-by: Chen Qi <Qi.Chen@windriver.com>
---
 .../recipes-openscap/openscap/openscap.inc                    | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/meta-security-compliance/recipes-openscap/openscap/openscap.in=
c b/meta-security-compliance/recipes-openscap/openscap/openscap.inc
index 4babcf9..e875227 100644
--- a/meta-security-compliance/recipes-openscap/openscap/openscap.inc
+++ b/meta-security-compliance/recipes-openscap/openscap/openscap.inc
@@ -6,8 +6,8 @@ HOME_URL =3D "https://www.open-scap.org/tools/openscap-base=
/"
 LIC_FILES_CHKSUM =3D "file://COPYING;md5=3Dfbc093901857fcd118f065f900982c2=
4"
 LICENSE =3D "LGPL-2.1-only"
=20
-DEPENDS =3D "dbus acl bzip2 pkgconfig gconf procps curl libxml2 libxslt li=
bcap swig"
-DEPENDS:class-native =3D "pkgconfig-native swig-native curl-native libxml2=
-native libxslt-native libcap-native"
+DEPENDS =3D "dbus acl bzip2 pkgconfig gconf procps curl libxml2 libxslt li=
bcap swig libpcre"
+DEPENDS:class-native =3D "pkgconfig-native swig-native curl-native libxml2=
-native libxslt-native libcap-native libpcre-native"
=20
 S =3D "${WORKDIR}/git"
=20
--
2.37.1


