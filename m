Return-Path: <lukasz.zemla@woodward.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C088EC27C79
	for <webhook@archiver.kernel.org>; Mon, 17 Jun 2024 17:07:27 +0000 (UTC)
Received: from mx0a-00246501.pphosted.com (mx0a-00246501.pphosted.com [205.220.165.109])
 by mx.groups.io with SMTP id smtpd.web11.62218.1718644043729658911
 for <yocto@lists.yoctoproject.org>;
 Mon, 17 Jun 2024 10:07:23 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@woodward.com header.s=woodward.com.07.14.2020 header.b=I1jBDbtk;
 dkim=fail reason="dkim: body hash did not verify" header.i=@WWDInc.onmicrosoft.com header.s=selector1-WWDInc-onmicrosoft-com header.b=LIzZJCfx;
 spf=pass (domain: woodward.com, ip: 205.220.165.109, mailfrom: lukasz.zemla@woodward.com)
Received: from pps.filterd (m0216728.ppops.net [127.0.0.1])
	by mx0a-00246501.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 45HFHY71025485
	for <yocto@lists.yoctoproject.org>; Mon, 17 Jun 2024 12:07:23 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=woodward.com; h=
	content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=woodward.com.07.14.2020; bh=K5gNaZwf
	ko4f01XY2A5cXmwcMJ2U58z36XjTJdlyfaM=; b=I1jBDbtkuu7NT63vHBX1OfjM
	IFat71Ze7K8gyqWpnCtGR0t3Y23eJz64FOTsYuvgxgCO+7WJCaY9CdaW+EH3NNiY
	pm3lPwOUDh7vV0JmYRbOb/xtoITc51uii/cxoiSoia0FJo77OdRdVBY27/1A+/WY
	XsCFiAXKB0F1RabGumqNLKMkTsYoOUwlggOeLGJkcKPO5eRIY7Vi+Sdxk/ded348
	55wl/0c4km6vNBhHiCw/WInB4zYHURI1TkFw1aHsMSUhC/4h6b7Om4xeaVkJcBs2
	O6ejc8g3+YVr73HDYZNB12kOnDRDAojYjtyEPSUD3uUTzoHHg8coInaXpd3QZA==
