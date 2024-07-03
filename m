Return-Path: <lukasz.zemla@woodward.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A63DAC2BD09
	for <webhook@archiver.kernel.org>; Wed,  3 Jul 2024 17:47:57 +0000 (UTC)
Received: from mx0b-00246501.pphosted.com (mx0b-00246501.pphosted.com [205.220.177.109])
 by mx.groups.io with SMTP id smtpd.web11.57435.1720028870189829810
 for <yocto@lists.yoctoproject.org>;
 Wed, 03 Jul 2024 10:47:50 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@woodward.com header.s=woodward.com.07.14.2020 header.b=cIDj/osD;
 dkim=fail reason="dkim: body hash did not verify" header.i=@WWDInc.onmicrosoft.com header.s=selector1-WWDInc-onmicrosoft-com header.b=VsRsHZJ5;
 spf=pass (domain: woodward.com, ip: 205.220.177.109, mailfrom: lukasz.zemla@woodward.com)
Received: from pps.filterd (m0216729.ppops.net [127.0.0.1])
	by mx0a-00246501.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 463EXwUN020466
	for <yocto@lists.yoctoproject.org>; Wed, 3 Jul 2024 12:47:49 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=woodward.com; h=
	content-type:date:from:message-id:mime-version:subject:to; s=
	woodward.com.07.14.2020; bh=Yq20fppzJrzHEdNXRLiRtPQOxZmwWueQfYDG
	7ejxnA8=; b=cIDj/osDsJ+4tp1D/ncHz0I/pOWVQzhtZWaMBcXps5zaWO/SueAf
	V7U8s0Xr0ZvhE+s1Bb4kzUpOG/EBsd4RmWBZ8GdtgdjUVJ2YxGmkaOJhvYO0qzOj
	TjvuahrIR8RC/vzs9irI6Min0gvkK/830p2OFAXV01He4b6PBae3wIGDAn6QIWuq
	tNkurqzzJhmyXJ739JmlJdPnuJYL2zB09mnu9tWrSmgzJ9eT6vLeB2ZvyFndnPCF
	Y1cuBrF6pmmP/IbgCgLr+7shLIUpzVHBkukamr1zx2icSGRUlXnCbtWeD/qvlnL8
	Z9fCvrpiT8ebb0MQMje67qezOz882m2GbQ==