Received: from nam10-dm6-obe.outbound.protection.outlook.com (mail-dm6nam10lp2100.outbound.protection.outlook.com [104.47.58.100])
	by mx0a-00246501.pphosted.com (PPS) with ESMTPS id 3ytqnh8d04-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <yocto@lists.yoctoproject.org>; Mon, 17 Jun 2024 12:07:22 -0500 (CDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QI3mwYuT5ethxbPhabyqbU028G34Qa8Qz8W80NOj+62H4jO/FQsiMUS4IHkUMb5PMzuUVvItUHw3j0pC+mI/7mR/xIMR/EmeMq1qaOjo2s1KceuIcOunqZujxJILePBWZiDr6nldb66aVR8dL00JrLIgpW2L/izYXgG8u/jLSKkfQKfj2BV9ZyDgNkFjBYVwEijGPmWfuBu2Cz3o0pwlUe46RMf7IqDlNlgAX+1Z6JeDnWUDK750YJ3OkkjpCf2PPhPdAOUcgCnFvrHq/tXHig6dlMJNtTnV6A4I40SqXjCwN18bddimoX5RGJV3KcutKz3HL7Tn2NZ763Y/VpQkFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=knpDuXlHpf9/n067XEoo3lsij84TecHoKY7quVWBkvg=;
 b=UZwlr/BjKTgeoRc9VbcCB+KDM/IlSg8BynIv8ozmw8KHUtd7BU+DJJ5P33e2yXOCdf1DHyoregqjJHRcKH9YTjwf75RZ4yd3lZBhaGONIWfFwEL5W8IZ1vTyTevYDLaA07LO3AFs1go7zM6F0pnnG4QHK5Hut1Yyj8MqCwIAQtc2v+K/GqnY72HN2Lfk7ub6OEFNO/VRrp93JVzmaj+8Z6ypI8doHOUr0UaKkn2kQQyC+ylnpGlZ6GpLZr3VCq4Bj6SFqCEkY50Rh9iJRg/rALBvzxRmcYAqstgHCMeA+TqmC+AiecFGGDGqC1UPfeDW51UN+HnGtZtK2gfYVUbUmA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=woodward.com; dmarc=pass action=none header.from=woodward.com;
 dkim=pass header.d=woodward.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=WWDInc.onmicrosoft.com; s=selector1-WWDInc-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=knpDuXlHpf9/n067XEoo3lsij84TecHoKY7quVWBkvg=;
 b=LIzZJCfxQvZg4tASelAVwnn5me9+0TL48nHs3mnmPhB54XmXGJ9S44PC1eE4+k7NfUK0ltHUaFZmGb07FS6eMrY4av7tstSW06U1kgoazUS88vrUMu+CtK8ym/JU3GvIEo+K6LwSKfQc6FnEeWl+GxfRi9MhVCBGjyETU0ygzSw=
Received: from DM8PR11MB5669.namprd11.prod.outlook.com (2603:10b6:8:36::10) by
 MN0PR11MB6301.namprd11.prod.outlook.com (2603:10b6:208:3c3::8) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7677.30; Mon, 17 Jun 2024 17:07:18 +0000
Received: from DM8PR11MB5669.namprd11.prod.outlook.com
 ([fe80::e7be:d24:d106:ca27]) by DM8PR11MB5669.namprd11.prod.outlook.com
 ([fe80::e7be:d24:d106:ca27%5]) with mapi id 15.20.7677.030; Mon, 17 Jun 2024
 17:07:18 +0000
From: Lukasz Zemla <Lukasz.Zemla@woodward.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: bb.utils.contains() and 'inherit' issue
Thread-Topic: bb.utils.contains() and 'inherit' issue
Thread-Index: AdrA18nZbdRBs/dJT8CN9hbaF7PG+Q==
Date: Mon, 17 Jun 2024 17:07:18 +0000
Message-ID: 
 <DM8PR11MB5669244330546D6C5C985281EDCD2@DM8PR11MB5669.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM8PR11MB5669:EE_|MN0PR11MB6301:EE_
x-ms-office365-filtering-correlation-id: 38cd2785-80c5-47b9-21ca-08dc8eeff1f1
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230037|376011|1800799021|366013|38070700015;
x-microsoft-antispam-message-info: 
 =?us-ascii?Q?ChW5PgkT0buzhjpCidmHxHrJiVGch4ktJ9kmxPduD4qY3wKqH1Z2kEoPRFZN?=
 =?us-ascii?Q?YfEoxjxSFW12k2KrsB4G6HZpB2lKiOYTTByo65XVVQ4KGL6hPvTuj0O7uE47?=
 =?us-ascii?Q?ztmXCqiCA7+j28K++R3SgJeAGIEbCDH+DEE9HuBjf+0oI3KKsCJ74Bvk4+pQ?=
 =?us-ascii?Q?A5li+VLtPgUALCRJkLZEjXj5ok44J0iQPkH8mNaBtkIJTmZYR/XcLX5ND5WX?=
 =?us-ascii?Q?JL3y01Eg3ARszfjL3nK+MyFN3TKaT4169EWu8rlXQPj8t8U38y7On0rw4XuK?=
 =?us-ascii?Q?gj5FVVwFq9A3NA5Kedxzvfo2zKN4RNNtyVRuysyHHA5HlEA92qfQiqeyoIxS?=
 =?us-ascii?Q?IgVGC+c7vWdCSzNZjmlaMfxWDPGFHSkOMNd9lx+iL+4dIgFwx0O8DYRkxmxG?=
 =?us-ascii?Q?Kq12FZTcrlPEAT1VCo2cEmkycD+nlkDS/+d9o+1K9/PYb0QjECkp6eO8ESqk?=
 =?us-ascii?Q?4Q3NJyzNjemJN/tGLo5G8KEeCF81dqzwF1gqfdRs3EQoFb8XsCYJm6WghE8v?=
 =?us-ascii?Q?lq7Ou8kIc7YagFSs4o3kEh9OuauXgNs6T/YWusUjcP90v9WW+n4QxFLxBsQ9?=
 =?us-ascii?Q?5jH9jyku36xK8fYqqShlJp0Dk5m766HLDNMYn7Pa7x+upyYO/0d4jrnhkpLu?=
 =?us-ascii?Q?lXQQrqx9Wtb2a1b5Frs5khi6OGvlpLlJGKgHBFtSr/+Q420K3MS4Ot+Nu/jx?=
 =?us-ascii?Q?qEmWixSba5p7nPkx1UrskFBoar4jPKfLspjNLVQDv2rwJx9Q4JhusH/A7pZR?=
 =?us-ascii?Q?4KneTvKZ+fiLSFstrVpgFm4yUKgzcjdWhzWuxIfQuntKM37SuRfiiMYltNSS?=
 =?us-ascii?Q?No3NtboQkPW5naXnXlcLKrSRayM+24zcieGkc3SqdIbC97RzFugwLQkTfHI+?=
 =?us-ascii?Q?4TZbh0xDLpsFgUuwGkKT9B3jwCfuetkt/Fw4xxLfEqpxyq5TADm1l7gpbB3F?=
 =?us-ascii?Q?eJTjl7dPpliFKjIZOjle2YllXzCsq5IEiIFL/cPz+P47YDfrzV0/9Th3bp1U?=
 =?us-ascii?Q?rPffGBTMhozm5hP9itVilWeWXSfs+BcYMV3AYicXydRPkEVoKFz0UGTJ49XH?=
 =?us-ascii?Q?pJywYRNuokgkIXPlLZd0DTossFgB2nngCRgLmXnaGzm5gFRrkngo/xZiMhI+?=
 =?us-ascii?Q?zFpLiG/9g2wOQEZ2AEwaQfD4ARWxej6UURvTUXuRiKElug121sjs5570Nxz/?=
 =?us-ascii?Q?B6arIIGt+/b2yemQB42n4IyxAmlrUh3S0j/UbnkyE7/KWlTL+bqeH2zX+Tlj?=
 =?us-ascii?Q?5wnD22sBrVfFuYVyXmnl/DNhQXCPb3Tlhok1nSWmzPC0D9lueAyaRkYoDJdj?=
 =?us-ascii?Q?Fde/fga9Ct1G2TlKbTtR7PPmoINCE0AcONAs9FEXqFgF0ROrdfrzi0WzGZBv?=
 =?us-ascii?Q?rjdocSc=3D?=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM8PR11MB5669.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230037)(376011)(1800799021)(366013)(38070700015);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?jUtG67f5uDuiTfzsCOfibjlZWR7YBd7GQ0AQ2WF748nKbGmaJTzu8uGp/7VK?=
 =?us-ascii?Q?cicv4rapJ9+k2J81AvD9ckAQGYQCZPajsnTKhjPVdzJPtIBh8BO0M59zmk7g?=
 =?us-ascii?Q?od0TVsVX0IEcmy1u1JvPqfU52dMieQEfbCSY8hDNs2894XZW/LUjDXcdxab5?=
 =?us-ascii?Q?2USztt/j3X6y4jjI3g/EDonyYiaiWPq5Cr3LbVFuDegAn9+Gm5mvGxG81wb9?=
 =?us-ascii?Q?2dw56tiPFvC+9HxS4EVMUzMEN/R22MJ46mA5H6zUUTYuvXCL+uPI0UiKNbFa?=
 =?us-ascii?Q?3fjos2Zt7T8CxrS8dRFArVwjr2CFS4KGiH3g4n9KOe4asqtyPSl5wWlb83KJ?=
 =?us-ascii?Q?H5HBRvbcxJr3vGF2BzhZ+Lw/8k8jYGzr9mPormp50e6nl5kHQLvsEwW1m5Sv?=
 =?us-ascii?Q?lbq7BYhXftSYyEsK7+oaGct+fnJ8RAbQmVPZ8FIAy2FYKLkyP+xdbCZkeNjB?=
 =?us-ascii?Q?2SMGSoMtEVQZH5nYo9OvWiNYr1CKfzjaee3DDClLnvsaoi/co0jVGFYCFFJD?=
 =?us-ascii?Q?ps87R+caHbNBZ42vMDm84gXUQml18QaYzJ7hOChpbfTZoHu0c5ngL/bm8aoG?=
 =?us-ascii?Q?fO1O5Gr3y+p47TrywdS9w5OJlowSTbMWw4yyVOLDbUQkeiCk+bw40EcHperU?=
 =?us-ascii?Q?p0y7wpvluYZr7mPBa/NiNfdX8GoiiTATWWt1Zzs0U8u/Aci2uPLl52Kfjs7I?=
 =?us-ascii?Q?CIFmXeaeBDy5L+b+E7EhkgY9RiEs4HE8WuSyvwsfKqa4zlXyUua2gR/NMETj?=
 =?us-ascii?Q?XA2z76uYWbE84SW/AUn5nHZ/Z20lO08pjbn19Xqb/8zcW43rQDeXuvUs5lLz?=
 =?us-ascii?Q?6sjOE9iO/uziXZk+aQuiFLBRCf5EDz7imZGgEGHPoCm55C6WXlcYGYYtw5a0?=
 =?us-ascii?Q?nWLI84mNHbe+Yicpxr4v0oaJg9mLkHPgwUeY44nPWqbeH3eeirYQrdjV9tqk?=
 =?us-ascii?Q?67gvTYPlitlxrsOnbw+OI/BJeBJmr0hudIAV1350UGKvF3rlGob/1ypURt9T?=
 =?us-ascii?Q?pNGJX7OppL/f4WKdcqdYD72bKxKLxGrLz3jNFcLYfNyIuSLBtHuIitS42Jh4?=
 =?us-ascii?Q?imbnr1PGHAZq27kZ+rDwKV6vQX599Gr19ozJYQNDZFfmdBxXmKs2hFjGid1l?=
 =?us-ascii?Q?ExCac8Mo+qRD9OmpULsAuI2Tus4EFQAKCOuTSfcQL98GTT/OMvWbDwocUuT+?=
 =?us-ascii?Q?IXGT5xwVR7QZ3UsbmlzxNxOVVHFYrQb/Dfs913HjW0M4s/Pe1AdGXZ0f4l97?=
 =?us-ascii?Q?FSn5ZaMMpl6E8Xf95fIOIVBTqxseAK8uPQHANeyw/aiwaMyN9XVsKggYSmgE?=
 =?us-ascii?Q?vb1rsGtDj8xnbJa5WkbRqlBxLp0MqFn/8jiQSemdNmsMvz9l5BYZIRlY0evc?=
 =?us-ascii?Q?oNNJGwxTWdzAQTGqeT6NJIa37lLnZCc5na01MKEXQ/nY66U/Rqa0sQcam0nH?=
 =?us-ascii?Q?4jD/Dxu1MnNT4r6W0K19AjYV9eWDJHCJB7M+JLzcFJcffMXh30mqUyaNhPTL?=
 =?us-ascii?Q?GgWNy1WQpp5Zz++8HytbK+VDUSNPAPKoyc+FR+TvJ0xrFwuOM4v+ILcupb/b?=
 =?us-ascii?Q?RXPe2RQVYvvsQWYmYsnHx6PHvl4gma75M8h6KInY?=
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: woodward.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5669.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 38cd2785-80c5-47b9-21ca-08dc8eeff1f1
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Jun 2024 17:07:18.6743
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 9ad0fca6-569f-4932-b35f-593f6e9deb96
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: np6/IBmbTX9OrWhq4LfO6xiNSFB33rIGov8fzVWSPuboVc6OnOYlBgOUoCYU03KUxNA04ZSgBXwcUZgiwsv47/aSmQe8LiPbG5RwVnoDZy8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6301
X-Proofpoint-ORIG-GUID: p6aGkwmYqs8gY3bN-rpLVd-mjEsvltBy
X-Proofpoint-GUID: p6aGkwmYqs8gY3bN-rpLVd-mjEsvltBy
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.28.16
 definitions=2024-06-17_14,2024-06-17_01,2024-05-17_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1011
 lowpriorityscore=0 phishscore=0 bulkscore=0 impostorscore=0
 mlxlogscore=904 suspectscore=0 priorityscore=1501 malwarescore=0
 adultscore=0 mlxscore=0 spamscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.19.0-2405170001 definitions=main-2406170132
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 17 Jun 2024 17:07:27 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63351