Received: from nam02-sn1-obe.outbound.protection.outlook.com (mail-sn1nam02lp2041.outbound.protection.outlook.com [104.47.57.41])
	by mx0a-00246501.pphosted.com (PPS) with ESMTPS id 40560ks98b-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <yocto@lists.yoctoproject.org>; Wed, 03 Jul 2024 12:47:49 -0500 (CDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=W9fCfxLd5R9m9vHmJRrdRy59vAFytPCzEOcNY26eLG16HM3jNW8ZmCYD/MCZxlGU8sqeB82Z+LLq8lfxiQnPifS4mGvcgFeramjWhaa+EzXqAtWAwLhnfVmIk2RFjpZNJYpVzQqLTIX+KkPus70tRkX57PI+NdX3kQw/vyp4RrCAJCzlXAvhmn9rcQOn13pF3hiFXwVVikvIUjh92589N1vEcQ83vJCMIpJO766TkDreVXoyfyfVJZdHbaqiQNUvStAjZON3r5UcYBLrewxkrj6MOAezwxWP6SzauDiKi4XnBmxuoXkGI4MfcznzQYCwA6Cu3D2FnQ8U7nBaMmsA3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TeyaBKdDte8FKJ7CRxXyGO6wLuvV9q9dm8NNCxuPj6U=;
 b=KXHHrf63UCkIsuOihe36pZpBp5hOs2kez48VAOpb9m20UqRfq9QmAnW0reXo8pLlZV0RfaT1fCNxHI092nkftBxN2b4n48ubCMmXftL7ECPIKC9WpDSM1dfqL3C3DiXuG7TZ0uELVu0nIyV0hE2xtpMySKCJVlwgdTj54aO5dECV7kAeeb4r15dhIqpqquYWaO6TLBc35wnDLWgXhOFOJF2knn8akC91MBj07LpHv1w/XlCgpljgD5wd3Vqh906pV8KhMTSZ/qF3Pv/VMBAk0y8jXFp5Bxu6XdR0UDz3qck4ejy1apwqyeKukSB1wf2hshJKLuMEOg6kmTiKTGP/eA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=woodward.com; dmarc=pass action=none header.from=woodward.com;
 dkim=pass header.d=woodward.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=WWDInc.onmicrosoft.com; s=selector1-WWDInc-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TeyaBKdDte8FKJ7CRxXyGO6wLuvV9q9dm8NNCxuPj6U=;
 b=VsRsHZJ5Fn/Lj7rO5xSPHgDjdkgnwBSmQdgIlliCkQeT3s6mLYeOPdSMlymP1YkdJT6ImD3EjFdzY/bqn3r6/IdvGcdBKenhLYuXp+CK8Fw960CKwSawPPw5cCEcQTo7eOA+0zShBUUVhquZjiKxeVopMfUBWk3tQ7YIw1l6+xI=
Received: from DM8PR11MB5669.namprd11.prod.outlook.com (2603:10b6:8:36::10) by
 PH7PR11MB8060.namprd11.prod.outlook.com (2603:10b6:510:24f::6) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7741.26; Wed, 3 Jul 2024 17:47:46 +0000
Received: from DM8PR11MB5669.namprd11.prod.outlook.com
 ([fe80::e7be:d24:d106:ca27]) by DM8PR11MB5669.namprd11.prod.outlook.com
 ([fe80::e7be:d24:d106:ca27%6]) with mapi id 15.20.7719.029; Wed, 3 Jul 2024
 17:47:46 +0000
From: Lukasz Zemla <Lukasz.Zemla@woodward.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: yocto 5.0: systemd: dev-null.device: Job dev-null.device/start timed
 out
Thread-Topic: yocto 5.0: systemd: dev-null.device: Job dev-null.device/start
 timed out
Thread-Index: AdrNcJo0P/7/0oZISMqosDsDoZKX0A==
Date: Wed, 3 Jul 2024 17:47:46 +0000
Message-ID: 
 <DM8PR11MB5669CCF6A30D6964AF009479EDDD2@DM8PR11MB5669.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM8PR11MB5669:EE_|PH7PR11MB8060:EE_
x-ms-office365-filtering-correlation-id: 4d603ed3-5b56-4519-c441-08dc9b883f99
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|376014|366016|1800799024|38070700018;
x-microsoft-antispam-message-info: 
 =?us-ascii?Q?uXQpbHg1h20gSz/Iw9URC1xwMrjni3unfjTPsAtghqVPA432T6vE2xXz3LZS?=
 =?us-ascii?Q?sTTyxe2O2VxYmkxM6D8pPvs/GNmlZt/ZNrleuF1Nd1CjlxrYcE/Ti0o9YHkv?=
 =?us-ascii?Q?5BsP54cz7Y4mOj4pwiHdOjtQPJ/z/a2gT14EzCm6Fb/tY2KkEMl3p1JHFqD/?=
 =?us-ascii?Q?WUPgcMut2C/t5O9VXqq3w0BTNhxyMHLqWsGDy6nOEeXuq+R1Cz6epIqzjUYf?=
 =?us-ascii?Q?UHseTB4OQmfuvpfwCUgNy0ETPRwbD5MqI3ui4xyQMqsAB9vD8Z/06E483+my?=
 =?us-ascii?Q?oLunwHyM6RbCphNkSxfjJKcsePkyJSPoIkf7mc1sQ7wCb6UsOZxrfrRp1tbG?=
 =?us-ascii?Q?qnPjb/QW2OELsOzOGusxdmreBPKNldlnAHkBKMx+zVuIARFdNEeFjHvD5S5/?=
 =?us-ascii?Q?XWzA5Ax/zXoJnmE3lry8XwGpBSrIgSbumbez7M6zliosXYmJPEdiKDreVDrh?=
 =?us-ascii?Q?D8qFZumMAYGKfLE7C4/XPDrHHX0TZE5YFm6GsC4hCd7xnZfm8oDHOVgihNC2?=
 =?us-ascii?Q?MxLpWeumwzkPOuTPGIoA4It/lH+Jt5dxzohId3bBC3ZDbxD3oQ4uZpf1LJuK?=
 =?us-ascii?Q?MfSKcrnKm0WhdL3ke4hDtkLfOiWZKpQECxoY8Q6mXT0uF8VmBiEIdeTnbiWc?=
 =?us-ascii?Q?B125wdtq/C8qDE+LuC/ompcrDC9VY1np56I1/QOurG57FOw0h0evSrqsq2BK?=
 =?us-ascii?Q?ix8FF5gh46MUk9lYKD74mJh7yo7P8/9wAfBHuiaBzLwXsqniFxRYxtqMFnJb?=
 =?us-ascii?Q?ktQcgEnwGDBJMC7Kj1tq8O5+RXqQ/VdtGcGs3BYXwrXDWfz4Qyzf1qIev9Zt?=
 =?us-ascii?Q?UfrQivErgB06UsWulYP3HLQHMkhlSKKRMAayv3uFoGELmbYxDa5w2Z3VxqJI?=
 =?us-ascii?Q?xX7H209SNR5ArAoxxlTOaATPLriXuNtz2Hr1g4njGVFKoclaHYdnE9TuGwwe?=
 =?us-ascii?Q?ILTgWeiQXWoquBrqfrvvQ/D8jFlOKA42Vw79jll5p0Y5JLJyI73E/7pU7rBY?=
 =?us-ascii?Q?DZZln5laTECcMi0Kf3rvYnlFcDfC9MRG/raEc0+/q5iqyZ7sfPbTjpqssMMz?=
 =?us-ascii?Q?Ot7MEv0RCD14vrm2sJPFpNjlReHOJX5aAzfy6OeLHzxIThYm7JQpAB7nJAYM?=
 =?us-ascii?Q?ysY2lyLyKUsshdaNTrE4+3m13VfosxGwquV5cl8OarNrysoLrQGH2NQzg07R?=
 =?us-ascii?Q?Qe7xdaXZ7uFPVNFIaBl81qNpYZdAJzIqt/wpq9kNbHZUgc8oQaEmHNTEHJ0U?=
 =?us-ascii?Q?qCtljOcmAVHd3x4v866NlZhPv4EBE7XHrRkUCwLnJKjQPY86o/ayM/qMEPjB?=
 =?us-ascii?Q?e3oWlrWNrYJHHIQxNQ+R9XiPPA7P5YAmGpwtqf7LZUxmug=3D=3D?=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM8PR11MB5669.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024)(38070700018);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?JurfNjPo9+MpbeOOo3/1O4xA3nXvzDSaaR/6Rcz7jamHmAuoi00BGfRmulIc?=
 =?us-ascii?Q?QDGUEZyklIZh5A0andC0hraJ60682hkxBGIshfWYO4lByKXzdAnV912YLW+O?=
 =?us-ascii?Q?nYWjpHdKccx6QgNyi0/hkWgHcUSiLVcMH/SAtEA/jhNNOnGAd6oF6yvoOcH/?=
 =?us-ascii?Q?1BPnNJxcfa6V+AEZcIuGV5Ff4Fq2aKMY6tvVURAEhMWh7nOokj4NsYNwpI2y?=
 =?us-ascii?Q?jJjdZbMNG7nwYUSlKdyNq5FBni0hhg5yQ45jsTSWv+FUvFKQ7ztDWQa2nlKX?=
 =?us-ascii?Q?PloE19KSnC1z1oG+Yoo8caW0uAiNPeGAxgbnOwjYYUq5HJqZPliagrOU7bwo?=
 =?us-ascii?Q?T6VeaDyqU/KnLut8DXeeE21pFFkAN7GXHbrGAoiMVcZ4fhKxkXvJozW+4KQU?=
 =?us-ascii?Q?qDLDNPj2N9Ni5ZDzjKyXhelm/hpf7GBT5Z/PgazEvNHHzTn2sOUFfDM4CK/H?=
 =?us-ascii?Q?XN8uSTMtPgH87/41IoeMq9hB3hp4M/MHStaQeE3JRB9TTCnRWLVcar2YbxGd?=
 =?us-ascii?Q?Z34e0lC1Cq/uX9YOOXkd3kba77SdmdvtKQNqxHVnhrTNdfykyoIVpWnMENWA?=
 =?us-ascii?Q?C19DZVfKpBlrAqX5HNg+qcDYkwMHAS3zKvS3JiuyPskYfK/3/f0A9ul7wdJu?=
 =?us-ascii?Q?kCsztOGu/7y94/pGEE0JdlLZJwBagqoSOjjodvcg1Cid+x8o1K9r/o2ldpfh?=
 =?us-ascii?Q?mO7Wioo17PNuJAZuYaU/qiBw0yfXt2qppebyr5iN7TGbFqxPphswJbCUIeaA?=
 =?us-ascii?Q?Qwz93g0vYnr5FqdrK5G0Z3stSGKFKhu0KLdYgx8JkcgYPTEYBLQRdH3xelvR?=
 =?us-ascii?Q?OjF4rO9QksATw0WyY6AdQnc/z8nEcAKY2QStcbwtLn9/utYC4/bxMFHrFcLD?=
 =?us-ascii?Q?8SyECVwui4mdYdIgNU9y+bHGkobxbpFd7X0pL7hYEYPFaY9rk0UkYO7rer76?=
 =?us-ascii?Q?ZzkEA+X8pk26bG4c3FiOVbUFeNUOdWtH0qomHRUPxF6B7n00D3f40hjgTu4B?=
 =?us-ascii?Q?FbkqSxADpLbcl7AZ7wSMBX61e8cK1DaHp3wS7JejXCWfbmmnV86b6WIvSqGK?=
 =?us-ascii?Q?A/RlRxtvTRsXG4lABx9a2mk4NA1yiDjWSzyHOGKCm8FzC4adpH627/Qceikd?=
 =?us-ascii?Q?ALuBALGt0j+4gy9e6i14f3HW4kLfxEID6iJUg6Pxx8wPUckDmD/juq87EEvZ?=
 =?us-ascii?Q?VEQYkiHYXPiisg5KX1obtUBSMtDe0Am40JutGW4hdGXqtR+j9/M/iXRpULVe?=
 =?us-ascii?Q?EnC+cxNbkkOsTeb5eJH3Bax01VqJfOie4LtEZV7pyu0mgRiAeTV5G1By5gNb?=
 =?us-ascii?Q?gVavouqwOsZSaAFcaz4+ygGMk0p0zO5VKIfplMYiv22HVtEOldZNwp74kZ+Y?=
 =?us-ascii?Q?WMKWx/FRBfPR5rpgmfkMjvqK1VzCyDaJm329Izo9cbHbjSV2ghlwHntRhkgh?=
 =?us-ascii?Q?cAO7/Xk3x2okguQ8iEM0mhHKaN6YYtsVF5iKyCDKxBIMKnEVyfVaAsqbiMC2?=
 =?us-ascii?Q?VCQF2/twMh2frn/79DKg+U8ZGbH55a4lQ0WVqnXKWCM3soDUNyN9kV/bZUxQ?=
 =?us-ascii?Q?2tcBetm7DEfIctBSArxq8BCbytmonY5Ov+w+ZObU?=
Content-Type: multipart/alternative;
	boundary="_000_DM8PR11MB5669CCF6A30D6964AF009479EDDD2DM8PR11MB5669namp_"
MIME-Version: 1.0
X-OriginatorOrg: woodward.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5669.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4d603ed3-5b56-4519-c441-08dc9b883f99
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Jul 2024 17:47:46.4339
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 9ad0fca6-569f-4932-b35f-593f6e9deb96
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 8NFguni3JO434IBsLfiXjB8I1KGmI+iWbcLujwyfJGjeuqd3JBE4IRYNXQPm0Rtdr2KFOit8/QYxYCr3I0bQOh9D23/61CoM2iPhuxYzaqA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB8060
X-Proofpoint-ORIG-GUID: VDrAsTF7_VHAhEXVnEY9bX7y-mGirLQP
X-Proofpoint-GUID: VDrAsTF7_VHAhEXVnEY9bX7y-mGirLQP
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.28.16
 definitions=2024-07-03_12,2024-07-03_01,2024-05-17_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015 phishscore=0
 priorityscore=1501 spamscore=0 mlxlogscore=711 adultscore=0
 lowpriorityscore=0 suspectscore=0 mlxscore=0 impostorscore=0 bulkscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2406140001 definitions=main-2407030132
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 03 Jul 2024 17:47:57 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63437