Hello,

I believe, the bb.utils.contains() statement is being evaluated 'as it goes=
', so any changes done in .bbappend files will not be reflected in that exp=
ression.=20

For example, I wanted to enable 'privdrop' PACKAGECONFIG for 'chrony' packa=
ge, however adding PACKAGECONFIG:append =3D "privdrop" in my bbappend file =
has not resulted in inheriting the 'useradd' package:

    inherit ${@bb.utils.contains('PACKAGECONFIG', 'privdrop', 'useradd', ''=
, d)}

I believe, to address that issue the release 5.0 introduced the 'inherit_de=
fer' statement.

Do I understand correctly that all following occurrences of 'inherit' in me=
ta-openembedded should be replaced by 'inherit_defer'?

$ grep -r "inherit \${@bb.utils.contains" .
./meta-openembedded/meta-multimedia/recipes-multimedia/vlc/vlc_3.0.20.bb:in=
herit ${@bb.utils.contains('PACKAGECONFIG', 'qt5', 'qmake5_paths', '', d)}
./meta-openembedded/meta-webserver/recipes-webadmin/cockpit/cockpit_304.bb:=
inherit ${@bb.utils.contains('PACKAGECONFIG', 'old-bridge', '', 'python3tar=
getconfig', d)}
./meta-openembedded/meta-networking/recipes-protocols/openlldp/openlldp_1.1=
.1.bb:inherit ${@bb.utils.contains('DISTRO_FEATURES', 'systemd', 'systemd',=
 '', d)}
./meta-openembedded/meta-networking/recipes-filter/nftables/nftables_1.0.9.=
bb:inherit${@bb.utils.contains('PACKAGECONFIG', 'python', 'setuptools3', ''=
, d)}
./meta-openembedded/meta-networking/recipes-connectivity/networkmanager/net=
workmanager_1.46.0.bb:inherit ${@bb.utils.contains('PACKAGECONFIG', 'vala',=
 'vala', '', d)}
./meta-networking/recipes-support/chrony/chrony_4.5.bb:inherit ${@bb.utils.=
contains('PACKAGECONFIG', 'privdrop', 'useradd', '', d)}
./meta-openembedded/meta-networking/recipes-support/wireshark/wireshark_4.2=
.4.bb:inherit ${@bb.utils.contains('PACKAGECONFIG', 'qt5', 'cmake_qt5', '',=
 d)}
./meta-openembedded/meta-oe/recipes-support/lio-utils/lio-utils_4.1.bb:inhe=
rit ${@bb.utils.contains("BBFILE_COLLECTIONS", "meta-python2", "distutils",=
 "", d)}
./meta-openembedded/meta-oe/recipes-support/poppler/poppler_23.04.0.bb:inhe=
rit ${@bb.utils.contains('PACKAGECONFIG', 'qt5', 'cmake_qt5', '', d)}
./meta-openembedded/meta-oe/recipes-extended/wxwidgets/wxwidgets_3.2.1.bb:i=
nherit ${@bb.utils.contains('PACKAGECONFIG', 'qt', 'cmake_qt5', 'cmake', d)}
./meta-openembedded/meta-oe/recipes-extended/openlmi/openlmi-tools_0.10.5.b=
b:inherit ${@bb.utils.contains("BBFILE_COLLECTIONS", "meta-python2", "setup=
tools", "", d)}
./meta-openembedded/meta-oe/recipes-dbs/mysql/mysql-python_1.2.5.bb:inherit=
 ${@bb.utils.contains("BBFILE_COLLECTIONS", "meta-python2", "setuptools", "=
", d)}

I use Yocto 5.0.1.

Best regards,
Lukasz

***
The information in this email is confidential and intended solely for the i=
ndividual or entity to whom it is addressed.=C2=A0=C2=A0If you have receive=
d this email in error please notify the sender by return e-mail, delete thi=
s email, and refrain from any disclosure or action based on the information=
. This email system is not authorized to receive Controlled Unclassified In=
formation (CUI). Please contact your intended Woodward recipient to identif=
y permissible and authorized options for transmission of CUI to a Woodward =
recipient.
***