--_000_DM8PR11MB5669CCF6A30D6964AF009479EDDD2DM8PR11MB5669namp_
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"

Hello,

I use yocto 5.0. From time to time during boot up I get the following error=
s:

# journalctl | grep dev-null
Jul 03 17:30:57 cpu3-07 systemd[1]: dev-null.device: Job dev-null.device/st=
art timed out.
Jul 03 17:30:57 cpu3-07 systemctl[352]: Job for dev-null.device timed out.
Jul 03 17:30:57 cpu3-07 systemd[1]: dev-null.device: Job dev-null.device/st=
art failed with result 'timeout'.

I do not know why, especially that:

# systemctl list-dependencies dev-null.device
dev-null.device
# systemctl list-dependencies --reverse dev-null.device
dev-null.device

That dev-null device delays start of another services, which do not have di=
rect dependencies on that device. Have anyone else encountered similar issu=
e?

# systemctl --version
systemd 255 (255.4^)
+PAM -AUDIT -SELINUX -APPARMOR -IMA -SMACK +SECCOMP -GCRYPT -GNUTLS -OPENSS=
L -ACL +BLKID -CURL -ELFUTILS -FIDO2 -IDN2 -IDN -IPTC -KMOD -LIBCRYPTSETUP =
+LIBFDISK -PCRE2 -PWQUALITY -P11KIT -QRENCODE -TPM2 -BZIP2 -LZ4 -XZ -ZLIB +=
ZSTD -BPF_FRAMEWORK -XKBCOMMON +UTMP -SYSVINIT default-hierarchy=3Dunified


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

--_000_DM8PR11MB5669CCF6A30D6964AF009479EDDD2DM8PR11MB5669namp_
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
	{font-family:Aptos;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	font-size:11.0pt;
	font-family:"Aptos",sans-serif;
	mso-ligatures:standardcontextual;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Aptos",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:11.0pt;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 70.85pt 70.85pt 70.85pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"#467886" vlink=3D"#96607D" style=3D"word-wrap:=
break-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hello,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I use yocto 5.0. From time to time during boot up I =
get the following errors:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"># journalctl | grep dev-null<o:p></o:p></p>
<p class=3D"MsoNormal">Jul 03 17:30:57 cpu3-07 systemd[1]: dev-null.device:=
 Job dev-null.device/start timed out.<o:p></o:p></p>
<p class=3D"MsoNormal">Jul 03 17:30:57 cpu3-07 systemctl[352]: Job for dev-=
null.device timed out.<o:p></o:p></p>
<p class=3D"MsoNormal">Jul 03 17:30:57 cpu3-07 systemd[1]: dev-null.device:=
 Job dev-null.device/start failed with result 'timeout'.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I do not know why, especially that:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"># systemctl list-dependencies dev-null.device<o:p></=
o:p></p>
<p class=3D"MsoNormal">dev-null.device<o:p></o:p></p>
<p class=3D"MsoNormal"># systemctl list-dependencies --reverse dev-null.dev=
ice<o:p></o:p></p>
<p class=3D"MsoNormal">dev-null.device<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">That dev-null device delays start of another service=
s, which do not have direct dependencies on that device. Have anyone else e=
ncountered similar issue?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"># systemctl --version<o:p></o:p></p>
<p class=3D"MsoNormal">systemd 255 (255.4^)<o:p></o:p></p>
<p class=3D"MsoNormal">+PAM -AUDIT -SELINUX -APPARMOR -IMA -SMACK +SECCOMP =
-GCRYPT -GNUTLS -OPENSSL -ACL +BLKID -CURL -ELFUTILS -FIDO2 -IDN2 -IDN -IPT=
C -KMOD -LIBCRYPTSETUP +LIBFDISK -PCRE2 -PWQUALITY -P11KIT -QRENCODE -TPM2 =
-BZIP2 -LZ4 -XZ -ZLIB +ZSTD -BPF_FRAMEWORK
 -XKBCOMMON +UTMP -SYSVINIT default-hierarchy=3Dunified<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span lang=3D"PL" style=3D"mso-ligatures:none">Best =
regards,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"PL" style=3D"mso-ligatures:none">Lukas=
z<o:p></o:p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>

<DIV>
***<BR>
The information in this email is confidential and intended solely for the i=
ndividual or entity to whom it is addressed.&nbsp;&nbsp;If you have receive=
d this email in error please notify the sender by return e-mail, delete thi=
s email, and refrain from any disclosure or action based on the information=
. This email system is not authorized to receive Controlled Unclassified In=
formation (CUI). Please contact your intended Woodward recipient to identif=
y permissible and authorized options for transmission of CUI to a Woodward =
recipient.<BR>
***<BR>
</DIV></body>
</html>

--_000_DM8PR11MB5669CCF6A30D6964AF009479EDDD2DM8PR11MB5669namp_--

